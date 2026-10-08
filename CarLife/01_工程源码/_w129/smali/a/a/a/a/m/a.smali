.class public final synthetic La/a/a/a/m/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/m/h;


# instance fields
.field public final synthetic b:La/a/a/a/m/d;


# direct methods
.method public synthetic constructor <init>(La/a/a/a/m/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/a;->b:La/a/a/a/m/d;

    return-void
.end method


# virtual methods
.method public final b(II)V
    .locals 3

    iget-object v0, p0, La/a/a/a/m/a;->b:La/a/a/a/m/d;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, La/a/a/a/m/d;->G:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/a/a/a/m/h;

    invoke-interface {v2, p1, p2}, La/a/a/a/m/h;->b(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
