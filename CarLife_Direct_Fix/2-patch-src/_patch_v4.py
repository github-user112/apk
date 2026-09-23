# -*- coding: utf-8 -*-
"""
CarLife 车机端 (com.baidu.carlifevehicle) 直连修复补丁 v4
基线: C:\\PJGG\\apk\\_w19   (已含 patchA 配置 / patchB 蓝牙 / patchC P2P名)
产出: C:\\PJGG\\apk\\_w110

本版参照「亿连手机互联 V7.0.1」(net.easyconn) 的 WLAN 直连做法, 给车机端补上
CarLife 原本缺失的「自举」能力:

  patchD  P2P 自举器 (新增类 a/a/a/a/m/m/d/j)
    亿连的做法: discoverPeers 成功后立刻 createGroup() 自己当 GO, 手机进网后
    靠服务发现找到它。CarLife 车机端则完全是「被动等手机来连」——
    全 dex 里 createGroup 调用数为 0, 只有 initialize / discoverPeers /
    stopPeerDiscovery / requestConnectionInfo / cancelConnect 五个 API。
    实测(真机日志)车机在蓝牙通道不通时会以 1 秒周期无限 discoverPeers,
    但没有任何一方把组立起来, 于是永远停在「等待 WLAN 直连组网中」。
    本补丁: 进直连后 15 秒仍无组 -> 车机主动 createGroup() 成为 GO,
    失败每 10 秒重试, 最多 6 次; 一旦检测到组已形成立即停止。
    同时申请 MulticastLock(亿连有 22 处, CarLife 为 0)。

  patchE  断开清理 (a/a/a/a/m/m/e/d.smali  f())
    亿连断开时会清干净; CarLife 只调 cancelConnect, 残留组会让下一次
    discoverPeers 一直返回 BUSY(真机日志中 reason: 2 即 BUSY)。
    补充 removeGroup + stopPeerDiscovery。

编译期自检会校验: 新类结构、注入点唯一性、寄存器不越界、方法引用合法。
"""
import os
import re
import shutil
import sys

ROOT = r'C:\PJGG\apk'
SRC = os.path.join(ROOT, '_w19')
DST = os.path.join(ROOT, '_w110')

report = []


def log(msg):
    report.append(msg)
    print(msg)


def read_text(path):
    with open(path, 'r', encoding='utf-8', errors='replace') as f:
        return f.read().replace('\r\n', '\n')


def write_text(path, text):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w', encoding='utf-8', newline='\n') as f:
        f.write(text)


# ---------------------------------------------------------------- 0. 复制基线
if os.path.exists(DST):
    shutil.rmtree(DST)
shutil.copytree(SRC, DST)
log('[0] 基线复制 %s -> %s' % (SRC, DST))

PKG = os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'd')

# ---------------------------------------------------------------- patchD-1 新增自举器类
J_SMALI = '''.class public final La/a/a/a/m/m/d/j;
.super Ljava/lang/Object;
.source "P2pBootstrap.java"


# instance fields
.field public final a:La/a/a/a/c;

.field public final b:Landroid/net/wifi/p2p/WifiP2pManager;

.field public final c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final d:La/a/a/a/m/m/d/i;

.field public final e:Landroid/os/Handler;

.field public final f:Ljava/lang/Runnable;

.field public g:I

.field public h:Z

.field public i:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method public constructor <init>(La/a/a/a/c;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;La/a/a/a/m/m/d/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/j;->a:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p3, p0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-object p4, p0, La/a/a/a/m/m/d/j;->d:La/a/a/a/m/m/d/i;

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/m/m/d/j;->g:I

    iput-boolean v0, p0, La/a/a/a/m/m/d/j;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/m/m/d/j;->i:Landroid/net/wifi/WifiManager$MulticastLock;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    new-instance v0, La/a/a/a/m/m/d/j$b;

    invoke-direct {v0, p0}, La/a/a/a/m/m/d/j$b;-><init>(La/a/a/a/m/m/d/j;)V

    iput-object v0, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/m/m/d/j;->h:Z

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "armed: if no P2P group in 8s, HU will createGroup() and become GO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # patchF-1: 停掉 CarLife 每秒一次的 discoverPeers 循环 (n/h.b -> Timer)
    # 真机实测: 该循环只 schedule 从不 cancel, discovery 永久进行中,
    # 导致 WifiP2pServiceImpl 的 mIsBusy/mDiscoveryStarted 一直被占,
    # 于是 discoverPeers 自己 BUSY、我们新加的 createGroup 也 BUSY(reason=2)。
    :try_start_1
    iget-object v0, p0, La/a/a/a/m/m/d/j;->d:La/a/a/a/m/m/d/i;

    iget-object v0, v0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;

    iget-object v0, v0, La/a/a/a/m/m/d/h;->d:Ljava/lang/Runnable;

    sget-object v1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    invoke-virtual {v1, v0}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "discover loop cancelled (free P2P state machine)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "CarLifeP2PBoot"

    const-string v2, "cancel discover loop failed (ignored)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_0
    iget-object v0, p0, La/a/a/a/m/m/d/j;->a:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "CarLifeP2P"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/m/m/d/j;->i:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "MulticastLock acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarLifeP2PBoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MulticastLock failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v1, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/m/m/d/j;->h:Z

    iget-object v0, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v1, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, La/a/a/a/m/m/d/j;->i:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :done

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v1

    if-eqz v1, :done

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :done

    :catch_0
    move-exception v0

    :done
    return-void
.end method
'''

J_A_SMALI = '''.class public final La/a/a/a/m/m/d/j$a;
.super Ljava/lang/Object;
.source "P2pBootstrap.java"


# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final a:La/a/a/a/m/m/d/j;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 6

    const-string v0, "CarLifeP2PBoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroup failed, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> retry in 8s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    iget-object v1, v0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "createGroup SUCCESS: HU is Group Owner, phone may join now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->b()V

    return-void
.end method
'''

J_B_SMALI = '''.class public final La/a/a/a/m/m/d/j$b;
.super Ljava/lang/Object;
.source "P2pBootstrap.java"


# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:La/a/a/a/m/m/d/j;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/j$b;->a:La/a/a/a/m/m/d/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, La/a/a/a/m/m/d/j$b;->a:La/a/a/a/m/m/d/j;

    iget-boolean v1, v0, La/a/a/a/m/m/d/j;->h:Z

    if-eqz v1, :done

    iget-object v1, v0, La/a/a/a/m/m/d/j;->d:La/a/a/a/m/m/d/i;

    iget-boolean v1, v1, La/a/a/a/m/m/d/i;->f:Z

    if-nez v1, :formed

    iget v1, v0, La/a/a/a/m/m/d/j;->g:I

    const/4 v2, 0x6

    if-ge v1, v2, :giveup

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, La/a/a/a/m/m/d/j;->g:I

    const-string v2, "CarLifeP2PBoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createGroup attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/6"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # patchF-2: createGroup 前先显式停发现, 避免 discovery 进行中导致 BUSY
    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const-string v1, "CarLifeP2PBoot"

    const-string v2, "stopPeerDiscovery done, createGroup now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, La/a/a/a/m/m/d/j$a;

    invoke-direct {v3, v0}, La/a/a/a/m/m/d/j$a;-><init>(La/a/a/a/m/m/d/j;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    :formed
    const-string v1, "CarLifeP2PBoot"

    const-string v2, "P2P group detected, bootstrap idle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :giveup
    const-string v1, "CarLifeP2PBoot"

    const-string v2, "give up after 6 createGroup attempts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :done
    return-void
.end method
'''

write_text(os.path.join(PKG, 'j.smali'), J_SMALI)
write_text(os.path.join(PKG, 'j$a.smali'), J_A_SMALI)
write_text(os.path.join(PKG, 'j$b.smali'), J_B_SMALI)
log('[D-1] 新增 %s\\j.smali + j$a.smali + j$b.smali' % os.path.relpath(PKG, DST))

# ---------------------------------------------------------------- patchD-2 挂接: i.smali
p = os.path.join(PKG, 'i.smali')
s = read_text(p)
assert 'La/a/a/a/m/m/d/j;->' not in s, 'patchD: i.smali 已挂接过'

# 1) 新增字段 g (保存自举器引用, 供 terminate 停止)
fld_anchor = '.field public f:Z\n'
assert s.count(fld_anchor) == 1, 'patchD: f 字段锚点不唯一'
s = s.replace(fld_anchor, fld_anchor + '\n.field public g:La/a/a/a/m/m/d/j;\n', 1)

# 2) 构造函数 .locals 3 -> 6 (需要 v0..v4)
ctor_start = s.find('.method public constructor <init>')
ctor_end = s.find('.end method', ctor_start)
ctor = s[ctor_start:ctor_end]
assert '\n    .locals 3\n' in ctor, 'patchD: 构造函数 .locals 不是 3'
s = s[:ctor_start] + ctor.replace('\n    .locals 3\n', '\n    .locals 6\n', 1) + s[ctor_end:]
log('[D-2] i.smali <init> .locals 3 -> 6')

# 3) 在 requestConnectionInfo 之后挂接自举器
anchor_d = (
    '    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo('
    'Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$'
    'ConnectionInfoListener;)V\n'
    '\n'
    '    return-void'
)
assert s.count(anchor_d) == 1, 'patchD: requestConnectionInfo 锚点不唯一 (%d)' % s.count(anchor_d)

inject_d = (
    '    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo('
    'Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$'
    'ConnectionInfoListener;)V\n'
    '\n'
    '    # --- patchD: 亿连式 P2P 自举器 (参照 net.easyconn) ---------------------------\n'
    '    # ---  车机端原设计完全被动: 只 discoverPeers 等手机来建组, createGroup 调用数为 0。\n'
    '    # ---  此处 15 秒后若仍无组, 由车机主动 createGroup() 成为 GO, 手机 discoverPeers\n'
    '    # ---  到即可加入。失败每 10 秒重试, 最多 6 次, 组一形成立即停止。\n'
    '    iget-object v0, p0, La/a/a/a/m/m/d/i;->a:La/a/a/a/c;\n'
    '\n'
    '    iget-object v1, p0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;\n'
    '\n'
    '    new-instance v2, La/a/a/a/m/m/d/j;\n'
    '\n'
    '    move-object v3, p2\n'
    '\n'
    '    move-object v4, p0\n'
    '\n'
    '    invoke-direct {v2, v0, v3, v1, v4}, La/a/a/a/m/m/d/j;-><init>(La/a/a/a/c;'
    'Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;'
    'La/a/a/a/m/m/d/i;)V\n'
    '\n'
    '    iput-object v2, p0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;\n'
    '\n'
    '    invoke-virtual {v2}, La/a/a/a/m/m/d/j;->a()V\n'
    '\n'
    '    return-void'
)
s = s.replace(anchor_d, inject_d, 1)
write_text(p, s)
log('[D-3] i.smali <init> -> new j(...) + j.a()  自举器随直连启动')

# ---------------------------------------------------------------- patchE 断开清理 + 停自举
p = os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'e', 'd.smali')
s = read_text(p)
assert 'removeGroup' not in s, 'patchE: 已打过补丁'

# E-1: terminate 时停掉自举器 (此时 v0 = WifiDirectManager 实例)
anchor_e1 = '    iget-object v0, v0, La/a/a/a/m/m/d/e;->c:La/a/a/a/m/m/d/i;\n'
assert s.count(anchor_e1) == 1, 'patchE: terminate 锚点不唯一 (%d)' % s.count(anchor_e1)
inject_e1 = (
    '    iget-object v0, v0, La/a/a/a/m/m/d/e;->c:La/a/a/a/m/m/d/i;\n'
    '\n'
    '    # --- patchE: 停止 P2P 自举器 ---\n'
    '    iget-object v1, v0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;\n'
    '\n'
    '    if-eqz v1, :boot_stopped\n'
    '\n'
    '    invoke-virtual {v1}, La/a/a/a/m/m/d/j;->b()V\n'
    '\n'
    '    const/4 v2, 0x0\n'
    '\n'
    '    iput-object v2, v0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;\n'
    '\n'
    '    :boot_stopped\n'
    '\n'
)
s = s.replace(anchor_e1, inject_e1, 1)

# E-2: cancelConnect 后补 removeGroup + stopPeerDiscovery
anchor_e2 = (
    '    invoke-virtual {v3, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect('
    'Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$'
    'ActionListener;)V'
)
assert s.count(anchor_e2) == 1, 'patchE: cancelConnect 锚点不唯一 (%d)' % s.count(anchor_e2)
inject_e2 = (
    anchor_e2 + '\n'
    '\n'
    '    # --- patchE: 参照亿连的清理习惯. 原来只 cancelConnect, 残留组会让下一次\n'
    '    # ---  discoverPeers 一直返回 BUSY(真机日志中的 reason: 2), 补上 removeGroup\n'
    '    # ---  与 stopPeerDiscovery, 保证下次进直连是干净状态。\n'
    '    new-instance v7, La/a/a/a/m/m/d/g;\n'
    '\n'
    '    invoke-direct {v7}, La/a/a/a/m/m/d/g;-><init>()V\n'
    '\n'
    '    invoke-virtual {v3, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup('
    'Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$'
    'ActionListener;)V\n'
    '\n'
    '    new-instance v7, La/a/a/a/m/m/d/g;\n'
    '\n'
    '    invoke-direct {v7}, La/a/a/a/m/m/d/g;-><init>()V\n'
    '\n'
    '    invoke-virtual {v3, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery('
    'Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$'
    'ActionListener;)V'
)
s = s.replace(anchor_e2, inject_e2, 1)
write_text(p, s)
log('[E] m/m/e/d.smali -> terminate 停自举器 + removeGroup + stopPeerDiscovery')


# ---------------------------------------------------------------- patchD-3 权限: 组播锁
p = os.path.join(DST, 'AndroidManifest.xml')
s = read_text(p)
assert 'CHANGE_WIFI_MULTICAST_STATE' not in s, 'patchD: 权限已存在'
perm_anchor = '    <uses-permission android:name="android.permission.CHANGE_WIFI_STATE"/>\n'
assert s.count(perm_anchor) == 1, 'patchD: 权限锚点不唯一 (%d)' % s.count(perm_anchor)
s = s.replace(perm_anchor,
              perm_anchor +
              '    <uses-permission android:name="android.permission.CHANGE_WIFI_MULTICAST_STATE"/>\n',
              1)
write_text(p, s)
log('[D-4] AndroidManifest -> 补 CHANGE_WIFI_MULTICAST_STATE (MulticastLock 需要)')


# ---------------------------------------------------------------- patchG 停掉 discoverPeers 循环本体
# 真机实测: patchF 的「取消一次定时器」会落空 —— armed 那一刻 h.d 还没被 schedule 进
# n/h 的 Map, 取消无事发生; 紧接着 h.onFailure 又 schedule(1000,1000), 于是
# DiscoverPeers 依旧每秒发起, WifiP2pServiceImpl 的 discovery 永不结束,
# createGroup 永远 BUSY(reason=2), 连 CarLife 自己的 discover 也一样 BUSY。
# CarLife 车机端本就应当是「车机建组、等手机来连」, 不需要反复 discoverPeers,
# 因此直接把循环本体 m/m/d/b.run() 里的 discoverPeers 调用去掉。
p = os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'd', 'b.smali')
s = read_text(p)
anchor = '''    :goto_0
    iget-object v0, v0, La/a/a/a/m/m/d/h;->c:La/a/a/a/n/i/b;

    invoke-virtual {v0}, La/a/a/a/n/i/b;->a()V

    return-void'''
assert s.count(anchor) == 1, 'patchG: b.smali run() 锚点不唯一 (%d)' % s.count(anchor)
repl = '''    :goto_0
    const-string v2, "CarLifeP2PBoot"

    const-string v3, "discoverPeers suppressed (HU creates group instead)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void'''
s = s.replace(anchor, repl, 1)
write_text(p, s)
log('[G] m/m/d/b.smali -> 停掉 discoverPeers 循环 (改由车机 createGroup)')


# ---------------------------------------------------------------- 自检
def strip_comments(code):
    return '\n'.join(l.split('#')[0] for l in code.split('\n'))


def regs_over(code, limit):
    code = strip_comments(code)
    return sorted(set(int(r) for r in re.findall(r'\bv(\d+)\b', code) if int(r) > limit))


def check():
    ok = True
    n = 0

    # 1) 新类存在且结构合法
    for fn, cls, iface in (('j.smali', 'La/a/a/a/m/m/d/j;', None),
                           ('j$a.smali', 'La/a/a/a/m/m/d/j$a;',
                            'Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;'),
                           ('j$b.smali', 'La/a/a/a/m/m/d/j$b;', 'Ljava/lang/Runnable;')):
        fp = os.path.join(PKG, fn)
        if not os.path.exists(fp):
            log('!! 缺少 %s' % fn); ok = False; continue
        t = read_text(fp)
        if ('.class ' not in t) or (cls not in t):
            log('!! %s 类声明异常' % fn); ok = False
        if t.count('.method ') != t.count('.end method'):
            log('!! %s method/end method 不配对 (%d/%d)'
                % (fn, t.count('.method '), t.count('.end method'))); ok = False
        if iface and iface not in t:
            log('!! %s 缺少接口 %s' % (fn, iface)); ok = False
        # 寄存器边界
        for m in re.finditer(r'\.method[^\n]*\n(.*?)\.end method', t, re.S):
            body = m.group(0)
            lm = re.search(r'\.locals (\d+)', body)
            if not lm:
                continue
            bad = regs_over(body, int(lm.group(1)) - 1)
            if bad:
                log('!! %s 寄存器越界 %s (locals=%s)' % (fn, bad, lm.group(1))); ok = False
        n += 1

    # 2) i.smali 挂接
    i = read_text(os.path.join(PKG, 'i.smali'))
    for k in ('.field public g:La/a/a/a/m/m/d/j;',
              'invoke-direct {v2, v0, v3, v1, v4}, La/a/a/a/m/m/d/j;-><init>',
              'invoke-virtual {v2}, La/a/a/a/m/m/d/j;->a()V',
              'iput-object v2, p0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;'):
        if k not in i:
            log('!! i.smali 缺少 %s' % k); ok = False
    ctor = i[i.find('.method public constructor <init>'):]
    ctor = ctor[:ctor.find('.end method')]
    bad = regs_over(ctor, 5)
    if bad:
        log('!! i.smali 构造函数寄存器越界: %s' % bad); ok = False

    # 2b) j$b.run() 的分支方向必须正确
    #     - h 判断: h==0(未启动) 应退出 -> if-eqz v1, :done
    #     - 组状态: i.f==1 表示 P2P 组"已形成"(源码在 groupFormed==true 时置 1)
    #               -> 已形成应跳过建组 -> if-nez v1, :formed
    #     - 放弃条件: g>=6 才放弃 -> if-ge v1, v2, :giveup
    #       (曾误写成 if-lt, 结果 8 秒后第一次 run() 就「give up」, 一次 createGroup 都没发)
    jb = read_text(os.path.join(PKG, 'j$b.smali'))
    if 'if-eqz v1, :done' not in jb:
        log('!! j$b.run() 缺少 if-eqz v1, :done (自举器的 h 判断写反了)'); ok = False
    if 'if-nez v1, :done' in jb:
        log('!! j$b.run() 仍是 if-nez v1, :done (会立即退出)'); ok = False
    if 'if-nez v1, :formed' not in jb:
        log('!! j$b.run() 缺少 if-nez v1, :formed (组已形成时应跳过建组)'); ok = False
    if 'if-eqz v1, :formed' in jb:
        log('!! j$b.run() 仍是 if-eqz v1, :formed (会把"无组"误判为"有组"而跳过建组)'); ok = False
    if 'if-ge v1, v2, :giveup' not in jb:
        log('!! j$b.run() 缺少 if-ge v1, v2, :giveup (放弃条件写反, 会 8 秒就自杀)'); ok = False
    if 'if-lt v1, v2, :giveup' in jb:
        log('!! j$b.run() 仍是 if-lt v1, v2, :giveup (g<6 就放弃, 永不建组)'); ok = False

    # 2b-2) patchF: 停掉 CarLife 的 discover 循环 (j.smali) + createGroup 前 stopPeerDiscovery (j$b.smali)
    js = read_text(os.path.join(PKG, 'j.smali'))
    for k in ('La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V',
              'discover loop cancelled'):
        if k not in js:
            log('!! j.smali 缺少 patchF-1 片段: %s' % k); ok = False
    for k in ('stopPeerDiscovery done, createGroup now',
              'stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V'):
        if k not in jb:
            log('!! j$b.smali 缺少 patchF-2 片段: %s' % k); ok = False

    # 2b-3) patchG: discoverPeers 循环本体已停
    bs = read_text(os.path.join(PKG, 'b.smali'))
    if 'discoverPeers suppressed' not in bs:
        log('!! b.smali 缺少 patchG (discoverPeers 循环未停)'); ok = False
    if 'La/a/a/a/n/i/b;->a()V' in bs:
        log('!! b.smali 仍在调用 discoverPeers 序列 (patchG 未生效)'); ok = False

    # 2c) 组播权限
    if 'CHANGE_WIFI_MULTICAST_STATE' not in read_text(os.path.join(DST, 'AndroidManifest.xml')):
        log('!! 缺少 CHANGE_WIFI_MULTICAST_STATE 权限'); ok = False

    # 3) m/m/e/d.smali 清理
    e = read_text(os.path.join(DST, 'smali', 'a', 'a', 'a', 'a', 'm', 'm', 'e', 'd.smali'))
    for k in ('removeGroup', 'stopPeerDiscovery', ':boot_stopped',
              'invoke-virtual {v1}, La/a/a/a/m/m/d/j;->b()V'):
        if k not in e:
            log('!! m/m/e/d.smali 缺少 %s' % k); ok = False
    fbody = e[e.find('.method public f()V'):]
    fbody = fbody[:fbody.find('.end method')]
    bad = regs_over(fbody, 9)
    if bad:
        log('!! f() 寄存器越界: %s' % bad); ok = False

    # 4) 前进基线仍在 (patchA/B/C)
    if 'CONFIG_WIFI_DIRECT_NAME = CarLife-HU' not in read_text(os.path.join(DST, 'assets', 'bdcf')):
        log('!! 基线 patchA 丢失'); ok = False
    if ':bt_auto_enable' not in read_text(os.path.join(PKG, 'a.smali')):
        log('!! 基线 patchB 丢失'); ok = False
    if 'setDeviceName' not in i:
        log('!! 基线 patchC 丢失'); ok = False

    log('[自检] 新类 %d 个, 结果: %s' % (n, '通过' if ok else '失败'))
    return ok


sys.exit(0 if check() else 1)
