.class public final Lnb/a;
.super Ly9/k;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public constructor <init>(Lua/e;)V
    .locals 15

    .line 1
    sget-object v0, Lnb/l;->a:Lnb/l;

    .line 2
    .line 3
    sget-object v2, Lnb/l;->b:Lnb/e;

    .line 4
    .line 5
    sget-object v7, Lkb/l;->e:Lkb/c;

    .line 6
    .line 7
    sget-object v4, Lv9/x;->d:Lv9/x;

    .line 8
    .line 9
    sget-object v5, Lv9/f;->a:Lv9/f;

    .line 10
    .line 11
    sget-object v6, Ls8/w;->a:Ls8/w;

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move-object/from16 v3, p1

    .line 15
    .line 16
    invoke-direct/range {v1 .. v7}, Ly9/k;-><init>(Lv9/k;Lua/e;Lv9/x;Lv9/f;Ljava/util/List;Lkb/o;)V

    .line 17
    .line 18
    .line 19
    new-instance v8, Ly9/i;

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v13, 0x1

    .line 23
    sget-object v11, Lw9/g;->a:Lw9/f;

    .line 24
    .line 25
    const/4 v12, 0x1

    .line 26
    sget-object v14, Lv9/m0;->e0:Lv9/n0;

    .line 27
    .line 28
    move-object v9, p0

    .line 29
    invoke-direct/range {v8 .. v14}, Ly9/i;-><init>(Lv9/e;Lv9/j;Lw9/h;ZILv9/m0;)V

    .line 30
    .line 31
    .line 32
    move-object v0, v8

    .line 33
    sget-object v2, Lv9/o;->d:Lea/o;

    .line 34
    .line 35
    invoke-virtual {v0, v6, v2}, Ly9/i;->Q0(Ljava/util/List;Lea/o;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ly9/m;->getName()Lua/e;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v2, v2, Lua/e;->a:Ljava/lang/String;

    .line 43
    .line 44
    const-string v3, ""

    .line 45
    .line 46
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lnb/h;->f:Lnb/h;

    .line 51
    .line 52
    invoke-static {v3, v2}, Lnb/l;->b(Lnb/h;[Ljava/lang/String;)Lnb/g;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    new-instance v8, Lnb/i;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    new-array v3, v2, [Ljava/lang/String;

    .line 60
    .line 61
    sget-object v11, Lnb/k;->v:Lnb/k;

    .line 62
    .line 63
    invoke-static {v11, v3}, Lnb/l;->d(Lnb/k;[Ljava/lang/String;)Lnb/j;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    new-array v14, v2, [Ljava/lang/String;

    .line 68
    .line 69
    const/4 v13, 0x0

    .line 70
    move-object v12, v6

    .line 71
    invoke-direct/range {v8 .. v14}, Lnb/i;-><init>(Llb/k0;Lnb/g;Lnb/k;Ljava/util/List;Z[Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object v8, v0, Ly9/u;->g:Llb/w;

    .line 75
    .line 76
    invoke-static {v0}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0, v10, v2, v0}, Ly9/k;->B0(Leb/o;Ljava/util/Set;Ly9/i;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final e(Llb/s0;)Lv9/l;
    .locals 1

    .line 1
    const-string v0, "substitutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly9/b;->getName()Lua/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "asString(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final u0(Llb/s0;)Lv9/e;
    .locals 1

    .line 1
    const-string v0, "substitutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final x(Llb/q0;Lmb/f;)Leb/o;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly9/b;->getName()Lua/e;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p2, p2, Lua/e;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p2, Lnb/h;->f:Lnb/h;

    .line 16
    .line 17
    invoke-static {p2, p1}, Lnb/l;->b(Lnb/h;[Ljava/lang/String;)Lnb/g;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
