.class public final Ljb/u;
.super Ly9/f;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljb/l;


# instance fields
.field public final i:Lpa/u0;

.field public final j:Lra/f;

.field public final k:Lra/g;

.field public final l:Lra/h;

.field public final m:Ljb/k;

.field public n:Llb/a0;

.field public o:Llb/a0;

.field public p:Ljava/util/List;

.field public q:Llb/a0;


# direct methods
.method public constructor <init>(Lkb/o;Lv9/k;Lw9/h;Lua/e;Lea/o;Lpa/u0;Lra/f;Lra/g;Lra/h;Ljb/k;)V
    .locals 1

    .line 1
    const-string v0, "storageManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "containingDeclaration"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "visibility"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "proto"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "nameResolver"

    .line 22
    .line 23
    invoke-static {p7, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "typeTable"

    .line 27
    .line 28
    invoke-static {p8, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "versionRequirementTable"

    .line 32
    .line 33
    invoke-static {p9, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct/range {p0 .. p5}, Ly9/f;-><init>(Lkb/o;Lv9/k;Lw9/h;Lua/e;Lea/o;)V

    .line 37
    .line 38
    .line 39
    move-object p1, p0

    .line 40
    iput-object p6, p1, Ljb/u;->i:Lpa/u0;

    .line 41
    .line 42
    iput-object p7, p1, Ljb/u;->j:Lra/f;

    .line 43
    .line 44
    iput-object p8, p1, Ljb/u;->k:Lra/g;

    .line 45
    .line 46
    iput-object p9, p1, Ljb/u;->l:Lra/h;

    .line 47
    .line 48
    iput-object p10, p1, Ljb/u;->m:Ljb/k;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final B()Lva/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/u;->i:Lpa/u0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C0()Lv9/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljb/u;->D0()Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Llb/c;->j(Llb/w;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljb/u;->D0()Llb/a0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lv9/e;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lv9/e;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method public final D0()Llb/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/u;->o:Llb/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "expandedType"

    .line 7
    .line 8
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public final E0()Llb/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/u;->n:Llb/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "underlyingType"

    .line 7
    .line 8
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public final F0(Ljava/util/List;Llb/a0;Llb/a0;)V
    .locals 6

    .line 1
    const-string v0, "underlyingType"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "expandedType"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ly9/f;->g:Ljava/util/List;

    .line 12
    .line 13
    iput-object p2, p0, Ljb/u;->n:Llb/a0;

    .line 14
    .line 15
    iput-object p3, p0, Ljb/u;->o:Llb/a0;

    .line 16
    .line 17
    invoke-static {p0}, Lv9/v;->c(Lv9/i;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Ljb/u;->p:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljb/u;->C0()Lv9/e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Lv9/e;->s0()Leb/o;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    move-object v4, p1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    sget-object p1, Leb/n;->b:Leb/n;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_2
    new-instance v5, Ly9/d;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object p1, Llb/v0;->a:Lnb/i;

    .line 47
    .line 48
    invoke-static {p0}, Lnb/l;->f(Lv9/k;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Ly9/f;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    filled-new-array {p1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object p2, Lnb/k;->k:Lnb/k;

    .line 63
    .line 64
    invoke-static {p2, p1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    invoke-virtual {p0}, Ly9/f;->t()Llb/k0;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    move-object p1, v1

    .line 76
    check-cast p1, Ly9/e;

    .line 77
    .line 78
    invoke-virtual {p1}, Ly9/e;->m()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Llb/v0;->d(Ljava/util/List;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    sget-object p1, Llb/h0;->b:Lu0/j;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object v0, Llb/h0;->c:Llb/h0;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-static/range {v0 .. v5}, Llb/c;->v(Llb/h0;Llb/k0;Ljava/util/List;ZLeb/o;Lf9/k;)Llb/a0;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_3
    iput-object p1, p0, Ljb/u;->q:Llb/a0;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    const/16 p1, 0xc

    .line 102
    .line 103
    invoke-static {p1}, Llb/v0;->a(I)V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    throw p1
.end method

.method public final P()Lra/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/u;->k:Lra/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Lra/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/u;->j:Lra/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Ljb/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/u;->m:Ljb/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Llb/s0;)Lv9/l;
    .locals 12

    .line 1
    const-string v0, "substitutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Llb/s0;->a:Llb/q0;

    .line 7
    .line 8
    invoke-virtual {v0}, Llb/q0;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v1, Ljb/u;

    .line 16
    .line 17
    invoke-virtual {p0}, Ly9/n;->k()Lv9/k;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v0, "getContainingDeclaration(...)"

    .line 22
    .line 23
    invoke-static {v3, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lfb/a;->getAnnotations()Lw9/h;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v0, "<get-annotations>(...)"

    .line 31
    .line 32
    invoke-static {v4, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-string v0, "getName(...)"

    .line 40
    .line 41
    invoke-static {v5, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v10, p0, Ljb/u;->l:Lra/h;

    .line 45
    .line 46
    iget-object v11, p0, Ljb/u;->m:Ljb/k;

    .line 47
    .line 48
    iget-object v2, p0, Ly9/f;->e:Lkb/o;

    .line 49
    .line 50
    iget-object v6, p0, Ly9/f;->f:Lea/o;

    .line 51
    .line 52
    iget-object v7, p0, Ljb/u;->i:Lpa/u0;

    .line 53
    .line 54
    iget-object v8, p0, Ljb/u;->j:Lra/f;

    .line 55
    .line 56
    iget-object v9, p0, Ljb/u;->k:Lra/g;

    .line 57
    .line 58
    invoke-direct/range {v1 .. v11}, Ljb/u;-><init>(Lkb/o;Lv9/k;Lw9/h;Lua/e;Lea/o;Lpa/u0;Lra/f;Lra/g;Lra/h;Ljb/k;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ly9/f;->q()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0}, Ljb/u;->E0()Llb/a0;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sget-object v3, Llb/y0;->c:Llb/y0;

    .line 70
    .line 71
    invoke-virtual {p1, v2, v3}, Llb/s0;->g(Llb/w;Llb/y0;)Llb/w;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p0}, Ljb/u;->D0()Llb/a0;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {p1, v4, v3}, Llb/s0;->g(Llb/w;Llb/y0;)Llb/w;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v1, v0, v2, p1}, Ljb/u;->F0(Ljava/util/List;Llb/a0;Llb/a0;)V

    .line 92
    .line 93
    .line 94
    return-object v1
.end method

.method public final n()Llb/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/u;->q:Llb/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "defaultTypeImpl"

    .line 7
    .line 8
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method
