.class public Le/d/c/a/a/a/b;
.super Ljavax/net/ssl/SSLSocketFactory;
.source ""


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public a:Ljavax/net/ssl/SSLContext;

.field public b:Ljavax/net/ssl/SSLSocket;

.field public c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    const-class v0, Le/d/c/a/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/d/c/a/a/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 4

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/d/c/a/a/a/b;->a:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Le/d/c/a/a/a/b;->b:Ljavax/net/ssl/SSLSocket;

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const-string v1, "TLSv1.3"

    goto :goto_0

    :cond_0
    const-string v1, "TLSv1.2"

    :goto_0
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 2
    iput-object v1, p0, Le/d/c/a/a/a/b;->a:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v2, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/Socket;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ld/s/y;->b([Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object v1, Le/d/c/a/a/a/b;->d:Ljava/lang/String;

    const-string v4, "set protocols"

    invoke-static {v1, v4}, Ld/s/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Ld/s/y;->b([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ld/s/y;->b([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v3, Le/d/c/a/a/a/b;->d:Ljava/lang/String;

    const-string v4, "set white cipher or black cipher"

    invoke-static {v3, v4}, Ld/s/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    invoke-static {v3}, Le/d/c/a/a/a/a;->b(Ljavax/net/ssl/SSLSocket;)V

    invoke-static {v0}, Ld/s/y;->b([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3, v0}, Le/d/c/a/a/a/a;->c(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    goto :goto_2

    :cond_3
    invoke-static {v3, v0}, Le/d/c/a/a/a/a;->a(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    :goto_2
    if-nez v1, :cond_4

    sget-object v0, Le/d/c/a/a/a/b;->d:Ljava/lang/String;

    const-string v1, "set default protocols"

    invoke-static {v0, v1}, Ld/s/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Le/d/c/a/a/a/a;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_4
    if-nez v2, :cond_7

    sget-object v0, Le/d/c/a/a/a/b;->d:Ljava/lang/String;

    const-string v1, "set default cipher suites"

    invoke-static {v0, v1}, Ld/s/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    if-nez p1, :cond_5

    goto :goto_4

    .line 1
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_6

    sget-object v0, Le/d/c/a/a/a/a;->b:[Ljava/lang/String;

    invoke-static {p1, v0}, Le/d/c/a/a/a/a;->c(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_6
    sget-object v0, Le/d/c/a/a/a/a;->a:[Ljava/lang/String;

    invoke-static {p1, v0}, Le/d/c/a/a/a/a;->c(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_7

    .line 2
    sget-object v0, Le/d/c/a/a/a/a;->c:[Ljava/lang/String;

    invoke-static {p1, v0}, Le/d/c/a/a/a/a;->a(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2

    sget-object v0, Le/d/c/a/a/a/b;->d:Ljava/lang/String;

    const-string v1, "createSocket: host , port"

    invoke-static {v0, v1}, Ld/s/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Le/d/c/a/a/a/b;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Le/d/c/a/a/a/b;->a(Ljava/net/Socket;)V

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Le/d/c/a/a/a/b;->b:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Le/d/c/a/a/a/b;->c:[Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le/d/c/a/a/a/b;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Le/d/c/a/a/a/b;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Le/d/c/a/a/a/b;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2

    sget-object v0, Le/d/c/a/a/a/b;->d:Ljava/lang/String;

    const-string v1, "createSocket"

    invoke-static {v0, v1}, Ld/s/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Le/d/c/a/a/a/b;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Le/d/c/a/a/a/b;->a(Ljava/net/Socket;)V

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Le/d/c/a/a/a/b;->b:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Le/d/c/a/a/a/b;->c:[Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/d/c/a/a/a/b;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
