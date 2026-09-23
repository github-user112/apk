.class public final synthetic Lcom/baidu/carlife/sdk/receiver/transport/instant/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic a:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;


# direct methods
.method public synthetic constructor <init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/a;->a:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/a;->a:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->a(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
