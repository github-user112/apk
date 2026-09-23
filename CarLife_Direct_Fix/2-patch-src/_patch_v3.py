# -*- coding: utf-8 -*-
"""
CarLife 车机端 (com.baidu.carlifevehicle, 4.0.M1.3-mod1.6) 直连修复补丁 v3
基线: C:\\PJGG\\apk\\_sm16  (apktool 全量反编译的原始 1.6 包)
产出: C:\\PJGG\\apk\\_w19

对 v2 的唯一改动:
  patchC 增加系统版本保护 —— 实测在 Android 12 (API 31) 真机上,
  WifiP2pManager.setDeviceName() 被 WifiP2pService 拒绝并打印
  "Permission violation - none of NETWORK_SETTING, NETWORK_STACK, or
   OVERRIDE_WIFI_CONFIG permission", 属系统级隐藏 API 权限收紧。
  改为只在 API < 29 时调用: 车机 (4.4.2 / API 19) 照常生效,
  Android 10+ 自动跳过, 不再干扰 P2P 流程。

patchA  配置   : assets/bdcf  补 CONFIG_WIFI_DIRECT_NAME, 频率改 2.4G
patchB  蓝牙   : a/a/a/a/m/m/d/a.smali  run()
                 蓝牙未开 -> 主动 enable() 且置等待标志 h=true,
                 使系统 "蓝牙已开启" 广播能真正触发 1 秒后重试
patchC  P2P名  : a/a/a/a/m/m/d/i.smali  <init>  (locals=3, 只能 v0..v2)
                 构造 WifiDirectManager 时把系统 P2P 设备名同步成配置值
"""
import os
import re
import shutil
import sys

ROOT = r'C:\PJGG\apk'
SRC = os.path.join(ROOT, '_sm16')
DST = os.path.join(ROOT, '_w19')

report = []


def log(msg):
    report.append(msg)
    print(msg)


# ---------------------------------------------------------------- 0. 复制基线
if os.path.exists(DST):
    shutil.rmtree(DST)
shutil.copytree(SRC, DST)
log('[0] 基线复制 %s -> %s' % (SRC, DST))


def read_text(path):
    with open(path, 'r', encoding='utf-8', errors='replace') as f:
        return f.read().replace('\r\n', '\n')


def write_text(path, text):
    with open(path, 'w', encoding='utf-8', newline='\n') as f:
        f.write(text)


# ---------------------------------------------------------------- patch A
p = os.path.join(DST, 'assets', 'bdcf')
s = read_text(p)
assert 'CONFIG_WIRLESS_FREQUENCY = 1' in s, 'patchA: 找不到频率项'
s = s.replace('CONFIG_WIRLESS_FREQUENCY = 1', 'CONFIG_WIRLESS_FREQUENCY = 0')
if 'CONFIG_WIFI_DIRECT_NAME' not in s:
    s = s.rstrip('\n') + (
        '\n\n# 车机端 WiFi 直连名称(P2P 设备名, 手机端据此寻找车机)\n'
        'CONFIG_WIFI_DIRECT_NAME = CarLife-HU\n'
    )
write_text(p, s)
log('[A] assets/bdcf -> 频率 5G=>2.4G, 新增 CONFIG_WIFI_DIRECT_NAME = CarLife-HU')


# ---------------------------------------------------------------- patch B
p = os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'd', 'a.smali')
s = read_text(p)
assert 'bt_auto_enable' not in s, 'patchB: 已经打过补丁'
anchor = '    :goto_1\n    const-string v5, "args"'
assert s.count(anchor) == 1, 'patchB: 锚点不唯一 (%d)' % s.count(anchor)

inject_b = (
    '    :goto_1\n'
    '\n'
    '    # --- patchB: 蓝牙未开启则主动请求开启, 并置等待标志 h=true,\n'
    '    # ---          使系统"蓝牙已开启"广播(STATE_ON)能真正触发 1s 后重试\n'
    '    invoke-virtual {v2}, La/a/a/a/m/m/d/d;->b()Landroid/bluetooth/BluetoothAdapter;\n'
    '\n'
    '    move-result-object v5\n'
    '\n'
    '    if-eqz v5, :bt_auto_enable\n'
    '\n'
    '    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z\n'
    '\n'
    '    move-result v6\n'
    '\n'
    '    if-nez v6, :bt_auto_enable\n'
    '\n'
    '    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->enable()Z\n'
    '\n'
    '    const/4 v6, 0x1\n'
    '\n'
    '    iput-boolean v6, v2, La/a/a/a/m/m/d/d;->h:Z\n'
    '\n'
    '    :bt_auto_enable\n'
    '\n'
    '    const-string v5, "args"'
)
s = s.replace(anchor, inject_b, 1)
write_text(p, s)
log('[B] a.smali run() -> enable() + iput-boolean h=true (等待蓝牙广播重试)')


# ---------------------------------------------------------------- patch C
p = os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'd', 'i.smali')
s = read_text(p)
assert 'p2p_name_set' not in s, 'patchC: 已经打过补丁'
mloc = re.search(r'\.method public constructor <init>.*?\n(.*?)\.locals (\d+)', s, re.S)
assert mloc, 'patchC: 找不到构造函数'
locals_n = int(mloc.group(2))
assert locals_n >= 3, 'patchC: locals 太少 (%d)' % locals_n
log('[C] i.smali <init> .locals = %d' % locals_n)

anchor_c = (
    '    iput-object v1, p0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;\n'
    '\n'
    '    new-instance v0, Landroid/content/IntentFilter;'
)
assert s.count(anchor_c) == 1, 'patchC: 锚点不唯一 (%d)' % s.count(anchor_c)

inject_c = (
    '    iput-object v1, p0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;\n'
    '\n'
    '    # --- patchC(v3): 把系统 P2P 设备名同步为配置的直连名称, 手机端才能按名字找到车机 ---\n'
    '    # ---  Android 10+ (API >= 29) 起 setDeviceName 属系统级隐藏 API, 第三方应用调用会被 ---\n'
    '    # ---  WifiP2pService 拒绝(Permission violation - NETWORK_SETTING/NETWORK_STACK/     ---\n'
    '    # ---  OVERRIDE_WIFI_CONFIG) 并干扰 P2P 流程, 故仅在低版本(含车机 4.4.2)调用        ---\n'
    '    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I\n'
    '\n'
    '    const/16 v1, 0x1d\n'
    '\n'
    '    if-lt v2, v1, :p2p_name_done\n'
    '\n'
    '    iget-object v0, p0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;\n'
    '\n'
    '    const-string v2, "CONFIG_WIFI_DIRECT_NAME"\n'
    '\n'
    '    invoke-interface {p1, v2}, La/a/a/a/c;->I0(Ljava/lang/String;)Ljava/lang/Object;\n'
    '\n'
    '    move-result-object v1\n'
    '\n'
    '    check-cast v1, Ljava/lang/String;\n'
    '\n'
    '    if-nez v1, :p2p_name_len\n'
    '\n'
    '    const-string v1, "CarLife-HU"\n'
    '\n'
    '    goto :p2p_name_set\n'
    '\n'
    '    :p2p_name_len\n'
    '\n'
    '    invoke-virtual {v1}, Ljava/lang/String;->length()I\n'
    '\n'
    '    move-result v2\n'
    '\n'
    '    if-nez v2, :p2p_name_set\n'
    '\n'
    '    const-string v1, "CarLife-HU"\n'
    '\n'
    '    :p2p_name_set\n'
    '\n'
    '    iget-object v2, p0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;\n'
    '\n'
    '    invoke-virtual {p2, v2, v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName('
    'Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;'
    'Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V\n'
    '\n'
    '    :p2p_name_done\n'
    '\n'
    '    new-instance v0, Landroid/content/IntentFilter;'
)
s = s.replace(anchor_c, inject_c, 1)
write_text(p, s)
log('[C] i.smali <init> -> setDeviceName(仅 API<29; 名称为空回退 CarLife-HU)')


# ---------------------------------------------------------------- 自检
def check():
    ok = True
    b = read_text(os.path.join(DST, 'assets', 'bdcf'))
    if 'CONFIG_WIFI_DIRECT_NAME = CarLife-HU' not in b:
        log('!! bdcf 缺少直连名称'); ok = False
    if 'CONFIG_WIRLESS_FREQUENCY = 0' not in b:
        log('!! bdcf 频率未改'); ok = False

    a = read_text(os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'd', 'a.smali'))
    for k in ('enable()Z', 'iput-boolean v6, v2, La/a/a/a/m/m/d/d;->h:Z', ':bt_auto_enable'):
        if k not in a:
            log('!! a.smali 缺少 %s' % k); ok = False

    i = read_text(os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'd', 'i.smali'))
    for k in ('setDeviceName', ':p2p_name_set', ':p2p_name_done',
              'sget v2, Landroid/os/Build$VERSION;->SDK_INT:I',
              'const/16 v1, 0x1d', 'if-lt v2, v1, :p2p_name_done'):
        if k not in i:
            log('!! i.smali 缺少 %s' % k); ok = False

    def strip_comments(code):
        return '\n'.join(l.split('#')[0] for l in code.split('\n'))

    def regs_over(code, limit):
        code = strip_comments(code)
        return sorted(set(int(r) for r in re.findall(r'\bv(\d+)\b', code) if int(r) > limit))

    # 寄存器越界检查: i.smali 构造函数 .locals 3 -> 只允许 v0..v2
    ctor = i[i.find('.method public constructor <init>'):]
    ctor = ctor[:ctor.find('.end method')]
    bad = regs_over(ctor, 2)
    if bad:
        log('!! i.smali 构造函数使用了越界寄存器: %s' % bad); ok = False

    # 补丁B 越界检查: a.smali run() .locals 16 -> v0..v15
    run = a[a.find('.method public final run()V'):]
    run = run[:run.find('.end method')]
    badb = regs_over(run, 15)
    if badb:
        log('!! a.smali run() 使用了越界寄存器: %s' % badb); ok = False

    log('[自检] %s' % ('通过' if ok else '失败'))
    return ok


sys.exit(0 if check() else 1)
