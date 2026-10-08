.class public La/a/a/a/a/j/f/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/f/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/j/f/c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/net/Socket;

.field public final c:La/a/a/a/a/j/f/b$a;

.field public final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "La/a/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:La/a/a/a/a/j/f/c$a;

.field public final g:Ljava/io/InputStream;

.field public final h:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILa/a/a/a/a/j/f/b$a;Ljava/util/concurrent/BlockingQueue;I)V
    .locals 0

    and-int/lit8 p4, p6, 0x8

    and-int/lit8 p4, p6, 0x10

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    move-object p5, p6

    :cond_0
    const-string p4, "host"

    .line 1
    invoke-static {p2, p4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/net/Socket;

    invoke-direct {p4, p2, p3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const-string p2, "socket"

    .line 2
    invoke-static {p4, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/a/a/a/a/j/f/c;->a:I

    iput-object p4, p0, La/a/a/a/a/j/f/c;->b:Ljava/net/Socket;

    iput-object p6, p0, La/a/a/a/a/j/f/c;->c:La/a/a/a/a/j/f/b$a;

    iput-object p5, p0, La/a/a/a/a/j/f/c;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, La/a/a/a/a/j/f/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const-string p3, "socket.getInputStream()"

    invoke-static {p2, p3}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, La/a/a/a/a/j/f/c;->g:Ljava/io/InputStream;

    invoke-virtual {p4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const-string p3, "socket.getOutputStream()"

    invoke-static {p2, p3}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, La/a/a/a/a/j/f/c;->h:Ljava/io/OutputStream;

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, La/a/a/a/a/j/f/c$a;

    invoke-direct {p2, p1, p5, p0}, La/a/a/a/a/j/f/c$a;-><init>(ILjava/util/concurrent/BlockingQueue;La/a/a/a/a/j/f/b;)V

    iput-object p2, p0, La/a/a/a/a/j/f/c;->f:La/a/a/a/a/j/f/c$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const-string v0, "Communicator "

    const-string v1, "CarLife_SDK"

    iget-object v2, p0, La/a/a/a/a/j/f/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_0
    iget-object v7, p0, La/a/a/a/a/j/f/c;->b:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->shutdownInput()V

    iget-object v7, p0, La/a/a/a/a/j/f/c;->b:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->shutdownOutput()V

    iget-object v7, p0, La/a/a/a/a/j/f/c;->b:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v5

    iget v9, p0, La/a/a/a/a/j/f/c;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, " terminate exception: "

    aput-object v9, v8, v4

    aput-object v7, v8, v2

    invoke-static {v1, v8}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v7, p0, La/a/a/a/a/j/f/c;->d:Ljava/util/concurrent/BlockingQueue;

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    sget-object v8, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    .line 1
    sget-object v8, La/a/a/a/a/a/b;->d:La/a/a/a/a/a/b;

    .line 2
    invoke-interface {v7, v8}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :goto_1
    iget-object v7, p0, La/a/a/a/a/j/f/c;->f:La/a/a/a/a/j/f/c$a;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    iget-object v7, p0, La/a/a/a/a/j/f/c;->c:La/a/a/a/a/j/f/b$a;

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    iget v8, p0, La/a/a/a/a/j/f/c;->a:I

    invoke-interface {v7, v8}, La/a/a/a/a/j/f/b$a;->a(I)V

    :goto_3
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    iget v0, p0, La/a/a/a/a/j/f/c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    const-string v0, " terminated "

    aput-object v0, v6, v4

    aput-object p0, v6, v2

    invoke-static {v1, v6}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public b(La/a/a/a/a/a/b;)V
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/j/f/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, La/a/a/a/a/a/b;->o()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    iget-object v3, p0, La/a/a/a/a/j/f/c;->h:Ljava/io/OutputStream;

    .line 1
    iget-object v4, p1, La/a/a/a/a/a/b;->i:[B

    sub-int v5, v0, v1

    .line 2
    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "CarLife_SDK"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "socket "

    invoke-static {v4}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, La/a/a/a/a/j/f/c;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " write exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "tag"

    .line 3
    invoke-static {v0, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v2, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x6

    .line 5
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v0, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_2
    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "socket has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public c()La/a/a/a/a/a/b;
    .locals 7

    iget-object v0, p0, La/a/a/a/a/j/f/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    iget v1, p0, La/a/a/a/a/j/f/c;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/j/f/c;->g:Ljava/io/InputStream;

    .line 1
    iget-object v2, v0, La/a/a/a/a/a/b;->i:[B

    .line 2
    invoke-virtual {v0}, La/a/a/a/a/a/b;->k()I

    move-result v5

    invoke-static {v1, v2, v3, v5}, Lb/e/b/g;->b(Ljava/io/InputStream;[BII)V

    invoke-virtual {v0}, La/a/a/a/a/a/b;->o()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/a/a/a/a/b;->t(I)V

    iget-object v1, p0, La/a/a/a/a/j/f/c;->g:Ljava/io/InputStream;

    .line 3
    iget-object v2, v0, La/a/a/a/a/a/b;->i:[B

    .line 4
    invoke-virtual {v0}, La/a/a/a/a/a/b;->k()I

    move-result v5

    invoke-virtual {v0}, La/a/a/a/a/a/b;->l()I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Lb/e/b/g;->b(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, La/a/a/a/a/a/b;->s()V

    const-string v0, "CarLife_SDK"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "socket "

    invoke-static {v5}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, La/a/a/a/a/j/f/c;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " read exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "tag"

    .line 5
    invoke-static {v0, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v2, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v0, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_0
    throw v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
