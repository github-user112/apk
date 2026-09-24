.class public final La/a/a/a/a/j/f/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/f/b;


# instance fields
.field public final a:Landroid/bluetooth/BluetoothSocket;

.field public final b:La/a/a/a/a/j/f/b$a;

.field public c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/io/InputStream;

.field public final e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;La/a/a/a/a/j/f/b$a;)V
    .locals 1

    const-string v0, "socket"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/j/f/a;->a:Landroid/bluetooth/BluetoothSocket;

    iput-object p2, p0, La/a/a/a/a/j/f/a;->b:La/a/a/a/a/j/f/b$a;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, La/a/a/a/a/j/f/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const-string v0, "socket.inputStream"

    invoke-static {p2, v0}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, La/a/a/a/a/j/f/a;->d:Ljava/io/InputStream;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string p2, "socket.outputStream"

    invoke-static {p1, p2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, La/a/a/a/a/j/f/a;->e:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const-string v0, "CarLife_SDK"

    iget-object v1, p0, La/a/a/a/a/j/f/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, La/a/a/a/a/j/f/a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "BluetoothCommunicator terminate exception: "

    aput-object v6, v5, v1

    aput-object v4, v5, v2

    invoke-static {v0, v5}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v4, p0, La/a/a/a/a/j/f/a;->b:La/a/a/a/a/j/f/b$a;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v4, v2}, La/a/a/a/a/j/f/b$a;->a(I)V

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "BluetoothCommunicator terminated "

    aput-object v4, v3, v1

    aput-object p0, v3, v2

    invoke-static {v0, v3}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(La/a/a/a/a/a/b;)V
    .locals 5

    const-string v0, "message"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/j/f/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/j/f/a;->e:Ljava/io/OutputStream;

    .line 1
    iget-object v1, p1, La/a/a/a/a/a/b;->i:[B

    .line 2
    invoke-virtual {p1}, La/a/a/a/a/a/b;->o()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    const-string v0, "CarLife_SDK"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "BluetoothCommunicator onSendMessage "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "tag"

    .line 3
    invoke-static {v0, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {v2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 5
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v3, v0, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p0}, La/a/a/a/a/j/f/a;->a()V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "socket has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()La/a/a/a/a/a/b;
    .locals 7

    iget-object v0, p0, La/a/a/a/a/j/f/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/j/f/a;->d:Ljava/io/InputStream;

    .line 1
    iget-object v2, v0, La/a/a/a/a/a/b;->i:[B

    .line 2
    invoke-virtual {v0}, La/a/a/a/a/a/b;->k()I

    move-result v5

    invoke-static {v1, v2, v4, v5}, Lb/e/b/g;->b(Ljava/io/InputStream;[BII)V

    invoke-virtual {v0}, La/a/a/a/a/a/b;->o()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/a/a/a/a/b;->t(I)V

    iget-object v1, p0, La/a/a/a/a/j/f/a;->d:Ljava/io/InputStream;

    .line 3
    iget-object v2, v0, La/a/a/a/a/a/b;->i:[B

    .line 4
    invoke-virtual {v0}, La/a/a/a/a/a/b;->k()I

    move-result v5

    invoke-virtual {v0}, La/a/a/a/a/a/b;->l()I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Lb/e/b/g;->b(Ljava/io/InputStream;[BII)V

    const-string v1, "CarLife_SDK"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "BluetoothCommunicator onReceiveMessage "

    aput-object v5, v2, v4

    aput-object v0, v2, v3

    const-string v3, "tag"

    .line 5
    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v2, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    .line 7
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v0}, La/a/a/a/a/a/b;->s()V

    invoke-virtual {p0}, La/a/a/a/a/j/f/a;->a()V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
