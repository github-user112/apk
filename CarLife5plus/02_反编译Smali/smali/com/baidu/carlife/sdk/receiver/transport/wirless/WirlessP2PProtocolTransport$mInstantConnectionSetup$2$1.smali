.class public final Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mInstantConnectionSetup$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mInstantConnectionSetup$2;->invoke()Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mInstantConnectionSetup$2$1",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;",
        "",
        "address",
        "Lr8/z;",
        "onDeviceConnected",
        "(Ljava/lang/String;)V",
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
.field final synthetic this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mInstantConnectionSetup$2$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDeviceConnected(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "CarLife_SDK"

    .line 2
    .line 3
    const-string v1, "address"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mInstantConnectionSetup$2$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->access$isConnecting(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mInstantConnectionSetup$2$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;

    .line 19
    .line 20
    invoke-static {v3}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->access$getMWirelessConnector(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;)Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, p1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->startConnect(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 31
    .line 32
    new-array v3, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v4, "WifiDirect onConnectionAttached"

    .line 35
    .line 36
    aput-object v4, v3, v1

    .line 37
    .line 38
    invoke-virtual {p1, v0, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mInstantConnectionSetup$2$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->onConnectionAttached()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p1

    .line 48
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    new-array v4, v4, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string v5, "wifi getByName exception "

    .line 54
    .line 55
    aput-object v5, v4, v1

    .line 56
    .line 57
    aput-object p1, v4, v2

    .line 58
    .line 59
    invoke-virtual {v3, v0, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method
