.class public final Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000s\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0005*\u00017\u0018\u00002\u00020\u00012\u00020\u0002:\u0001:B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0014\u0010\u000bJ\r\u0010\u0015\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0015\u0010\u000bJ\u0017\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001fR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010 R#\u0010\'\u001a\n \"*\u0004\u0018\u00010!0!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u001d\u0010,\u001a\u0004\u0018\u00010(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010$\u001a\u0004\u0008*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00100\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010$\u001a\u0004\u00084\u00105R\u0014\u00108\u001a\u0002078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109\u00a8\u0006;"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;",
        "Landroid/content/BroadcastReceiver;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;",
        "callback",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;)V",
        "Lr8/z;",
        "discoverDevice",
        "()V",
        "Landroid/bluetooth/BluetoothDevice;",
        "device",
        "Landroid/bluetooth/BluetoothSocket;",
        "connect",
        "(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;",
        "",
        "isConnected",
        "(Landroid/bluetooth/BluetoothDevice;)Z",
        "startDiscover",
        "terminate",
        "",
        "channel",
        "onTerminated",
        "(I)V",
        "Landroid/content/Context;",
        "Landroid/content/Intent;",
        "intent",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;",
        "Landroid/bluetooth/BluetoothAdapter;",
        "kotlin.jvm.PlatformType",
        "bluetoothAdapter$delegate",
        "Lr8/h;",
        "getBluetoothAdapter",
        "()Landroid/bluetooth/BluetoothAdapter;",
        "bluetoothAdapter",
        "",
        "targetName$delegate",
        "getTargetName",
        "()Ljava/lang/String;",
        "targetName",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;",
        "connectedCommunicator",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;",
        "isReady",
        "Z",
        "Landroid/content/IntentFilter;",
        "filter$delegate",
        "getFilter",
        "()Landroid/content/IntentFilter;",
        "filter",
        "com/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1",
        "discoverRunnable",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;",
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


# instance fields
.field private final bluetoothAdapter$delegate:Lr8/h;

.field private final callback:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;

.field private connectedCommunicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

.field private final context:Lcom/baidu/carlife/sdk/CarLifeContext;

.field private final discoverRunnable:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;

.field private final filter$delegate:Lr8/h;

.field private isReady:Z

.field private final targetName$delegate:Lr8/h;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 4
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->callback:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;

    .line 5
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$bluetoothAdapter$2;

    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$bluetoothAdapter$2;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V

    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->bluetoothAdapter$delegate:Lr8/h;

    .line 6
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$targetName$2;

    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$targetName$2;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V

    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->targetName$delegate:Lr8/h;

    .line 7
    sget-object p1, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$filter$2;->INSTANCE:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$filter$2;

    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->filter$delegate:Lr8/h;

    .line 8
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;

    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->discoverRunnable:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;ILg9/g;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;)V

    return-void
.end method

.method public static final synthetic access$discoverDevice(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->discoverDevice()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)Lcom/baidu/carlife/sdk/CarLifeContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isReady$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->isReady:Z

    .line 2
    .line 3
    return p0
.end method

.method private final connect(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .line 1
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method private final discoverDevice()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "CarLife_SDK"

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v6, "bluetoothAdapter?.isEnabled: "

    .line 23
    .line 24
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ", so return"

    .line 45
    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v3, v2, v1

    .line 56
    .line 57
    invoke-virtual {v0, v4, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->getTargetName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v5, 0x2

    .line 66
    const-string v6, "BluetoothDeviceDiscover connect device exception "

    .line 67
    .line 68
    const-string v7, "connected to "

    .line 69
    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    check-cast v0, Ljava/lang/Iterable;

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_3

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    move-object v9, v8

    .line 101
    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 102
    .line 103
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->getTargetName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-static {v9, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_2

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    move-object v8, v3

    .line 119
    :goto_0
    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    move-object v8, v3

    .line 123
    :goto_1
    if-eqz v8, :cond_d

    .line 124
    .line 125
    :try_start_0
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 126
    .line 127
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    new-array v10, v5, [Ljava/lang/Object;

    .line 132
    .line 133
    const-string v11, "start connect to targetDevice: "

    .line 134
    .line 135
    aput-object v11, v10, v1

    .line 136
    .line 137
    aput-object v9, v10, v2

    .line 138
    .line 139
    invoke-virtual {v0, v4, v10}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v8}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->connect(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    new-array v9, v5, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object v7, v9, v1

    .line 153
    .line 154
    aput-object v8, v9, v2

    .line 155
    .line 156
    invoke-virtual {v0, v4, v9}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    sget-object v7, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 162
    .line 163
    new-array v5, v5, [Ljava/lang/Object;

    .line 164
    .line 165
    aput-object v6, v5, v1

    .line 166
    .line 167
    aput-object v0, v5, v2

    .line 168
    .line 169
    invoke-virtual {v7, v4, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    if-eqz v3, :cond_5

    .line 173
    .line 174
    new-instance v0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 175
    .line 176
    invoke-direct {v0, v3, p0}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;-><init>(Landroid/bluetooth/BluetoothSocket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;)V

    .line 177
    .line 178
    .line 179
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->connectedCommunicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->callback:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;

    .line 182
    .line 183
    if-eqz v1, :cond_d

    .line 184
    .line 185
    invoke-interface {v1, v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;->onDeviceConnected(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_6

    .line 189
    .line 190
    :cond_5
    iget-boolean v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->isReady:Z

    .line 191
    .line 192
    if-eqz v0, :cond_d

    .line 193
    .line 194
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 195
    .line 196
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->main()Landroid/os/Handler;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->discoverRunnable:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;

    .line 201
    .line 202
    const-wide/16 v2, 0x7d0

    .line 203
    .line 204
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    .line 206
    .line 207
    goto/16 :goto_6

    .line 208
    .line 209
    :cond_6
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-eqz v0, :cond_8

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    check-cast v0, Ljava/lang/Iterable;

    .line 222
    .line 223
    new-instance v8, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-eqz v9, :cond_9

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    move-object v10, v9

    .line 243
    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 244
    .line 245
    const-string v11, "it"

    .line 246
    .line 247
    invoke-static {v10, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, v10}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    if-eqz v10, :cond_7

    .line 255
    .line 256
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_8
    move-object v8, v3

    .line 261
    :cond_9
    if-nez v8, :cond_a

    .line 262
    .line 263
    sget-object v8, Ls8/w;->a:Ls8/w;

    .line 264
    .line 265
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    if-eqz v9, :cond_b

    .line 274
    .line 275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 280
    .line 281
    :try_start_1
    sget-object v10, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 282
    .line 283
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    new-array v12, v5, [Ljava/lang/Object;

    .line 288
    .line 289
    const-string v13, "start connect to bondedDevices: "

    .line 290
    .line 291
    aput-object v13, v12, v1

    .line 292
    .line 293
    aput-object v11, v12, v2

    .line 294
    .line 295
    invoke-virtual {v10, v4, v12}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    invoke-direct {p0, v9}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->connect(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    new-array v11, v5, [Ljava/lang/Object;

    .line 307
    .line 308
    aput-object v7, v11, v1

    .line 309
    .line 310
    aput-object v9, v11, v2

    .line 311
    .line 312
    invoke-virtual {v10, v4, v11}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    .line 314
    .line 315
    goto :goto_5

    .line 316
    :catch_1
    move-exception v9

    .line 317
    sget-object v10, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 318
    .line 319
    new-array v11, v5, [Ljava/lang/Object;

    .line 320
    .line 321
    aput-object v6, v11, v1

    .line 322
    .line 323
    aput-object v9, v11, v2

    .line 324
    .line 325
    invoke-virtual {v10, v4, v11}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_b
    :goto_5
    if-eqz v3, :cond_c

    .line 330
    .line 331
    new-instance v0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 332
    .line 333
    invoke-direct {v0, v3, p0}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;-><init>(Landroid/bluetooth/BluetoothSocket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;)V

    .line 334
    .line 335
    .line 336
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->connectedCommunicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 337
    .line 338
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->callback:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;

    .line 339
    .line 340
    if-eqz v1, :cond_d

    .line 341
    .line 342
    invoke-interface {v1, v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;->onDeviceConnected(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_c
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_d

    .line 351
    .line 352
    iget-boolean v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->isReady:Z

    .line 353
    .line 354
    if-eqz v0, :cond_d

    .line 355
    .line 356
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 357
    .line 358
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->main()Landroid/os/Handler;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->discoverRunnable:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;

    .line 363
    .line 364
    const-wide/16 v2, 0x1388

    .line 365
    .line 366
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    .line 368
    .line 369
    :cond_d
    :goto_6
    return-void
.end method

.method private final getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->bluetoothAdapter$delegate:Lr8/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->filter$delegate:Lr8/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/IntentFilter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTargetName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->targetName$delegate:Lr8/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isConnected"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return p1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v2, "BluetoothDeviceDiscover isConnected exception "

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object v2, v1, v3

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    aput-object p1, v1, v2

    .line 41
    .line 42
    const-string p1, "CarLife_SDK"

    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_5

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const v1, -0x5b36f014

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x0

    .line 27
    const-string v5, "CarLife_SDK"

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const v1, 0x42f3be3f

    .line 32
    .line 33
    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 47
    .line 48
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    sget-object p2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-array v1, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v6, "bluetoothReceiver ACTION_CONNECTION_STATE_CHANGED "

    .line 61
    .line 62
    aput-object v6, v1, v4

    .line 63
    .line 64
    aput-object v0, v1, v2

    .line 65
    .line 66
    invoke-virtual {p2, v5, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    if-ne p1, v3, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->connectedCommunicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 72
    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 76
    .line 77
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->main()Landroid/os/Handler;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->discoverRunnable:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 97
    .line 98
    const/16 v0, 0xa

    .line 99
    .line 100
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    const/16 p2, 0xc

    .line 105
    .line 106
    if-ne p1, p2, :cond_4

    .line 107
    .line 108
    iget-boolean p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->isReady:Z

    .line 109
    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 113
    .line 114
    invoke-interface {p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->main()Landroid/os/Handler;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->discoverRunnable:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;

    .line 119
    .line 120
    const-wide/16 v6, 0x3e8

    .line 121
    .line 122
    invoke-virtual {p2, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    .line 124
    .line 125
    :cond_4
    sget-object p2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 126
    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-array v0, v3, [Ljava/lang/Object;

    .line 132
    .line 133
    const-string v1, "bluetoothReceiver ACTION_STATE_CHANGED "

    .line 134
    .line 135
    aput-object v1, v0, v4

    .line 136
    .line 137
    aput-object p1, v0, v2

    .line 138
    .line 139
    invoke-virtual {p2, v5, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_0
    return-void
.end method

.method public onTerminated(I)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->connectedCommunicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->main()Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->discoverRunnable:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final startDiscover()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->isReady:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->getFilter()Landroid/content/IntentFilter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, p0, v1}, Lu3/f;->g(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->main()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->discoverRunnable:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final terminate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->isReady:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->connectedCommunicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->terminate()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
