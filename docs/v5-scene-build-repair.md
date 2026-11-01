# Repair the local V5 GalleryScene build

The uploaded `Instants-current-source.zip` has a picker calling
`InstantsGalleryBridge.review(Activity, Bitmap)`, which calls
`GalleryScene.select(Activity, Bitmap, QuickSnapCameraViewModel)`. Its bridge
holds the ViewModel, rather than the older send callback. Adding the archived
`dispatchCaption` implementation would not fit this flow.

The three `InstantsGalleryEditor` classes are unreferenced by the live gallery
code. Their obsolete Send callback fails the static lint. The V5 build script
also still requires the legacy editor both before compiling and inside DEX.

Apply the standalone updater to the live source:

```bash
python3 tools/repair_v5_scene_build.py --check ~/igbuild/instagram-v5-zip
python3 tools/repair_v5_scene_build.py ~/igbuild/instagram-v5-zip
cd ~/igbuild/instagram-v5-zip
bash build_instants_termux.sh
```

The updater validates the scene/bridge/picker wiring, scans every active Smali
directory for remaining legacy editor references, and refuses removal if any
are found. It archives the editor and its Swipe/Touch helpers outside the
source, then updates the source prerequisites, lint targets and DEX presence
checks to use GalleryScene. The lint's class index includes GalleryScene. The
build's decoded-APK overlay removes the three obsolete classes too, so they
cannot be restored from the base APK.

Changed files are backed up under
`~/igbuild/instants-scene-build-backups/<source-folder>/<timestamp>/`, preserving
their relative paths. Reapplying the updater makes no further changes. Unknown
build/lint layouts and active references cause a refusal before editing. Local
bridge, picker, scene, thumbnail and native screenshot code remain intact.

Validation on the exact uploaded source: reproduced the original one-error lint
failure; after repair, gallery plus scene lint reports zero errors. All six
active gallery/scene classes assembled together into DEX, and the updated build
script passes Bash syntax validation. Guard, backup, idempotence, local-file
preservation and rollback checks passed. Full APK compilation, signing,
installation, screenshots and native scene behavior require the phone and the
original APK; no on-device result is claimed.
