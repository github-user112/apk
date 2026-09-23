.class public final Lz2/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Le7/l;

.field public final b:Lz2/b;

.field public final c:Ls/d0;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lcom/baidu/carlife/sdk/internal/a;

.field public h:J

.field public final i:Lb1/a;

.field public final j:Lx1/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le7/l;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Le7/l;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0xc0

    .line 13
    .line 14
    new-array v2, v1, [J

    .line 15
    .line 16
    iput-object v2, v0, Le7/l;->c:Ljava/lang/Object;

    .line 17
    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    iput-object v1, v0, Le7/l;->d:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object v0, p0, Lz2/a;->a:Le7/l;

    .line 23
    .line 24
    new-instance v0, Lz2/b;

    .line 25
    .line 26
    invoke-direct {v0}, Lz2/b;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lz2/a;->b:Lz2/b;

    .line 30
    .line 31
    new-instance v0, Ls/d0;

    .line 32
    .line 33
    invoke-direct {v0}, Ls/d0;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lz2/a;->c:Ls/d0;

    .line 37
    .line 38
    const-wide/16 v0, -0x1

    .line 39
    .line 40
    iput-wide v0, p0, Lz2/a;->h:J

    .line 41
    .line 42
    new-instance v0, Lb1/a;

    .line 43
    .line 44
    const/16 v1, 0x12

    .line 45
    .line 46
    invoke-direct {v0, v1, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lz2/a;->i:Lb1/a;

    .line 50
    .line 51
    new-instance v0, Lx1/a;

    .line 52
    .line 53
    invoke-direct {v0}, Lx1/a;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lz2/a;->j:Lx1/a;

    .line 57
    .line 58
    return-void
.end method

.method public static g(Lq2/h0;)J
    .locals 6

    .line 1
    iget-object p0, p0, Lq2/h0;->E:Lq2/d1;

    .line 2
    .line 3
    iget-object v0, p0, Lq2/d1;->d:Lq2/h1;

    .line 4
    .line 5
    iget-object p0, p0, Lq2/d1;->c:Lq2/t;

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    .line 10
    .line 11
    if-eq p0, v0, :cond_3

    .line 12
    .line 13
    iget-object v3, p0, Lq2/h1;->I:Lq2/p1;

    .line 14
    .line 15
    iget-wide v4, p0, Lq2/h1;->z:J

    .line 16
    .line 17
    invoke-static {v1, v2, v4, v5}, Li9/a;->K(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-object p0, p0, Lq2/h1;->q:Lq2/h1;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v3}, Lq2/p1;->getUnderlyingMatrix-sQKQjiQ()[F

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lp9/p1;->e([F)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x3

    .line 34
    if-ne v4, v5, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    and-int/lit8 v4, v4, 0x2

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    const-wide v0, 0x7fffffff7fffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    return-wide v0

    .line 47
    :cond_2
    invoke-static {v1, v2, v3}, Ly1/a0;->b(J[F)J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-static {v1, v2}, Li9/a;->M(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    return-wide v0
.end method

.method public static h(Lq2/h0;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/d1;->d:Lq2/h1;

    .line 4
    .line 5
    iget-wide v0, v0, Lq2/h1;->z:J

    .line 6
    .line 7
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    iget-wide v3, v2, Lq2/h0;->c:J

    .line 14
    .line 15
    const-wide v5, 0x7fffffff7fffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-static {v3, v4, v5, v6}, Ln3/j;->a(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-static {v2}, Lz2/a;->h(Lq2/h0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-wide v3, v2, Lq2/h0;->c:J

    .line 30
    .line 31
    invoke-static {v3, v4, v5, v6}, Ln3/j;->a(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    :goto_0
    move-wide v0, v5

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-boolean v7, v2, Lq2/h0;->f:Z

    .line 40
    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    invoke-static {v2}, Lz2/a;->g(Lq2/h0;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    iput-wide v7, v2, Lq2/h0;->e:J

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    iput-boolean v9, v2, Lq2/h0;->f:Z

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-wide v7, v2, Lq2/h0;->e:J

    .line 54
    .line 55
    :goto_1
    invoke-static {v7, v8, v5, v6}, Ln3/j;->a(JJ)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-static {v3, v4, v7, v8}, Ln3/j;->c(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    invoke-static {v2, v3, v0, v1}, Ln3/j;->c(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    :cond_4
    :goto_2
    iput-wide v0, p0, Lq2/h0;->c:J

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lr1/b;->a:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-boolean v3, v0, Lz2/a;->d:Z

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    iget-boolean v6, v0, Lz2/a;->e:Z

    .line 15
    .line 16
    if-eqz v6, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v6, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 22
    :goto_1
    const/4 v11, 0x7

    .line 23
    iget-object v12, v0, Lz2/a;->a:Le7/l;

    .line 24
    .line 25
    const/16 v15, 0x8

    .line 26
    .line 27
    const/16 v16, 0x1

    .line 28
    .line 29
    iget-object v4, v0, Lz2/a;->b:Lz2/b;

    .line 30
    .line 31
    if-eqz v3, :cond_c

    .line 32
    .line 33
    iput-boolean v5, v0, Lz2/a;->d:Z

    .line 34
    .line 35
    iget-object v3, v0, Lz2/a;->c:Ls/d0;

    .line 36
    .line 37
    const-wide/16 v17, 0x80

    .line 38
    .line 39
    iget-object v7, v3, Ls/d0;->a:[Ljava/lang/Object;

    .line 40
    .line 41
    iget v3, v3, Ls/d0;->b:I

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    :goto_2
    if-ge v8, v3, :cond_2

    .line 45
    .line 46
    aget-object v19, v7, v8

    .line 47
    .line 48
    check-cast v19, Lf9/a;

    .line 49
    .line 50
    invoke-interface/range {v19 .. v19}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    add-int/lit8 v8, v8, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-object v3, v12, Le7/l;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, [J

    .line 59
    .line 60
    iget v7, v12, Le7/l;->b:I

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    const-wide/16 v19, 0xff

    .line 64
    .line 65
    :goto_3
    array-length v9, v3

    .line 66
    add-int/lit8 v9, v9, -0x2

    .line 67
    .line 68
    if-ge v8, v9, :cond_5

    .line 69
    .line 70
    if-ge v8, v7, :cond_5

    .line 71
    .line 72
    add-int/lit8 v9, v8, 0x2

    .line 73
    .line 74
    aget-wide v9, v3, v9

    .line 75
    .line 76
    const/16 v21, 0x3d

    .line 77
    .line 78
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    shr-long v13, v9, v21

    .line 84
    .line 85
    long-to-int v14, v13

    .line 86
    and-int/lit8 v13, v14, 0x1

    .line 87
    .line 88
    if-eqz v13, :cond_4

    .line 89
    .line 90
    aget-wide v13, v3, v8

    .line 91
    .line 92
    add-int/lit8 v13, v8, 0x1

    .line 93
    .line 94
    aget-wide v13, v3, v13

    .line 95
    .line 96
    long-to-int v10, v9

    .line 97
    const v9, 0x3ffffff

    .line 98
    .line 99
    .line 100
    and-int/2addr v9, v10

    .line 101
    iget-object v10, v4, Lz2/b;->a:Ls/w;

    .line 102
    .line 103
    invoke-virtual {v10, v9}, Ls/k;->b(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    if-nez v9, :cond_3

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x3

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    iget-object v3, v4, Lz2/b;->a:Ls/w;

    .line 125
    .line 126
    iget-object v7, v3, Ls/k;->c:[Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v3, v3, Ls/k;->a:[J

    .line 129
    .line 130
    array-length v8, v3

    .line 131
    add-int/lit8 v8, v8, -0x2

    .line 132
    .line 133
    if-ltz v8, :cond_a

    .line 134
    .line 135
    const/4 v9, 0x0

    .line 136
    :goto_5
    aget-wide v13, v3, v9

    .line 137
    .line 138
    move/from16 v16, v6

    .line 139
    .line 140
    not-long v5, v13

    .line 141
    shl-long/2addr v5, v11

    .line 142
    and-long/2addr v5, v13

    .line 143
    and-long v5, v5, v22

    .line 144
    .line 145
    cmp-long v21, v5, v22

    .line 146
    .line 147
    if-eqz v21, :cond_9

    .line 148
    .line 149
    sub-int v5, v9, v8

    .line 150
    .line 151
    not-int v5, v5

    .line 152
    ushr-int/lit8 v5, v5, 0x1f

    .line 153
    .line 154
    rsub-int/lit8 v5, v5, 0x8

    .line 155
    .line 156
    const/4 v6, 0x0

    .line 157
    :goto_6
    if-ge v6, v5, :cond_8

    .line 158
    .line 159
    and-long v24, v13, v19

    .line 160
    .line 161
    cmp-long v21, v24, v17

    .line 162
    .line 163
    if-gez v21, :cond_7

    .line 164
    .line 165
    shl-int/lit8 v21, v9, 0x3

    .line 166
    .line 167
    add-int v21, v21, v6

    .line 168
    .line 169
    aget-object v21, v7, v21

    .line 170
    .line 171
    if-nez v21, :cond_6

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_6
    new-instance v1, Ljava/lang/ClassCastException;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw v1

    .line 180
    :cond_7
    :goto_7
    shr-long/2addr v13, v15

    .line 181
    add-int/lit8 v6, v6, 0x1

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_8
    if-ne v5, v15, :cond_b

    .line 185
    .line 186
    :cond_9
    if-eq v9, v8, :cond_b

    .line 187
    .line 188
    add-int/lit8 v9, v9, 0x1

    .line 189
    .line 190
    move/from16 v6, v16

    .line 191
    .line 192
    const/4 v5, 0x0

    .line 193
    goto :goto_5

    .line 194
    :cond_a
    move/from16 v16, v6

    .line 195
    .line 196
    :cond_b
    iget-object v3, v12, Le7/l;->c:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v3, [J

    .line 199
    .line 200
    iget v5, v12, Le7/l;->b:I

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    :goto_8
    array-length v7, v3

    .line 204
    add-int/lit8 v7, v7, -0x2

    .line 205
    .line 206
    if-ge v6, v7, :cond_d

    .line 207
    .line 208
    if-ge v6, v5, :cond_d

    .line 209
    .line 210
    add-int/lit8 v7, v6, 0x2

    .line 211
    .line 212
    aget-wide v8, v3, v7

    .line 213
    .line 214
    const-wide v13, -0x2000000000000001L    # -2.681561585988519E154

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    and-long/2addr v8, v13

    .line 220
    aput-wide v8, v3, v7

    .line 221
    .line 222
    add-int/lit8 v6, v6, 0x3

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_c
    move/from16 v16, v6

    .line 226
    .line 227
    const-wide/16 v17, 0x80

    .line 228
    .line 229
    const-wide/16 v19, 0xff

    .line 230
    .line 231
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    :cond_d
    iget-boolean v3, v0, Lz2/a;->e:Z

    .line 237
    .line 238
    if-eqz v3, :cond_12

    .line 239
    .line 240
    const/4 v10, 0x0

    .line 241
    iput-boolean v10, v0, Lz2/a;->e:Z

    .line 242
    .line 243
    iget-object v3, v4, Lz2/b;->a:Ls/w;

    .line 244
    .line 245
    iget-object v5, v3, Ls/k;->c:[Ljava/lang/Object;

    .line 246
    .line 247
    iget-object v3, v3, Ls/k;->a:[J

    .line 248
    .line 249
    array-length v6, v3

    .line 250
    add-int/lit8 v6, v6, -0x2

    .line 251
    .line 252
    if-ltz v6, :cond_12

    .line 253
    .line 254
    const/4 v7, 0x0

    .line 255
    :goto_9
    aget-wide v8, v3, v7

    .line 256
    .line 257
    not-long v13, v8

    .line 258
    shl-long/2addr v13, v11

    .line 259
    and-long/2addr v13, v8

    .line 260
    and-long v13, v13, v22

    .line 261
    .line 262
    cmp-long v21, v13, v22

    .line 263
    .line 264
    if-eqz v21, :cond_11

    .line 265
    .line 266
    sub-int v13, v7, v6

    .line 267
    .line 268
    not-int v13, v13

    .line 269
    ushr-int/lit8 v13, v13, 0x1f

    .line 270
    .line 271
    rsub-int/lit8 v13, v13, 0x8

    .line 272
    .line 273
    const/4 v14, 0x0

    .line 274
    :goto_a
    if-ge v14, v13, :cond_10

    .line 275
    .line 276
    and-long v24, v8, v19

    .line 277
    .line 278
    cmp-long v21, v24, v17

    .line 279
    .line 280
    if-gez v21, :cond_f

    .line 281
    .line 282
    shl-int/lit8 v21, v7, 0x3

    .line 283
    .line 284
    add-int v21, v21, v14

    .line 285
    .line 286
    aget-object v21, v5, v21

    .line 287
    .line 288
    if-nez v21, :cond_e

    .line 289
    .line 290
    goto :goto_b

    .line 291
    :cond_e
    new-instance v1, Ljava/lang/ClassCastException;

    .line 292
    .line 293
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 294
    .line 295
    .line 296
    throw v1

    .line 297
    :cond_f
    :goto_b
    shr-long/2addr v8, v15

    .line 298
    add-int/lit8 v14, v14, 0x1

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_10
    if-ne v13, v15, :cond_12

    .line 302
    .line 303
    :cond_11
    if-eq v7, v6, :cond_12

    .line 304
    .line 305
    add-int/lit8 v7, v7, 0x1

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_12
    if-eqz v16, :cond_13

    .line 309
    .line 310
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    :cond_13
    iget-boolean v3, v0, Lz2/a;->f:Z

    .line 314
    .line 315
    const/4 v10, 0x0

    .line 316
    if-eqz v3, :cond_16

    .line 317
    .line 318
    iput-boolean v10, v0, Lz2/a;->f:Z

    .line 319
    .line 320
    iget-object v3, v12, Le7/l;->c:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v3, [J

    .line 323
    .line 324
    iget v5, v12, Le7/l;->b:I

    .line 325
    .line 326
    iget-object v6, v12, Le7/l;->d:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v6, [J

    .line 329
    .line 330
    const/4 v7, 0x0

    .line 331
    const/4 v8, 0x0

    .line 332
    :goto_c
    array-length v9, v3

    .line 333
    add-int/lit8 v9, v9, -0x2

    .line 334
    .line 335
    if-ge v7, v9, :cond_15

    .line 336
    .line 337
    array-length v9, v6

    .line 338
    add-int/lit8 v9, v9, -0x2

    .line 339
    .line 340
    if-ge v8, v9, :cond_15

    .line 341
    .line 342
    if-ge v7, v5, :cond_15

    .line 343
    .line 344
    add-int/lit8 v9, v7, 0x2

    .line 345
    .line 346
    aget-wide v13, v3, v9

    .line 347
    .line 348
    const-wide v24, 0x1fffffffffffffffL

    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    cmp-long v16, v13, v24

    .line 354
    .line 355
    if-eqz v16, :cond_14

    .line 356
    .line 357
    aget-wide v13, v3, v7

    .line 358
    .line 359
    aput-wide v13, v6, v8

    .line 360
    .line 361
    add-int/lit8 v13, v8, 0x1

    .line 362
    .line 363
    add-int/lit8 v14, v7, 0x1

    .line 364
    .line 365
    aget-wide v24, v3, v14

    .line 366
    .line 367
    aput-wide v24, v6, v13

    .line 368
    .line 369
    add-int/lit8 v13, v8, 0x2

    .line 370
    .line 371
    aget-wide v24, v3, v9

    .line 372
    .line 373
    aput-wide v24, v6, v13

    .line 374
    .line 375
    add-int/lit8 v8, v8, 0x3

    .line 376
    .line 377
    :cond_14
    add-int/lit8 v7, v7, 0x3

    .line 378
    .line 379
    goto :goto_c

    .line 380
    :cond_15
    iput v8, v12, Le7/l;->b:I

    .line 381
    .line 382
    iput-object v6, v12, Le7/l;->c:Ljava/lang/Object;

    .line 383
    .line 384
    iput-object v3, v12, Le7/l;->d:Ljava/lang/Object;

    .line 385
    .line 386
    :cond_16
    iget-wide v5, v4, Lz2/b;->b:J

    .line 387
    .line 388
    cmp-long v3, v5, v1

    .line 389
    .line 390
    if-lez v3, :cond_17

    .line 391
    .line 392
    return-void

    .line 393
    :cond_17
    iget-object v1, v4, Lz2/b;->a:Ls/w;

    .line 394
    .line 395
    iget-object v2, v1, Ls/k;->c:[Ljava/lang/Object;

    .line 396
    .line 397
    iget-object v1, v1, Ls/k;->a:[J

    .line 398
    .line 399
    array-length v3, v1

    .line 400
    add-int/lit8 v3, v3, -0x2

    .line 401
    .line 402
    if-ltz v3, :cond_1c

    .line 403
    .line 404
    const/4 v5, 0x0

    .line 405
    :goto_d
    aget-wide v6, v1, v5

    .line 406
    .line 407
    not-long v8, v6

    .line 408
    shl-long/2addr v8, v11

    .line 409
    and-long/2addr v8, v6

    .line 410
    and-long v8, v8, v22

    .line 411
    .line 412
    cmp-long v12, v8, v22

    .line 413
    .line 414
    if-eqz v12, :cond_1b

    .line 415
    .line 416
    sub-int v8, v5, v3

    .line 417
    .line 418
    not-int v8, v8

    .line 419
    ushr-int/lit8 v8, v8, 0x1f

    .line 420
    .line 421
    rsub-int/lit8 v8, v8, 0x8

    .line 422
    .line 423
    const/4 v9, 0x0

    .line 424
    :goto_e
    if-ge v9, v8, :cond_1a

    .line 425
    .line 426
    and-long v12, v6, v19

    .line 427
    .line 428
    cmp-long v14, v12, v17

    .line 429
    .line 430
    if-gez v14, :cond_19

    .line 431
    .line 432
    shl-int/lit8 v12, v5, 0x3

    .line 433
    .line 434
    add-int/2addr v12, v9

    .line 435
    aget-object v12, v2, v12

    .line 436
    .line 437
    if-nez v12, :cond_18

    .line 438
    .line 439
    goto :goto_f

    .line 440
    :cond_18
    new-instance v1, Ljava/lang/ClassCastException;

    .line 441
    .line 442
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 443
    .line 444
    .line 445
    throw v1

    .line 446
    :cond_19
    :goto_f
    shr-long/2addr v6, v15

    .line 447
    add-int/lit8 v9, v9, 0x1

    .line 448
    .line 449
    goto :goto_e

    .line 450
    :cond_1a
    if-ne v8, v15, :cond_1c

    .line 451
    .line 452
    :cond_1b
    if-eq v5, v3, :cond_1c

    .line 453
    .line 454
    add-int/lit8 v5, v5, 0x1

    .line 455
    .line 456
    goto :goto_d

    .line 457
    :cond_1c
    const-wide/16 v1, -0x1

    .line 458
    .line 459
    iput-wide v1, v4, Lz2/b;->b:J

    .line 460
    .line 461
    return-void
.end method

.method public final b(Lq2/h0;Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lq2/h0;->E:Lq2/d1;

    .line 6
    .line 7
    iget-object v3, v2, Lq2/d1;->d:Lq2/h1;

    .line 8
    .line 9
    iget-object v4, v1, Lq2/h0;->F:Lq2/l0;

    .line 10
    .line 11
    iget-object v4, v4, Lq2/l0;->p:Lq2/y0;

    .line 12
    .line 13
    invoke-virtual {v4}, Lq2/y0;->N()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {v4}, Lq2/y0;->L()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    int-to-float v5, v5

    .line 22
    int-to-float v4, v4

    .line 23
    iget-object v6, v0, Lz2/a;->j:Lx1/a;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    iput v7, v6, Lx1/a;->a:F

    .line 27
    .line 28
    iput v7, v6, Lx1/a;->b:F

    .line 29
    .line 30
    iput v5, v6, Lx1/a;->c:F

    .line 31
    .line 32
    iput v4, v6, Lx1/a;->d:F

    .line 33
    .line 34
    :cond_0
    :goto_0
    const-wide v4, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const/16 v7, 0x20

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v8, v3, Lq2/h1;->I:Lq2/p1;

    .line 44
    .line 45
    iget-wide v9, v3, Lq2/h1;->z:J

    .line 46
    .line 47
    shr-long v11, v9, v7

    .line 48
    .line 49
    long-to-int v12, v11

    .line 50
    int-to-float v11, v12

    .line 51
    and-long/2addr v9, v4

    .line 52
    long-to-int v10, v9

    .line 53
    int-to-float v9, v10

    .line 54
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    int-to-long v10, v10

    .line 59
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    int-to-long v12, v9

    .line 64
    shl-long v9, v10, v7

    .line 65
    .line 66
    and-long/2addr v12, v4

    .line 67
    or-long/2addr v9, v12

    .line 68
    shr-long v11, v9, v7

    .line 69
    .line 70
    long-to-int v7, v11

    .line 71
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    and-long/2addr v4, v9

    .line 76
    long-to-int v5, v4

    .line 77
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    iget v5, v6, Lx1/a;->a:F

    .line 82
    .line 83
    add-float/2addr v5, v7

    .line 84
    iput v5, v6, Lx1/a;->a:F

    .line 85
    .line 86
    iget v5, v6, Lx1/a;->b:F

    .line 87
    .line 88
    add-float/2addr v5, v4

    .line 89
    iput v5, v6, Lx1/a;->b:F

    .line 90
    .line 91
    iget v5, v6, Lx1/a;->c:F

    .line 92
    .line 93
    add-float/2addr v5, v7

    .line 94
    iput v5, v6, Lx1/a;->c:F

    .line 95
    .line 96
    iget v5, v6, Lx1/a;->d:F

    .line 97
    .line 98
    add-float/2addr v5, v4

    .line 99
    iput v5, v6, Lx1/a;->d:F

    .line 100
    .line 101
    iget-object v3, v3, Lq2/h1;->q:Lq2/h1;

    .line 102
    .line 103
    if-eqz v8, :cond_0

    .line 104
    .line 105
    invoke-interface {v8}, Lq2/p1;->getUnderlyingMatrix-sQKQjiQ()[F

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v4}, Ly1/h0;->p([F)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_0

    .line 114
    .line 115
    invoke-static {v4, v6}, Ly1/a0;->c([FLx1/a;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    iget v3, v6, Lx1/a;->a:F

    .line 120
    .line 121
    float-to-int v10, v3

    .line 122
    iget v3, v6, Lx1/a;->b:F

    .line 123
    .line 124
    float-to-int v11, v3

    .line 125
    iget v3, v6, Lx1/a;->c:F

    .line 126
    .line 127
    float-to-int v12, v3

    .line 128
    iget v3, v6, Lx1/a;->d:F

    .line 129
    .line 130
    float-to-int v13, v3

    .line 131
    iget v9, v1, Lq2/h0;->b:I

    .line 132
    .line 133
    iget-object v8, v0, Lz2/a;->a:Le7/l;

    .line 134
    .line 135
    if-nez p2, :cond_3

    .line 136
    .line 137
    const v6, 0x3ffffff

    .line 138
    .line 139
    .line 140
    and-int v14, v9, v6

    .line 141
    .line 142
    iget-object v15, v8, Le7/l;->c:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v15, [J

    .line 145
    .line 146
    move-wide/from16 v16, v4

    .line 147
    .line 148
    iget v4, v8, Le7/l;->b:I

    .line 149
    .line 150
    const/4 v5, 0x0

    .line 151
    const p2, 0x3ffffff

    .line 152
    .line 153
    .line 154
    :goto_1
    array-length v6, v15

    .line 155
    add-int/lit8 v6, v6, -0x2

    .line 156
    .line 157
    if-ge v5, v6, :cond_3

    .line 158
    .line 159
    if-ge v5, v4, :cond_3

    .line 160
    .line 161
    add-int/lit8 v6, v5, 0x2

    .line 162
    .line 163
    move-object/from16 v19, v8

    .line 164
    .line 165
    const/16 v18, 0x20

    .line 166
    .line 167
    aget-wide v7, v15, v6

    .line 168
    .line 169
    const/16 v20, 0x1

    .line 170
    .line 171
    long-to-int v3, v7

    .line 172
    and-int v3, v3, p2

    .line 173
    .line 174
    if-ne v3, v14, :cond_2

    .line 175
    .line 176
    int-to-long v1, v10

    .line 177
    shl-long v1, v1, v18

    .line 178
    .line 179
    int-to-long v3, v11

    .line 180
    and-long v3, v3, v16

    .line 181
    .line 182
    or-long/2addr v1, v3

    .line 183
    aput-wide v1, v15, v5

    .line 184
    .line 185
    add-int/lit8 v5, v5, 0x1

    .line 186
    .line 187
    int-to-long v1, v12

    .line 188
    shl-long v1, v1, v18

    .line 189
    .line 190
    int-to-long v3, v13

    .line 191
    and-long v3, v3, v16

    .line 192
    .line 193
    or-long/2addr v1, v3

    .line 194
    aput-wide v1, v15, v5

    .line 195
    .line 196
    const-wide/high16 v1, 0x2000000000000000L

    .line 197
    .line 198
    or-long/2addr v1, v7

    .line 199
    aput-wide v1, v15, v6

    .line 200
    .line 201
    :goto_2
    const/4 v1, 0x1

    .line 202
    goto :goto_4

    .line 203
    :cond_2
    add-int/lit8 v5, v5, 0x3

    .line 204
    .line 205
    move-object/from16 v8, v19

    .line 206
    .line 207
    const/16 v7, 0x20

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_3
    move-object/from16 v19, v8

    .line 211
    .line 212
    const/16 v20, 0x1

    .line 213
    .line 214
    invoke-virtual {v1}, Lq2/h0;->v()Lq2/h0;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-eqz v1, :cond_4

    .line 219
    .line 220
    iget v1, v1, Lq2/h0;->b:I

    .line 221
    .line 222
    move v14, v1

    .line 223
    goto :goto_3

    .line 224
    :cond_4
    const/4 v1, -0x1

    .line 225
    const/4 v14, -0x1

    .line 226
    :goto_3
    const/16 v1, 0x400

    .line 227
    .line 228
    invoke-virtual {v2, v1}, Lq2/d1;->d(I)Z

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    const/16 v1, 0x10

    .line 233
    .line 234
    invoke-virtual {v2, v1}, Lq2/d1;->d(I)Z

    .line 235
    .line 236
    .line 237
    move-result v16

    .line 238
    move-object/from16 v8, v19

    .line 239
    .line 240
    invoke-virtual/range {v8 .. v16}, Le7/l;->f(IIIIIIZZ)V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :goto_4
    iput-boolean v1, v0, Lz2/a;->d:Z

    .line 245
    .line 246
    return-void
.end method

.method public final c(Lq2/h0;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lq2/h0;->z()Lh1/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lh1/e;->a:[Ljava/lang/Object;

    .line 6
    .line 7
    iget p1, p1, Lh1/e;->c:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, p1, :cond_0

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    check-cast v3, Lq2/h0;

    .line 16
    .line 17
    invoke-virtual {p0, v3, v1}, Lz2/a;->b(Lq2/h0;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3}, Lz2/a;->c(Lq2/h0;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final d(Lq2/h0;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz2/a;->d:Z

    .line 3
    .line 4
    iget p1, p1, Lq2/h0;->b:I

    .line 5
    .line 6
    const v1, 0x3ffffff

    .line 7
    .line 8
    .line 9
    and-int/2addr p1, v1

    .line 10
    iget-object v2, p0, Lz2/a;->a:Le7/l;

    .line 11
    .line 12
    iget-object v3, v2, Le7/l;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, [J

    .line 15
    .line 16
    iget v2, v2, Le7/l;->b:I

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    array-length v6, v3

    .line 21
    add-int/lit8 v6, v6, -0x2

    .line 22
    .line 23
    if-ge v5, v6, :cond_1

    .line 24
    .line 25
    if-ge v5, v2, :cond_1

    .line 26
    .line 27
    add-int/lit8 v6, v5, 0x2

    .line 28
    .line 29
    aget-wide v7, v3, v6

    .line 30
    .line 31
    long-to-int v9, v7

    .line 32
    and-int/2addr v9, v1

    .line 33
    if-ne v9, p1, :cond_0

    .line 34
    .line 35
    const-wide/high16 v1, 0x2000000000000000L

    .line 36
    .line 37
    or-long/2addr v1, v7

    .line 38
    aput-wide v1, v3, v6

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v5, v5, 0x3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    iget-object p1, p0, Lz2/a;->g:Lcom/baidu/carlife/sdk/internal/a;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_2
    iget-object v1, p0, Lz2/a;->b:Lz2/b;

    .line 51
    .line 52
    iget-wide v1, v1, Lz2/b;->b:J

    .line 53
    .line 54
    const-wide/16 v3, 0x0

    .line 55
    .line 56
    cmp-long v5, v1, v3

    .line 57
    .line 58
    if-gez v5, :cond_3

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    iget-wide v3, p0, Lz2/a;->h:J

    .line 64
    .line 65
    cmp-long v5, v3, v1

    .line 66
    .line 67
    if-nez v5, :cond_4

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    :goto_3
    return-void

    .line 72
    :cond_4
    if-eqz p1, :cond_5

    .line 73
    .line 74
    sget-object v0, Lr1/b;->a:Landroid/os/Handler;

    .line 75
    .line 76
    sget-object v0, Lr1/b;->a:Landroid/os/Handler;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    sget-object p1, Lr1/b;->a:Landroid/os/Handler;

    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    const/16 p1, 0x10

    .line 88
    .line 89
    int-to-long v5, p1

    .line 90
    add-long/2addr v5, v3

    .line 91
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    iput-wide v0, p0, Lz2/a;->h:J

    .line 96
    .line 97
    sub-long/2addr v0, v3

    .line 98
    new-instance p1, Lcom/baidu/carlife/sdk/internal/a;

    .line 99
    .line 100
    const/4 v2, 0x5

    .line 101
    iget-object v3, p0, Lz2/a;->i:Lb1/a;

    .line 102
    .line 103
    invoke-direct {p1, v3, v2}, Lcom/baidu/carlife/sdk/internal/a;-><init>(Lf9/a;I)V

    .line 104
    .line 105
    .line 106
    sget-object v2, Lr1/b;->a:Landroid/os/Handler;

    .line 107
    .line 108
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lz2/a;->g:Lcom/baidu/carlife/sdk/internal/a;

    .line 112
    .line 113
    return-void
.end method

.method public final e(Lq2/h0;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lz2/a;->g(Lq2/h0;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x7fffffff7fffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Ln3/j;->a(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iput-wide v0, p1, Lq2/h0;->e:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p1, Lq2/h0;->f:Z

    .line 20
    .line 21
    invoke-virtual {p1}, Lq2/h0;->z()Lh1/e;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v1, Lh1/e;->c:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-ge v3, v1, :cond_0

    .line 31
    .line 32
    aget-object v4, v2, v3

    .line 33
    .line 34
    check-cast v4, Lq2/h0;

    .line 35
    .line 36
    invoke-virtual {p0, v4, v0}, Lz2/a;->f(Lq2/h0;Z)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lz2/a;->d(Lq2/h0;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Lz2/a;->c(Lq2/h0;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final f(Lq2/h0;Z)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lq2/h0;->F:Lq2/l0;

    .line 6
    .line 7
    iget-object v2, v2, Lq2/l0;->p:Lq2/y0;

    .line 8
    .line 9
    invoke-virtual {v2}, Lq2/y0;->N()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v2}, Lq2/y0;->L()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-wide v4, v1, Lq2/h0;->c:J

    .line 18
    .line 19
    iget-wide v6, v1, Lq2/h0;->d:J

    .line 20
    .line 21
    const/16 v8, 0x20

    .line 22
    .line 23
    shr-long v9, v6, v8

    .line 24
    .line 25
    long-to-int v10, v9

    .line 26
    const-wide v11, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v6, v11

    .line 32
    long-to-int v7, v6

    .line 33
    invoke-static {v1}, Lz2/a;->h(Lq2/h0;)V

    .line 34
    .line 35
    .line 36
    iget-wide v13, v1, Lq2/h0;->c:J

    .line 37
    .line 38
    const/16 v6, 0x20

    .line 39
    .line 40
    const-wide v8, 0x7fffffff7fffffffL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-static {v13, v14, v8, v9}, Ln3/j;->a(JJ)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_0

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p2}, Lz2/a;->b(Lq2/h0;Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    int-to-long v8, v3

    .line 56
    shl-long/2addr v8, v6

    .line 57
    move-wide v15, v11

    .line 58
    int-to-long v11, v2

    .line 59
    and-long/2addr v11, v15

    .line 60
    or-long/2addr v8, v11

    .line 61
    iput-wide v8, v1, Lq2/h0;->d:J

    .line 62
    .line 63
    shr-long v8, v13, v6

    .line 64
    .line 65
    long-to-int v9, v8

    .line 66
    and-long v11, v13, v15

    .line 67
    .line 68
    long-to-int v8, v11

    .line 69
    add-int v11, v9, v3

    .line 70
    .line 71
    add-int v12, v8, v2

    .line 72
    .line 73
    if-nez p2, :cond_1

    .line 74
    .line 75
    invoke-static {v13, v14, v4, v5}, Ln3/j;->a(JJ)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    if-ne v10, v3, :cond_1

    .line 82
    .line 83
    if-ne v7, v2, :cond_1

    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    iget v2, v1, Lq2/h0;->b:I

    .line 87
    .line 88
    iget-object v3, v1, Lq2/h0;->E:Lq2/d1;

    .line 89
    .line 90
    iget-object v4, v0, Lz2/a;->a:Le7/l;

    .line 91
    .line 92
    if-nez p2, :cond_a

    .line 93
    .line 94
    const v7, 0x3ffffff

    .line 95
    .line 96
    .line 97
    and-int v10, v2, v7

    .line 98
    .line 99
    iget-object v13, v4, Le7/l;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v13, [J

    .line 102
    .line 103
    iget v14, v4, Le7/l;->b:I

    .line 104
    .line 105
    const/16 v17, 0x0

    .line 106
    .line 107
    const p2, 0x3ffffff

    .line 108
    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    const/16 v18, 0x20

    .line 112
    .line 113
    :goto_0
    array-length v7, v13

    .line 114
    add-int/lit8 v7, v7, -0x2

    .line 115
    .line 116
    if-ge v6, v7, :cond_a

    .line 117
    .line 118
    if-ge v6, v14, :cond_a

    .line 119
    .line 120
    add-int/lit8 v7, v6, 0x2

    .line 121
    .line 122
    move/from16 v19, v6

    .line 123
    .line 124
    aget-wide v5, v13, v7

    .line 125
    .line 126
    move-wide/from16 v20, v15

    .line 127
    .line 128
    long-to-int v15, v5

    .line 129
    and-int v15, v15, p2

    .line 130
    .line 131
    if-ne v15, v10, :cond_9

    .line 132
    .line 133
    aget-wide v1, v13, v19

    .line 134
    .line 135
    int-to-long v14, v9

    .line 136
    shl-long v14, v14, v18

    .line 137
    .line 138
    move-wide/from16 v22, v5

    .line 139
    .line 140
    int-to-long v5, v8

    .line 141
    and-long v5, v5, v20

    .line 142
    .line 143
    or-long/2addr v5, v14

    .line 144
    aput-wide v5, v13, v19

    .line 145
    .line 146
    add-int/lit8 v6, v19, 0x1

    .line 147
    .line 148
    int-to-long v10, v11

    .line 149
    shl-long v10, v10, v18

    .line 150
    .line 151
    int-to-long v14, v12

    .line 152
    and-long v14, v14, v20

    .line 153
    .line 154
    or-long/2addr v10, v14

    .line 155
    aput-wide v10, v13, v6

    .line 156
    .line 157
    const-wide/high16 v5, 0x2000000000000000L

    .line 158
    .line 159
    or-long v10, v22, v5

    .line 160
    .line 161
    aput-wide v10, v13, v7

    .line 162
    .line 163
    shr-long v10, v1, v18

    .line 164
    .line 165
    long-to-int v3, v10

    .line 166
    sub-int/2addr v9, v3

    .line 167
    long-to-int v2, v1

    .line 168
    sub-int/2addr v8, v2

    .line 169
    if-eqz v9, :cond_2

    .line 170
    .line 171
    const/4 v1, 0x1

    .line 172
    goto :goto_1

    .line 173
    :cond_2
    const/4 v1, 0x0

    .line 174
    :goto_1
    if-eqz v8, :cond_3

    .line 175
    .line 176
    const/4 v2, 0x1

    .line 177
    goto :goto_2

    .line 178
    :cond_3
    const/4 v2, 0x0

    .line 179
    :goto_2
    or-int/2addr v1, v2

    .line 180
    if-eqz v1, :cond_8

    .line 181
    .line 182
    add-int/lit8 v1, v19, 0x3

    .line 183
    .line 184
    const-wide v2, -0xffffffc000001L

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    and-long v10, v22, v2

    .line 190
    .line 191
    and-int v1, v1, p2

    .line 192
    .line 193
    int-to-long v12, v1

    .line 194
    const/16 v1, 0x1a

    .line 195
    .line 196
    shl-long/2addr v12, v1

    .line 197
    or-long/2addr v10, v12

    .line 198
    iget-object v7, v4, Le7/l;->c:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v7, [J

    .line 201
    .line 202
    iget-object v12, v4, Le7/l;->d:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v12, [J

    .line 205
    .line 206
    iget v4, v4, Le7/l;->b:I

    .line 207
    .line 208
    div-int/lit8 v4, v4, 0x3

    .line 209
    .line 210
    aput-wide v10, v12, v17

    .line 211
    .line 212
    const/4 v10, 0x1

    .line 213
    :goto_3
    if-lez v10, :cond_8

    .line 214
    .line 215
    add-int/lit8 v10, v10, -0x1

    .line 216
    .line 217
    aget-wide v13, v12, v10

    .line 218
    .line 219
    long-to-int v11, v13

    .line 220
    and-int v11, v11, p2

    .line 221
    .line 222
    move-wide v15, v2

    .line 223
    const/16 p1, 0x1a

    .line 224
    .line 225
    shr-long v1, v13, p1

    .line 226
    .line 227
    long-to-int v2, v1

    .line 228
    and-int v1, v2, p2

    .line 229
    .line 230
    const/16 v2, 0x34

    .line 231
    .line 232
    shr-long/2addr v13, v2

    .line 233
    long-to-int v3, v13

    .line 234
    const/16 v13, 0x1ff

    .line 235
    .line 236
    and-int/2addr v3, v13

    .line 237
    if-ne v3, v13, :cond_4

    .line 238
    .line 239
    move v3, v4

    .line 240
    goto :goto_4

    .line 241
    :cond_4
    add-int/2addr v3, v1

    .line 242
    :goto_4
    if-ltz v1, :cond_8

    .line 243
    .line 244
    :goto_5
    array-length v14, v7

    .line 245
    add-int/lit8 v14, v14, -0x2

    .line 246
    .line 247
    if-ge v1, v14, :cond_7

    .line 248
    .line 249
    if-ge v1, v3, :cond_7

    .line 250
    .line 251
    add-int/lit8 v14, v1, 0x2

    .line 252
    .line 253
    aget-wide v22, v7, v14

    .line 254
    .line 255
    move/from16 v19, v3

    .line 256
    .line 257
    const/16 v17, 0x34

    .line 258
    .line 259
    shr-long v2, v22, p1

    .line 260
    .line 261
    long-to-int v3, v2

    .line 262
    and-int v2, v3, p2

    .line 263
    .line 264
    if-ne v2, v11, :cond_5

    .line 265
    .line 266
    aget-wide v2, v7, v1

    .line 267
    .line 268
    add-int/lit8 v24, v1, 0x1

    .line 269
    .line 270
    move-wide/from16 v26, v5

    .line 271
    .line 272
    aget-wide v5, v7, v24

    .line 273
    .line 274
    move/from16 v28, v14

    .line 275
    .line 276
    shr-long v13, v2, v18

    .line 277
    .line 278
    long-to-int v14, v13

    .line 279
    add-int/2addr v14, v9

    .line 280
    long-to-int v3, v2

    .line 281
    add-int/2addr v3, v8

    .line 282
    int-to-long v13, v14

    .line 283
    shl-long v13, v13, v18

    .line 284
    .line 285
    int-to-long v2, v3

    .line 286
    and-long v2, v2, v20

    .line 287
    .line 288
    or-long/2addr v2, v13

    .line 289
    aput-wide v2, v7, v1

    .line 290
    .line 291
    shr-long v2, v5, v18

    .line 292
    .line 293
    long-to-int v3, v2

    .line 294
    add-int/2addr v3, v9

    .line 295
    long-to-int v2, v5

    .line 296
    add-int/2addr v2, v8

    .line 297
    int-to-long v5, v3

    .line 298
    shl-long v5, v5, v18

    .line 299
    .line 300
    int-to-long v2, v2

    .line 301
    and-long v2, v2, v20

    .line 302
    .line 303
    or-long/2addr v2, v5

    .line 304
    aput-wide v2, v7, v24

    .line 305
    .line 306
    or-long v2, v22, v26

    .line 307
    .line 308
    aput-wide v2, v7, v28

    .line 309
    .line 310
    shr-long v2, v22, v17

    .line 311
    .line 312
    long-to-int v3, v2

    .line 313
    const/16 v2, 0x1ff

    .line 314
    .line 315
    and-int/2addr v3, v2

    .line 316
    if-lez v3, :cond_6

    .line 317
    .line 318
    add-int/lit8 v3, v10, 0x1

    .line 319
    .line 320
    add-int/lit8 v5, v1, 0x3

    .line 321
    .line 322
    and-long v13, v22, v15

    .line 323
    .line 324
    and-int v5, v5, p2

    .line 325
    .line 326
    int-to-long v5, v5

    .line 327
    shl-long v5, v5, p1

    .line 328
    .line 329
    or-long/2addr v5, v13

    .line 330
    aput-wide v5, v12, v10

    .line 331
    .line 332
    move v10, v3

    .line 333
    goto :goto_6

    .line 334
    :cond_5
    move-wide/from16 v26, v5

    .line 335
    .line 336
    const/16 v2, 0x1ff

    .line 337
    .line 338
    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x3

    .line 339
    .line 340
    move/from16 v3, v19

    .line 341
    .line 342
    move-wide/from16 v5, v26

    .line 343
    .line 344
    const/16 v2, 0x34

    .line 345
    .line 346
    const/16 v13, 0x1ff

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_7
    move-wide/from16 v26, v5

    .line 350
    .line 351
    move-wide v2, v15

    .line 352
    move-wide/from16 v5, v26

    .line 353
    .line 354
    const/16 v1, 0x1a

    .line 355
    .line 356
    goto/16 :goto_3

    .line 357
    .line 358
    :cond_8
    :goto_7
    const/4 v1, 0x1

    .line 359
    goto :goto_9

    .line 360
    :cond_9
    add-int/lit8 v6, v19, 0x3

    .line 361
    .line 362
    move-wide/from16 v15, v20

    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_a
    invoke-virtual {v1}, Lq2/h0;->v()Lq2/h0;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    if-eqz v1, :cond_b

    .line 371
    .line 372
    iget v1, v1, Lq2/h0;->b:I

    .line 373
    .line 374
    move/from16 v23, v1

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_b
    const/4 v1, -0x1

    .line 378
    const/16 v23, -0x1

    .line 379
    .line 380
    :goto_8
    const/16 v1, 0x400

    .line 381
    .line 382
    invoke-virtual {v3, v1}, Lq2/d1;->d(I)Z

    .line 383
    .line 384
    .line 385
    move-result v24

    .line 386
    const/16 v1, 0x10

    .line 387
    .line 388
    invoke-virtual {v3, v1}, Lq2/d1;->d(I)Z

    .line 389
    .line 390
    .line 391
    move-result v25

    .line 392
    move/from16 v18, v2

    .line 393
    .line 394
    move-object/from16 v17, v4

    .line 395
    .line 396
    move/from16 v20, v8

    .line 397
    .line 398
    move/from16 v19, v9

    .line 399
    .line 400
    move/from16 v21, v11

    .line 401
    .line 402
    move/from16 v22, v12

    .line 403
    .line 404
    invoke-virtual/range {v17 .. v25}, Le7/l;->f(IIIIIIZZ)V

    .line 405
    .line 406
    .line 407
    goto :goto_7

    .line 408
    :goto_9
    iput-boolean v1, v0, Lz2/a;->d:Z

    .line 409
    .line 410
    return-void
.end method

.method public final i(Lq2/h0;)V
    .locals 8

    .line 1
    iget p1, p1, Lq2/h0;->b:I

    .line 2
    .line 3
    const v0, 0x3ffffff

    .line 4
    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    iget-object v1, p0, Lz2/a;->a:Le7/l;

    .line 8
    .line 9
    iget-object v2, v1, Le7/l;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, [J

    .line 12
    .line 13
    iget v1, v1, Le7/l;->b:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    array-length v4, v2

    .line 17
    add-int/lit8 v4, v4, -0x2

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    if-ge v3, v1, :cond_1

    .line 23
    .line 24
    add-int/lit8 v4, v3, 0x2

    .line 25
    .line 26
    aget-wide v6, v2, v4

    .line 27
    .line 28
    long-to-int v7, v6

    .line 29
    and-int v6, v7, v0

    .line 30
    .line 31
    if-ne v6, p1, :cond_0

    .line 32
    .line 33
    const-wide/16 v0, -0x1

    .line 34
    .line 35
    aput-wide v0, v2, v3

    .line 36
    .line 37
    add-int/2addr v3, v5

    .line 38
    aput-wide v0, v2, v3

    .line 39
    .line 40
    const-wide v0, 0x1fffffffffffffffL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    aput-wide v0, v2, v4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v3, v3, 0x3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    iput-boolean v5, p0, Lz2/a;->d:Z

    .line 52
    .line 53
    iput-boolean v5, p0, Lz2/a;->f:Z

    .line 54
    .line 55
    return-void
.end method
