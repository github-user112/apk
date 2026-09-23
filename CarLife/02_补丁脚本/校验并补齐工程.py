# -*- coding: utf-8 -*-
"""
校验并补齐工程文件（血泪工具，务必在每次构建前跑）

背景：用 `cp -r` / `robocopy` 复制 2000+ 文件的 apktool 工程时，进程可能被超时杀掉，
      导致目标工程**整份文件缺失**（不是内容损坏，是文件根本不存在）。
      只比对"两边都存在"的文件做 md5 是抓不到这种情况的 —— 必须做**集合差**。

用法：
  python 校验并补齐工程.py <目标工程名> <参照工程名>
  例：python 校验并补齐工程.py _w115 _w114        # 补齐后自动校验差异清单

行为：
  1. 列出参照工程有、目标工程没有的文件 -> 缺什么
  2. 从参照工程复制补齐（--fix）
  3. 列出两边都有但内容不同的文件 -> 这些应该是"故意打补丁"造成的，人工确认
  4. 退出码非 0 表示仍有缺失
"""
import os
import sys
import shutil
import hashlib

ROOT = r"C:\PJGG\apk\CarLife\01_工程源码"

# 这些差异是"故意打补丁"造成的，属于正常；其余内容差异都要人工确认
EXPECTED_DIFF = {
    "apktool.yml",
    # patchB：蓝牙未开自动 enable + 状态位
    r"smali\a\a\a\a\m\m\d\a.smali",
    # patch_v12 收发/连接/断开插桩
    r"smali\a\a\a\a\m\m\e\b.smali",
    r"smali\a\a\a\a\m\m\e\d.smali",
    # patch_v12 设备名兜底插桩
    r"smali\a\a\a\a\m\m\d\e.smali",
    # patch_v12 THIS_DEVICE_CHANGED 分支
    r"smali\a\a\a\a\m\m\d\i.smali",
    # 1.14 修复自举器分支方向
    r"smali\a\a\a\a\m\m\d\j$a.smali",
    r"smali\a\a\a\a\m\m\d\j$b.smali",
    r"smali\a\a\a\a\m\m\d\j.smali",
    # 1.11 patchF/G 抑制发现
    r"smali\a\a\a\a\m\m\d\h.smali",
    # 1.13 去引导页
    r"smali\a\a\b\n\r.smali",
    # 1.11/1.12 USB 免授权 + 三链路加固（相对 _w110 基线时会出现）
    "AndroidManifest.xml",
    r"assets\bdcf",
    r"res\xml\device_filter.xml",
    r"smali\a\a\a\a\m\m\c\c.smali",
    r"smali\a\a\a\a\m\m\e\a.smali",
    r"smali\com\baidu\carlife\sdk\UsbPermissionProxyActivity.smali",
    # 1.17 把「下载日志」做进主界面（去掉独立桌面图标）
    r"res\layout\frag_main.xml",
    r"res\layout-hdpi\frag_main.xml",
    r"res\values\ids.xml",
    r"res\values\public.xml",
    r"smali\com\baidu\carlifevehicle\ConnModeHelper.smali",
    r"smali\com\baidu\carlifevehicle\logxfer\LogDownloadActivity.smali",
    r"smali\com\baidu\carlifevehicle\logxfer\LogHttpServer.smali",
}

# 这些顶层目录是 apktool 的构建缓存，不参与比对
SKIP_TOP = {"build"}


def rels(base):
    out = set()
    for root, _dirs, files in os.walk(base):
        for f in files:
            r = os.path.relpath(os.path.join(root, f), base)
            if r.split(os.sep)[0] in SKIP_TOP:
                continue
            out.add(r)
    return out


def md5(p):
    h = hashlib.md5()
    with open(p, "rb") as fh:
        for chunk in iter(lambda: fh.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def main():
    if len(sys.argv) < 3:
        print(__doc__)
        return 2
    tgt = os.path.join(ROOT, sys.argv[1])
    ref = os.path.join(ROOT, sys.argv[2])
    fix = "--fix" in sys.argv

    a, b = rels(ref), rels(tgt)
    print("参照 %s: %d 个文件" % (sys.argv[2], len(a)))
    print("目标 %s: %d 个文件" % (sys.argv[1], len(b)))

    missing = sorted(a - b)
    print("\n=== 缺失（参照有、目标没有）: %d ===" % len(missing))
    if missing:
        # 按顶层两级目录聚合，避免刷屏
        agg = {}
        for r in missing:
            parts = r.split(os.sep)
            k = os.sep.join(parts[:3]) if len(parts) > 3 else os.sep.join(parts[:2])
            agg.setdefault(k, []).append(r)
        for k in sorted(agg):
            print("  %-52s x%d" % (k, len(agg[k])))

    if fix and missing:
        for r in missing:
            src = os.path.join(ref, r)
            dst = os.path.join(tgt, r)
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            shutil.copy2(src, dst)
        print("\n已从 %s 补齐 %d 个文件" % (sys.argv[2], len(missing)))
        b = rels(tgt)
        missing = sorted(a - b)

    # 内容差异
    diffs = []
    for r in sorted(a & b):
        if md5(os.path.join(ref, r)) != md5(os.path.join(tgt, r)):
            diffs.append(r)
    print("\n=== 内容不同: %d（应全部是故意打补丁的文件）===" % len(diffs))
    surprise = []
    for r in diffs:
        flag = "OK " if r in EXPECTED_DIFF else "?? "
        if r not in EXPECTED_DIFF:
            surprise.append(r)
        print("  %s%s" % (flag, r))

    print("\n=== 目标比参照多出的文件（新增类/新类）===")
    for r in sorted(b - a):
        print("  + %s" % r)

    bad = len(missing) or len(surprise)
    print("\n" + ("!!! 有问题: 缺失 %d, 计划外差异 %d" % (len(missing), len(surprise))
                  if bad else "===== 工程文件完整, 差异全部符合预期 ====="))
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
