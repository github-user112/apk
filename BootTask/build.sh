#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/.." && pwd)
PROJECT="$ROOT/BootTask"
LOGXFER="$ROOT/CarLife/02_补丁脚本/logxfer_src"
ANDROID_JAR="$LOGXFER/tools/android.jar"
R8_JAR="$LOGXFER/tools/r8.jar"
APKTOOL_JAR="$ROOT/tools/apktool.jar"
APKSIGNER_JAR="$ROOT/tools/apksigner/apksigner.jar"
OUT=${1:-"$PROJECT/dist/BootTask_v1.6.26.apk"}

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
    "build", "dist", "keys", "screenshots", "src", "README.md",
    "build.sh", "build_win.sh"))
PY

# 桌面图标名带版本号: 从 AndroidManifest 的 versionName 推导 app_name,
# 避免改了版本忘改名字(与 CarLife patch_v24 同思路)。
python3 - "$WORK/project" <<'PY'
import pathlib
import re
import sys

project = pathlib.Path(sys.argv[1])
manifest = (project / "AndroidManifest.xml").read_text(encoding="utf-8")
match = re.search(r'android:versionName="([^"]+)"', manifest)
if match is None:
    raise SystemExit("AndroidManifest.xml 缺少 android:versionName")
values = project / "res" / "values"
values.mkdir(parents=True, exist_ok=True)
(values / "strings.xml").write_text(
    '<?xml version="1.0" encoding="utf-8"?>\n'
    '<resources>\n'
    '    <string name="app_name">\u5f00\u673a\u4efb\u52a1 %s</string>\n'
    '</resources>\n' % match.group(1),
    encoding="utf-8",
)
print("app_name -> \u5f00\u673a\u4efb\u52a1 %s" % match.group(1))
PY

mkdir -p \
    "$WORK/classes" "$WORK/new" "$WORK/merged" "$WORK/assets/logxfer" \
    "$WORK/java/com/boottask" "$WORK/java/com/baidu/carlifevehicle/logxfer"
# v1.6.26 根治：**不再维护类清单**——直接 glob 全量拷贝 + 全量编译。
# 「cp 段 + javac 段两处清单都要加新类」这个坑反复复发：build.sh 曾长期停在 v1.5 时代的
# 2 个类（本版刚补齐 19 个又立刻漏掉上游新增的 LowRateFix/WifiRateProbe）。
if [ ! -d "$LOGXFER/java/com/baidu/carlifevehicle/logxfer" ]; then
    echo "logxfer 共享源码目录不存在（被移动/改名？）: $LOGXFER" >&2
    exit 1
fi
cp "$PROJECT"/src/com/boottask/*.java "$WORK/java/com/boottask/"
cp "$LOGXFER"/java/com/baidu/carlifevehicle/logxfer/*.java \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/"
# logxfer_src 是 CarLife/BootTask 两工程共享目录，里面混着 CarLife 专属类：
#  ① Qr* 三个用了 API17+ 的 @JavascriptInterface —— BootTask 的 stub android.jar 没有，编译必炸；
#  ② BtGuard/LogXferEntry/NoBtFallback/SessionLog 是 CarLife 专属功能，BootTask 从不引用。
# 拷进来后剔除，只保留公共的 LogHttpServer/LogDownloadActivity/NetWatch。
# 将来 CarLife 往这个目录加新类：BootTask 用不到就同步加进下面的 rm 清单；
# 若公共类反向依赖了被剔除的类，javac 会报错提醒（fail-loud，不会静默出残包）。
rm -f \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/QrBadge.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/QrFallback.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/QrFallbackActivity.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/BtGuard.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/LogXferEntry.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/NoBtFallback.java" \
    "$WORK/java/com/baidu/carlifevehicle/logxfer/SessionLog.java"

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

# 全量编译（glob，见上方说明——不再手工列清单）
# shellcheck disable=SC2046
javac -encoding UTF-8 -source 8 -target 8 \
    -classpath "$ANDROID_JAR" \
    -d "$WORK/classes" \
    $(find "$WORK/java" -name '*.java' | sort)

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
