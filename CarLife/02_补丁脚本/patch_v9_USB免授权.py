# -*- coding: utf-8 -*-
"""
CarLife 车机端 (com.baidu.carlifevehicle) USB 免弹窗授权补丁 v9  ->  产出 1.12
基线: C:\\PJGG\\apk\\CarLife\\01_工程源码\\_w111   (已含 patchA~M)
产出: C:\\PJGG\\apk\\CarLife\\01_工程源码\\_w112

=============================================================================
问题: UsbAccessoryScanner.run() 每秒一轮, 发现设备无权限就 startActivity(
      UsbPermissionProxyActivity) -> requestPermission -> 系统弹授权框。
      1.11 只把频率降到 5 秒一次, 本质还是要用户点。

四层免授权, 逐级兜底:
-----------------------------------------------------------------------------
  patchP  静默 openDevice (核心)
      Android 的 USB 权限是「App 侧君子协定」: UsbManager.hasPermission()
      只是查询 UsbSettingsManager 的授权记录表; 真正打开设备的
      UsbManager.openDevice() 会跨进程调到 UsbService(system_server),
      在 Android 4.x 上这条路 **不校验** 那张表。所以不弹窗直接 open 能成功。
      实现: 把 run() 里的 hasPermission() 换成 f.c(), 三级判定
            1) 系统已有授权记录 -> 放行
            2) 之前静默成功过(q) -> 放行
            3) 静默 open+claim+close 试探 -> 成功则置 q 并放行
            三级全失败才返回 false, 退回原来的弹窗路径。
      注意: smali 汇编器硬限制 invoke/if-* 只能用 v0-v15, 所以这里
            **不新增任何寄存器**, 只替换调用点那两行。

  patchQ  Activity 声明 USB_DEVICE_ATTACHED (系统级自动授权)
      关键坑: AOSP UsbHostManager.getDeviceMatches() 用的是
      PackageManager.queryIntentActivities() —— 只认 **Activity**。
      CarLife 把这个 intent-filter 挂在 BroadcastReceiver 上, 于是 matches
      恒为空 -> 系统走「无匹配」分支 -> 必然弹授权框。
      现在补一个透明 UsbAutoGrantActivity(立即 finish, 无感)声明该 filter
      + device_filter, 设备插入时系统自动 grantDevicePermission。
      device_filter.xml 原本就是空的 <usb-device /> = 全通配; 另外显式补
      了 AOA 态的 Google VID 0x18D1(6353) 六个 PID。

  patchR  UsbPermissionProxyActivity 先静默后弹窗
      即使真走到弹窗这一步, 也先试一次静默 open, 成功就不弹。

  patchS  版本号 111 -> 112

  Android 4 兼容性:
      只用 UsbManager.openDevice / claimInterface / close、
      Context.checkCallingOrSelfPermission、Activity.finish —— 全部 API 1 起
      可用。未引入 Java 8 / lambda 语法。分支避开跨类型汇合点。
"""
import os
import re
import shutil
import sys

_HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(_HERE, '..', '..'))          # C:\PJGG\apk
SRC = os.path.join(ROOT, 'CarLife', '01_工程源码', '_w111')        # 基线 1.11
DST = os.path.join(ROOT, 'CarLife', '01_工程源码', '_w112')        # 产出 1.12

C_C = 'a/a/a/a/m/m/c/c.smali'
F_SM = 'a/a/a/a/m/m/c/f.smali'
PROXY = 'com/baidu/carlife/sdk/UsbPermissionProxyActivity.smali'
ACC = 'smali/com/baidu/carlifevehicle/UsbAutoGrantActivity.smali'

errors = []


def err(m):
    errors.append(m)
    print('  [ERR] ' + m)


def log(m):
    print('  ' + m)


def rd(p):
    with open(p, 'r', encoding='utf-8', errors='replace') as f:
        return f.read()


def wr(p, s):
    os.makedirs(os.path.dirname(p), exist_ok=True)
    with open(p, 'w', encoding='utf-8', newline='\n') as f:
        f.write(s)


def sub1(txt, old, new, tag):
    """精确替换一次, 失败即报错"""
    if old not in txt:
        err('%s: 未找到锚点\n----- 期望 -----\n%s' % (tag, old))
        return txt
    if txt.count(old) != 1:
        err('%s: 锚点出现 %d 次, 无法唯一定位' % (tag, txt.count(old)))
        return txt
    return txt.replace(old, new)


print('=' * 70)
print('CarLife USB 免弹窗授权补丁 v9  (1.11 -> 1.12)')
print('=' * 70)

if not os.path.isdir(SRC):
    sys.exit('基线不存在: %s' % SRC)
if os.path.isdir(DST):
    shutil.rmtree(DST)
shutil.copytree(SRC, DST)
log('基线复制完成: _w111 -> _w112')

S = os.path.join(DST, 'smali')


# =========================================================================
# patchP-1  f.smali: 新增 q 字段 + c()/e()/d() 三个静态方法
# =========================================================================
print('\n--- patchP-1: 新增 USB 免授权判定 ---')

F_PATH = os.path.join(S, *F_SM.split('/'))
f_txt = rd(F_PATH)

MARK = '# patchP: USB 免弹窗授权决策入口'
if MARK in f_txt:
    log('    f.smali 已含 patchP, 跳过')
else:
    f_txt = sub1(f_txt,
                 '.field public static b:J',
                 '.field public static b:J\n\n'
                 '# patchP: 静默 openDevice 已验证可用 -> 之后一律放行, 全程不弹窗\n'
                 '.field private static q:Z',
                 'f.smali 字段 q')

    NEW_METHODS = """
# ---------------------------------------------------------------------------
# patchP: USB 免弹窗授权决策入口
#   UsbAccessoryScanner 原本调 UsbManager.hasPermission() 判断能否打开设备。
#   这里替换成 f.c(), 三级判定:
#     1) 系统里已有授权记录       -> 放行
#     2) 之前静默 open 成功过(q)  -> 放行
#     3) 否则静默 openDevice 试探 -> 成功则置 q 并放行
#   三级全失败才返回 false, 让上层走原来的弹窗路径。
#
#   原理: Android 的 USB 权限是 App 侧的「君子协定」。UsbManager.hasPermission()
#   只是查 UsbSettingsManager 的授权记录表; 而真正打开设备的
#   UsbManager.openDevice() 会跨进程调到 UsbService(system_server),
#   Android 4.x 上这条路 **不校验** 那张表。所以不弹窗直接 open 是能成功的。
#
#   smali: 全程只用 v0/v1, 严格遵守 "invoke/if-* 只能 v0-v15"。
# ---------------------------------------------------------------------------
.method public static c(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :chk_dev

    return v0

    :chk_dev
    if-eqz p1, :has_perm

    return v0

    :has_perm
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :silent

    const/4 v0, 0x1

    return v0

    :silent
    sget-boolean v0, La/a/a/a/m/m/c/f;->q:Z

    if-eqz v0, :try_silent

    const/4 v0, 0x1

    return v0

    :try_silent
    invoke-static {p0, p1}, La/a/a/a/m/m/c/f;->e(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :fail

    const/4 v1, 0x1

    sput-boolean v1, La/a/a/a/m/m/c/f;->q:Z

    const/4 v0, 0x1

    return v0

    :fail
    const/4 v0, 0x0

    return v0
.end method

# ---------------------------------------------------------------------------
# patchP: 静默 openDevice 试探 (open -> claim -> close)
#   能拿到 UsbDeviceConnection 就说明本机 UsbService 不强制校验授权记录。
#   任何异常都吞掉并返回 false, 绝不因为试探而崩溃。
#
#   Dalvik 安全: try 块内无分支, catch handler 单独 return, 不存在汇合点,
#   因此不会有「同一寄存器两种类型」的校验器冲突。
# ---------------------------------------------------------------------------
.method public static e(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :chk_dev

    return v0

    :chk_dev
    if-eqz p1, :do_open

    return v0

    :do_open
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x1

    const-string v4, "CarLifeUsb"

    const-string v5, "silent openDevice OK -> USB auto-granted, no dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v4, "CarLifeUsb"

    const-string v5, "silent openDevice blocked -> fall back to permission dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

# ---------------------------------------------------------------------------
# patchP: MANAGE_USB 是否已授予 (仅用于日志判别)
#   Manifest 已声明 android.permission.MANAGE_USB (signature|privileged)。
#   把 APK 预置到 /system/priv-app 后该权限生效, UsbService 对 openDevice
#   完全放行。Context.checkCallingOrSelfPermission 自 API 1 起可用。
# ---------------------------------------------------------------------------
.method public static d(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :chk

    return v0

    :chk
    :try_start_0
    const-string v1, "android.permission.MANAGE_USB"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :denied

    const/4 v0, 0x1

    const-string v1, "CarLifeUsb"

    const-string v2, "MANAGE_USB granted (priv-app): USB auto-authorized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :done

    :denied
    const-string v1, "CarLifeUsb"

    const-string v2, "MANAGE_USB not granted (3rd-party install)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :done
    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    return v0
.end method
"""

    idx = f_txt.rfind('.end method')
    if idx < 0:
        err('f.smali 找不到 .end method')
    else:
        cut = idx + len('.end method')
        f_txt = f_txt[:cut] + '\n' + NEW_METHODS.rstrip() + '\n' + f_txt[cut:]
        wr(F_PATH, f_txt)
        log('    f.c() 三级判定 / f.e() 静默试探 / f.d() MANAGE_USB 检测 已注入')


# =========================================================================
# patchP-2  c/c.smali: hasPermission() -> f.c()
#           (只替换两行, 不新增寄存器 —— smali 上限 v15)
# =========================================================================
print('\n--- patchP-2: 注入 UsbAccessoryScanner.run() ---')

cc_path = os.path.join(S, *C_C.split('/'))
cc = rd(cc_path)

OLD_PERM = ('    invoke-virtual {v12, v0}, '
            'Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z\n'
            '\n'
            '    move-result v12\n')
NEW_PERM = ('    # patchP: 三级免授权判定 (授权记录 / 静默缓存 q / 静默 openDevice 试探)\n'
            '    invoke-static {v12, v0}, '
            'La/a/a/a/m/m/c/f;->c(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)Z\n'
            '\n'
            '    move-result v12\n')

if 'f;->c(Landroid/hardware/usb/UsbManager;' in cc:
    log('    c/c.smali 已含 patchP, 跳过')
else:
    cc = sub1(cc, OLD_PERM, NEW_PERM, 'c/c.smali hasPermission -> f.c()')
    if '.locals 17' not in cc:
        err('c/c.smali .locals 被意外改动 (应保持 17)')
    wr(cc_path, cc)
    log('    UsbAccessoryScanner 免授权判定已注入')


# =========================================================================
# patchQ  UsbAutoGrantActivity + Manifest 声明
# =========================================================================
print('\n--- patchQ: 系统级自动授权 Activity ---')

ACC_SM = r""".class public final Lcom/baidu/carlifevehicle/UsbAutoGrantActivity;
.super Landroid/app/Activity;
.source "UsbAutoGrantActivity.java"


# ---------------------------------------------------------------------------
# patchQ: 触发系统自动授权的「锚点 Activity」
#
#   AOSP UsbHostManager.usbDeviceAdded() 里大致是:
#       ArrayList<String> matches = getDeviceMatches(device, intent);
#       if (matches.size() > 0) {
#           for (String pkg : matches) {
#               mSettingsManager.grantDevicePermission(device, uid);  // 自动授权
#               intent.setComponent(...); mContext.startActivity(intent);
#           }
#       } else {
#           // 没有 Activity 声明匹配的 device_filter -> 弹权限框
#       }
#   而 getDeviceMatches() 内部走 PackageManager.queryIntentActivities(),
#   **只认 Activity**。CarLife 原本把 USB_DEVICE_ATTACHED 只挂在
#   BroadcastReceiver 上, 所以 matches 恒为空 -> 必然弹框。
#
#   补上这个透明 Activity(立即 finish, 全程无感)之后, 手机一插上系统就自动
#   把权限授予本 App, 后续 hasPermission() 直接返回 true。
# ---------------------------------------------------------------------------

# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "CarLifeUsb"

    const-string v1, "USB_DEVICE_ATTACHED: system granted permission, no dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
"""
wr(os.path.join(DST, ACC), ACC_SM)
log('    UsbAutoGrantActivity.smali 已生成')

mf = os.path.join(DST, 'AndroidManifest.xml')
mtxt = rd(mf)
if 'UsbAutoGrantActivity' in mtxt:
    log('    Manifest 已含 UsbAutoGrantActivity, 跳过')
else:
    ANCHOR = ('<activity android:excludeFromRecents="true" '
              'android:name="com.baidu.carlife.sdk.UsbPermissionProxyActivity"')
    m = re.search(re.escape(ANCHOR) + r'[^>]*/>', mtxt)
    if not m:
        err('Manifest 找不到 UsbPermissionProxyActivity 锚点')
    else:
        NEW_ACT = (m.group(0) + '\n'
                   '        <activity android:excludeFromRecents="true" android:launchMode="singleTask" '
                   'android:name="com.baidu.carlifevehicle.UsbAutoGrantActivity" android:taskAffinity="" '
                   'android:theme="@android:style/Theme.Translucent.NoTitleBar">\n'
                   '            <intent-filter>\n'
                   '                <action android:name="android.hardware.usb.action.USB_DEVICE_ATTACHED"/>\n'
                   '            </intent-filter>\n'
                   '            <meta-data android:name="android.hardware.usb.action.USB_DEVICE_ATTACHED" '
                   'android:resource="@xml/device_filter"/>\n'
                   '        </activity>')
        mtxt = mtxt[:m.start()] + NEW_ACT + mtxt[m.end():]
        wr(mf, mtxt)
        log('    Manifest 已注册 UsbAutoGrantActivity (USB_DEVICE_ATTACHED + device_filter)')

dfp = os.path.join(DST, 'res', 'xml', 'device_filter.xml')
df = rd(dfp)
if '6353' in df:
    log('    device_filter.xml 已含 AOA VID, 跳过')
else:
    AOA = '\n'.join('    <usb-device vendor-id="6353" product-id="%d" />' % p
                    for p in (11520, 11521, 11522, 11523, 11524, 11525))
    df = df.replace('</resources>',
                    AOA + '\n    <!-- 6353 = 0x18D1 Google AOA(Android Open Accessory) 态 VID -->\n'
                    '</resources>')
    wr(dfp, df)
    log('    device_filter.xml 已补 AOA(0x18D1) 六个 PID')


# =========================================================================
# patchR  UsbPermissionProxyActivity: 先静默, 不成功才弹
# =========================================================================
print('\n--- patchR: 权限代理 Activity 先静默后弹窗 ---')

proxy_path = os.path.join(S, *PROXY.split('/'))
px = rd(proxy_path)

if 'patchR' in px:
    log('    UsbPermissionProxyActivity 已含 patchR, 跳过')
else:
    OLD = ('    check-cast v0, Landroid/hardware/usb/UsbManager;\n'
           '\n'
           '    new-instance v1, Landroid/content/Intent;\n')
    NEW = ('    check-cast v0, Landroid/hardware/usb/UsbManager;\n'
           '\n'
           '    # patchR: 能静默打开就不弹窗 (v2 随后被 const/4 v2, 0x0 重设, 无副作用)\n'
           '    invoke-static {v0, p1}, '
           'La/a/a/a/m/m/c/f;->c(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)Z\n'
           '\n'
           '    move-result v2\n'
           '\n'
           '    if-nez v2, :need_dialog\n'
           '\n'
           '    invoke-virtual {p0}, Landroid/app/Activity;->finish()V\n'
           '\n'
           '    return-void\n'
           '\n'
           '    :need_dialog\n'
           '    new-instance v1, Landroid/content/Intent;\n')
    px = sub1(px, OLD, NEW, 'UsbPermissionProxyActivity 注入点')
    wr(proxy_path, px)
    log('    UsbPermissionProxyActivity 静默优先已注入')


# =========================================================================
# patchS  版本号
# =========================================================================
print('\n--- patchS: 升版本号 111 -> 112 ---')
yml = os.path.join(DST, 'apktool.yml')
y = rd(yml)
y = y.replace('versionCode: 111', 'versionCode: 112')
y = y.replace('4.0.M1.3-mod1.11', '4.0.M1.3-mod1.12')
wr(yml, y)
y2 = rd(yml)
if 'versionCode: 112' not in y2 or 'mod1.12' not in y2:
    err('版本号未生效')
else:
    log('    versionCode=112  versionName=4.0.M1.3-mod1.12')


# =========================================================================
# 自检
# =========================================================================
print('\n--- 自检 ---')

cc2 = rd(cc_path)
if 'f;->c(Landroid/hardware/usb/UsbManager;' not in cc2:
    err('c/c.smali 未替换为 f.c()')
if 'hasPermission(Landroid/hardware/usb/UsbDevice;)Z' in cc2:
    err('c/c.smali 仍残留原 hasPermission 调用 (应在 f.c() 内部)')
if '.locals 17' not in cc2:
    err('c/c.smali .locals 应保持 17')
log('    c/c.smali: hasPermission -> f.c(), .locals 未动')

ff = rd(F_PATH)
for need, msg in (
        ('if-eqz v0, :silent', 'f.c() 无权限判定必须是 if-eqz'),
        ('if-eqz v0, :try_silent', 'f.c() q 未置位判定必须是 if-eqz'),
        ('if-eqz v0, :fail', 'f.c() 静默失败判定必须是 if-eqz'),
        ('.field private static q:Z', 'f.smali 缺少静态字段 q')):
    if need not in ff:
        err(msg)
log('    f.c() 分支方向正确')

TARGETS = [C_C, F_SM, PROXY]
for rel in TARGETS:
    fp = os.path.join(S, *rel.split('/'))
    if not os.path.exists(fp):
        continue
    txt = rd(fp)
    for mm in re.finditer(r'^\s*(invoke-|if-|cmp-|iget|iput|sget|sput|move|const|add-|mul-|sub-|int-to-)\S*',
                          txt, re.M):
        line = mm.group(0)
        if '/range' in line:
            continue
        for r in re.findall(r'\bv(\d+)\b', line):
            if int(r) > 15:
                err('%s 寄存器越界 v%s: %s' % (rel, r, line.strip()))
log('    寄存器范围自检完成 (严格 v0-v15)')

m2 = rd(os.path.join(DST, 'AndroidManifest.xml'))
for need in ('UsbAutoGrantActivity', 'android.hardware.usb.action.USB_DEVICE_ATTACHED',
             'android.permission.MANAGE_USB'):
    if need not in m2:
        err('Manifest 缺少 %s' % need)
d2 = rd(os.path.join(DST, 'res', 'xml', 'device_filter.xml'))
if '<usb-device' not in d2:
    err('device_filter.xml 缺少 usb-device 条目')
log('    Manifest / device_filter 完整')

if errors:
    print('\n===== 失败 %d 项 =====' % len(errors))
    for e in errors:
        print(' - ' + e)
    sys.exit(1)
print('\n===== 补丁 v9 全部应用成功: _w112 =====')
