.class public final La/a/b/l/d/c;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public b:La/a/a/a/c;

.field public final c:Ljava/lang/Object;

.field public final d:La/a/a/a/n/c;

.field public volatile e:Z

.field public f:Z


# direct methods
.method public constructor <init>(La/a/a/a/c;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, La/a/b/l/d/c;->b:La/a/a/a/c;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/l/d/c;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "-----PcmSender()---------"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "CarLifeVoice"

    const-string v2, "tag"

    .line 1
    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {p1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 3
    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, v0, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    new-instance p1, La/a/a/a/n/c;

    const/16 v0, 0x6000

    .line 5
    invoke-direct {p1, v0, v1}, La/a/a/a/n/c;-><init>(IZ)V

    .line 6
    iput-object p1, p0, La/a/b/l/d/c;->d:La/a/a/a/n/c;

    return-void
.end method


# virtual methods
.method public final a([BI)I
    .locals 5

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v1, 0x58001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "data"

    .line 1
    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, La/a/a/a/a/a/b;->u(I)V

    iget-object v1, v0, La/a/a/a/a/a/b;->i:[B

    invoke-virtual {v0}, La/a/a/a/a/a/b;->k()I

    move-result v2

    invoke-static {p1, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object p1, p0, La/a/b/l/d/c;->b:La/a/a/a/c;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    :goto_0
    return v3
.end method

.method public final b(Z)V
    .locals 1

    iput-boolean p1, p0, La/a/b/l/d/c;->e:Z

    iget-boolean p1, p0, La/a/b/l/d/c;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, La/a/b/l/d/c;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 1
    :try_start_0
    iget-boolean v0, p0, La/a/b/l/d/c;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La/a/b/l/d/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw v0

    :cond_1
    :goto_2
    return-void
.end method

.method public run()V
    .locals 10

    const-string v0, "CarLifeVoice"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pcmwriter thread runing"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "tag"

    .line 1
    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    .line 3
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v4, v0, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/16 v0, -0x13

    .line 4
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v0, 0x400

    new-array v1, v0, [B

    :goto_1
    iget-boolean v2, p0, La/a/b/l/d/c;->e:Z

    if-eqz v2, :cond_4

    iget-object v4, p0, La/a/b/l/d/c;->d:La/a/a/a/n/c;

    const/4 v6, 0x0

    const/16 v7, 0x400

    const-wide/16 v8, 0x64

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, La/a/a/a/n/c;->e([BIIJ)I

    move-result v2

    if-lez v2, :cond_3

    .line 5
    iget-boolean v2, p0, La/a/b/l/d/c;->f:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x200

    new-array v4, v2, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v0, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 6
    aget-byte v8, v1, v5

    aput-byte v8, v4, v6

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v1, v8

    aput-byte v8, v4, v7

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p0, v4, v2}, La/a/b/l/d/c;->a([BI)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v0}, La/a/b/l/d/c;->a([BI)I

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x64

    .line 8
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v2, p0, La/a/b/l/d/c;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v4, p0, La/a/b/l/d/c;->c:Ljava/lang/Object;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit v2

    goto :goto_1

    :goto_4
    monitor-exit v2

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
