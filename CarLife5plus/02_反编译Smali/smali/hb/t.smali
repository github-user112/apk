.class public final Lhb/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lhb/k;

.field public final b:Lu0/j;


# direct methods
.method public constructor <init>(Lhb/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhb/t;->a:Lhb/k;

    .line 5
    .line 6
    new-instance v0, Lu0/j;

    .line 7
    .line 8
    iget-object p1, p1, Lhb/k;->a:Lhb/i;

    .line 9
    .line 10
    iget-object v1, p1, Lhb/i;->b:Lv9/y;

    .line 11
    .line 12
    iget-object p1, p1, Lhb/i;->l:Lba/a;

    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Lu0/j;-><init>(Lv9/y;Lba/a;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lhb/t;->b:Lu0/j;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lv9/k;)Lhb/w;
    .locals 4

    .line 1
    instance-of v0, p1, Lv9/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lhb/v;

    .line 6
    .line 7
    check-cast p1, Lv9/d0;

    .line 8
    .line 9
    check-cast p1, Ly9/c0;

    .line 10
    .line 11
    iget-object p1, p1, Ly9/c0;->e:Lua/c;

    .line 12
    .line 13
    iget-object v1, p0, Lhb/t;->a:Lhb/k;

    .line 14
    .line 15
    iget-object v2, v1, Lhb/k;->b:Lra/f;

    .line 16
    .line 17
    iget-object v3, v1, Lhb/k;->d:Lra/g;

    .line 18
    .line 19
    iget-object v1, v1, Lhb/k;->g:Ljb/k;

    .line 20
    .line 21
    invoke-direct {v0, p1, v2, v3, v1}, Lhb/v;-><init>(Lua/c;Lra/f;Lra/g;Lv9/m0;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    instance-of v0, p1, Ljb/i;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    check-cast p1, Ljb/i;

    .line 30
    .line 31
    iget-object p1, p1, Ljb/i;->v:Lhb/u;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public final b(Lva/k;II)Lw9/h;
    .locals 3

    .line 1
    sget-object v0, Lra/d;->c:Lra/b;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    sget-object p1, Lw9/g;->a:Lw9/f;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p2, Ljb/w;

    .line 17
    .line 18
    iget-object v0, p0, Lhb/t;->a:Lhb/k;

    .line 19
    .line 20
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 21
    .line 22
    iget-object v0, v0, Lhb/i;->a:Lkb/l;

    .line 23
    .line 24
    new-instance v1, Lhb/q;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, p1, p3, v2}, Lhb/q;-><init>(Lhb/t;Lva/a;II)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, v0, v1}, Ljb/w;-><init>(Lkb/l;Lf9/a;)V

    .line 31
    .line 32
    .line 33
    return-object p2
.end method

.method public final c(Lpa/i0;Z)Lw9/h;
    .locals 3

    .line 1
    sget-object v0, Lra/d;->c:Lra/b;

    .line 2
    .line 3
    iget v1, p1, Lpa/i0;->d:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Lw9/g;->a:Lw9/f;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Ljb/w;

    .line 19
    .line 20
    iget-object v1, p0, Lhb/t;->a:Lhb/k;

    .line 21
    .line 22
    iget-object v1, v1, Lhb/k;->a:Lhb/i;

    .line 23
    .line 24
    iget-object v1, v1, Lhb/i;->a:Lkb/l;

    .line 25
    .line 26
    new-instance v2, Lhb/r;

    .line 27
    .line 28
    invoke-direct {v2, p0, p2, p1}, Lhb/r;-><init>(Lhb/t;ZLpa/i0;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Ljb/w;-><init>(Lkb/l;Lf9/a;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final d(Lpa/n;Z)Ljb/c;
    .locals 14

    .line 1
    move-object v6, p1

    .line 2
    iget-object v12, p0, Lhb/t;->a:Lhb/k;

    .line 3
    .line 4
    iget-object v0, v12, Lhb/k;->c:Lv9/k;

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lv9/e;

    .line 13
    .line 14
    new-instance v0, Ljb/c;

    .line 15
    .line 16
    iget v2, v6, Lpa/n;->d:I

    .line 17
    .line 18
    const/4 v13, 0x1

    .line 19
    invoke-virtual {p0, p1, v2, v13}, Lhb/t;->b(Lva/k;II)Lw9/h;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v7, v12, Lhb/k;->b:Lra/f;

    .line 24
    .line 25
    iget-object v8, v12, Lhb/k;->d:Lra/g;

    .line 26
    .line 27
    iget-object v9, v12, Lhb/k;->e:Lra/h;

    .line 28
    .line 29
    iget-object v10, v12, Lhb/k;->g:Ljb/k;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v11, 0x0

    .line 34
    move/from16 v4, p2

    .line 35
    .line 36
    invoke-direct/range {v0 .. v11}, Ljb/c;-><init>(Lv9/e;Lv9/j;Lw9/h;ZILpa/n;Lra/f;Lra/g;Lra/h;Ljb/k;Lv9/m0;)V

    .line 37
    .line 38
    .line 39
    sget-object v2, Ls8/w;->a:Ls8/w;

    .line 40
    .line 41
    invoke-static {v12, v0, v2}, Lhb/k;->b(Lhb/k;Ly9/n;Ljava/util/List;)Lhb/k;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v2, v2, Lhb/k;->i:Lhb/t;

    .line 46
    .line 47
    iget-object v3, v6, Lpa/n;->e:Ljava/util/List;

    .line 48
    .line 49
    const-string v4, "getValueParameterList(...)"

    .line 50
    .line 51
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3, p1, v13}, Lhb/t;->g(Ljava/util/List;Lva/k;I)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lra/d;->d:Lra/c;

    .line 59
    .line 60
    iget v4, v6, Lpa/n;->d:I

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Lra/c;->i(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lpa/g1;

    .line 67
    .line 68
    invoke-static {v3}, Lm9/e0;->X(Lpa/g1;)Lea/o;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v2, v3}, Ly9/i;->Q0(Ljava/util/List;Lea/o;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1}, Lv9/e;->n()Llb/a0;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Ly9/u;->M0(Llb/a0;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v1}, Lv9/w;->H()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput-boolean v1, v0, Ly9/u;->r:Z

    .line 87
    .line 88
    sget-object v1, Lra/d;->o:Lra/b;

    .line 89
    .line 90
    iget v2, v6, Lpa/n;->d:I

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    xor-int/2addr v1, v13

    .line 101
    iput-boolean v1, v0, Ly9/u;->v:Z

    .line 102
    .line 103
    return-object v0
.end method

.method public final e(Lpa/a0;)Ljb/t;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v13, v0, Lhb/t;->a:Lhb/k;

    .line 6
    .line 7
    iget-object v1, v13, Lhb/k;->b:Lra/f;

    .line 8
    .line 9
    iget-object v9, v13, Lhb/k;->d:Lra/g;

    .line 10
    .line 11
    const-string v2, "proto"

    .line 12
    .line 13
    invoke-static {v7, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v2, v7, Lpa/a0;->c:I

    .line 17
    .line 18
    const/4 v14, 0x1

    .line 19
    and-int/2addr v2, v14

    .line 20
    if-ne v2, v14, :cond_0

    .line 21
    .line 22
    iget v2, v7, Lpa/a0;->d:I

    .line 23
    .line 24
    :goto_0
    move v15, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget v2, v7, Lpa/a0;->e:I

    .line 27
    .line 28
    and-int/lit8 v3, v2, 0x3f

    .line 29
    .line 30
    shr-int/lit8 v2, v2, 0x8

    .line 31
    .line 32
    shl-int/lit8 v2, v2, 0x6

    .line 33
    .line 34
    add-int/2addr v2, v3

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {v0, v7, v15, v14}, Lhb/t;->b(Lva/k;II)Lw9/h;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget v2, v7, Lpa/a0;->c:I

    .line 41
    .line 42
    and-int/lit8 v3, v2, 0x20

    .line 43
    .line 44
    sget-object v5, Lw9/g;->a:Lw9/f;

    .line 45
    .line 46
    const/16 v6, 0x20

    .line 47
    .line 48
    if-ne v3, v6, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    const/16 v3, 0x40

    .line 52
    .line 53
    and-int/2addr v2, v3

    .line 54
    if-ne v2, v3, :cond_2

    .line 55
    .line 56
    :goto_2
    new-instance v2, Ljb/a;

    .line 57
    .line 58
    iget-object v3, v13, Lhb/k;->a:Lhb/i;

    .line 59
    .line 60
    iget-object v3, v3, Lhb/i;->a:Lkb/l;

    .line 61
    .line 62
    new-instance v6, Lhb/q;

    .line 63
    .line 64
    const/4 v8, 0x1

    .line 65
    invoke-direct {v6, v0, v7, v14, v8}, Lhb/q;-><init>(Lhb/t;Lva/a;II)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3, v6}, Ljb/a;-><init>(Lkb/o;Lf9/a;)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    move-object v2, v5

    .line 73
    :goto_3
    iget-object v3, v13, Lhb/k;->c:Lv9/k;

    .line 74
    .line 75
    invoke-static {v3}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget v6, v7, Lpa/a0;->f:I

    .line 80
    .line 81
    invoke-static {v1, v6}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v3, v6}, Lua/c;->a(Lua/e;)Lua/c;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    sget-object v6, Lhb/z;->a:Lua/c;

    .line 90
    .line 91
    invoke-virtual {v3, v6}, Lua/c;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    sget-object v3, Lra/h;->a:Lra/h;

    .line 98
    .line 99
    :goto_4
    move-object v10, v3

    .line 100
    goto :goto_5

    .line 101
    :cond_3
    iget-object v3, v13, Lhb/k;->e:Lra/h;

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :goto_5
    new-instance v16, Ljb/t;

    .line 105
    .line 106
    move-object v3, v2

    .line 107
    iget-object v2, v13, Lhb/k;->c:Lv9/k;

    .line 108
    .line 109
    iget v6, v7, Lpa/a0;->f:I

    .line 110
    .line 111
    invoke-static {v1, v6}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget-object v6, Lra/d;->p:Lra/c;

    .line 116
    .line 117
    invoke-virtual {v6, v15}, Lra/c;->i(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Lpa/b0;

    .line 122
    .line 123
    invoke-static {v6}, Lm9/e0;->s0(Lpa/b0;)I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    iget-object v8, v13, Lhb/k;->b:Lra/f;

    .line 128
    .line 129
    iget-object v11, v13, Lhb/k;->g:Ljb/k;

    .line 130
    .line 131
    move-object v12, v3

    .line 132
    const/4 v3, 0x0

    .line 133
    move-object/from16 v17, v12

    .line 134
    .line 135
    const/4 v12, 0x0

    .line 136
    move-object v0, v5

    .line 137
    move-object/from16 v14, v17

    .line 138
    .line 139
    move-object v5, v1

    .line 140
    move-object/from16 v1, v16

    .line 141
    .line 142
    invoke-direct/range {v1 .. v12}, Ljb/t;-><init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILpa/a0;Lra/f;Lra/g;Lra/h;Ljb/k;Lv9/m0;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v7, Lpa/a0;->i:Ljava/util/List;

    .line 146
    .line 147
    const-string v3, "getTypeParameterList(...)"

    .line 148
    .line 149
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v13, v1, v2}, Lhb/k;->b(Lhb/k;Ly9/n;Ljava/util/List;)Lhb/k;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget-object v3, v2, Lhb/k;->h:Lp/h3;

    .line 157
    .line 158
    invoke-static {v7, v9}, Lp4/e;->v(Lpa/a0;Lra/g;)Lpa/s0;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    const/4 v5, 0x0

    .line 163
    if-eqz v4, :cond_4

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_4

    .line 170
    .line 171
    invoke-static {v1, v4, v14}, Lxa/k;->k(Lv9/b;Llb/w;Lw9/h;)Ly9/v;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    move-object/from16 v17, v4

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_4
    move-object/from16 v17, v5

    .line 179
    .line 180
    :goto_6
    iget-object v4, v13, Lhb/k;->c:Lv9/k;

    .line 181
    .line 182
    instance-of v6, v4, Lv9/e;

    .line 183
    .line 184
    if-eqz v6, :cond_5

    .line 185
    .line 186
    check-cast v4, Lv9/e;

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_5
    move-object v4, v5

    .line 190
    :goto_7
    if-eqz v4, :cond_6

    .line 191
    .line 192
    invoke-interface {v4}, Lv9/e;->A0()Ly9/v;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    move-object/from16 v18, v4

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_6
    move-object/from16 v18, v5

    .line 200
    .line 201
    :goto_8
    iget-object v4, v7, Lpa/a0;->l:Ljava/util/List;

    .line 202
    .line 203
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-nez v6, :cond_7

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_7
    move-object v4, v5

    .line 211
    :goto_9
    if-nez v4, :cond_9

    .line 212
    .line 213
    iget-object v4, v7, Lpa/a0;->m:Ljava/util/List;

    .line 214
    .line 215
    const-string v6, "getContextReceiverTypeIdList(...)"

    .line 216
    .line 217
    invoke-static {v4, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v6, Ljava/util/ArrayList;

    .line 221
    .line 222
    const/16 v8, 0xa

    .line 223
    .line 224
    invoke-static {v4, v8}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-eqz v8, :cond_8

    .line 240
    .line 241
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    check-cast v8, Ljava/lang/Integer;

    .line 246
    .line 247
    invoke-static {v8}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    invoke-virtual {v9, v8}, Lra/g;->a(I)Lpa/s0;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_a

    .line 262
    :cond_8
    move-object v4, v6

    .line 263
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    const/4 v8, 0x0

    .line 273
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    if-eqz v10, :cond_c

    .line 278
    .line 279
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    add-int/lit8 v11, v8, 0x1

    .line 284
    .line 285
    if-ltz v8, :cond_b

    .line 286
    .line 287
    check-cast v10, Lpa/s0;

    .line 288
    .line 289
    invoke-virtual {v3, v10}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    invoke-static {v1, v10, v5, v0, v8}, Lxa/k;->e(Lv9/b;Llb/w;Lua/e;Lw9/h;I)Ly9/v;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    if-eqz v8, :cond_a

    .line 298
    .line 299
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    :cond_a
    move v8, v11

    .line 303
    goto :goto_b

    .line 304
    :cond_b
    invoke-static {}, Lp9/x1;->L()V

    .line 305
    .line 306
    .line 307
    throw v5

    .line 308
    :cond_c
    invoke-virtual {v3}, Lp/h3;->g()Ljava/util/List;

    .line 309
    .line 310
    .line 311
    move-result-object v20

    .line 312
    iget-object v0, v2, Lhb/k;->i:Lhb/t;

    .line 313
    .line 314
    iget-object v2, v7, Lpa/a0;->o:Ljava/util/List;

    .line 315
    .line 316
    const-string v4, "getValueParameterList(...)"

    .line 317
    .line 318
    invoke-static {v2, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const/4 v4, 0x1

    .line 322
    invoke-virtual {v0, v2, v7, v4}, Lhb/t;->g(Ljava/util/List;Lva/k;I)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v21

    .line 326
    invoke-static {v7, v9}, Lp4/e;->w(Lpa/a0;Lra/g;)Lpa/s0;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v3, v0}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 331
    .line 332
    .line 333
    move-result-object v22

    .line 334
    sget-object v0, Lra/d;->e:Lra/c;

    .line 335
    .line 336
    invoke-virtual {v0, v15}, Lra/c;->i(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Lpa/c0;

    .line 341
    .line 342
    invoke-static {v0}, Lhb/j;->e(Lpa/c0;)Lv9/x;

    .line 343
    .line 344
    .line 345
    move-result-object v23

    .line 346
    sget-object v0, Lra/d;->d:Lra/c;

    .line 347
    .line 348
    invoke-virtual {v0, v15}, Lra/c;->i(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Lpa/g1;

    .line 353
    .line 354
    invoke-static {v0}, Lm9/e0;->X(Lpa/g1;)Lea/o;

    .line 355
    .line 356
    .line 357
    move-result-object v24

    .line 358
    sget-object v25, Ls8/x;->a:Ls8/x;

    .line 359
    .line 360
    move-object/from16 v16, v1

    .line 361
    .line 362
    move-object/from16 v19, v6

    .line 363
    .line 364
    invoke-virtual/range {v16 .. v25}, Ly9/l0;->Q0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;Ljava/util/Map;)Ly9/l0;

    .line 365
    .line 366
    .line 367
    sget-object v0, Lra/d;->q:Lra/b;

    .line 368
    .line 369
    invoke-virtual {v0, v15}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    iput-boolean v0, v1, Ly9/u;->m:Z

    .line 378
    .line 379
    sget-object v0, Lra/d;->r:Lra/b;

    .line 380
    .line 381
    invoke-virtual {v0, v15}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    iput-boolean v0, v1, Ly9/u;->n:Z

    .line 390
    .line 391
    sget-object v0, Lra/d;->u:Lra/b;

    .line 392
    .line 393
    invoke-virtual {v0, v15}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    iput-boolean v0, v1, Ly9/u;->o:Z

    .line 402
    .line 403
    sget-object v0, Lra/d;->s:Lra/b;

    .line 404
    .line 405
    invoke-virtual {v0, v15}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    iput-boolean v0, v1, Ly9/u;->p:Z

    .line 414
    .line 415
    sget-object v0, Lra/d;->t:Lra/b;

    .line 416
    .line 417
    invoke-virtual {v0, v15}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    iput-boolean v0, v1, Ly9/u;->q:Z

    .line 426
    .line 427
    sget-object v0, Lra/d;->v:Lra/b;

    .line 428
    .line 429
    invoke-virtual {v0, v15}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    iput-boolean v0, v1, Ly9/u;->u:Z

    .line 438
    .line 439
    sget-object v0, Lra/d;->w:Lra/b;

    .line 440
    .line 441
    invoke-virtual {v0, v15}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    iput-boolean v0, v1, Ly9/u;->r:Z

    .line 450
    .line 451
    sget-object v0, Lra/d;->x:Lra/b;

    .line 452
    .line 453
    invoke-virtual {v0, v15}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    const/16 v26, 0x1

    .line 462
    .line 463
    xor-int/lit8 v0, v0, 0x1

    .line 464
    .line 465
    iput-boolean v0, v1, Ly9/u;->v:Z

    .line 466
    .line 467
    iget-object v0, v13, Lhb/k;->a:Lhb/i;

    .line 468
    .line 469
    iget-object v0, v0, Lhb/i;->m:Lhb/j;

    .line 470
    .line 471
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    return-object v1
.end method

.method public final f(Lpa/i0;)Ljb/s;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    iget-object v1, v0, Lhb/t;->a:Lhb/k;

    .line 6
    .line 7
    iget-object v2, v1, Lhb/k;->d:Lra/g;

    .line 8
    .line 9
    const-string v3, "proto"

    .line 10
    .line 11
    invoke-static {v15, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v3, v15, Lpa/i0;->c:I

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    and-int/2addr v3, v4

    .line 18
    const/16 v20, 0x6

    .line 19
    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    iget v3, v15, Lpa/i0;->d:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v3, v15, Lpa/i0;->e:I

    .line 26
    .line 27
    and-int/lit8 v5, v3, 0x3f

    .line 28
    .line 29
    shr-int/lit8 v3, v3, 0x8

    .line 30
    .line 31
    shl-int/lit8 v3, v3, 0x6

    .line 32
    .line 33
    add-int/2addr v3, v5

    .line 34
    :goto_0
    new-instance v6, Ljb/s;

    .line 35
    .line 36
    move-object/from16 v17, v2

    .line 37
    .line 38
    iget-object v2, v1, Lhb/k;->c:Lv9/k;

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    invoke-virtual {v0, v15, v3, v5}, Lhb/t;->b(Lva/k;II)Lw9/h;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v7, Lra/d;->e:Lra/c;

    .line 46
    .line 47
    invoke-virtual {v7, v3}, Lra/c;->i(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Lpa/c0;

    .line 52
    .line 53
    invoke-static {v7}, Lhb/j;->e(Lpa/c0;)Lv9/x;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    sget-object v8, Lra/d;->d:Lra/c;

    .line 58
    .line 59
    invoke-virtual {v8, v3}, Lra/c;->i(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Lpa/g1;

    .line 64
    .line 65
    invoke-static {v8}, Lm9/e0;->X(Lpa/g1;)Lea/o;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    sget-object v9, Lra/d;->y:Lra/b;

    .line 70
    .line 71
    invoke-virtual {v9, v3}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    iget-object v10, v1, Lhb/k;->b:Lra/f;

    .line 80
    .line 81
    iget v11, v15, Lpa/i0;->f:I

    .line 82
    .line 83
    invoke-static {v10, v11}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    sget-object v11, Lra/d;->p:Lra/c;

    .line 88
    .line 89
    invoke-virtual {v11, v3}, Lra/c;->i(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    check-cast v11, Lpa/b0;

    .line 94
    .line 95
    invoke-static {v11}, Lm9/e0;->s0(Lpa/b0;)I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    sget-object v12, Lra/d;->C:Lra/b;

    .line 100
    .line 101
    invoke-virtual {v12, v3}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    sget-object v13, Lra/d;->B:Lra/b;

    .line 110
    .line 111
    invoke-virtual {v13, v3}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    sget-object v14, Lra/d;->E:Lra/b;

    .line 120
    .line 121
    invoke-virtual {v14, v3}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    sget-object v4, Lra/d;->F:Lra/b;

    .line 130
    .line 131
    invoke-virtual {v4, v3}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    move-object/from16 v18, v2

    .line 140
    .line 141
    sget-object v2, Lra/d;->G:Lra/b;

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    move/from16 v19, v2

    .line 152
    .line 153
    iget-object v2, v1, Lhb/k;->b:Lra/f;

    .line 154
    .line 155
    move-object/from16 v21, v2

    .line 156
    .line 157
    iget-object v2, v1, Lhb/k;->e:Lra/h;

    .line 158
    .line 159
    move-object/from16 v22, v2

    .line 160
    .line 161
    iget-object v2, v1, Lhb/k;->g:Ljb/k;

    .line 162
    .line 163
    move/from16 v23, v3

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    move v0, v13

    .line 167
    move v13, v4

    .line 168
    move-object v4, v5

    .line 169
    move-object v5, v7

    .line 170
    move v7, v9

    .line 171
    move v9, v11

    .line 172
    move v11, v0

    .line 173
    move-object v0, v1

    .line 174
    move-object v1, v6

    .line 175
    move-object v6, v8

    .line 176
    move-object v8, v10

    .line 177
    move v10, v12

    .line 178
    move v12, v14

    .line 179
    move/from16 v14, v19

    .line 180
    .line 181
    move-object/from16 v16, v21

    .line 182
    .line 183
    move-object/from16 v19, v2

    .line 184
    .line 185
    move-object/from16 v2, v18

    .line 186
    .line 187
    move-object/from16 v18, v22

    .line 188
    .line 189
    invoke-direct/range {v1 .. v19}, Ljb/s;-><init>(Lv9/k;Lv9/k0;Lw9/h;Lv9/x;Lea/o;ZLua/e;IZZZZZLpa/i0;Lra/f;Lra/g;Lra/h;Ljb/k;)V

    .line 190
    .line 191
    .line 192
    move-object v6, v1

    .line 193
    move-object v1, v15

    .line 194
    move-object/from16 v2, v17

    .line 195
    .line 196
    iget-object v3, v1, Lpa/i0;->i:Ljava/util/List;

    .line 197
    .line 198
    const-string v4, "getTypeParameterList(...)"

    .line 199
    .line 200
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v6, v3}, Lhb/k;->b(Lhb/k;Ly9/n;Ljava/util/List;)Lhb/k;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    iget-object v4, v3, Lhb/k;->h:Lp/h3;

    .line 208
    .line 209
    sget-object v5, Lra/d;->z:Lra/b;

    .line 210
    .line 211
    move/from16 v11, v23

    .line 212
    .line 213
    invoke-virtual {v5, v11}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    const/16 v5, 0x40

    .line 222
    .line 223
    const/16 v7, 0x20

    .line 224
    .line 225
    sget-object v8, Lw9/g;->a:Lw9/f;

    .line 226
    .line 227
    const/4 v13, 0x3

    .line 228
    if-eqz v12, :cond_2

    .line 229
    .line 230
    iget v9, v1, Lpa/i0;->c:I

    .line 231
    .line 232
    and-int/lit8 v10, v9, 0x20

    .line 233
    .line 234
    if-ne v10, v7, :cond_1

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_1
    and-int/2addr v9, v5

    .line 238
    if-ne v9, v5, :cond_2

    .line 239
    .line 240
    :goto_1
    new-instance v9, Ljb/a;

    .line 241
    .line 242
    iget-object v10, v0, Lhb/k;->a:Lhb/i;

    .line 243
    .line 244
    iget-object v10, v10, Lhb/i;->a:Lkb/l;

    .line 245
    .line 246
    new-instance v14, Lhb/q;

    .line 247
    .line 248
    const/4 v15, 0x1

    .line 249
    const/16 v16, 0x40

    .line 250
    .line 251
    move-object/from16 v5, p0

    .line 252
    .line 253
    invoke-direct {v14, v5, v1, v13, v15}, Lhb/q;-><init>(Lhb/t;Lva/a;II)V

    .line 254
    .line 255
    .line 256
    invoke-direct {v9, v10, v14}, Ljb/a;-><init>(Lkb/o;Lf9/a;)V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_2
    const/16 v16, 0x40

    .line 261
    .line 262
    move-object/from16 v5, p0

    .line 263
    .line 264
    move-object v9, v8

    .line 265
    :goto_2
    invoke-static {v1, v2}, Lp4/e;->x(Lpa/i0;Lra/g;)Lpa/s0;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-virtual {v4, v10}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    invoke-virtual {v4}, Lp/h3;->g()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    iget-object v15, v0, Lhb/k;->c:Lv9/k;

    .line 278
    .line 279
    instance-of v13, v15, Lv9/e;

    .line 280
    .line 281
    move-object/from16 v18, v14

    .line 282
    .line 283
    if-eqz v13, :cond_3

    .line 284
    .line 285
    check-cast v15, Lv9/e;

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_3
    const/4 v15, 0x0

    .line 289
    :goto_3
    if-eqz v15, :cond_4

    .line 290
    .line 291
    invoke-interface {v15}, Lv9/e;->A0()Ly9/v;

    .line 292
    .line 293
    .line 294
    move-result-object v13

    .line 295
    goto :goto_4

    .line 296
    :cond_4
    const/4 v13, 0x0

    .line 297
    :goto_4
    iget v15, v1, Lpa/i0;->c:I

    .line 298
    .line 299
    and-int/lit8 v14, v15, 0x20

    .line 300
    .line 301
    if-ne v14, v7, :cond_5

    .line 302
    .line 303
    iget-object v7, v1, Lpa/i0;->j:Lpa/s0;

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_5
    and-int/lit8 v7, v15, 0x40

    .line 307
    .line 308
    const/16 v14, 0x40

    .line 309
    .line 310
    if-ne v7, v14, :cond_6

    .line 311
    .line 312
    iget v7, v1, Lpa/i0;->k:I

    .line 313
    .line 314
    invoke-virtual {v2, v7}, Lra/g;->a(I)Lpa/s0;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    goto :goto_5

    .line 319
    :cond_6
    const/4 v7, 0x0

    .line 320
    :goto_5
    if-eqz v7, :cond_7

    .line 321
    .line 322
    invoke-virtual {v4, v7}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    if-eqz v7, :cond_7

    .line 327
    .line 328
    invoke-static {v6, v7, v9}, Lxa/k;->k(Lv9/b;Llb/w;Lw9/h;)Ly9/v;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    move-object v9, v7

    .line 333
    goto :goto_6

    .line 334
    :cond_7
    const/4 v9, 0x0

    .line 335
    :goto_6
    iget-object v7, v1, Lpa/i0;->l:Ljava/util/List;

    .line 336
    .line 337
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    if-nez v14, :cond_8

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_8
    const/4 v7, 0x0

    .line 345
    :goto_7
    const/16 v14, 0xa

    .line 346
    .line 347
    if-nez v7, :cond_a

    .line 348
    .line 349
    iget-object v7, v1, Lpa/i0;->m:Ljava/util/List;

    .line 350
    .line 351
    const-string v15, "getContextReceiverTypeIdList(...)"

    .line 352
    .line 353
    invoke-static {v7, v15}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    new-instance v15, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-static {v7, v14}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .line 364
    .line 365
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    if-eqz v7, :cond_9

    .line 374
    .line 375
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    check-cast v7, Ljava/lang/Integer;

    .line 380
    .line 381
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    invoke-virtual {v2, v7}, Lra/g;->a(I)Lpa/s0;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    goto :goto_8

    .line 396
    :cond_9
    move-object v7, v15

    .line 397
    :cond_a
    move-object v2, v10

    .line 398
    new-instance v10, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-static {v7, v14}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    .line 406
    .line 407
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    const/4 v7, 0x0

    .line 412
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v16

    .line 416
    if-eqz v16, :cond_c

    .line 417
    .line 418
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v16

    .line 422
    add-int/lit8 v21, v7, 0x1

    .line 423
    .line 424
    if-ltz v7, :cond_b

    .line 425
    .line 426
    const/16 v22, 0xa

    .line 427
    .line 428
    move-object/from16 v14, v16

    .line 429
    .line 430
    check-cast v14, Lpa/s0;

    .line 431
    .line 432
    invoke-virtual {v4, v14}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 433
    .line 434
    .line 435
    move-result-object v14

    .line 436
    const/4 v15, 0x0

    .line 437
    invoke-static {v6, v14, v15, v8, v7}, Lxa/k;->e(Lv9/b;Llb/w;Lua/e;Lw9/h;I)Ly9/v;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move/from16 v7, v21

    .line 445
    .line 446
    const/16 v14, 0xa

    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_b
    const/4 v15, 0x0

    .line 450
    invoke-static {}, Lp9/x1;->L()V

    .line 451
    .line 452
    .line 453
    throw v15

    .line 454
    :cond_c
    move-object v5, v6

    .line 455
    move-object v8, v13

    .line 456
    move-object/from16 v7, v18

    .line 457
    .line 458
    const/4 v15, 0x0

    .line 459
    const/16 v22, 0xa

    .line 460
    .line 461
    move-object v6, v2

    .line 462
    move-object/from16 v2, p0

    .line 463
    .line 464
    invoke-virtual/range {v5 .. v10}, Ly9/i0;->J0(Llb/w;Ljava/util/List;Ly9/v;Ly9/v;Ljava/util/List;)V

    .line 465
    .line 466
    .line 467
    move-object v6, v5

    .line 468
    sget-object v4, Lra/d;->c:Lra/b;

    .line 469
    .line 470
    invoke-virtual {v4, v11}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    sget-object v7, Lra/d;->d:Lra/c;

    .line 479
    .line 480
    invoke-virtual {v7, v11}, Lra/c;->i(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    check-cast v8, Lpa/g1;

    .line 485
    .line 486
    sget-object v9, Lra/d;->e:Lra/c;

    .line 487
    .line 488
    invoke-virtual {v9, v11}, Lra/c;->i(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v10

    .line 492
    check-cast v10, Lpa/c0;

    .line 493
    .line 494
    if-eqz v8, :cond_1a

    .line 495
    .line 496
    if-eqz v10, :cond_19

    .line 497
    .line 498
    if-eqz v5, :cond_d

    .line 499
    .line 500
    iget v4, v4, Lg1/j0;->b:I

    .line 501
    .line 502
    const/16 v24, 0x1

    .line 503
    .line 504
    shl-int v4, v24, v4

    .line 505
    .line 506
    goto :goto_a

    .line 507
    :cond_d
    const/16 v24, 0x1

    .line 508
    .line 509
    const/4 v4, 0x0

    .line 510
    :goto_a
    invoke-interface {v10}, Lva/o;->getNumber()I

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    iget v10, v9, Lg1/j0;->b:I

    .line 515
    .line 516
    shl-int/2addr v5, v10

    .line 517
    or-int/2addr v4, v5

    .line 518
    invoke-interface {v8}, Lva/o;->getNumber()I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    iget v8, v7, Lg1/j0;->b:I

    .line 523
    .line 524
    shl-int/2addr v5, v8

    .line 525
    or-int/2addr v4, v5

    .line 526
    sget-object v5, Lra/d;->K:Lra/b;

    .line 527
    .line 528
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    sget-object v8, Lra/d;->L:Lra/b;

    .line 532
    .line 533
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    sget-object v10, Lra/d;->M:Lra/b;

    .line 537
    .line 538
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    move-object/from16 v19, v15

    .line 542
    .line 543
    sget-object v15, Lv9/m0;->e0:Lv9/n0;

    .line 544
    .line 545
    if-eqz v12, :cond_10

    .line 546
    .line 547
    iget v12, v1, Lpa/i0;->c:I

    .line 548
    .line 549
    const/16 v13, 0x100

    .line 550
    .line 551
    and-int/2addr v12, v13

    .line 552
    if-ne v12, v13, :cond_e

    .line 553
    .line 554
    iget v12, v1, Lpa/i0;->p:I

    .line 555
    .line 556
    goto :goto_b

    .line 557
    :cond_e
    move v12, v4

    .line 558
    :goto_b
    invoke-virtual {v5, v12}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 559
    .line 560
    .line 561
    move-result-object v13

    .line 562
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 563
    .line 564
    .line 565
    move-result v13

    .line 566
    invoke-virtual {v8, v12}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 567
    .line 568
    .line 569
    move-result-object v14

    .line 570
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 571
    .line 572
    .line 573
    move-result v14

    .line 574
    invoke-virtual {v10, v12}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 575
    .line 576
    .line 577
    move-result-object v18

    .line 578
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    .line 579
    .line 580
    .line 581
    move-result v18

    .line 582
    move/from16 v21, v4

    .line 583
    .line 584
    const/4 v4, 0x3

    .line 585
    invoke-virtual {v2, v1, v12, v4}, Lhb/t;->b(Lva/k;II)Lw9/h;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    if-eqz v13, :cond_f

    .line 590
    .line 591
    move-object/from16 v17, v5

    .line 592
    .line 593
    new-instance v5, Ly9/j0;

    .line 594
    .line 595
    invoke-virtual {v9, v12}, Lra/c;->i(I)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v22

    .line 599
    check-cast v22, Lpa/c0;

    .line 600
    .line 601
    invoke-static/range {v22 .. v22}, Lhb/j;->e(Lpa/c0;)Lv9/x;

    .line 602
    .line 603
    .line 604
    move-result-object v22

    .line 605
    invoke-virtual {v7, v12}, Lra/c;->i(I)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v12

    .line 609
    check-cast v12, Lpa/g1;

    .line 610
    .line 611
    invoke-static {v12}, Lm9/e0;->X(Lpa/g1;)Lea/o;

    .line 612
    .line 613
    .line 614
    move-result-object v12

    .line 615
    xor-int/lit8 v13, v13, 0x1

    .line 616
    .line 617
    move-object/from16 v23, v10

    .line 618
    .line 619
    move v10, v13

    .line 620
    invoke-virtual {v6}, Ly9/i0;->f()I

    .line 621
    .line 622
    .line 623
    move-result v13

    .line 624
    move/from16 v25, v11

    .line 625
    .line 626
    move v11, v14

    .line 627
    const/4 v14, 0x0

    .line 628
    move-object/from16 v16, v0

    .line 629
    .line 630
    move-object/from16 v0, v17

    .line 631
    .line 632
    move-object/from16 v2, v23

    .line 633
    .line 634
    move-object/from16 v17, v3

    .line 635
    .line 636
    move-object v3, v8

    .line 637
    move-object/from16 v8, v22

    .line 638
    .line 639
    move-object/from16 v22, v9

    .line 640
    .line 641
    move-object v9, v12

    .line 642
    move/from16 v12, v18

    .line 643
    .line 644
    move-object/from16 v18, v7

    .line 645
    .line 646
    move-object v7, v4

    .line 647
    move/from16 v4, v25

    .line 648
    .line 649
    invoke-direct/range {v5 .. v15}, Ly9/j0;-><init>(Lv9/k0;Lw9/h;Lv9/x;Lea/o;ZZZILy9/j0;Lv9/m0;)V

    .line 650
    .line 651
    .line 652
    :goto_c
    move-object v14, v5

    .line 653
    goto :goto_d

    .line 654
    :cond_f
    move-object/from16 v16, v0

    .line 655
    .line 656
    move-object/from16 v17, v3

    .line 657
    .line 658
    move-object v0, v5

    .line 659
    move-object/from16 v18, v7

    .line 660
    .line 661
    move-object v3, v8

    .line 662
    move-object/from16 v22, v9

    .line 663
    .line 664
    move-object v2, v10

    .line 665
    move-object v7, v4

    .line 666
    move v4, v11

    .line 667
    invoke-static {v6, v7}, Lxa/k;->f(Lv9/k0;Lw9/h;)Ly9/j0;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    goto :goto_c

    .line 672
    :goto_d
    invoke-virtual {v6}, Ly9/i0;->p()Llb/w;

    .line 673
    .line 674
    .line 675
    move-result-object v5

    .line 676
    invoke-virtual {v14, v5}, Ly9/j0;->F0(Llb/w;)V

    .line 677
    .line 678
    .line 679
    goto :goto_e

    .line 680
    :cond_10
    move-object/from16 v16, v0

    .line 681
    .line 682
    move-object/from16 v17, v3

    .line 683
    .line 684
    move/from16 v21, v4

    .line 685
    .line 686
    move-object v0, v5

    .line 687
    move-object/from16 v18, v7

    .line 688
    .line 689
    move-object v3, v8

    .line 690
    move-object/from16 v22, v9

    .line 691
    .line 692
    move-object v2, v10

    .line 693
    move v4, v11

    .line 694
    move-object/from16 v14, v19

    .line 695
    .line 696
    :goto_e
    sget-object v5, Lra/d;->A:Lra/b;

    .line 697
    .line 698
    invoke-virtual {v5, v4}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 703
    .line 704
    .line 705
    move-result v5

    .line 706
    if-eqz v5, :cond_14

    .line 707
    .line 708
    iget v5, v1, Lpa/i0;->c:I

    .line 709
    .line 710
    const/16 v7, 0x200

    .line 711
    .line 712
    and-int/2addr v5, v7

    .line 713
    if-ne v5, v7, :cond_11

    .line 714
    .line 715
    iget v5, v1, Lpa/i0;->q:I

    .line 716
    .line 717
    goto :goto_f

    .line 718
    :cond_11
    move/from16 v5, v21

    .line 719
    .line 720
    :goto_f
    invoke-virtual {v0, v5}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    invoke-virtual {v3, v5}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 733
    .line 734
    .line 735
    move-result v11

    .line 736
    invoke-virtual {v2, v5}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 741
    .line 742
    .line 743
    move-result v12

    .line 744
    const/4 v2, 0x4

    .line 745
    move-object/from16 v3, p0

    .line 746
    .line 747
    invoke-virtual {v3, v1, v5, v2}, Lhb/t;->b(Lva/k;II)Lw9/h;

    .line 748
    .line 749
    .line 750
    move-result-object v7

    .line 751
    if-eqz v0, :cond_13

    .line 752
    .line 753
    new-instance v8, Ly9/k0;

    .line 754
    .line 755
    move-object/from16 v9, v22

    .line 756
    .line 757
    invoke-virtual {v9, v5}, Lra/c;->i(I)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v9

    .line 761
    check-cast v9, Lpa/c0;

    .line 762
    .line 763
    invoke-static {v9}, Lhb/j;->e(Lpa/c0;)Lv9/x;

    .line 764
    .line 765
    .line 766
    move-result-object v9

    .line 767
    move-object/from16 v10, v18

    .line 768
    .line 769
    invoke-virtual {v10, v5}, Lra/c;->i(I)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v5

    .line 773
    check-cast v5, Lpa/g1;

    .line 774
    .line 775
    invoke-static {v5}, Lm9/e0;->X(Lpa/g1;)Lea/o;

    .line 776
    .line 777
    .line 778
    move-result-object v5

    .line 779
    const/16 v24, 0x1

    .line 780
    .line 781
    xor-int/lit8 v10, v0, 0x1

    .line 782
    .line 783
    invoke-virtual {v6}, Ly9/i0;->f()I

    .line 784
    .line 785
    .line 786
    move-result v13

    .line 787
    move-object v0, v14

    .line 788
    const/4 v14, 0x0

    .line 789
    move-object/from16 v26, v9

    .line 790
    .line 791
    move-object v9, v5

    .line 792
    move-object v5, v8

    .line 793
    move-object/from16 v8, v26

    .line 794
    .line 795
    invoke-direct/range {v5 .. v15}, Ly9/k0;-><init>(Lv9/k0;Lw9/h;Lv9/x;Lea/o;ZZZILy9/k0;Lv9/m0;)V

    .line 796
    .line 797
    .line 798
    sget-object v7, Ls8/w;->a:Ls8/w;

    .line 799
    .line 800
    move-object/from16 v8, v17

    .line 801
    .line 802
    invoke-static {v8, v5, v7}, Lhb/k;->b(Lhb/k;Ly9/n;Ljava/util/List;)Lhb/k;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    iget-object v7, v7, Lhb/k;->i:Lhb/t;

    .line 807
    .line 808
    iget-object v8, v1, Lpa/i0;->o:Lpa/a1;

    .line 809
    .line 810
    invoke-static {v8}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 811
    .line 812
    .line 813
    move-result-object v8

    .line 814
    invoke-virtual {v7, v8, v1, v2}, Lhb/t;->g(Ljava/util/List;Lva/k;I)Ljava/util/List;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    invoke-static {v2}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    check-cast v2, Ly9/r0;

    .line 823
    .line 824
    if-eqz v2, :cond_12

    .line 825
    .line 826
    iput-object v2, v5, Ly9/k0;->m:Ly9/r0;

    .line 827
    .line 828
    move-object v14, v5

    .line 829
    goto :goto_10

    .line 830
    :cond_12
    invoke-static/range {v20 .. v20}, Ly9/k0;->x(I)V

    .line 831
    .line 832
    .line 833
    throw v19

    .line 834
    :cond_13
    move-object v0, v14

    .line 835
    invoke-static {v6, v7}, Lxa/k;->g(Lv9/k0;Lw9/h;)Ly9/k0;

    .line 836
    .line 837
    .line 838
    move-result-object v14

    .line 839
    goto :goto_10

    .line 840
    :cond_14
    move-object/from16 v3, p0

    .line 841
    .line 842
    move-object v0, v14

    .line 843
    move-object/from16 v14, v19

    .line 844
    .line 845
    :goto_10
    sget-object v2, Lra/d;->D:Lra/b;

    .line 846
    .line 847
    invoke-virtual {v2, v4}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    if-eqz v2, :cond_15

    .line 856
    .line 857
    new-instance v2, Lhb/p;

    .line 858
    .line 859
    const/4 v4, 0x0

    .line 860
    invoke-direct {v2, v3, v1, v6, v4}, Lhb/p;-><init>(Lhb/t;Lpa/i0;Ljb/s;I)V

    .line 861
    .line 862
    .line 863
    move-object/from16 v15, v19

    .line 864
    .line 865
    invoke-virtual {v6, v15, v2}, Ly9/i0;->H0(Lkb/i;Lf9/a;)V

    .line 866
    .line 867
    .line 868
    :cond_15
    move-object/from16 v2, v16

    .line 869
    .line 870
    iget-object v2, v2, Lhb/k;->c:Lv9/k;

    .line 871
    .line 872
    instance-of v4, v2, Lv9/e;

    .line 873
    .line 874
    if-eqz v4, :cond_16

    .line 875
    .line 876
    check-cast v2, Lv9/e;

    .line 877
    .line 878
    goto :goto_11

    .line 879
    :cond_16
    const/4 v2, 0x0

    .line 880
    :goto_11
    if-eqz v2, :cond_17

    .line 881
    .line 882
    invoke-interface {v2}, Lv9/e;->f()Lv9/f;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    goto :goto_12

    .line 887
    :cond_17
    const/4 v2, 0x0

    .line 888
    :goto_12
    sget-object v4, Lv9/f;->e:Lv9/f;

    .line 889
    .line 890
    if-ne v2, v4, :cond_18

    .line 891
    .line 892
    new-instance v2, Lhb/p;

    .line 893
    .line 894
    const/4 v4, 0x1

    .line 895
    invoke-direct {v2, v3, v1, v6, v4}, Lhb/p;-><init>(Lhb/t;Lpa/i0;Ljb/s;I)V

    .line 896
    .line 897
    .line 898
    const/4 v15, 0x0

    .line 899
    invoke-virtual {v6, v15, v2}, Ly9/i0;->H0(Lkb/i;Lf9/a;)V

    .line 900
    .line 901
    .line 902
    :cond_18
    new-instance v2, Ly9/r;

    .line 903
    .line 904
    const/4 v4, 0x0

    .line 905
    invoke-virtual {v3, v1, v4}, Lhb/t;->c(Lpa/i0;Z)Lw9/h;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    invoke-direct {v2, v4}, Lfb/a;-><init>(Lw9/h;)V

    .line 910
    .line 911
    .line 912
    new-instance v4, Ly9/r;

    .line 913
    .line 914
    const/4 v5, 0x1

    .line 915
    invoke-virtual {v3, v1, v5}, Lhb/t;->c(Lpa/i0;Z)Lw9/h;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    invoke-direct {v4, v1}, Lfb/a;-><init>(Lw9/h;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v6, v0, v14, v2, v4}, Ly9/i0;->G0(Ly9/j0;Ly9/k0;Ly9/r;Ly9/r;)V

    .line 923
    .line 924
    .line 925
    return-object v6

    .line 926
    :cond_19
    move-object v3, v2

    .line 927
    const/16 v0, 0xb

    .line 928
    .line 929
    invoke-static {v0}, Lra/d;->a(I)V

    .line 930
    .line 931
    .line 932
    const/16 v19, 0x0

    .line 933
    .line 934
    throw v19

    .line 935
    :cond_1a
    move-object v3, v2

    .line 936
    move-object/from16 v19, v15

    .line 937
    .line 938
    invoke-static/range {v22 .. v22}, Lra/d;->a(I)V

    .line 939
    .line 940
    .line 941
    throw v19
.end method

.method public final g(Ljava/util/List;Lva/k;I)Ljava/util/List;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v7, v1, Lhb/t;->a:Lhb/k;

    .line 4
    .line 5
    iget-object v8, v7, Lhb/k;->d:Lra/g;

    .line 6
    .line 7
    iget-object v9, v7, Lhb/k;->h:Lp/h3;

    .line 8
    .line 9
    iget-object v0, v7, Lhb/k;->c:Lv9/k;

    .line 10
    .line 11
    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v11, v0

    .line 17
    check-cast v11, Lv9/b;

    .line 18
    .line 19
    invoke-interface {v11}, Lv9/k;->k()Lv9/k;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "getContainingDeclaration(...)"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lhb/t;->a(Lv9/k;)Lhb/w;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v10, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/16 v0, 0xa

    .line 35
    .line 36
    move-object/from16 v3, p1

    .line 37
    .line 38
    invoke-static {v3, v0}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v22

    .line 49
    const/16 v23, 0x0

    .line 50
    .line 51
    const/4 v13, 0x0

    .line 52
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    add-int/lit8 v24, v13, 0x1

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    if-ltz v13, :cond_5

    .line 66
    .line 67
    move-object v6, v0

    .line 68
    check-cast v6, Lpa/a1;

    .line 69
    .line 70
    iget v0, v6, Lpa/a1;->c:I

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    and-int/2addr v0, v3

    .line 74
    if-ne v0, v3, :cond_0

    .line 75
    .line 76
    iget v0, v6, Lpa/a1;->d:I

    .line 77
    .line 78
    move v14, v0

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    const/4 v14, 0x0

    .line 81
    :goto_1
    if-eqz v2, :cond_1

    .line 82
    .line 83
    sget-object v0, Lra/d;->c:Lra/b;

    .line 84
    .line 85
    invoke-virtual {v0, v14}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    new-instance v15, Ljb/w;

    .line 96
    .line 97
    iget-object v0, v7, Lhb/k;->a:Lhb/i;

    .line 98
    .line 99
    iget-object v0, v0, Lhb/i;->a:Lkb/l;

    .line 100
    .line 101
    move-object v3, v0

    .line 102
    new-instance v0, Lhb/s;

    .line 103
    .line 104
    move/from16 v4, p3

    .line 105
    .line 106
    move v5, v13

    .line 107
    move-object v13, v3

    .line 108
    move-object/from16 v3, p2

    .line 109
    .line 110
    invoke-direct/range {v0 .. v6}, Lhb/s;-><init>(Lhb/t;Lhb/w;Lva/a;IILpa/a1;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v15, v13, v0}, Ljb/w;-><init>(Lkb/l;Lf9/a;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_1
    move v5, v13

    .line 118
    sget-object v15, Lw9/g;->a:Lw9/f;

    .line 119
    .line 120
    :goto_2
    iget-object v0, v7, Lhb/k;->b:Lra/f;

    .line 121
    .line 122
    iget v1, v6, Lpa/a1;->e:I

    .line 123
    .line 124
    invoke-static {v0, v1}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v6, v8}, Lp4/e;->G(Lpa/a1;Lra/g;)Lpa/s0;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v9, v1}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 133
    .line 134
    .line 135
    move-result-object v16

    .line 136
    sget-object v1, Lra/d;->H:Lra/b;

    .line 137
    .line 138
    invoke-virtual {v1, v14}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v17

    .line 146
    sget-object v1, Lra/d;->I:Lra/b;

    .line 147
    .line 148
    invoke-virtual {v1, v14}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result v18

    .line 156
    sget-object v1, Lra/d;->J:Lra/b;

    .line 157
    .line 158
    invoke-virtual {v1, v14}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v19

    .line 166
    iget v1, v6, Lpa/a1;->c:I

    .line 167
    .line 168
    and-int/lit8 v3, v1, 0x10

    .line 169
    .line 170
    const/16 v4, 0x10

    .line 171
    .line 172
    if-ne v3, v4, :cond_2

    .line 173
    .line 174
    iget-object v1, v6, Lpa/a1;->h:Lpa/s0;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_2
    and-int/lit8 v1, v1, 0x20

    .line 178
    .line 179
    const/16 v3, 0x20

    .line 180
    .line 181
    if-ne v1, v3, :cond_3

    .line 182
    .line 183
    iget v1, v6, Lpa/a1;->i:I

    .line 184
    .line 185
    invoke-virtual {v8, v1}, Lra/g;->a(I)Lpa/s0;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    goto :goto_3

    .line 190
    :cond_3
    move-object v1, v12

    .line 191
    :goto_3
    if-eqz v1, :cond_4

    .line 192
    .line 193
    invoke-virtual {v9, v1}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    :cond_4
    move-object v1, v10

    .line 198
    move-object/from16 v20, v12

    .line 199
    .line 200
    new-instance v10, Ly9/r0;

    .line 201
    .line 202
    const/4 v12, 0x0

    .line 203
    sget-object v21, Lv9/m0;->e0:Lv9/n0;

    .line 204
    .line 205
    move v13, v5

    .line 206
    move-object v14, v15

    .line 207
    move-object v15, v0

    .line 208
    invoke-direct/range {v10 .. v21}, Ly9/r0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-object v10, v1

    .line 215
    move/from16 v13, v24

    .line 216
    .line 217
    move-object/from16 v1, p0

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_5
    invoke-static {}, Lp9/x1;->L()V

    .line 222
    .line 223
    .line 224
    throw v12

    .line 225
    :cond_6
    move-object v1, v10

    .line 226
    invoke-static {v1}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    return-object v0
.end method
