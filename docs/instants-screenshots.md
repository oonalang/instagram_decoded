# QuickSnap / Instants screenshots

The Android screenshot block is in `smali_classes16/X/XPO.smali`:
`LX/XPO;` identifies itself as `QuickSnapUnifiedFragment` and hosts the native
QuickSnap camera, preview and viewer. In `onCreate`, it sets the window's
`FLAG_SECURE` (`0x2000`). The patch replaces that single call with
`Window.clearFlags(0x2000)`.

The repository source contains this change. To apply it to the existing,
locally hotfixed V5 source without replacing the gallery/editor files:

```bash
python3 tools/enable_instants_screenshots.py --check ~/igbuild/instagram-v5-zip
python3 tools/enable_instants_screenshots.py ~/igbuild/instagram-v5-zip
```

Use the script from this checkout, or copy the standalone Python file to the
phone. It requires the known Instagram 451 class identity and exact native
instruction block. A different block causes a failure without editing the
source. Reapplying it is harmless. Before each change, it writes a backup under
`~/igbuild/instants-screenshot-backups/`, outside the decoded Smali tree.

Rebuild the **patched V5 source** with its existing build flow and signing key,
then install it as an update and close/reopen Instants. Running the Python
script alone does not change the installed APK. Do not copy the archived V5
gallery files over the live source; they omit local hotfixes.

To reverse only this change while preserving unrelated edits:

```bash
python3 tools/enable_instants_screenshots.py --revert ~/igbuild/instagram-v5-zip
```

This touches only the QuickSnap window call; shared screenshot helpers, normal
DM/vanish-mode handling, password pages and InboxLock remain unmodified. The
original fragment has no separate `FLAG_SECURE` restoration in its teardown,
so this patch introduces no new global window policy or lifecycle callbacks.

On the phone, check screenshots on the Instants page, shutter preview, effect
selection and caption field, and check reopening the page after leaving it.
Screenshot notifications and gallery-to-native-preview behavior are separate
from this Android window restriction. No on-device screenshot result is claimed
by this source patch.

## Selected photo is inverted or has side gaps

Phone testing confirmed that revision 1 fills the frame but leaves the photo
inverted. The updated
[`repair_v5_gallery_rendering.py`](../tools/repair_v5_gallery_rendering.py)
(V2) keeps the centered crop and compensates for the observed Y inversion in
the staged image. It upgrades existing V1 patches automatically.
[Usage, validation and remaining device checks](v5-gallery-rendering-repair.md).

## Gallery selection reports "camera is not ready"

The uploaded scene reads a SurfaceView field that Instagram clears during
camera initialization. Use the scoped
[`repair_v5_camera_size.py`](../tools/repair_v5_camera_size.py) updater to retain
the view on the camera object and read its measured dimensions.
[Cause, instructions and verification limits](v5-camera-size-repair.md).

## V5 build stops on missing `dispatchCaption`

**For the uploaded local V5 bundle using `GalleryScene`:** use
[`tools/repair_v5_scene_build.py`](../tools/repair_v5_scene_build.py).
The picker already uses the scene, and the unreferenced legacy editor is what
fails lint. [Exact repair and verification](v5-scene-build-repair.md).

If the gallery lint reports `InstantsGalleryEditor.onClick` calling an unresolved
`InstantsGalleryBridge.dispatchCaption(Bitmap, String)`, the local editor and
bridge expose different interfaces. The screenshot patch does not change either
file. **For an older callback-based bridge with `dispatch(Bitmap, boolean)`**,
restore the missing caption method using the standalone repair:

```bash
python3 tools/repair_v5_caption_bridge.py --check ~/igbuild/instagram-v5-zip
python3 tools/repair_v5_caption_bridge.py ~/igbuild/instagram-v5-zip
cd ~/igbuild/instagram-v5-zip
bash build_instants_termux.sh
```

The repair appends the missing method using the live bridge's verified
`dispatch(Bitmap, boolean)` callback, cleanup and error handling. It forwards the
caption into the QuickSnap callback's caption argument, with null normalized to
an empty string. It preserves existing methods and other local fixes. An already
present public static caption method is left alone. Unsupported dispatch code
causes a refusal before any edit. Backups are written outside Smali under
`~/igbuild/instants-bridge-backups/`.

Checked with the repository's V4 bridge paired with the archived V5 editor:
compatibility, backup, repeated application, preservation of local edits and
rejection of changed callback/parameter logic passed. The repaired bridge and
V5 editor assembled together into DEX. The phone's full V5 build and sending
still require on-device verification; this repair does not add native themes.

## Thumbnail visibility and crop controls

Use the [V5 gallery controls updater](v5-gallery-controls.md) for a thumbnail
scoped to camera mode and a drag/pinch crop preview before loading the photo.
