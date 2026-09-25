#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/.." && pwd)
PROJECT="$ROOT/BootTask"
LOGXFER="$ROOT/CarLife/02_补丁脚本/logxfer_src"
ANDROID_JAR="$LOGXFER/tools/android.jar"
R8_JAR="$LOGXFER/tools/r8.jar"
APKTOOL_JAR="$ROOT/tools/apktool.jar"
APKSIGNER_JAR="$ROOT/tools/apksigner/apksigner.jar"
OUT=${1:-"$PROJECT/dist/BootTask_v1.3.apk"}

for path in "$ANDROID_JAR" "$R8_JAR" "$APKTOOL_JAR" "$APKSIGNER_JAR" "$PROJECT/keys/boottask.p12"; do
    if [[ ! -e "$path" ]]; then
        printf '缺少文件: %s\n' "$path" >&2
        exit 1
    fi
done

WORK=$(mktemp -d "/tmp/opencode/boottask-build.XXXXXX")
trap 'rm -rf "$WORK"' EXIT

python3 - "$PROJECT" "$WORK/project" <<'PY'
import shutil
import sys

shutil.copytree(sys.argv[1], sys.argv[2], ignore=shutil.ignore_patterns(
    "build", "dist", "keys", "screenshots", "src", "README.md", "build.sh"))
PY

mkdir -p \
    "$WORK/classes" "$WORK/new" "$WORK/merged" "$WORK/assets/logxfer" \
    "$WORK/java/com/boottask" "$WORK/java/com/baidu/carlifevehicle/logxfer"
cp "$PROJECT/src/com/boottask/BootDiagnostics.java" "$WORK/java/com/boottask/BootDiagnostics.java"
cp "$LOGXFER/java/com/baidu/carlifevehicle/logxfer/LogDownloadActivity.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogDownloadActivity.java"
cp "$LOGXFER/java/com/baidu/carlifevehicle/logxfer/LogHttpServer.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogHttpServer.java"
cp "$LOGXFER/java/com/baidu/carlifevehicle/logxfer/NetWatch.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/NetWatch.java"

python3 - "$WORK/java" <<'PY'
import pathlib
import sys

root = pathlib.Path(sys.argv[1])

def replace_exact(text, old, new, expected=1):
    actual = text.count(old)
    if actual != expected:
        raise SystemExit(f"replacement count mismatch: {old!r}: {actual} != {expected}")
    return text.replace(old, new)

server = root / "com/baidu/carlifevehicle/logxfer/LogHttpServer.java"
text = server.read_text(encoding="utf-8")
text = replace_exact(text, "public static final int PORT = 18080;", "public static final int PORT = 18081;")
text = replace_exact(text, "CarLife 车机日志", "开机任务日志", 2)
text = replace_exact(text, "carlife-logs.zip", "boottask-logs.zip", 2)
server.write_text(text, encoding="utf-8")
activity = root / "com/baidu/carlifevehicle/logxfer/LogDownloadActivity.java"
text = activity.read_text(encoding="utf-8")
text = replace_exact(text, "CarLife 车机日志下载", "开机任务日志下载")
activity.write_text(text, encoding="utf-8")
PY

javac -encoding UTF-8 -source 8 -target 8 \
    -classpath "$ANDROID_JAR" \
    -d "$WORK/classes" \
    "$WORK/java/com/boottask/BootDiagnostics.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogDownloadActivity.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogHttpServer.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/NetWatch.java"

CLASS_FILES=("$WORK"/classes/com/boottask/*.class "$WORK"/classes/com/baidu/carlifevehicle/logxfer/*.class)
java -cp "$R8_JAR" com.android.tools.r8.D8 \
    --min-api 8 --lib "$ANDROID_JAR" --output "$WORK/new" "${CLASS_FILES[@]}"

java -jar "$APKTOOL_JAR" b "$WORK/project" -o "$WORK/base.apk"
unzip -p "$WORK/base.apk" classes.dex > "$WORK/base.dex"
java -cp "$R8_JAR" com.android.tools.r8.D8 \
    --min-api 8 --lib "$ANDROID_JAR" --output "$WORK/merged" \
    "$WORK/base.dex" "${CLASS_FILES[@]}"

cp "$WORK/base.apk" "$WORK/unsigned.apk"
zip -q -d "$WORK/unsigned.apk" classes.dex
cp "$WORK/merged/classes.dex" "$WORK/classes.dex"
cp "$LOGXFER/assets/logxfer/logxfer.html" "$WORK/assets/logxfer/logxfer.html"
cp "$LOGXFER/assets/logxfer/qrcode.js" "$WORK/assets/logxfer/qrcode.js"
python3 - "$WORK/assets/logxfer/logxfer.html" <<'PY'
import pathlib
import sys

path = pathlib.Path(sys.argv[1])
text = path.read_text(encoding="utf-8")
old = "CarLife 日志下载"
if text.count(old) != 1:
    raise SystemExit(f"replacement count mismatch: {old!r}: {text.count(old)} != 1")
path.write_text(text.replace(old, "开机任务 日志下载"), encoding="utf-8")
PY
(
    cd "$WORK"
    zip -q -0 "$WORK/unsigned.apk" classes.dex assets/logxfer/logxfer.html assets/logxfer/qrcode.js
)

mkdir -p "$(dirname "$OUT")"
java -jar "$APKSIGNER_JAR" sign \
    --v1-signing-enabled true \
    --v2-signing-enabled false \
    --v3-signing-enabled false \
    --min-sdk-version 8 \
    --ks "$PROJECT/keys/boottask.p12" \
    --ks-pass pass:boottask \
    --ks-key-alias boottask \
    --key-pass pass:boottask \
    --out "$OUT" \
    "$WORK/unsigned.apk"

java -jar "$APKSIGNER_JAR" verify --min-sdk-version 8 "$OUT"
unzip -Z1 "$OUT" assets/logxfer/logxfer.html >/dev/null
unzip -Z1 "$OUT" assets/logxfer/qrcode.js >/dev/null
printf '%s\n' "$OUT"
sha256sum "$OUT"
