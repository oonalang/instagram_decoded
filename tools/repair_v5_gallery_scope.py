#!/usr/bin/env python3
"""Keep the V5 gallery thumbnail inside the native QuickSnap camera view tree."""
import argparse
from datetime import datetime, timezone
import os
from pathlib import Path
import re
import stat
import sys
import tempfile

PKG = 'Lapp/morphe/extension/instagram/patches/instants/'
VM = 'Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;'
DIR = Path('smali_classes24/app/morphe/extension/instagram/patches/instants')
UI = DIR / 'InstantsGalleryUi.smali'
SCENE = DIR / 'GalleryScene.smali'
CAMERA = Path('smali_classes19/X/k4m.smali')
START = '.method public static install(Landroid/content/Context;' + VM + ')V'
BIND = '.method public static bind(' + VM + 'LX/k4m;)V'
TARGET = '''    # Only attach the thumbnail to the actual camera surface hierarchy.
    invoke-static {p1}, ''' + PKG + '''InstantsGalleryUi;->cameraParent(''' + VM + ''')Landroid/view/ViewGroup;
    move-result-object v13
    if-nez v13, :camera_available
    invoke-static {}, ''' + PKG + '''InstantsGalleryUi;->hideAll()V
    return-void

    :camera_available
    sget-object v0, ''' + PKG + '''InstantsGalleryUi;->vm:''' + VM + '''
    if-ne v0, p1, :new_vm
    sget-object v0, ''' + PKG + '''InstantsGalleryUi;->button:Landroid/widget/ImageButton;
    if-eqz v0, :new_vm
    sget-object v1, ''' + PKG + '''InstantsGalleryUi;->parent:Landroid/view/ViewGroup;
    if-ne v1, v13, :new_vm
    const/4 v1, 0x0
    invoke-static {v0, v1}, ''' + PKG + '''InstantsGalleryUi$ThumbTask;->start(Landroid/widget/ImageButton;Z)V
    return-void

    :new_vm'''
ORIGINAL_START = '''    sget-object v0, ''' + PKG + '''InstantsGalleryUi;->vm:''' + VM + '''
    if-ne v0, p1, :new_vm
    sget-object v0, ''' + PKG + '''InstantsGalleryUi;->button:Landroid/widget/ImageButton;
    if-eqz v0, :new_vm
    const/4 v1, 0x0
    invoke-static {v0, v1}, ''' + PKG + '''InstantsGalleryUi$ThumbTask;->start(Landroid/widget/ImageButton;Z)V
    return-void

    :new_vm'''
OLD_PARENT = '''    const v1, 0x1020002
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    instance-of v1, v2, Landroid/view/ViewGroup;
    if-eqz v1, :done
    move-object v3, v2
    check-cast v3, Landroid/view/ViewGroup;'''
NEW_PARENT = '''    move-object v3, v13'''

CAMERA_PARENT = '''.method private static cameraParent(''' + VM + ''')Landroid/view/ViewGroup;
    .locals 4
    if-eqz p0, :no_camera
    iget-object v0, p0, ''' + VM + '''->galleryCamera:LX/k4m;
    if-eqz v0, :no_camera
    iget-object v0, v0, LX/k4m;->gallerySurface:Landroid/view/SurfaceView;
    if-eqz v0, :no_camera
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0

    :walk
    instance-of v1, v0, Landroid/widget/FrameLayout;
    if-eqz v1, :next_parent
    move-object v2, v0
    check-cast v2, Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/view/View;->getId()I
    move-result v1
    const v3, 0x1020002
    if-eq v1, v3, :no_camera
    return-object v2

    :next_parent
    instance-of v1, v0, Landroid/view/View;
    if-eqz v1, :no_camera
    check-cast v0, Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    goto :walk

    :no_camera
    const/4 v0, 0x0
    return-object v0
.end method'''

REFRESH = '''.method public static refresh(''' + VM + ''')V
    .locals 2
    if-eqz p0, :done
    iget-object v0, p0, ''' + VM + '''->galleryCamera:LX/k4m;
    if-eqz v0, :done
    iget-object v0, v0, LX/k4m;->gallerySurface:Landroid/view/SurfaceView;
    if-eqz v0, :done
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-static {v1, p0}, ''' + PKG + '''InstantsGalleryUi;->install(Landroid/content/Context;''' + VM + ''')V
    :done
    return-void
.end method'''

CALL = '    invoke-static {p0}, ' + PKG + 'InstantsGalleryUi;->refresh(' + VM + ')V'
ANCHOR = '    iput-object p1, p0, ' + VM + '->galleryCamera:LX/k4m;'


def require(test, msg):
    if not test:
        raise ValueError(msg)


def block(text, header):
    require(text.count(header + '\n') == 1, 'Expected one ' + header)
    start = text.index(header + '\n')
    end = text.index('.end method', start) + len('.end method')
    return text[start:end]


def patch_ui(text):
    require('.class public final ' + PKG + 'InstantsGalleryUi;' in text, 'Wrong gallery UI class')
    install = block(text, START)
    require(re.search(r'^    \.locals 14$', install, re.M), 'Unexpected install register count')
    if TARGET in install and NEW_PARENT in install:
        require(OLD_PARENT not in install and ORIGINAL_START not in install, 'Conflicting gallery owner')
    else:
        require(install.count(ORIGINAL_START) == 1 and install.count(OLD_PARENT) == 1,
                'Gallery thumbnail installation differs from checked V5 source')
        install = install.replace(ORIGINAL_START, TARGET, 1).replace(OLD_PARENT, NEW_PARENT, 1)
        text = text.replace(block(text, START), install, 1)
    for header, contents in (('.method private static cameraParent(', CAMERA_PARENT),
                             ('.method public static refresh(', REFRESH)):
        if header in text:
            require(text.count(contents) == 1, 'Existing gallery helper differs: ' + header)
        else:
            text = text.rstrip() + '\n\n' + contents + '\n'
    return text


def patch_scene(text):
    require('.class public final ' + PKG + 'GalleryScene;' in text, 'Wrong GalleryScene class')
    bind = block(text, BIND)
    require(bind.count(ANCHOR) == 1, 'Camera binding changed')
    if CALL in bind:
        require(bind.count(CALL) == 1, 'Duplicate gallery UI refresh')
        return text
    return text.replace(bind, bind.replace(ANCHOR, ANCHOR + '\n' + CALL, 1), 1)


def atomic_write(path, data, mode):
    temp = None
    try:
        with tempfile.NamedTemporaryFile(dir=path.parent, prefix='.gallery-scope-', delete=False) as handle:
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
        camera = (root / CAMERA).read_text()
        vm = (root / 'smali_classes13/com/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel.smali').read_text()
        require('.field public final gallerySurface:Landroid/view/SurfaceView;' in camera,
                'First apply the V5 camera-size repair (gallerySurface is missing)')
        require('galleryCamera:LX/k4m;' in vm, 'V5 GalleryScene camera ViewModel field is missing')
        changes = {}
        for rel, fn in ((UI, patch_ui), (SCENE, patch_scene)):
            path = root / rel
            old = path.read_bytes()
            new = fn(old.decode('utf-8')).encode('utf-8')
            if old != new:
                changes[path] = (old, new)
        if not changes:
            print('Already scoped to the camera. No changes.')
            return 0
        if args.check:
            print('Compatible with camera-only gallery UI. No changes written.')
            return 0
        backup = root.parent / 'instants-scope-backups' / root.name / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S.%fZ')
        for path, (old, _) in changes.items():
            dest = backup / path.relative_to(root)
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(old)
        saved = []
        try:
            for path, (old, new) in changes.items():
                require(path.read_bytes() == old, 'Source changed during patch')
                saved.append(path)
                atomic_write(path, new, stat.S_IMODE(path.stat().st_mode))
        except Exception:
            for path in saved:
                atomic_write(path, changes[path][0], stat.S_IMODE(path.stat().st_mode))
            raise
        print('Gallery thumbnail now belongs to the camera view tree; not the Activity root.')
        print('Backup:', backup)
        print('Rebuild using the existing V5 script and signing key.')
        return 0
    except (ValueError, OSError, UnicodeError) as e:
        print('ERROR:', e, file=sys.stderr)
        return 1


if __name__ == '__main__':
    sys.exit(main())
