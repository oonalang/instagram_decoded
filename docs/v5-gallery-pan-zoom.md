# V5 gallery framing controls

The native QuickSnap gallery patch now supports one-finger drag in either axis and two-finger pinch zoom (1x–5x) before sending.

**Updated sources**: `patches/v5-claude-uploaded/smali_classes24/app/morphe/extension/instagram/patches/instants/` contains the updated `InstantsGalleryEditor.smali`, `InstantsGalleryBridge.smali`, the new `InstantsGalleryCropTouch.smali`, and the live `GalleryScene.smali` supplied on November 2.

The picker preview uses the native camera surface aspect ratio, and draws the final bounded crop and selected color filter into the bitmap dispatched to the existing native QuickSnap camera. Finger gestures edit the photo instead of selecting filters, so tap the filter label (top of preview) to cycle the six existing filters. Caption and native sending remain in the existing editor.

## Apply to a local decoded V5 tree

The source root is `~/igbuild/instagram-v5-zip` in the prior Termux setup.

```sh
mkdir -p ~/igbuild/v5-crop
curl -fL https://raw.githubusercontent.com/oonalang/instagram_decoded/main/tools/instants-v5-crop/apply_v5_crop.py -o ~/igbuild/v5-crop/apply_v5_crop.py
curl -fL https://raw.githubusercontent.com/oonalang/instagram_decoded/main/tools/instants-v5-crop/InstantsGalleryCropTouch.smali -o ~/igbuild/v5-crop/InstantsGalleryCropTouch.smali
python ~/igbuild/v5-crop/apply_v5_crop.py --check ~/igbuild/instagram-v5-zip
python ~/igbuild/v5-crop/apply_v5_crop.py ~/igbuild/instagram-v5-zip
cd ~/igbuild/instagram-v5-zip
bash build_instants_termux.sh
```

The script guards the known source anchors, backs up originals outside the decoded APK directory, and supports repeated runs.

Source-level patch tests passed. Smali compilation, Android gesture interaction, lifecycle recreation, and preview parity with the native QuickSnap send require on-device validation before treating the APK as release-ready.
