.class public final Lt9/e;
.super Leb/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public final h()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Leb/h;->b:Ly9/b;

    .line 2
    .line 3
    check-cast v0, Lt9/c;

    .line 4
    .line 5
    iget-object v1, v0, Lt9/c;->g:Lt9/k;

    .line 6
    .line 7
    sget-object v2, Lt9/g;->c:Lt9/g;

    .line 8
    .line 9
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lp9/q;->o(Lt9/c;Z)Lt9/f;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_0
    sget-object v2, Lt9/j;->c:Lt9/j;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-static {v0, v1}, Lp9/q;->o(Lt9/c;Z)Lt9/f;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_1
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 44
    .line 45
    return-object v0
.end method
