.class public final Lec/g;
.super Lec/f;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public final a(Lw8/h;ILcc/a;)Lec/f;
    .locals 2

    .line 1
    new-instance v0, Lec/g;

    .line 2
    .line 3
    iget-object v1, p0, Lec/f;->d:Ldc/d;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Lec/f;-><init>(Ldc/d;Lw8/h;ILcc/a;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final b()Ldc/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lec/f;->d:Ldc/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Ldc/e;Lw8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lec/f;->d:Ldc/d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 13
    .line 14
    return-object p1
.end method
