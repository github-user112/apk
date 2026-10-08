.class public final La/a/a/a/m/m/d/k;
.super Ljava/lang/Object;
.source "P2pSelfHeal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public static a(La/a/a/a/m/m/d/i;)V
    .locals 5

    # --- patchK: P2P 组丢失后的自愈入口 ---
    # ---  i.smali onReceive 在 info==null 或 groupFormed==false 时走 :cond_5,
    # ---  那里原本只调 h.c.a() (discoverPeers 已被 patchG 抑制成只打日志),
    # ---  于是链路彻底静止。这里重新 arm 自举器 (内部有 15s 去抖)。
    :try_start_0
    iget-object v0, p0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;

    if-eqz v0, :has_boot

    new-instance v0, La/a/a/a/m/m/d/j;

    iget-object v1, p0, La/a/a/a/m/m/d/i;->a:La/a/a/a/c;

    iget-object v2, p0, La/a/a/a/m/m/d/i;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, v1, v2, v3, p0}, La/a/a/a/m/m/d/j;-><init>(La/a/a/a/c;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;La/a/a/a/m/m/d/i;)V

    iput-object v0, p0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;

    :has_boot
    const-string v1, "CarLifeP2PBoot"

    const-string v2, "self-heal: P2P group lost, re-arm bootstrap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->a()V

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarLifeP2PBoot"

    const-string v2, "self-heal failed (ignored)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
