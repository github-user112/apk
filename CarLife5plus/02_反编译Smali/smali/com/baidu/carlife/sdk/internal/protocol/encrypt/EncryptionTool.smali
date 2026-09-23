.class public final Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0012R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR$\u0010 \u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010\n\u00a8\u0006!"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;",
        "",
        "Lcom/baidu/carlife/sdk/internal/RsaEncryptor;",
        "rsaEncryptor",
        "<init>",
        "(Lcom/baidu/carlife/sdk/internal/RsaEncryptor;)V",
        "",
        "publicKey",
        "Lr8/z;",
        "prepare",
        "(Ljava/lang/String;)V",
        "",
        "isSender",
        "reset",
        "(Z)V",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "encrypt",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "decrypt",
        "Lcom/baidu/carlife/sdk/internal/RsaEncryptor;",
        "Lcom/baidu/carlife/sdk/internal/AesEncryptor;",
        "aesEncryptor",
        "Lcom/baidu/carlife/sdk/internal/AesEncryptor;",
        "",
        "",
        "decryptExcludes",
        "Ljava/util/Set;",
        "value",
        "getEncryptKey",
        "()Ljava/lang/String;",
        "setEncryptKey",
        "encryptKey",
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
.field private aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

.field private final decryptExcludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rsaEncryptor:Lcom/baidu/carlife/sdk/internal/RsaEncryptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;-><init>(Lcom/baidu/carlife/sdk/internal/RsaEncryptor;ILg9/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/carlife/sdk/internal/RsaEncryptor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->rsaEncryptor:Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->decryptExcludes:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/sdk/internal/RsaEncryptor;ILg9/g;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;-><init>(Lcom/baidu/carlife/sdk/internal/RsaEncryptor;)V

    return-void
.end method


# virtual methods
.method public final decrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 12

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "CarLife_SDK"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 19
    .line 20
    new-array v1, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v3, "EncryptionTool encryptor does not initialized properly"

    .line 23
    .line 24
    aput-object v3, v1, v2

    .line 25
    .line 26
    invoke-virtual {v0, v4, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->decryptExcludes:Ljava/util/Set;

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->copy()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {v5, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->resizeBuffer(I)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    iget-object v6, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 55
    .line 56
    invoke-static {v6}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    invoke-virtual {v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    invoke-virtual/range {v6 .. v11}, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->decrypt([BII[BI)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {v5, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setPayloadSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-object v5

    .line 87
    :catch_0
    move-exception v0

    .line 88
    sget-object v6, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    const/4 v8, 0x4

    .line 95
    new-array v8, v8, [Ljava/lang/Object;

    .line 96
    .line 97
    const-string v9, "EncryptionTool decrypt exception "

    .line 98
    .line 99
    aput-object v9, v8, v2

    .line 100
    .line 101
    aput-object v0, v8, v3

    .line 102
    .line 103
    const-string v0, "  "

    .line 104
    .line 105
    const/4 v2, 0x2

    .line 106
    aput-object v0, v8, v2

    .line 107
    .line 108
    const/4 v0, 0x3

    .line 109
    aput-object v7, v8, v0

    .line 110
    .line 111
    invoke-virtual {v6, v4, v8}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->decryptExcludes:Ljava/util/Set;

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 124
    .line 125
    .line 126
    return-object p1
.end method

.method public final encrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 9

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->copy()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 19
    .line 20
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v2, v3, v1}, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->outputSize(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setPayloadSize(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v2, v1

    .line 36
    invoke-virtual {v0, v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->resizeBuffer(I)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 40
    .line 41
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    invoke-virtual/range {v3 .. v8}, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->encrypt([BII[BI)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 69
    .line 70
    const-string v0, "encryptor does not initialized properly"

    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public final getEncryptKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->rsaEncryptor:Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 13
    .line 14
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->getKey()[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor;->encryptToBase64([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    const-string v1, "you must init before request encrypt key"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final prepare(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "publicKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/baidu/carlife/sdk/internal/RsaEncryptor;->Companion:Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {v0, p1, v1, v2, v1}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;->withPublicKey$default(Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->rsaEncryptor:Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    .line 15
    .line 16
    sget-object p1, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->Companion:Lcom/baidu/carlife/sdk/internal/AesEncryptor$Companion;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/AesEncryptor$Companion;->withRandomKey()Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 23
    .line 24
    return-void
.end method

.method public final reset(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->rsaEncryptor:Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 10
    .line 11
    return-void
.end method

.method public final setEncryptKey(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->rsaEncryptor:Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->Companion:Lcom/baidu/carlife/sdk/internal/AesEncryptor$Companion;

    .line 11
    .line 12
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor;->decryptWithBase64(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/baidu/carlife/sdk/internal/AesEncryptor$Companion;->withKey([B)Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->aesEncryptor:Lcom/baidu/carlife/sdk/internal/AesEncryptor;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/encrypt/EncryptionTool;->decryptExcludes:Ljava/util/Set;

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    const-string v0, "you must pass a non null RSAEncryptor in constructor"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
