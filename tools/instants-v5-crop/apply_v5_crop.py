#!/usr/bin/env python3
"""Apply V5 QuickSnap drag/zoom editor to decoded smali, with backups and source guards."""
import argparse
from datetime import datetime, timezone
from pathlib import Path
import os
import re
import shutil
import sys
import tempfile

PKG = 'Lapp/morphe/extension/instagram/patches/instants/'
VM = 'Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;'
REL = Path('smali_classes24/app/morphe/extension/instagram/patches/instants')
ASSET = Path(__file__).with_name('InstantsGalleryCropTouch.smali')


def required_replace(text, old, new, label):
    if new in text and old not in text:
        return text
    if text.count(old) != 1:
        raise ValueError(f'{label}: expected one source anchor, found {text.count(old)}')
    return text.replace(old, new, 1)


def patch_bridge(text):
    assert '.class public final ' + PKG + 'InstantsGalleryBridge;' in text
    fields = ('.field private static cropW:I\n.field private static cropH:I\n')
    if fields not in text:
        marker = '.field private static uiContext:Landroid/content/Context;\n'
        text = required_replace(text, marker, marker + fields, 'bridge fields')
    intro = ('''    invoke-static {p1}, '''+PKG+'''GalleryScene;->rememberSize('''+VM+''')V
    iget v0, p1, '''+VM+'''->galleryWidth:I
    iget v2, p1, '''+VM+'''->galleryHeight:I
    if-lez v0, :crop_fallback
    if-lez v2, :crop_fallback
    goto :crop_sizes
    :crop_fallback
    const/16 v0, 0x9
    const/16 v2, 0x10
    :crop_sizes
    sput v0, '''+PKG+'''InstantsGalleryBridge;->cropW:I
    sput v2, '''+PKG+'''InstantsGalleryBridge;->cropH:I
''')
    anchor = '    :start\n    const/16 v0, 0x11\n'
    text = required_replace(text, anchor, '    :start\n'+intro+'    const/16 v0, 0x11\n', 'camera aspect lookup')
    getsize = '''
.method public static cropWidth()I
    .locals 1
    sget v0, '''+PKG+'''InstantsGalleryBridge;->cropW:I
    if-gtz v0, :return_size
    const/16 v0, 0x9
    :return_size
    return v0
.end method

.method public static cropHeight()I
    .locals 1
    sget v0, '''+PKG+'''InstantsGalleryBridge;->cropH:I
    if-gtz v0, :return_size
    const/16 v0, 0x10
    :return_size
    return v0
.end method
'''
    if '.method public static cropWidth()I' not in text:
        text = text.rstrip()+'\n'+getsize
    else:
        if getsize.strip() not in text:
            raise ValueError('bridge crop aspect helper differs; refusing unsafe overwrite')
    return text


def patch_editor(text):
    assert '.class public final ' + PKG + 'InstantsGalleryEditor;' in text
    old = '''    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    const-string v2, "Photo preview. Swipe left or right to change filter."
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    new-instance v2, '''+PKG+'''InstantsGalleryEditor$Touch;
    invoke-direct {v2, p0}, '''+PKG+'''InstantsGalleryEditor$Touch;-><init>(Landroid/content/Context;)V
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V'''
    new = '''    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    const-string v2, "Drag photo to reposition. Pinch with two fingers to zoom. Tap filter name above to change filter."
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    new-instance v2, '''+PKG+'''InstantsGalleryCropTouch;
    invoke-direct {v2, v1, p1}, '''+PKG+'''InstantsGalleryCropTouch;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V'''
    text = required_replace(text, old, new, 'editor preview gestures')

    anchor = '''    sput-object v1, '''+PKG+'''InstantsGalleryEditor;->label:Landroid/widget/TextView;'''
    insert = anchor + '''
    new-instance v2, '''+PKG+'''InstantsGalleryEditor;
    const/4 v3, 0x2
    invoke-direct {v2, v3}, '''+PKG+'''InstantsGalleryEditor;-><init>(I)V
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V'''
    if insert not in text:
        text = required_replace(text, anchor, insert, 'tap-to-select-filter label')
    on_click = '''    iget v0, p0, '''+PKG+'''InstantsGalleryEditor;->mode:I
    if-eqz v0, :send'''
    replacement = '''    iget v0, p0, '''+PKG+'''InstantsGalleryEditor;->mode:I
    const/4 v2, 0x2
    if-ne v0, v2, :not_filter
    const/4 v2, 0x1
    invoke-static {v2}, '''+PKG+'''InstantsGalleryEditor;->step(Z)V
    return-void
    :not_filter
    if-eqz v0, :send'''
    text = required_replace(text, on_click, replacement, 'editor click dispatch')
    text = required_replace(text,
        '    const-string v0, "\\u2039  Original  \\u203a"',
        '    const-string v0, "\\u2039  Original  \\u203a"', 'editor filter name') if False else text
    start = '.method public static bake()Landroid/graphics/Bitmap;'
    end = '.end method'
    if text.count(start) != 1:
        raise ValueError('Editor bake() missing or duplicate')
    i = text.index(start)
    j = text.index(end, i)+len(end)
    bake = '''.method public static bake()Landroid/graphics/Bitmap;
    .locals 2
    sget-object v0, '''+PKG+'''InstantsGalleryEditor;->preview:Landroid/widget/ImageView;
    invoke-static {v0}, '''+PKG+'''InstantsGalleryCropTouch;->capture(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    move-result-object v1
    if-eqz v1, :fallback
    return-object v1
    :fallback
    sget-object v0, '''+PKG+'''InstantsGalleryEditor;->bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method'''
    if text[i:j] != bake:
        # Prior method is recognized because the original V5 bakes filters into a separate bitmap.
        if ('->filterFor(I)' not in text[i:j] or 'Landroid/graphics/Canvas;' not in text[i:j]):
            raise ValueError('Editor bake() differs from checked V5 source')
        text = text[:i]+bake+text[j:]
    return text


def check_smali(name, content):
    if content.count('.method ') != content.count('.end method'):
        raise ValueError(f'{name}: unterminated smali method')
    if content.count('.class ') != 1:
        raise ValueError(f'{name}: expected exactly one smali class')
    if not content.endswith('\n'):
        content += '\n'
    for line in content.splitlines():
        if line.startswith('    check-cast '):
            if not line.endswith(';'):
                raise ValueError(f'{name}: malformed check-cast')
    return content


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('root', type=Path, help='Decoded V5 root (directory containing smali_classes24)')
    ap.add_argument('--check', action='store_true', help='Inspect compatibility without writing')
    args = ap.parse_args()
    root = args.root.expanduser().resolve()
    scene = root/REL/'GalleryScene.smali'
    if not scene.is_file():
        raise ValueError(f'Missing live GalleryScene.smali: {scene}')
    live = scene.read_text()
    for term in ('.method public static rememberSize(', '.method private static frame(', '.method public static select('):
        if term not in live:
            raise ValueError('Live GalleryScene differs from checked V5: '+term)
    if not ASSET.is_file():
        raise ValueError(f'Place InstantsGalleryCropTouch.smali alongside this script: {ASSET}')
    changed = {}
    for name, patch in [('InstantsGalleryEditor.smali', patch_editor),
                        ('InstantsGalleryBridge.smali', patch_bridge)]:
        path = root/REL/name
        src = path.read_text()
        dest = check_smali(name, patch(src))
        if dest != src:
            changed[path] = dest
    dest_path = root/REL/'InstantsGalleryCropTouch.smali'
    content = check_smali(dest_path.name, ASSET.read_text())
    if dest_path.is_file() and dest_path.read_text() != content:
        raise ValueError('A different crop handler already exists; refusing overwrite')
    if not dest_path.is_file():
        changed[dest_path] = content
    if not changed:
        print('Already applied. No files changed.')
        return 0
    if args.check:
        print('Source compatible. Files needing update:', *[x.name for x in changed], sep='\n  ')
        return 0
    backup = root.parent/'instants-crop-backups'/datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    for path in changed:
        if path.is_file():
            out = backup/path.relative_to(root)
            out.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(path, out)
    for path, data in changed.items():
        path.parent.mkdir(parents=True, exist_ok=True)
        fd, tmp = tempfile.mkstemp(prefix='.instants-crop-', dir=path.parent)
        try:
            with os.fdopen(fd, 'w') as f:
                f.write(data)
            os.replace(tmp, path)
        finally:
            if os.path.exists(tmp):
                os.unlink(tmp)
    print('QuickSnap gallery gestures installed:', *(x.name for x in changed), sep='\n  ')
    print('Original files backed up to', backup)
    print('Rebuild and sign using your existing V5 build script.')
    return 0

if __name__ == '__main__':
    try:
        sys.exit(main())
    except (OSError, ValueError, UnicodeError) as e:
        print('ERROR:',e,file=sys.stderr)
        sys.exit(1)
