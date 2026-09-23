.class public abstract Le/d/c/a/a/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sput-object v1, Le/d/c/a/a/a/a;->a:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v2, v1, v3

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v2, v1, v4

    const-string v2, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    aput-object v2, v1, v5

    const-string v2, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    aput-object v2, v1, v6

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v2, v1, v7

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v2, v1, v8

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v2, v1, v9

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v2, v1, v10

    sput-object v1, Le/d/c/a/a/a/a;->b:[Ljava/lang/String;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TLS_RSA"

    aput-object v2, v1, v3

    const-string v2, "CBC"

    aput-object v2, v1, v4

    const-string v2, "TEA"

    aput-object v2, v1, v5

    const-string v2, "SHA0"

    aput-object v2, v1, v6

    const-string v2, "MD2"

    aput-object v2, v1, v7

    const-string v2, "MD4"

    aput-object v2, v1, v8

    const-string v2, "RIPEMD"

    aput-object v2, v1, v9

    const-string v2, "NULL"

    aput-object v2, v1, v10

    const-string v2, "RC4"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "DES"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "DESX"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "DES40"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "RC2"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "MD5"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "ANON"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v0

    sput-object v1, Le/d/c/a/a/a/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_4

    aget-object v6, v1, v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    array-length v8, p1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, p1, v9

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return v5

    :cond_5
    return v0
.end method

.method public static b(Ljavax/net/ssl/SSLSocket;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "TLSv1.2"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "TLSv1.3"

    aput-object v5, v0, v3

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static c(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method
