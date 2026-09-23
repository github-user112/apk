.class public Lf/a/i/p/d;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/p/d$a;
    }
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Z

.field public c:Ljava/lang/Boolean;

.field public d:Landroid/content/Context;

.field public e:Ljava/lang/String;

.field public f:Lf/a/i/p/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lf/a/i/p/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/i/p/d;->b:Z

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lf/a/i/p/d;->e:Ljava/lang/String;

    iput-object p1, p0, Lf/a/i/p/d;->d:Landroid/content/Context;

    iput-object p2, p0, Lf/a/i/p/d;->e:Ljava/lang/String;

    iput-object p3, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    const-string v1, "C2PThread: "

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v3}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/net/Socket;

    iget-object v3, p0, Lf/a/i/p/d;->e:Ljava/lang/String;

    const/16 v4, 0x2aaa

    invoke-direct {v0, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    const/16 v3, 0xbb8

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {p0}, Lf/a/i/p/d;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "C2PThread: failed to sendConnType"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final b()I
    .locals 8

    const-string v0, "status"

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lf/a/i/p/d$a;

    invoke-direct {v3, p0}, Lf/a/i/p/d$a;-><init>(Lf/a/i/p/d;)V

    const v4, 0x10410

    iput v4, v3, Lf/a/i/p/d$a;->a:I

    const/16 v4, 0x10

    iput v4, v3, Lf/a/i/p/d$a;->b:I

    const v5, 0x10400

    iput v5, v3, Lf/a/i/p/d$a;->c:I

    invoke-virtual {v3}, Lf/a/i/p/d$a;->a()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lf/a/i/p/d;->g([B)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "checkNetwork: failed to send req"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    new-array v3, v4, [B

    invoke-virtual {p0, v3}, Lf/a/i/p/d;->f([B)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "checkNetwork: failed to recv rly header"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    new-instance v5, Lf/a/i/p/d$a;

    invoke-direct {v5, p0, v3}, Lf/a/i/p/d$a;-><init>(Lf/a/i/p/d;[B)V

    iget v3, v5, Lf/a/i/p/d$a;->c:I

    iget v6, v5, Lf/a/i/p/d$a;->a:I

    iget v7, v5, Lf/a/i/p/d$a;->b:I

    xor-int/2addr v6, v7

    if-eq v3, v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNetwork: recv invalid header, cmdType=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lf/a/i/p/d$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lf/a/i/p/d$a;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", magic=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lf/a/i/p/d$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 v3, 0x0

    iget v6, v5, Lf/a/i/p/d$a;->b:I

    if-le v6, v4, :cond_3

    iget v3, v5, Lf/a/i/p/d$a;->b:I

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Lf/a/i/p/d;->f([B)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "checkNetwork: failed to recv rly data"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    iget v4, v5, Lf/a/i/p/d$a;->a:I

    const v6, 0x10411

    if-eq v4, v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNetwork: recv unexpected cmd=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lf/a/i/p/d$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    if-nez v3, :cond_5

    const-string v0, "checkNetwork: no rly data"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "checkNetwork: no opt \"status\" in data"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_6
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "checkNetwork: network status is not ok"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_7
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v3, "checkNetwork: "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v3}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public c()V
    .locals 1

    const-string v0, "exit"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/p/d;->b:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "notifyConnected"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.usb.netlink.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lf/a/i/p/d;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public e()V
    .locals 3

    const-string v0, "notifyDisconnected"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.usb.netlink.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "error_code"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lf/a/i/p/d;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final f([B)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    array-length p1, p1

    if-ge v2, p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recv: failed to recv data, len="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    const-string v1, "recv: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :catch_1
    move-exception p1

    const-string v1, "recv: ioe="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    const-string v1, "recv: e1="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final g([B)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "send: socket is closed"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    const-string v1, "send: e="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :catch_1
    move-exception p1

    const-string v1, "send: ioe="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v1, "send: e1="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 6

    new-instance v0, Lf/a/i/p/d$a;

    invoke-direct {v0, p0}, Lf/a/i/p/d$a;-><init>(Lf/a/i/p/d;)V

    const/high16 v1, 0x10000

    iput v1, v0, Lf/a/i/p/d$a;->a:I

    const/16 v1, 0x10

    iput v1, v0, Lf/a/i/p/d$a;->b:I

    const v2, 0x10010

    iput v2, v0, Lf/a/i/p/d$a;->c:I

    const/4 v2, 0x0

    iput v2, v0, Lf/a/i/p/d$a;->d:I

    invoke-virtual {v0}, Lf/a/i/p/d$a;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/a/i/p/d;->g([B)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "C2PThread:: failed to send req"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lf/a/i/p/d;->f([B)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "C2PThread:: failed to recv rlyBytes"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    new-instance v3, Lf/a/i/p/d$a;

    invoke-direct {v3, p0, v0}, Lf/a/i/p/d$a;-><init>(Lf/a/i/p/d;[B)V

    iget v0, v3, Lf/a/i/p/d$a;->c:I

    iget v4, v3, Lf/a/i/p/d$a;->a:I

    iget v5, v3, Lf/a/i/p/d$a;->b:I

    xor-int/2addr v4, v5

    if-eq v0, v4, :cond_2

    const-string v0, "C2PThread:: recv invalid rly header, cmdType=0x"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lf/a/i/p/d$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lf/a/i/p/d$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", magic=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lf/a/i/p/d$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    if-le v5, v1, :cond_3

    sub-int/2addr v5, v1

    new-array v0, v5, [B

    invoke-virtual {p0, v0}, Lf/a/i/p/d;->f([B)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "C2PThread:: failed to recv data"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_3
    iget v0, v3, Lf/a/i/p/d$a;->a:I

    const v1, 0x10001

    if-eq v0, v1, :cond_4

    const-string v0, "C2PThread:: recv unexpected cmd=0x"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lf/a/i/p/d$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_4
    const-string v0, "C2PThread: sendConnType ok"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 14

    const-string v0, "NetHeartHandler thread begin"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "run: "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lf/a/i/p/d;->e:Ljava/lang/String;

    const-string v2, "127.0.0.1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    .line 1
    iget-object v3, v3, Lf/a/i/p/e;->c:Lf/a/i/h/f;

    if-eqz v3, :cond_0

    .line 2
    move-object v4, v3

    check-cast v4, Lf/a/i/i/q;

    invoke-virtual {v4, v1}, Lf/a/i/i/q;->P(Z)V

    :cond_0
    const/4 v4, 0x3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-boolean v8, p0, Lf/a/i/p/d;->b:Z

    if-eqz v8, :cond_13

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_13

    :try_start_1
    iget-object v8, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    iget-object v8, p0, Lf/a/i/p/d;->a:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {p0}, Lf/a/i/p/d;->a()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_11

    invoke-virtual {p0}, Lf/a/i/p/d;->b()I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "C2PThread: checkNetwork state : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-ne v5, v9, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_4

    add-int/lit8 v7, v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "C2PThread: netLostCount=== "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v8, 0x2

    if-lt v7, v8, :cond_7

    const-string v6, "C2PThread: network is disconnected"

    invoke-static {v6}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/i/p/d;->e()V

    iget-object v6, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    .line 3
    sget-object v7, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, v6, Lf/a/i/p/e;->e:Ljava/lang/Runnable;

    invoke-interface {v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v7, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, v6, Lf/a/i/p/e;->f:Ljava/lang/Runnable;

    invoke-interface {v7, v6}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v4, :cond_6

    .line 4
    invoke-virtual {p0}, Lf/a/i/p/d;->d()V

    :cond_5
    :goto_4
    const/4 v6, 0x0

    :cond_6
    const/4 v7, 0x0

    :cond_7
    iget-object v8, p0, Lf/a/i/p/d;->c:Ljava/lang/Boolean;

    if-nez v8, :cond_8

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v8, p0, Lf/a/i/p/d;->c:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_8

    if-eqz v3, :cond_8

    move-object v8, v3

    check-cast v8, Lf/a/i/i/q;

    :try_start_2
    invoke-virtual {v8, v1, v0}, Lf/a/i/i/q;->O(ZZ)V

    :cond_8
    iget-object v8, p0, Lf/a/i/p/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eq v8, v5, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_e

    iget-object v10, p0, Lf/a/i/p/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "C2PThread: network is connected"

    invoke-static {v10}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v10, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lf/a/i/p/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    .line 5
    sget-object v11, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v12, v10, Lf/a/i/p/e;->g:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v11, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v12, v10, Lf/a/i/p/e;->d:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v11, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, v10, Lf/a/i/p/e;->i:Ljava/lang/Runnable;

    invoke-interface {v11, v10}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 6
    :cond_a
    iget-object v10, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    iget-object v11, p0, Lf/a/i/p/d;->e:Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 7
    sget-object v12, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v13, Lf/a/i/p/e$i;

    invoke-direct {v13, v10, v11}, Lf/a/i/p/e$i;-><init>(Lf/a/i/p/e;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v11, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v12, v10, Lf/a/i/p/e;->d:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v11, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, v10, Lf/a/i/p/e;->i:Ljava/lang/Runnable;

    invoke-interface {v11, v10}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 8
    :goto_6
    iget-object v10, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    invoke-virtual {v10}, Lf/a/i/p/e;->d()V

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    .line 9
    throw v2

    .line 10
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lf/a/i/p/d;->d()V

    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lf/a/i/p/d;->c:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v3, :cond_e

    move-object v10, v3

    check-cast v10, Lf/a/i/i/q;

    :try_start_3
    invoke-virtual {v10, v1, v5}, Lf/a/i/i/q;->O(ZZ)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_e
    if-eqz v3, :cond_10

    if-eqz v5, :cond_f

    move-object v5, v3

    check-cast v5, Lf/a/i/i/q;

    :try_start_4
    invoke-virtual {v5, v9}, Lf/a/i/i/q;->Q(Z)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :cond_f
    if-eqz v8, :cond_10

    move-object v5, v3

    check-cast v5, Lf/a/i/i/q;

    :try_start_5
    invoke-virtual {v5, v0}, Lf/a/i/i/q;->Q(Z)V

    :cond_10
    :goto_8
    const/4 v5, 0x3

    goto :goto_9

    :cond_11
    add-int/lit8 v8, v5, -0x1

    if-gt v5, v9, :cond_12

    iget-object v5, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lf/a/i/p/d;->f:Lf/a/i/p/e;

    .line 11
    sget-object v9, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, v5, Lf/a/i/p/e;->e:Ljava/lang/Runnable;

    invoke-interface {v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v9, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v5, Lf/a/i/p/e;->f:Ljava/lang/Runnable;

    invoke-interface {v9, v5}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_12
    move v5, v8

    :goto_9
    const-wide/16 v8, 0x7d0

    .line 12
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string v4, "C2PThread: "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lf/a/i/p/d;->c:Ljava/lang/Boolean;

    if-eqz v3, :cond_14

    check-cast v3, Lf/a/i/i/q;

    invoke-virtual {v3, v1}, Lf/a/i/i/q;->N(Z)V

    :cond_14
    const-string v0, "C2PThread: thread end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
