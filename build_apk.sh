#!/usr/bin/env bash
# 一键构建 BootTask APK（Windows + Git Bash 环境）
#
# 为什么需要这个脚本 —— build.sh 本身没问题，是**这台机器的环境**缺三样东西，
# 且每一样都会以完全不相干的报错形式暴露，查起来很费时间：
#   ① 没有 java/javac：PATH 里找不到，build.sh 报 "javac: command not found"
#      → 本机有便携 JDK 17 在 2026-10-23-21-00-43/jdk-17.0.20.1+1，只是没进 PATH
#   ② 没有 zip：build.sh 里两处 zip 调用（-d 删条目 / -0 加条目）直接失败
#      → 用 tools/zipshim/zip（python zipfile 实现）顶上
#   ③ r8.jar 是 Git LFS 指针（133 字节文本，不是 jar）
#      → 报 ClassNotFoundException: com.android.tools.r8.D8
#      → 用 SDK 的 build-tools/*/lib/d8.jar（含同款主类）顶替，走 BT_R8_JAR
# 另外这两个 jar 的真实路径含中文（02_补丁脚本），Windows 版 java 按 ANSI 解命令行，
# 所以统一复制到纯 ASCII 的临时目录再指过去。
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)          # apk_src/
PROJECT="$HERE/BootTask"
JARS_SRC="$HERE/CarLife/02_补丁脚本/logxfer_src/tools"
SDK=$(ls -d /c/Users/*/WorkBuddy/*/android-sdk 2>/dev/null | head -1)
WORK=$(mktemp -d "${TMPDIR:-/tmp}/boottask-env.XXXXXX")
WORK_WIN=$(cygpath -m "$WORK")

# ---------- 1. JDK ----------
find_jdk() {
    if [ -n "${JAVA_HOME:-}" ] && [ -x "$JAVA_HOME/bin/javac.exe" ]; then echo "$JAVA_HOME"; return; fi
    local c
    for c in \
        /c/Users/*/WorkBuddy/*/jdk*/ \
        /c/Users/*/WorkBuddy/*/jdk-*/ \
        "/c/Program Files/Java/"*/ \
        "/c/Program Files/Eclipse Adoptium/"*/ \
        "/c/Program Files/Microsoft/"jdk*/ ; do
        [ -x "$c/bin/javac.exe" ] && { echo "${c%/}"; return; }
    done
    return 1
}
JDK=$(find_jdk) || { echo "找不到 JDK（需要 javac）。装一个 JDK 8+ 或设 JAVA_HOME 后重试。" >&2; exit 1; }
echo "[1/4] JDK: $JDK"

# ---------- 2. android.jar + r8/d8 ----------
[ -f "$JARS_SRC/android.jar" ] || { echo "缺少 $JARS_SRC/android.jar" >&2; exit 1; }
cp "$JARS_SRC/android.jar" "$WORK/android.jar"

R8="$JARS_SRC/r8.jar"
if [ -f "$R8" ] && [ "$(wc -c < "$R8")" -gt 1000000 ]; then
    echo "[2/4] r8.jar: 仓库内的真实文件"
else
    echo "[2/4] r8.jar 是 Git LFS 指针（$(wc -c < "$R8" 2>/dev/null || echo 0) 字节），改用 SDK 的 d8.jar"
    D8JAR=$(ls -d "$SDK"/build-tools/*/lib/d8.jar 2>/dev/null | tail -1)
    [ -n "$D8JAR" ] || { echo "SDK 里也没有 d8.jar，无法构建（缺 $SDK/build-tools/*/lib/d8.jar）" >&2; exit 1; }
    cp "$D8JAR" "$WORK/r8.jar"
    R8="$WORK/r8.jar"
fi

# ---------- 3. zip 兼容层 ----------
mkdir -p "$WORK/bin"
cp "$HERE/tools/zipshim/zip" "$WORK/bin/zip"
chmod +x "$WORK/bin/zip"
echo "[3/4] zip: $WORK/bin/zip（python zipfile 实现）"

# ---------- 4. 构建 ----------
export JAVA_HOME="$JDK"
export PATH="$WORK/bin:$JDK/bin:$PATH"
export BT_ANDROID_JAR="$WORK_WIN/android.jar"
export BT_R8_JAR="$WORK_WIN/r8.jar"
echo "[4/4] 构建中（android.jar=$BT_ANDROID_JAR, r8.jar=$BT_R8_JAR）"
bash "$PROJECT/build.sh" "$@"
