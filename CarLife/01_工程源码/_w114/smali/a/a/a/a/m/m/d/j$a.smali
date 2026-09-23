.class public final La/a/a/a/m/m/d/j$a;
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
    .locals 8

    # --- patchH: 失败原因分级 ---
    #     0 = ERROR (内部错误)       -> 退避重试
    #     1 = P2P_UNSUPPORTED (驱动/固件不支持) -> 立即放弃, 提示降级
    #     2 = BUSY (状态机被占)      -> 先 removeGroup 清干净再退避重试
    const-string v0, "CarLifeP2PBoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroup failed, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    # bug2 修复: 原比较 0x1 导致 reason=1(不支持) 走 BUSY 重试、
    # reason=2(BUSY) 反而直接放弃, 分级对调。现改为 0x2。
    const/4 v0, 0x2

    if-eq p1, v0, :check_busy

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "P2P UNSUPPORTED by driver -> give up, please use hotspot or USB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->b()V

    return-void

    :check_busy

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "BUSY -> removeGroup to release the state machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :backoff
    # 退避: 4000 + attempt*2000 ms
    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    const/16 v1, 0xfa0

    iget v2, v0, La/a/a/a/m/m/d/j;->g:I

    const/16 v3, 0x7d0

    mul-int v2, v2, v3

    add-int v1, v1, v2

    int-to-long v4, v1

    iget-object v6, v0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v7, v0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSuccess()V
    .locals 3

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "createGroup SUCCESS: HU is Group Owner, phone may join now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "hint: on the phone open CarLife and pick this HU in the Wi-Fi Direct list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->e()V

    return-void
.end method
