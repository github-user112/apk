.class public final Llb/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Llb/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llb/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llb/d;->a:Llb/d;

    .line 7
    .line 8
    return-void
.end method

.method public static final b(Lmb/b;Lob/e;)Z
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Lmb/b;->E(Lob/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    instance-of v0, p1, Lob/c;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lob/c;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Lmb/b;->J(Lob/c;)Lmb/i;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p0, p1}, Lmb/b;->e(Lya/b;)Llb/n0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Lmb/b;->x0(Llb/n0;)Llb/x0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-interface {p0, p1}, Lmb/b;->d(Lob/d;)Llb/a0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Lmb/b;->E(Lob/e;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ne p0, v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_2
    :goto_1
    return v1
.end method

.method public static final c(Lmb/b;Llb/j0;Lob/e;Lob/e;Z)Z
    .locals 3

    .line 1
    invoke-interface {p0, p2}, Lmb/b;->x(Lob/e;)Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    .line 7
    instance-of v0, p2, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p2

    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lob/d;

    .line 36
    .line 37
    invoke-interface {p0, v0}, Lmb/b;->A0(Lob/d;)Llb/k0;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p0, p3}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    if-eqz p4, :cond_1

    .line 52
    .line 53
    sget-object v1, Llb/d;->a:Llb/d;

    .line 54
    .line 55
    invoke-static {v1, p1, p3, v0}, Llb/d;->n(Llb/d;Llb/j0;Lob/d;Lob/d;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    :cond_2
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public static d(Llb/j0;Lob/e;Lob/h;)Ljava/util/List;
    .locals 7

    .line 1
    sget-object v0, Llb/i0;->c:Llb/i0;

    .line 2
    .line 3
    iget-object v1, p0, Llb/j0;->c:Lmb/b;

    .line 4
    .line 5
    invoke-interface {v1, p1, p2}, Lmb/b;->c0(Lob/e;Lob/h;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p2}, Lmb/b;->k(Lob/h;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, p1}, Lmb/b;->D0(Lob/e;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v1, p2}, Lmb/b;->j(Lob/h;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {v1, p0, p2}, Lmb/b;->a0(Lob/h;Lob/h;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-interface {v1, p1}, Lmb/b;->l0(Lob/e;)Llb/a0;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object p1, p0

    .line 45
    :goto_0
    invoke-static {p1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_2
    :goto_1
    sget-object p0, Ls8/w;->a:Ls8/w;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    new-instance v2, Lub/f;

    .line 54
    .line 55
    invoke-direct {v2}, Lub/f;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Llb/j0;->c()V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Llb/j0;->g:Ljava/util/ArrayDeque;

    .line 62
    .line 63
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Llb/j0;->h:Lub/h;

    .line 67
    .line 68
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_a

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lob/e;

    .line 85
    .line 86
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, p1}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_4

    .line 94
    .line 95
    invoke-interface {v1, p1}, Lmb/b;->l0(Lob/e;)Llb/a0;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    if-nez v5, :cond_5

    .line 100
    .line 101
    move-object v5, p1

    .line 102
    :cond_5
    invoke-interface {v1, v5}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-interface {v1, v6, p2}, Lmb/b;->a0(Lob/h;Lob/h;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_6

    .line 111
    .line 112
    invoke-virtual {v2, v5}, Lub/f;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-object v5, v0

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    invoke-interface {v1, v5}, Lmb/b;->H0(Lob/d;)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-nez v6, :cond_7

    .line 122
    .line 123
    sget-object v5, Llb/i0;->b:Llb/i0;

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    invoke-interface {v1, v5}, Lmb/b;->i0(Lob/e;)Lmb/a;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-nez v6, :cond_8

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_8
    const/4 v5, 0x0

    .line 138
    :goto_4
    if-nez v5, :cond_9

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_9
    invoke-interface {v1, p1}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-interface {v1, p1}, Lmb/b;->o(Lob/h;)Ljava/util/Collection;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_4

    .line 158
    .line 159
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    check-cast v6, Lob/d;

    .line 164
    .line 165
    invoke-virtual {v5, p0, v6}, Llb/c;->C(Llb/j0;Lob/d;)Lob/e;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_a
    invoke-virtual {p0}, Llb/j0;->a()V

    .line 174
    .line 175
    .line 176
    return-object v2
.end method

.method public static e(Llb/j0;Lob/e;Lob/h;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-static {p0, p1, p2}, Llb/d;->d(Llb/j0;Lob/e;Lob/h;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Llb/j0;->c:Lmb/b;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x2

    .line 12
    if-ge p2, v0, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v2, v1

    .line 35
    check-cast v2, Lob/e;

    .line 36
    .line 37
    invoke-interface {p0, v2}, Lmb/b;->u(Lob/e;)Lob/g;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {p0, v2}, Lmb/b;->b(Lob/g;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_1
    if-ge v4, v3, :cond_3

    .line 47
    .line 48
    invoke-interface {p0, v2, v4}, Lmb/b;->s0(Lob/g;I)Llb/n0;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {p0, v5}, Lmb/b;->x0(Llb/n0;)Llb/x0;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    invoke-interface {p0, v5}, Lmb/b;->r(Lob/d;)Llb/p;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/4 v5, 0x0

    .line 64
    :goto_2
    if-nez v5, :cond_1

    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_5

    .line 78
    .line 79
    return-object p2

    .line 80
    :cond_5
    :goto_3
    return-object p1
.end method

.method public static f(Llb/j0;Lob/d;Lob/d;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Llb/j0;->c:Lmb/b;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Llb/j0;->e(Lob/d;)Llb/w;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Llb/j0;->d(Lob/d;)Llb/x0;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    move-object/from16 v3, p2

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Llb/j0;->e(Lob/d;)Llb/w;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Llb/j0;->d(Lob/d;)Llb/x0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v1, v2}, Lmb/b;->K(Lob/d;)Llb/a0;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v1, v3}, Lmb/b;->d(Lob/d;)Llb/a0;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-interface {v1, v4}, Lmb/b;->g(Lob/e;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x1

    .line 36
    const/4 v9, 0x0

    .line 37
    if-nez v6, :cond_d

    .line 38
    .line 39
    invoke-interface {v1, v5}, Lmb/b;->g(Lob/e;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_0
    invoke-interface {v1, v4}, Lmb/b;->F0(Lob/e;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v4}, Lmb/b;->Q(Lob/e;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v5}, Lmb/b;->Q(Lob/e;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v5}, Lmb/b;->z0(Lob/e;)Lob/c;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    invoke-interface {v1, v6}, Lmb/b;->v(Lob/c;)Llb/x0;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v10, 0x0

    .line 68
    :goto_0
    sget-object v11, Llb/d;->a:Llb/d;

    .line 69
    .line 70
    if-eqz v6, :cond_4

    .line 71
    .line 72
    if-eqz v10, :cond_4

    .line 73
    .line 74
    invoke-interface {v1, v5}, Lmb/b;->o0(Lob/d;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_2

    .line 79
    .line 80
    invoke-interface {v1, v10}, Lmb/b;->X(Lob/d;)Lob/d;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-interface {v1, v5}, Lmb/b;->v0(Lob/e;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    invoke-interface {v1, v10}, Lmb/b;->h(Lob/d;)Llb/x0;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    :cond_3
    :goto_1
    invoke-static {v11, v0, v4, v10}, Llb/d;->n(Llb/d;Llb/j0;Lob/d;Lob/d;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_4
    invoke-interface {v1, v5}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-interface {v1, v6}, Lmb/b;->L(Lob/h;)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-eqz v10, :cond_8

    .line 114
    .line 115
    invoke-interface {v1, v5}, Lmb/b;->o0(Lob/d;)Z

    .line 116
    .line 117
    .line 118
    invoke-interface {v1, v6}, Lmb/b;->o(Lob/h;)Ljava/util/Collection;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Ljava/lang/Iterable;

    .line 123
    .line 124
    instance-of v6, v5, Ljava/util/Collection;

    .line 125
    .line 126
    if-eqz v6, :cond_6

    .line 127
    .line 128
    move-object v6, v5

    .line 129
    check-cast v6, Ljava/util/Collection;

    .line 130
    .line 131
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_6

    .line 136
    .line 137
    :cond_5
    const/4 v4, 0x1

    .line 138
    goto :goto_2

    .line 139
    :cond_6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_5

    .line 148
    .line 149
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    check-cast v6, Lob/d;

    .line 154
    .line 155
    invoke-static {v11, v0, v4, v6}, Llb/d;->n(Llb/d;Llb/j0;Lob/d;Lob/d;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-nez v6, :cond_7

    .line 160
    .line 161
    const/4 v4, 0x0

    .line 162
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    goto/16 :goto_6

    .line 167
    .line 168
    :cond_8
    invoke-interface {v1, v4}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    instance-of v10, v4, Lob/c;

    .line 173
    .line 174
    if-nez v10, :cond_b

    .line 175
    .line 176
    invoke-interface {v1, v6}, Lmb/b;->L(Lob/h;)Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-eqz v10, :cond_c

    .line 181
    .line 182
    invoke-interface {v1, v6}, Lmb/b;->o(Lob/h;)Ljava/util/Collection;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v6, Ljava/lang/Iterable;

    .line 187
    .line 188
    instance-of v10, v6, Ljava/util/Collection;

    .line 189
    .line 190
    if-eqz v10, :cond_9

    .line 191
    .line 192
    move-object v10, v6

    .line 193
    check-cast v10, Ljava/util/Collection;

    .line 194
    .line 195
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_9

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    if-eqz v10, :cond_b

    .line 211
    .line 212
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    check-cast v10, Lob/d;

    .line 217
    .line 218
    instance-of v10, v10, Lob/c;

    .line 219
    .line 220
    if-nez v10, :cond_a

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_b
    :goto_3
    invoke-static {v1, v5, v4}, Llb/d;->k(Lmb/b;Lob/d;Lob/d;)Lv9/q0;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    if-eqz v4, :cond_c

    .line 228
    .line 229
    invoke-interface {v1, v5}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-interface {v1, v4, v5}, Lmb/b;->V(Lv9/q0;Lob/h;)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_c

    .line 238
    .line 239
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_c
    :goto_4
    const/4 v4, 0x0

    .line 243
    goto :goto_6

    .line 244
    :cond_d
    :goto_5
    iget-boolean v6, v0, Llb/j0;->a:Z

    .line 245
    .line 246
    if-eqz v6, :cond_e

    .line 247
    .line 248
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_e
    invoke-interface {v1, v4}, Lmb/b;->o0(Lob/d;)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-eqz v6, :cond_f

    .line 256
    .line 257
    invoke-interface {v1, v5}, Lmb/b;->o0(Lob/d;)Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-nez v6, :cond_f

    .line 262
    .line 263
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_f
    invoke-interface {v1, v4}, Lmb/b;->Y(Lob/e;)Llb/a0;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-interface {v1, v5}, Lmb/b;->Y(Lob/e;)Llb/a0;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    const-string v6, "context"

    .line 275
    .line 276
    invoke-static {v1, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string v6, "a"

    .line 280
    .line 281
    invoke-static {v4, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v6, "b"

    .line 285
    .line 286
    invoke-static {v5, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v1, v4, v5}, Llb/c;->y(Lmb/b;Lob/d;Lob/d;)Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    :goto_6
    if-eqz v4, :cond_10

    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    return v0

    .line 304
    :cond_10
    invoke-interface {v1, v2}, Lmb/b;->K(Lob/d;)Llb/a0;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-interface {v1, v3}, Lmb/b;->d(Lob/d;)Llb/a0;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    sget-object v4, Llb/i0;->c:Llb/i0;

    .line 313
    .line 314
    sget-object v5, Llb/i0;->b:Llb/i0;

    .line 315
    .line 316
    invoke-interface {v1, v3}, Lmb/b;->o0(Lob/d;)Z

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    if-eqz v6, :cond_11

    .line 321
    .line 322
    goto/16 :goto_c

    .line 323
    .line 324
    :cond_11
    invoke-interface {v1, v2}, Lmb/b;->v0(Lob/e;)Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-nez v6, :cond_1f

    .line 329
    .line 330
    invoke-interface {v1, v2}, Lmb/b;->w0(Lob/d;)Z

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    if-eqz v6, :cond_12

    .line 335
    .line 336
    goto/16 :goto_c

    .line 337
    .line 338
    :cond_12
    instance-of v6, v2, Lob/c;

    .line 339
    .line 340
    if-eqz v6, :cond_13

    .line 341
    .line 342
    move-object v6, v2

    .line 343
    check-cast v6, Lob/c;

    .line 344
    .line 345
    invoke-interface {v1, v6}, Lmb/b;->B0(Lob/c;)Z

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    if-eqz v6, :cond_13

    .line 350
    .line 351
    goto/16 :goto_c

    .line 352
    .line 353
    :cond_13
    invoke-static {v0, v2, v5}, Llb/c;->g(Llb/j0;Lob/e;Llb/c;)Z

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eqz v6, :cond_14

    .line 358
    .line 359
    goto/16 :goto_c

    .line 360
    .line 361
    :cond_14
    invoke-interface {v1, v3}, Lmb/b;->v0(Lob/e;)Z

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-eqz v6, :cond_15

    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_15
    sget-object v6, Llb/i0;->d:Llb/i0;

    .line 369
    .line 370
    invoke-static {v0, v3, v6}, Llb/c;->g(Llb/j0;Lob/e;Llb/c;)Z

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    if-eqz v6, :cond_16

    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_16
    invoke-interface {v1, v2}, Lmb/b;->D0(Lob/e;)Z

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    if-eqz v6, :cond_17

    .line 382
    .line 383
    :goto_7
    return v9

    .line 384
    :cond_17
    invoke-interface {v1, v3}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    const-string v10, "end"

    .line 389
    .line 390
    invoke-static {v6, v10}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-static {v0, v2, v6}, Llb/c;->i(Llb/j0;Lob/e;Lob/h;)Z

    .line 394
    .line 395
    .line 396
    move-result v10

    .line 397
    if-eqz v10, :cond_18

    .line 398
    .line 399
    goto :goto_c

    .line 400
    :cond_18
    invoke-virtual {v0}, Llb/j0;->c()V

    .line 401
    .line 402
    .line 403
    iget-object v10, v0, Llb/j0;->g:Ljava/util/ArrayDeque;

    .line 404
    .line 405
    invoke-static {v10}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    iget-object v11, v0, Llb/j0;->h:Lub/h;

    .line 409
    .line 410
    invoke-static {v11}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v10, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_19
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    if-nez v12, :cond_1e

    .line 421
    .line 422
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v12

    .line 426
    check-cast v12, Lob/e;

    .line 427
    .line 428
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v11, v12}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v13

    .line 435
    if-eqz v13, :cond_19

    .line 436
    .line 437
    invoke-interface {v1, v12}, Lmb/b;->o0(Lob/d;)Z

    .line 438
    .line 439
    .line 440
    move-result v13

    .line 441
    if-eqz v13, :cond_1a

    .line 442
    .line 443
    move-object v13, v4

    .line 444
    goto :goto_9

    .line 445
    :cond_1a
    move-object v13, v5

    .line 446
    :goto_9
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v14

    .line 450
    if-nez v14, :cond_1b

    .line 451
    .line 452
    goto :goto_a

    .line 453
    :cond_1b
    const/4 v13, 0x0

    .line 454
    :goto_a
    if-nez v13, :cond_1c

    .line 455
    .line 456
    goto :goto_8

    .line 457
    :cond_1c
    invoke-interface {v1, v12}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 458
    .line 459
    .line 460
    move-result-object v12

    .line 461
    invoke-interface {v1, v12}, Lmb/b;->o(Lob/h;)Ljava/util/Collection;

    .line 462
    .line 463
    .line 464
    move-result-object v12

    .line 465
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v12

    .line 469
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v14

    .line 473
    if-eqz v14, :cond_19

    .line 474
    .line 475
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v14

    .line 479
    check-cast v14, Lob/d;

    .line 480
    .line 481
    invoke-virtual {v13, v0, v14}, Llb/c;->C(Llb/j0;Lob/d;)Lob/e;

    .line 482
    .line 483
    .line 484
    move-result-object v14

    .line 485
    invoke-static {v0, v14, v6}, Llb/c;->i(Llb/j0;Lob/e;Lob/h;)Z

    .line 486
    .line 487
    .line 488
    move-result v15

    .line 489
    if-eqz v15, :cond_1d

    .line 490
    .line 491
    invoke-virtual {v0}, Llb/j0;->a()V

    .line 492
    .line 493
    .line 494
    goto :goto_c

    .line 495
    :cond_1d
    invoke-virtual {v10, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_1e
    invoke-virtual {v0}, Llb/j0;->a()V

    .line 500
    .line 501
    .line 502
    return v9

    .line 503
    :cond_1f
    :goto_c
    invoke-interface {v1, v2}, Lmb/b;->E(Lob/e;)Z

    .line 504
    .line 505
    .line 506
    move-result v6

    .line 507
    if-nez v6, :cond_21

    .line 508
    .line 509
    invoke-interface {v1, v3}, Lmb/b;->E(Lob/e;)Z

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    if-nez v6, :cond_21

    .line 514
    .line 515
    :cond_20
    const/4 v6, 0x0

    .line 516
    goto :goto_f

    .line 517
    :cond_21
    invoke-static {v1, v2}, Llb/d;->b(Lmb/b;Lob/e;)Z

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    if-eqz v6, :cond_22

    .line 522
    .line 523
    invoke-static {v1, v3}, Llb/d;->b(Lmb/b;Lob/e;)Z

    .line 524
    .line 525
    .line 526
    move-result v6

    .line 527
    if-eqz v6, :cond_22

    .line 528
    .line 529
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 530
    .line 531
    goto :goto_f

    .line 532
    :cond_22
    invoke-interface {v1, v2}, Lmb/b;->E(Lob/e;)Z

    .line 533
    .line 534
    .line 535
    move-result v6

    .line 536
    if-eqz v6, :cond_23

    .line 537
    .line 538
    invoke-static {v1, v0, v2, v3, v9}, Llb/d;->c(Lmb/b;Llb/j0;Lob/e;Lob/e;Z)Z

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    if-eqz v6, :cond_20

    .line 543
    .line 544
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 545
    .line 546
    goto :goto_f

    .line 547
    :cond_23
    invoke-interface {v1, v3}, Lmb/b;->E(Lob/e;)Z

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    if-eqz v6, :cond_20

    .line 552
    .line 553
    invoke-interface {v1, v2}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 554
    .line 555
    .line 556
    move-result-object v6

    .line 557
    instance-of v10, v6, Llb/v;

    .line 558
    .line 559
    if-eqz v10, :cond_26

    .line 560
    .line 561
    invoke-interface {v1, v6}, Lmb/b;->o(Lob/h;)Ljava/util/Collection;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    check-cast v6, Ljava/lang/Iterable;

    .line 566
    .line 567
    instance-of v10, v6, Ljava/util/Collection;

    .line 568
    .line 569
    if-eqz v10, :cond_24

    .line 570
    .line 571
    move-object v10, v6

    .line 572
    check-cast v10, Ljava/util/Collection;

    .line 573
    .line 574
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 575
    .line 576
    .line 577
    move-result v10

    .line 578
    if-eqz v10, :cond_24

    .line 579
    .line 580
    goto :goto_d

    .line 581
    :cond_24
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 582
    .line 583
    .line 584
    move-result-object v6

    .line 585
    :cond_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 586
    .line 587
    .line 588
    move-result v10

    .line 589
    if-eqz v10, :cond_26

    .line 590
    .line 591
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v10

    .line 595
    check-cast v10, Lob/d;

    .line 596
    .line 597
    invoke-interface {v1, v10}, Lmb/b;->u0(Lob/d;)Llb/a0;

    .line 598
    .line 599
    .line 600
    move-result-object v10

    .line 601
    if-eqz v10, :cond_25

    .line 602
    .line 603
    invoke-interface {v1, v10}, Lmb/b;->E(Lob/e;)Z

    .line 604
    .line 605
    .line 606
    move-result v10

    .line 607
    if-ne v10, v7, :cond_25

    .line 608
    .line 609
    goto :goto_e

    .line 610
    :cond_26
    :goto_d
    invoke-static {v1, v0, v3, v2, v7}, Llb/d;->c(Lmb/b;Llb/j0;Lob/e;Lob/e;Z)Z

    .line 611
    .line 612
    .line 613
    move-result v6

    .line 614
    if-eqz v6, :cond_20

    .line 615
    .line 616
    :goto_e
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 617
    .line 618
    :goto_f
    if-eqz v6, :cond_27

    .line 619
    .line 620
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    return v0

    .line 625
    :cond_27
    invoke-interface {v1, v3}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 626
    .line 627
    .line 628
    move-result-object v6

    .line 629
    invoke-interface {v1, v2}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 630
    .line 631
    .line 632
    move-result-object v10

    .line 633
    invoke-interface {v1, v10, v6}, Lmb/b;->a0(Lob/h;Lob/h;)Z

    .line 634
    .line 635
    .line 636
    move-result v10

    .line 637
    if-eqz v10, :cond_28

    .line 638
    .line 639
    invoke-interface {v1, v6}, Lmb/b;->F(Lob/h;)I

    .line 640
    .line 641
    .line 642
    move-result v10

    .line 643
    if-nez v10, :cond_28

    .line 644
    .line 645
    :goto_10
    const/16 p1, 0x1

    .line 646
    .line 647
    goto/16 :goto_20

    .line 648
    .line 649
    :cond_28
    invoke-interface {v1, v3}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 650
    .line 651
    .line 652
    move-result-object v10

    .line 653
    invoke-interface {v1, v10}, Lmb/b;->m(Lob/h;)Z

    .line 654
    .line 655
    .line 656
    move-result v10

    .line 657
    if-eqz v10, :cond_29

    .line 658
    .line 659
    goto :goto_10

    .line 660
    :cond_29
    const-string v10, "superConstructor"

    .line 661
    .line 662
    invoke-static {v6, v10}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    invoke-interface {v1, v2}, Lmb/b;->D0(Lob/e;)Z

    .line 666
    .line 667
    .line 668
    move-result v10

    .line 669
    if-eqz v10, :cond_2a

    .line 670
    .line 671
    invoke-static {v0, v2, v6}, Llb/d;->e(Llb/j0;Lob/e;Lob/h;)Ljava/util/List;

    .line 672
    .line 673
    .line 674
    move-result-object v10

    .line 675
    goto/16 :goto_16

    .line 676
    .line 677
    :cond_2a
    invoke-interface {v1, v6}, Lmb/b;->k(Lob/h;)Z

    .line 678
    .line 679
    .line 680
    move-result v10

    .line 681
    if-nez v10, :cond_2b

    .line 682
    .line 683
    invoke-interface {v1, v6}, Lmb/b;->D(Lob/h;)Z

    .line 684
    .line 685
    .line 686
    move-result v10

    .line 687
    if-nez v10, :cond_2b

    .line 688
    .line 689
    invoke-static {v0, v2, v6}, Llb/d;->d(Llb/j0;Lob/e;Lob/h;)Ljava/util/List;

    .line 690
    .line 691
    .line 692
    move-result-object v10

    .line 693
    goto/16 :goto_16

    .line 694
    .line 695
    :cond_2b
    new-instance v10, Lub/f;

    .line 696
    .line 697
    invoke-direct {v10}, Lub/f;-><init>()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0}, Llb/j0;->c()V

    .line 701
    .line 702
    .line 703
    iget-object v11, v0, Llb/j0;->g:Ljava/util/ArrayDeque;

    .line 704
    .line 705
    invoke-static {v11}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    iget-object v12, v0, Llb/j0;->h:Lub/h;

    .line 709
    .line 710
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v11, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    :cond_2c
    :goto_11
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 717
    .line 718
    .line 719
    move-result v13

    .line 720
    if-nez v13, :cond_30

    .line 721
    .line 722
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v13

    .line 726
    check-cast v13, Lob/e;

    .line 727
    .line 728
    invoke-static {v13}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v12, v13}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v14

    .line 735
    if-eqz v14, :cond_2c

    .line 736
    .line 737
    invoke-interface {v1, v13}, Lmb/b;->D0(Lob/e;)Z

    .line 738
    .line 739
    .line 740
    move-result v14

    .line 741
    if-eqz v14, :cond_2d

    .line 742
    .line 743
    invoke-virtual {v10, v13}, Lub/f;->add(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-object v14, v4

    .line 747
    goto :goto_12

    .line 748
    :cond_2d
    move-object v14, v5

    .line 749
    :goto_12
    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v15

    .line 753
    if-nez v15, :cond_2e

    .line 754
    .line 755
    goto :goto_13

    .line 756
    :cond_2e
    const/4 v14, 0x0

    .line 757
    :goto_13
    if-nez v14, :cond_2f

    .line 758
    .line 759
    goto :goto_11

    .line 760
    :cond_2f
    invoke-interface {v1, v13}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 761
    .line 762
    .line 763
    move-result-object v13

    .line 764
    invoke-interface {v1, v13}, Lmb/b;->o(Lob/h;)Ljava/util/Collection;

    .line 765
    .line 766
    .line 767
    move-result-object v13

    .line 768
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 769
    .line 770
    .line 771
    move-result-object v13

    .line 772
    :goto_14
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 773
    .line 774
    .line 775
    move-result v15

    .line 776
    if-eqz v15, :cond_2c

    .line 777
    .line 778
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v15

    .line 782
    check-cast v15, Lob/d;

    .line 783
    .line 784
    invoke-virtual {v14, v0, v15}, Llb/c;->C(Llb/j0;Lob/d;)Lob/e;

    .line 785
    .line 786
    .line 787
    move-result-object v15

    .line 788
    invoke-virtual {v11, v15}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    goto :goto_14

    .line 792
    :cond_30
    invoke-virtual {v0}, Llb/j0;->a()V

    .line 793
    .line 794
    .line 795
    new-instance v11, Ljava/util/ArrayList;

    .line 796
    .line 797
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v10}, Lub/f;->iterator()Ljava/util/Iterator;

    .line 801
    .line 802
    .line 803
    move-result-object v10

    .line 804
    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 805
    .line 806
    .line 807
    move-result v12

    .line 808
    if-eqz v12, :cond_31

    .line 809
    .line 810
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v12

    .line 814
    check-cast v12, Lob/e;

    .line 815
    .line 816
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 817
    .line 818
    .line 819
    invoke-static {v0, v12, v6}, Llb/d;->e(Llb/j0;Lob/e;Lob/h;)Ljava/util/List;

    .line 820
    .line 821
    .line 822
    move-result-object v12

    .line 823
    invoke-static {v12, v11}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 824
    .line 825
    .line 826
    goto :goto_15

    .line 827
    :cond_31
    move-object v10, v11

    .line 828
    :goto_16
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 829
    .line 830
    .line 831
    new-instance v11, Ljava/util/ArrayList;

    .line 832
    .line 833
    const/16 v12, 0xa

    .line 834
    .line 835
    invoke-static {v10, v12}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 836
    .line 837
    .line 838
    move-result v13

    .line 839
    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 840
    .line 841
    .line 842
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 843
    .line 844
    .line 845
    move-result-object v10

    .line 846
    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 847
    .line 848
    .line 849
    move-result v13

    .line 850
    if-eqz v13, :cond_33

    .line 851
    .line 852
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v13

    .line 856
    check-cast v13, Lob/e;

    .line 857
    .line 858
    invoke-virtual {v0, v13}, Llb/j0;->d(Lob/d;)Llb/x0;

    .line 859
    .line 860
    .line 861
    move-result-object v14

    .line 862
    invoke-interface {v1, v14}, Lmb/b;->u0(Lob/d;)Llb/a0;

    .line 863
    .line 864
    .line 865
    move-result-object v14

    .line 866
    if-nez v14, :cond_32

    .line 867
    .line 868
    goto :goto_18

    .line 869
    :cond_32
    move-object v13, v14

    .line 870
    :goto_18
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    goto :goto_17

    .line 874
    :cond_33
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 875
    .line 876
    .line 877
    move-result v10

    .line 878
    if-eqz v10, :cond_3f

    .line 879
    .line 880
    if-eq v10, v7, :cond_3e

    .line 881
    .line 882
    new-instance v4, Lob/a;

    .line 883
    .line 884
    invoke-interface {v1, v6}, Lmb/b;->F(Lob/h;)I

    .line 885
    .line 886
    .line 887
    move-result v5

    .line 888
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 889
    .line 890
    .line 891
    invoke-interface {v1, v6}, Lmb/b;->F(Lob/h;)I

    .line 892
    .line 893
    .line 894
    move-result v5

    .line 895
    const/4 v10, 0x0

    .line 896
    const/4 v13, 0x0

    .line 897
    :goto_19
    if-ge v10, v5, :cond_3a

    .line 898
    .line 899
    if-nez v13, :cond_35

    .line 900
    .line 901
    invoke-interface {v1, v6, v10}, Lmb/b;->y0(Lob/h;I)Lv9/q0;

    .line 902
    .line 903
    .line 904
    move-result-object v13

    .line 905
    invoke-interface {v1, v13}, Lmb/b;->g0(Lv9/q0;)Lob/i;

    .line 906
    .line 907
    .line 908
    move-result-object v13

    .line 909
    sget-object v14, Lob/i;->c:Lob/i;

    .line 910
    .line 911
    if-eq v13, v14, :cond_34

    .line 912
    .line 913
    goto :goto_1a

    .line 914
    :cond_34
    const/4 v13, 0x0

    .line 915
    goto :goto_1b

    .line 916
    :cond_35
    :goto_1a
    const/4 v13, 0x1

    .line 917
    :goto_1b
    if-nez v13, :cond_39

    .line 918
    .line 919
    new-instance v14, Ljava/util/ArrayList;

    .line 920
    .line 921
    invoke-static {v11, v12}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 922
    .line 923
    .line 924
    move-result v15

    .line 925
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 926
    .line 927
    .line 928
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 929
    .line 930
    .line 931
    move-result-object v15

    .line 932
    :goto_1c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 933
    .line 934
    .line 935
    move-result v16

    .line 936
    if-eqz v16, :cond_38

    .line 937
    .line 938
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v16

    .line 942
    const/16 p1, 0x1

    .line 943
    .line 944
    move-object/from16 v7, v16

    .line 945
    .line 946
    check-cast v7, Lob/e;

    .line 947
    .line 948
    invoke-interface {v1, v7, v10}, Lmb/b;->W(Lob/e;I)Llb/n0;

    .line 949
    .line 950
    .line 951
    move-result-object v8

    .line 952
    if-eqz v8, :cond_37

    .line 953
    .line 954
    const/16 v16, 0x0

    .line 955
    .line 956
    invoke-interface {v1, v8}, Lmb/b;->n(Llb/n0;)Lob/i;

    .line 957
    .line 958
    .line 959
    move-result-object v9

    .line 960
    sget-object v12, Lob/i;->d:Lob/i;

    .line 961
    .line 962
    if-ne v9, v12, :cond_36

    .line 963
    .line 964
    goto :goto_1d

    .line 965
    :cond_36
    const/4 v8, 0x0

    .line 966
    :goto_1d
    if-eqz v8, :cond_37

    .line 967
    .line 968
    invoke-interface {v1, v8}, Lmb/b;->x0(Llb/n0;)Llb/x0;

    .line 969
    .line 970
    .line 971
    move-result-object v8

    .line 972
    if-eqz v8, :cond_37

    .line 973
    .line 974
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    const/4 v7, 0x1

    .line 978
    const/4 v9, 0x0

    .line 979
    const/16 v12, 0xa

    .line 980
    .line 981
    goto :goto_1c

    .line 982
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 983
    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    const-string v4, "Incorrect type: "

    .line 987
    .line 988
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    const-string v4, ", subType: "

    .line 995
    .line 996
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    const-string v2, ", superType: "

    .line 1003
    .line 1004
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v1

    .line 1014
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    throw v0

    .line 1022
    :cond_38
    const/16 p1, 0x1

    .line 1023
    .line 1024
    const/16 v16, 0x0

    .line 1025
    .line 1026
    invoke-interface {v1, v14}, Lmb/b;->e0(Ljava/util/ArrayList;)Llb/x0;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v7

    .line 1030
    invoke-interface {v1, v7}, Lmb/b;->l(Lob/d;)Llb/f0;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v7

    .line 1034
    invoke-virtual {v4, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    goto :goto_1e

    .line 1038
    :cond_39
    const/16 p1, 0x1

    .line 1039
    .line 1040
    const/16 v16, 0x0

    .line 1041
    .line 1042
    :goto_1e
    add-int/lit8 v10, v10, 0x1

    .line 1043
    .line 1044
    const/4 v7, 0x1

    .line 1045
    const/4 v9, 0x0

    .line 1046
    const/16 v12, 0xa

    .line 1047
    .line 1048
    goto/16 :goto_19

    .line 1049
    .line 1050
    :cond_3a
    const/16 p1, 0x1

    .line 1051
    .line 1052
    const/16 v16, 0x0

    .line 1053
    .line 1054
    if-nez v13, :cond_3b

    .line 1055
    .line 1056
    invoke-static {v0, v4, v3}, Llb/d;->m(Llb/j0;Lob/g;Lob/e;)Z

    .line 1057
    .line 1058
    .line 1059
    move-result v2

    .line 1060
    if-eqz v2, :cond_3b

    .line 1061
    .line 1062
    goto :goto_20

    .line 1063
    :cond_3b
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v2

    .line 1067
    const/4 v9, 0x0

    .line 1068
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v4

    .line 1072
    if-eqz v4, :cond_3d

    .line 1073
    .line 1074
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v4

    .line 1078
    check-cast v4, Lob/e;

    .line 1079
    .line 1080
    if-eqz v9, :cond_3c

    .line 1081
    .line 1082
    goto :goto_1f

    .line 1083
    :cond_3c
    invoke-interface {v1, v4}, Lmb/b;->u(Lob/e;)Lob/g;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v4

    .line 1087
    invoke-static {v0, v4, v3}, Llb/d;->m(Llb/j0;Lob/g;Lob/e;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v4

    .line 1091
    move v9, v4

    .line 1092
    goto :goto_1f

    .line 1093
    :cond_3d
    return v9

    .line 1094
    :cond_3e
    invoke-static {v11}, Ls8/p;->b0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    check-cast v2, Lob/e;

    .line 1099
    .line 1100
    invoke-interface {v1, v2}, Lmb/b;->u(Lob/e;)Lob/g;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v1

    .line 1104
    invoke-static {v0, v1, v3}, Llb/d;->m(Llb/j0;Lob/g;Lob/e;)Z

    .line 1105
    .line 1106
    .line 1107
    move-result v0

    .line 1108
    return v0

    .line 1109
    :cond_3f
    const/16 p1, 0x1

    .line 1110
    .line 1111
    const/16 v16, 0x0

    .line 1112
    .line 1113
    invoke-interface {v1, v2}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    invoke-interface {v1, v3}, Lmb/b;->k(Lob/h;)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v6

    .line 1121
    if-eqz v6, :cond_40

    .line 1122
    .line 1123
    invoke-interface {v1, v3}, Lmb/b;->N(Lob/h;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v0

    .line 1127
    return v0

    .line 1128
    :cond_40
    invoke-interface {v1, v2}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v3

    .line 1132
    invoke-interface {v1, v3}, Lmb/b;->N(Lob/h;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result v3

    .line 1136
    if-eqz v3, :cond_41

    .line 1137
    .line 1138
    :goto_20
    return p1

    .line 1139
    :cond_41
    invoke-virtual {v0}, Llb/j0;->c()V

    .line 1140
    .line 1141
    .line 1142
    iget-object v3, v0, Llb/j0;->g:Ljava/util/ArrayDeque;

    .line 1143
    .line 1144
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 1145
    .line 1146
    .line 1147
    iget-object v6, v0, Llb/j0;->h:Lub/h;

    .line 1148
    .line 1149
    invoke-static {v6}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1153
    .line 1154
    .line 1155
    :cond_42
    :goto_21
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1156
    .line 1157
    .line 1158
    move-result v2

    .line 1159
    if-nez v2, :cond_47

    .line 1160
    .line 1161
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v2

    .line 1165
    check-cast v2, Lob/e;

    .line 1166
    .line 1167
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v6, v2}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 1171
    .line 1172
    .line 1173
    move-result v7

    .line 1174
    if-eqz v7, :cond_42

    .line 1175
    .line 1176
    invoke-interface {v1, v2}, Lmb/b;->D0(Lob/e;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v7

    .line 1180
    if-eqz v7, :cond_43

    .line 1181
    .line 1182
    move-object v7, v4

    .line 1183
    goto :goto_22

    .line 1184
    :cond_43
    move-object v7, v5

    .line 1185
    :goto_22
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v8

    .line 1189
    if-nez v8, :cond_44

    .line 1190
    .line 1191
    goto :goto_23

    .line 1192
    :cond_44
    const/4 v7, 0x0

    .line 1193
    :goto_23
    if-nez v7, :cond_45

    .line 1194
    .line 1195
    goto :goto_21

    .line 1196
    :cond_45
    invoke-interface {v1, v2}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v2

    .line 1200
    invoke-interface {v1, v2}, Lmb/b;->o(Lob/h;)Ljava/util/Collection;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v2

    .line 1204
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v2

    .line 1208
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1209
    .line 1210
    .line 1211
    move-result v8

    .line 1212
    if-eqz v8, :cond_42

    .line 1213
    .line 1214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v8

    .line 1218
    check-cast v8, Lob/d;

    .line 1219
    .line 1220
    invoke-virtual {v7, v0, v8}, Llb/c;->C(Llb/j0;Lob/d;)Lob/e;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v8

    .line 1224
    invoke-interface {v1, v8}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v9

    .line 1228
    invoke-interface {v1, v9}, Lmb/b;->N(Lob/h;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v9

    .line 1232
    if-eqz v9, :cond_46

    .line 1233
    .line 1234
    invoke-virtual {v0}, Llb/j0;->a()V

    .line 1235
    .line 1236
    .line 1237
    return p1

    .line 1238
    :cond_46
    invoke-virtual {v3, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    goto :goto_24

    .line 1242
    :cond_47
    invoke-virtual {v0}, Llb/j0;->a()V

    .line 1243
    .line 1244
    .line 1245
    return v16
.end method

.method public static h(Llb/j0;Lob/d;Lob/d;)Z
    .locals 6

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Llb/j0;->c:Lmb/b;

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0, p1}, Llb/d;->l(Lmb/b;Lob/d;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-static {v0, p2}, Llb/d;->l(Lmb/b;Lob/d;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Llb/j0;->e(Lob/d;)Llb/w;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, v1}, Llb/j0;->d(Lob/d;)Llb/x0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, p2}, Llb/j0;->e(Lob/d;)Llb/w;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, v2}, Llb/j0;->d(Lob/d;)Llb/x0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v1}, Lmb/b;->K(Lob/d;)Llb/a0;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v0, v1}, Lmb/b;->A0(Lob/d;)Llb/k0;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v0, v2}, Lmb/b;->A0(Lob/d;)Llb/k0;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v0, v4, v5}, Lmb/b;->a0(Lob/h;Lob/h;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {v0, v3}, Lmb/b;->H0(Lob/d;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {v0, v1}, Lmb/b;->C(Llb/x0;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_4

    .line 74
    .line 75
    invoke-interface {v0, v2}, Lmb/b;->C(Llb/x0;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v0, v3}, Lmb/b;->o0(Lob/d;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-interface {v0, v2}, Lmb/b;->K(Lob/d;)Llb/a0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {v0, p1}, Lmb/b;->o0(Lob/d;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-ne p0, p1, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    sget-object v0, Llb/d;->a:Llb/d;

    .line 98
    .line 99
    invoke-static {v0, p0, p1, p2}, Llb/d;->n(Llb/d;Llb/j0;Lob/d;Lob/d;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-static {v0, p0, p2, p1}, Llb/d;->n(Llb/d;Llb/j0;Lob/d;Lob/d;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-eqz p0, :cond_5

    .line 110
    .line 111
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 112
    return p0

    .line 113
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 114
    return p0
.end method

.method public static k(Lmb/b;Lob/d;Lob/d;)Lv9/q0;
    .locals 6

    .line 1
    invoke-interface {p0, p1}, Lmb/b;->H0(Lob/d;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    const/4 v3, 0x0

    .line 8
    if-ge v2, v0, :cond_6

    .line 9
    .line 10
    invoke-interface {p0, p1, v2}, Lmb/b;->h0(Lob/d;I)Llb/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-interface {p0, v4}, Lmb/b;->q0(Llb/n0;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    move-object v3, v4

    .line 21
    :cond_0
    if-eqz v3, :cond_5

    .line 22
    .line 23
    invoke-interface {p0, v3}, Lmb/b;->x0(Llb/n0;)Llb/x0;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    invoke-interface {p0, v3}, Lmb/b;->K(Lob/d;)Llb/a0;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {p0, v4}, Lmb/b;->C0(Lob/e;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-interface {p0, p2}, Lmb/b;->K(Lob/d;)Llb/a0;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {p0, v4}, Lmb/b;->C0(Lob/e;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v4, 0x0

    .line 53
    :goto_1
    invoke-virtual {v3, p2}, Llb/w;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    invoke-interface {p0, v3}, Lmb/b;->A0(Lob/d;)Llb/k0;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {p0, p2}, Lmb/b;->A0(Lob/d;)Llb/k0;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-static {p0, v3, p2}, Llb/d;->k(Lmb/b;Lob/d;Lob/d;)Lv9/q0;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    return-object v3

    .line 83
    :cond_4
    :goto_2
    invoke-interface {p0, p1}, Lmb/b;->A0(Lob/d;)Llb/k0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p0, p1, v2}, Lmb/b;->y0(Lob/h;I)Lv9/q0;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    return-object v3
.end method

.method public static l(Lmb/b;Lob/d;)Z
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lmb/b;->A0(Lob/d;)Llb/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Lmb/b;->t(Lob/h;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lmb/b;->I(Lob/d;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1}, Lmb/b;->s(Lob/d;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0, p1}, Lmb/b;->w0(Lob/d;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lmb/b;->G0(Lob/d;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public static m(Llb/j0;Lob/g;Lob/e;)Z
    .locals 11

    .line 1
    const-string v0, "capturedSubArguments"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/j0;->c:Lmb/b;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Lmb/b;->A(Lob/e;)Llb/k0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, p1}, Lmb/b;->b(Lob/g;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-interface {v0, v1}, Lmb/b;->F(Lob/h;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    if-ne v2, v3, :cond_d

    .line 22
    .line 23
    invoke-interface {v0, p2}, Lmb/b;->H0(Lob/d;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eq v2, v5, :cond_0

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    const/4 v5, 0x1

    .line 33
    if-ge v2, v3, :cond_c

    .line 34
    .line 35
    invoke-interface {v0, p2, v2}, Lmb/b;->h0(Lob/d;I)Llb/n0;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-interface {v0, v6}, Lmb/b;->x0(Llb/n0;)Llb/x0;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    if-nez v7, :cond_1

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    invoke-interface {v0, p1, v2}, Lmb/b;->s0(Lob/g;I)Llb/n0;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-interface {v0, v8}, Lmb/b;->n(Llb/n0;)Lob/i;

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v8}, Lmb/b;->x0(Llb/n0;)Llb/x0;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-static {v8}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1, v2}, Lmb/b;->y0(Lob/h;I)Lv9/q0;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-interface {v0, v9}, Lmb/b;->g0(Lv9/q0;)Lob/i;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    invoke-interface {v0, v6}, Lmb/b;->n(Llb/n0;)Lob/i;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    sget-object v10, Lob/i;->d:Lob/i;

    .line 74
    .line 75
    if-ne v9, v10, :cond_2

    .line 76
    .line 77
    move-object v9, v6

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    if-ne v6, v10, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    if-ne v9, v6, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    const/4 v9, 0x0

    .line 86
    :goto_1
    if-nez v9, :cond_5

    .line 87
    .line 88
    iget-boolean p0, p0, Llb/j0;->a:Z

    .line 89
    .line 90
    return p0

    .line 91
    :cond_5
    if-ne v9, v10, :cond_6

    .line 92
    .line 93
    invoke-static {v0, v8, v7}, Llb/d;->o(Lmb/b;Lob/d;Lob/d;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v7, v8}, Llb/d;->o(Lmb/b;Lob/d;Lob/d;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget v6, p0, Llb/j0;->f:I

    .line 100
    .line 101
    const/16 v10, 0x64

    .line 102
    .line 103
    if-gt v6, v10, :cond_b

    .line 104
    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    iput v6, p0, Llb/j0;->f:I

    .line 108
    .line 109
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    sget-object v9, Llb/d;->a:Llb/d;

    .line 114
    .line 115
    if-eqz v6, :cond_9

    .line 116
    .line 117
    if-eq v6, v5, :cond_8

    .line 118
    .line 119
    const/4 v5, 0x2

    .line 120
    if-ne v6, v5, :cond_7

    .line 121
    .line 122
    invoke-static {p0, v8, v7}, Llb/d;->h(Llb/j0;Lob/d;Lob/d;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    goto :goto_2

    .line 127
    :cond_7
    new-instance p0, Lac/p;

    .line 128
    .line 129
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_8
    invoke-static {v9, p0, v8, v7}, Llb/d;->n(Llb/d;Llb/j0;Lob/d;Lob/d;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    goto :goto_2

    .line 138
    :cond_9
    invoke-static {v9, p0, v7, v8}, Llb/d;->n(Llb/d;Llb/j0;Lob/d;Lob/d;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    :goto_2
    iget v6, p0, Llb/j0;->f:I

    .line 143
    .line 144
    add-int/lit8 v6, v6, -0x1

    .line 145
    .line 146
    iput v6, p0, Llb/j0;->f:I

    .line 147
    .line 148
    if-nez v5, :cond_a

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string p2, "Arguments depth is too high. Some related argument: "

    .line 159
    .line 160
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_c
    return v5

    .line 179
    :cond_d
    :goto_4
    return v4
.end method

.method public static n(Llb/d;Llb/j0;Lob/d;Lob/d;)Z
    .locals 0

    .line 1
    const-string p0, "subType"

    .line 2
    .line 3
    invoke-static {p2, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "superType"

    .line 7
    .line 8
    invoke-static {p3, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-ne p2, p3, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p1, p2, p3}, Llb/j0;->b(Lob/d;Lob/d;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    invoke-static {p1, p2, p3}, Llb/d;->f(Llb/j0;Lob/d;Lob/d;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public static o(Lmb/b;Lob/d;Lob/d;)V
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lmb/b;->u0(Lob/d;)Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lob/c;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast p1, Lob/c;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lmb/b;->B(Lob/c;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lmb/b;->J(Lob/c;)Lmb/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Lmb/b;->e(Lya/b;)Llb/n0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p0, v0}, Lmb/b;->q0(Llb/n0;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p0, p1}, Lmb/b;->p(Lob/c;)Lob/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lob/b;->a:Lob/b;

    .line 37
    .line 38
    if-eq p1, v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p0, p2}, Lmb/b;->A0(Lob/d;)Llb/k0;

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public static p(Llb/x0;Z)Llb/l;
    .locals 6

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Llb/l;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Llb/l;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

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
    instance-of v0, v0, Lv9/q0;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    instance-of v0, p0, Lmb/h;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    instance-of v3, v0, Ly9/p0;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    check-cast v0, Ly9/p0;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move-object v0, v2

    .line 52
    :goto_0
    const/4 v3, 0x1

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-boolean v0, v0, Ly9/p0;->l:Z

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    instance-of v0, v0, Lv9/q0;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-static {p0}, Llb/v0;->e(Llb/w;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    sget-object v0, Lmb/e;->b:Lmb/e;

    .line 80
    .line 81
    invoke-virtual {v0}, Lmb/e;->q()Llb/j0;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p0}, Llb/c;->l(Llb/w;)Llb/a0;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    sget-object v5, Llb/i0;->b:Llb/i0;

    .line 90
    .line 91
    invoke-static {v0, v4, v5}, Llb/c;->g(Llb/j0;Lob/e;Llb/c;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    xor-int/2addr v3, v0

    .line 96
    :goto_1
    if-eqz v3, :cond_6

    .line 97
    .line 98
    instance-of v0, p0, Llb/p;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    move-object v0, p0

    .line 103
    check-cast v0, Llb/p;

    .line 104
    .line 105
    iget-object v2, v0, Llb/p;->b:Llb/a0;

    .line 106
    .line 107
    invoke-virtual {v2}, Llb/w;->D0()Llb/k0;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-object v0, v0, Llb/p;->c:Llb/a0;

    .line 112
    .line 113
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v2, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_5
    new-instance v0, Llb/l;

    .line 121
    .line 122
    invoke-static {p0}, Llb/c;->l(Llb/w;)Llb/a0;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, v1}, Llb/a0;->K0(Z)Llb/a0;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {v0, p0, p1}, Llb/l;-><init>(Llb/a0;Z)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_6
    return-object v2
.end method


# virtual methods
.method public a(Lw9/h;Lw9/h;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lw9/b;

    .line 21
    .line 22
    invoke-interface {v1}, Lw9/b;->a()Lua/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lw9/b;

    .line 45
    .line 46
    invoke-interface {p2}, Lw9/b;->a()Lua/c;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method

.method public g(Llb/k0;Ljava/util/List;)Llb/q0;
    .locals 4

    .line 1
    const-string v0, "typeConstructor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "arguments"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Llb/k0;->m()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getParameters(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lv9/q0;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v2}, Lv9/q0;->d0()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Llb/k0;->m()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    const/16 v1, 0xa

    .line 45
    .line 46
    invoke-static {p1, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lv9/q0;

    .line 68
    .line 69
    invoke-interface {v1}, Lv9/h;->t()Llb/k0;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v0, p2}, Ls8/p;->G0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Llb/g0;

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-direct {p2, v0, p1}, Llb/g0;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-object p2

    .line 92
    :cond_1
    new-instance p1, Llb/s;

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    new-array v2, v1, [Lv9/q0;

    .line 96
    .line 97
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, [Lv9/q0;

    .line 102
    .line 103
    new-array v2, v1, [Llb/n0;

    .line 104
    .line 105
    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    check-cast p2, [Llb/n0;

    .line 110
    .line 111
    invoke-direct {p1, v0, p2, v1}, Llb/s;-><init>([Lv9/q0;[Llb/n0;Z)V

    .line 112
    .line 113
    .line 114
    return-object p1
.end method

.method public i(Lba/a;Llb/h0;ZIZ)Llb/a0;
    .locals 8

    .line 1
    new-instance v0, Llb/f0;

    .line 2
    .line 3
    iget-object v1, p1, Lba/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lv9/p0;

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Ljb/u;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljb/u;->E0()Llb/a0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Llb/y0;->c:Llb/y0;

    .line 15
    .line 16
    invoke-direct {v0, v2, v3}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v0, p1, v2, p4}, Llb/d;->j(Llb/n0;Lba/a;Lv9/q0;I)Llb/n0;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-virtual {p4}, Llb/n0;->b()Llb/w;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v3, "getType(...)"

    .line 29
    .line 30
    invoke-static {v0, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Llb/c;->j(Llb/w;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p4}, Llb/n0;->a()Llb/y0;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Llb/w;->getAnnotations()Lw9/h;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    invoke-static {p2}, Llb/h;->a(Llb/h0;)Lw9/h;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p0, p4, v3}, Llb/d;->a(Lw9/h;Lw9/h;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Llb/c;->j(Llb/w;)Z

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    if-eqz p4, :cond_1

    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_1
    invoke-static {v0}, Llb/c;->j(Llb/w;)Z

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    if-eqz p4, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0}, Llb/w;->C0()Llb/h0;

    .line 73
    .line 74
    .line 75
    move-result-object p4

    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_2
    invoke-virtual {v0}, Llb/w;->C0()Llb/h0;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    sget-object v3, Llb/h0;->b:Lu0/j;

    .line 83
    .line 84
    const-string v4, "other"

    .line 85
    .line 86
    invoke-static {p4, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lrb/d;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    invoke-virtual {p4}, Lrb/d;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    move-object p4, p2

    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v3, v3, Lu0/j;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v5, "<get-values>(...)"

    .line 118
    .line 119
    invoke-static {v3, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_8

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/lang/Number;

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    iget-object v6, p2, Lrb/d;->a:Lrb/a;

    .line 143
    .line 144
    invoke-virtual {v6, v5}, Lrb/a;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Llb/g;

    .line 149
    .line 150
    iget-object v7, p4, Lrb/d;->a:Lrb/a;

    .line 151
    .line 152
    invoke-virtual {v7, v5}, Lrb/a;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Llb/g;

    .line 157
    .line 158
    if-nez v6, :cond_6

    .line 159
    .line 160
    if-eqz v5, :cond_5

    .line 161
    .line 162
    if-nez v6, :cond_4

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    new-instance v7, Llb/g;

    .line 166
    .line 167
    iget-object v5, v5, Llb/g;->a:Lw9/h;

    .line 168
    .line 169
    iget-object v6, v6, Llb/g;->a:Lw9/h;

    .line 170
    .line 171
    invoke-static {v5, v6}, Lp4/o;->A(Lw9/h;Lw9/h;)Lw9/h;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-direct {v7, v5}, Llb/g;-><init>(Lw9/h;)V

    .line 176
    .line 177
    .line 178
    move-object v5, v7

    .line 179
    goto :goto_2

    .line 180
    :cond_5
    move-object v5, v2

    .line 181
    goto :goto_2

    .line 182
    :cond_6
    if-nez v5, :cond_7

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_7
    new-instance v7, Llb/g;

    .line 186
    .line 187
    iget-object v6, v6, Llb/g;->a:Lw9/h;

    .line 188
    .line 189
    iget-object v5, v5, Llb/g;->a:Lw9/h;

    .line 190
    .line 191
    invoke-static {v6, v5}, Lp4/o;->A(Lw9/h;Lw9/h;)Lw9/h;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-direct {v7, v5}, Llb/g;-><init>(Lw9/h;)V

    .line 196
    .line 197
    .line 198
    move-object v6, v7

    .line 199
    :goto_1
    move-object v5, v6

    .line 200
    :goto_2
    invoke-static {v4, v5}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_8
    invoke-static {v4}, Lu0/j;->i(Ljava/util/List;)Llb/h0;

    .line 205
    .line 206
    .line 207
    move-result-object p4

    .line 208
    :goto_3
    const/4 v3, 0x1

    .line 209
    invoke-static {v0, v2, p4, v3}, Llb/c;->q(Llb/a0;Ljava/util/List;Llb/h0;I)Llb/a0;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :goto_4
    invoke-static {v0, p3}, Llb/v0;->i(Llb/a0;Z)Llb/a0;

    .line 214
    .line 215
    .line 216
    move-result-object p4

    .line 217
    if-eqz p5, :cond_9

    .line 218
    .line 219
    check-cast v1, Ly9/f;

    .line 220
    .line 221
    iget-object p5, v1, Ly9/f;->h:Ly9/e;

    .line 222
    .line 223
    const-string v0, "getTypeConstructor(...)"

    .line 224
    .line 225
    invoke-static {p5, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p1, Lba/a;->d:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast p1, Ljava/util/List;

    .line 231
    .line 232
    sget-object v0, Leb/n;->b:Leb/n;

    .line 233
    .line 234
    invoke-static {v0, p1, p2, p5, p3}, Llb/c;->u(Leb/o;Ljava/util/List;Llb/h0;Llb/k0;Z)Llb/a0;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p4, p1}, Llb/c;->E(Llb/a0;Llb/a0;)Llb/a0;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    return-object p1

    .line 243
    :cond_9
    return-object p4
.end method

.method public j(Llb/n0;Lba/a;Lv9/q0;I)Llb/n0;
    .locals 14

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move/from16 v6, p4

    .line 4
    .line 5
    iget-object v0, v1, Lba/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lv9/p0;

    .line 8
    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    if-gt v6, v2, :cond_1f

    .line 12
    .line 13
    invoke-virtual {p1}, Llb/n0;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static/range {p3 .. p3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static/range {p3 .. p3}, Llb/v0;->j(Lv9/q0;)Llb/f0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p1}, Llb/n0;->b()Llb/w;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "getType(...)"

    .line 32
    .line 33
    invoke-static {v0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "constructor"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v3}, Llb/k0;->k()Lv9/h;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    instance-of v4, v3, Lv9/q0;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    iget-object v4, v1, Lba/a;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Llb/n0;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v3, v5

    .line 66
    :goto_0
    sget-object v4, Llb/y0;->c:Llb/y0;

    .line 67
    .line 68
    if-nez v3, :cond_d

    .line 69
    .line 70
    invoke-virtual {p1}, Llb/n0;->b()Llb/w;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Llb/w;->G0()Llb/x0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7}, Llb/c;->j(Llb/w;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_c

    .line 87
    .line 88
    sget-object v0, Lpb/a;->c:Lpb/a;

    .line 89
    .line 90
    invoke-static {v7, v0, v5}, Llb/v0;->c(Llb/w;Lf9/k;Lub/h;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v7}, Llb/w;->D0()Llb/k0;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v0}, Llb/k0;->m()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7}, Llb/w;->B0()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    instance-of v8, v3, Lv9/q0;

    .line 121
    .line 122
    if-eqz v8, :cond_3

    .line 123
    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :cond_3
    instance-of v8, v3, Lv9/p0;

    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    if-eqz v8, :cond_8

    .line 130
    .line 131
    move-object v2, v3

    .line 132
    check-cast v2, Lv9/p0;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lba/a;->B(Lv9/p0;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    new-instance p1, Llb/f0;

    .line 141
    .line 142
    check-cast v2, Ly9/m;

    .line 143
    .line 144
    invoke-virtual {v2}, Ly9/m;->getName()Lua/e;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v0, v0, Lua/e;->a:Ljava/lang/String;

    .line 149
    .line 150
    filled-new-array {v0}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sget-object v1, Lnb/k;->f:Lnb/k;

    .line 155
    .line 156
    invoke-static {v1, v0}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-direct {p1, v0, v4}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 161
    .line 162
    .line 163
    return-object p1

    .line 164
    :cond_4
    invoke-virtual {v7}, Llb/w;->B0()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    new-instance v4, Ljava/util/ArrayList;

    .line 169
    .line 170
    const/16 v8, 0xa

    .line 171
    .line 172
    invoke-static {v3, v8}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-eqz v10, :cond_6

    .line 188
    .line 189
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    add-int/lit8 v11, v9, 0x1

    .line 194
    .line 195
    if-ltz v9, :cond_5

    .line 196
    .line 197
    check-cast v10, Llb/n0;

    .line 198
    .line 199
    invoke-interface {v0}, Llb/k0;->m()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    check-cast v9, Lv9/q0;

    .line 208
    .line 209
    add-int/lit8 v12, v6, 0x1

    .line 210
    .line 211
    invoke-virtual {p0, v10, v1, v9, v12}, Llb/d;->j(Llb/n0;Lba/a;Lv9/q0;I)Llb/n0;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move v9, v11

    .line 219
    goto :goto_1

    .line 220
    :cond_5
    invoke-static {}, Lp9/x1;->L()V

    .line 221
    .line 222
    .line 223
    throw v5

    .line 224
    :cond_6
    move-object v0, v2

    .line 225
    check-cast v0, Ly9/f;

    .line 226
    .line 227
    iget-object v0, v0, Ly9/f;->h:Ly9/e;

    .line 228
    .line 229
    invoke-virtual {v0}, Ly9/e;->m()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-instance v3, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-static {v0, v8}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .line 241
    .line 242
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_7

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Lv9/q0;

    .line 257
    .line 258
    invoke-interface {v5}, Lv9/q0;->a()Lv9/q0;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_7
    invoke-static {v3, v4}, Ls8/p;->G0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v0}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    new-instance v9, Lba/a;

    .line 275
    .line 276
    const/4 v5, 0x6

    .line 277
    move-object v3, v4

    .line 278
    move-object v4, v0

    .line 279
    move-object v0, v9

    .line 280
    invoke-direct/range {v0 .. v5}, Lba/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7}, Llb/w;->C0()Llb/h0;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    invoke-virtual {v7}, Llb/w;->E0()Z

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    add-int/lit8 v12, v6, 0x1

    .line 292
    .line 293
    const/4 v13, 0x0

    .line 294
    move-object v8, p0

    .line 295
    invoke-virtual/range {v8 .. v13}, Llb/d;->i(Lba/a;Llb/h0;ZIZ)Llb/a0;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p0, v7, v1, v6}, Llb/d;->q(Llb/a0;Lba/a;I)Llb/a0;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-static {v0, v1}, Llb/c;->E(Llb/a0;Llb/a0;)Llb/a0;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    new-instance v1, Llb/f0;

    .line 308
    .line 309
    invoke-virtual {p1}, Llb/n0;->a()Llb/y0;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-direct {v1, v0, p1}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 314
    .line 315
    .line 316
    return-object v1

    .line 317
    :cond_8
    invoke-virtual {p0, v7, v1, v6}, Llb/d;->q(Llb/a0;Lba/a;I)Llb/a0;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v0}, Llb/s0;->d(Llb/w;)Llb/s0;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Llb/w;->B0()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_b

    .line 337
    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    add-int/lit8 v4, v9, 0x1

    .line 343
    .line 344
    if-ltz v9, :cond_a

    .line 345
    .line 346
    check-cast v3, Llb/n0;

    .line 347
    .line 348
    invoke-virtual {v3}, Llb/n0;->c()Z

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    if-nez v6, :cond_9

    .line 353
    .line 354
    invoke-virtual {v3}, Llb/n0;->b()Llb/w;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-static {v3, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    sget-object v6, Lpb/a;->b:Lpb/a;

    .line 362
    .line 363
    invoke-static {v3, v6, v5}, Llb/v0;->c(Llb/w;Lf9/k;Lub/h;)Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-nez v3, :cond_9

    .line 368
    .line 369
    invoke-virtual {v7}, Llb/w;->B0()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    check-cast v3, Llb/n0;

    .line 378
    .line 379
    invoke-virtual {v7}, Llb/w;->D0()Llb/k0;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-interface {v3}, Llb/k0;->m()Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    check-cast v3, Lv9/q0;

    .line 392
    .line 393
    :cond_9
    move v9, v4

    .line 394
    goto :goto_3

    .line 395
    :cond_a
    invoke-static {}, Lp9/x1;->L()V

    .line 396
    .line 397
    .line 398
    throw v5

    .line 399
    :cond_b
    new-instance v1, Llb/f0;

    .line 400
    .line 401
    invoke-virtual {p1}, Llb/n0;->a()Llb/y0;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-direct {v1, v0, p1}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 406
    .line 407
    .line 408
    return-object v1

    .line 409
    :cond_c
    :goto_4
    return-object p1

    .line 410
    :cond_d
    invoke-virtual {v3}, Llb/n0;->c()Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v1, :cond_e

    .line 415
    .line 416
    invoke-static/range {p3 .. p3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    invoke-static/range {p3 .. p3}, Llb/v0;->j(Lv9/q0;)Llb/f0;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    return-object p1

    .line 424
    :cond_e
    invoke-virtual {v3}, Llb/n0;->b()Llb/w;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v1}, Llb/w;->G0()Llb/x0;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v3}, Llb/n0;->a()Llb/y0;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    const-string v3, "getProjectionKind(...)"

    .line 437
    .line 438
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1}, Llb/n0;->a()Llb/y0;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-static {p1, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    if-ne p1, v2, :cond_f

    .line 449
    .line 450
    goto :goto_5

    .line 451
    :cond_f
    if-ne p1, v4, :cond_10

    .line 452
    .line 453
    goto :goto_5

    .line 454
    :cond_10
    if-ne v2, v4, :cond_11

    .line 455
    .line 456
    move-object v2, p1

    .line 457
    :cond_11
    :goto_5
    if-eqz p3, :cond_12

    .line 458
    .line 459
    invoke-interface/range {p3 .. p3}, Lv9/q0;->J()Llb/y0;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    if-nez p1, :cond_13

    .line 464
    .line 465
    :cond_12
    move-object p1, v4

    .line 466
    :cond_13
    if-ne p1, v2, :cond_14

    .line 467
    .line 468
    goto :goto_6

    .line 469
    :cond_14
    if-ne p1, v4, :cond_15

    .line 470
    .line 471
    goto :goto_6

    .line 472
    :cond_15
    if-ne v2, v4, :cond_16

    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_16
    :goto_6
    move-object v4, v2

    .line 476
    :goto_7
    invoke-virtual {v0}, Llb/w;->getAnnotations()Lw9/h;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    invoke-virtual {v1}, Llb/w;->getAnnotations()Lw9/h;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {p0, p1, v2}, Llb/d;->a(Lw9/h;Lw9/h;)V

    .line 485
    .line 486
    .line 487
    invoke-static {v1}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-virtual {v0}, Llb/w;->E0()Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    invoke-static {p1, v1}, Llb/v0;->i(Llb/a0;Z)Llb/a0;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    invoke-virtual {v0}, Llb/w;->C0()Llb/h0;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {p1}, Llb/c;->j(Llb/w;)Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-eqz v1, :cond_17

    .line 508
    .line 509
    goto/16 :goto_c

    .line 510
    .line 511
    :cond_17
    invoke-static {p1}, Llb/c;->j(Llb/w;)Z

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    if-eqz v1, :cond_18

    .line 516
    .line 517
    invoke-virtual {p1}, Llb/w;->C0()Llb/h0;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    goto/16 :goto_b

    .line 522
    .line 523
    :cond_18
    invoke-virtual {p1}, Llb/w;->C0()Llb/h0;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    sget-object v2, Llb/h0;->b:Lu0/j;

    .line 531
    .line 532
    const-string v3, "other"

    .line 533
    .line 534
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Lrb/d;->isEmpty()Z

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    if-eqz v3, :cond_19

    .line 542
    .line 543
    invoke-virtual {v1}, Lrb/d;->isEmpty()Z

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    if-eqz v3, :cond_19

    .line 548
    .line 549
    goto/16 :goto_b

    .line 550
    .line 551
    :cond_19
    new-instance v3, Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .line 555
    .line 556
    iget-object v2, v2, Lu0/j;->b:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 559
    .line 560
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    const-string v6, "<get-values>(...)"

    .line 565
    .line 566
    invoke-static {v2, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 574
    .line 575
    .line 576
    move-result v6

    .line 577
    if-eqz v6, :cond_1e

    .line 578
    .line 579
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    check-cast v6, Ljava/lang/Number;

    .line 584
    .line 585
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 586
    .line 587
    .line 588
    move-result v6

    .line 589
    iget-object v7, v0, Lrb/d;->a:Lrb/a;

    .line 590
    .line 591
    invoke-virtual {v7, v6}, Lrb/a;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    check-cast v7, Llb/g;

    .line 596
    .line 597
    iget-object v9, v1, Lrb/d;->a:Lrb/a;

    .line 598
    .line 599
    invoke-virtual {v9, v6}, Lrb/a;->get(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v6

    .line 603
    check-cast v6, Llb/g;

    .line 604
    .line 605
    if-nez v7, :cond_1c

    .line 606
    .line 607
    if-eqz v6, :cond_1b

    .line 608
    .line 609
    if-nez v7, :cond_1a

    .line 610
    .line 611
    goto :goto_a

    .line 612
    :cond_1a
    new-instance v9, Llb/g;

    .line 613
    .line 614
    iget-object v6, v6, Llb/g;->a:Lw9/h;

    .line 615
    .line 616
    iget-object v7, v7, Llb/g;->a:Lw9/h;

    .line 617
    .line 618
    invoke-static {v6, v7}, Lp4/o;->A(Lw9/h;Lw9/h;)Lw9/h;

    .line 619
    .line 620
    .line 621
    move-result-object v6

    .line 622
    invoke-direct {v9, v6}, Llb/g;-><init>(Lw9/h;)V

    .line 623
    .line 624
    .line 625
    move-object v6, v9

    .line 626
    goto :goto_a

    .line 627
    :cond_1b
    move-object v6, v5

    .line 628
    goto :goto_a

    .line 629
    :cond_1c
    if-nez v6, :cond_1d

    .line 630
    .line 631
    goto :goto_9

    .line 632
    :cond_1d
    new-instance v9, Llb/g;

    .line 633
    .line 634
    iget-object v7, v7, Llb/g;->a:Lw9/h;

    .line 635
    .line 636
    iget-object v6, v6, Llb/g;->a:Lw9/h;

    .line 637
    .line 638
    invoke-static {v7, v6}, Lp4/o;->A(Lw9/h;Lw9/h;)Lw9/h;

    .line 639
    .line 640
    .line 641
    move-result-object v6

    .line 642
    invoke-direct {v9, v6}, Llb/g;-><init>(Lw9/h;)V

    .line 643
    .line 644
    .line 645
    move-object v7, v9

    .line 646
    :goto_9
    move-object v6, v7

    .line 647
    :goto_a
    invoke-static {v3, v6}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    goto :goto_8

    .line 651
    :cond_1e
    invoke-static {v3}, Lu0/j;->i(Ljava/util/List;)Llb/h0;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    :goto_b
    const/4 v1, 0x1

    .line 656
    invoke-static {p1, v5, v0, v1}, Llb/c;->q(Llb/a0;Ljava/util/List;Llb/h0;I)Llb/a0;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    :goto_c
    new-instance v0, Llb/f0;

    .line 661
    .line 662
    invoke-direct {v0, p1, v4}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 663
    .line 664
    .line 665
    return-object v0

    .line 666
    :cond_1f
    new-instance p1, Ljava/lang/AssertionError;

    .line 667
    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    const-string v2, "Too deep recursion while expanding type alias "

    .line 671
    .line 672
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    check-cast v0, Ly9/m;

    .line 676
    .line 677
    invoke-virtual {v0}, Ly9/m;->getName()Lua/e;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    throw p1
.end method

.method public q(Llb/a0;Lba/a;I)Llb/a0;
    .locals 8

    .line 1
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Llb/w;->B0()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v3, 0xa

    .line 12
    .line 13
    invoke-static {v1, v3}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    add-int/lit8 v6, v3, 0x1

    .line 37
    .line 38
    if-ltz v3, :cond_1

    .line 39
    .line 40
    check-cast v4, Llb/n0;

    .line 41
    .line 42
    invoke-interface {v0}, Llb/k0;->m()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lv9/q0;

    .line 51
    .line 52
    add-int/lit8 v5, p3, 0x1

    .line 53
    .line 54
    invoke-virtual {p0, v4, p2, v3, v5}, Llb/d;->j(Llb/n0;Lba/a;Lv9/q0;I)Llb/n0;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Llb/n0;->c()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    new-instance v5, Llb/f0;

    .line 66
    .line 67
    invoke-virtual {v3}, Llb/n0;->a()Llb/y0;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v3}, Llb/n0;->b()Llb/w;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v4}, Llb/n0;->b()Llb/w;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Llb/w;->E0()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-static {v3, v4}, Llb/v0;->h(Llb/w;Z)Llb/w;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {v5, v3, v7}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 88
    .line 89
    .line 90
    move-object v3, v5

    .line 91
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move v3, v6

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lp9/x1;->L()V

    .line 97
    .line 98
    .line 99
    throw v5

    .line 100
    :cond_2
    const/4 p2, 0x2

    .line 101
    invoke-static {p1, v2, v5, p2}, Llb/c;->q(Llb/a0;Ljava/util/List;Llb/h0;I)Llb/a0;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1
.end method
