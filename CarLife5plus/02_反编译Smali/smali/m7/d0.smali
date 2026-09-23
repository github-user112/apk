.class public final synthetic Lm7/d0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# instance fields
.field public final synthetic a:Lg9/x;


# direct methods
.method public synthetic constructor <init>(Lg9/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm7/d0;->a:Lg9/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm7/d0;->a:Lg9/x;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    const-string v1, "CONFIG_WIFI_DIRECT_NAME"

    .line 18
    .line 19
    invoke-static {v1, v0}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {v1, p1}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0, v1, p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConfig(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
