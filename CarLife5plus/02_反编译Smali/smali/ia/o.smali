.class public final Lia/o;
.super Lia/a0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic v:I


# instance fields
.field public final n:Lv9/e;

.field public final o:Lba/p;

.field public final p:Z

.field public final q:Lkb/j;

.field public final r:Lkb/j;

.field public final s:Lkb/j;

.field public final t:Lkb/j;

.field public final u:Lf1/e;


# direct methods
.method public constructor <init>(Lba/a;Lv9/e;Lba/p;ZLia/o;)V
    .locals 1

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jClass"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p5}, Lia/a0;-><init>(Lba/a;Lia/o;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lia/o;->n:Lv9/e;

    .line 15
    .line 16
    iput-object p3, p0, Lia/o;->o:Lba/p;

    .line 17
    .line 18
    iput-boolean p4, p0, Lia/o;->p:Z

    .line 19
    .line 20
    iget-object p2, p1, Lba/a;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p2, Lha/a;

    .line 23
    .line 24
    iget-object p2, p2, Lha/a;->a:Lkb/o;

    .line 25
    .line 26
    new-instance p3, Lia/k;

    .line 27
    .line 28
    invoke-direct {p3, p0, p1}, Lia/k;-><init>(Lia/o;Lba/a;)V

    .line 29
    .line 30
    .line 31
    move-object p4, p2

    .line 32
    check-cast p4, Lkb/l;

    .line 33
    .line 34
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p5, Lkb/j;

    .line 38
    .line 39
    invoke-direct {p5, p4, p3}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 40
    .line 41
    .line 42
    iput-object p5, p0, Lia/o;->q:Lkb/j;

    .line 43
    .line 44
    new-instance p3, Lia/l;

    .line 45
    .line 46
    const/4 p4, 0x0

    .line 47
    invoke-direct {p3, p0, p4}, Lia/l;-><init>(Lia/o;I)V

    .line 48
    .line 49
    .line 50
    move-object p4, p2

    .line 51
    check-cast p4, Lkb/l;

    .line 52
    .line 53
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance p5, Lkb/j;

    .line 57
    .line 58
    invoke-direct {p5, p4, p3}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 59
    .line 60
    .line 61
    iput-object p5, p0, Lia/o;->r:Lkb/j;

    .line 62
    .line 63
    new-instance p3, Lia/k;

    .line 64
    .line 65
    invoke-direct {p3, p1, p0}, Lia/k;-><init>(Lba/a;Lia/o;)V

    .line 66
    .line 67
    .line 68
    move-object p4, p2

    .line 69
    check-cast p4, Lkb/l;

    .line 70
    .line 71
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance p5, Lkb/j;

    .line 75
    .line 76
    invoke-direct {p5, p4, p3}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 77
    .line 78
    .line 79
    iput-object p5, p0, Lia/o;->s:Lkb/j;

    .line 80
    .line 81
    new-instance p3, Lia/l;

    .line 82
    .line 83
    const/4 p4, 0x1

    .line 84
    invoke-direct {p3, p0, p4}, Lia/l;-><init>(Lia/o;I)V

    .line 85
    .line 86
    .line 87
    move-object p4, p2

    .line 88
    check-cast p4, Lkb/l;

    .line 89
    .line 90
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance p5, Lkb/j;

    .line 94
    .line 95
    invoke-direct {p5, p4, p3}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 96
    .line 97
    .line 98
    iput-object p5, p0, Lia/o;->t:Lkb/j;

    .line 99
    .line 100
    new-instance p3, La8/h0;

    .line 101
    .line 102
    const/4 p4, 0x2

    .line 103
    invoke-direct {p3, p4, p0, p1}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    check-cast p2, Lkb/l;

    .line 107
    .line 108
    invoke-virtual {p2, p3}, Lkb/l;->c(Lf9/k;)Lf1/e;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lia/o;->u:Lf1/e;

    .line 113
    .line 114
    return-void
.end method

.method public static A(Ly9/l0;Lv9/t;Ljava/util/AbstractCollection;)Ly9/l0;
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ly9/l0;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v0, Ly9/u;->B:Lv9/t;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-static {v0, p1}, Lia/o;->D(Lv9/t;Lv9/t;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {p0}, Lv9/t;->r0()Lv9/s;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p0}, Lv9/s;->C()Lv9/s;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Lv9/s;->build()Lv9/t;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    check-cast p0, Ly9/l0;

    .line 56
    .line 57
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static B(Ly9/l0;)Ly9/l0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ly9/u;->S()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getValueParameters(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ly9/r0;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Ly9/s0;

    .line 21
    .line 22
    invoke-virtual {v3}, Ly9/s0;->getType()Llb/w;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Llb/w;->D0()Llb/k0;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Llb/k0;->k()Lv9/h;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-static {v3}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lua/d;->d()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v3, v2

    .line 48
    :goto_0
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lua/d;->g()Lua/c;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v3, v2

    .line 56
    :goto_1
    sget-object v4, Ls9/p;->g:Lua/c;

    .line 57
    .line 58
    invoke-static {v3, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move-object v0, v2

    .line 66
    :goto_2
    if-nez v0, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    invoke-interface {p0}, Lv9/t;->r0()Lv9/s;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p0}, Ly9/u;->S()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Ls8/p;->a0(Ljava/util/List;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {v2, p0}, Lv9/s;->e(Ljava/util/List;)Lv9/s;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast v0, Ly9/s0;

    .line 89
    .line 90
    invoke-virtual {v0}, Ly9/s0;->getType()Llb/w;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Llb/w;->B0()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Llb/n0;

    .line 104
    .line 105
    invoke-virtual {v0}, Llb/n0;->b()Llb/w;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p0, v0}, Lv9/s;->a(Llb/w;)Lv9/s;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-interface {p0}, Lv9/s;->build()Lv9/t;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Ly9/l0;

    .line 118
    .line 119
    if-eqz p0, :cond_4

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Ly9/u;->u:Z

    .line 123
    .line 124
    :cond_4
    return-object p0

    .line 125
    :cond_5
    :goto_3
    return-object v2
.end method

.method public static D(Lv9/t;Lv9/t;)Z
    .locals 3

    .line 1
    sget-object v0, Lxa/j;->c:Lxa/j;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p0, v1}, Lxa/j;->n(Lv9/b;Lv9/b;Z)Lxa/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lxa/i;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "getResult(...)"

    .line 13
    .line 14
    invoke-static {v0, v2}, La2/f;->O(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-static {p1, p0}, Lm9/e0;->Y(Lv9/b;Lv9/b;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static E(Ly9/l0;Ly9/l0;)Z
    .locals 2

    .line 1
    sget v0, Lea/c;->l:I

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "removeAt"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lm9/e0;->Q(Lv9/b;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lea/h0;->g:Lea/d0;

    .line 29
    .line 30
    iget-object v1, v1, Lea/d0;->e:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ly9/l0;->O0()Ly9/l0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_0
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p0}, Lia/o;->D(Lv9/t;Lv9/t;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public static F(Lv9/k0;Ljava/lang/String;Lf9/k;)Ly9/l0;
    .locals 4

    .line 1
    invoke-static {p1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p2, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p2, :cond_4

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ly9/l0;

    .line 27
    .line 28
    invoke-virtual {p2}, Ly9/u;->S()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sget-object v1, Lmb/d;->a:Lmb/l;

    .line 40
    .line 41
    iget-object v2, p2, Ly9/u;->g:Llb/w;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {p0}, Lv9/s0;->getType()Llb/w;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v2, v3}, Lmb/l;->b(Llb/w;Llb/w;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_0
    if-eqz v1, :cond_3

    .line 56
    .line 57
    move-object v0, p2

    .line 58
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 59
    .line 60
    :cond_4
    return-object v0
.end method

.method public static H(Lv9/k0;Lf9/k;)Ly9/l0;
    .locals 5

    .line 1
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

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
    invoke-static {v0}, Lea/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ly9/l0;

    .line 44
    .line 45
    invoke-virtual {v0}, Ly9/u;->S()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x1

    .line 54
    if-eq v2, v3, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, v0, Ly9/u;->g:Llb/w;

    .line 58
    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v3, Ls9/i;->e:Lua/e;

    .line 63
    .line 64
    sget-object v3, Ls9/o;->d:Lua/d;

    .line 65
    .line 66
    invoke-static {v2, v3}, Ls9/i;->E(Llb/w;Lua/d;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    sget-object v2, Lmb/d;->a:Lmb/l;

    .line 74
    .line 75
    invoke-virtual {v0}, Ly9/u;->S()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "getValueParameters(...)"

    .line 80
    .line 81
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ly9/r0;

    .line 89
    .line 90
    check-cast v3, Ly9/s0;

    .line 91
    .line 92
    invoke-virtual {v3}, Ly9/s0;->getType()Llb/w;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {p0}, Lv9/s0;->getType()Llb/w;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v2, v3, v4}, Lmb/l;->a(Llb/w;Llb/w;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    move-object v1, v0

    .line 107
    :cond_4
    :goto_0
    if-eqz v1, :cond_0

    .line 108
    .line 109
    :cond_5
    return-object v1
.end method

.method public static K(Ly9/l0;Lv9/t;)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {p1}, Lv9/t;->a()Lv9/t;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "getOriginal(...)"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v0}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {p0, p1}, Lia/o;->D(Lv9/t;Lv9/t;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method


# virtual methods
.method public final C(Lv9/k0;Lf9/k;)Z
    .locals 1

    .line 1
    invoke-static {p1}, La/a;->H(Lv9/k0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lia/o;->G(Lv9/k0;Lf9/k;)Ly9/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, p2}, Lia/o;->H(Lv9/k0;Lf9/k;)Ly9/l0;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-interface {p1}, Lv9/t0;->Z()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    if-eqz p2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p2}, Ly9/u;->h()Lv9/x;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0}, Ly9/u;->h()Lv9/x;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-ne p1, p2, :cond_3

    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public final G(Lv9/k0;Lf9/k;)Ly9/l0;
    .locals 4

    .line 1
    invoke-interface {p1}, Lv9/k0;->b()Ly9/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lc7/a;->A(Lv9/c;)Lv9/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ly9/j0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-static {v0}, Ls9/i;->A(Lv9/k;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lbb/e;->k(Lv9/c;)Lv9/c;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Lea/d;->d:Lea/d;

    .line 26
    .line 27
    invoke-static {v2, v3}, Lbb/e;->b(Lv9/c;Lf9/k;)Lv9/c;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sget-object v3, Lea/f;->a:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v2}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lua/e;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2}, Lua/e;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Lia/o;->n:Lv9/e;

    .line 55
    .line 56
    invoke-static {v2, v0}, Lc7/a;->I(Lv9/e;Lv9/c;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-static {p1, v1, p2}, Lia/o;->F(Lv9/k0;Ljava/lang/String;Lf9/k;)Ly9/l0;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_3
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "asString(...)"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lea/x;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {p1, v0, p2}, Lia/o;->F(Lv9/k0;Ljava/lang/String;Lf9/k;)Ly9/l0;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public final I(Lua/e;)Ljava/util/LinkedHashSet;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lia/o;->z()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Llb/w;

    .line 27
    .line 28
    invoke-virtual {v2}, Llb/w;->R()Leb/o;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Lda/b;->e:Lda/b;

    .line 33
    .line 34
    invoke-interface {v2, p1, v3}, Leb/o;->a(Lua/e;Lda/b;)Ljava/util/Collection;

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

.method public final J(Lua/e;)Ljava/util/Set;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lia/o;->z()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Llb/w;

    .line 27
    .line 28
    invoke-virtual {v2}, Llb/w;->R()Leb/o;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Lda/b;->e:Lda/b;

    .line 33
    .line 34
    invoke-interface {v2, p1, v3}, Leb/o;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Iterable;

    .line 39
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    const/16 v4, 0xa

    .line 43
    .line 44
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lv9/k0;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    invoke-static {v3, v1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v1}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method public final L(Ly9/l0;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Ly9/m;->getName()Lua/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getName(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "asString(...)"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v4, Lea/x;->a:Lua/c;

    .line 20
    .line 21
    const-string v4, "get"

    .line 22
    .line 23
    invoke-static {v2, v4}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    const-string v7, "is"

    .line 29
    .line 30
    const-string v8, "set"

    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    const/4 v10, 0x0

    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    invoke-static {v2, v7}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v2, v8}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-static {v0, v8, v6, v2}, La/a;->P(Lua/e;Ljava/lang/String;Ljava/lang/String;I)Lua/e;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v0, v8, v7, v2}, La/a;->P(Lua/e;Ljava/lang/String;Ljava/lang/String;I)Lua/e;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v2, 0x2

    .line 59
    new-array v2, v2, [Lua/e;

    .line 60
    .line 61
    aput-object v4, v2, v10

    .line 62
    .line 63
    aput-object v0, v2, v9

    .line 64
    .line 65
    invoke-static {v2}, Ls8/l;->V([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    sget-object v2, Lea/f;->b:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/util/List;

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    const/16 v2, 0xc

    .line 84
    .line 85
    invoke-static {v0, v4, v6, v2}, La/a;->P(Lua/e;Ljava/lang/String;Ljava/lang/String;I)Lua/e;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    const/16 v2, 0x8

    .line 92
    .line 93
    invoke-static {v0, v7, v6, v2}, La/a;->P(Lua/e;Ljava/lang/String;Ljava/lang/String;I)Lua/e;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :cond_3
    invoke-static {v2}, Lp9/x1;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_9

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lua/e;

    .line 123
    .line 124
    invoke-virtual {p0, v2}, Lia/o;->J(Lua/e;)Ljava/util/Set;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Ljava/lang/Iterable;

    .line 129
    .line 130
    instance-of v4, v2, Ljava/util/Collection;

    .line 131
    .line 132
    if-eqz v4, :cond_7

    .line 133
    .line 134
    move-object v4, v2

    .line 135
    check-cast v4, Ljava/util/Collection;

    .line 136
    .line 137
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_7

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_6

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Lv9/k0;

    .line 159
    .line 160
    new-instance v5, La8/h0;

    .line 161
    .line 162
    const/4 v6, 0x3

    .line 163
    invoke-direct {v5, v6, p1, p0}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v4, v5}, Lia/o;->C(Lv9/k0;Lf9/k;)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_8

    .line 171
    .line 172
    invoke-interface {v4}, Lv9/t0;->Z()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_1a

    .line 177
    .line 178
    invoke-virtual {p1}, Ly9/m;->getName()Lua/e;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Lua/e;->b()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-static {v4, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v4, v8}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_8

    .line 194
    .line 195
    goto/16 :goto_8

    .line 196
    .line 197
    :cond_9
    :goto_3
    sget-object v0, Lea/h0;->a:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {p1}, Ly9/m;->getName()Lua/e;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sget-object v2, Lea/h0;->k:Ljava/util/LinkedHashMap;

    .line 207
    .line 208
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Lua/e;

    .line 213
    .line 214
    if-nez v0, :cond_a

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_a
    invoke-virtual {p0, v0}, Lia/o;->I(Lua/e;)Ljava/util/LinkedHashSet;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_c

    .line 235
    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    move-object v5, v4

    .line 241
    check-cast v5, Ly9/l0;

    .line 242
    .line 243
    const-string v6, "<this>"

    .line 244
    .line 245
    invoke-static {v5, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v5}, Lc7/a;->A(Lv9/c;)Lv9/c;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    if-eqz v5, :cond_b

    .line 253
    .line 254
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_d

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_d
    invoke-interface {p1}, Lv9/t;->r0()Lv9/s;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-interface {v2, v0}, Lv9/s;->j(Lua/e;)Lv9/s;

    .line 270
    .line 271
    .line 272
    invoke-interface {v2}, Lv9/s;->O()Lv9/s;

    .line 273
    .line 274
    .line 275
    invoke-interface {v2}, Lv9/s;->n()Lv9/s;

    .line 276
    .line 277
    .line 278
    invoke-interface {v2}, Lv9/s;->build()Lv9/t;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    check-cast v0, Ly9/l0;

    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_e

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-eqz v3, :cond_10

    .line 303
    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Ly9/l0;

    .line 309
    .line 310
    invoke-static {v3, v0}, Lia/o;->E(Ly9/l0;Ly9/l0;)Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-eqz v3, :cond_f

    .line 315
    .line 316
    goto/16 :goto_8

    .line 317
    .line 318
    :cond_10
    :goto_5
    sget v0, Lea/e;->l:I

    .line 319
    .line 320
    invoke-virtual {p1}, Ly9/m;->getName()Lua/e;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v0}, Lea/e;->b(Lua/e;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_11

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_11
    invoke-virtual {p1}, Ly9/m;->getName()Lua/e;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, v0}, Lia/o;->I(Lua/e;)Ljava/util/LinkedHashSet;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    :cond_12
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eqz v3, :cond_13

    .line 359
    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    check-cast v3, Ly9/l0;

    .line 365
    .line 366
    invoke-static {v3}, Lea/e;->a(Lv9/t;)Lv9/t;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    if-eqz v3, :cond_12

    .line 371
    .line 372
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_14

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_16

    .line 392
    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    check-cast v2, Lv9/t;

    .line 398
    .line 399
    invoke-static {p1, v2}, Lia/o;->K(Ly9/l0;Lv9/t;)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_15

    .line 404
    .line 405
    goto :goto_8

    .line 406
    :cond_16
    :goto_7
    invoke-static {p1}, Lia/o;->B(Ly9/l0;)Ly9/l0;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    if-nez v0, :cond_17

    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_17
    invoke-virtual {p1}, Ly9/m;->getName()Lua/e;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, p1}, Lia/o;->I(Lua/e;)Ljava/util/LinkedHashSet;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    if-eqz v1, :cond_18

    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_1b

    .line 440
    .line 441
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    check-cast v1, Ly9/l0;

    .line 446
    .line 447
    invoke-interface {v1}, Lv9/t;->o()Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-eqz v2, :cond_19

    .line 452
    .line 453
    invoke-static {v0, v1}, Lia/o;->D(Lv9/t;Lv9/t;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-eqz v1, :cond_19

    .line 458
    .line 459
    :cond_1a
    :goto_8
    return v10

    .line 460
    :cond_1b
    :goto_9
    return v9
.end method

.method public final M(Lua/e;Lda/b;)V
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
    iget-object p1, p0, Lia/a0;->b:Lba/a;

    .line 12
    .line 13
    iget-object p1, p1, Lba/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lha/a;

    .line 16
    .line 17
    iget-object p1, p1, Lha/a;->n:Lda/a;

    .line 18
    .line 19
    const-string p2, "<this>"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "scopeOwner"

    .line 25
    .line 26
    iget-object p2, p0, Lia/o;->n:Lv9/e;

    .line 27
    .line 28
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final N(Lua/e;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lia/a0;->e:Lkb/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lia/c;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lia/c;->c(Lua/e;)Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-static {p1, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lba/y;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lia/a0;->t(Lba/y;)Lga/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object v0
.end method

.method public final O(Lua/e;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lia/o;->I(Lua/e;)Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Ly9/l0;

    .line 26
    .line 27
    const-string v3, "<this>"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lc7/a;->A(Lv9/c;)Lv9/c;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v2}, Lea/e;->a(Lv9/t;)Lv9/t;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-object v0
.end method

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
    invoke-virtual {p0, p1, p2}, Lia/o;->M(Lua/e;Lda/b;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lia/a0;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
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
    invoke-virtual {p0, p1, p2}, Lia/o;->M(Lua/e;Lda/b;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lia/a0;->c:Lia/a0;

    .line 15
    .line 16
    check-cast p2, Lia/o;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-object p2, p2, Lia/o;->u:Lf1/e;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lv9/e;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    return-object p2

    .line 33
    :cond_0
    iget-object p2, p0, Lia/o;->u:Lf1/e;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lv9/h;

    .line 40
    .line 41
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
    invoke-virtual {p0, p1, p2}, Lia/o;->M(Lua/e;Lda/b;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lia/a0;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
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
    iget-object p1, p0, Lia/o;->r:Lkb/j;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/Set;

    .line 13
    .line 14
    iget-object p2, p0, Lia/o;->t:Lkb/j;

    .line 15
    .line 16
    invoke-virtual {p2}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-static {p1, p2}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public final i(Leb/f;Leb/l;)Ljava/util/Set;
    .locals 4

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia/o;->n:Lv9/e;

    .line 7
    .line 8
    invoke-interface {v0}, Lv9/h;->t()Llb/k0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Llb/k0;->l()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "getSupertypes(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast v1, Ljava/lang/Iterable;

    .line 22
    .line 23
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Llb/w;

    .line 43
    .line 44
    invoke-virtual {v3}, Llb/w;->R()Leb/o;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Leb/o;->b()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-static {v3, v2}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lia/a0;->e:Lkb/j;

    .line 59
    .line 60
    invoke-virtual {v1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lia/c;

    .line 65
    .line 66
    invoke-interface {v3}, Lia/c;->a()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/util/Collection;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lia/c;

    .line 80
    .line 81
    invoke-interface {v1}, Lia/c;->d()Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/util/Collection;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lia/o;->h(Leb/f;Lf9/k;)Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lia/a0;->b:Lba/a;

    .line 98
    .line 99
    iget-object p2, p1, Lba/a;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p2, Lha/a;

    .line 102
    .line 103
    iget-object p2, p2, Lha/a;->x:Lcb/e;

    .line 104
    .line 105
    check-cast p2, Lcb/a;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const-string p2, "thisDescriptor"

    .line 111
    .line 112
    invoke-static {v0, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string p2, "c"

    .line 116
    .line 117
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    return-object v2
.end method

.method public final j(Ljava/util/ArrayList;Lua/e;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "name"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lia/o;->o:Lba/p;

    .line 11
    .line 12
    invoke-virtual {v2}, Lba/p;->g()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, v0, Lia/o;->n:Lv9/e;

    .line 17
    .line 18
    iget-object v4, v0, Lia/a0;->b:Lba/a;

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget-object v2, v0, Lia/a0;->e:Lkb/j;

    .line 23
    .line 24
    invoke-virtual {v2}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lia/c;

    .line 29
    .line 30
    invoke-interface {v5, v1}, Lia/c;->e(Lua/e;)Lba/b0;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Ly9/l0;

    .line 58
    .line 59
    invoke-virtual {v6}, Ly9/u;->S()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lia/c;

    .line 75
    .line 76
    invoke-interface {v2, v1}, Lia/c;->e(Lua/e;)Lba/b0;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v2}, Li2/c;->I(Lba/a;Lla/b;)Lha/c;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-object v6, v4, Lba/a;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v6, Lha/a;

    .line 90
    .line 91
    invoke-virtual {v2}, Lba/x;->c()Lua/e;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    iget-object v8, v6, Lha/a;->j:Laa/e;

    .line 96
    .line 97
    invoke-virtual {v8, v2}, Laa/e;->a(Lla/c;)Laa/g;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    const/4 v9, 0x1

    .line 102
    invoke-static {v3, v5, v7, v8, v9}, Lga/e;->R0(Lv9/k;Lha/c;Lua/e;Laa/g;Z)Lga/e;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v7, 0x6

    .line 108
    sget-object v8, Llb/t0;->b:Llb/t0;

    .line 109
    .line 110
    const/4 v11, 0x0

    .line 111
    invoke-static {v8, v11, v5, v7}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    iget-object v7, v4, Lba/a;->e:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v7, La2/b;

    .line 118
    .line 119
    invoke-virtual {v2}, Lba/b0;->f()Lla/d;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v7, v2, v5}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 124
    .line 125
    .line 126
    move-result-object v16

    .line 127
    invoke-virtual {v0}, Lia/o;->p()Ly9/v;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    sget-object v2, Lv9/x;->a:Lv9/n0;

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    sget-object v18, Lv9/o;->e:Lea/o;

    .line 137
    .line 138
    const/16 v19, 0x0

    .line 139
    .line 140
    const/4 v11, 0x0

    .line 141
    sget-object v13, Ls8/w;->a:Ls8/w;

    .line 142
    .line 143
    sget-object v17, Lv9/x;->d:Lv9/x;

    .line 144
    .line 145
    move-object v14, v13

    .line 146
    move-object v15, v13

    .line 147
    invoke-virtual/range {v10 .. v19}, Lga/e;->Q0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;Ljava/util/Map;)Ly9/l0;

    .line 148
    .line 149
    .line 150
    iput v9, v10, Lga/e;->D:I

    .line 151
    .line 152
    iget-object v2, v6, Lha/a;->g:Lfa/h;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-object/from16 v2, p1

    .line 158
    .line 159
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    :cond_3
    :goto_1
    iget-object v2, v4, Lba/a;->b:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v2, Lha/a;

    .line 165
    .line 166
    iget-object v2, v2, Lha/a;->x:Lcb/e;

    .line 167
    .line 168
    check-cast v2, Lcb/a;

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    const-string v2, "thisDescriptor"

    .line 174
    .line 175
    invoke-static {v3, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v2, "name"

    .line 179
    .line 180
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string v1, "c"

    .line 184
    .line 185
    invoke-static {v4, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final k()Lia/c;
    .locals 3

    .line 1
    new-instance v0, Lia/a;

    .line 2
    .line 3
    iget-object v1, p0, Lia/o;->o:Lba/p;

    .line 4
    .line 5
    sget-object v2, Lia/m;->b:Lia/m;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lia/a;-><init>(Lba/p;Lf9/k;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;Lua/e;)V
    .locals 13

    .line 1
    const-string v2, "name"

    .line 2
    .line 3
    invoke-static {p2, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lia/o;->I(Lua/e;)Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object v3, Lea/h0;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    sget-object v3, Lea/h0;->j:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_5

    .line 19
    .line 20
    invoke-static {p2}, Lea/e;->b(Lua/e;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_5

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lv9/t;

    .line 48
    .line 49
    invoke-interface {v4}, Lv9/t;->o()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    move-object v5, v4

    .line 76
    check-cast v5, Ly9/l0;

    .line 77
    .line 78
    invoke-virtual {p0, v5}, Lia/o;->L(Ly9/l0;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, p1, p2, v3, v2}, Lia/o;->w(Ljava/util/LinkedHashSet;Lua/e;Ljava/util/ArrayList;Z)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_5
    :goto_2
    sget v3, Lub/h;->c:I

    .line 94
    .line 95
    invoke-static {}, Lub/k;->e()Lub/h;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    iget-object v3, p0, Lia/a0;->b:Lba/a;

    .line 100
    .line 101
    iget-object v3, v3, Lba/a;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v3, Lha/a;

    .line 104
    .line 105
    iget-object v3, v3, Lha/a;->u:Lmb/k;

    .line 106
    .line 107
    check-cast v3, Lmb/l;

    .line 108
    .line 109
    iget-object v6, v3, Lmb/l;->d:Lxa/j;

    .line 110
    .line 111
    sget-object v3, Ls8/w;->a:Ls8/w;

    .line 112
    .line 113
    iget-object v4, p0, Lia/o;->n:Lv9/e;

    .line 114
    .line 115
    sget-object v5, Lhb/m;->a:Lhb/j;

    .line 116
    .line 117
    move-object v1, p2

    .line 118
    invoke-static/range {v1 .. v6}, Lc7/a;->Q(Lua/e;Ljava/util/AbstractCollection;Ljava/util/Collection;Lv9/e;Lhb/m;Lxa/j;)Ljava/util/LinkedHashSet;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    move-object v12, v2

    .line 123
    new-instance v5, Lac/y0;

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    const/4 v8, 0x1

    .line 127
    const/4 v1, 0x1

    .line 128
    const-class v3, Lia/o;

    .line 129
    .line 130
    const-string v4, "searchMethodsByNameWithoutBuiltinMagic"

    .line 131
    .line 132
    move-object v0, v5

    .line 133
    const-string v5, "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;"

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    move-object v2, p0

    .line 137
    invoke-direct/range {v0 .. v8}, Lac/y0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 138
    .line 139
    .line 140
    move-object v4, p1

    .line 141
    move-object v2, p1

    .line 142
    move-object v1, p2

    .line 143
    move-object v5, v0

    .line 144
    move-object v3, v11

    .line 145
    move-object v0, p0

    .line 146
    invoke-virtual/range {v0 .. v5}, Lia/o;->x(Lua/e;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lf9/k;)V

    .line 147
    .line 148
    .line 149
    move-object v9, v3

    .line 150
    new-instance v0, Lac/y0;

    .line 151
    .line 152
    const/4 v8, 0x2

    .line 153
    const/4 v1, 0x1

    .line 154
    const-class v3, Lia/o;

    .line 155
    .line 156
    const-string v4, "searchMethodsInSupertypesWithoutBuiltinMagic"

    .line 157
    .line 158
    const-string v5, "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;"

    .line 159
    .line 160
    move-object v2, p0

    .line 161
    invoke-direct/range {v0 .. v8}, Lac/y0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 162
    .line 163
    .line 164
    move-object v1, p2

    .line 165
    move-object v5, v0

    .line 166
    move-object v0, v2

    .line 167
    move-object v3, v9

    .line 168
    move-object v4, v10

    .line 169
    move-object v2, p1

    .line 170
    invoke-virtual/range {v0 .. v5}, Lia/o;->x(Lua/e;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lf9/k;)V

    .line 171
    .line 172
    .line 173
    new-instance v3, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_7

    .line 187
    .line 188
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    move-object v7, v6

    .line 193
    check-cast v7, Ly9/l0;

    .line 194
    .line 195
    invoke-virtual {p0, v7}, Lia/o;->L(Ly9/l0;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eqz v7, :cond_6

    .line 200
    .line 201
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_7
    invoke-static {v4, v3}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    const/4 v4, 0x1

    .line 210
    invoke-virtual {p0, p1, p2, v3, v4}, Lia/o;->w(Ljava/util/LinkedHashSet;Lua/e;Ljava/util/ArrayList;Z)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public final n(Ljava/util/ArrayList;Lua/e;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    const-string v2, "name"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lia/o;->o:Lba/p;

    .line 13
    .line 14
    iget-object v2, v2, Lba/p;->a:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->isAnnotation()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, 0x0

    .line 21
    iget-object v5, v0, Lia/a0;->b:Lba/a;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v2, v0, Lia/a0;->e:Lkb/j;

    .line 27
    .line 28
    invoke-virtual {v2}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lia/c;

    .line 33
    .line 34
    invoke-interface {v2, v1}, Lia/c;->c(Lua/e;)Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-static {v2}, Ls8/p;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lba/y;

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v5, v2}, Li2/c;->I(Lba/a;Lla/b;)Lha/c;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v2}, Lba/x;->e()Ln/a;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v7}, Lg5/a;->Z(Ln/a;)Lea/o;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v2}, Lba/x;->c()Lua/e;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    iget-object v7, v5, Lba/a;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v7, Lha/a;

    .line 68
    .line 69
    iget-object v7, v7, Lha/a;->j:Laa/e;

    .line 70
    .line 71
    invoke-virtual {v7, v2}, Laa/e;->a(Lla/c;)Laa/g;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    const/4 v13, 0x0

    .line 76
    iget-object v7, v0, Lia/o;->n:Lv9/e;

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    invoke-static/range {v7 .. v13}, Lga/f;->K0(Lv9/k;Lha/c;Lea/o;ZLua/e;Laa/g;Z)Lga/f;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    sget-object v7, Lw9/g;->a:Lw9/f;

    .line 84
    .line 85
    invoke-static {v14, v7}, Lxa/k;->f(Lv9/k0;Lw9/h;)Ly9/j0;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v14, v7, v6, v6, v6}, Ly9/i0;->G0(Ly9/j0;Ly9/k0;Ly9/r;Ly9/r;)V

    .line 90
    .line 91
    .line 92
    const-string v8, "<this>"

    .line 93
    .line 94
    invoke-static {v5, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v8, v5, Lba/a;->d:Ljava/lang/Object;

    .line 98
    .line 99
    iget-object v9, v5, Lba/a;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v9, Lha/a;

    .line 102
    .line 103
    new-instance v10, Lha/e;

    .line 104
    .line 105
    invoke-direct {v10, v5, v14, v2, v4}, Lha/e;-><init>(Lba/a;Lv9/l;Lla/e;I)V

    .line 106
    .line 107
    .line 108
    new-instance v11, Lba/a;

    .line 109
    .line 110
    invoke-direct {v11, v9, v10, v8}, Lba/a;-><init>(Lha/a;Lha/f;Lr8/h;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v11}, Lia/a0;->l(Lba/y;Lba/a;)Llb/w;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    invoke-virtual {v0}, Lia/o;->p()Ly9/v;

    .line 118
    .line 119
    .line 120
    move-result-object v17

    .line 121
    const/16 v18, 0x0

    .line 122
    .line 123
    sget-object v16, Ls8/w;->a:Ls8/w;

    .line 124
    .line 125
    move-object/from16 v19, v16

    .line 126
    .line 127
    invoke-virtual/range {v14 .. v19}, Ly9/i0;->J0(Llb/w;Ljava/util/List;Ly9/v;Ly9/v;Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    iput-object v15, v7, Ly9/j0;->m:Llb/w;

    .line 131
    .line 132
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lia/o;->J(Lua/e;)Ljava/util/Set;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_2

    .line 144
    .line 145
    return-void

    .line 146
    :cond_2
    sget v7, Lub/h;->c:I

    .line 147
    .line 148
    invoke-static {}, Lub/k;->e()Lub/h;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-static {}, Lub/k;->e()Lub/h;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    new-instance v9, Lia/n;

    .line 157
    .line 158
    invoke-direct {v9, v0, v4}, Lia/n;-><init>(Lia/o;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2, v3, v7, v9}, Lia/o;->y(Ljava/util/Set;Ljava/util/AbstractCollection;Lub/h;Lf9/k;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_3

    .line 169
    .line 170
    move-object v4, v2

    .line 171
    check-cast v4, Ljava/lang/Iterable;

    .line 172
    .line 173
    invoke-static {v4}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    goto :goto_2

    .line 178
    :cond_3
    instance-of v4, v7, Ljava/util/Set;

    .line 179
    .line 180
    if-eqz v4, :cond_6

    .line 181
    .line 182
    move-object v4, v2

    .line 183
    check-cast v4, Ljava/lang/Iterable;

    .line 184
    .line 185
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 186
    .line 187
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_5

    .line 199
    .line 200
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    move-object v11, v7

    .line 205
    check-cast v11, Ljava/util/Set;

    .line 206
    .line 207
    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-nez v11, :cond_4

    .line 212
    .line 213
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_5
    move-object v4, v9

    .line 218
    goto :goto_2

    .line 219
    :cond_6
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 220
    .line 221
    move-object v9, v2

    .line 222
    check-cast v9, Ljava/util/Collection;

    .line 223
    .line 224
    invoke-direct {v4, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v7}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 228
    .line 229
    .line 230
    :goto_2
    new-instance v7, Lia/n;

    .line 231
    .line 232
    const/4 v9, 0x1

    .line 233
    invoke-direct {v7, v0, v9}, Lia/n;-><init>(Lia/o;I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v4, v8, v6, v7}, Lia/o;->y(Ljava/util/Set;Ljava/util/AbstractCollection;Lub/h;Lf9/k;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v2, v8}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    iget-object v4, v5, Lba/a;->b:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v4, Lha/a;

    .line 246
    .line 247
    iget-object v5, v4, Lha/a;->f:Lhb/m;

    .line 248
    .line 249
    iget-object v4, v4, Lha/a;->u:Lmb/k;

    .line 250
    .line 251
    check-cast v4, Lmb/l;

    .line 252
    .line 253
    iget-object v6, v4, Lmb/l;->d:Lxa/j;

    .line 254
    .line 255
    iget-object v4, v0, Lia/o;->n:Lv9/e;

    .line 256
    .line 257
    invoke-static/range {v1 .. v6}, Lc7/a;->Q(Lua/e;Ljava/util/AbstractCollection;Ljava/util/Collection;Lv9/e;Lhb/m;Lxa/j;)Ljava/util/LinkedHashSet;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    .line 263
    .line 264
    return-void
.end method

.method public final o(Leb/f;)Ljava/util/Set;
    .locals 2

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lia/o;->o:Lba/p;

    .line 7
    .line 8
    iget-object p1, p1, Lba/p;->a:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lia/a0;->b()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    iget-object v0, p0, Lia/a0;->e:Lkb/j;

    .line 24
    .line 25
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lia/c;

    .line 30
    .line 31
    invoke-interface {v0}, Lia/c;->f()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lia/o;->n:Lv9/e;

    .line 41
    .line 42
    invoke-interface {v0}, Lv9/h;->t()Llb/k0;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Llb/k0;->l()Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "getSupertypes(...)"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Llb/w;

    .line 72
    .line 73
    invoke-virtual {v1}, Llb/w;->R()Leb/o;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Leb/o;->g()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/Iterable;

    .line 82
    .line 83
    invoke-static {v1, p1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    return-object p1
.end method

.method public final p()Ly9/v;
    .locals 2

    .line 1
    iget-object v0, p0, Lia/o;->n:Lv9/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lxa/d;->a:I

    .line 6
    .line 7
    invoke-interface {v0}, Lv9/e;->A0()Ly9/v;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lxa/d;->a(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    throw v0
.end method

.method public final q()Lv9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/o;->n:Lv9/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r(Lga/e;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lia/o;->o:Lba/p;

    .line 2
    .line 3
    iget-object v0, v0, Lba/p;->a:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lia/o;->L(Ly9/l0;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final s(Lba/y;Ljava/util/ArrayList;Llb/w;Ljava/util/List;)Lia/z;
    .locals 1

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lia/a0;->b:Lba/a;

    .line 7
    .line 8
    iget-object p1, p1, Lba/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lha/a;

    .line 11
    .line 12
    iget-object p1, p1, Lha/a;->e:Lfa/h;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iget-object v0, p0, Lia/o;->n:Lv9/e;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance p1, Lia/z;

    .line 27
    .line 28
    invoke-direct {p1, p3, p4, p2, v0}, Lia/z;-><init>(Llb/w;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    const/4 p2, 0x3

    .line 33
    new-array p2, p2, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string p3, "signatureErrors"

    .line 36
    .line 37
    const/4 p4, 0x0

    .line 38
    aput-object p3, p2, p4

    .line 39
    .line 40
    const-string p3, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature"

    .line 41
    .line 42
    aput-object p3, p2, p1

    .line 43
    .line 44
    const-string p1, "<init>"

    .line 45
    .line 46
    const/4 p3, 0x2

    .line 47
    aput-object p1, p2, p3

    .line 48
    .line 49
    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 50
    .line 51
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p2

    .line 61
    :cond_1
    const/4 p2, 0x3

    .line 62
    new-array p2, p2, [Ljava/lang/Object;

    .line 63
    .line 64
    const/4 p3, 0x0

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    const-string p1, "method"

    .line 69
    .line 70
    aput-object p1, p2, p3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_0
    const-string p1, "signatureErrors"

    .line 74
    .line 75
    aput-object p1, p2, p3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_1
    const-string p1, "descriptor"

    .line 79
    .line 80
    aput-object p1, p2, p3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_2
    const-string p1, "typeParameters"

    .line 84
    .line 85
    aput-object p1, p2, p3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_3
    const-string p1, "valueParameters"

    .line 89
    .line 90
    aput-object p1, p2, p3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_4
    const-string p1, "returnType"

    .line 94
    .line 95
    aput-object p1, p2, p3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_5
    const-string p1, "owner"

    .line 99
    .line 100
    aput-object p1, p2, p3

    .line 101
    .line 102
    :goto_0
    const/4 p1, 0x1

    .line 103
    const-string p3, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1"

    .line 104
    .line 105
    aput-object p3, p2, p1

    .line 106
    .line 107
    const/4 p1, 0x2

    .line 108
    const-string p3, "resolvePropagatedSignature"

    .line 109
    .line 110
    aput-object p3, p2, p1

    .line 111
    .line 112
    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 113
    .line 114
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p2

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Lazy Java member scope for "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lia/o;->o:Lba/p;

    .line 9
    .line 10
    invoke-virtual {v1}, Lba/p;->c()Lua/c;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final v(Ljava/util/ArrayList;Lga/b;ILba/y;Llb/w;Llb/w;)V
    .locals 12

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    invoke-virtual {v0}, Lba/x;->c()Lua/e;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_7

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v1, v4}, Llb/v0;->g(Llb/w;Z)Llb/x0;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    iget-object v1, v0, Lba/y;->a:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    sget-object v8, Lba/d;->a:Ljava/util/List;

    .line 32
    .line 33
    const-class v8, Ljava/lang/Enum;

    .line 34
    .line 35
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    new-instance v7, Lba/u;

    .line 42
    .line 43
    check-cast v1, Ljava/lang/Enum;

    .line 44
    .line 45
    invoke-direct {v7, v3, v1}, Lba/u;-><init>(Lua/e;Ljava/lang/Enum;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    instance-of v7, v1, Ljava/lang/annotation/Annotation;

    .line 50
    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    new-instance v7, Lba/g;

    .line 54
    .line 55
    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 56
    .line 57
    invoke-direct {v7, v3, v1}, Lba/g;-><init>(Lua/e;Ljava/lang/annotation/Annotation;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    instance-of v7, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    if-eqz v7, :cond_2

    .line 64
    .line 65
    new-instance v7, Lba/h;

    .line 66
    .line 67
    check-cast v1, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-direct {v7, v3, v1}, Lba/h;-><init>(Lua/e;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    instance-of v7, v1, Ljava/lang/Class;

    .line 74
    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    new-instance v7, Lba/q;

    .line 78
    .line 79
    check-cast v1, Ljava/lang/Class;

    .line 80
    .line 81
    invoke-direct {v7, v3, v1}, Lba/q;-><init>(Lua/e;Ljava/lang/Class;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance v7, Lba/w;

    .line 86
    .line 87
    invoke-direct {v7, v3, v1}, Lba/w;-><init>(Lua/e;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    move-object v7, v3

    .line 92
    :goto_0
    if-eqz v7, :cond_5

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    const/4 v7, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const/4 v7, 0x0

    .line 98
    :goto_1
    if-eqz v2, :cond_6

    .line 99
    .line 100
    invoke-static {v2, v4}, Llb/v0;->g(Llb/w;Z)Llb/x0;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :cond_6
    move-object v10, v3

    .line 105
    iget-object v1, p0, Lia/a0;->b:Lba/a;

    .line 106
    .line 107
    iget-object v1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v1, Lha/a;

    .line 110
    .line 111
    iget-object v1, v1, Lha/a;->j:Laa/e;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Laa/e;->a(Lla/c;)Laa/g;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    new-instance v0, Ly9/r0;

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    sget-object v4, Lw9/g;->a:Lw9/f;

    .line 121
    .line 122
    const/4 v8, 0x0

    .line 123
    const/4 v9, 0x0

    .line 124
    move-object v1, p2

    .line 125
    move v3, p3

    .line 126
    invoke-direct/range {v0 .. v11}, Ly9/r0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_7
    const/4 p1, 0x2

    .line 134
    invoke-static {p1}, Llb/v0;->a(I)V

    .line 135
    .line 136
    .line 137
    throw v3
.end method

.method public final w(Ljava/util/LinkedHashSet;Lua/e;Ljava/util/ArrayList;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lia/a0;->b:Lba/a;

    .line 2
    .line 3
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lha/a;

    .line 6
    .line 7
    iget-object v5, v0, Lha/a;->f:Lhb/m;

    .line 8
    .line 9
    iget-object v0, v0, Lha/a;->u:Lmb/k;

    .line 10
    .line 11
    check-cast v0, Lmb/l;

    .line 12
    .line 13
    iget-object v6, v0, Lmb/l;->d:Lxa/j;

    .line 14
    .line 15
    iget-object v4, p0, Lia/o;->n:Lv9/e;

    .line 16
    .line 17
    move-object v3, p1

    .line 18
    move-object v1, p2

    .line 19
    move-object v2, p3

    .line 20
    invoke-static/range {v1 .. v6}, Lc7/a;->Q(Lua/e;Ljava/util/AbstractCollection;Ljava/util/Collection;Lv9/e;Lhb/m;Lxa/j;)Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p4, :cond_0

    .line 25
    .line 26
    invoke-interface {v3, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {p1, v3}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance p3, Ljava/util/ArrayList;

    .line 35
    .line 36
    const/16 p4, 0xa

    .line 37
    .line 38
    invoke-static {p1, p4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result p4

    .line 53
    if-eqz p4, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    check-cast p4, Ly9/l0;

    .line 60
    .line 61
    invoke-static {p4}, Lc7/a;->B(Lv9/c;)Lv9/c;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ly9/l0;

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-static {p4, v0, p2}, Lia/o;->A(Ly9/l0;Lv9/t;Ljava/util/AbstractCollection;)Ly9/l0;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    :goto_1
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {v3, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final x(Lua/e;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;Lf9/k;)V
    .locals 10

    .line 1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_e

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ly9/l0;

    .line 16
    .line 17
    invoke-static {v0}, Lc7/a;->A(Lv9/c;)Lv9/c;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ly9/l0;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {v1}, Lc7/a;->y(Lv9/t;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {p5, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/util/Collection;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ly9/l0;

    .line 60
    .line 61
    invoke-interface {v4}, Lv9/t;->r0()Lv9/s;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v4, p1}, Lv9/s;->j(Lua/e;)Lv9/s;

    .line 66
    .line 67
    .line 68
    invoke-interface {v4}, Lv9/s;->O()Lv9/s;

    .line 69
    .line 70
    .line 71
    invoke-interface {v4}, Lv9/s;->n()Lv9/s;

    .line 72
    .line 73
    .line 74
    invoke-interface {v4}, Lv9/s;->build()Lv9/t;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    check-cast v4, Ly9/l0;

    .line 82
    .line 83
    invoke-static {v1, v4}, Lia/o;->E(Ly9/l0;Ly9/l0;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-static {v4, v1, p2}, Lia/o;->A(Ly9/l0;Lv9/t;Ljava/util/AbstractCollection;)Ly9/l0;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_1
    invoke-static {p4, v1}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lea/e;->a(Lv9/t;)Lv9/t;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v3, "getName(...)"

    .line 101
    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    :cond_3
    move-object v1, v2

    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_4
    move-object v4, v1

    .line 108
    check-cast v4, Ly9/m;

    .line 109
    .line 110
    invoke-virtual {v4}, Ly9/m;->getName()Lua/e;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-static {v4, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p5, v4}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Ljava/lang/Iterable;

    .line 122
    .line 123
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_6

    .line 132
    .line 133
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    move-object v6, v5

    .line 138
    check-cast v6, Ly9/l0;

    .line 139
    .line 140
    invoke-static {v6, v1}, Lia/o;->K(Ly9/l0;Lv9/t;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_5

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    move-object v5, v2

    .line 148
    :goto_2
    check-cast v5, Ly9/l0;

    .line 149
    .line 150
    if-eqz v5, :cond_8

    .line 151
    .line 152
    invoke-interface {v5}, Lv9/t;->r0()Lv9/s;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-interface {v1}, Lv9/b;->S()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const-string v7, "getValueParameters(...)"

    .line 161
    .line 162
    invoke-static {v6, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v8, Ljava/util/ArrayList;

    .line 166
    .line 167
    const/16 v9, 0xa

    .line 168
    .line 169
    invoke-static {v6, v9}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-eqz v9, :cond_7

    .line 185
    .line 186
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    check-cast v9, Ly9/r0;

    .line 191
    .line 192
    check-cast v9, Ly9/s0;

    .line 193
    .line 194
    invoke-virtual {v9}, Ly9/s0;->getType()Llb/w;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_7
    invoke-virtual {v5}, Ly9/u;->S()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-static {v5, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v8, v5, v1}, Li9/a;->r(Ljava/util/ArrayList;Ljava/util/List;Lv9/t;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-interface {v4, v5}, Lv9/s;->e(Ljava/util/List;)Lv9/s;

    .line 214
    .line 215
    .line 216
    invoke-interface {v4}, Lv9/s;->O()Lv9/s;

    .line 217
    .line 218
    .line 219
    invoke-interface {v4}, Lv9/s;->n()Lv9/s;

    .line 220
    .line 221
    .line 222
    invoke-interface {v4}, Lv9/s;->q()Lv9/s;

    .line 223
    .line 224
    .line 225
    invoke-interface {v4}, Lv9/s;->build()Lv9/t;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Ly9/l0;

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_8
    move-object v4, v2

    .line 233
    :goto_4
    if-eqz v4, :cond_3

    .line 234
    .line 235
    invoke-virtual {p0, v4}, Lia/o;->L(Ly9/l0;)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_9

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_9
    move-object v4, v2

    .line 243
    :goto_5
    if-eqz v4, :cond_3

    .line 244
    .line 245
    invoke-static {v4, v1, p2}, Lia/o;->A(Ly9/l0;Lv9/t;Ljava/util/AbstractCollection;)Ly9/l0;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    :goto_6
    invoke-static {p4, v1}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v0}, Lv9/t;->o()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_a

    .line 257
    .line 258
    goto :goto_8

    .line 259
    :cond_a
    invoke-virtual {v0}, Ly9/m;->getName()Lua/e;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v1, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {p5, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Ljava/lang/Iterable;

    .line 271
    .line 272
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-eqz v3, :cond_d

    .line 281
    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Ly9/l0;

    .line 287
    .line 288
    invoke-static {v3}, Lia/o;->B(Ly9/l0;)Ly9/l0;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    if-eqz v3, :cond_c

    .line 293
    .line 294
    invoke-static {v3, v0}, Lia/o;->D(Lv9/t;Lv9/t;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_c

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_c
    move-object v3, v2

    .line 302
    :goto_7
    if-eqz v3, :cond_b

    .line 303
    .line 304
    move-object v2, v3

    .line 305
    :cond_d
    :goto_8
    invoke-static {p4, v2}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_e
    return-void
.end method

.method public final y(Ljava/util/Set;Ljava/util/AbstractCollection;Lub/h;Lf9/k;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_7

    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lv9/k0;

    .line 22
    .line 23
    invoke-virtual {v0, v4, v2}, Lia/o;->C(Lv9/k0;Lf9/k;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0, v4, v2}, Lia/o;->G(Lv9/k0;Lf9/k;)Ly9/l0;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v4}, Lv9/t0;->Z()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    invoke-static {v4, v2}, Lia/o;->H(Lv9/k0;Lf9/k;)Ly9/l0;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v7, 0x0

    .line 54
    :goto_0
    if-eqz v7, :cond_3

    .line 55
    .line 56
    invoke-virtual {v7}, Ly9/u;->h()Lv9/x;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ly9/u;->h()Lv9/x;

    .line 60
    .line 61
    .line 62
    :cond_3
    new-instance v8, Lga/d;

    .line 63
    .line 64
    const-string v9, "ownerDescriptor"

    .line 65
    .line 66
    iget-object v10, v0, Lia/o;->n:Lv9/e;

    .line 67
    .line 68
    invoke-static {v10, v9}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ly9/u;->h()Lv9/x;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-virtual {v5}, Ly9/u;->d()Lea/o;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    const/4 v9, 0x0

    .line 80
    if-eqz v7, :cond_4

    .line 81
    .line 82
    const/4 v13, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 v13, 0x0

    .line 85
    :goto_1
    invoke-interface {v4}, Lv9/k;->getName()Lua/e;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    invoke-virtual {v5}, Ly9/n;->getSource()Lv9/m0;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    const/16 v18, 0x0

    .line 94
    .line 95
    const/16 v19, 0x0

    .line 96
    .line 97
    move-object v9, v10

    .line 98
    const/16 v16, 0x0

    .line 99
    .line 100
    sget-object v10, Lw9/g;->a:Lw9/f;

    .line 101
    .line 102
    const/16 v17, 0x0

    .line 103
    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v20, 0x0

    .line 107
    .line 108
    const/16 v17, 0x1

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    invoke-direct/range {v8 .. v19}, Lga/f;-><init>(Lv9/k;Lw9/h;Lv9/x;Lea/o;ZLua/e;Lv9/m0;Lv9/k0;IZLr8/j;)V

    .line 112
    .line 113
    .line 114
    iget-object v9, v5, Ly9/u;->g:Llb/w;

    .line 115
    .line 116
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lia/o;->p()Ly9/v;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    const/4 v12, 0x0

    .line 124
    sget-object v10, Ls8/w;->a:Ls8/w;

    .line 125
    .line 126
    move-object v13, v10

    .line 127
    invoke-virtual/range {v8 .. v13}, Ly9/i0;->J0(Llb/w;Ljava/util/List;Ly9/v;Ly9/v;Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Lfb/a;->getAnnotations()Lw9/h;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v5}, Ly9/n;->getSource()Lv9/m0;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-static {v8, v9, v6, v10}, Lxa/k;->l(Lv9/k0;Lw9/h;ZLv9/m0;)Ly9/j0;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iput-object v5, v6, Ly9/g0;->l:Lv9/t;

    .line 143
    .line 144
    invoke-virtual {v8}, Ly9/s0;->getType()Llb/w;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v6, v5}, Ly9/j0;->F0(Llb/w;)V

    .line 149
    .line 150
    .line 151
    if-eqz v7, :cond_6

    .line 152
    .line 153
    invoke-virtual {v7}, Ly9/u;->S()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    const-string v9, "getValueParameters(...)"

    .line 158
    .line 159
    invoke-static {v5, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v5}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Ly9/r0;

    .line 167
    .line 168
    if-eqz v5, :cond_5

    .line 169
    .line 170
    invoke-virtual {v7}, Lfb/a;->getAnnotations()Lw9/h;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    check-cast v5, Lfb/a;

    .line 175
    .line 176
    invoke-virtual {v5}, Lfb/a;->getAnnotations()Lw9/h;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v7}, Ly9/u;->d()Lea/o;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-virtual {v7}, Ly9/n;->getSource()Lv9/m0;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    const/4 v11, 0x0

    .line 189
    invoke-static/range {v8 .. v13}, Lxa/k;->m(Lv9/k0;Lw9/h;Lw9/h;ZLea/o;Lv9/m0;)Ly9/k0;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    iput-object v7, v5, Ly9/g0;->l:Lv9/t;

    .line 194
    .line 195
    :goto_2
    const/4 v7, 0x0

    .line 196
    goto :goto_3

    .line 197
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v3, "No parameter found for "

    .line 202
    .line 203
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    throw v1

    .line 217
    :cond_6
    const/4 v5, 0x0

    .line 218
    goto :goto_2

    .line 219
    :goto_3
    invoke-virtual {v8, v6, v5, v7, v7}, Ly9/i0;->G0(Ly9/j0;Ly9/k0;Ly9/r;Ly9/r;)V

    .line 220
    .line 221
    .line 222
    move-object v6, v8

    .line 223
    :goto_4
    move-object/from16 v5, p2

    .line 224
    .line 225
    if-eqz v6, :cond_0

    .line 226
    .line 227
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    if-eqz v1, :cond_7

    .line 231
    .line 232
    invoke-virtual {v1, v4}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_7
    return-void
.end method

.method public final z()Ljava/util/Collection;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lia/o;->p:Z

    .line 2
    .line 3
    const-string v1, "getSupertypes(...)"

    .line 4
    .line 5
    iget-object v2, p0, Lia/o;->n:Lv9/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v2}, Lv9/h;->t()Llb/k0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Llb/k0;->l()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lia/a0;->b:Lba/a;

    .line 22
    .line 23
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lha/a;

    .line 26
    .line 27
    iget-object v0, v0, Lha/a;->u:Lmb/k;

    .line 28
    .line 29
    check-cast v0, Lmb/l;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string v0, "classDescriptor"

    .line 35
    .line 36
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Lv9/h;->t()Llb/k0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Llb/k0;->l()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method
