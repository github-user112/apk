#!/bin/bash
# CarLife Linux 一键构建: smali -> apk -> zipalign+签名 -> 05_产物
# （替代 Windows Git Bash 版 build.sh；本机是 Linux ARM，无 robocopy/jdk-17 目录）
#
# 用法:
#   PRJ="main" NAME="CarLife4.0车机端个人修改版1.42_xxx.apk" \
#     bash CarLife/03_构建脚本/build_linux.sh
#
# 1.42 起新流程: 源码树只有 01_工程源码/main 一份, 直接改 + git tag;
# 历史版本用 `git checkout v1.xx` 取, 不再保留 _w1xx 树和 patch_vNN 脚本。
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
SRC="$ROOT/CarLife/01_工程源码"
PRJ="${PRJ:-main}"
NAME="${NAME:-CarLife4.0车机端个人修改版_未命名.apk}"
OUT="$ROOT/CarLife/05_产物"

echo "=== 0. Dalvik 静态门禁 (合并点 + 寄存器越界): $PRJ ==="
python3 "$ROOT/CarLife/02_补丁脚本/verify_dalvik_合并点检查.py" "$PRJ"

# aapt2 是原生进程, 工程路径含中文会崩 —— 复制到仓库根的纯 ASCII 目录再打包。
# 目录名带时间戳、绝不复用、绝不删除(沙箱拦 rm), 攒多了用 清理构建目录.py 回收。
WORK="$ROOT/_bw_${PRJ}_$(date +%s)"
cp -r "$SRC/$PRJ" "$WORK"
echo "$WORK" >> "$ROOT/_build_dirs.txt"
# 血泪: 复制 2000+ 文件时进程被超时杀掉, 会留下**整份文件缺失**的工程(不是内容损坏)——
# apktool 照样打包成功, 只小 139KB, 装上必 NoClassDefFoundError。
# 参照树制已随单树制废弃, 改成复制后直接核对文件数。
N1=$(find "$SRC/$PRJ" -type f | wc -l)
N2=$(find "$WORK" -type f | wc -l)
if [ "$N1" != "$N2" ]; then
  echo "!!! 复制不完整: 源 $N1 个文件, 目标 $N2 个文件, 终止构建"; exit 1
fi
echo "文件数核对通过: $N1"
grep -m1 "versionCode" "$WORK/apktool.yml"

echo "=== 1. 打包 ==="
rm -f "$ROOT/_build_tmp.apk"
for _try in 1 2 3; do
  if java -jar "$ROOT/tools/apktool.jar" b "$WORK" -o "$ROOT/_build_tmp.apk"; then
    break
  fi
  echo "!!! 打包第 $_try 次失败, 2 秒后重试"; sleep 2
done
[ -f "$ROOT/_build_tmp.apk" ] || { echo "!!! 打包失败"; exit 1; }

echo "=== 2. 签名 (v1+v2+v3) ==="
# 本机(ARM)上 uber 内置 zipalign 是 x86 二进制跑不动 -> --skipAlign。
# 1.23/1.24/1.41 均未 zipalign, MuMu 实测装/跑无影响, 保持一致。
java -jar "$ROOT/tools/uber-apk-signer.jar" --apks "$ROOT/_build_tmp.apk" \
  --allowResign --skipZipAlign 2>&1 | tail -5
SIGNED="$ROOT/_build_tmp-debugSigned.apk"
[ -f "$SIGNED" ] || { echo "!!! 签名失败"; exit 1; }

mkdir -p "$OUT"
mv -f "$SIGNED" "$OUT/$NAME"
rm -f "$ROOT/_build_tmp.apk" "$ROOT/_build_tmp-debugSigned.apk.idsig"

echo "=== 3. 复核版本号 ==="
VCHK="$ROOT/_vchk_${PRJ}_$(date +%s)"
java -jar "$ROOT/tools/apktool.jar" d -f -s "$OUT/$NAME" -o "$VCHK" >/dev/null 2>&1
grep -A2 "versionInfo" "$VCHK/apktool.yml" 2>/dev/null
echo "$VCHK" >> "$ROOT/_build_dirs.txt"

echo "=== 完成: $OUT/$NAME ==="
ls -la "$OUT/$NAME"
sha256sum "$OUT/$NAME"
echo
echo "提示: 构建目录 $WORK 与 $VCHK 会累积, 回收用:"
echo "  python3 \"$ROOT/CarLife/03_构建脚本/清理构建目录.py\" --yes"
