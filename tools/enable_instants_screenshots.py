#!/usr/bin/env python3
"""Allow screenshots in Instagram 451's QuickSnapUnifiedFragment only.

This deliberately does not patch shared window helpers, DMs, InboxLock, or the
gallery editor. It can be applied to the owner's locally hotfixed V5 source
without replacing any V5 files with the archived V4/V5 copies in this repo.
"""

import argparse
from datetime import datetime, timezone
import os
from pathlib import Path
import stat
import sys
import tempfile


RELATIVE_PATH = Path("smali_classes16/X/XPO.smali")
CLASS_MARKERS = (
    ".class public final LX/XPO;",
    '.field public static final __redex_internal_original_name:Ljava/lang/String; = "QuickSnapUnifiedFragment"',
)
METHOD = ".method public final onCreate(Landroid/os/Bundle;)V\n"
ORIGINAL = """    :cond_3
    invoke-virtual {p0}, LX/4Ka;->requireWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v0, 0x2000

    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_4
"""
PATCHED = ORIGINAL.replace(
    "    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V",
    "    # Instants screenshots: only QuickSnapUnifiedFragment opts out of FLAG_SECURE.\n"
    "    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V",
)


def inspect_source(text):
    """Require the known class, lifecycle method, and a single exact patch site."""
    if not all(text.count(marker) == 1 for marker in CLASS_MARKERS):
        raise ValueError("Expected Instagram 451 QuickSnapUnifiedFragment (LX/XPO;) identity is missing or ambiguous.")
    if text.count(METHOD) != 1:
        raise ValueError("Expected QuickSnap onCreate method is missing or ambiguous.")
    start = text.index(METHOD)
    end = text.find("\n.end method", start)
    if end < 0:
        raise ValueError("QuickSnap onCreate method is incomplete.")
    method = text[start:end]
    counts = (method.count(ORIGINAL), method.count(PATCHED))
    if counts == (1, 0) and text.count(ORIGINAL) == 1:
        return "original"
    if counts == (0, 1) and text.count(PATCHED) == 1:
        return "patched"
    raise ValueError("The exact QuickSnap FLAG_SECURE block was changed or is ambiguous; no files were modified.")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source_root", nargs="?", default=".", type=Path,
                        help="Decoded source root, e.g. ~/igbuild/instagram-v5-zip")
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--check", action="store_true", help="Check compatibility and status without writing")
    mode.add_argument("--revert", action="store_true", help="Restore the original QuickSnap screenshot restriction")
    args = parser.parse_args()
    root = args.source_root.expanduser().resolve()
    source = root / RELATIVE_PATH

    try:
        content = source.read_bytes()
        text = content.decode("utf-8")
        state = inspect_source(text)
        print(f"{source}: {state}")
        if args.check:
            return 0

        desired = "original" if args.revert else "patched"
        if state == desired:
            print("Already in the requested state; no files were modified.")
            return 0

        before, after = (PATCHED, ORIGINAL) if args.revert else (ORIGINAL, PATCHED)
        updated = text.replace(before, after, 1).encode("utf-8")
        # Validate the complete replacement before creating a backup or writing.
        if inspect_source(updated.decode("utf-8")) != desired:
            raise ValueError("Internal patch validation failed; no files were modified.")

        stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S.%fZ")
        backup = root.parent / "instants-screenshot-backups" / root.name / stamp / RELATIVE_PATH
        backup.parent.mkdir(parents=True, exist_ok=False)
        with backup.open("xb") as handle:
            handle.write(content)

        temporary_path = None
        try:
            with tempfile.NamedTemporaryFile(dir=source.parent, prefix=".instants-screenshots-", delete=False) as handle:
                temporary_path = Path(handle.name)
                handle.write(updated)
                handle.flush()
                os.fsync(handle.fileno())
            os.chmod(temporary_path, stat.S_IMODE(source.stat().st_mode))
            os.replace(temporary_path, source)
            temporary_path = None
        finally:
            if temporary_path is not None:
                temporary_path.unlink(missing_ok=True)
        print(f"Backup: {backup}")
        print("Restored QuickSnap screenshot restriction." if args.revert else
              "Enabled QuickSnap/Instants screenshots in source. Rebuild and sign with your existing key, then reopen Instants.")
        return 0
    except (OSError, UnicodeError, ValueError) as error:
        print(f"Error: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
