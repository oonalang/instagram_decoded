#!/data/data/com.termux/files/usr/bin/bash
set -Eeuo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="${IG_BUILD_DIR:-$HOME/igbuild}"
BASE="${IG_BASE_APK:-/storage/emulated/0/Download/Instagram_451.0.0.53.80.apk}"
KEY="${IG_KEYSTORE:-$ROOT/instagram-gallery-signing.jks}"
WORK="$ROOT/instants-v4-main-nores"
OUT="$ROOT/Instagram-Instants-Gallery-V4-Main.apk"
DL="/storage/emulated/0/Download"
LOG="$ROOT/instants-v4-main-build.log"

fail() { echo "ERROR: $*" >&2; exit 1; }
for cmd in apktool unzip rsync zipalign apksigner sha256sum python; do
  command -v "$cmd" >/dev/null 2>&1 || fail "Missing dependency: $cmd"
done
[[ -f "$SOURCE_DIR/apktool.yml" ]] || fail "Not an Apktool source root: $SOURCE_DIR"
[[ -f "$SOURCE_DIR/build_support/restore_manifest.py" ]] || fail "Manifest restore script missing"
[[ -f "$SOURCE_DIR/smali_classes24/app/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity.smali" ]] || fail "V4 picker source missing"
[[ -f "$BASE" ]] || fail "Original reference APK missing: $BASE"
[[ -f "$KEY" ]] || fail "Existing signing key missing: $KEY. Refusing to create a new key."
mkdir -p "$ROOT" "$DL"
EXPECTED=070d63531150dc5c0576a49e1c3ac0b3cc4307a0e8b72a4f8d47280bb6e14050
ACTUAL="$(unzip -p "$BASE" AndroidManifest.xml | sha256sum | cut -d' ' -f1)"
[[ "$ACTUAL" == "$EXPECTED" ]] || fail "Original APK binary manifest checksum mismatch. Stopping."

echo "Decoding original APK without resource recompilation..."
apktool d -r -f -j 2 "$BASE" -o "$WORK"
echo "Overlaying V4 GitHub Smali, preserving missing classes from original APK..."
for src in "$SOURCE_DIR"/smali "$SOURCE_DIR"/smali_classes*; do
  [[ -d "$src" ]] || continue
  dst="$WORK/$(basename "$src")"
  mkdir -p "$dst"
  rsync -a "$src/" "$dst/"
done
[[ -f "$WORK/smali_classes2/X/9lA.smali" ]] || fail "Missing LX/9lA superclass"
python "$SOURCE_DIR/build_support/restore_manifest.py" "$WORK/original/AndroidManifest.xml" "$WORK/AndroidManifest.xml"
rm -f "$ROOT/instants-v4-main-unsigned.apk" "$ROOT/instants-v4-main-aligned.apk" "$OUT"
set -o pipefail
apktool b -j 2 "$WORK" -o "$ROOT/instants-v4-main-unsigned.apk" 2>&1 | tee "$LOG"
[[ -s "$ROOT/instants-v4-main-unsigned.apk" ]] || fail "APK output missing"
zipalign -p -f 4 "$ROOT/instants-v4-main-unsigned.apk" "$ROOT/instants-v4-main-aligned.apk"
apksigner sign --ks "$KEY" --out "$OUT" "$ROOT/instants-v4-main-aligned.apk"
apksigner verify --verbose "$OUT"
ORIG_CERT="$(apksigner verify --print-certs "$BASE" | sed -n 's/^Signer #1 certificate SHA-256 digest: //p' | head -1)"
NEW_CERT="$(apksigner verify --print-certs "$OUT" | sed -n 's/^Signer #1 certificate SHA-256 digest: //p' | head -1)"
if [[ -n "$ORIG_CERT" && -n "$NEW_CERT" && "$ORIG_CERT" != "$NEW_CERT" ]]; then
  echo "WARNING: Signing certificate differs from original APK. Do not uninstall your installed app or clear its data."
fi
cp -f "$OUT" "$DL/Instagram-Instants-Gallery-V4-Main.apk"
echo "Build and signing verified: $DL/Instagram-Instants-Gallery-V4-Main.apk"
echo "Runtime upload functionality still requires device testing."
