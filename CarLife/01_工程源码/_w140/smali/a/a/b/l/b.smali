.class public final La/a/b/l/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/b/l/c/d/c;


# instance fields
.field public final b:La/a/a/a/c;

.field public final c:La/a/b/l/c/d/b;

.field public final d:La/a/a/a/n/c;

.field public final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "La/a/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:I


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/b/l/c/d/b;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/l/b;->b:La/a/a/a/c;

    iput-object p2, p0, La/a/b/l/b;->c:La/a/b/l/c/d/b;

    new-instance p1, La/a/a/a/n/c;

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0}, La/a/a/a/n/c;-><init>(IZ)V

    iput-object p1, p0, La/a/b/l/b;->d:La/a/a/a/n/c;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, La/a/b/l/b;->e:Ljava/util/LinkedList;

    const/4 p1, 0x3

    iput p1, p0, La/a/b/l/b;->g:I

    new-instance v0, Landroid/media/AudioTrack;

    .line 1
    iget v2, p2, La/a/b/l/c/d/b;->a:I

    .line 2
    invoke-virtual {p2}, La/a/b/l/c/d/b;->c()I

    move-result v3

    .line 3
    iget p1, p2, La/a/b/l/c/d/b;->a:I

    .line 4
    invoke-virtual {p2}, La/a/b/l/c/d/b;->c()I

    move-result p3

    invoke-virtual {p2}, La/a/b/l/c/d/b;->b()I

    move-result p2

    invoke-static {p1, p3, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-void
.end method

.method public static k(La/a/b/l/b;La/a/a/a/a/a/b;ZI)V
    .locals 7

    .line 1
    monitor-enter p0

    :try_start_0
    const-string p2, "message"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/a/a/a/b;->l()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, La/a/b/l/b;->e:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, La/a/b/l/b;->d:La/a/a/a/n/c;

    invoke-virtual {p2}, La/a/a/a/n/c;->a()I

    move-result p2

    invoke-virtual {p1}, La/a/a/a/a/a/b;->l()I

    move-result p3

    if-lt p2, p3, :cond_1

    iget-object v0, p0, La/a/b/l/b;->d:La/a/a/a/n/c;

    .line 2
    iget-object v1, p1, La/a/a/a/a/a/b;->i:[B

    .line 3
    invoke-virtual {p1}, La/a/a/a/a/a/b;->k()I

    move-result v2

    invoke-virtual {p1}, La/a/a/a/a/a/b;->l()I

    move-result v3

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    invoke-static/range {v0 .. v6}, La/a/a/a/n/c;->g(La/a/a/a/n/c;[BIIJI)I

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p1, La/a/a/a/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    iget-object p2, p0, La/a/b/l/b;->e:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, La/a/b/l/b;->g:I

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, La/a/b/l/b;->f:Z

    return v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/b/l/b;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/b/l/b;->f:Z

    iget-object v0, p0, La/a/b/l/b;->e:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/a/a/b;

    invoke-virtual {v1}, La/a/a/a/a/a/b;->s()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/b/l/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public d(La/a/b/l/c/d/d;IJ)I
    .locals 9

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, La/a/b/l/b;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, La/a/b/l/b;->e:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/b/l/b;->d:La/a/a/a/n/c;

    .line 1
    iget v0, v0, La/a/a/a/n/c;->f:I

    .line 2
    iget-object v2, p0, La/a/b/l/b;->c:La/a/b/l/c/d/b;

    invoke-virtual {v2}, La/a/b/l/c/d/b;->d()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, La/a/b/l/b;->b:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->T()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, La/a/b/l/a;

    invoke-direct {v2, p0}, La/a/b/l/a;-><init>(La/a/b/l/b;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, La/a/b/l/b;->d:La/a/a/a/n/c;

    .line 3
    iget v0, v0, La/a/a/a/n/c;->f:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, La/a/b/l/b;->d:La/a/a/a/n/c;

    invoke-virtual {v0, v1, p3, p4}, La/a/a/a/n/c;->b(IJ)I

    :cond_3
    iget-object v3, p0, La/a/b/l/b;->d:La/a/a/a/n/c;

    .line 5
    invoke-static {v3, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p1, La/a/b/l/c/d/d;->b:I

    .line 6
    iget-object v4, p1, La/a/b/l/c/d/d;->a:[B

    array-length p2, v4

    add-int/lit8 v6, p2, 0x0

    const/4 v5, 0x0

    move-wide v7, p3

    .line 7
    invoke-virtual/range {v3 .. v8}, La/a/a/a/n/c;->e([BIIJ)I

    move-result p2

    iget p3, p1, La/a/b/l/c/d/d;->b:I

    add-int/2addr p3, p2

    iput p3, p1, La/a/b/l/c/d/d;->b:I

    return p3
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()La/a/b/l/c/d/b;
    .locals 4

    iget-object v0, p0, La/a/b/l/b;->d:La/a/a/a/n/c;

    .line 1
    iget v1, v0, La/a/a/a/n/c;->a:I

    .line 2
    div-int/lit8 v1, v1, 0x2

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, La/a/a/a/n/c;->b(IJ)I

    .line 4
    iget-object v0, p0, La/a/b/l/b;->c:La/a/b/l/c/d/b;

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(La/a/b/l/c/d/d;J)I
    .locals 0

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "CarLifeStreamSource don\'t support drainTo"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, La/a/b/l/b;->d:La/a/a/a/n/c;

    .line 1
    iget-object v1, v0, La/a/a/a/n/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, La/a/a/a/n/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, La/a/a/a/n/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
