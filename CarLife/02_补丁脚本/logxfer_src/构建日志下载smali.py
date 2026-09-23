# -*- coding: utf-8 -*-
"""
把 logxfer_src/java 下的 Java 源码编译成 smali，产出到 logxfer_src/smali/。

为什么需要这一层：apktool 工程只能吃 smali。本机没有 Android SDK / gradle，
所以走 "javac -> D8 -> classes.dex -> 塞进壳 APK -> apktool 反汇编" 这条最小工具链。
跑一次即可，产物 logxfer_src/smali/ 会被 patch 脚本直接复制进工程
（即常规构建不再依赖本脚本和 tools/ 下的 jar）。

用法:
    python 构建日志下载smali.py
"""
import os
import re
import shutil
import subprocess
import sys
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
JAVA_SRC = os.path.join(HERE, "java")
PKG_DIR = os.path.join("com", "baidu", "carlifevehicle", "logxfer")
BUILD = os.path.join(HERE, "build")
OUT_SMALI = os.path.join(HERE, "smali")

JAVA_HOME = r"C:\PJGG\apk\tools\jdk-17.0.20.1+1"
JAVAC = os.path.join(JAVA_HOME, "bin", "javac.exe")
JAVA = os.path.join(JAVA_HOME, "bin", "java.exe")
R8_JAR = os.path.join(HERE, "tools", "r8.jar")
ANDROID_JAR = os.path.join(HERE, "tools", "android.jar")
APKTOOL_JAR = r"C:\PJGG\apk\tools\apktool.jar"
# 壳 APK：任意一个结构完整的 CarLife APK 即可（只借它的 AndroidManifest.xml 让 apktool 能反汇编）
SHELL_APK = r"C:\PJGG\apk\CarLife\05_产物\CarLife4.0车机端个人修改版1.15_5+流程移植.apk"
EX_TMP = os.path.join(BUILD, "shell_extra.apk")
EXTRA_DEX_NAME = "classes9.dex"


def run(cmd, cwd=None):
    print("[run] " + " ".join(cmd[:6]) + (" ..." if len(cmd) > 6 else ""))
    p = subprocess.Popen(cmd, cwd=cwd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out, _ = p.communicate()
    text = out.decode("utf-8", "replace")
    if p.returncode != 0:
        print(text)
        raise SystemExit("[FAIL] exit=%d" % p.returncode)
    return text


def main():
    for p, name in ((JAVAC, "javac"), (R8_JAR, "r8.jar"),
                    (ANDROID_JAR, "android.jar"), (APKTOOL_JAR, "apktool.jar"),
                    (SHELL_APK, "shell apk")):
        if not os.path.exists(p):
            raise SystemExit("[FAIL] 缺少 %s: %s" % (name, p))

    if os.path.isdir(BUILD):
        shutil.rmtree(BUILD)
    classes = os.path.join(BUILD, "classes")
    dexdir = os.path.join(BUILD, "dex")
    os.makedirs(classes)
    os.makedirs(dexdir)

    sources = []
    for root, _dirs, files in os.walk(JAVA_SRC):
        for f in files:
            if f.endswith(".java"):
                sources.append(os.path.join(root, f))
    if not sources:
        raise SystemExit("[FAIL] java 目录下没有源码")

    # 1) javac
    run([JAVAC, "-encoding", "UTF-8", "-source", "8", "-target", "8",
         "-classpath", ANDROID_JAR, "-d", classes] + sources)

    # 2) D8 -> classes.dex
    class_files = []
    for root, _dirs, files in os.walk(classes):
        for f in files:
            if f.endswith(".class"):
                class_files.append(os.path.join(root, f))
    run([JAVA, "-cp", R8_JAR, "com.android.tools.r8.D8",
         "--min-api", "16", "--lib", ANDROID_JAR,
         "--output", dexdir] + class_files)
    dex = os.path.join(dexdir, "classes.dex")
    if not os.path.exists(dex):
        raise SystemExit("[FAIL] D8 没有产出 classes.dex")

    # 3) 塞进壳 APK（用非常规 dex 序号，避免与壳自身的 dex 冲突）
    shutil.copyfile(SHELL_APK, EX_TMP)
    with zipfile.ZipFile(EX_TMP, "a", zipfile.ZIP_DEFLATED) as z:
        z.write(dex, EXTRA_DEX_NAME)

    # 4) apktool 反汇编，拿到 smali
    dec = os.path.join(BUILD, "dec")
    run([JAVA, "-jar", APKTOOL_JAR, "d", "-f", "--no-res", EX_TMP, "-o", dec])
    src_dir = None
    for root, dirs, files in os.walk(dec):
        if root.replace("\\", "/").endswith("/" + PKG_DIR.replace("\\", "/")):
            src_dir = root
            break
    if src_dir is None:
        raise SystemExit("[FAIL] 反汇编结果里没有找到 %s" % PKG_DIR)

    # 5) 复制到 smali/
    if os.path.isdir(OUT_SMALI):
        shutil.rmtree(OUT_SMALI)
    os.makedirs(OUT_SMALI)
    count = 0
    for f in sorted(os.listdir(src_dir)):
        if f.endswith(".smali"):
            shutil.copyfile(os.path.join(src_dir, f), os.path.join(OUT_SMALI, f))
            count += 1

    # 6) 顺带做一次静态自检：构造器名、关键字符串
    merged = ""
    for f in os.listdir(OUT_SMALI):
        with open(os.path.join(OUT_SMALI, f), "r", encoding="utf-8") as fh:
            merged += fh.read()
    checks = [
        ("构造器未被改名", re.search(r"\.method public constructor <init>\(\)V", merged) is not None),
        ("含端口常量字符串", '"Content-Disposition: attachment' in merged),
        ("含 logxfer.html", "logxfer.html" in merged),
        ("含 activity 名", "LogDownloadActivity" in merged),
        # 1.17: 主界面按钮的 id 是硬编码的（没有 R.java），必须和 public.xml 对得上
        ("含主界面按钮 id 0x7f090147", "0x7f090147" in merged or "2131624263" in merged),
        ("含 LogXferEntry 绑定方法", "LogXferEntry" in merged),
    ]
    print("\n=== 产物自检 ===")
    bad = 0
    for name, ok in checks:
        print(("  [OK]   " if ok else "  [FAIL] ") + name)
        if not ok:
            bad += 1
    print("  产出 smali 文件数: %d" % count)
    if bad:
        raise SystemExit("[FAIL] 自检未通过")
    print("\n[DONE] %s" % OUT_SMALI)


if __name__ == "__main__":
    sys.exit(main())
