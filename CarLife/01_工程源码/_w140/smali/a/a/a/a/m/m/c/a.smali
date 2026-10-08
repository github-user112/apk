.class public final La/a/a/a/m/m/c/a;
.super La/a/a/a/a/j/c;
.source ""


# instance fields
.field public c:La/a/a/a/a/j/f/b;

.field public final d:La/a/a/a/m/m/c/c;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionListener"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, La/a/a/a/a/j/c;-><init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V

    new-instance p2, La/a/a/a/m/m/c/c;

    new-instance v0, La/a/a/a/m/m/c/a$a;

    invoke-direct {v0, p0}, La/a/a/a/m/m/c/a$a;-><init>(La/a/a/a/m/m/c/a;)V

    invoke-direct {p2, p1, v0}, La/a/a/a/m/m/c/c;-><init>(La/a/a/a/c;Lc/k/a/b;)V

    iput-object p2, p0, La/a/a/a/m/m/c/a;->d:La/a/a/a/m/m/c/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AOAProtocolTransport connect"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    .line 3
    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v1, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, La/a/a/a/m/m/c/a;->d:La/a/a/a/m/m/c/c;

    .line 5
    iget-object v1, v0, La/a/a/a/m/m/c/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, La/a/a/a/m/m/c/c;->b:La/a/a/a/c;

    invoke-interface {v1}, La/a/a/a/c;->Z()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()La/a/a/a/a/a/b;
    .locals 2

    iget-object v0, p0, La/a/a/a/m/m/c/a;->c:La/a/a/a/a/j/f/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, La/a/a/a/a/j/f/b;->c()La/a/a/a/a/a/b;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read from unattached transport"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AOAProtocolTransport ready"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    invoke-static {v1, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/a/m/m/c/a;->d:La/a/a/a/m/m/c/c;

    .line 1
    iget-object v0, v0, La/a/a/a/m/m/c/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, La/a/a/a/m/m/c/a;->d:La/a/a/a/m/m/c/c;

    .line 1
    iget-object v1, v0, La/a/a/a/m/m/c/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, La/a/a/a/m/m/c/c;->b:La/a/a/a/c;

    invoke-interface {v1}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, La/a/a/a/m/m/c/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 2
    :cond_0
    iget-object v0, p0, La/a/a/a/m/m/c/a;->c:La/a/a/a/a/j/f/b;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, La/a/a/a/a/j/f/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/m/m/c/a;->c:La/a/a/a/a/j/f/b;

    invoke-virtual {p0}, La/a/a/a/a/j/c;->c()V

    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AOAProtocolTransport terminate"

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    invoke-static {v1, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public g(La/a/a/a/a/a/b;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/m/c/a;->c:La/a/a/a/a/j/f/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, La/a/a/a/a/j/f/b;->b(La/a/a/a/a/a/b;)V

    :goto_0
    return-void
.end method
