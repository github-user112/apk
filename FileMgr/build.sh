#!/usr/bin/env bash
# 车机文件管家 (com.carfiles) 构建脚本 —— 结构与 BootTask/build.sh 同源，差异见内注。
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/.." && pwd)
PROJECT="$ROOT/FileMgr"
LOGXFER="$ROOT/CarLife/02_补丁脚本/logxfer_src"
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

WORK=$(mktemp -d "/tmp/opencode/filemgr-build.XXXXXX")
trap 'rm -rf "$WORK"' EXIT

python3 - "$PROJECT" "$WORK/project" <<'PY'
import shutil
import sys

shutil.copytree(sys.argv[1], sys.argv[2], ignore=shutil.ignore_patterns(
    "build", "dist", "keys", "src", "README.md",
    "build.sh", "build_win.sh"))
PY

# 桌面图标名带版本号（与 CarLife patch_v24 / BootTask 同思路）：从 versionName 推导 app_name
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
if [ ! -d "$LOGXFER/java/com/baidu/carlifevehicle/logxfer" ]; then
    echo "logxfer 共享源码目录不存在（被移动/改名？）: $LOGXFER" >&2
    exit 1
fi
cp "$PROJECT"/src/com/carfiles/*.java "$WORK/java/com/carfiles/"
# ShareServer/UploadServer 调 com.baidu.carlifevehicle.logxfer.LogHttpServer.localIps()
# 取本机 IP（唯一实现），所以 logxfer 三件套必须编进来；CarLife 专属类剔除（同 BootTask）。
cp "$LOGXFER"/java/com/baidu/carlifevehicle/logxfer/*.java \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/"
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

# apktool 打基础包。本工程 smali/ 为空（所有代码走 Java→D8），base 可能没有 classes.dex：
# 有就并进 base（BootTask 同款两段合并），没有就直接用新 dex——两种都要能走。
java -jar "$APKTOOL_JAR" b "$WORK/project" -o "$WORK/base.apk"
if unzip -Z1 "$WORK/base.apk" | grep -qx "classes.dex"; then
    unzip -p "$WORK/base.apk" classes.dex > "$WORK/base.dex"
    java -cp "$R8_JAR" com.android.tools.r8.D8 \
        --min-api 8 --lib "$ANDROID_JAR" --output "$WORK/merged" \
        "$WORK/base.dex" "${CLASS_FILES[@]}"
    DEX_SRC="$WORK/merged/classes.dex"
    HAS_BASE_DEX=1
else
    echo "(base 无 smali dex——直接用新 dex)"
    DEX_SRC="$WORK/new/classes.dex"
    HAS_BASE_DEX=0
fi

cp "$WORK/base.apk" "$WORK/unsigned.apk"
if [ "$HAS_BASE_DEX" = "1" ]; then
    zip -q -d "$WORK/unsigned.apk" classes.dex
fi
cp "$DEX_SRC" "$WORK/classes.dex"
# recv.html 画二维码靠 qrcode.js；fm.html/upload.html 无外部脚本依赖
cp "$LOGXFER/assets/logxfer/qrcode.js" "$WORK/assets/logxfer/qrcode.js"
(
    cd "$WORK"
    zip -q -0 "$WORK/unsigned.apk" classes.dex assets/logxfer/qrcode.js
)

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
for asset in assets/logxfer/fm.html assets/logxfer/recv.html assets/logxfer/upload.html \
             assets/logxfer/qrcode.js classes.dex; do
    unzip -Z1 "$OUT" "$asset" >/dev/null || { echo "APK 缺少 $asset" >&2; exit 1; }
done
printf '%s\n' "$OUT"
sha256sum "$OUT"
