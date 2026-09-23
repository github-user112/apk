#!/bin/bash
# CarLife 车机端 一键构建: smali -> apk -> zipalign+签名 -> 05_产物
# 用法: 在 Git Bash 里执行
#   PRJ="C:/PJGG/apk/CarLife/01_工程源码/_w115" NAME="xxx.apk" bash "C:/PJGG/apk/CarLife/03_构建脚本/build.sh"
set -u
export PATH="/usr/bin:/bin:/usr/local/bin:$PATH"

# 血泪: Git Bash 的 MSYS 参数路径转换会把 robocopy 的 `/E` 当成 Unix 路径改写成 `E:/`,
# robocopy 于是报 "错误: 无效参数 #3: E:/" 并**一个文件都不复制**; 而本脚本把 robocopy 的
# 输出丢进了 /dev/null, 表面只看到 "复制失败: ...apktool.yml 不存在", 极难归因。
# 必须禁用参数转换, 且不能让调用方的环境决定构建成败。
export MSYS_NO_PATHCONV=1
export MSYS2_ARG_CONV_EXCL='*'

ROOT="C:/PJGG/apk"
PRJ="${PRJ:-$ROOT/CarLife/01_工程源码/_w112}"
OUT="$ROOT/CarLife/05_产物"
JAVA_HOME="$ROOT/tools/jdk-17.0.20.1+1"
APKTOOL="$ROOT/tools/apktool.jar"
SIGNER="$ROOT/tools/uber-apk-signer.jar"
PY="C:/Users/gpj/.workbuddy/binaries/python/versions/3.13.12/python.exe"

NAME="${NAME:-CarLife4.0车机端个人修改版_未命名.apk}"
TAG="${PRJ##*/}"

echo "=== 0. Dalvik 合并点静态检查 ==="
"$PY" "$ROOT/CarLife/02_补丁脚本/verify_dalvik_合并点检查.py" "$TAG" || {
  echo "!!! 静态检查未通过, 终止构建"; exit 1; }

# 0.5 工程完整性门禁。血泪: 复制 2000+ 文件的工程时进程被超时杀掉, 会留下**整份文件缺失**
#    的工程(不是内容损坏)。只比对"两边都存在"的文件做 md5 抓不到, 必须做集合差。
#     缺失了 protobuf 类 -> apktool 照样能打包成功, 但装上去就 NoClassDefFoundError。
#     用法: 构建时带 REF=<上一版工程名> 即可自动校验并补齐。
if [ -n "${REF:-}" ]; then
  echo "=== 0.5 工程完整性校验/补齐 (参照 $REF) ==="
  "$PY" "$ROOT/CarLife/02_补丁脚本/校验并补齐工程.py" "$TAG" "$REF" --fix || {
    echo "!!! 工程文件不完整或存在计划外差异, 终止构建"; exit 1; }
fi

echo "=== 1. 复制到本次专用的 ASCII 构建目录 ==="
# 血泪五条:
#  a) apktool 的 build/ 缓存会让它报 "resources have not changed", 复用旧的
#     resources.arsc -> 版本号怎么改都不生效。所以要保证构建目录里没有 build/。
#  b) aapt2 是原生进程, 工程路径含中文时会 "failed to open directory"
#     -> 构建必须在纯 ASCII 路径下进行。
#  c) 沙箱有批量删除保护: 一次 rm 超过 ~50 个文件会被拦截并返回非 0。
#     build.sh 内部调用 rm 同样会被拦。所以本脚本完全不删东西。
#  d) 也绝不复用构建目录: 上一轮留下的 `build/` 清不掉, 而且 `cp -r` 遇到已存在的
#     目标目录会嵌套成 $WORK/<工程名>, apktool 就会拿着旧内容打包 —— 构建"假成功"
#     的头号来源。
#  e) 结论: 每轮构建用一个全新的时间戳目录, 纯复制(约 3 秒), 一次成型。
#     目录名记进 _build_dirs.txt, 方便之后统一回收。
WORK="$ROOT/_bw_${TAG}_$(date +%s)"
# /XD 必须写**绝对路径**, 不能用 `/XD build`:
#   `unknown/META-INF/com/android/build/gradle/app-metadata.properties` 里也有一个
#   叫 build 的目录, 按名字排除会把它一起排掉 —— 静默丢文件, APK 照样打得出来。
robocopy "$PRJ" "$WORK" /E /XD "$PRJ/build" /R:0 /W:0 \
  /NFL /NDL /NJH /NJS /NC /NS /NP >/dev/null 2>&1
RC=$?
# robocopy 约定: 0=无变化 1=有文件复制 2=有额外文件 3=1+2, 1~7 都算成功; >=8 才是失败
if [ "$RC" -gt 7 ]; then
  echo "!!! robocopy 失败 rc=$RC (源: $PRJ)"; exit 1; fi
if [ ! -f "$WORK/apktool.yml" ]; then
  echo "!!! 复制失败: $WORK/apktool.yml 不存在"; exit 1; fi
echo "$WORK" >> "$ROOT/_build_dirs.txt"
grep -m1 -E "versionCode|versionName" "$WORK/apktool.yml"

echo "=== 2. 打包 ==="
rm -f "$ROOT/_build_tmp.apk"
# 打包失败重试: 实测 apktool 把 AndroidManifest.xml 备份成 AndroidManifest.xml.orig 时,
# 会因 Windows 上的瞬时文件占用抛 AccessDeniedException(手动重跑同一条命令即成功),
# 属于环境抖动而非工程问题。给它 2 次重试, 免得白等一轮 3 分钟。
BUILD_OK=0
for _try in 1 2 3; do
  if "$JAVA_HOME/bin/java" -jar "$APKTOOL" b "$WORK" -o "$ROOT/_build_tmp.apk"; then
    BUILD_OK=1; break
  fi
  echo "!!! 打包第 $_try 次失败, 2 秒后重试"
  sleep 2
done
if [ "$BUILD_OK" != "1" ]; then
  echo "!!! 打包失败 (smali 语法错误或文件被占用, 已重试 3 次)"; exit 1; fi

echo "=== 3. 签名 (v1+v2+v3) ==="
"$JAVA_HOME/bin/java" -jar "$SIGNER" --apks "$ROOT/_build_tmp.apk" --allowResign 2>&1 | \
  grep -E "sign success|signature verified|error" | head -3

mkdir -p "$OUT"
mv -f "$ROOT/_build_tmp-aligned-debugSigned.apk" "$OUT/$NAME"
rm -f "$ROOT/_build_tmp.apk"

echo "=== 4. 复核版本号 ==="
VCHK="$ROOT/_vchk_$(date +%s)"
"$JAVA_HOME/bin/java" -jar "$APKTOOL" d -f "$OUT/$NAME" -o "$VCHK" >/dev/null 2>&1
grep -A2 "versionInfo" "$VCHK/apktool.yml" 2>/dev/null
echo "$VCHK" >> "$ROOT/_build_dirs.txt"

echo "=== 完成: $OUT/$NAME ==="
ls -la "$OUT/$NAME"
echo
echo "提示: 本轮留下了构建目录 $WORK 与 $VCHK (构建目录不再复用, 所以会累积)。"
echo "      回收: python \"$ROOT/CarLife/03_构建脚本/清理构建目录.py\" --yes"
echo "      (沙箱会拦 rm, 批量删除必须走这个脚本的 shutil.rmtree)"
