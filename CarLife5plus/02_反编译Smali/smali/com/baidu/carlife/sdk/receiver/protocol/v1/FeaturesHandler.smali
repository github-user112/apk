.class public final Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u000eJ\u001f\u0010\u0014\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0016R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;",
        "Lcom/baidu/carlife/sdk/internal/transport/TransportListener;",
        "Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;",
        "encryptionTool",
        "Ljava/security/PublicKey;",
        "publicKey",
        "<init>",
        "(Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;Ljava/security/PublicKey;)V",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "Lr8/z;",
        "handleFeatureRequest",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "handleRequestPublicKey",
        "handleAESKeyRequest",
        "handleEncryptReady",
        "handleMDCarlifeDataSubscribeDone",
        "",
        "onReceiveMessage",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z",
        "Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;",
        "Ljava/security/PublicKey;",
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
.field private final encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;Ljava/security/PublicKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->publicKey:Ljava/security/PublicKey;

    .line 7
    .line 8
    return-void
.end method

.method private final handleAESKeyRequest(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "CarLife_SDK"

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->publicKey:Ljava/security/PublicKey;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p2, 0x0

    .line 26
    :goto_0
    if-eqz p2, :cond_2

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->getAesKey()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v4, "it.aesKey"

    .line 35
    .line 36
    invoke-static {p2, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->setEncryptKey(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v5, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 43
    .line 44
    const p2, 0x1806d

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/4 v9, 0x4

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v6, 0x1

    .line 54
    const/4 v8, 0x0

    .line 55
    invoke-static/range {v5 .. v10}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    move-object p1, v0

    .line 65
    sget-object p2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    const-string v4, "handleAESKeyRequest exception: "

    .line 71
    .line 72
    aput-object v4, v0, v2

    .line 73
    .line 74
    aput-object p1, v0, v1

    .line 75
    .line 76
    invoke-virtual {p2, v3, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    return-void

    .line 80
    :cond_3
    :goto_2
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 81
    .line 82
    new-array p2, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    const-string v0, "can not handle aes key when CONTENT_ENCRYPTION not enabled"

    .line 85
    .line 86
    aput-object v0, p2, v2

    .line 87
    .line 88
    invoke-virtual {p1, v3, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private final handleEncryptReady(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const p2, 0x1806f

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-interface {p1, v0, p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(II)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->publicKey:Ljava/security/PublicKey;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->setEncryptionEnabled(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final handleFeatureRequest(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getFeatureConfigList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-nez p2, :cond_2

    .line 20
    .line 21
    :cond_1
    sget-object p2, Ls8/w;->a:Ls8/w;

    .line 22
    .line 23
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;->getKey()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "feature.key"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;->getValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-interface {p1, v1, v0, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->setFeature(Ljava/lang/String;IZ)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 58
    .line 59
    const p2, 0x18052

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/4 v7, 0x4

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v4, 0x1

    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static/range {v3 .. v8}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->listFeatures()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/baidu/carlife/sdk/internal/protocol/PayloadConvertersKt;->builder(Ljava/util/List;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "CONFIG_HU_BT_NAME"

    .line 83
    .line 84
    const-string v2, ""

    .line 85
    .line 86
    invoke-interface {p1, v1, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setHuBtName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "CONFIG_HU_BT_MAC"

    .line 97
    .line 98
    invoke-interface {p1, v1, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setHuBtMAC(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p2, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private final handleMDCarlifeDataSubscribeDone(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    const v0, 0x18044

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final handleRequestPublicKey(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->encryptionTool:Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->publicKey:Ljava/security/PublicKey;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 20
    .line 21
    const v1, 0x1806b

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v4, 0x4

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p2}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;->setRsaPublicKey(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v0, p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    :goto_0
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    new-array p2, p2, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v0, "can not request public key when CONTENT_ENCRYPTION not enabled"

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    aput-object v0, p2, v1

    .line 64
    .line 65
    const-string v0, "CarLife_SDK"

    .line 66
    .line 67
    invoke-virtual {p1, v0, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final synthetic onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->a(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
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

.method public final synthetic onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->c(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->d(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionReattached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->e(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
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

.method public onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 1

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
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sparse-switch v0, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->handleEncryptReady(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->handleAESKeyRequest(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->handleRequestPublicKey(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->handleFeatureRequest(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :sswitch_4
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/receiver/protocol/v1/FeaturesHandler;->handleMDCarlifeDataSubscribeDone(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    nop

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x10044 -> :sswitch_4
        0x10051 -> :sswitch_3
        0x1006a -> :sswitch_2
        0x1006c -> :sswitch_1
        0x1006e -> :sswitch_0
    .end sparse-switch
.end method

.method public final synthetic onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/b;->b(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
