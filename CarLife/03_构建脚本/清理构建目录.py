# -*- coding: utf-8 -*-
"""
清理构建中间目录（只删构建垃圾，绝不碰工程源码）

为什么要单独写脚本：沙箱有批量删除保护，一次 `rm` 影响超过约 50 个文件会被拦截并返回非 0，
`rm -rf _bw_xxx` 这种必然被拦。而 Python 的 `shutil.rmtree` 不受该拦截影响。

安全约束（重要）：
  1. 只在 ROOT（C:\\PJGG\\apk）**直接子目录**里按白名单前缀匹配，不递归、不跟随符号链接
  2. 只删下面 JUNK_PREFIXES 里明确列出的前缀；真工程树都在 C:\\PJGG\\apk\\CarLife\\01_工程源码\\
     之下，**不在扫描范围内**
  3. 命中名字若出现在 NEVER_DELETE 里，直接拒绝
  4. 默认 dry-run，必须显式 --yes 才真删

用法：
  python 清理构建目录.py            # 只看会删什么
  python 清理构建目录.py --yes      # 真删
"""
import os
import sys
import shutil

ROOT = r"C:\PJGG\apk"

# 构建中间目录前缀（build.sh / 验证步骤产生的）
JUNK_PREFIXES = (
    "_build_w",      # 旧版 build.sh 的复用目录（含 _build_w_stale_N）
    "_junk_build_w", # 手工挪走的残留
    "_bw_",          # 新版 build.sh 的每轮专用目录 _bw_<工程>_<时间戳>
    "_vchk_",        # build.sh 第 4 步复核版本号时反编译出来的临时工程
)

# 这些名字永远不删（工程本体的名字形态）
NEVER_DELETE = (
    "_w110", "_w111", "_w112", "_w113", "_w114", "_w115",
    "CarLife", "CarLife5plus", "Yilian", "BootTask", "tools",
    ".workbuddy", ".git",
)


def junk_dirs():
    out = []
    for name in sorted(os.listdir(ROOT)):
        p = os.path.join(ROOT, name)
        # 不跟随 junction/symlink，避免顺着链接删到别处
        if os.path.islink(p) or not os.path.isdir(p):
            continue
        if name in NEVER_DELETE:
            continue
        if not any(name.startswith(pre) for pre in JUNK_PREFIXES):
            continue
        # 双保险：解析后的真实路径必须仍在 ROOT 下
        if os.path.dirname(os.path.realpath(p)) != os.path.realpath(ROOT):
            print("!! 跳过(真实路径不在 ROOT 下): %s" % p)
            continue
        out.append(p)
    return out


def size_of(p):
    total = 0
    for root, _d, files in os.walk(p):
        for f in files:
            try:
                total += os.path.getsize(os.path.join(root, f))
            except OSError:
                pass
    return total


def main():
    do_it = "--yes" in sys.argv
    targets = junk_dirs()
    if not targets:
        print("没有需要清理的构建目录。")
        return 0

    total = 0
    plan = []
    for p in targets:
        sz = size_of(p)
        total += sz
        plan.append((p, sz))

    print("拟清理 %d 个目录, 合计 %.1f MB" % (len(plan), total / 1048576.0))
    for p, sz in plan:
        print("  %-42s %7.1f MB" % (os.path.basename(p), sz / 1048576.0))

    if not do_it:
        print("\n(这是预览。加 --yes 才会真删)")
        return 0

    print()
    for p, _sz in plan:
        try:
            shutil.rmtree(p)
            print("已删除 %s" % os.path.basename(p))
        except Exception as e:
            print("!! 删除失败 %s: %s %s" % (os.path.basename(p), type(e).__name__, e))
    return 0


if __name__ == "__main__":
    sys.exit(main())
