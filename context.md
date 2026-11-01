# Instagram Instants / QuickSnap - Development context

Updated: 2026-11-01 (Asia/Manila)
Repository: https://github.com/oonalang/instagram_decoded
Default branch: main
Known-good remote baseline before this archive: 78e4b5a1adbd1c7ca3b257c35b94a71ef8599e03

## Ground truth and file provenance

- Main repository contains the previously working V4 decoded Instagram 451.0.0.53.80 source. V4 gallery picking and instant submission were confirmed on the device.
- This commit archives the seven uploaded **Claude V5 patch Smali files** under `patches/v5-claude-uploaded/`. These are source snapshots, not a verified working release.
- The most recently used and hotfixed V5 source is local to the user's Android device at `~/igbuild/instagram-v5-zip/`. **It is not automatically synchronized with this GitHub backup.** Do not assume this archive includes theme-fix or thumbnail-mode hotfixes applied later in Termux. Upload/commit local differences separately before claiming full backup.
- User also has the patch ZIP locally at `/storage/emulated/0/Download/Instagram_Instants_Gallery_V5_PATCH_ONLY.zip`. The archive's original `build_instants_termux.sh`, `build_support/smali_lint.py`, README and notes were not extracted into this GitHub snapshot.
- **Do not overwrite the working V4 root code with untested V5 patch contents.** Compare, integrate incrementally, test, then promote.

## Objective

Use Instagram's **native** QuickSnap/Instants camera preview, effects, caption system, and send pipeline after selecting a gallery photo. No separate stock Android `Activity` editor. Keep gallery thumbnail, camera controls and existing functionality. Fix gallery-sourced saved images stretching/squishing.

## User requirements, exact behavior

1. Selecting Gallery photo transitions into **native QuickSnap preview**, indistinguishable in layout/behavior from a photo taken with QuickSnap shutter. Native Send button and all relevant behaviors work.
2. Exactly four QuickSnap effects after the unfiltered starting position:
   - swipe **right**: Cool Grain -> Vintage -> Fisheye -> Pixelate
   - swipe **left**: Pixelate -> Fisheye -> Vintage -> Cool Grain.
   Native names, shaders/render paths, and order required; not generic ColorMatrix approximations. Preserve native gesture semantics for reversal/wrap.
3. Caption must be Instagram's **native QuickSnap caption field** with exact size, font, baseline, alignment, position, colors and appearance, not the oversized `EditText` used in custom V5 UI. Render caption correctly in sent and saved output.
4. Rounded recent-photo thumbnail below Flash must stay working. The local V5 hotfix corrected thumbnail runnable modes and currently displays an image. Native latest-device-photo behavior may require Android 13 scoped image permissions. No black icon, no synchronous UI thread blocking.
5. Gallery-uploaded images saved to camera roll are **stretched/squished** compared with native shutter images. Trace source dimensions, EXIF, preview, filter, encoding, upload, receive, and save. Preserve aspect ratio with uniform scale + cropping/letterboxing matching native shutter path. Never independently stretch X/Y.
6. Preserve V4 working Gallery send callback and original shutter, Flash, Flip Camera, other mods, key/signature, and local user data. Explicit Send only; no automatic submit when opening photo.

## Confirmed V5 source problems

- V5's `InstantsGalleryEditor.smali` constructs a brand-new Android `LinearLayout`, `TextView`, `ImageView`, `EditText` and `Button` hierarchy with five made-up filters Original/Mono/Warm/Cool/Vivid/Fade. This is not Instagram's QuickSnap editor. A later Termux hotfix wrapped widgets in `Theme.Material.Light.NoActionBar`, removing a crash but not meeting native UX requirement.
- On 2026-11-01 19:03, logcat showed the photo decoded successfully then `java.lang.UnsupportedOperationException: Failed to resolve attribute at index 7` from `TextView.<init>` during `InstantsGalleryEditor.build`. This was Splash theme incompatibility with the custom view, not bitmap decoding.
- `InstantsGalleryBridge.dispatchCaption()` catches `Throwable` around `LX/gAI.invoke(bitmap,null,caption,null)`, formerly swallowed failures while the editor closed. Local hotfix altered error propagation; verify against live local source.
- `InstantsGalleryUi$ThumbTask.smali` originally reversed runnable modes, causing black thumbnail. Later locally fixed; snapshot retains original uploaded Claude version.
- Claude `build_instants_termux.sh` had a false-negative DEX check: `unzip -p ... | grep -aq` interacts badly with `set -o pipefail`. Python ZIP scan confirmed `InstantsGalleryEditor`, `InstantsGalleryBridge`, and `InstantsGalleryUi$ThumbTask` all present in `classes24.dex`. A build may succeed even if script halts at this check.

## Known paths, build and signing

- Termux source: `~/igbuild/instagram-v5-zip`; working V4 source: `~/igbuild/instagram-main`.
- Base APK: `/storage/emulated/0/Download/Instagram_451.0.0.53.80.apk` (exact manifest SHA check required).
- Existing keystore: `~/igbuild/instagram-gallery-signing.jks` (PRIVATE, do not upload).
- Typical build uses `apktool d -r` on original APK, overlays all patched smali while preserving original classes including `smali_classes2/X/9lA.smali`; compiled resource table and compatible binary manifest must remain unchanged. AAPT2 resource recompilation fails on `res/values/layouts.xml` packed values.
- Match signing certificate of currently installed V4; NEVER uninstall or clear user data. Do not regenerate keystore.
- Source baseline has ~25 DEX files; original had classes omitted by decoded GitHub archive. Overlay source onto original rather than deleting original Smali classes.
- Keep user-created backup files outside of `smali_classes*` when practical; Apktool ignores `.smali.v5backup` files, but warns.
- After compile verify DEX classes, zipalign, sign, `apksigner verify --verbose --print-certs`, test camera, native preview, effects both directions, caption, Send, receipt and camera-roll save.

## Native investigation targets

- `smali_classes13/X/XcZ.smali` injected Gallery UI hook.
- `smali_classes13/com/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel.smali`.
- `smali_classes22/X/gAI.smali` callback discriminator `0x11` originally used by V4 gallery bridge.
- `smali_classes24/app/morphe/extension/instagram/patches/instants/`.
- Search all QuickSnap camera composables, fragment/preview state machines, filter gestures/effect renderer, caption composable/overlay, and send/save pipeline. Derive signatures from code instead of guessing.
- Inspect what the original QuickSnap shutter dispatches to its native preview and reuse that state transition with the selected bitmap or URI. Avoid implementing a second preview surface.

## Engineering workflow

Understand -> Inspect -> Compare V4/V5 and native shutter -> Diagnose -> Implement -> Static check -> Build -> Device test -> Commit -> Push -> Report. No claiming tested without on-device evidence. Preserve baseline via explicit commit or branch. Show which files and lines changed and include commit SHA. No secret or keystore uploads.
