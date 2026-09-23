.class public final Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;
.implements Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;,
        Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 02\u00020\u00012\u00020\u0002:\u000210B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001f\u0010\u0011\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000fJ\u001f\u0010\u0015\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000fJ\r\u0010\u0016\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0013J\u0017\u0010\u0018\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u001bJ\r\u0010\u001c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001c\u0010\u0017J\u0015\u0010\u001d\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001d\u0010\u0013R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001eR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u001fR\u0014\u0010!\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010$\u001a\u0004\u0018\u00010#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0014\u0010\'\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010)R\u001b\u0010/\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;",
        "callback",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;)V",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;",
        "communicator",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "Lr8/z;",
        "dispatchMessage",
        "(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "handleWirelessInfoRequest",
        "handleTargetInfoRequest",
        "requestIp",
        "(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V",
        "handleResponseIp",
        "handleResponseWirlessStatus",
        "connect",
        "()V",
        "onDeviceConnected",
        "Landroid/net/wifi/p2p/WifiP2pInfo;",
        "info",
        "(Landroid/net/wifi/p2p/WifiP2pInfo;)V",
        "terminate",
        "process",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;",
        "wifiDirectManager",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;",
        "",
        "wifiDirectName",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isProcessing",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;",
        "bluetoothDeviceDiscover$delegate",
        "Lr8/h;",
        "getBluetoothDeviceDiscover",
        "()Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;",
        "bluetoothDeviceDiscover",
        "Companion",
        "Callback",
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


# static fields
.field public static final Companion:Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Companion;

.field public static final FREQUENCY_2_4G:I = 0x0

.field public static final FREQUENCY_5G:I = 0x1

.field public static final TYPE_ALL:I = 0x3

.field public static final TYPE_BT_AUDIO:I = 0x1

.field public static final TYPE_BT_AUDIO_NONE:I = 0x0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_DIRECT:I = 0x2


# instance fields
.field private final bluetoothDeviceDiscover$delegate:Lr8/h;

.field private final callback:Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;

.field private communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

.field private final context:Lcom/baidu/carlife/sdk/CarLifeContext;

.field private final isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final wifiDirectManager:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

.field private final wifiDirectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->Companion:Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->callback:Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;

    .line 17
    .line 18
    new-instance p2, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 19
    .line 20
    invoke-direct {p2, p1, p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->wifiDirectManager:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 24
    .line 25
    const-string p2, "CONFIG_WIFI_DIRECT_NAME"

    .line 26
    .line 27
    invoke-interface {p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConfig(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->wifiDirectName:Ljava/lang/String;

    .line 34
    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$bluetoothDeviceDiscover$2;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$bluetoothDeviceDiscover$2;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->bluetoothDeviceDiscover$delegate:Lr8/h;

    .line 53
    .line 54
    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;)Lcom/baidu/carlife/sdk/CarLifeContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$requestIp(Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->requestIp(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final dispatchMessage(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->handleResponseWirlessStatus(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->handleResponseIp(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->handleTargetInfoRequest(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->handleWirelessInfoRequest(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x100001 -> :sswitch_3
        0x100004 -> :sswitch_2
        0x100007 -> :sswitch_1
        0x100008 -> :sswitch_0
    .end sparse-switch
.end method

.method private final getBluetoothDeviceDiscover()Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->bluetoothDeviceDiscover$delegate:Lr8/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;

    .line 8
    .line 9
    return-object v0
.end method

.method private final handleResponseIp(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, v1

    .line 14
    :goto_0
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "handleResponseIp is : "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 37
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object v1, v2, v3

    .line 41
    .line 42
    const-string v1, "Bluetooth_CarLife_SDK"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "wirelessIp.wirlessip"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->callback:Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {p2, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$Callback;->onDeviceConnected(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->wifiDirectManager:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->isConnected()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 86
    .line 87
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$handleResponseIp$1;

    .line 88
    .line 89
    invoke-direct {v0, p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$handleResponseIp$1;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V

    .line 90
    .line 91
    .line 92
    const-wide/16 v1, 0x3e8

    .line 93
    .line 94
    invoke-interface {p2, v1, v2, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->postDelayed(JLf9/a;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method private final handleResponseWirlessStatus(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v1, "handleResponseWirlessStatus"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 10
    .line 11
    const-string v1, "Bluetooth_CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeWirlessStatusProto.CarlifeWirlessStatus"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;->getStatus()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-interface {p2, p1}, Lcom/baidu/carlife/sdk/WirlessStatusListener;->onDeviceWirlessStatus(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final handleTargetInfoRequest(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 6

    .line 1
    sget-object p2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v1, "handleTargetInfoRequest: MSG_WIRELESS_TARGET_INFO_RESPONSE"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 10
    .line 11
    const-string v1, "Bluetooth_CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {p2, v1, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->wifiDirectName:Ljava/lang/String;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 22
    .line 23
    const p2, 0x108005

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->wifiDirectName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;->setWifiDeviceName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, ""

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;->setTargetInfo(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p2, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->wifiDirectManager:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->isConnected()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->requestIp(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->wifiDirectManager:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->discoverable()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private final handleWirelessInfoRequest(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 9

    .line 1
    sget-object p2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "handleWirelessInfoRequest: MSG_WIRELESS_INFO_RESPONSE"

    .line 8
    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    const-string v2, "Bluetooth_CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {p2, v2, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 17
    .line 18
    const p2, 0x108002

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const/4 v7, 0x4

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static/range {v3 .. v8}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "CONFIG_WIRLESS_TYPE"

    .line 44
    .line 45
    invoke-interface {v2, v3, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v0, v2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;->setWirlessType(I)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 60
    .line 61
    const-string v3, "CONFIG_WIRLESS_FREQUENCY"

    .line 62
    .line 63
    invoke-interface {v2, v3, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/Number;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;->setWifiFrequency(I)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private final requestIp(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 2
    .line 3
    const v1, 0x108006

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    move-object p1, v0

    .line 24
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v2, "InstantConnectionSetup requestIp exception :"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v2, v1, v3

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    aput-object p1, v1, v2

    .line 36
    .line 37
    const-string p1, "CarLife_SDK"

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->getBluetoothDeviceDiscover()Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->startDiscover()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDeviceConnected(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->requestIp(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V

    :cond_0
    return-void
.end method

.method public onDeviceConnected(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V
    .locals 2

    const-string v0, "communicator"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$onDeviceConnected$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$onDeviceConnected$1;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V

    .line 2
    new-instance p1, Lcom/tencent/bugly/proguard/j0;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/tencent/bugly/proguard/j0;-><init>(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final process(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V
    .locals 8

    .line 1
    const-string v0, "communicator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "CarLife_SDK"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 19
    .line 20
    new-array v0, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v1, "InstantConnectionSetup multiple bluetooth socket!!!"

    .line 23
    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    invoke-virtual {p1, v3, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 31
    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 34
    .line 35
    .line 36
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    invoke-direct {p0, p1, v4}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->dispatchMessage(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    move-object v0, v4

    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :catch_1
    move-exception p1

    .line 54
    move-object v4, v0

    .line 55
    :goto_1
    :try_start_2
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 56
    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v7, "InstantConnectionSetup process exception: "

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object p1, v1, v2

    .line 81
    .line 82
    invoke-virtual {v5, v3, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 96
    .line 97
    return-void

    .line 98
    :goto_2
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 101
    .line 102
    .line 103
    :cond_3
    throw p1
.end method

.method public final terminate()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->getBluetoothDeviceDiscover()Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->terminate()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->wifiDirectManager:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->terminate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
