.class public final Lp1/a;
.super Lp1/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public final D(Lf9/k;Lf9/k;)Lp1/b;
    .locals 2

    .line 1
    new-instance v0, La8/h0;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lc8/x;

    .line 9
    .line 10
    const/16 p2, 0x8

    .line 11
    .line 12
    invoke-direct {p1, v0, p2}, Lc8/x;-><init>(Lf9/k;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lp1/l;->f(Lf9/k;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lp1/f;

    .line 20
    .line 21
    check-cast p1, Lp1/b;

    .line 22
    .line 23
    return-object p1
.end method

.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Lp1/l;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lp1/f;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    .line 11
    throw v1
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-static {}, Lp1/q;->h()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public final l()V
    .locals 1

    .line 1
    invoke-static {}, Lp1/q;->h()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public final m()V
    .locals 0

    .line 1
    invoke-static {}, Lp1/l;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final u(Lf9/k;)Lp1/f;
    .locals 2

    .line 1
    new-instance v0, Lf1/y0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p1, v1}, Lf1/y0;-><init>(Lf9/k;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lc8/x;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Lc8/x;-><init>(Lf9/k;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lp1/l;->f(Lf9/k;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lp1/f;

    .line 19
    .line 20
    check-cast p1, Lp1/e;

    .line 21
    .line 22
    return-object p1
.end method

.method public final w()Lp1/q;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
