.class public final Le/d/b/a/f/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/d/b/a/c;

.field public final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Le/d/b/a/f/d;Le/d/b/a/c;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p2, p0, Le/d/b/a/f/c;->a:Le/d/b/a/c;

    iput-object p3, p0, Le/d/b/a/f/c;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Le/d/b/a/f/c;->a:Le/d/b/a/c;

    iget-object v1, p0, Le/d/b/a/f/c;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget-object v0, v0, Le/d/b/a/c;->a:Le/d/b/a/f/b;

    .line 2
    iget-object v2, v0, Le/d/b/a/f/b;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v3, v0, Le/d/b/a/f/b;->b:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v0, Le/d/b/a/f/b;->b:Z

    iput-object v1, v0, Le/d/b/a/f/b;->c:Ljava/lang/Object;

    iget-object v1, v0, Le/d/b/a/f/b;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {v0}, Le/d/b/a/f/b;->a()V

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Le/d/b/a/f/c;->a:Le/d/b/a/c;

    invoke-virtual {v1, v0}, Le/d/b/a/c;->a(Ljava/lang/Exception;)V

    return-void
.end method
