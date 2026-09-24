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

    # --- 1.28 / P0: 三分。 ---
    #     0 = ERROR (内部/临时错误)       -> 退避重试（★本次修复: 以前被当成"不支持"永久放弃）
    #     1 = P2P_UNSUPPORTED (驱动不支持) -> 放弃 + 提示降级（唯一死路）
    #     2 = BUSY (状态机被占)            -> removeGroup 清干净 + 退避重试
    #     其他未知值                        -> 按 ERROR 退避重试（永久放弃风险太高）
    #
    # 只有 reason==1 才 disarm；其余一律重试。
    const/4 v0, 0x1

    # p1 != 1 -> 不是"不支持"，去 :not_unsupported 继续分
    if-ne p1, v0, :not_unsupported

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "P2P UNSUPPORTED by driver -> give up, please use hotspot or USB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    # --- 1.23: 界面失败提示（对齐 5+ e0） ---
    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->b()V

    return-void

    :not_unsupported
    const/4 v0, 0x2

    # if-ne = 不相等才跳：p1 != 2（0 或未知）-> :error_retry；
    #                    p1 == 2 -> fall through 走 BUSY。
    # ★注意别写成 if-eq（相等则跳）—— 那会把 BUSY 和 ERROR 整个对调。
    if-ne p1, v0, :error_retry

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "BUSY -> removeGroup to release the state machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    # 退避重试（抽成 j.d()V：两个分支各自调用后 return，避免共享标签的寄存器合并）
    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->d()V

    return-void

    :error_retry
    # reason=0 (ERROR) 或未知值：临时错误，退避重试，绝不永久放弃。
    # 不做 removeGroup —— ERROR 时状态机多半本来就没组，清组反而可能把它搅乱。
    const-string v0, "CarLifeP2PBoot"

    const-string v1, "ERROR/unknown reason -> backoff retry (temporary, never give up)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->d()V

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
