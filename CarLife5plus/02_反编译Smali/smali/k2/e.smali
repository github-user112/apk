.class public final Lk2/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf9/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lg9/n;

    iput-object p1, p0, Lk2/e;->e:Ljava/lang/Object;

    .line 3
    invoke-static {}, Ly1/a0;->a()[F

    move-result-object p1

    iput-object p1, p0, Lk2/e;->g:Ljava/lang/Object;

    .line 4
    invoke-static {}, Ly1/a0;->a()[F

    move-result-object p1

    iput-object p1, p0, Lk2/e;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lk2/e;->c:Z

    .line 6
    iput-boolean p1, p0, Lk2/e;->d:Z

    return-void
.end method

.method public constructor <init>(Lo2/w;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/e;->e:Ljava/lang/Object;

    .line 8
    new-instance p1, Ls/d0;

    invoke-direct {p1}, Ls/d0;-><init>()V

    iput-object p1, p0, Lk2/e;->f:Ljava/lang/Object;

    .line 9
    new-instance p1, Lk2/m;

    invoke-direct {p1}, Lk2/m;-><init>()V

    iput-object p1, p0, Lk2/e;->g:Ljava/lang/Object;

    .line 10
    new-instance p1, Ls/a0;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ls/a0;-><init>(I)V

    iput-object p1, p0, Lk2/e;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(JLjava/util/List;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lk2/e;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v3, Lk2/m;

    .line 8
    .line 9
    iget-object v4, v0, Lk2/e;->h:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Ls/a0;

    .line 12
    .line 13
    invoke-virtual {v4}, Ls/a0;->a()V

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x1

    .line 21
    move-object v10, v3

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x1

    .line 24
    :goto_0
    if-ge v8, v5, :cond_7

    .line 25
    .line 26
    move-object/from16 v11, p3

    .line 27
    .line 28
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v12

    .line 32
    check-cast v12, Lr1/o;

    .line 33
    .line 34
    iget-boolean v13, v12, Lr1/o;->n:Z

    .line 35
    .line 36
    if-eqz v13, :cond_6

    .line 37
    .line 38
    new-instance v13, Lk2/d;

    .line 39
    .line 40
    const/4 v14, 0x0

    .line 41
    invoke-direct {v13, v14, v0, v12}, Lk2/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object v13, v12, Lr1/o;->m:Lk2/d;

    .line 45
    .line 46
    if-eqz v9, :cond_4

    .line 47
    .line 48
    iget-object v13, v10, Lk2/m;->a:Lh1/e;

    .line 49
    .line 50
    iget-object v14, v13, Lh1/e;->a:[Ljava/lang/Object;

    .line 51
    .line 52
    iget v13, v13, Lh1/e;->c:I

    .line 53
    .line 54
    const/4 v15, 0x0

    .line 55
    :goto_1
    if-ge v15, v13, :cond_1

    .line 56
    .line 57
    aget-object v16, v14, v15

    .line 58
    .line 59
    move-object/from16 v7, v16

    .line 60
    .line 61
    check-cast v7, Lk2/l;

    .line 62
    .line 63
    iget-object v7, v7, Lk2/l;->c:Lr1/o;

    .line 64
    .line 65
    invoke-static {v7, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_0

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/16 v16, 0x0

    .line 76
    .line 77
    :goto_2
    move-object/from16 v7, v16

    .line 78
    .line 79
    check-cast v7, Lk2/l;

    .line 80
    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    iput-boolean v6, v7, Lk2/l;->i:Z

    .line 84
    .line 85
    iget-object v10, v7, Lk2/l;->d:Lj/g;

    .line 86
    .line 87
    invoke-virtual {v10, v1, v2}, Lj/g;->b(J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v1, v2}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    if-nez v10, :cond_2

    .line 95
    .line 96
    new-instance v10, Ls/d0;

    .line 97
    .line 98
    invoke-direct {v10}, Ls/d0;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v1, v2, v10}, Ls/a0;->h(JLjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    check-cast v10, Ls/d0;

    .line 105
    .line 106
    invoke-virtual {v10, v7}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    move-object v10, v7

    .line 110
    goto :goto_4

    .line 111
    :cond_3
    const/4 v9, 0x0

    .line 112
    :cond_4
    new-instance v7, Lk2/l;

    .line 113
    .line 114
    invoke-direct {v7, v12}, Lk2/l;-><init>(Lr1/o;)V

    .line 115
    .line 116
    .line 117
    iget-object v12, v7, Lk2/l;->d:Lj/g;

    .line 118
    .line 119
    invoke-virtual {v12, v1, v2}, Lj/g;->b(J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v1, v2}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    if-nez v12, :cond_5

    .line 127
    .line 128
    new-instance v12, Ls/d0;

    .line 129
    .line 130
    invoke-direct {v12}, Ls/d0;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v1, v2, v12}, Ls/a0;->h(JLjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    check-cast v12, Ls/d0;

    .line 137
    .line 138
    invoke-virtual {v12, v7}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v10, v10, Lk2/m;->a:Lh1/e;

    .line 142
    .line 143
    invoke-virtual {v10, v7}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_7
    if-eqz p4, :cond_c

    .line 151
    .line 152
    iget-object v1, v4, Ls/a0;->b:[J

    .line 153
    .line 154
    iget-object v2, v4, Ls/a0;->c:[Ljava/lang/Object;

    .line 155
    .line 156
    iget-object v4, v4, Ls/a0;->a:[J

    .line 157
    .line 158
    array-length v5, v4

    .line 159
    add-int/lit8 v5, v5, -0x2

    .line 160
    .line 161
    if-ltz v5, :cond_c

    .line 162
    .line 163
    const/4 v6, 0x0

    .line 164
    :goto_5
    aget-wide v7, v4, v6

    .line 165
    .line 166
    not-long v9, v7

    .line 167
    const/4 v11, 0x7

    .line 168
    shl-long/2addr v9, v11

    .line 169
    and-long/2addr v9, v7

    .line 170
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    and-long/2addr v9, v11

    .line 176
    cmp-long v13, v9, v11

    .line 177
    .line 178
    if-eqz v13, :cond_b

    .line 179
    .line 180
    sub-int v9, v6, v5

    .line 181
    .line 182
    not-int v9, v9

    .line 183
    ushr-int/lit8 v9, v9, 0x1f

    .line 184
    .line 185
    const/16 v10, 0x8

    .line 186
    .line 187
    rsub-int/lit8 v9, v9, 0x8

    .line 188
    .line 189
    const/4 v11, 0x0

    .line 190
    :goto_6
    if-ge v11, v9, :cond_a

    .line 191
    .line 192
    const-wide/16 v12, 0xff

    .line 193
    .line 194
    and-long/2addr v12, v7

    .line 195
    const-wide/16 v14, 0x80

    .line 196
    .line 197
    cmp-long v16, v12, v14

    .line 198
    .line 199
    if-gez v16, :cond_8

    .line 200
    .line 201
    shl-int/lit8 v12, v6, 0x3

    .line 202
    .line 203
    add-int/2addr v12, v11

    .line 204
    aget-wide v13, v1, v12

    .line 205
    .line 206
    aget-object v12, v2, v12

    .line 207
    .line 208
    check-cast v12, Ls/d0;

    .line 209
    .line 210
    iget-object v15, v3, Lk2/m;->a:Lh1/e;

    .line 211
    .line 212
    const/16 p1, 0x8

    .line 213
    .line 214
    iget-object v10, v15, Lh1/e;->a:[Ljava/lang/Object;

    .line 215
    .line 216
    iget v15, v15, Lh1/e;->c:I

    .line 217
    .line 218
    const/4 v0, 0x0

    .line 219
    :goto_7
    if-ge v0, v15, :cond_9

    .line 220
    .line 221
    aget-object v16, v10, v0

    .line 222
    .line 223
    move/from16 p2, v0

    .line 224
    .line 225
    move-object/from16 v0, v16

    .line 226
    .line 227
    check-cast v0, Lk2/l;

    .line 228
    .line 229
    invoke-virtual {v0, v13, v14, v12}, Lk2/l;->f(JLs/d0;)V

    .line 230
    .line 231
    .line 232
    add-int/lit8 v0, p2, 0x1

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_8
    const/16 p1, 0x8

    .line 236
    .line 237
    :cond_9
    shr-long v7, v7, p1

    .line 238
    .line 239
    add-int/lit8 v11, v11, 0x1

    .line 240
    .line 241
    move-object/from16 v0, p0

    .line 242
    .line 243
    const/16 v10, 0x8

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_a
    const/16 v0, 0x8

    .line 247
    .line 248
    if-ne v9, v0, :cond_c

    .line 249
    .line 250
    :cond_b
    if-eq v6, v5, :cond_c

    .line 251
    .line 252
    add-int/lit8 v6, v6, 0x1

    .line 253
    .line 254
    move-object/from16 v0, p0

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_c
    return-void
.end method

.method public b(Ljava/lang/Object;)[F
    .locals 2

    .line 1
    iget-object v0, p0, Lk2/e;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [F

    .line 4
    .line 5
    iget-boolean v1, p0, Lk2/e;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lk2/e;->c(Ljava/lang/Object;)[F

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, v0}, Lr2/j0;->p([F[F)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-boolean p1, p0, Lk2/e;->c:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lk2/e;->b:Z

    .line 21
    .line 22
    :cond_0
    iget-boolean p1, p0, Lk2/e;->c:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public c(Ljava/lang/Object;)[F
    .locals 3

    .line 1
    iget-object v0, p0, Lk2/e;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [F

    .line 4
    .line 5
    iget-boolean v1, p0, Lk2/e;->a:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v1, p0, Lk2/e;->f:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/graphics/Matrix;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/Matrix;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lk2/e;->f:Ljava/lang/Object;

    .line 22
    .line 23
    :cond_1
    iget-object v2, p0, Lk2/e;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lg9/n;

    .line 26
    .line 27
    invoke-interface {v2, p1, v1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Ly1/h0;->v(Landroid/graphics/Matrix;[F)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lk2/e;->a:Z

    .line 35
    .line 36
    invoke-static {v0}, Ly1/h0;->p([F)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput-boolean p1, p0, Lk2/e;->d:Z

    .line 41
    .line 42
    return-object v0
.end method

.method public d(Lk2/i;Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lk2/e;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls/d0;

    .line 4
    .line 5
    iget-object v1, p0, Lk2/e;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lk2/m;

    .line 8
    .line 9
    iget-object v2, p1, Lk2/i;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ls/q;

    .line 12
    .line 13
    iget-object v3, p0, Lk2/e;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lo2/w;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3, p1, p2}, Lk2/m;->a(Ls/q;Lo2/w;Lk2/i;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, v1, Lk2/m;->a:Lh1/e;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    return v4

    .line 27
    :cond_0
    const/4 v2, 0x1

    .line 28
    iput-boolean v2, p0, Lk2/e;->a:Z

    .line 29
    .line 30
    iget-object v5, v3, Lh1/e;->a:[Ljava/lang/Object;

    .line 31
    .line 32
    iget v6, v3, Lh1/e;->c:I

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    :goto_0
    if-ge v7, v6, :cond_3

    .line 37
    .line 38
    aget-object v9, v5, v7

    .line 39
    .line 40
    check-cast v9, Lk2/l;

    .line 41
    .line 42
    invoke-virtual {v9, p1, p2}, Lk2/l;->e(Lk2/i;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-nez v9, :cond_2

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v8, 0x0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 54
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-object p2, v3, Lh1/e;->a:[Ljava/lang/Object;

    .line 58
    .line 59
    iget v3, v3, Lh1/e;->c:I

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    :goto_3
    if-ge v5, v3, :cond_6

    .line 64
    .line 65
    aget-object v7, p2, v5

    .line 66
    .line 67
    check-cast v7, Lk2/l;

    .line 68
    .line 69
    invoke-virtual {v7, p1}, Lk2/l;->d(Lk2/i;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_5

    .line 74
    .line 75
    if-eqz v6, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    const/4 v6, 0x0

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    :goto_4
    const/4 v6, 0x1

    .line 81
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    invoke-virtual {v1, p1}, Lk2/m;->b(Lk2/i;)V

    .line 85
    .line 86
    .line 87
    if-nez v6, :cond_8

    .line 88
    .line 89
    if-eqz v8, :cond_7

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_7
    const/4 v2, 0x0

    .line 93
    :cond_8
    :goto_6
    iput-boolean v4, p0, Lk2/e;->a:Z

    .line 94
    .line 95
    iget-boolean p1, p0, Lk2/e;->d:Z

    .line 96
    .line 97
    if-eqz p1, :cond_a

    .line 98
    .line 99
    iput-boolean v4, p0, Lk2/e;->d:Z

    .line 100
    .line 101
    iget p1, v0, Ls/d0;->b:I

    .line 102
    .line 103
    const/4 p2, 0x0

    .line 104
    :goto_7
    if-ge p2, p1, :cond_9

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ls/d0;->e(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lr1/o;

    .line 111
    .line 112
    invoke-virtual {p0, v3}, Lk2/e;->g(Lr1/o;)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 p2, p2, 0x1

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_9
    invoke-virtual {v0}, Ls/d0;->c()V

    .line 119
    .line 120
    .line 121
    :cond_a
    iget-boolean p1, p0, Lk2/e;->b:Z

    .line 122
    .line 123
    if-eqz p1, :cond_b

    .line 124
    .line 125
    iput-boolean v4, p0, Lk2/e;->b:Z

    .line 126
    .line 127
    invoke-virtual {p0}, Lk2/e;->f()V

    .line 128
    .line 129
    .line 130
    :cond_b
    iget-boolean p1, p0, Lk2/e;->c:Z

    .line 131
    .line 132
    if-eqz p1, :cond_c

    .line 133
    .line 134
    iput-boolean v4, p0, Lk2/e;->c:Z

    .line 135
    .line 136
    iget-object p1, v1, Lk2/m;->a:Lh1/e;

    .line 137
    .line 138
    invoke-virtual {p1}, Lh1/e;->h()V

    .line 139
    .line 140
    .line 141
    :cond_c
    return v2
.end method

.method public e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk2/e;->a:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lk2/e;->b:Z

    .line 5
    .line 6
    return-void
.end method

.method public f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk2/e;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk2/m;

    .line 4
    .line 5
    iget-boolean v1, p0, Lk2/e;->a:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-boolean v2, p0, Lk2/e;->b:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Lk2/m;->a:Lh1/e;

    .line 14
    .line 15
    iget-object v3, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 16
    .line 17
    iget v1, v1, Lh1/e;->c:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, v1, :cond_1

    .line 21
    .line 22
    aget-object v5, v3, v4

    .line 23
    .line 24
    check-cast v5, Lk2/l;

    .line 25
    .line 26
    invoke-virtual {v5}, Lk2/l;->c()V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean v1, p0, Lk2/e;->c:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iput-boolean v2, p0, Lk2/e;->c:Z

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, v0, Lk2/m;->a:Lh1/e;

    .line 40
    .line 41
    invoke-virtual {v0}, Lh1/e;->h()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public g(Lr1/o;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lk2/e;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lk2/e;->d:Z

    .line 7
    .line 8
    iget-object v0, p0, Lk2/e;->f:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ls/d0;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lk2/e;->g:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lk2/m;

    .line 19
    .line 20
    iget-object v2, v0, Lk2/m;->b:Ls/d0;

    .line 21
    .line 22
    invoke-virtual {v2}, Ls/d0;->c()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v2}, Ls/d0;->h()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget v0, v2, Ls/d0;->b:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    invoke-virtual {v2, v0}, Ls/d0;->j(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lk2/m;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    iget-object v4, v0, Lk2/m;->a:Lh1/e;

    .line 45
    .line 46
    iget v5, v4, Lh1/e;->c:I

    .line 47
    .line 48
    if-ge v3, v5, :cond_1

    .line 49
    .line 50
    iget-object v4, v4, Lh1/e;->a:[Ljava/lang/Object;

    .line 51
    .line 52
    aget-object v4, v4, v3

    .line 53
    .line 54
    check-cast v4, Lk2/l;

    .line 55
    .line 56
    iget-object v5, v4, Lk2/l;->c:Lr1/o;

    .line 57
    .line 58
    invoke-static {v5, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    iget-object v5, v0, Lk2/m;->a:Lh1/e;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Lh1/e;->k(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Lk2/l;->c()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v2, v4}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method
