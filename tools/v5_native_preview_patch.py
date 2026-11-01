#!/usr/bin/env python3
"""Route the V5 gallery result into Instagram's native QuickSnap preview.

Run from the V5 source root:
    python3 v5_native_preview_patch.py ~/igbuild/instagram-v5-zip

The patch:
  * stores the live QuickSnapCameraViewModel in InstantsGalleryBridge;
  * adds Bridge.showNative(Activity, Bitmap), which publishes the bitmap
    through the same DSA.A01 state transition used by native capture;
  * replaces Editor.show(...) in the picker with showNative(...);
  * removes the square crop so portrait/landscape geometry is preserved.
It does not upload anything; native Send still performs the send.
"""
from pathlib import Path
import re
import shutil
import sys
import time

ROOT = Path(sys.argv[1] if len(sys.argv) > 1 else ".").expanduser().resolve()
PKG = "app/morphe/extension/instagram/patches/instants"
BASE = ROOT / "smali_classes24" / PKG
BRIDGE = BASE / "InstantsGalleryBridge.smali"
PICKER = BASE / "InstantsGalleryPickerActivity.smali"

BRIDGE_DESC = "L" + PKG.replace("/", "/") + "/InstantsGalleryBridge;"
PICKER_DESC = "L" + PKG.replace("/", "/") + "/InstantsGalleryPickerActivity;"
VM = "Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;"


def die(message: str) -> None:
    raise SystemExit("ERROR: " + message)


def read(path: Path) -> str:
    if not path.is_file():
        die(f"missing file: {path}")
    return path.read_text(encoding="utf-8")


def method_block(text: str, header: str):
    if header not in text:
        die(f"method not found: {header}")
    start = text.index(header)
    end = text.index(".end method", start) + len(".end method")
    return text[start:end], start, end


def replace_block(text: str, header: str, block: str) -> str:
    old, start, end = method_block(text, header)
    return text[:start] + block + text[end:]


SHOW_NATIVE = """.method public static showNative(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z
    .locals 11

    const/4 v10, 0x0

    if-eqz p1, :fail
    sget-object v9, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;
    if-eqz v9, :fail
    iget-object v7, v9, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;
    if-eqz v7, :fail

    :try_start_0
    :loop
    invoke-interface {v7}, LX/snm;->getValue()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, LX/DSA;
    if-eqz v1, :fail

    iget-object v8, v9, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0A:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-virtual {v8, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, p1
    const/4 v2, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/16 v5, -0x3001
    const/4 v6, 0x1
    invoke-static/range {v0 .. v6}, LX/DSA;->A01(Landroid/graphics/Bitmap;LX/DSA;LX/MF6;Ljava/util/List;IIZ)LX/DSA;
    move-result-object v8
    invoke-interface {v7, v1, v8}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :loop
    const/4 v10, 0x1
    return v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0
    const-string v1, "InstantsGallery"
    const-string v2, "Native QuickSnap preview handoff failed"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :fail
    const/4 v10, 0x0
    return v10
.end method
"""


def main() -> None:
    z = read(BRIDGE)
    p = read(PICKER)

    # 1. Add the ViewModel field if it is not already present.
    field = ".field private static vm:" + VM
    if field not in z:
        anchor = ".field private static uiContext:Landroid/content/Context;"
        if anchor not in z:
            die("Bridge uiContext field not found")
        z = z.replace(anchor, anchor + "\n\n" + field, 1)

    # 2. Keep the active ViewModel when the picker is launched.
    b, _, _ = method_block(
        z,
        ".method public static openGallery(Landroid/content/Context;" + VM + ")V",
    )
    if "InstantsGalleryBridge;->vm:" not in b:
        anchor = "sput-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->pending:LX/gAI;"
        if anchor not in b:
            die("openGallery pending assignment not found")
        b = b.replace(
            anchor,
            anchor
            + "\n\n    sput-object p1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->vm:"
            + VM,
            1,
        )
        z = replace_block(
            z,
            ".method public static openGallery(Landroid/content/Context;" + VM + ")V",
            b,
        )

    # 3. Clear it on cancel.
    b, _, _ = method_block(z, ".method public static cancel()V")
    if "InstantsGalleryBridge;->vm:" not in b:
        anchor = "sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->pending:LX/gAI;"
        if anchor not in b:
            die("cancel pending clear not found")
        b = b.replace(
            anchor,
            anchor
            + "\n    sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->vm:"
            + VM,
            1,
        )
        z = replace_block(z, ".method public static cancel()V", b)

    # 4. Add or repair the native state handoff method.
    show_header = ".method public static showNative(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z"
    if show_header in z:
        z = replace_block(z, show_header, SHOW_NATIVE)
    else:
        z = z.rstrip() + "\n\n" + SHOW_NATIVE + "\n"

    # 5. Picker: do not square-crop, and do not open the custom editor.
    if "InstantsGalleryBridge;->showNative" in p:
        print("Picker already uses the native preview")
    else:
        if "InstantsGalleryEditor;->show" not in p:
            die("picker Editor.show call not found")

        crop = re.compile(
            r"\n[ \t]*invoke-static \{v2\}, "
            r"Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;"
            r"->squareCrop\(Landroid/graphics/Bitmap;\)Landroid/graphics/Bitmap;"
            r"\s*\n[ \t]*move-result-object v2\s*\n"
        )
        p, count = crop.subn("\n", p, count=1)
        if count != 1:
            die("squareCrop block not found; local hotfix differs")

        p = p.replace(
            "Opening editor preview; nothing is uploaded until Send",
            "Opening native QuickSnap preview; nothing is uploaded until Send",
        )

        show = re.compile(
            r"^([ \t]*)invoke-static \{p0, v2\}, "
            r"Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;"
            r"->show\(Landroid/app/Activity;Landroid/graphics/Bitmap;\)V$",
            re.M,
        )
        match = show.search(p)
        if not match:
            die("Editor.show instruction not found")

        indent = match.group(1)
        native = (
            indent
            + "invoke-static {p0, v2}, Lapp/morphe/extension/instagram/patches/instants/"
            "InstantsGalleryBridge;->showNative(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z\n\n"
            + indent
            + "move-result v3\n\n"
            + indent
            + "if-nez v3, :native_failed\n\n"
            + indent
            + "invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/"
            "InstantsGalleryBridge;->cancel()V\n\n"
            + indent
            + "invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/"
            "InstantsGalleryEditor;->clear()V\n\n"
            + indent
            + "invoke-virtual {p0}, Landroid/app/Activity;->finish()V\n\n"
            + indent
            + "return-void\n\n"
            + ":native_failed\n"
            + indent
            + 'const-string v0, "Could not open native QuickSnap preview. See Logcat."\n\n'
            + indent
            + "invoke-direct {p0, v0}, Lapp/morphe/extension/instagram/patches/instants/"
            "InstantsGalleryPickerActivity;->message(Ljava/lang/String;)V\n\n"
            + indent
            + "goto :cancel"
        )
        p = p[: match.start()] + native + p[match.end():]

        if ":cancel" not in p:
            die("picker :cancel label not found")
        if "InstantsGalleryEditor;->show" in p:
            die("Editor.show still present after patch")

    # 6. Do not restore the custom editor after an Activity recreation.
    if "InstantsGalleryEditor;->restore" in p:
        restore = re.compile(
            r"^([ \t]*)invoke-static \{p0\}, "
            r"Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;"
            r"->restore\(Landroid/app/Activity;\)V$",
            re.M,
        )
        match = restore.search(p)
        if not match:
            die("Editor.restore instruction not found; local hotfix differs")
        p = (
            p[: match.start()]
            + match.group(1)
            + "invoke-virtual {p0}, Landroid/app/Activity;->finish()V"
            + p[match.end():]
        )
        if "InstantsGalleryEditor;->restore" in p:
            die("Editor.restore still present after patch")

    backup = Path.home() / "igbuild" / (
        "v5-native-preview-backup-" + time.strftime("%Y%m%d-%H%M%S")
    )
    backup.mkdir(parents=True, exist_ok=True)
    for source in (BRIDGE, PICKER):
        shutil.copy2(source, backup / source.name)

    BRIDGE.write_text(z, encoding="utf-8")
    PICKER.write_text(p, encoding="utf-8")
    print("SUCCESS: native QuickSnap preview handoff installed")
    print("Backup:", backup)
    print("Rebuild with: bash build_instants_termux.sh")


if __name__ == "__main__":
    main()
