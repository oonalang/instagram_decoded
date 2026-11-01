# Local V5 gallery orientation and edge-to-edge framing

The selected photo was upright in the gallery but inverted in the QuickSnap
preview. The uploaded GalleryScene creates its image filter with `8U7.A0B`.
That helper copies `8U9.A00`, the matrix `diag(1, -1, 1, 1)`, into the model's
texture transform. This is a vertical reflection. The gallery-specific updater
sets this instance's texture transform to identity before publishing it to the
camera graph. The shared helper, other image overlays and original bitmap are
unchanged.

The side gaps have a separate source: `GalleryScene.frame` uses
`Matrix.ScaleToFit.CENTER`, which fits the entire image inside the canvas and
leaves black padding. The updater uses a uniform scale
`max(targetWidth / imageWidth, targetHeight / imageHeight)` and centres the
result. Excess edges are cropped. The image fills the frame and retains its
proportions. The measured surface dimensions and existing 1280-pixel staging
cap remain in use.

Apply both changes together to the existing local source:

```bash
python3 tools/repair_v5_gallery_rendering.py --check ~/igbuild/instagram-v5-zip
python3 tools/repair_v5_gallery_rendering.py ~/igbuild/instagram-v5-zip
bash ~/igbuild/instagram-v5-zip/build_instants_termux.sh
```

The standalone tool validates the native helper, matrix template and instance
getter, then modifies only `GalleryScene.install` and `GalleryScene.frame`.
It preserves the earlier camera-size repair and unrelated local fixes. Checks
run before writing; unknown code causes a refusal. Backups preserve the prior
file under `~/igbuild/instants-rendering-backups/<source-folder>/<timestamp>/`.
Reapplication makes no changes. To revert just these two rendering corrections:

```bash
python3 tools/repair_v5_gallery_rendering.py --revert ~/igbuild/instagram-v5-zip
```

The correction is applied to the source filter shared by the camera graph;
there is no separate preview rotation or send-time bitmap transformation.
Native effects, captions, capture callbacks and send controls are unchanged.

Validation:

- Native source checks confirm the helper creates a fresh per-model copy of the
  vertical-reflection matrix and that its getter returns the instance array.
- The original and patched Smali frame methods were assembled, converted to JVM
  classes, and executed with graphics API test doubles. The original reproduced
  side padding. Ten portrait, landscape, square, fractional and size-capped
  cases checked edge coverage, equal X/Y scale and centred cropping.
- Executing the assembled texture correction preserved five asymmetric corner
  and interior coordinates and left a separate overlay model unchanged.
- Patcher tests checked backups, one-file/two-method scope, local-edit
  preservation, idempotence, revert, rejection of changed native code, and
  compatibility with either application order of the camera-size repair.
- The updated camera helper and six gallery/scene classes assembled together
  into DEX. The uploaded gallery lint reports zero errors.

These checks do not execute the native GPU renderer or Android ImageDecoder.
The full APK, actual preview, camera switching, themes, caption, received photo
and saved image still need on-device verification. Use the existing signing key
and install the rebuilt APK as an update, then choose the original upright photo
again. The test doubles establish the patch's arithmetic, not complete Android
runtime success.
