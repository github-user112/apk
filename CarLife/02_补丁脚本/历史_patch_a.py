# -*- coding: utf-8 -*-
"""CarLife 1.6 车机端 -> Android 4.4.2 直连修复补丁 (A线) v2
补丁A: assets/bdcf 配置补齐
补丁B: 蓝牙未开启时自动请求开启  (注入到 a/a/a/a/m/m/d/a.smali run() 的 :goto_1 之后, 用低位寄存器 v5)
补丁C: 同步系统 P2P 设备名 = CONFIG_WIFI_DIRECT_NAME (a/a/a/a/m/m/d/i.smali <init>)
说明: Dalvik 的 invoke/if 指令寄存器编码只有 4 位(v0-v15), 临时寄存器必须 <= v15
"""
import os, shutil

SRC = r'C:\PJGG\apk\_sm16'
DST = r'C:\PJGG\apk\_w16'
P2P_NAME = 'CarLife-HU'

log = []
def L(s):
    log.append(s)

if os.path.exists(DST):
    shutil.rmtree(DST)
shutil.copytree(SRC, DST, ignore=shutil.ignore_patterns('build'))
L('[0] copied -> _w16')

# ---------- A: assets/bdcf ----------
bd = os.path.join(DST, 'assets', 'bdcf')
raw = open(bd, 'rb').read().decode('utf-8')
if 'CONFIG_WIFI_DIRECT_NAME' not in raw:
    raw = raw.replace('CONFIG_WIRLESS_FREQUENCY = 1', 'CONFIG_WIRLESS_FREQUENCY = 0')
    if not raw.endswith('\r\n'):
        raw += '\r\n'
    raw += ('\r\n# 车机端 WiFi 直连名称(P2P 设备名, 手机端据此寻找车机)\r\n'
            'CONFIG_WIFI_DIRECT_NAME = %s\r\n' % P2P_NAME)
    open(bd, 'wb').write(raw.encode('utf-8'))
    L('[A] bdcf: +CONFIG_WIFI_DIRECT_NAME=%s ; WIRLESS_FREQUENCY->0' % P2P_NAME)
else:
    L('[A] skip')

# ---------- B: 蓝牙自动开启 ----------
pa = os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'd', 'a.smali')
s = open(pa, encoding='utf-8').read()
anchor = '    :goto_1\n    const-string v5, "args"'
if anchor not in s:
    L('[B] !! anchor missing')
else:
    inject = (
        '    :goto_1\n'
        '\n'
        '    # --- patched: 蓝牙未开启则主动请求开启, 开启后系统广播会触发重试 ---\n'
        '    invoke-virtual {v2}, La/a/a/a/m/m/d/d;->b()Landroid/bluetooth/BluetoothAdapter;\n'
        '\n'
        '    move-result-object v5\n'
        '\n'
        '    if-eqz v5, :bt_auto_enable\n'
        '\n'
        '    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->enable()Z\n'
        '\n'
        '    move-result v5\n'
        '\n'
        '    :bt_auto_enable\n'
        '\n'
        '    const-string v5, "args"'
    )
    s = s.replace(anchor, inject, 1)
    open(pa, 'w', encoding='utf-8').write(s)
    L('[B] a.smali patched (auto-enable BT, reg v5)')

# ---------- C: setDeviceName ----------
pi = os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'd', 'i.smali')
s = open(pi, encoding='utf-8').read()
anchorC = '    iput-object v1, p0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;'
if anchorC not in s:
    L('[C] !! anchor missing')
else:
    inject = (
        anchorC + '\n'
        '\n'
        '    # --- patched: 同步系统 P2P 设备名, 使手机端能按车机上报的名称找到本机 ---\n'
        '    iget-object v0, p0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;\n'
        '\n'
        '    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;\n'
        '\n'
        '    move-result-object v1\n'
        '\n'
        '    const-string v2, "CONFIG_WIFI_DIRECT_NAME"\n'
        '\n'
        '    invoke-virtual {v1, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;\n'
        '\n'
        '    move-result-object v1\n'
        '\n'
        '    if-nez v1, :p2p_name_ok\n'
        '\n'
        '    const-string v1, "%s"\n'
        '\n'
        '    goto :p2p_name_set\n'
        '\n'
        '    :p2p_name_ok\n'
        '\n'
        '    invoke-virtual {v1}, Ljava/lang/String;->length()I\n'
        '\n'
        '    move-result v2\n'
        '\n'
        '    if-nez v2, :p2p_name_set\n'
        '\n'
        '    const-string v1, "%s"\n'
        '\n'
        '    :p2p_name_set\n'
        '\n'
        '    iget-object v2, p0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;\n'
        '\n'
        '    invoke-virtual {p2, v2, v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V\n'
    ) % (P2P_NAME, P2P_NAME)
    s = s.replace(anchorC, inject, 1)
    open(pi, 'w', encoding='utf-8').write(s)
    L('[C] i.smali patched (setDeviceName=%s)' % P2P_NAME)

open(r'C:\PJGG\apk\_patch_log.txt', 'w', encoding='utf-8').write('\n'.join(log))
print('\n'.join(log))
