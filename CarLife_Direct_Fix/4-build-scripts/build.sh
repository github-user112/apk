#!/usr/bin/env bash
# =====================================================================
# CarLife 1.6 车机端 直连修复 —— 一键构建
#
# 流程: 基线APK --apktool d--> _sm16(原始smali)
#                        --_patch_v3.py--> _w19  (补丁 A+B+C, 即 1.9)
#                        --_patch_v4.py--> _w110 (补丁 D~G,  即 1.10/v7)
#                        --apktool b--> APK --uber-apk-signer--> 签名
#
# 用法:
#   bash build.sh            # 全流程
#   bash build.sh patch      # 只跑补丁(不重打包)
#   bash build.sh build      # 从已有 _w110 重打包+签名
#
# 注意: 补丁脚本里的 ROOT / SRC / DST 是写死的 C:\PJGG\apk\...
#       若要把工程搬到别处, 先改这 4 个 py 顶部的常量。
# =====================================================================
set -e

ROOT="${CARLIFE_ROOT:-/c/PJGG/apk}"
JDK="$ROOT/tools/jdk-17.0.20.1+1"
APKTOOL_JAR="$ROOT/tools/apktool.jar"
SIGNER_JAR="$ROOT/tools/uber-apk-signer.jar"
PY="${PYTHON:-C:/Users/gpj/.workbuddy/binaries/python/versions/3.13.12/python.exe}"
PKG_SRC="$(cd "$(dirname "$0")/.." && pwd)"   # 本压缩包根目录

BASELINE="$PKG_SRC/1-baseline-apk/CarLife4.0车机端个人修改版1.6_连接模式_中文日志_等待提示.apk"
OUT_APK="$ROOT/_out/CarLife16_direct_fix_final.apk"
OUT_DIR="$ROOT/_out/signed_final"

STAGE="${1:-all}"
export JAVA_HOME="$JDK"

die() { echo "!! $*" >&2; exit 1; }

echo "==================================================================="
echo " CarLife 直连修复构建    STAGE=$STAGE"
echo " 工作目录 ROOT = $ROOT"
echo "==================================================================="

[ -f "$JAVA_HOME/bin/java" ] || die "缺 JDK: $JAVA_HOME"
[ -f "$APKTOOL_JAR" ]       || die "缺 apktool.jar: $APKTOOL_JAR"
[ -f "$SIGNER_JAR" ]        || die "缺 uber-apk-signer.jar: $SIGNER_JAR"

# ---------------------------------------------------------------- 1. 反编译基线
if [ "$STAGE" = "all" ]; then
  if [ -d "$ROOT/_sm16" ]; then
    echo "[1] _sm16 已存在, 跳过反编译（要重来请先删除该目录）"
  else
    [ -f "$BASELINE" ] || die "缺基线 APK: $BASELINE"
    echo "[1] apktool d 基线 APK -> _sm16"
    "$JAVA_HOME/bin/java" -jar "$APKTOOL_JAR" d "$BASELINE" -o "$ROOT/_sm16" -f
  fi
fi

# ---------------------------------------------------------------- 2. 打补丁
if [ "$STAGE" = "all" ] || [ "$STAGE" = "patch" ]; then
  echo "[2a] _patch_v3.py   ( _sm16 -> _w19 , 补丁 A+B+C )"
  "$PY" "$PKG_SRC/2-patch-src/_patch_v3.py"
  echo "[2b] _patch_v4.py   ( _w19  -> _w110, 补丁 D~G  )"
  "$PY" "$PKG_SRC/2-patch-src/_patch_v4.py"
fi

# ---------------------------------------------------------------- 3. 重打包
if [ "$STAGE" = "all" ] || [ "$STAGE" = "build" ]; then
  [ -d "$ROOT/_w110" ] || die "缺 _w110 工作树, 先跑 patch"
  mkdir -p "$ROOT/_out"
  echo "[3] apktool b _w110 -> $OUT_APK"
  "$JAVA_HOME/bin/java" -jar "$APKTOOL_JAR" b "$ROOT/_w110" -o "$OUT_APK" -f

  echo "[4] uber-apk-signer 签名 (v1+v2+v3)"
  rm -rf "$OUT_DIR"
  "$JAVA_HOME/bin/java" -jar "$SIGNER_JAR" -a "$OUT_APK" -o "$OUT_DIR" --allowResign

  SIGNED="$OUT_DIR/$(basename "${OUT_APK%.apk}")-aligned-debugSigned.apk"
  echo
  echo "==================================================================="
  echo " 完成: $SIGNED"
  ls -la "$SIGNED"
  echo " sha256:"
  sha256sum "$SIGNED" 2>/dev/null || certutil -hashfile "$SIGNED" SHA256
  echo "==================================================================="
fi
