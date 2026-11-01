# Gallery photo rejected while the camera preview is live

The uploaded `GalleryScene.rememberSize` reads `k4m.A0P → lQG.A08` to obtain
the SurfaceView dimensions. Instagram 451's `lQG.A0D` moves that view into a
local variable and sets `A08` to null during camera initialization. The live
preview can therefore be working while this lookup returns no view. With no
cached dimensions, `GalleryScene.select` displays "QuickSnap camera is not
ready" and rejects the photo.

The standalone updater retains the constructor's SurfaceView on `k4m` as a
public final instance field, `gallerySurface`. It changes only the scene's
size lookup to use that retained view and refreshes dimensions when binding
the camera and accepting a gallery selection. Sizing still uses the measured
camera surface, and zero dimensions still prevent staging the image. The
existing uniform-scale framing, filter renderer and send checks remain intact.
The retained view belongs to the camera object; no static view field is added.

```bash
python3 tools/repair_v5_camera_size.py --check ~/igbuild/instagram-v5-zip
python3 tools/repair_v5_camera_size.py ~/igbuild/instagram-v5-zip
bash ~/igbuild/instagram-v5-zip/build_instants_termux.sh
```

The tool validates the camera constructor and scene method layouts and confirms
that an active native `GalleryScene.bind` call exists. It refuses unknown
layouts or a missing binding before editing. It preserves local changes outside
the patch sites, backs up the two changed files under
`~/igbuild/instants-camera-size-backups/<source-folder>/<timestamp>/`, and supports
read-only checks and repeated application. Both files are restored on a write
failure.

Validation used the uploaded GalleryScene and the repository's Instagram 451
`k4m` helper. Source analysis confirmed `lQG.A0D` clears the original field.
The patched camera helper and six gallery/scene classes assembled into DEX;
the patched gallery passes the uploaded lint. Tests covered two-file scope,
backups, repeated application, missing-binding/source/register guards and
rollback. The tests use a fixture binding call for the patcher's guard; the
user's modified native hooks were not included in the uploaded ZIP. The tool
checks that hook on the phone. Full APK/runtime behavior still needs testing.

After rebuilding and installing with the existing key, reopen Instants, wait
for the camera preview, and select a photo. Check that it appears on the native
camera, then verify themes, caption, explicit Send and saved-image geometry.
