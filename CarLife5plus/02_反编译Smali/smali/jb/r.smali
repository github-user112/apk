.class public final Ljb/r;
.super Ljb/q;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final g:Lv9/d0;

.field public final h:Ljava/lang/String;

.field public final i:Lua/c;


# direct methods
.method public constructor <init>(Lv9/d0;Lpa/e0;Lra/f;Lra/a;Lna/h;Lhb/i;Ljava/lang/String;Lf9/a;)V
    .locals 8

    .line 1
    move-object v7, p7

    .line 2
    const-string v0, "proto"

    .line 3
    .line 4
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "nameResolver"

    .line 8
    .line 9
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "metadataVersion"

    .line 13
    .line 14
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "components"

    .line 18
    .line 19
    invoke-static {p6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "debugName"

    .line 23
    .line 24
    invoke-static {p7, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lra/g;

    .line 28
    .line 29
    iget-object v0, p2, Lpa/e0;->g:Lpa/y0;

    .line 30
    .line 31
    const-string v4, "getTypeTable(...)"

    .line 32
    .line 33
    invoke-static {v0, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v0}, Lra/g;-><init>(Lpa/y0;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p2, Lpa/e0;->h:Lpa/f1;

    .line 40
    .line 41
    const-string v4, "getVersionRequirementTable(...)"

    .line 42
    .line 43
    invoke-static {v0, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Lpa/f1;->b:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    sget-object v0, Lra/h;->a:Lra/h;

    .line 55
    .line 56
    move-object v4, v0

    .line 57
    :goto_0
    move-object v1, p1

    .line 58
    move-object v2, p3

    .line 59
    move-object v5, p4

    .line 60
    move-object v6, p5

    .line 61
    move-object v0, p6

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    new-instance v4, Lra/h;

    .line 64
    .line 65
    iget-object v0, v0, Lpa/f1;->b:Ljava/util/List;

    .line 66
    .line 67
    const-string v6, "getRequirementList(...)"

    .line 68
    .line 69
    invoke-static {v0, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lhb/i;->a(Lv9/d0;Lra/f;Lra/g;Lra/h;Lra/a;Ljb/k;)Lhb/k;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, p2, Lpa/e0;->d:Ljava/util/List;

    .line 81
    .line 82
    const-string v1, "getFunctionList(...)"

    .line 83
    .line 84
    invoke-static {v2, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p2, Lpa/e0;->e:Ljava/util/List;

    .line 88
    .line 89
    const-string v1, "getPropertyList(...)"

    .line 90
    .line 91
    invoke-static {v3, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v4, p2, Lpa/e0;->f:Ljava/util/List;

    .line 95
    .line 96
    const-string v1, "getTypeAliasList(...)"

    .line 97
    .line 98
    invoke-static {v4, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move-object/from16 v5, p8

    .line 102
    .line 103
    move-object v1, v0

    .line 104
    move-object v0, p0

    .line 105
    invoke-direct/range {v0 .. v5}, Ljb/q;-><init>(Lhb/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf9/a;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Ljb/r;->g:Lv9/d0;

    .line 109
    .line 110
    iput-object v7, p0, Ljb/r;->h:Ljava/lang/String;

    .line 111
    .line 112
    move-object v1, p1

    .line 113
    check-cast v1, Ly9/c0;

    .line 114
    .line 115
    iget-object v1, v1, Ly9/c0;->e:Lua/c;

    .line 116
    .line 117
    iput-object v1, p0, Ljb/r;->i:Lua/c;

    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public final c(Leb/f;Lf9/k;)Ljava/util/Collection;
    .locals 3

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Ljb/q;->i(Leb/f;Lf9/k;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Ljb/q;->b:Lhb/k;

    .line 11
    .line 12
    iget-object p2, p2, Lhb/k;->a:Lhb/i;

    .line 13
    .line 14
    iget-object p2, p2, Lhb/i;->k:Ljava/lang/Iterable;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lx9/c;

    .line 36
    .line 37
    iget-object v2, p0, Ljb/r;->i:Lua/c;

    .line 38
    .line 39
    invoke-interface {v1, v2}, Lx9/c;->c(Lua/c;)Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Iterable;

    .line 44
    .line 45
    invoke-static {v1, v0}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v0, p1}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public final e(Lua/e;Lda/b;)Lv9/h;
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "location"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ljb/q;->b:Lhb/k;

    .line 12
    .line 13
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 14
    .line 15
    iget-object v0, v0, Lhb/i;->i:Lda/a;

    .line 16
    .line 17
    iget-object v1, p0, Ljb/r;->g:Lv9/d0;

    .line 18
    .line 19
    invoke-static {v0, p2, v1, p1}, Lc7/a;->N(Lda/a;Lda/b;Lv9/d0;Lua/e;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2}, Ljb/q;->e(Lua/e;Lda/b;)Lv9/h;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final h(Lf9/k;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(Lua/e;)Lua/b;
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lua/b;

    .line 7
    .line 8
    iget-object v1, p0, Ljb/r;->i:Lua/c;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final n()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q(Lua/e;)Z
    .locals 3

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljb/q;->q(Lua/e;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Ljb/q;->b:Lhb/k;

    .line 13
    .line 14
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 15
    .line 16
    iget-object v0, v0, Lhb/i;->k:Ljava/lang/Iterable;

    .line 17
    .line 18
    instance-of v1, v0, Ljava/util/Collection;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Ljava/util/Collection;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lx9/c;

    .line 47
    .line 48
    iget-object v2, p0, Ljb/r;->i:Lua/c;

    .line 49
    .line 50
    invoke-interface {v1, v2, p1}, Lx9/c;->b(Lua/c;Lua/e;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 58
    return p1

    .line 59
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 60
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/r;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
