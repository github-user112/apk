# -*- coding: utf-8 -*-
"""
读懂截图里的二维码（血泪工具）

为什么需要：CarLife 车机端的「下载日志」页面把 http://<车机IP>:18080 渲染成二维码，
手机扫码才能下载。验证时不能靠肉眼看图猜内容 —— 必须把截图喂给解码器，
把二维码里真正的字符串读出来，才能证明「屏幕上的码 -> 手机要访问的地址」这条链是对的。
1.16 的验证就是这么做的（当时工具放在临时目录，后来被清理掉了，1.17 又重新做了一遍，
所以这次固化到 03_构建脚本/ 下，别再放临时目录）。

依赖：JDK（tools/jdk-17.0.20.1+1）+ zxing core/javase 3.5.3。
      两个 jar 放在本脚本同目录的 _qrtool/ 下；第一次跑如果缺会自动从 Maven Central 下载。

用法：
  python 验二维码.py <图片路径> [更多图片...]
  python 验二维码.py C:/PJGG/apk/CarLife/05_产物/验证_1.17_日志按钮/截图_1.17_下载页_二维码与统计.png
"""
import os
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
TOOL = os.path.join(HERE, "_qrtool")
JAVA_HOME = r"C:\PJGG\apk\tools\jdk-17.0.20.1+1"
JAVAC = os.path.join(JAVA_HOME, "bin", "javac.exe")
JAVA = os.path.join(JAVA_HOME, "bin", "java.exe")
CORE = os.path.join(TOOL, "core-3.5.3.jar")
JAVASE = os.path.join(TOOL, "javase-3.5.3.jar")
SRC = os.path.join(TOOL, "QrDecode.java")
OUT = os.path.join(TOOL, "out")

MAVEN = "https://repo1.maven.org/maven2/com/google/zxing"


def ensure_jars():
    os.makedirs(TOOL, exist_ok=True)
    for path, url in ((CORE, MAVEN + "/core/3.5.3/core-3.5.3.jar"),
                      (JAVASE, MAVEN + "/javase/3.5.3/javase-3.5.3.jar")):
        if os.path.exists(path) and os.path.getsize(path) > 10000:
            continue
        print("下载 %s ..." % os.path.basename(path))
        r = subprocess.run(["curl", "-sSL", "--noproxy", "*", "-o", path, url])
        if r.returncode != 0 or not os.path.exists(path):
            sys.exit("[FAIL] 下载失败: " + url)
    if not os.path.exists(SRC):
        sys.exit("[FAIL] 缺 %s（QrDecode.java）" % SRC)


def ensure_compiled():
    cls = os.path.join(OUT, "QrDecode.class")
    if os.path.exists(cls) and os.path.getmtime(cls) > os.path.getmtime(SRC):
        return
    os.makedirs(OUT, exist_ok=True)
    r = subprocess.run([JAVAC, "-encoding", "UTF-8", "-d", OUT,
                        "-cp", CORE + ";" + JAVASE, SRC],
                       capture_output=True)
    if r.returncode != 0:
        print(r.stdout.decode("utf-8", "replace"))
        print(r.stderr.decode("utf-8", "replace"))
        sys.exit("[FAIL] javac 编译 QrDecode 失败")
    print("已编译 QrDecode")


def decode(img):
    print("\n=== %s ===" % os.path.basename(img))
    # JDK17 的 System.out 默认跟控制台代码页走，中文会变乱码；显式钉成 UTF-8。
    r = subprocess.run([JAVA, "-Dfile.encoding=UTF-8", "-Dsun.stdout.encoding=UTF-8",
                        "-Dsun.stderr.encoding=UTF-8",
                        "-cp", CORE + ";" + JAVASE + ";" + OUT, "QrDecode", img],
                       capture_output=True)
    text = r.stdout.decode("utf-8", "replace") + r.stderr.decode("utf-8", "replace")
    print(text.rstrip())
    return r.returncode == 0


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    for p in (JAVAC, JAVA):
        if not os.path.exists(p):
            sys.exit("[FAIL] 找不到 JDK: " + p)
    ensure_jars()
    ensure_compiled()
    bad = 0
    for img in sys.argv[1:]:
        if not os.path.exists(img):
            print("!! 图片不存在: " + img)
            bad += 1
            continue
        if not decode(img):
            bad += 1
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
