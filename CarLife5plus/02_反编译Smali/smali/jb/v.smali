.class public final Ljb/v;
.super Ly9/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final k:Lhb/k;

.field public final l:Lpa/x0;

.field public final m:Ljb/a;


# direct methods
.method public constructor <init>(Lhb/k;Lpa/x0;I)V
    .locals 10

    .line 1
    iget-object v0, p1, Lhb/k;->a:Lhb/i;

    .line 2
    .line 3
    iget-object v2, v0, Lhb/i;->a:Lkb/l;

    .line 4
    .line 5
    iget-object v3, p1, Lhb/k;->c:Lv9/k;

    .line 6
    .line 7
    iget-object v1, p1, Lhb/k;->b:Lra/f;

    .line 8
    .line 9
    iget v4, p2, Lpa/x0;->e:I

    .line 10
    .line 11
    invoke-static {v1, v4}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-object v1, p2, Lpa/x0;->g:Lpa/w0;

    .line 16
    .line 17
    const-string v4, "getVariance(...)"

    .line 18
    .line 19
    invoke-static {v1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eq v1, v4, :cond_1

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-ne v1, v4, :cond_0

    .line 33
    .line 34
    sget-object v1, Llb/y0;->c:Llb/y0;

    .line 35
    .line 36
    :goto_0
    move-object v6, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    new-instance p1, Lac/p;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    sget-object v1, Llb/y0;->e:Llb/y0;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v1, Llb/y0;->d:Llb/y0;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :goto_1
    iget-boolean v7, p2, Lpa/x0;->f:Z

    .line 51
    .line 52
    sget-object v9, Lv9/n0;->c:Lv9/n0;

    .line 53
    .line 54
    sget-object v4, Lw9/g;->a:Lw9/f;

    .line 55
    .line 56
    move-object v1, p0

    .line 57
    move v8, p3

    .line 58
    invoke-direct/range {v1 .. v9}, Ly9/c;-><init>(Lkb/o;Lv9/k;Lw9/h;Lua/e;Llb/y0;ZILv9/n0;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, v1, Ljb/v;->k:Lhb/k;

    .line 62
    .line 63
    iput-object p2, v1, Ljb/v;->l:Lpa/x0;

    .line 64
    .line 65
    new-instance p1, Ljb/a;

    .line 66
    .line 67
    iget-object p2, v0, Lhb/i;->a:Lkb/l;

    .line 68
    .line 69
    new-instance p3, La8/g0;

    .line 70
    .line 71
    const/16 v0, 0xc

    .line 72
    .line 73
    invoke-direct {p3, v0, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2, p3}, Ljb/a;-><init>(Lkb/o;Lf9/a;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, v1, Ljb/v;->m:Ljb/a;

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Ljb/v;->k:Lhb/k;

    .line 2
    .line 3
    iget-object v1, v0, Lhb/k;->d:Lra/g;

    .line 4
    .line 5
    const-string v2, "<this>"

    .line 6
    .line 7
    iget-object v3, p0, Ljb/v;->l:Lpa/x0;

    .line 8
    .line 9
    invoke-static {v3, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v3, Lpa/x0;->h:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    const/16 v4, 0xa

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget-object v2, v3, Lpa/x0;->i:Ljava/util/List;

    .line 27
    .line 28
    const-string v3, "getUpperBoundIdList(...)"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-virtual {v1, v5}, Lra/g;->a(I)Lpa/s0;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object v2, v3

    .line 74
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-static {p0}, Lbb/e;->e(Lv9/k;)Ls9/i;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ls9/i;->n()Llb/a0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :cond_3
    iget-object v0, v0, Lhb/k;->h:Lp/h3;

    .line 94
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Lpa/s0;

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    return-object v1
.end method

.method public final getAnnotations()Lw9/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/v;->m:Ljb/a;

    .line 2
    .line 3
    return-object v0
.end method
