.class public Le/d/b/a/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/d/b/a/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/d/b/a/f/b<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/d/b/a/f/b;

    invoke-direct {v0}, Le/d/b/a/f/b;-><init>()V

    iput-object v0, p0, Le/d/b/a/c;->a:Le/d/b/a/f/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Le/d/b/a/c;->a:Le/d/b/a/f/b;

    .line 1
    iget-object v0, p1, Le/d/b/a/f/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Le/d/b/a/f/b;->b:Z

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Le/d/b/a/f/b;->b:Z

    iget-object v1, p1, Le/d/b/a/f/b;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {p1}, Le/d/b/a/f/b;->a()V

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
