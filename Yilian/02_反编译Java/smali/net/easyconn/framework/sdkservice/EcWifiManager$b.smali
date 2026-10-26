.class public Lnet/easyconn/framework/sdkservice/EcWifiManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/framework/sdkservice/EcWifiManager;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EcWifiManager;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$b;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "requestGroupInfo car is owner"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    const-string v2, "requestGroupInfo  WifiP2pDevice deviceName = "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " deviceAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-static {v2, v3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object v2, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$b;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iput-boolean v1, v2, Lnet/easyconn/framework/sdkservice/EcWifiManager;->n:Z

    iput-object v0, v2, Lnet/easyconn/framework/sdkservice/EcWifiManager;->o:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    goto :goto_0

    :cond_1
    const-string v0, "requestGroupInfo phone is owner"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "requestGroupInfo deviceName = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$b;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    iput-boolean v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->n:Z

    iput-object p1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->o:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    goto :goto_1

    :cond_2
    const-string p1, "requestGroupInfo p2pDevice is null"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p1, "requestGroupInfo group is null"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$b;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->n:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->o:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p1}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->a(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    :cond_4
    :goto_1
    return-void
.end method
