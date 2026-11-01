# Instagram QuickSnap Gallery V4

Full Apktool-decoded Instagram 451.0.0.53.80 source with the V4 QuickSnap gallery upload modification merged into the existing source tree.

## Current working feature

The Gallery icon appears below the QuickSnap flash control. Select a picture, press Done, and the selected bitmap passes to the original QuickSnap send callback. The owner reported that this flow works on an Android phone. These source changes are **V4 only**: the recent-photo thumbnail, swiping between filters, caption editing, and preview-before-send are planned enhancements, **not yet implemented**.

## Build from Termux

Clone this repository, then run the included script from its source root:

```bash
pkg install -y git apktool python rsync unzip zipalign apksigner
git clone --depth 1 https://github.com/oonalang/instagram_decoded.git
cd instagram_decoded
bash build_instants_termux.sh
```

Required **local-only** files:
- `/storage/emulated/0/Download/Instagram_451.0.0.53.80.apk` (the exact original modded APK used for this decoded source)
- `~/igbuild/instagram-gallery-signing.jks` (your existing signing key)

The script restores original DEX classes that were absent from the decoded GitHub source (notably `LX/9lA;`). It decodes the original APK with `apktool d -r`, preserving its compiled resource table to avoid the proprietary `L|...` layout resource problem. `build_support/restore_manifest.py` reconstructs the V4 binary manifest from the original using a verified tiny delta. Do not apply the binary manifest patch to a different APK.

The output is `/storage/emulated/0/Download/Instagram-Instants-Gallery-V4-Main.apk`.

## Important limits

A newly signed APK cannot update an app signed with a different private key. Do **not** uninstall your existing Instagram or clear its data to address a signature mismatch. Signing keys, passwords, user sessions, and original APK binaries are **not** included in this repository.

The repository contains the source; a successful APK build or signature verification does not establish on-device runtime success. Test installation, QuickSnap camera, Gallery selection, and sending on the phone.

## Key files

- `smali_classes13/X/XcZ.smali` injects the Gallery control into QuickSnap.
- `smali_classes13/com/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel.smali` removes the Gallery control on cleanup.
- `smali_classes24/app/morphe/extension/instagram/patches/instants/InstantsGalleryUi.smali` renders the button.
- `InstantsGalleryBridge.smali` connects the picker to the QuickSnap callback.
- `InstantsGalleryPickerActivity.smali` and `InstantsGalleryPickerActivity$DecodeListener.smali` select and decode a photo.
- `AndroidManifest.xml` declares the picker Activity for decoded-source inspection.
- `build_instants_termux.sh` builds a compatible no-resources APK.

## Next steps for an AI coding agent

Before implementing a recent-photo thumbnail, swipe filters, or caption editing, inspect the existing QuickSnap capture and editor pipelines. Preserve the confirmed V4 send behavior; do not shortcut the callback or assume a picker result equals an uploaded Instant.
