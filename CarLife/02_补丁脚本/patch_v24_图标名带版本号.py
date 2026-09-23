# -*- coding: utf-8 -*-
"""
patch_v24 —— 桌面图标名带上版本号

背景：版本号此前只显示在 App 首页顶部（`当前版本: 4.0.M1.3-mod1.xx`），
      桌面上看不出装的是哪一版，多版本来回装时极易混淆（1.23~1.25 大小都差不多，
      看文件也分不出来）。本补丁把版本号写进 launcher 标签。

做法：改 `res/values/strings.xml` 的 `app_name`（`百度 CarLife` -> `百度CarLife 1.xx`）。
      `app_name` 同时被 AndroidManifest 的 application label 和
      accessibility_service_config 的 description 引用，一并生效。

版本号从 apktool.yml 的 versionName 自动推导，不写死，后续换版本不用改脚本。
"""
import os
import re
import subprocess
import sys

ROOT = r"C:\PJGG\apk\CarLife\01_工程源码"
SRC = os.path.join(ROOT, "_w126")
DST = os.path.join(ROOT, "_w127")
STRINGS = r"res\values\strings.xml"


def robocopy(src, dst):
    rc = subprocess.run(
        ["robocopy", src, dst, "/E", "/XD", os.path.join(src, "build"),
         "/R:0", "/W:0", "/NFL", "/NDL", "/NJH", "/NJS", "/NC", "/NS", "/NP"],
        capture_output=True,
    ).returncode
    if rc > 7:
        sys.exit("!!! robocopy 失败 rc=%d" % rc)
    if not os.path.isfile(os.path.join(dst, "apktool.yml")):
        sys.exit("!!! 复制失败: %s 不存在" % os.path.join(dst, "apktool.yml"))


def sub_once(text, old, new, what):
    if text.count(old) != 1:
        sys.exit("!!! %s: 期望匹配 1 次，实际 %d 次\n---\n%s" % (what, text.count(old), old))
    return text.replace(old, new)


def main():
    robocopy(SRC, DST)

    # 版本号 126 -> 127
    yml = os.path.join(DST, "apktool.yml")
    with open(yml, "r", encoding="utf-8") as f:
        t = f.read()
    t = sub_once(t, "versionCode: 126", "versionCode: 127", "apktool.yml versionCode")
    t = sub_once(t, "versionName: mod1.26", "versionName: mod1.27", "apktool.yml versionName")
    with open(yml, "w", encoding="utf-8") as f:
        f.write(t)

    # 从 versionName 推导展示用版本号：mod1.27 -> 1.27
    m = re.search(r"versionName:\s*mod([\d.]+)", t)
    if not m:
        sys.exit("!!! 无法从 apktool.yml 解析 versionName")
    ver = m.group(1)
    new_name = "百度CarLife %s" % ver

    p = os.path.join(DST, STRINGS)
    with open(p, "r", encoding="utf-8") as f:
        s = f.read()
    s = sub_once(
        s,
        '<string name="app_name">百度 CarLife</string>',
        '<string name="app_name">%s</string>' % new_name,
        "strings.xml app_name",
    )
    with open(p, "w", encoding="utf-8") as f:
        f.write(s)

    # 自检：确认 app_name 这一行已经改到。
    # 注意：不要全局搜旧名 —— `version_code_prefix` 本来就是 "百度 CarLife v"
    #       （首页版本号前缀），它是正常的，别误改。
    with open(p, "r", encoding="utf-8") as f:
        chk = f.read()
    if '<string name="app_name">%s</string>' % new_name not in chk:
        sys.exit("!!! app_name 未生效")
    if '<string name="app_name">百度 CarLife</string>' in chk:
        sys.exit("!!! app_name 仍是旧值")

    print("OK: _w127 已生成")
    print("    桌面图标名: %s" % new_name)
    print("    versionCode=127 / versionName=mod1.27")


if __name__ == "__main__":
    main()
