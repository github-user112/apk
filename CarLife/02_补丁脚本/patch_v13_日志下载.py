# -*- coding: utf-8 -*-
# patch_v13: _w115 -> _w116 (versionCode 116 / mod1.16)
#
# 移植 CarLife 5+ 车机端(com.muyetuge.carlifevehicle)的「下载日志」能力：
#   5+ 的做法 = 内嵌 NanoHTTPD(q8/l) + 自定义 handler(l8/p, new p("log","")) 监听 18080，
#   界面用二维码把 http://<本机IP>:18080 显示出来，手机扫码后浏览器列出日志文件并下载。
#   参考锚点：l8/p;->j() = "http://" + IP + ":18080"、l8/p;->k()/l() = start/stop、
#            d8/j;->b = new Ll8/p("log","")、assets/download.html 文件列表页。
#
# 1.6 侧落地方式（不引入任何第三方库，不移植 Compose/NanoHTTPD）：
#   新增 java.net.ServerSocket 手写极简 HTTP/1.1 服务 + 二维码界面。
#   二维码由 WebView 渲染 assets 内的 qrcode.js（kazuhikoarase/qrcode-generator, MIT），
#   避免在 smali 里手写 QR 编解码；WebView 不可用时自动降级为纯地址文字。
#
# 新增类（源码见 02_补丁脚本/logxfer_src/java，smali 由 构建日志下载smali.py 产出）：
#   com/baidu/carlifevehicle/logxfer/LogHttpServer.smali        HTTP 服务 + 日志收集 + 下载/打包
#   com/baidu/carlifevehicle/logxfer/LogHttpServer$1.smali      accept 循环 Runnable
#   com/baidu/carlifevehicle/logxfer/LogDownloadActivity.smali  二维码界面
#
# 新增资产:
#   assets/logxfer/logxfer.html  二维码页（解析 #hash 里的地址，逐个生成二维码）
#   assets/logxfer/qrcode.js     纯算法二维码生成（SVG/IMG 双路，不依赖 canvas）
#
# Manifest: 追加 LAUNCHER Activity（车机桌面可直接点开），exported=true 便于 adb 触发。
#
# 日志来源（与 1.6 日志组件对齐）：1.6 的 Logger 落盘目录是
#   a/a/a/a/a/e.smali -> new File(getExternalFilesDir(null)(API>21 时) 或 getFilesDir(), "log")
#   即 API19 车机上是 /data/data/com.baidu.carlifevehicle/files/log/
#   另外还兜底扫 /sdcard/BaiduCarlife（a/a/a/a/l/c.smali 的 c 字段）。

import os, shutil, subprocess, sys

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = r"C:\PJGG\apk\CarLife\01_工程源码\_w115"
DST = r"C:\PJGG\apk\CarLife\01_工程源码\_w116"
ASSET_SRC = os.path.join(HERE, "logxfer_src", "smali")
WEB_SRC = os.path.join(HERE, "logxfer_src", "assets", "logxfer")

SMALI_PKG = os.path.join(DST, "smali", "com", "baidu", "carlifevehicle", "logxfer")
ASSET_DST = os.path.join(DST, "assets", "logxfer")

if not os.environ.get("SKIP_COPY"):
    if os.path.exists(DST):
        shutil.rmtree(DST)
    # robocopy 退出码 1 = 成功
    r = subprocess.run(["robocopy", SRC, DST, "/E", "/NFL", "/NDL", "/NJH", "/NJS", "/NC", "/NS"],
                       capture_output=True)
    if r.returncode > 7:
        sys.exit("robocopy failed: %d" % r.returncode)

def read(p):
    with open(p, "r", encoding="utf-8") as f:
        return f.read().replace("\r\n", "\n")

def write(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)

def patch(path, old, new, tag):
    p = os.path.join(DST, path)
    s = read(p)
    assert s.count(old) == 1, "%s: anchor not unique (%d) in %s" % (tag, s.count(old), path)
    write(p, s.replace(old, new))
    print("OK", tag)

# ---------------------------------------------------------------- 1) 新增 smali 类
if not os.path.isdir(ASSET_SRC):
    sys.exit("缺少 %s，请先运行 logxfer_src/构建日志下载smali.py" % ASSET_SRC)
if os.path.isdir(SMALI_PKG):
    shutil.rmtree(SMALI_PKG)
os.makedirs(SMALI_PKG)
n = 0
for fn in sorted(os.listdir(ASSET_SRC)):
    if fn.endswith(".smali"):
        shutil.copyfile(os.path.join(ASSET_SRC, fn), os.path.join(SMALI_PKG, fn))
        n += 1
        print("  + smali/com/baidu/carlifevehicle/logxfer/" + fn)
assert n >= 3, "smali 文件数不足: %d" % n

# ---------------------------------------------------------------- 2) 新增 assets
if os.path.isdir(ASSET_DST):
    shutil.rmtree(ASSET_DST)
os.makedirs(ASSET_DST)
for fn in ("logxfer.html", "qrcode.js"):
    src = os.path.join(WEB_SRC, fn)
    assert os.path.exists(src), "缺少 " + src
    shutil.copyfile(src, os.path.join(ASSET_DST, fn))
    print("  + assets/logxfer/" + fn)

# ---------------------------------------------------------------- 3) Manifest 注册 Activity
ACT = '''        <activity android:configChanges="keyboard|keyboardHidden|navigation|orientation|uiMode|screenSize|fontScale" android:exported="true" android:label="CarLife\u65e5\u5fd7\u4e0b\u8f7d" android:name="com.baidu.carlifevehicle.logxfer.LogDownloadActivity" android:theme="@android:style/Theme.Black.NoTitleBar">
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
'''
patch("AndroidManifest.xml",
      "    </application>\n</manifest>",
      ACT + "    </application>\n</manifest>",
      "manifest: add LogDownloadActivity")

# ---------------------------------------------------------------- 4) apktool.yml
yml = read(os.path.join(DST, "apktool.yml"))
assert "versionCode: 115" in yml, "apktool.yml versionCode 不是 115"
yml = yml.replace("versionCode: 115", "versionCode: 116")
assert "versionName: mod1.15" in yml, "apktool.yml versionName 不是 mod1.15"
yml = yml.replace("versionName: mod1.15", "versionName: mod1.16")
# 资产不要压缩：老 ROM 的 WebView 读 file:///android_asset 时对压缩条目兼容性差
assert "assets/bdspeech_recognition_start.pcm\n" in yml
yml = yml.replace("assets/bdspeech_recognition_start.pcm\n",
                  "assets/bdspeech_recognition_start.pcm\n- assets/logxfer/logxfer.html\n- assets/logxfer/qrcode.js\n")
write(os.path.join(DST, "apktool.yml"), yml)
print("OK apktool.yml: versionCode=116 versionName=mod1.16 + doNotCompress 追加 logxfer 资产")

# ---------------------------------------------------------------- 5) 自检
chk = read(os.path.join(DST, "AndroidManifest.xml"))
assert "com.baidu.carlifevehicle.logxfer.LogDownloadActivity" in chk
assert "com.baidu.carlifevehicle.CarlifeActivity" in chk, "原 launcher Activity 丢了"
assert os.path.exists(os.path.join(DST, "assets", "logxfer", "qrcode.js"))
assert read(os.path.join(DST, "apktool.yml")).count("versionCode: 116") == 1
print("\n[DONE] _w116 ready (1.16 日志下载)")
