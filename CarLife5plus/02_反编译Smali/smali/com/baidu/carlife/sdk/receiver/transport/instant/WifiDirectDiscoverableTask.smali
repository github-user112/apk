.class public final Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\r\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "wifiP2pManager",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "channel",
        "<init>",
        "(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V",
        "Lr8/z;",
        "discoverable",
        "()V",
        "stopDiscoverable",
        "terminate",
        "onSuccess",
        "",
        "error",
        "onFailure",
        "(I)V",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "getWifiP2pManager",
        "()Landroid/net/wifi/p2p/WifiP2pManager;",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "getChannel",
        "()Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;",
        "operationSequence",
        "Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;",
        "Ljava/lang/Runnable;",
        "mDiscoverPeers",
        "Ljava/lang/Runnable;",
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

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private final operationSequence:Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;

.field private final wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2

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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 17
    .line 18
    new-instance v0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->operationSequence:Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;

    .line 24
    .line 25
    new-instance v1, Lcom/baidu/carlife/sdk/util/wifip2p/operations/StopPeerDiscoverOperation;

    .line 26
    .line 27
    invoke-direct {v1, p1, p2}, Lcom/baidu/carlife/sdk/util/wifip2p/operations/StopPeerDiscoverOperation;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->add(Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/baidu/carlife/sdk/util/wifip2p/operations/DiscoverPeersOperation;

    .line 34
    .line 35
    invoke-direct {v1, p1, p2}, Lcom/baidu/carlife/sdk/util/wifip2p/operations/DiscoverPeersOperation;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->add(Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Landroidx/lifecycle/z;

    .line 42
    .line 43
    const/4 p2, 0x6

    .line 44
    invoke-direct {p1, p2, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 48
    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->mDiscoverPeers$lambda$0(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final mDiscoverPeers$lambda$0(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "WifiDirectDiscoverableTask DiscoverPeers"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-string v2, "CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->operationSequence:Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->execute()V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final discoverable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->operationSequence:Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->execute()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWifiP2pManager()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public onFailure(I)V
    .locals 8

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
    const-string v2, "WifiDirectDiscoverableTask onFailure "

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
    sget-object v2, Lcom/baidu/carlife/sdk/util/TimerUtils;->INSTANCE:Lcom/baidu/carlife/sdk/util/TimerUtils;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 26
    .line 27
    const-wide/16 v4, 0x7d0

    .line 28
    .line 29
    const-wide/16 v6, 0x7d0

    .line 30
    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/baidu/carlife/sdk/util/TimerUtils;->schedule(Ljava/lang/Runnable;JJ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "WifiDirectDiscoverableTask onSuccess"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-string v2, "CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/baidu/carlife/sdk/util/TimerUtils;->INSTANCE:Lcom/baidu/carlife/sdk/util/TimerUtils;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/sdk/util/TimerUtils;->stop(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final stopDiscoverable()V
    .locals 2

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/TimerUtils;->INSTANCE:Lcom/baidu/carlife/sdk/util/TimerUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/sdk/util/TimerUtils;->stop(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final terminate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->stopDiscoverable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 7
    .line 8
    new-instance v2, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask$terminate$1;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask$terminate$1;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
