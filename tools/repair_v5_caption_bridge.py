#!/usr/bin/env python3
"""Restore a missing V5 dispatchCaption method without replacing local fixes."""
import argparse
from datetime import datetime, timezone
import os
from pathlib import Path
import re
import stat
import sys
import tempfile

PKG = "Lapp/morphe/extension/instagram/patches/instants/InstantsGallery"
REL = Path("smali_classes24/app/morphe/extension/instagram/patches/instants")
OLD = "dispatch(Landroid/graphics/Bitmap;Z)V"
NEW = "dispatchCaption(Landroid/graphics/Bitmap;Ljava/lang/String;)V"
CALL = ("invoke-virtual {v0, p0, v1, v2, v3}, LX/gAI;->invoke"
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;")


def require(condition, message):
    if not condition:
        raise ValueError(message + "; no files changed.")


def repair(text, editor):
    require('GalleryScene;->select(' not in text,
            'This bridge uses GalleryScene. Use tools/repair_v5_scene_build.py to archive the unused legacy editor and update build checks')
    require(text.count(".class public final " + PKG + "Bridge;") == 1,
            "Expected InstantsGalleryBridge class is missing or ambiguous")
    require(PKG + "Bridge;->" + NEW in editor,
            "The local editor does not call the expected dispatchCaption signature")
    methods = re.findall(r"^\.method[^\n]*\n.*?^\.end method", text, re.M | re.S)
    existing = [m for m in methods if NEW in m.splitlines()[0]]
    if existing:
        require(len(existing) == 1 and existing[0].splitlines()[0] ==
                ".method public static " + NEW, "Unexpected existing dispatchCaption declaration")
        return text

    candidates = [m for m in methods if m.splitlines()[0] == ".method public static " + OLD]
    require(len(candidates) == 1, "Expected original dispatch method is missing or ambiguous")
    method = candidates[0]
    # Reuse the live callback, cleanup, logging and error handling. The boolean
    # parameter must be unused so changing its type cannot alter that logic.
    body = method.split("\n", 1)[1]
    code = "\n".join(line.split("#", 1)[0] for line in body.splitlines())
    require(not re.search(r"\bp[1-9][0-9]*\b", code), "Dispatch uses a parameter this repair cannot adapt")
    locals_match = re.search(r"^\s*\.locals (\d+)\s*$", code, re.M)
    require(locals_match is not None, "Unsupported dispatch register declaration")
    require(all(int(v) < int(locals_match[1]) for v in re.findall(r"\bv(\d+)\b", code)),
            "Dispatch aliases parameter registers")
    require(code.count(CALL) == 1, "Dispatch callback differs from the verified QuickSnap callback")
    require(PKG + "Bridge;->pending:LX/gAI;" in code,
            "Dispatch does not use the active QuickSnap callback")
    constant = '    const-string v2, ""'
    require(code.count(constant) == 1 and code.index(constant) < code.index(CALL),
            "Dispatch caption argument differs from the verified callback")
    require(":v5_caption_ready" not in method, "Repair label already exists")
    new_method = method.replace(".method public static " + OLD,
                                ".method public static " + NEW, 1)
    new_method = new_method.replace(constant,
        "    move-object v2, p1\n"
        "    if-nez v2, :v5_caption_ready\n" + constant + "\n"
        "    :v5_caption_ready", 1)
    return text + "\n\n# V5 editor compatibility: preserve caption in the original callback.\n" + new_method + "\n"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source_root", type=Path)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    root = args.source_root.expanduser().resolve()
    source = root / REL / "InstantsGalleryBridge.smali"
    try:
        original = source.read_bytes()
        text = original.decode("utf-8")
        editor = (root / REL / "InstantsGalleryEditor.smali").read_text()
        updated = repair(text, editor)
        if updated == text:
            print("dispatchCaption is already present; no files changed.")
            return 0
        if args.check:
            print("Compatible: missing dispatchCaption can be restored from the live dispatch method.")
            return 0
        stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S.%fZ")
        backup = root.parent / "instants-bridge-backups" / root.name / stamp / source.name
        backup.parent.mkdir(parents=True, exist_ok=False)
        with backup.open("xb") as handle:
            handle.write(original)
        temporary = None
        try:
            with tempfile.NamedTemporaryFile(dir=source.parent, prefix=".caption-repair-", delete=False) as handle:
                temporary = Path(handle.name)
                handle.write(updated.encode("utf-8"))
                handle.flush()
                os.fsync(handle.fileno())
            os.chmod(temporary, stat.S_IMODE(source.stat().st_mode))
            os.replace(temporary, source)
            temporary = None
        finally:
            if temporary is not None:
                temporary.unlink(missing_ok=True)
        print("Backup:", backup)
        print("Restored dispatchCaption. Rebuild with your existing V5 build script and signing key.")
        return 0
    except (OSError, UnicodeError, ValueError) as error:
        print("ERROR:", error, file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
