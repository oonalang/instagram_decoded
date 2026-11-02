# V5 QuickSnap gallery thumbnail scope

Problem: The V5 thumbnail was appended to Android's Activity content root. That root remains active while the user views received Instants, leaving a gallery thumbnail over the reply field.

`tools/repair_v5_gallery_scope.py` changes the owner of the thumbnail to a FrameLayout in the native camera SurfaceView's ancestry (never Android's Activity content root). It also refreshes the camera-only attachment when GalleryScene binds the live camera. All changes target the phone's local V5 decoded source. This is not an APK and this repository's root Smali is the earlier V4 baseline.

Requirements: The existing V5 camera-size repair must already have provided `LX/k4m.gallerySurface`; the ViewModel must have `galleryCamera` and GalleryScene must use the documented native camera binding. The script verifies these conditions and the known V5 UI instructions before writing. Unknown local variants are rejected.

From Termux:

```bash
curl -fL https://raw.githubusercontent.com/oonalang/instagram_decoded/main/tools/repair_v5_gallery_scope.py -o ~/igbuild/repair_v5_gallery_scope.py
python ~/igbuild/repair_v5_gallery_scope.py --check ~/igbuild/instagram-v5-zip
python ~/igbuild/repair_v5_gallery_scope.py ~/igbuild/instagram-v5-zip
bash ~/igbuild/instagram-v5-zip/build_instants_termux.sh
```

Backups go to `~/igbuild/instants-scope-backups/`, outside Smali directories. Repeated applications are harmless. Unit tests cover source guards, idempotence, independent local code and camera binding. Android runtime behavior still requires testing on the device.

This fixes only gallery thumbnail ownership. Dragging and pinching the native preview require editing the live V5 `GalleryScene.smali` and synchronizing its crop transform with the native rendered and sent image. No transform editing or zoom support is claimed here.
