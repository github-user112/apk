.class public abstract Ly/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ly/c;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    sget-object v0, Lr3/l;->a:Lf1/c0;

    .line 2
    .line 3
    new-instance v1, Ly/c;

    .line 4
    .line 5
    sget-wide v2, Ly1/q;->e:J

    .line 6
    .line 7
    sget-wide v4, Ly1/q;->b:J

    .line 8
    .line 9
    const v0, 0x3ec28f5c    # 0.38f

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v4, v5}, Ly1/q;->b(FJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v8

    .line 16
    invoke-static {v0, v4, v5}, Ly1/q;->b(FJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v10

    .line 20
    move-wide v6, v4

    .line 21
    invoke-direct/range {v1 .. v11}, Ly/c;-><init>(JJJJJ)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Ly/g;->a:Ly/c;

    .line 25
    .line 26
    return-void
.end method

.method public static final a(Ly/c;Lr1/p;Ln1/c;Lf1/s;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    const v5, 0x250a92d0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v5}, Lf1/s;->Y(I)Lf1/s;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v5, v4, 0x6

    .line 18
    .line 19
    if-nez v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v5, 0x2

    .line 30
    :goto_0
    or-int/2addr v5, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v5, v4

    .line 33
    :goto_1
    and-int/lit8 v6, v4, 0x30

    .line 34
    .line 35
    const/16 v7, 0x20

    .line 36
    .line 37
    if-nez v6, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    const/16 v6, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v6, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v5, v6

    .line 51
    :cond_3
    and-int/lit16 v6, v4, 0x180

    .line 52
    .line 53
    if-nez v6, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    const/16 v6, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v6, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v5, v6

    .line 67
    :cond_5
    and-int/lit16 v6, v5, 0x93

    .line 68
    .line 69
    const/16 v8, 0x92

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x1

    .line 73
    if-eq v6, v8, :cond_6

    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    goto :goto_4

    .line 77
    :cond_6
    const/4 v6, 0x0

    .line 78
    :goto_4
    and-int/lit8 v8, v5, 0x1

    .line 79
    .line 80
    invoke-virtual {v0, v8, v6}, Lf1/s;->N(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_d

    .line 85
    .line 86
    sget v6, Ly/f;->d:F

    .line 87
    .line 88
    sget v8, Ly/f;->e:F

    .line 89
    .line 90
    invoke-static {v8}, Lk0/e;->a(F)Lk0/d;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    int-to-float v8, v9

    .line 95
    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-lez v11, :cond_7

    .line 100
    .line 101
    const/4 v13, 0x1

    .line 102
    goto :goto_5

    .line 103
    :cond_7
    const/4 v13, 0x0

    .line 104
    :goto_5
    sget-wide v14, Ly1/w;->a:J

    .line 105
    .line 106
    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-gtz v6, :cond_9

    .line 111
    .line 112
    if-eqz v13, :cond_8

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_8
    move-object v6, v2

    .line 116
    goto :goto_7

    .line 117
    :cond_9
    :goto_6
    new-instance v11, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;

    .line 118
    .line 119
    move-wide/from16 v16, v14

    .line 120
    .line 121
    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;-><init>(Ly1/l0;ZJJ)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v2, v11}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    :goto_7
    iget-wide v11, v1, Ly/c;->a:J

    .line 129
    .line 130
    sget-object v8, Ly1/h0;->a:Ly1/g0;

    .line 131
    .line 132
    invoke-static {v6, v11, v12, v8}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v6}, Landroidx/compose/foundation/layout/a;->l(Lr1/p;)Lr1/p;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    const/4 v8, 0x0

    .line 141
    sget v11, Ly/f;->i:F

    .line 142
    .line 143
    invoke-static {v6, v8, v11, v10}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-static {v0}, Lp9/p1;->C(Lf1/s;)Lx/n1;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-static {v6, v8, v10}, Lp9/p1;->D(Lr1/p;Lx/n1;Z)Lr1/p;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    shl-int/lit8 v5, v5, 0x3

    .line 156
    .line 157
    and-int/lit16 v5, v5, 0x1c00

    .line 158
    .line 159
    sget-object v8, Ld0/h;->c:Ld0/b;

    .line 160
    .line 161
    sget-object v11, Lr1/c;->m:Lr1/f;

    .line 162
    .line 163
    invoke-static {v8, v11, v0, v9}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    iget-wide v11, v0, Lf1/s;->T:J

    .line 168
    .line 169
    ushr-long v13, v11, v7

    .line 170
    .line 171
    xor-long/2addr v11, v13

    .line 172
    long-to-int v7, v11

    .line 173
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-static {v0, v6}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    sget-object v11, Lq2/j;->d0:Lq2/i;

    .line 182
    .line 183
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    sget-object v11, Lq2/i;->b:Lq2/a0;

    .line 187
    .line 188
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 189
    .line 190
    .line 191
    iget-boolean v12, v0, Lf1/s;->S:Z

    .line 192
    .line 193
    if-eqz v12, :cond_a

    .line 194
    .line 195
    invoke-virtual {v0, v11}, Lf1/s;->k(Lf9/a;)V

    .line 196
    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_a
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 200
    .line 201
    .line 202
    :goto_8
    sget-object v11, Lq2/i;->e:Lq2/h;

    .line 203
    .line 204
    invoke-static {v0, v11, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    sget-object v8, Lq2/i;->d:Lq2/h;

    .line 208
    .line 209
    invoke-static {v0, v8, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    sget-object v8, Lq2/i;->f:Lq2/h;

    .line 213
    .line 214
    iget-boolean v9, v0, Lf1/s;->S:Z

    .line 215
    .line 216
    if-nez v9, :cond_b

    .line 217
    .line 218
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-static {v9, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-nez v9, :cond_c

    .line 231
    .line 232
    :cond_b
    invoke-static {v7, v0, v7, v8}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 233
    .line 234
    .line 235
    :cond_c
    sget-object v7, Lq2/i;->c:Lq2/h;

    .line 236
    .line 237
    invoke-static {v0, v7, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    shr-int/lit8 v5, v5, 0x6

    .line 241
    .line 242
    and-int/lit8 v5, v5, 0x70

    .line 243
    .line 244
    or-int/lit8 v5, v5, 0x6

    .line 245
    .line 246
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    sget-object v6, Ld0/t;->a:Ld0/t;

    .line 251
    .line 252
    invoke-virtual {v3, v6, v0, v5}, Ln1/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v10}, Lf1/s;->p(Z)V

    .line 256
    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_d
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 260
    .line 261
    .line 262
    :goto_9
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    if-eqz v6, :cond_e

    .line 267
    .line 268
    new-instance v0, Lh0/u;

    .line 269
    .line 270
    const/16 v5, 0xa

    .line 271
    .line 272
    invoke-direct/range {v0 .. v5}, Lh0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 273
    .line 274
    .line 275
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 276
    .line 277
    :cond_e
    return-void
.end method

.method public static final b(Lr1/p;Ly/c;Lf9/k;Lf1/s;II)V
    .locals 8

    .line 1
    const v0, -0x55480bb2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p5, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    or-int/lit8 v1, p4, 0x6

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p3, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x2

    .line 23
    :goto_0
    or-int/2addr v1, p4

    .line 24
    :goto_1
    and-int/lit8 v2, p5, 0x2

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    or-int/lit8 v1, v1, 0x30

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_2
    invoke-virtual {p3, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    const/16 v3, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    const/16 v3, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v1, v3

    .line 43
    :goto_3
    invoke-virtual {p3, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    const/16 v3, 0x100

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_4
    const/16 v3, 0x80

    .line 53
    .line 54
    :goto_4
    or-int/2addr v1, v3

    .line 55
    and-int/lit16 v3, v1, 0x93

    .line 56
    .line 57
    const/16 v4, 0x92

    .line 58
    .line 59
    if-eq v3, v4, :cond_5

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    goto :goto_5

    .line 63
    :cond_5
    const/4 v3, 0x0

    .line 64
    :goto_5
    and-int/lit8 v4, v1, 0x1

    .line 65
    .line 66
    invoke-virtual {p3, v4, v3}, Lf1/s;->N(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_8

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    sget-object p0, Lr1/m;->a:Lr1/m;

    .line 75
    .line 76
    :cond_6
    if-eqz v2, :cond_7

    .line 77
    .line 78
    sget-object p1, Ly/g;->a:Ly/c;

    .line 79
    .line 80
    :cond_7
    new-instance v0, Ll0/k1;

    .line 81
    .line 82
    const/4 v2, 0x4

    .line 83
    invoke-direct {v0, v2, p2, p1}, Ll0/k1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const v2, 0x33468687

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v0, p3}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    shr-int/lit8 v2, v1, 0x3

    .line 94
    .line 95
    and-int/lit8 v2, v2, 0xe

    .line 96
    .line 97
    or-int/lit16 v2, v2, 0x180

    .line 98
    .line 99
    shl-int/lit8 v1, v1, 0x3

    .line 100
    .line 101
    and-int/lit8 v1, v1, 0x70

    .line 102
    .line 103
    or-int/2addr v1, v2

    .line 104
    invoke-static {p1, p0, v0, p3, v1}, Ly/g;->a(Ly/c;Lr1/p;Ln1/c;Lf1/s;I)V

    .line 105
    .line 106
    .line 107
    :goto_6
    move-object v3, p0

    .line 108
    move-object v4, p1

    .line 109
    goto :goto_7

    .line 110
    :cond_8
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :goto_7
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-eqz p0, :cond_9

    .line 119
    .line 120
    new-instance v2, Lh0/u;

    .line 121
    .line 122
    move-object v5, p2

    .line 123
    move v6, p4

    .line 124
    move v7, p5

    .line 125
    invoke-direct/range {v2 .. v7}, Lh0/u;-><init>(Lr1/p;Ly/c;Lf9/k;II)V

    .line 126
    .line 127
    .line 128
    iput-object v2, p0, Lf1/w1;->d:Lf9/n;

    .line 129
    .line 130
    :cond_9
    return-void
.end method

.method public static final c(Ljava/lang/String;Ly/c;Lr1/p;Lf9/o;Lf9/a;Lf1/s;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v12, p3

    .line 8
    .line 9
    move-object/from16 v13, p4

    .line 10
    .line 11
    move-object/from16 v7, p5

    .line 12
    .line 13
    move/from16 v14, p6

    .line 14
    .line 15
    const v1, -0x3d3c5ad4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v7, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v1, v14, 0x6

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v7, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x2

    .line 35
    :goto_0
    or-int/2addr v1, v14

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v1, v14

    .line 38
    :goto_1
    and-int/lit8 v3, v14, 0x30

    .line 39
    .line 40
    const/4 v15, 0x1

    .line 41
    const/16 v4, 0x20

    .line 42
    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v7, v15}, Lf1/s;->g(Z)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    const/16 v3, 0x20

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v3, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v1, v3

    .line 57
    :cond_3
    and-int/lit16 v3, v14, 0x180

    .line 58
    .line 59
    if-nez v3, :cond_5

    .line 60
    .line 61
    invoke-virtual {v7, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    const/16 v3, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v3, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v1, v3

    .line 73
    :cond_5
    and-int/lit16 v3, v14, 0xc00

    .line 74
    .line 75
    if-nez v3, :cond_7

    .line 76
    .line 77
    invoke-virtual {v7, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_6

    .line 82
    .line 83
    const/16 v3, 0x800

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/16 v3, 0x400

    .line 87
    .line 88
    :goto_4
    or-int/2addr v1, v3

    .line 89
    :cond_7
    and-int/lit16 v3, v14, 0x6000

    .line 90
    .line 91
    if-nez v3, :cond_9

    .line 92
    .line 93
    invoke-virtual {v7, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_8

    .line 98
    .line 99
    const/16 v3, 0x4000

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_8
    const/16 v3, 0x2000

    .line 103
    .line 104
    :goto_5
    or-int/2addr v1, v3

    .line 105
    :cond_9
    const/high16 v3, 0x30000

    .line 106
    .line 107
    and-int/2addr v3, v14

    .line 108
    const/high16 v5, 0x20000

    .line 109
    .line 110
    if-nez v3, :cond_b

    .line 111
    .line 112
    invoke-virtual {v7, v13}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_a

    .line 117
    .line 118
    const/high16 v3, 0x20000

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_a
    const/high16 v3, 0x10000

    .line 122
    .line 123
    :goto_6
    or-int/2addr v1, v3

    .line 124
    :cond_b
    const v3, 0x12493

    .line 125
    .line 126
    .line 127
    and-int/2addr v3, v1

    .line 128
    const v6, 0x12492

    .line 129
    .line 130
    .line 131
    if-eq v3, v6, :cond_c

    .line 132
    .line 133
    const/4 v3, 0x1

    .line 134
    goto :goto_7

    .line 135
    :cond_c
    const/4 v3, 0x0

    .line 136
    :goto_7
    and-int/lit8 v6, v1, 0x1

    .line 137
    .line 138
    invoke-virtual {v7, v6, v3}, Lf1/s;->N(IZ)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_19

    .line 143
    .line 144
    sget-object v3, Ly/f;->f:Lr1/g;

    .line 145
    .line 146
    sget-object v6, Ld0/h;->a:Ld0/b;

    .line 147
    .line 148
    sget v6, Ly/f;->h:F

    .line 149
    .line 150
    invoke-static {v6}, Ld0/h;->g(F)Ld0/f;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    and-int/lit8 v15, v1, 0x70

    .line 155
    .line 156
    if-ne v15, v4, :cond_d

    .line 157
    .line 158
    const/4 v15, 0x1

    .line 159
    goto :goto_8

    .line 160
    :cond_d
    const/4 v15, 0x0

    .line 161
    :goto_8
    const/high16 v16, 0x70000

    .line 162
    .line 163
    const/16 v17, 0x20

    .line 164
    .line 165
    and-int v4, v1, v16

    .line 166
    .line 167
    if-ne v4, v5, :cond_e

    .line 168
    .line 169
    const/4 v4, 0x1

    .line 170
    goto :goto_9

    .line 171
    :cond_e
    const/4 v4, 0x0

    .line 172
    :goto_9
    or-int/2addr v4, v15

    .line 173
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    if-nez v4, :cond_f

    .line 178
    .line 179
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 180
    .line 181
    if-ne v5, v4, :cond_10

    .line 182
    .line 183
    :cond_f
    new-instance v5, Lc8/g;

    .line 184
    .line 185
    const/16 v4, 0x19

    .line 186
    .line 187
    invoke-direct {v5, v13, v4}, Lc8/g;-><init>(Lf9/a;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_10
    check-cast v5, Lf9/a;

    .line 194
    .line 195
    const/16 v4, 0xc

    .line 196
    .line 197
    invoke-static {v11, v0, v5, v4}, Landroidx/compose/foundation/a;->d(Lr1/p;Ljava/lang/String;Lf9/a;I)Lr1/p;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    sget-object v5, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 202
    .line 203
    invoke-interface {v4, v5}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-static {v4}, Landroidx/compose/foundation/layout/c;->j(Lr1/p;)Lr1/p;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const/4 v5, 0x0

    .line 212
    invoke-static {v4, v6, v5, v2}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    const/16 v4, 0x36

    .line 217
    .line 218
    invoke-static {v9, v3, v7, v4}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    iget-wide v4, v7, Lf1/s;->T:J

    .line 223
    .line 224
    ushr-long v18, v4, v17

    .line 225
    .line 226
    xor-long v4, v4, v18

    .line 227
    .line 228
    long-to-int v5, v4

    .line 229
    invoke-virtual {v7}, Lf1/s;->l()Lf1/q1;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v7, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 238
    .line 239
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 243
    .line 244
    invoke-virtual {v7}, Lf1/s;->a0()V

    .line 245
    .line 246
    .line 247
    iget-boolean v9, v7, Lf1/s;->S:Z

    .line 248
    .line 249
    if-eqz v9, :cond_11

    .line 250
    .line 251
    invoke-virtual {v7, v6}, Lf1/s;->k(Lf9/a;)V

    .line 252
    .line 253
    .line 254
    goto :goto_a

    .line 255
    :cond_11
    invoke-virtual {v7}, Lf1/s;->k0()V

    .line 256
    .line 257
    .line 258
    :goto_a
    sget-object v9, Lq2/i;->e:Lq2/h;

    .line 259
    .line 260
    invoke-static {v7, v9, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    sget-object v3, Lq2/i;->d:Lq2/h;

    .line 264
    .line 265
    invoke-static {v7, v3, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 269
    .line 270
    iget-boolean v15, v7, Lf1/s;->S:Z

    .line 271
    .line 272
    if-nez v15, :cond_12

    .line 273
    .line 274
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-static {v15, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v8

    .line 286
    if-nez v8, :cond_13

    .line 287
    .line 288
    :cond_12
    invoke-static {v5, v7, v5, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 289
    .line 290
    .line 291
    :cond_13
    sget-object v5, Lq2/i;->c:Lq2/h;

    .line 292
    .line 293
    invoke-static {v7, v5, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    if-nez v12, :cond_14

    .line 297
    .line 298
    const v2, -0x586c6915

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7, v2}, Lf1/s;->W(I)V

    .line 302
    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    invoke-virtual {v7, v2}, Lf1/s;->p(Z)V

    .line 306
    .line 307
    .line 308
    move v15, v1

    .line 309
    goto :goto_c

    .line 310
    :cond_14
    const v2, -0x586c6914

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7, v2}, Lf1/s;->W(I)V

    .line 314
    .line 315
    .line 316
    sget v19, Ly/f;->j:F

    .line 317
    .line 318
    const/16 v20, 0x0

    .line 319
    .line 320
    const/16 v23, 0x2

    .line 321
    .line 322
    sget-object v18, Lr1/m;->a:Lr1/m;

    .line 323
    .line 324
    move/from16 v21, v19

    .line 325
    .line 326
    move/from16 v22, v19

    .line 327
    .line 328
    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/c;->g(Lr1/p;FFFFI)Lr1/p;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    sget-object v8, Lr1/c;->a:Lr1/h;

    .line 333
    .line 334
    const/4 v15, 0x0

    .line 335
    invoke-static {v8, v15}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    move v15, v1

    .line 340
    iget-wide v0, v7, Lf1/s;->T:J

    .line 341
    .line 342
    ushr-long v17, v0, v17

    .line 343
    .line 344
    xor-long v0, v0, v17

    .line 345
    .line 346
    long-to-int v1, v0

    .line 347
    invoke-virtual {v7}, Lf1/s;->l()Lf1/q1;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v7, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {v7}, Lf1/s;->a0()V

    .line 356
    .line 357
    .line 358
    iget-boolean v11, v7, Lf1/s;->S:Z

    .line 359
    .line 360
    if-eqz v11, :cond_15

    .line 361
    .line 362
    invoke-virtual {v7, v6}, Lf1/s;->k(Lf9/a;)V

    .line 363
    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_15
    invoke-virtual {v7}, Lf1/s;->k0()V

    .line 367
    .line 368
    .line 369
    :goto_b
    invoke-static {v7, v9, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    invoke-static {v7, v3, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    iget-boolean v0, v7, Lf1/s;->S:Z

    .line 376
    .line 377
    if-nez v0, :cond_16

    .line 378
    .line 379
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-static {v0, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-nez v0, :cond_17

    .line 392
    .line 393
    :cond_16
    invoke-static {v1, v7, v1, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 394
    .line 395
    .line 396
    :cond_17
    invoke-static {v7, v5, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    iget-wide v0, v10, Ly/c;->c:J

    .line 400
    .line 401
    new-instance v2, Ly1/q;

    .line 402
    .line 403
    invoke-direct {v2, v0, v1}, Ly1/q;-><init>(J)V

    .line 404
    .line 405
    .line 406
    const/4 v0, 0x0

    .line 407
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-interface {v12, v2, v7, v1}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    const/4 v1, 0x1

    .line 415
    invoke-virtual {v7, v1}, Lf1/s;->p(Z)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v7, v0}, Lf1/s;->p(Z)V

    .line 419
    .line 420
    .line 421
    :goto_c
    iget-wide v0, v10, Ly/c;->b:J

    .line 422
    .line 423
    sget v24, Ly/f;->g:I

    .line 424
    .line 425
    sget-wide v19, Ly/f;->m:J

    .line 426
    .line 427
    sget-object v21, Ly/f;->n:Lf3/k;

    .line 428
    .line 429
    sget-wide v25, Ly/f;->o:J

    .line 430
    .line 431
    sget-wide v22, Ly/f;->p:J

    .line 432
    .line 433
    new-instance v16, Lb3/o0;

    .line 434
    .line 435
    const v27, 0xfd7f78

    .line 436
    .line 437
    .line 438
    move-wide/from16 v17, v0

    .line 439
    .line 440
    invoke-direct/range {v16 .. v27}, Lb3/o0;-><init>(JJLf3/k;JIJI)V

    .line 441
    .line 442
    .line 443
    const/high16 v0, 0x3f800000    # 1.0f

    .line 444
    .line 445
    float-to-double v1, v0

    .line 446
    const-wide/16 v3, 0x0

    .line 447
    .line 448
    cmpl-double v5, v1, v3

    .line 449
    .line 450
    if-lez v5, :cond_18

    .line 451
    .line 452
    goto :goto_d

    .line 453
    :cond_18
    const-string v1, "invalid weight; must be greater than zero"

    .line 454
    .line 455
    invoke-static {v1}, Le0/a;->a(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    :goto_d
    new-instance v1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 459
    .line 460
    const/4 v11, 0x1

    .line 461
    invoke-direct {v1, v0, v11}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 462
    .line 463
    .line 464
    and-int/lit8 v0, v15, 0xe

    .line 465
    .line 466
    const/high16 v2, 0x180000

    .line 467
    .line 468
    or-int v8, v0, v2

    .line 469
    .line 470
    const/16 v9, 0x3b8

    .line 471
    .line 472
    const/4 v3, 0x0

    .line 473
    const/4 v4, 0x0

    .line 474
    const/4 v5, 0x1

    .line 475
    const/4 v6, 0x0

    .line 476
    move-object/from16 v0, p0

    .line 477
    .line 478
    move-object/from16 v2, v16

    .line 479
    .line 480
    invoke-static/range {v0 .. v9}, Ll0/p0;->a(Ljava/lang/String;Lr1/p;Lb3/o0;IZIILf1/s;II)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7, v11}, Lf1/s;->p(Z)V

    .line 484
    .line 485
    .line 486
    goto :goto_e

    .line 487
    :cond_19
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 488
    .line 489
    .line 490
    :goto_e
    invoke-virtual {v7}, Lf1/s;->r()Lf1/w1;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    if-eqz v8, :cond_1a

    .line 495
    .line 496
    new-instance v0, Lv/t0;

    .line 497
    .line 498
    const/4 v7, 0x1

    .line 499
    move-object/from16 v1, p0

    .line 500
    .line 501
    move-object/from16 v3, p2

    .line 502
    .line 503
    move-object v2, v10

    .line 504
    move-object v4, v12

    .line 505
    move-object v5, v13

    .line 506
    move v6, v14

    .line 507
    invoke-direct/range {v0 .. v7}, Lv/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 508
    .line 509
    .line 510
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 511
    .line 512
    :cond_1a
    return-void
.end method
