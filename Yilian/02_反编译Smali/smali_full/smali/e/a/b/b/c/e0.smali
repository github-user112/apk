.class public final Le/a/b/b/c/e0;
.super Le/a/b/b/c/b0;
.source ""


# direct methods
.method public constructor <init>(Le/a/b/d/c/d;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/b/c/b0;-><init>(Le/a/b/d/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 3

    invoke-super {p0, p1}, Le/a/b/b/c/b0;->a(Le/a/b/b/c/m;)V

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->h:Le/a/b/b/c/k0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/b0;->c:Le/a/b/d/c/r;

    .line 3
    check-cast v0, Le/a/b/d/c/d;

    .line 4
    iget-object v0, v0, Le/a/b/d/c/d;->c:Le/a/b/d/d/a;

    .line 5
    monitor-enter p1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Le/a/b/b/c/l0;->h()V

    iget-object v1, p1, Le/a/b/b/c/k0;->f:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/c/j0;

    if-nez v1, :cond_0

    new-instance v1, Le/a/b/b/c/j0;

    invoke-direct {v1, v0}, Le/a/b/b/c/j0;-><init>(Le/a/b/d/d/a;)V

    iget-object v2, p1, Le/a/b/b/c/k0;->f:Ljava/util/TreeMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p1

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->i:Le/a/b/b/c/z;

    return-object v0
.end method

.method public h(Le/a/b/b/c/m;)I
    .locals 1

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->h:Le/a/b/b/c/k0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/b0;->c:Le/a/b/d/c/r;

    .line 3
    check-cast v0, Le/a/b/d/c/d;

    .line 4
    iget-object v0, v0, Le/a/b/d/c/d;->c:Le/a/b/d/d/a;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Le/a/b/b/c/l0;->g()V

    iget-object p1, p1, Le/a/b/b/c/k0;->f:Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/b/c/j0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/b/b/c/x;->e()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    throw p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "proto_idx"

    return-object v0
.end method
