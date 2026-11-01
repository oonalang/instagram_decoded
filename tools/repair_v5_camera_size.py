#!/usr/bin/env python3
"""Preserve the native camera surface for GalleryScene's measured size lookup."""
import argparse
from datetime import datetime, timezone
import os
from pathlib import Path
import re
import stat
import sys
import tempfile

VM = 'Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;'
SCENE = 'Lapp/morphe/extension/instagram/patches/instants/GalleryScene;'
REL = Path('smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryScene.smali')
CAMERA = Path('smali_classes19/X/k4m.smali')
FIELD = '.field public final gallerySurface:Landroid/view/SurfaceView;'
CTOR = '.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;LX/KB8;LX/4G0;LX/jmI;LX/hkU;LX/ioJ;ZZZZZZ)V'
STORE = '    iput-object p2, p0, LX/k4m;->gallerySurface:Landroid/view/SurfaceView;'


def require(ok, message):
    if not ok:
        raise ValueError(message)


def method(text, header):
    require(text.count(header + '\n') == 1, 'Unexpected method layout: ' + header)
    start = text.index(header + '\n')
    end = text.index('.end method', start) + len('.end method')
    return text[start:end]


def replace_once(text, old, new):
    if text.count(new) == 1:
        require(old not in text.replace(new, '', 1), 'Ambiguous patch site.')
        return text
    require(new not in text and text.count(old) == 1, 'Source differs from the verified camera-size patch site.')
    return text.replace(old, new, 1)


def patch_camera(text):
    require('.class public final LX/k4m;' in text, 'Expected LX/k4m camera class is missing.')
    ctor = method(text, CTOR)
    loc = re.search(r'\.locals (\d+)', ctor)
    require(loc and int(loc[1]) <= 13, 'Camera constructor register layout differs.')
    if 'gallerySurface:' not in text:
        require(text.count('# instance fields') == 1, 'Camera field anchor differs.')
        text = text.replace('# instance fields', '# instance fields\n' + FIELD, 1)
    else:
        require(text.count(FIELD) == 1 and text.count('gallerySurface:') == 2 and STORE in ctor,
                'A different gallerySurface patch already exists.')
    anchor = '    invoke-direct {p0}, Ljava/lang/Object;-><init>()V'
    patched = replace_once(ctor, anchor, anchor + '\n\n' + STORE)
    return text.replace(ctor, patched, 1)


def patch_scene(text):
    require('.class public final ' + SCENE in text, 'Expected GalleryScene class is missing.')
    header = '.method public static rememberSize(' + VM + ')V'
    block = method(text, header)
    block_new = replace_once(block,
        '    iget-object v0, v0, LX/k4m;->A0P:LX/lQG;\n'
        '    iget-object v0, v0, LX/lQG;->A08:Landroid/view/SurfaceView;',
        '    iget-object v0, v0, LX/k4m;->gallerySurface:Landroid/view/SurfaceView;')
    require('Landroid/view/View;->getWidth()I' in block_new and
            'Landroid/view/View;->getHeight()I' in block_new and
            '->galleryWidth:I' in block_new and '->galleryHeight:I' in block_new,
            'GalleryScene size measurement differs.')
    text = text.replace(block, block_new, 1)
    bind = method(text, '.method public static bind(' + VM + 'LX/k4m;)V')
    anchor = '    iput-object p1, p0, ' + VM + '->galleryCamera:LX/k4m;'
    call = '    invoke-static {p0}, ' + SCENE + '->rememberSize(' + VM + ')V'
    text = text.replace(bind, replace_once(bind, anchor, anchor + '\n' + call), 1)
    select = method(text, '.method public static select(Landroid/app/Activity;Landroid/graphics/Bitmap;' + VM + ')V')
    anchor = '    iget v1, p2, ' + VM + '->galleryWidth:I'
    call = '    invoke-static {p2}, ' + SCENE + '->rememberSize(' + VM + ')V'
    return text.replace(select, replace_once(select, anchor, call + '\n' + anchor), 1)


def atomic_write(path, data, mode):
    temp = None
    try:
        with tempfile.NamedTemporaryFile(dir=path.parent, prefix='.camera-size-', delete=False) as handle:
            temp = Path(handle.name)
            handle.write(data)
            handle.flush()
            os.fsync(handle.fileno())
        os.chmod(temp, mode)
        os.replace(temp, path)
        temp = None
    finally:
        if temp is not None:
            temp.unlink(missing_ok=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source_root', type=Path)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    root = args.source_root.expanduser().resolve()
    try:
        changes = {}
        for rel, patch in ((CAMERA, patch_camera), (REL, patch_scene)):
            path = root / rel
            before = path.read_bytes()
            after = patch(before.decode()).encode()
            if before != after:
                changes[path] = (before, after)
        # A retained view cannot fix an absent camera-to-ViewModel binding.
        hook = SCENE.encode() + b'->bind(' + VM.encode() + b'LX/k4m;)V'
        bound = False
        print('Checking native camera binding...', flush=True)
        for directory in root.iterdir():
            if not directory.is_dir() or not re.fullmatch(r'smali(?:_classes\d+)?', directory.name):
                continue
            for path in directory.rglob('*.smali'):
                if path == root / REL:
                    continue
                data = path.read_bytes()
                if hook in data and re.search(rb'^\s*invoke-static(?:/range)?[^\n]*' + re.escape(hook), data, re.M):
                    bound = True
                    print('Native camera binding:', path.relative_to(root))
                    break
            if bound:
                break
        require(bound, 'Native GalleryScene.bind hook is missing. No files changed; current native camera hooks need inspection.')
        if not changes:
            print('Camera-size repair already applied; no files changed.')
            return 0
        if args.check:
            print('Compatible: retain the camera surface and refresh measured dimensions. No files changed.')
            return 0
        backup = root.parent / 'instants-camera-size-backups' / root.name / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S.%fZ')
        modes = {}
        for path, (before, _) in changes.items():
            require(path.read_bytes() == before, 'Source changed during inspection.')
            modes[path] = stat.S_IMODE(path.stat().st_mode)
            saved = backup / path.relative_to(root)
            saved.parent.mkdir(parents=True, exist_ok=True)
            with saved.open('xb') as handle:
                handle.write(before)
        written = []
        try:
            for path, (_, after) in changes.items():
                written.append(path)
                atomic_write(path, after, modes[path])
        except OSError:
            for path in reversed(written):
                atomic_write(path, changes[path][0], modes[path])
            raise
        print('Backup:', backup)
        print('Camera-size lookup repaired. Rebuild with the existing V5 build script and signing key.')
        return 0
    except (OSError, UnicodeError, ValueError) as error:
        print('ERROR:', error, file=sys.stderr)
        return 1


if __name__ == '__main__':
    sys.exit(main())
