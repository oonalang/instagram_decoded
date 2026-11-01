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
