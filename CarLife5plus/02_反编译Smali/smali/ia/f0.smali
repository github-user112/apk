.class public final Lia/f0;
.super Ly9/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final k:Lba/a;

.field public final l:Lba/d0;


# direct methods
.method public constructor <init>(Lba/a;Lba/d0;ILv9/l;)V
    .locals 10

    .line 1
    const-string v0, "javaTypeParameter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lba/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/a;

    .line 9
    .line 10
    iget-object v2, v0, Lha/a;->a:Lkb/o;

    .line 11
    .line 12
    new-instance v4, Lha/c;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v4, p1, p2, v1}, Lha/c;-><init>(Lba/a;Lla/b;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p2, Lba/d0;->a:Ljava/lang/reflect/TypeVariable;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/4 v7, 0x0

    .line 29
    iget-object v9, v0, Lha/a;->m:Lv9/n0;

    .line 30
    .line 31
    sget-object v6, Llb/y0;->c:Llb/y0;

    .line 32
    .line 33
    move-object v1, p0

    .line 34
    move v8, p3

    .line 35
    move-object v3, p4

    .line 36
    invoke-direct/range {v1 .. v9}, Ly9/c;-><init>(Lkb/o;Lv9/k;Lw9/h;Lua/e;Llb/y0;ZILv9/n0;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, v1, Lia/f0;->k:Lba/a;

    .line 40
    .line 41
    iput-object p2, v1, Lia/f0;->l:Lba/d0;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final C0(Ljava/util/List;)Ljava/util/List;
    .locals 11

    .line 1
    iget-object v3, p0, Lia/f0;->k:Lba/a;

    .line 2
    .line 3
    iget-object v0, v3, Lba/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lha/a;

    .line 6
    .line 7
    iget-object v6, v0, Lha/a;->r:Lma/d;

    .line 8
    .line 9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v10, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    invoke-static {p1, v0}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v7, v0

    .line 38
    check-cast v7, Llb/w;

    .line 39
    .line 40
    sget-object v0, Lma/o;->d:Lma/o;

    .line 41
    .line 42
    const-string v1, "<this>"

    .line 43
    .line 44
    invoke-static {v7, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-static {v7, v0, v1}, Llb/v0;->c(Llb/w;Lf9/k;Lub/h;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    move-object v4, v6

    .line 55
    move-object v6, v7

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    new-instance v0, Lma/r;

    .line 58
    .line 59
    sget-object v4, Lea/a;->f:Lea/a;

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    move-object v1, p0

    .line 64
    invoke-direct/range {v0 .. v5}, Lma/r;-><init>(Lw9/a;ZLba/a;Lea/a;Z)V

    .line 65
    .line 66
    .line 67
    move-object v4, v6

    .line 68
    move-object v6, v7

    .line 69
    sget-object v7, Ls8/w;->a:Ls8/w;

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    move-object v5, v0

    .line 74
    invoke-virtual/range {v4 .. v9}, Lma/d;->b(Lma/r;Llb/w;Ljava/util/List;Lma/t;Z)Llb/w;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    if-nez v7, :cond_1

    .line 79
    .line 80
    :goto_1
    move-object v7, v6

    .line 81
    :cond_1
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-object v6, v4

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return-object v10
.end method

.method public final D0()Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lia/f0;->l:Lba/d0;

    .line 2
    .line 3
    iget-object v0, v0, Lba/d0;->a:Ljava/lang/reflect/TypeVariable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getBounds(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    array-length v2, v0

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    array-length v2, v0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v4, v2, :cond_0

    .line 24
    .line 25
    aget-object v5, v0, v4

    .line 26
    .line 27
    new-instance v6, Lba/r;

    .line 28
    .line 29
    invoke-direct {v6, v5}, Lba/r;-><init>(Ljava/lang/reflect/Type;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1}, Ls8/p;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lba/r;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v0, Lba/r;->a:Ljava/lang/reflect/Type;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_1
    const-class v2, Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 59
    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v2, p0, Lia/f0;->k:Lba/a;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, v2, Lba/a;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lha/a;

    .line 71
    .line 72
    iget-object v0, v0, Lha/a;->o:Lv9/y;

    .line 73
    .line 74
    invoke-interface {v0}, Lv9/y;->j()Ls9/i;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ls9/i;->e()Llb/a0;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, v2, Lba/a;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Lha/a;

    .line 85
    .line 86
    iget-object v1, v1, Lha/a;->o:Lv9/y;

    .line 87
    .line 88
    invoke-interface {v1}, Lv9/y;->j()Ls9/i;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ls9/i;->p()Llb/a0;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Llb/c;->e(Llb/a0;Llb/a0;)Llb/x0;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 106
    .line 107
    const/16 v4, 0xa

    .line 108
    .line 109
    invoke-static {v1, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_4

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Lba/r;

    .line 131
    .line 132
    iget-object v5, v2, Lba/a;->e:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v5, La2/b;

    .line 135
    .line 136
    sget-object v6, Llb/t0;->b:Llb/t0;

    .line 137
    .line 138
    const/4 v7, 0x3

    .line 139
    invoke-static {v6, v3, p0, v7}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v5, v4, v6}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    return-object v0
.end method
