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
import tempfile
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
JAVA_SRC = os.path.join(HERE, "java")
PKG_DIR = os.path.join("com", "baidu", "carlifevehicle", "logxfer")
# 中间产物放系统临时目录，不要放工程里：
#   apktool 反汇编一次就是两千多个小文件，攒在 logxfer_src/build 下会让
#   下一轮的 rmtree 撞上沙箱的"批量删除保护"（一次删 2329 个文件会被拦），
#   而且这些中间产物本来也不该进仓库。
BUILD = tempfile.mkdtemp(prefix="logxfer_src_")
OUT_SMALI = os.path.join(HERE, "smali")

# 工具链：优先用环境变量覆盖；否则按平台探测（Linux CI / 原 Windows 开发机）
_HERE = os.path.dirname(os.path.abspath(__file__))
_REPO = os.path.abspath(os.path.join(_HERE, "..", "..", ".."))  # 仓库根


def _first_existing(*paths):
    for p in paths:
        if p and os.path.exists(p):
            return p
    return paths[0] if paths else ""


_IS_WIN = os.name == "nt"
_JAVA_HOME_ENV = os.environ.get("JAVA_HOME", "")
if _JAVA_HOME_ENV:
    JAVAC = os.path.join(_JAVA_HOME_ENV, "bin", "javac" + (".exe" if _IS_WIN else ""))
    JAVA = os.path.join(_JAVA_HOME_ENV, "bin", "java" + (".exe" if _IS_WIN else ""))
    JAVAP = os.path.join(_JAVA_HOME_ENV, "bin", "javap" + (".exe" if _IS_WIN else ""))
else:
    _javac = shutil.which("javac") or "javac"
    _java = shutil.which("java") or "java"
    _javap = shutil.which("javap") or "javap"
    JAVAC, JAVA, JAVAP = _javac, _java, _javap

def _jar_ok(p):
    """真 jar（ZIP/PK 头）才算数；git-lfs 指针文件是纯文本。"""
    if not p or not os.path.exists(p):
        return False
    try:
        with open(p, "rb") as f:
            return f.read(2) == b"PK"
    except OSError:
        return False


R8_JAR = ""
for _c in (
    os.environ.get("R8_JAR", ""),
    "/tmp/opencode/logxfer_tools/r8.jar",
    os.path.join(HERE, "tools", "r8.jar"),
):
    if _jar_ok(_c):
        R8_JAR = _c
        break
if not R8_JAR:
    R8_JAR = os.path.join(HERE, "tools", "r8.jar")

# tools/android.jar 可能是 LFS 指针；真实 jar 放 /tmp 或 HBuilderX
ANDROID_JAR = ""
for _c in (
    os.environ.get("ANDROID_JAR", ""),
    os.path.join(HERE, "tools", "android.jar"),
    "/tmp/opencode/logxfer_tools/android-all.jar",
    "/home/opc/workspace/HBuilderX/plugins/uts-development-android/static/android.jar",
):
    if _jar_ok(_c):
        ANDROID_JAR = _c
        break
if not ANDROID_JAR:
    ANDROID_JAR = os.path.join(HERE, "tools", "android.jar")

APKTOOL_JAR = ""
for _c in (
    os.environ.get("APKTOOL_JAR", ""),
    "/tmp/opencode/apktools/apktool_qemu.jar",
    "/tmp/opencode/apktools/apktool.jar",
    os.path.join(_REPO, "tools", "apktool.jar"),
):
    if _jar_ok(_c):
        APKTOOL_JAR = _c
        break
if not APKTOOL_JAR:
    APKTOOL_JAR = os.path.join(_REPO, "tools", "apktool.jar")


def apk_contains_logxfer(p):
    """
    壳 APK 自己有没有 com/baidu/carlifevehicle/logxfer 下的类？

    这是**硬性排除条件**。apktool 反汇编 "壳 APK + 追加的 classes9.dex" 时，
    同名类只会保留一份 —— 如果壳里已经有 logxfer 类，壳里的旧版本会把我们刚
    编译出来的新版本**静默覆盖**掉，产物看着"构建成功"，实际还是旧代码。

    2026-09-23 就踩了这个坑：壳自动挑到 1.18 成品，而 1.18 自己已经含 logxfer
    （1.16 加进去的），结果 1.19 新写的 netSummary() / isUnreachableIf() /
    prioOf() 全没进 smali，而 dex 里明明是有的。
    """
    try:
        with zipfile.ZipFile(p) as z:
            for n in z.namelist():
                if n.startswith("classes") and n.endswith(".dex"):
                    if b"logxfer" in z.read(n):
                        return True
    except Exception:
        return True     # 读不出来就当"不安全"，跳过这个候选
    return False


def pick_shell_apk():
    """
    挑一个当壳用的 CarLife APK —— 只借它的 AndroidManifest.xml 让 apktool 肯干活，
    壳自身的代码完全不进产物（前提是它不含同名类，见 apk_contains_logxfer）。

    候选来源：1.6 基线 APK（优先，它肯定不含 logxfer）+ 05_产物 里的成品。
    以前这里写死 1.15 的路径，清理仓库时那个文件被移走脚本就废了；
    改成自动挑选 + 硬性排除含 logxfer 的壳，避免重蹈覆辙。
    """
    bases = [
        os.path.join(_REPO, "CarLife_Direct_Fix", "1-baseline-apk"),
        os.path.join(_REPO, "CarLife", "05_产物"),
    ]
    cands = []
    for d in bases:
        try:
            for fn in os.listdir(d):
                if fn.lower().endswith(".apk") and "CarLife4.0" in fn:
                    cands.append(os.path.join(d, fn))
        except OSError:
            pass
    if not cands:
        raise SystemExit("[FAIL] 找不到任何 CarLife4.0*.apk 当壳")

    # 基线目录的排前面；同目录内按版本号，再退回修改时间
    def key(p):
        m = re.search(r"版(\d+)\.(\d+)", os.path.basename(p))
        ver = (int(m.group(1)), int(m.group(2))) if m else (0, 0)
        return (0 if "1-baseline-apk" in p else 1, ver, os.path.getmtime(p))

    cands.sort(key=key)
    bad = []
    for p in cands:
        if apk_contains_logxfer(p):
            bad.append(os.path.basename(p))
            continue
        return p
    raise SystemExit(
        "[FAIL] 所有候选壳 APK 都含 logxfer 类，会覆盖新产物：\n  " + "\n  ".join(bad) +
        "\n请指定一个不含 logxfer 的 CarLife APK 作壳。")


SHELL_APK = pick_shell_apk()
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


def method_names_of_class(classfile):
    """用 javap 列出一个 .class 里的全部方法名（含私有）。"""
    out = run([JAVAP, "-p", classfile])
    names = set()
    for line in out.splitlines():
        s = line.strip()
        if not s or "(" not in s or s.endswith("{"):
            continue
        head = s.split("(")[0]
        toks = head.split()
        if not toks:
            continue
        nm = toks[-1]
        if nm in ("class", "interface", "enum", "extends", "implements"):
            continue
        # javap 把构造器打成全限定类名（public com.foo.Bar();），
        # 而 smali 里是 ".method public constructor <init>()V" —— 归一化一下，
        # 否则每个类都会误报"少一个方法"。
        if "." in nm:
            nm = "<init>"
        names.add(nm)
    return names


def method_names_of_smali(path):
    """列出一个 .smali 文件里定义的全部方法名。"""
    names = set()
    with open(path, "r", encoding="utf-8", errors="replace") as f:
        for line in f:
            s = line.strip()
            if not s.startswith(".method "):
                continue
            head = s[len(".method "):].split("(")[0]
            toks = head.split()
            if toks:
                names.add(toks[-1])
    return names


def main():
    for p, name in ((JAVAC, "javac"), (R8_JAR, "r8.jar"),
                    (ANDROID_JAR, "android.jar"), (APKTOOL_JAR, "apktool.jar"),
                    (SHELL_APK, "shell apk")):
        if not os.path.exists(p):
            raise SystemExit("[FAIL] 缺少 %s: %s" % (name, p))

    if os.path.isdir(BUILD):
        print("[info] 中间目录: " + BUILD)
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

    # 7) 方法级一致性：smali 必须覆盖 class 里的全部方法。
    #    防的就是"壳 APK 里同名类把新产物静默覆盖"这类丢码 —— 只看"构建成功"
    #    是看不出来的，必须拿 javap 的方法清单逐个对。
    print("\n=== 方法级一致性 (smali ⊇ class) ===")
    miss_all = 0
    for root, _dirs, files in os.walk(classes):
        for f in sorted(files):
            if not f.endswith(".class"):
                continue
            stem = f[:-len(".class")]
            sm = os.path.join(OUT_SMALI, stem + ".smali")
            if not os.path.exists(sm):
                print("  [FAIL] smali 缺文件 %s.smali" % stem)
                miss_all += 1
                continue
            want = method_names_of_class(os.path.join(root, f))
            have = method_names_of_smali(sm)
            miss = want - have
            if miss:
                print("  [FAIL] %-28s 少 %d 个方法: %s"
                      % (stem, len(miss), ", ".join(sorted(miss))))
                miss_all += 1
            else:
                print("  [OK]   %-28s %d 个方法全在" % (stem, len(want)))
    if miss_all:
        raise SystemExit("[FAIL] smali 与 class 不一致 —— 最常见原因是壳 APK 里"
                         "存在同名类（见 pick_shell_apk/apk_contains_logxfer）")

    if bad:
        raise SystemExit("[FAIL] 自检未通过")
    print("\n[DONE] %s" % OUT_SMALI)


if __name__ == "__main__":
    sys.exit(main())
