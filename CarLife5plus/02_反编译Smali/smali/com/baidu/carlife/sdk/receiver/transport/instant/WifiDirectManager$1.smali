.class public final Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$1",
        "Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;",
        "Lr8/z;",
        "onChannelDisconnected",
        "()V",
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
.field final synthetic this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->access$getWifiP2pManager$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->access$getContext$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;)Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v2, v3, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "wifiP2pManager.initializ\u2026his\n                    )"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->access$setChannel$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
