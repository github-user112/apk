.class public final Lcom/baidu/carlife/sdk/internal/AesEncryptor;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/internal/AesEncryptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ)\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ9\u0010\u000e\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u0013J)\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u000fJ9\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/AesEncryptor;",
        "",
        "",
        "key",
        "<init>",
        "([B)V",
        "",
        "mode",
        "inputLength",
        "outputSize",
        "(II)I",
        "data",
        "offset",
        "length",
        "encrypt",
        "([BII)[B",
        "output",
        "outputOffset",
        "Lr8/z;",
        "([BII[BI)V",
        "decrypt",
        "([BII[BI)I",
        "[B",
        "getKey",
        "()[B",
        "Ljavax/crypto/Cipher;",
        "encryptCipher",
        "Ljavax/crypto/Cipher;",
        "decryptCipher",
        "Companion",
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
.field public static final Companion:Lcom/baidu/carlife/sdk/internal/AesEncryptor$Companion;


# instance fields
.field private final decryptCipher:Ljavax/crypto/Cipher;

.field private final encryptCipher:Ljavax/crypto/Cipher;

.field private final key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/internal/AesEncryptor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/internal/AesEncryptor$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->Companion:Lcom/baidu/carlife/sdk/internal/AesEncryptor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 1
    const-string v0, "key"

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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->key:[B

    .line 10
    .line 11
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 12
    .line 13
    const-string v1, "AES"

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, "getInstance(\"AES\")"

    .line 23
    .line 24
    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {p1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->decryptCipher:Ljavax/crypto/Cipher;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static synthetic decrypt$default(Lcom/baidu/carlife/sdk/internal/AesEncryptor;[BII[BIILjava/lang/Object;)I
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 2
    array-length p3, p1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->decrypt([BII[BI)I

    move-result p0

    return p0
.end method

.method public static synthetic decrypt$default(Lcom/baidu/carlife/sdk/internal/AesEncryptor;[BIIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 1
    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->decrypt([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic encrypt$default(Lcom/baidu/carlife/sdk/internal/AesEncryptor;[BII[BIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 2
    array-length p3, p1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->encrypt([BII[BI)V

    return-void
.end method

.method public static synthetic encrypt$default(Lcom/baidu/carlife/sdk/internal/AesEncryptor;[BIIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 1
    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->encrypt([BII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final decrypt([BII[BI)I
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->decryptCipher:Ljavax/crypto/Cipher;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    return p1
.end method

.method public final decrypt([BII)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    const-string p2, "decryptCipher.doFinal(data, offset, length)"

    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final encrypt([BII[BI)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    return-void
.end method

.method public final encrypt([BII)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    const-string p2, "encryptCipher.doFinal(data, offset, length)"

    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->key:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final outputSize(II)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/baidu/carlife/sdk/internal/AesEncryptor;->decryptCipher:Ljavax/crypto/Cipher;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
