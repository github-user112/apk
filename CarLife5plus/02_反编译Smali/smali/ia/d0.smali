.class public final Lia/d0;
.super Lia/e0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic p:I


# instance fields
.field public final n:Lba/p;

.field public final o:Lia/j;


# direct methods
.method public constructor <init>(Lba/a;Lba/p;Lia/j;)V
    .locals 1

    .line 1
    const-string v0, "jClass"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lia/a0;-><init>(Lba/a;Lia/o;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lia/d0;->n:Lba/p;

    .line 11
    .line 12
    iput-object p3, p0, Lia/d0;->o:Lia/j;

    .line 13
    .line 14
    return-void
.end method

.method public static v(Lv9/k0;)Lv9/k0;
    .locals 2

    .line 1
    invoke-interface {p0}, Lv9/c;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Lv9/c;->m()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "getOverriddenDescriptors(...)"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p0, Ljava/lang/Iterable;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    invoke-static {p0, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lv9/k0;

    .line 46
    .line 47
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lia/d0;->v(Lv9/k0;)Lv9/k0;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v0}, Ls8/p;->D0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lv9/k0;

    .line 71
    .line 72
    return-object p0
.end method


# virtual methods
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
    const-string p1, "location"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1
.end method

.method public final h(Leb/f;Lf9/k;)Ljava/util/Set;
    .locals 0

    .line 1
    const-string p2, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ls8/y;->a:Ls8/y;

    .line 7
    .line 8
    return-object p1
.end method

.method public final i(Leb/f;Leb/l;)Ljava/util/Set;
    .locals 3

    .line 1
    const-string p2, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lia/a0;->e:Lkb/j;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lia/c;

    .line 13
    .line 14
    invoke-interface {p1}, Lia/c;->a()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-static {p1}, Ls8/p;->D0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lia/d0;->o:Lia/j;

    .line 25
    .line 26
    invoke-static {p2}, Li9/a;->F(Lv9/e;)Lia/d0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lia/a0;->b()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-nez v0, :cond_1

    .line 39
    .line 40
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 41
    .line 42
    :cond_1
    check-cast v0, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lia/d0;->n:Lba/p;

    .line 48
    .line 49
    iget-object v0, v0, Lba/p;->a:Ljava/lang/Class;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    new-array v0, v0, [Lua/e;

    .line 59
    .line 60
    sget-object v1, Ls9/p;->c:Lua/e;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    aput-object v1, v0, v2

    .line 64
    .line 65
    sget-object v1, Ls9/p;->a:Lua/e;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    aput-object v1, v0, v2

    .line 69
    .line 70
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lia/a0;->b:Lba/a;

    .line 78
    .line 79
    iget-object v1, v0, Lba/a;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Lha/a;

    .line 82
    .line 83
    iget-object v1, v1, Lha/a;->x:Lcb/e;

    .line 84
    .line 85
    check-cast v1, Lcb/a;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const-string v1, "thisDescriptor"

    .line 91
    .line 92
    invoke-static {p2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string p2, "c"

    .line 96
    .line 97
    invoke-static {v0, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance p2, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    return-object p1
.end method

.method public final j(Ljava/util/ArrayList;Lua/e;)V
    .locals 2

    .line 1
    const-string p1, "name"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lia/a0;->b:Lba/a;

    .line 7
    .line 8
    iget-object v0, p1, Lba/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lha/a;

    .line 11
    .line 12
    iget-object v0, v0, Lha/a;->x:Lcb/e;

    .line 13
    .line 14
    check-cast v0, Lcb/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v0, "thisDescriptor"

    .line 20
    .line 21
    iget-object v1, p0, Lia/d0;->o:Lia/j;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "name"

    .line 27
    .line 28
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p2, "c"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final k()Lia/c;
    .locals 3

    .line 1
    new-instance v0, Lia/a;

    .line 2
    .line 3
    iget-object v1, p0, Lia/d0;->n:Lba/p;

    .line 4
    .line 5
    sget-object v2, Lia/m;->d:Lia/m;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lia/a;-><init>(Lba/p;Lf9/k;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;Lua/e;)V
    .locals 8

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia/d0;->o:Lia/j;

    .line 7
    .line 8
    invoke-static {v0}, Li9/a;->F(Lv9/e;)Lia/d0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Ls8/y;->a:Ls8/y;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v2, Lda/b;->e:Lda/b;

    .line 18
    .line 19
    invoke-virtual {v1, p2, v2}, Lia/a0;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-static {v1}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    move-object v3, v1

    .line 30
    check-cast v3, Ljava/util/Collection;

    .line 31
    .line 32
    iget-object v1, p0, Lia/a0;->b:Lba/a;

    .line 33
    .line 34
    iget-object v1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lha/a;

    .line 37
    .line 38
    iget-object v6, v1, Lha/a;->f:Lhb/m;

    .line 39
    .line 40
    iget-object v1, v1, Lha/a;->u:Lmb/k;

    .line 41
    .line 42
    check-cast v1, Lmb/l;

    .line 43
    .line 44
    iget-object v7, v1, Lmb/l;->d:Lxa/j;

    .line 45
    .line 46
    iget-object v5, p0, Lia/d0;->o:Lia/j;

    .line 47
    .line 48
    move-object v4, p1

    .line 49
    move-object v2, p2

    .line 50
    invoke-static/range {v2 .. v7}, Lc7/a;->R(Lua/e;Ljava/util/Collection;Ljava/util/AbstractCollection;Lia/j;Lhb/m;Lxa/j;)Ljava/util/LinkedHashSet;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {v4, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lia/d0;->n:Lba/p;

    .line 58
    .line 59
    iget-object p1, p1, Lba/p;->a:Ljava/lang/Class;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    sget-object p1, Ls9/p;->c:Lua/e;

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Lua/e;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-static {v0}, Lxa/k;->i(Ly9/b;)Ly9/l0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    sget-object p1, Ls9/p;->a:Lua/e;

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Lua/e;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-static {v0}, Lxa/k;->j(Ly9/b;)Ly9/l0;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method

.method public final n(Ljava/util/ArrayList;Lua/e;)V
    .locals 10

    .line 1
    const-string v1, "name"

    .line 2
    .line 3
    invoke-static {p2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lba/j;

    .line 12
    .line 13
    const/16 v3, 0xb

    .line 14
    .line 15
    invoke-direct {v2, v3, p2}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v6, p0, Lia/d0;->o:Lia/j;

    .line 19
    .line 20
    invoke-static {v6}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lia/c0;

    .line 25
    .line 26
    invoke-direct {v4, v6, v1, v2}, Lia/c0;-><init>(Lv9/e;Ljava/util/Set;Lf9/k;)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lia/b0;->a:Lia/b0;

    .line 30
    .line 31
    invoke-static {v3, v2, v4}, Lub/k;->f(Ljava/util/List;Lub/a;Lub/k;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v7, p0, Lia/a0;->b:Lba/a;

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    iget-object v2, v7, Lba/a;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lha/a;

    .line 45
    .line 46
    iget-object v4, v2, Lha/a;->f:Lhb/m;

    .line 47
    .line 48
    iget-object v2, v2, Lha/a;->u:Lmb/k;

    .line 49
    .line 50
    check-cast v2, Lmb/l;

    .line 51
    .line 52
    iget-object v5, v2, Lmb/l;->d:Lxa/j;

    .line 53
    .line 54
    iget-object v3, p0, Lia/d0;->o:Lia/j;

    .line 55
    .line 56
    move-object v2, p1

    .line 57
    move-object v0, p2

    .line 58
    invoke-static/range {v0 .. v5}, Lc7/a;->R(Lua/e;Ljava/util/Collection;Ljava/util/AbstractCollection;Lia/j;Lhb/m;Lxa/j;)Ljava/util/LinkedHashSet;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    move-object v4, v3

    .line 86
    check-cast v4, Lv9/k0;

    .line 87
    .line 88
    invoke-static {v4}, Lia/d0;->v(Lv9/k0;)Lv9/k0;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-nez v5, :cond_1

    .line 97
    .line 98
    new-instance v5, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    move-object v1, v0

    .line 142
    check-cast v1, Ljava/util/Collection;

    .line 143
    .line 144
    iget-object v0, v7, Lba/a;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Lha/a;

    .line 147
    .line 148
    iget-object v4, v0, Lha/a;->f:Lhb/m;

    .line 149
    .line 150
    iget-object v0, v0, Lha/a;->u:Lmb/k;

    .line 151
    .line 152
    check-cast v0, Lmb/l;

    .line 153
    .line 154
    iget-object v5, v0, Lmb/l;->d:Lxa/j;

    .line 155
    .line 156
    iget-object v3, p0, Lia/d0;->o:Lia/j;

    .line 157
    .line 158
    move-object v2, p1

    .line 159
    move-object v0, p2

    .line 160
    invoke-static/range {v0 .. v5}, Lc7/a;->R(Lua/e;Ljava/util/Collection;Ljava/util/AbstractCollection;Lia/j;Lhb/m;Lxa/j;)Ljava/util/LinkedHashSet;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1, v8}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    .line 170
    .line 171
    :goto_2
    iget-object v1, p0, Lia/d0;->n:Lba/p;

    .line 172
    .line 173
    iget-object v1, v1, Lba/p;->a:Ljava/lang/Class;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_4

    .line 180
    .line 181
    sget-object v1, Ls9/p;->b:Lua/e;

    .line 182
    .line 183
    invoke-virtual {p2, v1}, Lua/e;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_4

    .line 188
    .line 189
    invoke-static {v6}, Lxa/k;->h(Ly9/b;)Ly9/i0;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {p1, v0}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    return-void
.end method

.method public final o(Leb/f;)Ljava/util/Set;
    .locals 4

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lia/a0;->e:Lkb/j;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lia/c;

    .line 13
    .line 14
    invoke-interface {p1}, Lia/c;->f()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-static {p1}, Ls8/p;->D0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lia/m;->e:Lia/m;

    .line 25
    .line 26
    iget-object v1, p0, Lia/d0;->o:Lia/j;

    .line 27
    .line 28
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lia/c0;

    .line 33
    .line 34
    invoke-direct {v3, v1, p1, v0}, Lia/c0;-><init>(Lv9/e;Ljava/util/Set;Lf9/k;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lia/b0;->a:Lia/b0;

    .line 38
    .line 39
    invoke-static {v2, v0, v3}, Lub/k;->f(Ljava/util/List;Lub/a;Lub/k;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lia/d0;->n:Lba/p;

    .line 43
    .line 44
    iget-object v0, v0, Lba/p;->a:Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    sget-object v0, Ls9/p;->b:Lua/e;

    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    return-object p1
.end method

.method public final q()Lv9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/d0;->o:Lia/j;

    .line 2
    .line 3
    return-object v0
.end method
