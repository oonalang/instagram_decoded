#!/usr/bin/env python3
"""Repair the uploaded V5 GalleryScene build; archive unused legacy editor code."""
import argparse
from datetime import datetime, timezone
import os
from pathlib import Path
import re
import stat
import sys
import tempfile

REL = Path('smali_classes24/app/morphe/extension/instagram/patches/instants')
PKG = 'Lapp/morphe/extension/instagram/patches/instants/'
VM = 'Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;'
LEGACY = tuple('InstantsGalleryEditor' + suffix + '.smali' for suffix in ('', '$Swipe', '$Touch'))


def require(ok, message):
    if not ok:
        raise ValueError(message)


def replace_known(text, old, new):
    if text.count(new) == 1:
        require(old not in text.replace(new, '', 1), 'Ambiguous build/lint patch site.')
        return text
    require(new not in text and text.count(old) == 1,
            'Build/lint layout differs from the uploaded version; cannot patch safely.')
    return text.replace(old, new, 1)


def plan(root):
    base = root / REL
    bridge = (base / 'InstantsGalleryBridge.smali').read_text()
    picker = (base / 'InstantsGalleryPickerActivity.smali').read_text()
    scene = (base / 'GalleryScene.smali').read_text()
    review = 'review(Landroid/app/Activity;Landroid/graphics/Bitmap;)V'
    select = 'select(Landroid/app/Activity;Landroid/graphics/Bitmap;' + VM + ')V'
    require('.field private static pending:' + VM in bridge and
            '.method public static ' + review in bridge and
            PKG + 'GalleryScene;->' + select in bridge and
            PKG + 'InstantsGalleryBridge;->' + review in picker and
            '.class public final ' + PKG + 'GalleryScene;' in scene and
            '.method public static ' + select in scene,
            'This source is not the uploaded GalleryScene implementation.')
    obsolete = []
    for path in base.glob('InstantsGalleryEditor*.smali'):
        require(path.name in LEGACY, 'Unrecognized editor helper: ' + str(path))
        expected = PKG + path.stem + ';'
        require(re.search(r'^\.class .*' + re.escape(expected) + r'$', path.read_text(), re.M),
                'Editor class identity differs: ' + str(path))
        obsolete.append(path)

    # Include native hooks outside the gallery package. Refuse removal if any
    # live Smali still names the legacy editor (including reflective names).
    skipped = set(obsolete)
    scanned = 0
    for directory in root.iterdir():
        if not directory.is_dir() or not re.fullmatch(r'smali(?:_classes\d+)?', directory.name):
            continue
        for path in directory.rglob('*.smali'):
            if path in skipped:
                continue
            scanned += 1
            if b'InstantsGalleryEditor' in path.read_bytes():
                raise ValueError('Legacy editor is still referenced by ' + str(path.relative_to(root)))
    require(scanned > 0, 'No active Smali source found.')

    build = root / 'build_instants_termux.sh'
    lint = root / 'build_support/smali_lint.py'
    old_build = build.read_bytes()
    old_lint = lint.read_bytes()
    text = old_build.decode()
    text = replace_known(text,
        '[[ -f "$SOURCE_DIR/' + str(REL) + '/InstantsGalleryEditor.smali" ]] || fail "V5 editor class missing from source."',
        '[[ -f "$SOURCE_DIR/' + str(REL) + '/GalleryScene.smali" ]] || fail "GalleryScene class missing from source."')
    text = replace_known(text,
        '"$SOURCE_DIR"/smali_classes24/app/morphe/extension/instagram/patches/instants/InstantsGallery*.smali || fail "Smali lint failed."',
        '"$SOURCE_DIR"/smali_classes24/app/morphe/extension/instagram/patches/instants/InstantsGallery*.smali "$SOURCE_DIR/' + str(REL) + '/GalleryScene.smali" || fail "Smali lint failed."')
    text = replace_known(text,
        'for c in InstantsGalleryEditor InstantsGalleryUi; do',
        'for c in GalleryScene InstantsGalleryBridge InstantsGalleryPickerActivity InstantsGalleryUi; do')
    anchor = '[[ -f "$WORK/smali_classes2/X/9lA.smali" ]]'
    cleanup = ('# GalleryScene build: exclude obsolete custom editor from the APK overlay.\n'
               'legacy_editor="$WORK/' + str(REL) + '/InstantsGalleryEditor"\n'
               'rm -f -- "$legacy_editor.smali" "$legacy_editor\\$Swipe.smali" "$legacy_editor\\$Touch.smali"\n')
    text = replace_known(text, '\n' + anchor, '\n' + cleanup + anchor)
    lint_text = replace_known(old_lint.decode(),
        "glob.glob(ROOT+'/smali_classes24/app/morphe/extension/instagram/patches/instants/InstantsGallery*.smali')",
        "(glob.glob(ROOT+'/smali_classes24/app/morphe/extension/instagram/patches/instants/InstantsGallery*.smali') + glob.glob(ROOT+'/smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryScene.smali'))")
    changes = {}
    for path, old, new in ((build, old_build, text.encode()), (lint, old_lint, lint_text.encode())):
        if old != new:
            changes[path] = (old, new)
    for path in obsolete:
        changes[path] = (path.read_bytes(), None)
    return changes, scanned


def atomic_write(path, data, mode):
    temp = None
    try:
        with tempfile.NamedTemporaryFile(dir=path.parent, prefix='.scene-repair-', delete=False) as handle:
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
        changes, count = plan(root)
        print('Checked', count, 'active Smali files for legacy editor references.')
        if not changes:
            print('GalleryScene build repair already applied; no files changed.')
            return 0
        for path, (_, updated) in changes.items():
            print(('Archive: ' if updated is None else 'Update: ') + str(path.relative_to(root)))
        if args.check:
            print('Compatible; check completed without changing files.')
            return 0
        backup = root.parent / 'instants-scene-build-backups' / root.name / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S.%fZ')
        modes = {}
        for path, (old, _) in changes.items():
            require(path.read_bytes() == old, 'Source changed during inspection: ' + str(path))
            modes[path] = stat.S_IMODE(path.stat().st_mode)
            saved = backup / path.relative_to(root)
            saved.parent.mkdir(parents=True, exist_ok=True)
            with saved.open('xb') as handle:
                handle.write(old)
        written = []
        try:
            for path, (_, updated) in changes.items():
                written.append(path)
                if updated is None:
                    path.unlink()
                else:
                    atomic_write(path, updated, modes[path])
        except OSError:
            for path in reversed(written):
                atomic_write(path, changes[path][0], modes[path])
            raise
        print('Backup:', backup)
        print('GalleryScene build repaired. Rebuild with the existing V5 script and signing key.')
        return 0
    except (OSError, UnicodeError, ValueError) as error:
        print('ERROR:', error, file=sys.stderr)
        return 1


if __name__ == '__main__':
    sys.exit(main())
