#!/usr/bin/env python3
"""Restore V5's explicit gallery review on fresh or previously patched sources."""
from pathlib import Path
import re
import sys

base = Path(sys.argv[1] if len(sys.argv) > 1 else ".") / (
    "smali_classes24/app/morphe/extension/instagram/patches/instants"
)
picker = base / "InstantsGalleryPickerActivity.smali"
editor = (base / "InstantsGalleryEditor.smali").read_text()
original = picker.read_text()
pkg = "Lapp/morphe/extension/instagram/patches/instants/InstantsGallery"
show = f"invoke-static {{p0, v2}}, {pkg}Editor;->show(Landroid/app/Activity;Landroid/graphics/Bitmap;)V"
restore = f"invoke-static {{p0}}, {pkg}Editor;->restore(Landroid/app/Activity;)V"

def require(condition, message):
    if not condition:
        raise SystemExit("No changes written: " + message)

require(all(method in editor for method in (
    " show(Landroid/app/Activity;Landroid/graphics/Bitmap;)V",
    " restore(Landroid/app/Activity;)V",
    "->dispatchCaption(Landroid/graphics/Bitmap;Ljava/lang/String;)V",
    "->setContentView(Landroid/view/View;)V",
)), "the installed V5 editor differs")

text = original
handoff = f"invoke-static {{p0, v2}}, {pkg}Bridge;->showNative(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z"
if handoff in text:
    start = text.index(handoff)
    end = text.find("    :try_end_0", start)
    require(end > start and text[start:end].strip().endswith("goto :cancel") and
            text[start:end].count(":native_failed") == 2, "unexpected gallery result block")
    text = text[:start] + show + "\n" + text[end:]
text, _ = re.subn(
    re.escape(f"invoke-static {{v2}}, {pkg}Bridge;->squareCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;")
    + r"\s+move-result-object v2", "", text, count=1,
)
text, _ = re.subn(r"(:already_open\s+)invoke-virtual \{p0\}, Landroid/app/Activity;->finish\(\)V",
                   lambda match: match[1] + restore, text, count=1)
text = text.replace("Opening native QuickSnap preview; nothing is uploaded until Send",
                    "Opening V5 gallery review; waiting for Send")
text = text.replace("Bitmap decoded; submitting to original QuickSnap callback",
                    "Gallery bitmap decoded")
require(text.count(show) == 1 and text.count(restore) == 1 and
        all(call not in text for call in (";->showNative(", ";->dispatch(", ";->dispatchCaption(", ";->squareCrop(")),
        "unsupported picker layout")
if original != text:
    from tempfile import mkstemp
    import os
    fd, backup = mkstemp(prefix=picker.name + ".", suffix=".bak", dir=picker.parent)
    with os.fdopen(fd, "w") as f:
        f.write(original)
    temp = picker.with_suffix(".smali.tmp")
    temp.write_text(text)
    temp.replace(picker)
    print("Previous picker saved to", backup)
print("V5 gallery review ready. Rebuild with bash build_instants_termux.sh")
