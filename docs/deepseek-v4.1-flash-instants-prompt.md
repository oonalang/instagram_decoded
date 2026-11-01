# DeepSeek v4.1 Flash - Instagram Instants / QuickSnap native gallery integration

Act as a senior Android reverse engineer, Smali engineer, and UI integration debugger. This is an existing user-owned modification project. Continue it rather than creating a new Android app or rewriting the whole source.

## Repository and inputs

- Repo: https://github.com/oonalang/instagram_decoded, main branch.
- Read root `context.md` before changes.
- Original working baseline: V4 on main before the `patches/v5-claude-uploaded/` snapshot commit.
- Uploaded Claude V5 source snapshot under `patches/v5-claude-uploaded/`; local hotfixed runtime source on the user's Android phone is `~/igbuild/instagram-v5-zip`. The GitHub snapshot intentionally does NOT represent all subsequent local edits; request/ingest local diffs before merging, or reapply documented hotfixes safely.
- Base: Instagram 451.0.0.53.80; Apktool 3.0.3; Termux ARM64 Android 13.
- Do not change package identity, existing mods, binary resource table, or current signing certificate. Never commit keystore, account information, screenshots containing personal content, or logs with secrets.

## Main request: restore EXACT native Instants preview

V5 currently shows a homemade stock Android LinearLayout/ImageView/EditText/Buttons editor, completely different from Instagram QuickSnap. This is **not acceptable**. The previous Theme.Material.Light.NoActionBar workaround fixed an UnsupportedOperationException, but did not make UI native. Do NOT style the custom editor to approximate Instagram. Instead, trace the real shutter-based QuickSnap photo preview, its composable/fragment/state transition, filter gestures, caption overlay and Send action in the decompiled code. Feed gallery image through the same native path and preserve lifecycle/callback semantics. Preserve all controls (flash, flip, shutter) before gallery selection and no auto-send before explicit native Send.

## Exact filter order, MUST MATCH

Default untouched image before effect navigation. **Four** effects only:
- Rightward swipes: Cool Grain, then Vintage, then Fisheye, then Pixelate.
- Leftward swipes: Pixelate, then Fisheye, then Vintage, then Cool Grain.

Use the app's original implementations, parameters, timestamps/animations and ordering, not a recreation with Mono, Warm, Cool, Vivid, Fade or simple ColorMatrix placeholders. Inspect native reversal and wrap behavior and match exactly; do not assume direction mapping. Ensure preview, transmitted photo, received photo, and saved copy show the selected effect consistently.

## Native caption alignment

V5's caption input is oversized and in the wrong vertical position. Reuse Instagram's native QuickSnap caption input and render pipeline with exact typography, baseline, size, margins, alignment, colors, keyboard behavior, and positioning. Match the ordinary shutter-captured QuickSnap caption. Do not replace it with an Android EditText or arbitrary styling. Caption must transmit and save correctly.

## Fix the remaining functionality

1. Gallery selection transitions into the native preview without exception, then native Send correctly publishes the Instant. Preserve the V4 callback path where functional, but inspect native contracts to avoid passing invalid/null bitmap state.
2. Recent-photo thumbnail stays working below Flash, rounded, correct crop, async, no black rectangle. Check Android 13+ MediaStore permission behavior and fallback when access isn't granted.
3. Saved gallery-origin Instant is currently squished. Trace and test bitmap width/height, EXIF orientation, decode sampling, GPU/input transform, preview cropping, export compression and camera-roll save. Match native shutter outputs using uniform scale and center crop or correct native rendering rule; no X/Y independent stretching.
4. Fix all lifecycle problems: picker result/ClipData, navigating back, app backgrounding, viewmodel expiry, permission denial, null callback, duplicate send.
5. Do not regress V4 gallery upload, original camera, other mods, or app startup.

## Observed logs and constraints

On Nov 1, logcat:
`Bitmap decoded; submitting to original QuickSnap callback`
`Opening editor preview; nothing is uploaded until Send`
then
`java.lang.UnsupportedOperationException: Failed to resolve attribute at index 7`
at `InstantsGalleryEditor.build`, `TextView.<init>`.
This proved the crash was the custom editor using Instagram Splash theme, not ImageDecoder. Local wrapper hotfix addressed the appearance crash only.

Claude's build script DEX verification yielded a false negative from `unzip -p | grep -aq` with `pipefail`. Direct Python ZIP inspection showed V5 classes in classes24.dex. Fix validation rather than rebuilding repeatedly. Use `apktool d -r` and preserve binary resources/manifest plus omitted base classes such as `LX/9lA`; normal resource recompilation fails. Sign with existing private keystore only.

## Mandatory execution process

1. Inspect main and archived V5 files; compare to recent local Termux source if provided; confirm exact native QuickSnap preview/filter/caption classes from source, never guess.
2. Describe root causes and method-by-method plan. Distinguish proven from speculative claims.
3. Implement minimal tested Smali edits. Preserve V4 source in separate commit or backup; remove the homemade editor only after native path works.
4. Static validate Smali, inspect register allocation, test constructors and invoke signatures, ensure no missing class, stage resources safely.
5. Build with Termux-compatible process, verify APK signature, check correct on-device update path without uninstalling.
6. Provide an explicit test matrix: picker, preview, each right/left swipe, caption, Send, receive, save aspect ratio for portrait/landscape/square/rotated images, camera original, back/cancel.
7. Commit and push only verified changes to GitHub main with exact SHA, paths, concise technical report and remaining blockers. Never invent runtime test results.

Primary goal: an image selected from Gallery behaves as though it had been taken with Instagram's real QuickSnap camera, including UI, effects, caption, send, and save. No fake Android editor.
