.class public final Lcom/baidu/carlife/sdk/util/wifip2p/operations/DiscoverPeersOperation;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/util/wifip2p/operations/DiscoverPeersOperation;",
        "Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "wifiP2pManager",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "channel",
        "<init>",
        "(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "listener",
        "Lr8/z;",
        "execute",
        "(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
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
.field private final channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 1

    .line 1
    const-string v0, "wifiP2pManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "channel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/operations/DiscoverPeersOperation;->wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/baidu/carlife/sdk/util/wifip2p/operations/DiscoverPeersOperation;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public execute(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/operations/DiscoverPeersOperation;->wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/operations/DiscoverPeersOperation;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
