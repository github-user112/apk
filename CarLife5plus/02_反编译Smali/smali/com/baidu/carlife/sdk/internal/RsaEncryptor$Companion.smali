.class public final Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/internal/RsaEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;",
        "",
        "()V",
        "withPrivateKey",
        "Lcom/baidu/carlife/sdk/internal/RsaEncryptor;",
        "privateKey",
        "Ljava/security/PrivateKey;",
        "transformation",
        "",
        "withPublicKey",
        "key",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;-><init>()V

    return-void
.end method

.method public static synthetic withPrivateKey$default(Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    const-string p2, "RSA/ECB/PKCS1Padding"

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;->withPrivateKey(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withPrivateKey$default(Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;Ljava/security/PrivateKey;Ljava/lang/String;ILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 3
    const-string p2, "RSA/ECB/PKCS1Padding"

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;->withPrivateKey(Ljava/security/PrivateKey;Ljava/lang/String;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withPublicKey$default(Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, "RSA/ECB/PKCS1Padding"

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;->withPublicKey(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final withPrivateKey(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;
    .locals 3

    const-string v0, "privateKey"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformation"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 4
    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v0, "getInstance(\"RSA\")\n     \u2026  )\n                    )"

    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor$Companion;->withPrivateKey(Ljava/security/PrivateKey;Ljava/lang/String;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    move-result-object p1

    return-object p1
.end method

.method public final withPrivateKey(Ljava/security/PrivateKey;Ljava/lang/String;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;
    .locals 1

    const-string v0, "privateKey"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformation"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    invoke-direct {v0, p1, p2}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor;-><init>(Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public final withPublicKey(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/carlife/sdk/internal/RsaEncryptor;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "transformation"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "decode(key, Base64.NO_WRAP)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 24
    .line 25
    .line 26
    const-string p1, "RSA"

    .line 27
    .line 28
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Lcom/baidu/carlife/sdk/internal/RsaEncryptor;

    .line 37
    .line 38
    const-string v1, "publicKey"

    .line 39
    .line 40
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1, p2}, Lcom/baidu/carlife/sdk/internal/RsaEncryptor;-><init>(Ljava/security/Key;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method
