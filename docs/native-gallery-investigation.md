# Native gallery integration: verified findings

The screenshot patch is a separate first step. Gallery-to-native-camera editing
has **not** been implemented or tested on a phone. The existing
`tools/v5_native_preview_patch.py` proposal must not be treated as a working native
editor handoff.

## Shutter and send

In the checked-in Instagram 451 code, the photo shutter captures from the live
camera and proceeds into send; this path does not expose a captured-photo editor:

1. [`oNg`](../smali_classes19/X/oNg.smali#L280) constructs `gAI` discriminator
   `0x11` with the context and camera ViewModel, then assigns it to `kyb.A0I`.
2. [`kyb.A03`](../smali_classes19/X/kyb.smali#L233) requests a camera snapshot
   through `KB5.HQo`. [`nKt.F0c`](../smali_classes19/X/nKt.smali#L60) receives the
   bitmap and passes it to `kyb.A00`, which launches `aKl`.
3. [`aJn`](../smali_classes13/X/aJn.smali#L488) invokes the stored `kyb.A0I`
   callback. [`gAI`'s `:pswitch_7`](../smali_classes22/X/gAI.smali#L1067)
   handles send processing and launches the ViewModel's upload work.

## The archive-peek trap

The proposal publishes a bitmap using
`DSA.A01(bitmap, state, null, null, 0, -0x3001, true)` and stores it in the
ViewModel's `A0A`. This matches
[`DSe`, discriminator `0x3e`](../smali_classes22/X/DSe.smali#L6346), but that
coroutine is called by
[`QuickSnapCameraViewModel.A06`](../smali_classes13/com/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel.smali#L1268)
to build an **archive peek bitmap**. Its own failure messages identify that
purpose. The native photo send callback invokes it after capture/send has begun
([`gAI`](../smali_classes22/X/gAI.smali#L1497)).

[`XcZ`](../smali_classes13/X/XcZ.smali#L9159) reads `DSA.A04` with `A0R` and
other flags to display that peek. Publishing a gallery bitmap there does not
replace the image input to the native camera renderer or create an editable
photo preview.

## Native captions and effects

[`XcZ.A05`](../smali_classes13/X/XcZ.smali#L3805) composes the native camera
component and the caption UI, invoking `WzO.A03` with the caption state at
[line 4233](../smali_classes13/X/XcZ.smali#L4233).
[`peB`](../smali_classes18/X/peB.smali#L646) obtains the live camera's
`k4m.A0P → lQG.A06 → 34o`, builds native filter models, and applies them through
`34o.Grc`. Updating the archive bitmap does not cause those filters to process it.
Reliable gallery support must connect the selected image to this renderer's
input and preserve native caption, explicit Send, and output geometry behavior.

## Evidence needed next

The archive omits `LX/DSA`, `LX/aKl`, `LX/adr` (camera factory), and
`LX/akP`/`LX/aks` (gesture handlers), although other classes reference them.
Obtain these exact-version classes from the original APK decode, plus the live
V5 bridge, picker, UI, editor and any locally changed camera classes. Preserve
the working local hotfixes; the archived V5 snapshots are not a complete backup.

Screenshots of the live camera, theme changes, caption field, shutter result and
gallery result will establish the expected layout and behavior. They cannot
establish the missing renderer input API or prove upload/receive/save behavior.
Finish that source trace before choosing an image-source integration, then build
with the existing key and verify the complete flow on the phone.
