#!/usr/bin/env python3
"""Correct the gallery texture orientation and fill its frame without stretching."""
import argparse
from datetime import datetime, timezone
import os
from pathlib import Path
import re
import stat
import struct
import sys
import tempfile

REL = Path('smali_classes24/app/morphe/extension/instagram/patches/instants/GalleryScene.smali')
MODEL = 'Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/ValueMapFilterModel;'
VM = 'Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;'
HEADER = '.method private static install(' + VM + ')Z'
CALL = '    invoke-static {v1}, LX/8U7;->A0B(Ljava/lang/String;)' + MODEL
OLD = (CALL + '\n    move-result-object v1\n'
       '    iget-object v2, v0, LX/34o;->A05:LX/69t;')
FIX = ('    # Gallery source: decoded bitmap already has display orientation.\n'
       '    invoke-virtual {v1}, ' + MODEL + '->getTextureTransform()[F\n'
       '    move-result-object v3\n'
       '    const/4 v4, 0x0\n'
       '    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V\n')
NEW = OLD.replace('    iget-object v2, v0, LX/34o;->A05:LX/69t;',
                  FIX + '    iget-object v2, v0, LX/34o;->A05:LX/69t;')
CROP_OLD = """    new-instance v2, Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
    int-to-float v3, v3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
    int-to-float v4, v4
    const/4 v5, 0
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V
    new-instance v3, Landroid/graphics/RectF;
    int-to-float v4, p1
    int-to-float v6, p2
    invoke-direct {v3, v5, v5, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V
    new-instance v4, Landroid/graphics/Matrix;
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;
    invoke-virtual {v4, v2, v3, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z"""
CROP_NEW = """    # Gallery frame: uniform scale to fill, then crop evenly at the edges.
    new-instance v4, Landroid/graphics/Matrix;
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v2
    int-to-float v2, v2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v3
    int-to-float v3, v3
    int-to-float v5, p1
    div-float v6, v5, v2
    int-to-float v7, p2
    div-float v8, v7, v3
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F
    move-result v6
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V
    mul-float/2addr v2, v6
    sub-float/2addr v5, v2
    mul-float/2addr v3, v6
    sub-float/2addr v7, v3
    const/high16 v8, 0x3f000000    # 0.5f
    mul-float/2addr v5, v8
    mul-float/2addr v7, v8
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z"""


def require(ok, message):
    if not ok:
        raise ValueError(message)


def method(text, header):
    require(text.count(header + '\n') == 1, 'Unexpected method layout: ' + header)
    start = text.index(header + '\n')
    end = text.index('.end method', start) + len('.end method')
    return text[start:end]


def verify_native(root):
    helper = (root / 'smali_classes7/X/8U7.smali').read_text()
    block = method(helper, '.method public static final A0B(Ljava/lang/String;)' + MODEL)
    require(all(anchor in block for anchor in (
        'sget-object v2, LX/8U9;->A00:[F', 'const/16 v1, 0x10',
        'new-array v0, v1, [F',
        'invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V',
        'const/16 v33, 0x6c', 'move-object/from16 v32, v0', '"image_overlay"',
    )), 'The native image-overlay helper differs; orientation handling needs inspection.')
    matrices = (root / 'smali_classes7/X/8U9.smali').read_text()
    require('fill-array-data v0, :array_1\n\n    sput-object v0, LX/8U9;->A00:[F' in matrices,
            'Native texture matrix initialization differs.')
    array = re.search(r':array_1\s+\.array-data 4\s+(.*?)\.end array-data', matrices, re.S)
    require(array is not None, 'Native texture matrix is missing.')
    values = [struct.unpack('<f', struct.pack('<I', int(line.split('#')[0].strip(), 0) & 0xffffffff))[0]
              for line in array[1].splitlines() if line.split('#')[0].strip()]
    require(values == [1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1],
            'Native texture matrix is not the verified vertical reflection.')
    model = (root / 'smali_classes7/com/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/ValueMapFilterModel.smali').read_text()
    getter = method(model, '.method public final getTextureTransform()[F')
    require('iget-object v0, p0, ' + MODEL + '->A07:[F\n\n    return-object v0' in getter,
            'Native texture getter no longer returns the instance matrix.')


def replace_block(block, old, new, revert):
    if block.count(new) == 1:
        require(old not in block.replace(new, '', 1), 'Ambiguous gallery rendering patch site.')
        return block.replace(new, old, 1) if revert else block
    require(new not in block and block.count(old) == 1,
            'Gallery rendering code differs; no patch can be applied safely.')
    return block if revert else block.replace(old, new, 1)


def repair(text, revert=False):
    require('.class public final Lapp/morphe/extension/instagram/patches/instants/GalleryScene;' in text,
            'Expected GalleryScene class is missing.')
    block = method(text, HEADER)
    require(re.search(r'^\s*\.locals 6\s*$', block, re.M) is not None,
            'GalleryScene install register layout differs.')
    require('"instants_gallery_source"' in block and 'GalleryScene;->publish(LX/34o;)V' in block,
            'GalleryScene source publication differs.')
    text = text.replace(block, replace_block(block, OLD, NEW, revert), 1)
    frame = method(text, '.method private static frame(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;')
    require(re.search(r'^\s*\.locals 9\s*$', frame, re.M) is not None,
            'Gallery frame register layout differs.')
    return text.replace(frame, replace_block(frame, CROP_OLD, CROP_NEW, revert), 1)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source_root', type=Path)
    modes = parser.add_mutually_exclusive_group()
    modes.add_argument('--check', action='store_true')
    modes.add_argument('--revert', action='store_true')
    args = parser.parse_args()
    root = args.source_root.expanduser().resolve()
    try:
        verify_native(root)
        source = root / REL
        before = source.read_bytes()
        updated = repair(before.decode(), args.revert).encode()
        if before == updated:
            print('Already in the requested gallery rendering state; no files changed.')
            return 0
        if args.check:
            print('Compatible: correct gallery texture orientation and use uniform center crop. No files changed.')
            return 0
        backup = root.parent / 'instants-rendering-backups' / root.name / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S.%fZ') / REL
        backup.parent.mkdir(parents=True, exist_ok=False)
        with backup.open('xb') as handle:
            handle.write(before)
        require(source.read_bytes() == before, 'Source changed during inspection; no patch was written.')
        temporary = None
        try:
            with tempfile.NamedTemporaryFile(dir=source.parent, prefix='.gallery-rendering-', delete=False) as handle:
                temporary = Path(handle.name)
                handle.write(updated)
                handle.flush()
                os.fsync(handle.fileno())
            os.chmod(temporary, stat.S_IMODE(source.stat().st_mode))
            os.replace(temporary, source)
            temporary = None
        finally:
            if temporary is not None:
                temporary.unlink(missing_ok=True)
        print('Backup:', backup)
        print('Gallery rendering corrections reverted.' if args.revert else
              'Corrected gallery texture orientation and removed fit-center padding. Rebuild with the existing V5 script and signing key.')
        return 0
    except (OSError, UnicodeError, ValueError) as error:
        print('ERROR:', error, file=sys.stderr)
        return 1


if __name__ == '__main__':
    sys.exit(main())
