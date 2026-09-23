.class public final Ljb/h;
.super Ljb/q;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final g:Lmb/f;

.field public final h:Lkb/j;

.field public final i:Lkb/j;

.field public final synthetic j:Ljb/i;


# direct methods
.method public constructor <init>(Ljb/i;Lmb/f;)V
    .locals 7

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ljb/h;->j:Ljb/i;

    .line 7
    .line 8
    iget-object v2, p1, Ljb/i;->l:Lhb/k;

    .line 9
    .line 10
    iget-object v0, p1, Ljb/i;->e:Lpa/k;

    .line 11
    .line 12
    iget-object v3, v0, Lpa/k;->q:Ljava/util/List;

    .line 13
    .line 14
    const-string v1, "getFunctionList(...)"

    .line 15
    .line 16
    invoke-static {v3, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, v0, Lpa/k;->r:Ljava/util/List;

    .line 20
    .line 21
    const-string v1, "getPropertyList(...)"

    .line 22
    .line 23
    invoke-static {v4, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v5, v0, Lpa/k;->s:Ljava/util/List;

    .line 27
    .line 28
    const-string v1, "getTypeAliasList(...)"

    .line 29
    .line 30
    invoke-static {v5, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lpa/k;->k:Ljava/util/List;

    .line 34
    .line 35
    const-string v1, "getNestedClassNameList(...)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Ljb/i;->l:Lhb/k;

    .line 41
    .line 42
    iget-object p1, p1, Lhb/k;->b:Lra/f;

    .line 43
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 v6, 0xa

    .line 47
    .line 48
    invoke-static {v0, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-static {p1, v6}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance v6, Ljb/e;

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-direct {v6, p1, v1}, Ljb/e;-><init>(ILjava/util/ArrayList;)V

    .line 87
    .line 88
    .line 89
    move-object v1, p0

    .line 90
    invoke-direct/range {v1 .. v6}, Ljb/q;-><init>(Lhb/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf9/a;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, v2, Lhb/k;->a:Lhb/i;

    .line 94
    .line 95
    iput-object p2, v1, Ljb/h;->g:Lmb/f;

    .line 96
    .line 97
    iget-object p2, p1, Lhb/i;->a:Lkb/l;

    .line 98
    .line 99
    new-instance v0, Ljb/f;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-direct {v0, p0, v2}, Ljb/f;-><init>(Ljb/h;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v2, Lkb/j;

    .line 109
    .line 110
    invoke-direct {v2, p2, v0}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 111
    .line 112
    .line 113
    iput-object v2, v1, Ljb/h;->h:Lkb/j;

    .line 114
    .line 115
    iget-object p1, p1, Lhb/i;->a:Lkb/l;

    .line 116
    .line 117
    new-instance p2, Ljb/f;

    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    invoke-direct {p2, p0, v0}, Ljb/f;-><init>(Ljb/h;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v0, Lkb/j;

    .line 127
    .line 128
    invoke-direct {v0, p1, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, v1, Ljb/h;->i:Lkb/j;

    .line 132
    .line 133
    return-void
.end method


# virtual methods
.method public final a(Lua/e;Lda/b;)Ljava/util/Collection;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Ljb/h;->s(Lua/e;Lda/b;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Ljb/q;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final c(Leb/f;Lf9/k;)Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p2, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ljb/h;->h:Lkb/j;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/Collection;

    .line 13
    .line 14
    return-object p1
.end method

.method public final e(Lua/e;Lda/b;)Lv9/h;
    .locals 1

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
    invoke-virtual {p0, p1, p2}, Ljb/h;->s(Lua/e;Lda/b;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Ljb/h;->j:Ljb/i;

    .line 15
    .line 16
    iget-object v0, v0, Ljb/i;->p:Lba/a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Lba/a;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lf1/e;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lv9/e;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Ljb/q;->e(Lua/e;Lda/b;)Lv9/h;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final f(Lua/e;Lda/b;)Ljava/util/Collection;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Ljb/h;->s(Lua/e;Lda/b;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Ljb/q;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final h(Lf9/k;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ljb/h;->j:Ljb/i;

    .line 2
    .line 3
    iget-object p1, p1, Ljb/i;->p:Lba/a;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lba/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Iterable;

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lua/e;

    .line 37
    .line 38
    const-string v3, "name"

    .line 39
    .line 40
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, p1, Lba/a;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Lf1/e;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lv9/e;

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    :cond_2
    if-nez v1, :cond_3

    .line 61
    .line 62
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 63
    .line 64
    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final j(Ljava/util/ArrayList;Lua/e;)V
    .locals 7

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ljb/h;->i:Lkb/j;

    .line 12
    .line 13
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Llb/w;

    .line 34
    .line 35
    invoke-virtual {v1}, Llb/w;->R()Leb/o;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Lda/b;->c:Lda/b;

    .line 40
    .line 41
    invoke-interface {v1, p2, v2}, Leb/o;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Ljb/q;->b:Lhb/k;

    .line 50
    .line 51
    iget-object v1, v0, Lhb/k;->a:Lhb/i;

    .line 52
    .line 53
    iget-object v1, v1, Lhb/i;->n:Lx9/b;

    .line 54
    .line 55
    iget-object v2, p0, Ljb/h;->j:Ljb/i;

    .line 56
    .line 57
    invoke-interface {v1, p2, v2}, Lx9/b;->c(Lua/e;Lv9/e;)Ljava/util/Collection;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    new-instance v4, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 70
    .line 71
    iget-object v0, v0, Lhb/i;->q:Lmb/k;

    .line 72
    .line 73
    check-cast v0, Lmb/l;

    .line 74
    .line 75
    iget-object v1, v0, Lmb/l;->d:Lxa/j;

    .line 76
    .line 77
    new-instance v6, Ljb/g;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-direct {v6, p1, v0}, Ljb/g;-><init>(Ljava/util/AbstractCollection;I)V

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Ljb/h;->j:Ljb/i;

    .line 84
    .line 85
    move-object v2, p2

    .line 86
    invoke-virtual/range {v1 .. v6}, Lxa/j;->h(Lua/e;Ljava/util/Collection;Ljava/util/Collection;Lv9/e;Lxa/k;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final k(Ljava/util/ArrayList;Lua/e;)V
    .locals 7

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ljb/h;->i:Lkb/j;

    .line 12
    .line 13
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Llb/w;

    .line 34
    .line 35
    invoke-virtual {v1}, Llb/w;->R()Leb/o;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Lda/b;->c:Lda/b;

    .line 40
    .line 41
    invoke-interface {v1, p2, v2}, Leb/o;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Ljb/q;->b:Lhb/k;

    .line 55
    .line 56
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 57
    .line 58
    iget-object v0, v0, Lhb/i;->q:Lmb/k;

    .line 59
    .line 60
    check-cast v0, Lmb/l;

    .line 61
    .line 62
    iget-object v1, v0, Lmb/l;->d:Lxa/j;

    .line 63
    .line 64
    new-instance v6, Ljb/g;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-direct {v6, p1, v0}, Ljb/g;-><init>(Ljava/util/AbstractCollection;I)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Ljb/h;->j:Ljb/i;

    .line 71
    .line 72
    move-object v2, p2

    .line 73
    invoke-virtual/range {v1 .. v6}, Lxa/j;->h(Lua/e;Ljava/util/Collection;Ljava/util/Collection;Lv9/e;Lxa/k;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final l(Lua/e;)Lua/b;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ljb/h;->j:Ljb/i;

    .line 7
    .line 8
    iget-object v0, v0, Ljb/i;->h:Lua/b;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lua/b;->d(Lua/e;)Lua/b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final n()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Ljb/h;->j:Ljb/i;

    .line 2
    .line 3
    iget-object v0, v0, Ljb/i;->n:Lia/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Llb/f;->e()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Llb/w;

    .line 29
    .line 30
    invoke-virtual {v2}, Llb/w;->R()Leb/o;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Leb/o;->d()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Iterable;

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    return-object v0

    .line 44
    :cond_0
    invoke-static {v2, v1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v1
.end method

.method public final o()Ljava/util/Set;
    .locals 4

    .line 1
    iget-object v0, p0, Ljb/h;->j:Ljb/i;

    .line 2
    .line 3
    iget-object v1, v0, Ljb/i;->n:Lia/h;

    .line 4
    .line 5
    invoke-virtual {v1}, Llb/f;->e()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Llb/w;

    .line 29
    .line 30
    invoke-virtual {v3}, Llb/w;->R()Leb/o;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3}, Leb/o;->b()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-static {v3, v2}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Ljb/q;->b:Lhb/k;

    .line 45
    .line 46
    iget-object v1, v1, Lhb/k;->a:Lhb/i;

    .line 47
    .line 48
    iget-object v1, v1, Lhb/i;->n:Lx9/b;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Lx9/b;->d(Lv9/e;)Ljava/util/Collection;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    return-object v2
.end method

.method public final p()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Ljb/h;->j:Ljb/i;

    .line 2
    .line 3
    iget-object v0, v0, Ljb/i;->n:Lia/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Llb/f;->e()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Llb/w;

    .line 29
    .line 30
    invoke-virtual {v2}, Llb/w;->R()Leb/o;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Leb/o;->g()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-static {v2, v1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v1
.end method

.method public final r(Ljb/t;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ljb/q;->b:Lhb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 4
    .line 5
    iget-object v0, v0, Lhb/i;->o:Lx9/d;

    .line 6
    .line 7
    iget-object v1, p0, Ljb/h;->j:Ljb/i;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Lx9/d;->b(Lv9/e;Ljb/t;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final s(Lua/e;Lda/b;)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "location"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ljb/q;->b:Lhb/k;

    .line 12
    .line 13
    iget-object p1, p1, Lhb/k;->a:Lhb/i;

    .line 14
    .line 15
    iget-object p1, p1, Lhb/i;->i:Lda/a;

    .line 16
    .line 17
    const-string p2, "<this>"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "scopeOwner"

    .line 23
    .line 24
    iget-object p2, p0, Ljb/h;->j:Ljb/i;

    .line 25
    .line 26
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
