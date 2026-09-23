.class public final Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;
.super Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002BG\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\'\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\"\u0010!J\u0017\u0010$\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0012J\u000f\u0010\'\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0012J\u000f\u0010(\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0012J\u0017\u0010*\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008*\u0010%J\u000f\u0010+\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0012J\u000f\u0010,\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008,\u0010\u0012J\u0017\u0010/\u001a\u00020\u00102\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00101\u001a\u00020\u00102\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u00081\u00100J\u0017\u00102\u001a\u00020-2\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u00082\u00103J\u0017\u00104\u001a\u00020-2\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u00084\u00103J\u001f\u00105\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00085\u00106R \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u00107R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010<\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0014\u0010?\u001a\u00020>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0014\u0010B\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010C\u00a8\u0006D"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;",
        "Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;",
        "Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;",
        "Landroid/content/Context;",
        "context",
        "",
        "channel",
        "cuid",
        "",
        "",
        "features",
        "",
        "",
        "configs",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V",
        "Lr8/z;",
        "initEncryption",
        "()V",
        "onConnectionDetached",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "onConnectionReattached",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;)V",
        "key",
        "feature",
        "setFeature",
        "(Ljava/lang/String;I)V",
        "",
        "isLocal",
        "(Ljava/lang/String;IZ)V",
        "Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;",
        "listener",
        "addConnectProgressListener",
        "(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V",
        "removeConnectProgressListener",
        "keyCode",
        "onKeyEvent",
        "(I)V",
        "connect",
        "stopConnect",
        "disconnect",
        "type",
        "setConnectType",
        "ready",
        "terminate",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "postMessage",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "sendMessage",
        "encrypt",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "decrypt",
        "initStatisticsInfo",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Ljava/util/Map;",
        "Ljava/security/PublicKey;",
        "publicKey",
        "Ljava/security/PublicKey;",
        "Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;",
        "encryptionTool",
        "Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;",
        "Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;",
        "transport",
        "Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;",
        "Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;",
        "establishHandler",
        "Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;",
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
.field private encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

.field private final establishHandler:Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;

.field private final features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private publicKey:Ljava/security/PublicKey;

.field private final transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

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
    const-string v0, "cuid"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "features"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "configs"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, p5}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    iput-object p4, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->features:Ljava/util/Map;

    .line 30
    .line 31
    const/4 p1, 0x4

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p5, "VEHICLE_PROTOCOL_VERSION"

    .line 37
    .line 38
    invoke-virtual {p0, p5, p1}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->setProtocolVersion(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setChannel(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, p3}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setCuid(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->getVersionCode()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionCode(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->getVersionName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 p2, 0x0

    .line 80
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectSuccessCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectTime(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->setStatisticsInfo(Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;)V

    .line 99
    .line 100
    .line 101
    const-string p1, "CONFIG_CONTENT_ENCRYPTION"

    .line 102
    .line 103
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    .line 117
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->initEncryption()V

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {p0, p4}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->setFeatures(Ljava/util/Map;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 124
    .line 125
    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 126
    .line 127
    .line 128
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 129
    .line 130
    new-instance p1, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;

    .line 131
    .line 132
    const/4 p2, 0x1

    .line 133
    invoke-direct {p1, p2}, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;-><init>(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 137
    .line 138
    .line 139
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;

    .line 140
    .line 141
    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->establishHandler:Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;

    .line 150
    .line 151
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 152
    .line 153
    iget-object p3, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->publicKey:Ljava/security/PublicKey;

    .line 154
    .line 155
    invoke-direct {p1, p2, p3}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;-><init>(Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;Ljava/security/PublicKey;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method private final initEncryption()V
    .locals 7

    .line 1
    const-string v0, "CONTENT_ENCRYPTION"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    :try_start_0
    const-string v3, "RSA"

    .line 6
    .line 7
    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ljava/security/SecureRandom;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v5, 0x800

    .line 17
    .line 18
    invoke-virtual {v3, v5, v4}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iput-object v4, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->publicKey:Ljava/security/PublicKey;

    .line 30
    .line 31
    new-instance v4, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 32
    .line 33
    sget-object v5, Lcom/baidu/carlife/sdk/internal/RsaEncryptor;->Companion:Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v6, "it.private"

    .line 40
    .line 41
    invoke-static {v3, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static {v5, v3, v6, v2, v6}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;->withPrivateKey$default(Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;Ljava/security/PrivateKey;Ljava/lang/String;ILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-direct {v4, v3}, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;-><init>(Lcom/baidu/carlife/sdk/internal/RsaEncryptor;)V

    .line 50
    .line 51
    .line 52
    iput-object v4, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->setFeature(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    move-exception v3

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0, v0, v4}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->setFeature(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 64
    .line 65
    new-array v2, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    const-string v5, "CarLifeReceiverImpl initEncryption exception: "

    .line 68
    .line 69
    aput-object v5, v2, v4

    .line 70
    .line 71
    aput-object v3, v2, v1

    .line 72
    .line 73
    const-string v1, "CarLife_SDK"

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public addConnectProgressListener(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->establishHandler:Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->addConnectProgressListener(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public connect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->connect()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public decrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->decrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object v0

    .line 18
    :cond_1
    :goto_0
    return-object p1
.end method

.method public disconnect()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->terminate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public encrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->encrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object v0

    .line 18
    :cond_1
    :goto_0
    return-object p1
.end method

.method public initStatisticsInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "channel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cuid"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setChannel(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setCuid(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->getVersionCode()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionCode(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->getVersionName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectSuccessCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectTime(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->setStatisticsInfo(Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onConnectionDetached()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->d(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->features:Ljava/util/Map;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->setFeatures(Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
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
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->e(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->features:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->setFeatures(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onKeyEvent(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public ready()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->ready()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeConnectProgressListener(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->establishHandler:Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/ConnectionEstablishHandler;->removeConnectProgressListener(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sendMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->sendMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setConnectType(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const-string v1, "setConnectType, "

    .line 4
    .line 5
    invoke-static {p1, v1}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v1, v2, v3

    .line 14
    .line 15
    const-string v1, "CarLife_SDK"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "CONNECT_TYPE"

    .line 21
    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->setFeature(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->configConnectType()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->connect()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setFeature(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->setFeature(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->setFeature(Ljava/lang/String;IZ)V

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->features:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public stopConnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->stopConnect()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public terminate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiverImpl;->transport:Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->terminate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
