#!/usr/bin/env bash
# 车机文件管家 Windows (Git Bash) 构建脚本 —— 与 build.sh 等价的跨平台版
# 差异：JDK 用仓库自带 jdk-17；zip 不可用改用 python3 zipfile；工具 jar 拷到 ASCII 临时目录
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/.." && pwd -W 2>/dev/null || pwd)
PROJECT="$ROOT/FileMgr"
LOGXFER="$ROOT/CarLife/02_补丁脚本/logxfer_src"
export JAVA_HOME="C:/PJGG/apk/tools/jdk-17.0.20.1+1"
export PATH="/c/PJGG/apk/tools/jdk-17.0.20.1+1/bin:$PATH"
ANDROID_JAR="$LOGXFER/tools/android.jar"
R8_JAR="$LOGXFER/tools/r8.jar"
APKTOOL_JAR="$ROOT/tools/apktool.jar"
APKSIGNER_JAR="$ROOT/tools/apksigner/apksigner.jar"
OUT=${1:-"$PROJECT/dist/CarFiles_v1.0.0.apk"}

for path in "$ANDROID_JAR" "$R8_JAR" "$APKTOOL_JAR" "$APKSIGNER_JAR" "$PROJECT/keys/filemgr.p12"; do
    if [[ ! -e "$path" ]]; then
        printf '缺少文件: %s\n' "$path" >&2
        exit 1
    fi
done

# logxfer 是多工程共享的外部源码（ShareServer 靠 localIps() 跨包引用），移动/改名会
# 让编译静默断掉 —— 提前断言（与 BootTask/build_win.sh 同款）
for lf in LogHttpServer.java NetWatch.java LogDownloadActivity.java; do
    if [[ ! -e "$LOGXFER/java/com/baidu/carlifevehicle/logxfer/$lf" ]]; then
        printf 'logxfer 共享源码缺失: %s（检查 02_补丁脚本/logxfer_src 是否被移动）\n' "$lf" >&2
        exit 1
    fi
done

mkdir -p /tmp/opencode
WORK=$(cygpath -m "$(mktemp -d "/tmp/opencode/filemgr-build.XXXXXX")")
trap 'rm -rf "$WORK"' EXIT

# 工具 jar 拷到纯 ASCII 临时路径（血泪 7：JVM 参数里的中文路径不可靠）
mkdir -p "$WORK/tools"
cp "$ANDROID_JAR" "$WORK/tools/android.jar"
cp "$R8_JAR" "$WORK/tools/r8.jar"
ANDROID_JAR="$WORK/tools/android.jar"
R8_JAR="$WORK/tools/r8.jar"

python3 - "$PROJECT" "$WORK/project" <<'PY'
import shutil
import sys

shutil.copytree(sys.argv[1], sys.argv[2], ignore=shutil.ignore_patterns(
    "build", "dist", "keys", "src", "README.md", "build.sh", "build_win.sh"))
PY

# 桌面图标名带版本号（从 versionName 推导 app_name）
python3 - "$WORK/project" <<'PY'
import pathlib
import re
import sys

project = pathlib.Path(sys.argv[1])
manifest = (project / "AndroidManifest.xml").read_text(encoding="utf-8")
match = re.search(r'android:versionName="([^"]+)"', manifest)
if match is None:
    raise SystemExit("versionName missing in AndroidManifest.xml")
values = project / "res" / "values"
values.mkdir(parents=True, exist_ok=True)
(values / "strings.xml").write_text(
    '<?xml version="1.0" encoding="utf-8"?>\n'
    '<resources>\n'
    '    <string name="app_name">\u8f66\u673a\u6587\u4ef6\u7ba1\u5bb6 %s</string>\n'
    '</resources>\n' % match.group(1),
    encoding="utf-8",
)
print("app_name -> \u8f66\u673a\u6587\u4ef6\u7ba1\u5bb6 %s" % match.group(1))
PY

mkdir -p \
    "$WORK/classes" "$WORK/new" "$WORK/merged" "$WORK/assets/logxfer" \
    "$WORK/java/com/carfiles" "$WORK/java/com/baidu/carlifevehicle/logxfer"
# glob 全量拷贝 + 全量编译（不维护类清单——BootTask v1.6.26 的教训）
cp "$PROJECT"/src/com/carfiles/*.java "$WORK/java/com/carfiles/"
cp "$LOGXFER"/java/com/baidu/carlifevehicle/logxfer/*.java \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/"
# logxfer_src 混装两工程源码：剔除 CarLife 专属类（Qr* 依赖 API17+ @JavascriptInterface，
# stub android.jar 没有；BtGuard/LogXferEntry/NoBtFallback/SessionLog 用不到）。
rm -f \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/QrBadge.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/QrFallback.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/QrFallbackActivity.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/BtGuard.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogXferEntry.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/NoBtFallback.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/SessionLog.java"

# 全量编译
# shellcheck disable=SC2046
javac -encoding UTF-8 -source 8 -target 8 \
    -classpath "$ANDROID_JAR" \
    -d "$WORK/classes" \
    $(find "$WORK/java" -name '*.java' | sort)

CLASS_FILES=("$WORK"/classes/com/carfiles/*.class "$WORK"/classes/com/baidu/carlifevehicle/logxfer/*.class)
java -cp "$R8_JAR" com.android.tools.r8.D8 \
    --min-api 8 --lib "$ANDROID_JAR" --output "$WORK/new" "${CLASS_FILES[@]}"

# apktool 打基础包。本工程 smali/ 为空，base 可能没有 classes.dex——
# 有就并进 base（两段合并），没有就直接用新 dex（与 build.sh 同逻辑）
java -jar "$APKTOOL_JAR" b "$WORK/project" -o "$WORK/base.apk"

# 组装 unsigned.apk：base.apk（按需去 classes.dex）+ 最终 dex + qrcode.js（STORED）
cp "$LOGXFER/assets/logxfer/qrcode.js" "$WORK/assets/logxfer/qrcode.js"
python3 - "$WORK" <<'PY'
import os
import sys
import zipfile

work = sys.argv[1]
with zipfile.ZipFile(f"{work}/base.apk", "r") as zin:
    has_base = "classes.dex" in zin.namelist()
    if has_base:
        with open(f"{work}/base.dex", "wb") as out:
            out.write(zin.read("classes.dex"))
print("(base 无 smali dex——直接用新 dex)" if not has_base else "(base 有 dex，走两段合并)")
PY

if [ -f "$WORK/base.dex" ]; then
    java -cp "$R8_JAR" com.android.tools.r8.D8 \
        --min-api 8 --lib "$ANDROID_JAR" --output "$WORK/merged" \
        "$WORK/base.dex" "${CLASS_FILES[@]}"
    DEX_SRC="$WORK/merged/classes.dex"
else
    DEX_SRC="$WORK/new/classes.dex"
fi

python3 - "$WORK" "$DEX_SRC" <<'PY'
import os
import sys
import zipfile

work, dex_src = sys.argv[1], sys.argv[2]
adds = [
    ("classes.dex", dex_src),
    ("assets/logxfer/qrcode.js", f"{work}/assets/logxfer/qrcode.js"),
]
src = zipfile.ZipFile(f"{work}/base.apk", "r")
tmp = f"{work}/unsigned.apk"
dst = zipfile.ZipFile(tmp, "w")
for item in src.infolist():
    if item.filename == "classes.dex":
        continue
    dst.writestr(item, src.read(item.filename))
for arc, path in adds:
    dst.write(path, arc, compress_type=zipfile.ZIP_STORED)
src.close()
dst.close()
os.replace(tmp, f"{work}/unsigned.apk")
PY

mkdir -p "$(dirname "$OUT")"
java -jar "$APKSIGNER_JAR" sign \
    --v1-signing-enabled true \
    --v2-signing-enabled false \
    --v3-signing-enabled false \
    --min-sdk-version 8 \
    --ks "$PROJECT/keys/filemgr.p12" \
    --ks-pass pass:boottask \
    --ks-key-alias boottask \
    --key-pass pass:boottask \
    --out "$OUT" \
    "$WORK/unsigned.apk"

java -jar "$APKSIGNER_JAR" verify --min-sdk-version 8 "$OUT"
# 交付自检：三个功能页资产 + 二维码脚本 + dex 都在
python3 - "$OUT" <<'PY'
import sys
import zipfile

out = sys.argv[1]
with zipfile.ZipFile(out) as z:
    names = z.namelist()
    for need in ("assets/logxfer/fm.html", "assets/logxfer/recv.html",
                 "assets/logxfer/upload.html", "assets/logxfer/qrcode.js", "classes.dex"):
        assert need in names, f"missing entry: {need}"
    print(f"entries={len(names)}")
PY
printf '%s\n' "$OUT"
