.class public final Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks$DefaultImpls;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onDeviceConnected(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/b;->b(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
