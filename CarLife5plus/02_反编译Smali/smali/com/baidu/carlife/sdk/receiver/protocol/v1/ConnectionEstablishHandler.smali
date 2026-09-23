.class public final Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010#\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u001f\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u0017\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\u0017\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0005J\u0015\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u0015\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010!R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00180\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010%\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010(\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010+\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001c\u0010/\u001a\n .*\u0004\u0018\u00010-0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0017\u00101\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u00081\u0010&\u001a\u0004\u00082\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00106\u00a8\u00068"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;",
        "Lcom/baidu/carlife/sdk/internal/transport/TransportListener;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;)V",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "Lr8/z;",
        "handleProtocolVersionMatch",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "handleMDInfo",
        "sendHuInfo",
        "sendAuthRequest",
        "handleAuthResponse",
        "handleAuthResult",
        "",
        "onReceiveMessage",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z",
        "onSendMessage",
        "onConnectionAttached",
        "onConnectionReattached",
        "onConnectionEstablished",
        "onConnectionDetached",
        "Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;",
        "listener",
        "addConnectProgressListener",
        "(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V",
        "removeConnectProgressListener",
        "",
        "progress",
        "onProgress",
        "(I)V",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "",
        "progressListeners",
        "Ljava/util/Set;",
        "currentProgress",
        "I",
        "",
        "connectTime",
        "Ljava/lang/String;",
        "",
        "lastReceiveMessageTime",
        "J",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "carLifePrefs",
        "Landroid/content/SharedPreferences;",
        "stored",
        "getStored",
        "()I",
        "Ljava/lang/Runnable;",
        "heartBeatTask",
        "Ljava/lang/Runnable;",
        "mAuthenticationTimeTask",
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
.field private final carLifePrefs:Landroid/content/SharedPreferences;

.field private connectTime:Ljava/lang/String;

.field private final context:Lcom/baidu/carlife/sdk/CarLifeContext;

.field private currentProgress:I

.field private final heartBeatTask:Ljava/lang/Runnable;

.field private volatile lastReceiveMessageTime:J

.field private final mAuthenticationTimeTask:Ljava/lang/Runnable;

.field private final progressListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final stored:I


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->progressListeners:Ljava/util/Set;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->connectTime:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "CarLifePrefs"

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->carLifePrefs:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    const-string v0, "CONNECT_HEARTBEAT_TIMEOUT"

    .line 36
    .line 37
    const/16 v1, 0x1e

    .line 38
    .line 39
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->stored:I

    .line 44
    .line 45
    new-instance p1, Li5/a;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-direct {p1, p0, v0}, Li5/a;-><init>(Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;I)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->heartBeatTask:Ljava/lang/Runnable;

    .line 52
    .line 53
    new-instance p1, Li5/a;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-direct {p1, p0, v0}, Li5/a;-><init>(Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;I)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->mAuthenticationTimeTask:Ljava/lang/Runnable;

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic a(Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->mAuthenticationTimeTask$lambda$1(Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->heartBeatTask$lambda$0(Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final handleAuthResponse(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "AuthenticationStep2 \u83b7\u53d6\u79fb\u52a8\u7aef\u6821\u9a8c\u7801"

    .line 8
    .line 9
    aput-object v4, v2, v3

    .line 10
    .line 11
    const-string v4, "CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {v0, v4, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/baidu/carlife/sdk/util/TimerUtils;->INSTANCE:Lcom/baidu/carlife/sdk/util/TimerUtils;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->mAuthenticationTimeTask:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v2, v5}, Lcom/baidu/carlife/sdk/util/TimerUtils;->stop(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    sget-object v6, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 24
    .line 25
    const v2, 0x1804a

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    const/4 v10, 0x4

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v7, 0x1

    .line 35
    const/4 v9, 0x0

    .line 36
    invoke-static/range {v6 .. v11}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    instance-of v5, p2, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p2, 0x0

    .line 52
    :goto_0
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->getEncryptValue()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v6, "AuthenticationStep2.1 authenticationInfo = "

    .line 67
    .line 68
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->getEncryptValue()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    new-array v6, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v5, v6, v3

    .line 85
    .line 86
    invoke-virtual {v0, v4, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getDeviceInfo()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-eqz v5, :cond_1

    .line 94
    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBrand()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getModel()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getSdk()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->connectTime:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    const-string v5, ""

    .line 132
    .line 133
    :goto_1
    const-string v6, "AuthenticationStep2.2 mdInfoAuthen = "

    .line 134
    .line 135
    invoke-static {v6, v5}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    new-array v7, v1, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v6, v7, v3

    .line 142
    .line 143
    invoke-virtual {v0, v4, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->getEncryptValue()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-static {v5, p2}, Lcom/baidu/encryption/EncryptionUtils;->getVerifyResult(Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v6, "AuthenticationStep2.3 encryptionInfo = "

    .line 157
    .line 158
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    new-array v1, v1, [Ljava/lang/Object;

    .line 169
    .line 170
    aput-object v5, v1, v3

    .line 171
    .line 172
    invoke-virtual {v0, v4, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    move v3, p2

    .line 176
    :cond_2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p2, v3}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;->setAuthenResult(Z)Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {v2, p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method private final handleAuthResult(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const v1, 0x1804c

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->getAuthenResult()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->onConnectionEstablished()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->onConnectionAuthenFailed()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final handleMDInfo(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-interface {p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->setDeviceInfo(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->sendHuInfo(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->sendAuthRequest(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final handleProtocolVersionMatch(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getStatisticsInfo()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getCarlifeProtocolVersion()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-interface {p1, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->setCarlifeVersion(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getMatchStatus()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne p2, v1, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object v2, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 38
    .line 39
    const p2, 0x18027

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/4 v6, 0x4

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 58
    .line 59
    .line 60
    const/16 p1, 0x1e

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->onProgress(I)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lcom/baidu/carlife/sdk/util/TimerUtils;->INSTANCE:Lcom/baidu/carlife/sdk/util/TimerUtils;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->heartBeatTask:Ljava/lang/Runnable;

    .line 68
    .line 69
    const-wide/16 v2, 0xa

    .line 70
    .line 71
    const-wide/16 v4, 0x3e8

    .line 72
    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/carlife/sdk/util/TimerUtils;->schedule(Ljava/lang/Runnable;JJ)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    const/4 p2, 0x0

    .line 78
    invoke-interface {p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->setVersionSupport(Z)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->onConnectionVersionNotSupprt()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private static final heartBeatTask$lambda$0(Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->lastReceiveMessageTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget v2, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->stored:I

    .line 9
    .line 10
    mul-int/lit16 v2, v2, 0x3e8

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    const-string v6, "CarLife_SDK"

    .line 16
    .line 17
    cmp-long v7, v0, v2

    .line 18
    .line 19
    if-lez v7, :cond_0

    .line 20
    .line 21
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 22
    .line 23
    new-array v1, v5, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v2, "ConnectionEstablishHandler heartbeat timeout"

    .line 26
    .line 27
    aput-object v2, v1, v4

    .line 28
    .line 29
    invoke-virtual {v0, v6, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 33
    .line 34
    invoke-interface {p0}, Lcom/baidu/carlife/sdk/CarLifeContext;->terminate()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "ConnectionEstablishHandler message delay "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    iget-wide v7, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->lastReceiveMessageTime:J

    .line 52
    .line 53
    sub-long/2addr v2, v7

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-array v2, v5, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v1, v2, v4

    .line 64
    .line 65
    invoke-virtual {v0, v6, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 69
    .line 70
    const/4 v0, 0x2

    .line 71
    const v1, 0x20002

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, v0, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(II)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private static final mAuthenticationTimeTask$lambda$1(Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;)V
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
    const-string v2, "Carlife Connect authentication failed."

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
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 17
    .line 18
    invoke-interface {p0}, Lcom/baidu/carlife/sdk/CarLifeContext;->terminate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final sendAuthRequest(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "AuthenticationStep1 \u83b7\u53d6MD\u4fe1\u606f\uff0c\u5f00\u542f\u9274\u6743"

    .line 8
    .line 9
    aput-object v4, v2, v3

    .line 10
    .line 11
    const-string v4, "CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {v0, v4, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v5, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 17
    .line 18
    const v2, 0x18048

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const/4 v9, 0x4

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-static/range {v5 .. v10}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v5, Ljava/util/Date;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    const-string v8, "yyyy-MM-dd-HH-mm-ss"

    .line 43
    .line 44
    invoke-static {v5, v6, v7, v8}, Lcom/baidu/carlife/sdk/util/DatesKt;->getDateFormat(Ljava/util/Date;JLjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iput-object v5, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->connectTime:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v6, "2.0;"

    .line 57
    .line 58
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v6, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->connectTime:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, "AuthenticationStep1.1 randomValue = "

    .line 71
    .line 72
    invoke-static {v6, v5}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-array v1, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v6, v1, v3

    .line 79
    .line 80
    invoke-virtual {v0, v4, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, v5}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;->setRandomValue(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lcom/baidu/carlife/sdk/util/TimerUtils;->INSTANCE:Lcom/baidu/carlife/sdk/util/TimerUtils;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->mAuthenticationTimeTask:Ljava/lang/Runnable;

    .line 104
    .line 105
    const-wide/16 v1, 0x7530

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1, v2}, Lcom/baidu/carlife/sdk/util/TimerUtils;->schedule(Ljava/lang/Runnable;J)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private final sendHuInfo(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 2
    .line 3
    const v1, 0x18003

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
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getOsType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setOs(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setBoard(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setBootloader(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setBrand(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCpuAbi(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCpuAbi2(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setDevice(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setDisplay(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setFingerprint(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setHardware(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setHost(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setManufacturer(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setModel(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setProduct(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setSerial(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCodename(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setIncremental(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setSdk(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setSdkInt(I)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setRelease(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getVersionName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCarlifeversion(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method


# virtual methods
.method public final declared-synchronized addConnectProgressListener(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "listener"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConnectionState()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConnectionState()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->currentProgress:I

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;->onProgress(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->progressListeners:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p1
.end method

.method public final getStored()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->stored:I

    .line 2
    .line 3
    return v0
.end method

.method public onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->setEncryptionEnabled(Z)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 11
    .line 12
    const v2, 0x18001

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getProtocolVersion()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;->setMajorVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v2, v3}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;->setMinorVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->onProgress(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final synthetic onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->b(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->currentProgress:I

    .line 8
    .line 9
    sget-object p1, Lcom/baidu/carlife/sdk/util/TimerUtils;->INSTANCE:Lcom/baidu/carlife/sdk/util/TimerUtils;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->heartBeatTask:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/baidu/carlife/sdk/util/TimerUtils;->stop(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x46

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->onProgress(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onConnectionReattached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->setEncryptionEnabled(Z)V

    .line 8
    .line 9
    .line 10
    iput v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->currentProgress:I

    .line 11
    .line 12
    sget-object p1, Lcom/baidu/carlife/sdk/util/TimerUtils;->INSTANCE:Lcom/baidu/carlife/sdk/util/TimerUtils;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->heartBeatTask:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/baidu/carlife/sdk/util/TimerUtils;->stop(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final synthetic onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->f(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final declared-synchronized onProgress(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->currentProgress:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->progressListeners:Ljava/util/Set;

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;

    .line 23
    .line 24
    invoke-interface {v1, p1}, Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;->onProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method

.method public onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "message"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->lastReceiveMessageTime:J

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sparse-switch v0, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->handleAuthResult(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->handleAuthResponse(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->handleMDInfo(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->handleProtocolVersionMatch(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 p1, 0x0

    .line 41
    return p1

    .line 42
    nop

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_3
        0x10004 -> :sswitch_2
        0x10049 -> :sswitch_1
        0x1004b -> :sswitch_0
    .end sparse-switch
.end method

.method public onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "message"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const p2, 0x18009

    .line 16
    .line 17
    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    const/16 p1, 0x64

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->onProgress(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final declared-synchronized removeConnectProgressListener(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "listener"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->progressListeners:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method
