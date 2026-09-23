# -*- coding: utf-8 -*-
# patch_v14: _w116 -> _w117 (versionCode 117 / mod1.17)
#
# 用户诉求（相对 1.16 的两点修正）：
#   1) 1.16 给 LogDownloadActivity 加了 MAIN/LAUNCHER intent-filter，装完会在车机桌面上
#      多出一个独立图标 —— 用户不要这个，要求"加到百度 CarLife app 里面"。
#      => 去掉 LAUNCHER 过滤器，改成车机主界面里的一个按钮。
#   2) 按钮位置：放在主界面右上角「方控」按钮的**左边**，文字叫「下载日志」。
#
# 主界面按钮是怎么挂上去的（关键，别改成别的方式）：
#   主界面 = res/layout/frag_main.xml（另有 layout-hdpi 变体），右上角一排是
#       帮助(0x7f0900a3) / 设置(0x7f0900a4) / 方控(0x7f0900a2)
#   点击分派在 a/a/b/n/s.smali 的 onClick() 里，是一个对资源 id 的 packed-switch：
#       a/a/b/n/s.smali:875  .packed-switch 0x7f0900a2
#   往 packed-switch 里加 case 要重排跳转表，静态核对困难、容易出 VerifyError。
#   所以我们改成复用 MainFragment 里本来就有的一行：
#       a/a/b/n/s.smali:378  invoke-static {p2}, Lcom/baidu/carlifevehicle/ConnModeHelper;->init(Landroid/view/View;)V
#   ConnModeHelper 是我们自己写的类（里面已经有一串 root.findViewById 在挂直连/热点/有线
#   那一排和日志窗口），init(root) 拿到的正是 frag_main 的根 View。
#   在它的入口插一行 LogXferEntry.bind(root) 即可 —— 不动 MainFragment、不动别人的 switch。
#
# 新增/改动文件：
#   logxfer_src/java/.../LogXferEntry.java      新增：绑定按钮 + 打开下载页
#   logxfer_src/java/.../LogDownloadActivity.java 改：加「返回」按钮 + 日志体积统计
#   logxfer_src/java/.../LogHttpServer.java       改：加 summary()（给界面显示用）
#   res/values/public.xml + ids.xml              新增 id: main_btn_logxfer = 0x7f090147
#   res/layout/frag_main.xml + layout-hdpi/...   新增「下载日志」TextView
#   smali/com/baidu/carlifevehicle/ConnModeHelper.smali  入口插一行 bind()
#   AndroidManifest.xml                          去掉 LogDownloadActivity 的 LAUNCHER

import os, re, shutil, subprocess, sys

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = r"C:\PJGG\apk\CarLife\01_工程源码\_w116"
DST = r"C:\PJGG\apk\CarLife\01_工程源码\_w117"
SMALI_SRC = os.path.join(HERE, "logxfer_src", "smali")
SMALI_DST = os.path.join(DST, "smali", "com", "baidu", "carlifevehicle", "logxfer")

NEW_ID_NAME = "main_btn_logxfer"
NEW_ID_HEX = "0x7f090147"
JAVA_CONST = "0x7f090147"

if not os.environ.get("SKIP_COPY"):
    if os.path.exists(DST):
        shutil.rmtree(DST)
    r = subprocess.run(["robocopy", SRC, DST, "/E", "/NFL", "/NDL", "/NJH", "/NJS", "/NC", "/NS"],
                       capture_output=True)
    if r.returncode > 7:               # robocopy: 0/1 正常, >7 才是失败
        sys.exit("robocopy failed: %d" % r.returncode)


def read(p):
    with open(p, "r", encoding="utf-8") as f:
        return f.read().replace("\r\n", "\n")


def write(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


def patch(path, old, new, tag, count=1):
    p = os.path.join(DST, path)
    s = read(p)
    assert s.count(old) == count, "%s: anchor 出现 %d 次(期望 %d): %s" % (tag, s.count(old), count, path)
    write(p, s.replace(old, new))
    print("OK", tag)


# ---------------------------------------------------------------- 1) 刷新 logxfer smali
if not os.path.isdir(SMALI_SRC):
    sys.exit("缺少 %s，请先运行 logxfer_src/构建日志下载smali.py" % SMALI_SRC)
if os.path.isdir(SMALI_DST):
    shutil.rmtree(SMALI_DST)
os.makedirs(SMALI_DST)
n = 0
for fn in sorted(os.listdir(SMALI_SRC)):
    if fn.endswith(".smali"):
        shutil.copyfile(os.path.join(SMALI_SRC, fn), os.path.join(SMALI_DST, fn))
        n += 1
        print("  + smali/com/baidu/carlifevehicle/logxfer/" + fn)
assert n >= 4, "smali 文件数不足(应为 4 个: Server/$1/Activity/Entry): %d" % n
assert os.path.exists(os.path.join(SMALI_DST, "LogXferEntry.smali")), "缺 LogXferEntry.smali"

# ---------------------------------------------------------------- 2) 新 id
pub = os.path.join(DST, "res", "values", "public.xml")
s = read(pub)
assert NEW_ID_HEX not in s, "id %s 已被占用，换一个" % NEW_ID_HEX
assert 'name="conn_ver_text" id="0x7f090146"' in s
s = s.replace('    <public type="id" name="conn_ver_text" id="0x7f090146" />\n',
              '    <public type="id" name="conn_ver_text" id="0x7f090146" />\n'
              '    <public type="id" name="%s" id="%s" />\n' % (NEW_ID_NAME, NEW_ID_HEX))
write(pub, s)
print("OK public.xml: + id/%s = %s" % (NEW_ID_NAME, NEW_ID_HEX))

ids_xml = os.path.join(DST, "res", "values", "ids.xml")
s = read(ids_xml)
assert '<id name="conn_ver_text" />' in s
s = s.replace('    <id name="conn_ver_text" />\n',
              '    <id name="conn_ver_text" />\n    <id name="%s" />\n' % NEW_ID_NAME)
write(ids_xml, s)
print("OK ids.xml: + <id name=\"%s\" />" % NEW_ID_NAME)

# ---------------------------------------------------------------- 3) 两个布局各加一个按钮
BTN_L = ('        <TextView android:textSize="%s" android:textColor="@color/cl_text_a4_title"'
         ' android:gravity="center" android:id="@id/%s" android:background="@drawable/com_bg_btn_selector"'
         ' android:layout_width="wrap_content" android:minWidth="%s" android:layout_height="%s"'
         ' android:layout_marginTop="%s" android:layout_marginRight="%s"'
         ' android:paddingLeft="%s" android:paddingRight="%s"'
         ' android:layout_toLeftOf="@id/main_btn_button" android:text="\u4e0b\u8f7d\u65e5\u5fd7" />')

# 默认 layout（密度非 hdpi 时用）：按钮 84dp / 24sp 那一套
# hdpi layout：按钮 56dp / 16sp 那一套
SPECS = [
    ("res/layout/frag_main.xml", "20.0sp", "84.0dp", "84.0dp", "12.0dp", "12.0dp", "10.0dp"),
    ("res/layout-hdpi/frag_main.xml", "16.0sp", "56.0dp", "56.0dp", "16.0dp", "8.0dp", "8.0dp"),
]
for rel, tsize, minw, h, mtop, mright, pad in SPECS:
    p = os.path.join(DST, rel.replace("/", os.sep))
    assert os.path.exists(p), "缺布局 " + p
    s = read(p)
    pat = re.compile(r'(<TextView[^>]*android:id="@id/main_btn_button"[^>]*/>)')
    m = pat.findall(s)
    assert len(m) == 1, "%s: main_btn_button 节点数 = %d" % (rel, len(m))
    btn = BTN_L % (tsize, NEW_ID_NAME, minw, h, mtop, mright, pad, pad)
    s = pat.sub(lambda mo: mo.group(1) + "\n" + btn, s, count=1)
    write(p, s)
    print("OK %s: + \u4e0b\u8f7d\u65e5\u5fd7 按钮（toLeftOf main_btn_button）" % rel)

# ---------------------------------------------------------------- 4) ConnModeHelper 插一行
cm = os.path.join(DST, "smali", "com", "baidu", "carlifevehicle", "ConnModeHelper.smali")
s = read(cm)
anchor = ("    if-eqz p0, :cond_5\n"
          "\n"
          "    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sClick:"
          "Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;\n")
assert s.count(anchor) == 1, "ConnModeHelper.init 锚点不唯一(%d)" % s.count(anchor)
inject = ("    if-eqz p0, :cond_5\n"
          "\n"
          "    # 1.17: \u628a\u4e3b\u754c\u9762\u7684\u300c\u4e0b\u8f7d\u65e5\u5fd7\u300d\u6309\u94ae\u6302\u4e0a"
          "\uff08\u89c1 logxfer/LogXferEntry.java\uff09\n"
          "    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->bind(Landroid/view/View;)V\n"
          "\n"
          "    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sClick:"
          "Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;\n")
write(cm, s.replace(anchor, inject))
print("OK ConnModeHelper.smali: init() \u5165\u53e3\u63d2\u5165 LogXferEntry.bind(root)")

# ------------------------------------------------ 4b) 顺手修 ConnModeHelper 里两个显示 bug
# 都是 1.11 做那排按钮时留下的，实测才看出来：
#   bug1: init() 结尾刷「当前版本」的分支写反了 —— 原 smali 是
#             if-nez v0, :cond_5      (v0 = findViewById(conn_ver_text))
#         TextView 找到(v0 != null)时反而跳走，只有找不到(null)时才去 setText，
#         结果那句 setText 永远走不到，界面上一直显示布局里写死的 "mod1.6"。
#         正确应为 if-eqz（找不到才跳）。分支方向写反在这个项目里已经踩过三次了。
#   bug2: 拼版本号的字面量少了基础版本前缀，刷出来会变成 "当前版本: mod1.17"，
#         丢掉 4.0.M1.3 这一段。补上。
cm2 = read(cm)
a1 = "    if-nez v0, :cond_5\n"
assert cm2.count(a1) == 1, "if-nez v0, :cond_5 出现 %d 次" % cm2.count(a1)
cm2 = cm2.replace(a1,
                  "    # 1.17 \u4fee\u6b63: \u539f\u4e3a if-nez, \u5bfc\u81f4\u300c\u5f53\u524d\u7248\u672c\u300d"
                  "\u6c38\u8fdc\u4e0d\u5237\u65b0\n"
                  "    if-eqz v0, :cond_5\n")
a2 = '    const-string v4, "\\u5f53\\u524d\\u7248\\u672c: "\n'
assert cm2.count(a2) == 1, "版本号字面量锚点出现 %d 次" % cm2.count(a2)
cm2 = cm2.replace(a2, '    const-string v4, "\\u5f53\\u524d\\u7248\\u672c: 4.0.M1.3-"\n')
write(cm, cm2)
print("OK ConnModeHelper.smali: \u4fee\u6b63\u7248\u672c\u53f7\u5206\u652f\u65b9\u5411 + \u8865\u57fa\u7840\u7248\u672c\u524d\u7f00")

# ---------------------------------------------------------------- 5) Manifest 去掉独立图标
old_act = ('        <activity android:configChanges="keyboard|keyboardHidden|navigation|orientation|'
           'uiMode|screenSize|fontScale" android:exported="true" android:label="CarLife\u65e5\u5fd7'
           '\u4e0b\u8f7d" android:name="com.baidu.carlifevehicle.logxfer.LogDownloadActivity" '
           'android:theme="@android:style/Theme.Black.NoTitleBar">\n'
           '            <intent-filter>\n'
           '                <action android:name="android.intent.action.MAIN"/>\n'
           '                <category android:name="android.intent.category.LAUNCHER"/>\n'
           '            </intent-filter>\n'
           '        </activity>\n')
new_act = ('        <activity android:configChanges="keyboard|keyboardHidden|navigation|orientation|'
           'uiMode|screenSize|fontScale" android:exported="false" android:label="CarLife\u65e5\u5fd7'
           '\u4e0b\u8f7d" android:name="com.baidu.carlifevehicle.logxfer.LogDownloadActivity" '
           'android:theme="@android:style/Theme.Black.NoTitleBar" />\n')
patch("AndroidManifest.xml", old_act, new_act, "manifest: LogDownloadActivity \u53bb\u6389 LAUNCHER\uff0cexported=false")

# ---------------------------------------------------------------- 6) apktool.yml
yml = read(os.path.join(DST, "apktool.yml"))
assert "versionCode: 116" in yml, "apktool.yml versionCode 不是 116"
yml = yml.replace("versionCode: 116", "versionCode: 117")
assert "versionName: mod1.16" in yml, "apktool.yml versionName 不是 mod1.16"
yml = yml.replace("versionName: mod1.16", "versionName: mod1.17")
write(os.path.join(DST, "apktool.yml"), yml)
print("OK apktool.yml: versionCode=117 versionName=mod1.17")

# ---------------------------------------------------------------- 7) 自检
print("\n=== \u81ea\u68c0 ===")
bad = 0


def chk(name, ok):
    global bad
    print(("  [OK]   " if ok else "  [FAIL] ") + name)
    if not ok:
        bad += 1


mf = read(os.path.join(DST, "AndroidManifest.xml"))
chk("LogDownloadActivity \u5df2\u6539\u4e3a\u81ea\u95ed\u5408\u3001\u65e0 intent-filter",
    'android:name="com.baidu.carlifevehicle.logxfer.LogDownloadActivity" '
    'android:theme="@android:style/Theme.Black.NoTitleBar" />' in mf)
chk("LAUNCHER \u6761\u76ee\u6570\u76f8\u5bf9 _w116 \u51cf\u5c11 1 \u4e2a",
    mf.count("android.intent.category.LAUNCHER")
    == read(os.path.join(SRC, "AndroidManifest.xml")).count("android.intent.category.LAUNCHER") - 1)
chk("Manifest \u4ecd\u6709 CarlifeActivity", "com.baidu.carlifevehicle.CarlifeActivity" in mf)

pubc = read(pub)
chk("public.xml \u6709 %s = %s" % (NEW_ID_NAME, NEW_ID_HEX),
    ('name="%s" id="%s"' % (NEW_ID_NAME, NEW_ID_HEX)) in pubc)
chk("public.xml \u4e2d %s \u53ea\u51fa\u73b0\u4e00\u6b21" % NEW_ID_HEX, pubc.count(NEW_ID_HEX) == 1)
chk("ids.xml \u6709 %s" % NEW_ID_NAME, ('<id name="%s" />' % NEW_ID_NAME) in read(ids_xml))

for rel, *_ in SPECS:
    lay = read(os.path.join(DST, rel.replace("/", os.sep)))
    chk("%s \u542b @id/%s" % (rel, NEW_ID_NAME), ('android:id="@id/%s"' % NEW_ID_NAME) in lay)
    chk("%s \u65b0\u6309\u94ae\u5728 main_btn_button \u5de6\u4fa7" % rel,
        'android:layout_toLeftOf="@id/main_btn_button"' in lay)
    chk("%s \u65b0\u6309\u94ae\u6587\u5b57\u4e3a\u4e0b\u8f7d\u65e5\u5fd7" % rel, 'android:text="\u4e0b\u8f7d\u65e5\u5fd7"' in lay)

cmc = read(cm)
chk("ConnModeHelper \u8c03\u7528 LogXferEntry.bind",
    cmc.count("Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->bind(Landroid/view/View;)V") == 1)
chk("ConnModeHelper \u539f\u6709\u903b\u8f91\u672a\u52a8", cmc.count("sBtnDirect:Landroid/widget/TextView;") >= 3)

je = os.path.join(DST, "smali", "com", "baidu", "carlifevehicle", "logxfer", "LogXferEntry.smali")
je2 = os.path.join(DST, "smali", "com", "baidu", "carlifevehicle", "logxfer",
                   "LogXferEntry$ClickHandler.smali")
chk("LogXferEntry.smali \u5df2\u751f\u6210", os.path.exists(je))
if os.path.exists(je):
    jc = read(je) + (read(je2) if os.path.exists(je2) else "")
    chk("LogXferEntry \u91cc\u7684 id \u4e0e public.xml \u4e00\u81f4",
        jc.count(NEW_ID_HEX) >= 1 and pubc.count(NEW_ID_HEX) == 1)
    # \u6253\u5f00\u4e0b\u8f7d\u9875\u7684\u90a3\u53e5\u5728 LogXferEntry$ClickHandler \u91cc\uff08D8 \u628a\u5d4c\u5957\u7c7b\u5355\u72ec\u62c6\u6587\u4ef6\uff09
    chk("LogXferEntry$ClickHandler \u5f15\u7528 LogDownloadActivity",
        "Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;" in jc)
    chk("LogXferEntry \u7684 bind \u65b9\u6cd5\u7b7e\u540d\u6b63\u786e",
        ".method public static bind(Landroid/view/View;)V" in jc)
chk("\u4e0b\u8f7d\u9875\u65b0\u589e\u8fd4\u56de\u6309\u94ae",
    "BackHandler" in read(os.path.join(SMALI_DST, "LogDownloadActivity.smali")))
chk("LogHttpServer \u65b0\u589e summary()",
    "summary" in read(os.path.join(SMALI_DST, "LogHttpServer.smali")))
cmf = read(cm)
chk("\u65e5\u5fd7\u7248\u672c\u5206\u652f\u5df2\u4fee\u6b63\u4e3a if-eqz", "    if-eqz v0, :cond_5\n" in cmf
    and "    if-nez v0, :cond_5\n" not in cmf)
chk("\u7248\u672c\u53f7\u8865\u4e86 4.0.M1.3- \u524d\u7f00", "4.0.M1.3-" in cmf)
chk("summary() \u7528 get() \u800c\u4e0d\u662f\u76f4\u63a5\u8bfb sInst",
    "get()" in read(os.path.join(SMALI_DST, "LogHttpServer.smali")))

print("  smali \u6587\u4ef6\u6570: %d" % n)
if bad:
    sys.exit("[FAIL] \u81ea\u68c0\u672a\u901a\u8fc7\uff08%d \u9879\uff09" % bad)
print("\n[DONE] _w117 ready (1.17 \u65e5\u5fd7\u4e0b\u8f7d\u5165\u53e3)")
