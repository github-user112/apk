#!/usr/bin/env bash
# BootTask Windows (Git Bash) 构建脚本 —— 与 build.sh 等价的跨平台版
# 差异：JDK 用仓库自带 jdk-17；zip 不可用改用 python3 zipfile；工具 jar 拷到 ASCII 临时目录
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/.." && pwd -W 2>/dev/null || pwd)
PROJECT="$ROOT/BootTask"
LOGXFER="$ROOT/CarLife/02_补丁脚本/logxfer_src"
export JAVA_HOME="C:/PJGG/apk/tools/jdk-17.0.20.1+1"
export PATH="/c/PJGG/apk/tools/jdk-17.0.20.1+1/bin:$PATH"
ANDROID_JAR="$LOGXFER/tools/android.jar"
R8_JAR="$LOGXFER/tools/r8.jar"
APKTOOL_JAR="$ROOT/tools/apktool.jar"
APKSIGNER_JAR="$ROOT/tools/apksigner/apksigner.jar"
OUT=${1:-"$PROJECT/dist/BootTask_v1.6.17.apk"}

for path in "$ANDROID_JAR" "$R8_JAR" "$APKTOOL_JAR" "$APKSIGNER_JAR" "$PROJECT/keys/boottask.p12"; do
    if [[ ! -e "$path" ]]; then
        printf '缺少文件: %s\n' "$path" >&2
        exit 1
    fi
done

mkdir -p /tmp/opencode
WORK=$(cygpath -m "$(mktemp -d "/tmp/opencode/boottask-build.XXXXXX")")
trap 'rm -rf "$WORK"' EXIT

# 工具 jar 拷到纯 ASCII 路径（血泪 7：JVM 参数里的中文路径不可靠）
mkdir -p "$WORK/tools"
cp "$ANDROID_JAR" "$WORK/tools/android.jar"
cp "$R8_JAR" "$WORK/tools/r8.jar"
ANDROID_JAR="$WORK/tools/android.jar"
R8_JAR="$WORK/tools/r8.jar"

python3 - "$PROJECT" "$WORK/project" <<'PY'
import shutil
import sys

shutil.copytree(sys.argv[1], sys.argv[2], ignore=shutil.ignore_patterns(
    "build", "dist", "keys", "screenshots", "src", "README.md", "build.sh", "build_win.sh"))
PY

mkdir -p \
    "$WORK/classes" "$WORK/merged" "$WORK/assets/logxfer" \
    "$WORK/java/com/boottask" "$WORK/java/com/baidu/carlifevehicle/logxfer"
cp "$PROJECT/src/com/boottask/BootDiagnostics.java" "$WORK/java/com/boottask/BootDiagnostics.java"
cp "$PROJECT/src/com/boottask/AdvActions.java" "$WORK/java/com/boottask/AdvActions.java"
cp "$PROJECT/src/com/boottask/MainActivity.java" "$WORK/java/com/boottask/MainActivity.java"
cp "$PROJECT/src/com/boottask/MediaMute.java" "$WORK/java/com/boottask/MediaMute.java"
cp "$PROJECT/src/com/boottask/QuickRepair.java" "$WORK/java/com/boottask/QuickRepair.java"
cp "$PROJECT/src/com/boottask/NoRootFixes.java" "$WORK/java/com/boottask/NoRootFixes.java"
cp "$PROJECT/src/com/boottask/P2pGuard.java" "$WORK/java/com/boottask/P2pGuard.java"
cp "$PROJECT/src/com/boottask/UploadServer.java" "$WORK/java/com/boottask/UploadServer.java"
cp "$PROJECT/src/com/boottask/ApkInstaller.java" "$WORK/java/com/boottask/ApkInstaller.java"
cp "$PROJECT/src/com/boottask/ReceiveActivity.java" "$WORK/java/com/boottask/ReceiveActivity.java"
cp "$PROJECT/src/com/boottask/AppManager.java" "$WORK/java/com/boottask/AppManager.java"
cp "$PROJECT/src/com/boottask/FileOps.java" "$WORK/java/com/boottask/FileOps.java"
cp "$PROJECT/src/com/boottask/ShareServer.java" "$WORK/java/com/boottask/ShareServer.java"
cp "$PROJECT/src/com/boottask/FileManagerActivity.java" "$WORK/java/com/boottask/FileManagerActivity.java"
cp "$PROJECT/src/com/boottask/FileShareActivity.java" "$WORK/java/com/boottask/FileShareActivity.java"
cp "$LOGXFER/java/com/baidu/carlifevehicle/logxfer/LogDownloadActivity.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogDownloadActivity.java"
cp "$LOGXFER/java/com/baidu/carlifevehicle/logxfer/NetWatch.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/NetWatch.java"
cp "$LOGXFER/java/com/baidu/carlifevehicle/logxfer/LogHttpServer.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogHttpServer.java"

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
    "$WORK/java/com/boottask/AdvActions.java" \
    "$WORK/java/com/boottask/MainActivity.java" \
    "$WORK/java/com/boottask/MediaMute.java" \
    "$WORK/java/com/boottask/QuickRepair.java" \
    "$WORK/java/com/boottask/NoRootFixes.java" \
    "$WORK/java/com/boottask/P2pGuard.java" \
    "$WORK/java/com/boottask/UploadServer.java" \
    "$WORK/java/com/boottask/ApkInstaller.java" \
    "$WORK/java/com/boottask/ReceiveActivity.java" \
    "$WORK/java/com/boottask/AppManager.java" \
    "$WORK/java/com/boottask/FileOps.java" \
    "$WORK/java/com/boottask/ShareServer.java" \
    "$WORK/java/com/boottask/FileManagerActivity.java" \
    "$WORK/java/com/boottask/FileShareActivity.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogDownloadActivity.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/NetWatch.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogHttpServer.java"

CLASS_FILES=("$WORK"/classes/com/boottask/*.class "$WORK"/classes/com/baidu/carlifevehicle/logxfer/*.class)

java -jar "$APKTOOL_JAR" b "$WORK/project" -o "$WORK/base.apk"

# classes.dex（apktool 产物）+ Java 类合并重编
python3 - "$WORK" <<'PY'
import sys
import zipfile

work = sys.argv[1]
with zipfile.ZipFile(f"{work}/base.apk", "r") as zin:
    with open(f"{work}/base.dex", "wb") as out:
        out.write(zin.read("classes.dex"))
PY

java -cp "$R8_JAR" com.android.tools.r8.D8 \
    --min-api 8 --lib "$ANDROID_JAR" --output "$WORK/merged" \
    "$WORK/base.dex" "${CLASS_FILES[@]}"

# 组装 unsigned.apk：base.apk（去 classes.dex）+ 合并 dex + assets（STORED）
cp "$WORK/base.apk" "$WORK/unsigned.apk"
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

python3 - "$WORK" <<'PY'
import sys
import zipfile

work = sys.argv[1]
adds = [
    ("classes.dex", f"{work}/merged/classes.dex"),
    ("assets/logxfer/logxfer.html", f"{work}/assets/logxfer/logxfer.html"),
    ("assets/logxfer/qrcode.js", f"{work}/assets/logxfer/qrcode.js"),
]
src = zipfile.ZipFile(f"{work}/unsigned.apk", "r")
tmp = f"{work}/unsigned2.apk"
dst = zipfile.ZipFile(tmp, "w")
for item in src.infolist():
    if item.filename == "classes.dex":
        continue
    dst.writestr(item, src.read(item.filename))
for arc, path in adds:
    dst.write(path, arc, compress_type=zipfile.ZIP_STORED)
src.close()
dst.close()
import os
os.replace(tmp, f"{work}/unsigned.apk")
PY

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
python3 - "$OUT" <<'PY'
import sys
import zipfile

out = sys.argv[1]
with zipfile.ZipFile(out) as z:
    names = z.namelist()
    for need in ("assets/logxfer/logxfer.html", "assets/logxfer/qrcode.js", "classes.dex"):
        assert need in names, f"missing entry: {need}"
    print(f"entries={len(names)}")
PY
printf '%s\n' "$OUT"
