.class public final Le/c/b/e/a/a$h;
.super Le/c/b/e/a/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(Le/c/b/e/a/a$a;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Le/c/b/e/a/a$b;-><init>(Le/c/b/e/a/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Le/c/b/e/a/a;Le/c/b/e/a/a$e;Le/c/b/e/a/a$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/e/a/a<",
            "*>;",
            "Le/c/b/e/a/a$e;",
            "Le/c/b/e/a/a$e;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    .line 1
    :try_start_0
    iget-object v0, p1, Le/c/b/e/a/a;->b:Le/c/b/e/a/a$e;

    if-ne v0, p2, :cond_0

    .line 2
    iput-object p3, p1, Le/c/b/e/a/a;->b:Le/c/b/e/a/a$e;

    const/4 p2, 0x1

    .line 3
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public b(Le/c/b/e/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/e/a/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    .line 1
    :try_start_0
    iget-object v0, p1, Le/c/b/e/a/a;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 2
    iput-object p3, p1, Le/c/b/e/a/a;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 3
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public c(Le/c/b/e/a/a;Le/c/b/e/a/a$l;Le/c/b/e/a/a$l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/e/a/a<",
            "*>;",
            "Le/c/b/e/a/a$l;",
            "Le/c/b/e/a/a$l;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    .line 1
    :try_start_0
    iget-object v0, p1, Le/c/b/e/a/a;->c:Le/c/b/e/a/a$l;

    if-ne v0, p2, :cond_0

    .line 2
    iput-object p3, p1, Le/c/b/e/a/a;->c:Le/c/b/e/a/a$l;

    const/4 p2, 0x1

    .line 3
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :catchall_0
    move-exception p2

    goto :goto_0
.end method

.method public d(Le/c/b/e/a/a$l;Le/c/b/e/a/a$l;)V
    .locals 0

    iput-object p2, p1, Le/c/b/e/a/a$l;->b:Le/c/b/e/a/a$l;

    return-void
.end method

.method public e(Le/c/b/e/a/a$l;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Le/c/b/e/a/a$l;->a:Ljava/lang/Thread;

    return-void
.end method
