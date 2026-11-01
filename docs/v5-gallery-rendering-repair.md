# Local V5 gallery rendering, revision 2

Phone testing of revision 1 confirmed that the center crop removes the side
padding, but photos remain vertically inverted. Setting the image model's
texture transform to identity was insufficient. The earlier isolated matrix
tests did not exercise the native overlay renderer and did not prove that the
preview would be upright.

Revision 2 compensates for the observed vertical inversion in the staged
bitmap, before it is supplied as the native image overlay. It keeps the V1
model setup and uniform center crop, changing the staging draw to:

- scale X by `s` and Y by `-s`, where
  `s = max(targetWidth / imageWidth, targetHeight / imageHeight)`;
- translate X by `(targetWidth - s * imageWidth) / 2`;
- translate Y by `(targetHeight + s * imageHeight) / 2`.

This reflects only Y. It does not rotate 180 degrees (which would also reverse
left and right). The original gallery file is untouched. The one drawing pass
creates the temporary JPEG with compensation, keeping the measured surface size
and 1280-pixel staging cap. Preview and capture use the same camera graph.

The native `image_overlay.manifest` describes overlay placement via
`content_transform`. `Aca.AT5/AT6` handles texture and content matrices separately;
changing a texture matrix alone was not enough on this device. The packaged
native shader implementation is not available as source. This update is an
empirical compensation for the device result, not a claim that the entire
native orientation pipeline has been reproduced locally.

Download the updated standalone tool and apply it to the existing V5 source:

```bash
curl -fL https://raw.githubusercontent.com/oonalang/instagram_decoded/main/tools/repair_v5_gallery_rendering.py -o ~/igbuild/repair_v5_gallery_rendering.py &&
python ~/igbuild/repair_v5_gallery_rendering.py ~/igbuild/instagram-v5-zip &&
bash ~/igbuild/instagram-v5-zip/build_instants_termux.sh
```

The tool prints **Applied gallery rendering V2** when it upgrades V1. It also
supports the original unpatched source. Checks run before writing, unknown code
is rejected, reapplication changes nothing, and previous camera-size/local fixes
are preserved. Backups are outside the Smali directories under
`~/igbuild/instants-rendering-backups/<source-folder>/<timestamp>/`.
`--check` is read-only. `--revert` removes both rendering corrections, restoring
the original fit-center behavior; to restore V1 specifically, use its backup.

Validation performed:

- Regression tests for V1-to-V2 migration, original-to-V2 equivalence, retries,
  revert, local-change preservation and rejection of unknown/ambiguous snippets:
  `python -m unittest discover -s tests`.
- Checks against the uploaded GalleryScene with earlier size repair applied,
  backups, check-only mode, native-code guards and both size-patch orders.
- The updated Smali frame method was assembled, converted to JVM bytecode and
  executed with graphics API test doubles. Ten image/target sizes retain full
  coverage, centered crop and equal scale magnitudes. Fifty asymmetric points
  compose correctly with the **observed** Y inversion, preserving left/right.
- Combined gallery classes assemble to DEX and the uploaded gallery lint passes.

These checks establish staging arithmetic and source/build compatibility. They
cannot verify the native GPU path or the sent image. Install the rebuilt APK
with the existing signing key, reopen Instants and select an original upright
photo again. Confirm preview orientation, themes and saved/received orientation
on the phone. The final on-device result remains unverified here.
