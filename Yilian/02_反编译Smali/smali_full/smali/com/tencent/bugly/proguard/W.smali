.class public Lcom/tencent/bugly/proguard/W;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/tencent/bugly/proguard/W;


# instance fields
.field public final b:Lcom/tencent/bugly/proguard/J;

.field public final c:Landroid/content/Context;

.field public d:Lcom/tencent/bugly/proguard/T;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:J

.field public h:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/lang/Object;

.field public k:J

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/W;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/W;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/W;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/W;->j:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/W;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/W;->l:I

    iput-object p1, p0, Lcom/tencent/bugly/proguard/W;->c:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/proguard/J;->a()Lcom/tencent/bugly/proguard/J;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/W;->b:Lcom/tencent/bugly/proguard/J;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/W;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/W;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/W;->a:Lcom/tencent/bugly/proguard/W;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/W;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/W;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/W;->a:Lcom/tencent/bugly/proguard/W;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/W;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/W;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/proguard/W;->a:Lcom/tencent/bugly/proguard/W;

    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/W;->a:Lcom/tencent/bugly/proguard/W;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/W;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/W;->j:Ljava/lang/Object;

    return-object p0
.end method

.method private a(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/Z;->c()Lcom/tencent/bugly/proguard/Z;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/tencent/bugly/proguard/W$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/bugly/proguard/W$b;-><init>(Lcom/tencent/bugly/proguard/W;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/Z;->a(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "[UploadManager] Upload task should not be null"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "BUGLY_SYNC_UPLOAD"

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/ha;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue."

    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v3}, Lcom/tencent/bugly/proguard/W;->a(Ljava/lang/Runnable;Z)Z

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v1, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue."

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v3}, Lcom/tencent/bugly/proguard/W;->a(Ljava/lang/Runnable;Z)Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/W;->c(I)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;ZZJ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[UploadManager] Upload task should not be null"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[UploadManager] Add upload task (pid=%d | tid=%d)"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p4, p5}, Lcom/tencent/bugly/proguard/W;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/W;->a(Ljava/lang/Runnable;Z)Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/W;->c(I)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v2, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/Runnable;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "[UploadManager] Upload task should not be null"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    const-string v1, "[UploadManager] Add upload task to queue (pid=%d | tid=%d)"

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/W;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    :try_start_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/W;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/W;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    goto :goto_0

    :goto_1
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "[UploadManager] Failed to add upload task to queue: %s"

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method public static synthetic b(Lcom/tencent/bugly/proguard/W;)I
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/W;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/W;->l:I

    return v0
.end method

.method private b(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/Z;->c()Lcom/tencent/bugly/proguard/Z;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_4

    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/tencent/bugly/proguard/W;->j:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget v7, p0, Lcom/tencent/bugly/proguard/W;->l:I

    if-lt v7, v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/Z;->a(Ljava/lang/Runnable;)Z

    monitor-exit v6

    goto :goto_1

    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "BUGLY_ASYNC_UPLOAD"

    aput-object v7, v6, v2

    const-string v7, "[UploadManager] Create and start a new thread to execute a upload task: %s"

    invoke-static {v7, v6}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v6, Lcom/tencent/bugly/proguard/W$a;

    invoke-direct {v6, p0, v5}, Lcom/tencent/bugly/proguard/W$a;-><init>(Lcom/tencent/bugly/proguard/W;Ljava/lang/Runnable;)V

    const-string v7, "BUGLY_ASYNC_UPLOAD"

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/ha;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/tencent/bugly/proguard/W;->j:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget v5, p0, Lcom/tencent/bugly/proguard/W;->l:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/tencent/bugly/proguard/W;->l:I

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "[UploadManager] Failed to start a thread to execute asynchronous upload task,will try again next time."

    invoke-static {v7, v6}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v5, v3}, Lcom/tencent/bugly/proguard/W;->a(Ljava/lang/Runnable;Z)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method private c(I)V
    .locals 9

    const/4 v0, 0x0

    if-gez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[UploadManager] Number of task to execute should >= 0"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/Z;->c()Lcom/tencent/bugly/proguard/Z;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/W;->j:Ljava/lang/Object;

    monitor-enter v4

    const-string v5, "[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)"

    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/tencent/bugly/proguard/W;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/bugly/proguard/W;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    const-string p1, "[UploadManager] There is no upload task in queue."

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    monitor-exit v4

    return-void

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-ge p1, v5, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    add-int v7, v5, v6

    if-ge p1, v7, :cond_4

    sub-int v6, p1, v5

    :cond_4
    :goto_0
    move p1, v5

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/Z;->d()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v6

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/W;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v1, v2, p1}, Lcom/tencent/bugly/proguard/W;->a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;I)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/W;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v1, v3, v0}, Lcom/tencent/bugly/proguard/W;->a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;I)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1, v2}, Lcom/tencent/bugly/proguard/W;->b(ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-direct {p0, v0, v3}, Lcom/tencent/bugly/proguard/W;->a(ILjava/util/concurrent/LinkedBlockingQueue;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Z)J
    .locals 11

    invoke-static {}, Lcom/tencent/bugly/proguard/ha;->b()J

    move-result-wide v0

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    iget-object v4, p0, Lcom/tencent/bugly/proguard/W;->b:Lcom/tencent/bugly/proguard/J;

    invoke-virtual {v4, v3}, Lcom/tencent/bugly/proguard/J;->a(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/L;

    iget-wide v8, p1, Lcom/tencent/bugly/proguard/L;->e:J

    cmp-long v10, v8, v0

    if-ltz v10, :cond_2

    iget-object v0, p1, Lcom/tencent/bugly/proguard/L;->g:[B

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ha;->b([B)J

    move-result-wide v6

    if-ne v3, v2, :cond_1

    iput-wide v6, p0, Lcom/tencent/bugly/proguard/W;->f:J

    goto :goto_1

    :cond_1
    iput-wide v6, p0, Lcom/tencent/bugly/proguard/W;->g:J

    :goto_1
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/tencent/bugly/proguard/W;->b:Lcom/tencent/bugly/proguard/J;

    invoke-virtual {p1, v4}, Lcom/tencent/bugly/proguard/J;->a(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/W;->g:J

    goto :goto_3

    :cond_4
    iget-wide v6, p0, Lcom/tencent/bugly/proguard/W;->f:J

    :cond_5
    :goto_3
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-wide/16 v0, 0x400

    div-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v5

    const-string v0, "[UploadManager] Local network consume: %d KB"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-wide v6
.end method

.method public a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;IIZLjava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/T;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/X;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, p0

    :try_start_1
    iget-object v2, v14, Lcom/tencent/bugly/proguard/W;->c:Landroid/content/Context;

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/tencent/bugly/proguard/X;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;ZIIZLjava/util/Map;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move/from16 p3, p9

    move/from16 p4, v1

    move-wide/from16 p5, v2

    invoke-direct/range {p1 .. p6}, Lcom/tencent/bugly/proguard/W;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v14, p0

    :goto_0
    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;JZ)V
    .locals 12

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/X;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    :try_start_1
    iget-object v2, v11, Lcom/tencent/bugly/proguard/W;->c:Landroid/content/Context;

    const/4 v9, 0x1

    move-object v1, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/tencent/bugly/proguard/X;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;ZZ)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object p1, p0

    move-object p2, v0

    move p3, v1

    move/from16 p4, v2

    move-wide/from16 p5, p7

    invoke-direct/range {p1 .. p6}, Lcom/tencent/bugly/proguard/W;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_0
    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;ZLjava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/T;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/bugly/proguard/W;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;IIZLjava/util/Map;)V

    return-void
.end method

.method public declared-synchronized a(IJ)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/W;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/tencent/bugly/proguard/L;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/L;-><init>()V

    iput p1, v2, Lcom/tencent/bugly/proguard/L;->b:I

    iput-wide p2, v2, Lcom/tencent/bugly/proguard/L;->e:J

    const-string v3, ""

    iput-object v3, v2, Lcom/tencent/bugly/proguard/L;->c:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v2, Lcom/tencent/bugly/proguard/L;->d:Ljava/lang/String;

    new-array v3, v1, [B

    iput-object v3, v2, Lcom/tencent/bugly/proguard/L;->g:[B

    iget-object v3, p0, Lcom/tencent/bugly/proguard/W;->b:Lcom/tencent/bugly/proguard/J;

    invoke-virtual {v3, p1}, Lcom/tencent/bugly/proguard/J;->b(I)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/W;->b:Lcom/tencent/bugly/proguard/J;

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/J;->c(Lcom/tencent/bugly/proguard/L;)Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/ha;->a(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "[UploadManager] Uploading(ID:%d) time: %s"

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "[UploadManager] Unknown uploading ID: %d"

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
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

.method public a(ILcom/tencent/bugly/proguard/ta;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;JZ)V
    .locals 10

    move-object v0, p2

    iget v2, v0, Lcom/tencent/bugly/proguard/ta;->i:I

    invoke-static {p2}, Lcom/tencent/bugly/proguard/N;->a(Ljava/lang/Object;)[B

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/bugly/proguard/W;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;JZ)V

    return-void
.end method

.method public a(ILcom/tencent/bugly/proguard/ta;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;Z)V
    .locals 11

    move-object v0, p2

    iget v2, v0, Lcom/tencent/bugly/proguard/ta;->i:I

    invoke-static {p2}, Lcom/tencent/bugly/proguard/N;->a(Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/bugly/proguard/W;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;IIZLjava/util/Map;)V

    return-void
.end method

.method public declared-synchronized a(JZ)V
    .locals 4

    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/L;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/L;-><init>()V

    iput v0, v1, Lcom/tencent/bugly/proguard/L;->b:I

    invoke-static {}, Lcom/tencent/bugly/proguard/ha;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/L;->e:J

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/proguard/L;->c:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/proguard/L;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/ha;->b(J)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/L;->g:[B

    iget-object v2, p0, Lcom/tencent/bugly/proguard/W;->b:Lcom/tencent/bugly/proguard/J;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/J;->b(I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/W;->b:Lcom/tencent/bugly/proguard/J;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/J;->c(Lcom/tencent/bugly/proguard/L;)Z

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/W;->g:J

    goto :goto_1

    :cond_1
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/W;->f:J

    :goto_1
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p3, p2

    const-string p1, "[UploadManager] Network total consume: %d KB"

    invoke-static {p1, p3}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(I)Z
    .locals 7

    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Uploading frequency will not be checked if SDK is in debug mode."

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/W;->b(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "[UploadManager] Time interval is %d seconds since last uploading(ID: %d)."

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v5, 0x7530

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "[UploadManager] Data only be uploaded once in %d seconds."

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v2

    :cond_1
    return v1
.end method

.method public declared-synchronized b(I)J
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/W;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "[UploadManager] Unknown upload ID: %d"

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
