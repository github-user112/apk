.class public Lnet/easyconn/ecsdk/d$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/d;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/d;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/d$d;->a:Lnet/easyconn/ecsdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    invoke-static {}, Lnet/easyconn/ecsdk/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to addLocalService, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 3

    invoke-static {}, Lnet/easyconn/ecsdk/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "succeed in addLocalService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/d$d;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {v0}, Lnet/easyconn/ecsdk/d;->b(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/ecsdk/d$d;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {v0}, Lnet/easyconn/ecsdk/d;->b(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/ecsdk/d$d;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {v1}, Lnet/easyconn/ecsdk/d;->c(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lnet/easyconn/ecsdk/d$d$a;

    invoke-direct {v2, p0}, Lnet/easyconn/ecsdk/d$d$a;-><init>(Lnet/easyconn/ecsdk/d$d;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget-object v0, p0, Lnet/easyconn/ecsdk/d$d;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {v0}, Lnet/easyconn/ecsdk/d;->d(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/ecsdk/d$d;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {v0}, Lnet/easyconn/ecsdk/d;->b(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/ecsdk/d$d;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {v1}, Lnet/easyconn/ecsdk/d;->c(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/d$d;->a:Lnet/easyconn/ecsdk/d;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
