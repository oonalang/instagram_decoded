# Local V5 camera icon scope and adjustable crop

The old gallery thumbnail was attached to the activity content root. It stayed
visible when the unified QuickSnap fragment switched to viewing other people's
Instants. The updater observes the fragment's `Zss.CAMERA` / `CONSUMPTION` mode
before each draw, requires a resumed fragment with a live view, and changes only
the thumbnail belonging to that fragment's camera VM. View destruction removes
that VM's thumbnail. Returning to camera restores its visibility.

After selecting a photo, the picker Activity now presents a crop screen:

- Drag with one finger in either direction.
- Pinch around a focal point, or use the zoom buttons (1x to 6x).
- Reset returns to the default center crop.
- Cancel returns without changing the selected image.
- Use photo renders the chosen crop and loads it into the existing native camera
  graph for themes, caption and the usual shutter/send flow.

Zooming out stops at the scale needed to fill the frame; dragging stops at the
image edges to prevent black gaps. The mask is an approximate rounded preview;
Instagram applies its own final mask. Framing is baked into the temporary image,
not the original file. Earlier GalleryScene size and rendering corrections are
preserved, including V2 inversion compensation if it is installed. Crop controls
apply in the selection preview; native theme/caption gestures remain native.

```sh
curl -fL https://raw.githubusercontent.com/oonalang/instagram_decoded/main/tools/install_v5_gallery_controls.py -o ~/igbuild/install_v5_gallery_controls.py &&
python ~/igbuild/install_v5_gallery_controls.py ~/igbuild/instagram-v5-zip &&
bash ~/igbuild/instagram-v5-zip/build_instants_termux.sh
```

The standalone updater embeds five compiled helper classes. It checks all sites
before writing, backs up changed files outside the source tree, rolls back writes
on failure, and makes no changes on reapplication. `--check` only inspects.
Backups live under `~/igbuild/instants-controls-backups/`. `new-files.json` lists
new helper files; restoring a backup requires restoring its original files and
removing those new helpers. The local V5 build and signing key are reused.

Validation: updater tests cover guard refusal, check-only planning, repeated
application, payload consistency and retention of GalleryScene. The Java crop
implementation was executed with Android API test doubles to check drag in both
axes, focal zoom, edge clamping, scale limits, reset and output mapping. The
uploaded gallery lint passes, and 13 combined gallery/native classes assemble
into DEX. Java sources, compile-only stubs and regeneration instructions are in
`tools/gallery_controls/`; no stubs enter the runtime payload.

An actual APK cannot be built/signed here without the phone's base APK and local
signing setup. After installing the update, verify camera → viewer → camera,
leaving QuickSnap entirely, cancel/apply, pinch/drag, and the received image.
Touch feel and native effects/send remain phone checks. Activity recreation
cancels the crop safely; it does not restore unsaved crop edits.

## Revision 2: crop opening failure

The picker is declared with `Theme.Translucent.NoTitleBar`. Revision 1 requested
`SCREEN_ORIENTATION_LOCKED` when opening the crop. Android can reject orientation
requests from translucent activities with `IllegalStateException: Only fullscreen
opaque activities can request orientation`. Revision 2 removes that request.

The same standalone installer upgrades the known revision 1 helper (verified by
SHA-256), preserving all existing controls and scene fixes. It also changes the
picker error toast to show `Throwable.toString()`; the full trace is still logged.
Unknown helper changes continue to cause a refusal before writing. On a previously
installed revision 1 tree, only GalleryCrop and the picker change.

Validation includes migration from the exact revision 1 helper, repeat application,
read-only checks, the existing gallery lint and combined 13-class DEX assembly.
A regression checks that the crop source and runtime Smali do not request an
orientation lock. This fixes a verified source incompatibility with the manifest;
the phone's exact exception and the corrected UI result have not been observed
here. If opening still fails, the new toast exposes the actual exception.
