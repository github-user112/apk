.class public final Lcom/baidu/carlife/sdk/util/wifip2p/operations/StopPeerDiscoverOperation$execute$1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlife/sdk/util/wifip2p/operations/StopPeerDiscoverOperation;->execute(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/baidu/carlife/sdk/util/wifip2p/operations/StopPeerDiscoverOperation$execute$1",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "Lr8/z;",
        "onSuccess",
        "()V",
        "",
        "reason",
        "onFailure",
        "(I)V",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/operations/StopPeerDiscoverOperation$execute$1;->$listener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v2, "StopPeerDiscoverOperation onFailure "

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object p1, v1, v2

    .line 17
    .line 18
    const-string p1, "CarLife_SDK"

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/operations/StopPeerDiscoverOperation$execute$1;->$listener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 24
    .line 25
    invoke-interface {p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/operations/StopPeerDiscoverOperation$execute$1;->$listener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
