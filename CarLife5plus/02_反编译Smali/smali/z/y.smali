.class public abstract Lz/y;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    const/16 v1, 0x12

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    sput v0, Lz/y;->a:F

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lk2/m0;Lk2/w;Lk2/p;Ly8/a;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lz/p;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lz/p;

    .line 11
    .line 12
    iget v3, v2, Lz/p;->k:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lz/p;->k:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lz/p;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ly8/c;-><init>(Lw8/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lz/p;->j:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lz/p;->k:I

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    if-ne v3, v5, :cond_1

    .line 38
    .line 39
    iget v0, v2, Lz/p;->i:F

    .line 40
    .line 41
    iget v3, v2, Lz/p;->h:I

    .line 42
    .line 43
    iget-object v7, v2, Lz/p;->g:Lq8/d;

    .line 44
    .line 45
    iget-object v8, v2, Lz/p;->f:Lg9/w;

    .line 46
    .line 47
    iget-object v9, v2, Lz/p;->e:Lk2/p;

    .line 48
    .line 49
    iget-object v10, v2, Lz/p;->d:Lk2/m0;

    .line 50
    .line 51
    invoke-static {v1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v16, v2

    .line 55
    .line 56
    move v2, v0

    .line 57
    move-object v0, v10

    .line 58
    move-object v10, v8

    .line 59
    move-object v8, v7

    .line 60
    move-object/from16 v7, v16

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    invoke-static {v1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static/range {p0 .. p0}, Lp4/e;->d(Lk2/m0;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    new-instance v1, Lg9/w;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-wide v7, v0, Lk2/w;->a:J

    .line 89
    .line 90
    iput-wide v7, v1, Lg9/w;->a:J

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lk2/m0;->d()Lr2/q2;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget v0, v0, Lk2/w;->i:I

    .line 97
    .line 98
    invoke-static {v3, v0}, Lz/y;->i(Lr2/q2;I)F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    new-instance v3, Lq8/d;

    .line 103
    .line 104
    const-wide/16 v7, 0x0

    .line 105
    .line 106
    invoke-direct {v3, v7, v8, v6}, Lq8/d;-><init>(JLz/w0;)V

    .line 107
    .line 108
    .line 109
    move-object v9, v1

    .line 110
    move-object v8, v3

    .line 111
    const/4 v7, 0x0

    .line 112
    move-object/from16 v1, p2

    .line 113
    .line 114
    move-object v3, v2

    .line 115
    move v2, v0

    .line 116
    move-object/from16 v0, p0

    .line 117
    .line 118
    :goto_1
    iput-object v0, v3, Lz/p;->d:Lk2/m0;

    .line 119
    .line 120
    iput-object v1, v3, Lz/p;->e:Lk2/p;

    .line 121
    .line 122
    iput-object v9, v3, Lz/p;->f:Lg9/w;

    .line 123
    .line 124
    iput-object v8, v3, Lz/p;->g:Lq8/d;

    .line 125
    .line 126
    iput v7, v3, Lz/p;->h:I

    .line 127
    .line 128
    iput v2, v3, Lz/p;->i:F

    .line 129
    .line 130
    iput v5, v3, Lz/p;->k:I

    .line 131
    .line 132
    invoke-virtual {v0, v1, v3}, Lk2/m0;->b(Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    sget-object v11, Lx8/a;->a:Lx8/a;

    .line 137
    .line 138
    if-ne v10, v11, :cond_4

    .line 139
    .line 140
    return-object v11

    .line 141
    :cond_4
    move-object/from16 v16, v9

    .line 142
    .line 143
    move-object v9, v1

    .line 144
    move-object v1, v10

    .line 145
    move-object/from16 v10, v16

    .line 146
    .line 147
    move/from16 v16, v7

    .line 148
    .line 149
    move-object v7, v3

    .line 150
    move/from16 v3, v16

    .line 151
    .line 152
    :goto_2
    check-cast v1, Lk2/o;

    .line 153
    .line 154
    iget-object v1, v1, Lk2/o;->a:Ljava/lang/Object;

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    const/4 v12, 0x0

    .line 161
    :goto_3
    if-ge v12, v11, :cond_6

    .line 162
    .line 163
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    move-object v14, v13

    .line 168
    check-cast v14, Lk2/w;

    .line 169
    .line 170
    iget-wide v14, v14, Lk2/w;->a:J

    .line 171
    .line 172
    iget-wide v4, v10, Lg9/w;->a:J

    .line 173
    .line 174
    invoke-static {v14, v15, v4, v5}, Lk2/v;->d(JJ)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_5

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 182
    .line 183
    const/4 v5, 0x1

    .line 184
    goto :goto_3

    .line 185
    :cond_6
    move-object v13, v6

    .line 186
    :goto_4
    check-cast v13, Lk2/w;

    .line 187
    .line 188
    if-eqz v13, :cond_8

    .line 189
    .line 190
    invoke-static {v13}, Lk2/v;->c(Lk2/w;)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_7

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_7
    invoke-virtual {v8, v13, v2}, Lq8/d;->a(Lk2/w;F)J

    .line 198
    .line 199
    .line 200
    move-result-wide v4

    .line 201
    const-wide v11, 0x7fffffff7fffffffL

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    and-long/2addr v4, v11

    .line 207
    const-wide v11, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    cmp-long v13, v4, v11

    .line 213
    .line 214
    if-eqz v13, :cond_d

    .line 215
    .line 216
    const/4 v3, 0x1

    .line 217
    goto :goto_9

    .line 218
    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    const/4 v5, 0x0

    .line 223
    :goto_6
    if-ge v5, v4, :cond_a

    .line 224
    .line 225
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    move-object v12, v11

    .line 230
    check-cast v12, Lk2/w;

    .line 231
    .line 232
    iget-boolean v12, v12, Lk2/w;->d:Z

    .line 233
    .line 234
    if-eqz v12, :cond_9

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_a
    move-object v11, v6

    .line 241
    :goto_7
    check-cast v11, Lk2/w;

    .line 242
    .line 243
    if-nez v11, :cond_c

    .line 244
    .line 245
    if-eqz v3, :cond_b

    .line 246
    .line 247
    const/4 v4, 0x1

    .line 248
    goto :goto_8

    .line 249
    :cond_b
    const/4 v4, 0x0

    .line 250
    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    return-object v0

    .line 255
    :cond_c
    iget-wide v4, v11, Lk2/w;->a:J

    .line 256
    .line 257
    iput-wide v4, v10, Lg9/w;->a:J

    .line 258
    .line 259
    :cond_d
    :goto_9
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    const/4 v5, 0x0

    .line 264
    :goto_a
    if-ge v5, v4, :cond_f

    .line 265
    .line 266
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    check-cast v11, Lk2/w;

    .line 271
    .line 272
    iget-boolean v11, v11, Lk2/w;->d:Z

    .line 273
    .line 274
    if-eqz v11, :cond_e

    .line 275
    .line 276
    move-object v1, v7

    .line 277
    move v7, v3

    .line 278
    move-object v3, v1

    .line 279
    move-object v1, v9

    .line 280
    move-object v9, v10

    .line 281
    const/4 v5, 0x1

    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_f
    if-eqz v3, :cond_10

    .line 288
    .line 289
    const/4 v4, 0x1

    .line 290
    goto :goto_b

    .line 291
    :cond_10
    const/4 v4, 0x0

    .line 292
    :goto_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    return-object v0
.end method

.method public static final b(Lk2/m0;JLy8/c;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p3, Lz/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lz/q;

    .line 7
    .line 8
    iget v1, v0, Lz/q;->g:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/q;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/q;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lz/q;->f:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/q;->g:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lz/q;->e:Lg9/w;

    .line 36
    .line 37
    iget-object p1, v0, Lz/q;->d:Lk2/m0;

    .line 38
    .line 39
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object v11, p1

    .line 43
    move-object p1, p0

    .line 44
    move-object p0, v11

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p3, p0, Lk2/m0;->f:Lk2/n0;

    .line 58
    .line 59
    iget-object p3, p3, Lk2/n0;->s:Lk2/o;

    .line 60
    .line 61
    invoke-static {p3, p1, p2}, Lz/y;->h(Lk2/o;J)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_3

    .line 66
    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :cond_3
    new-instance p3, Lg9/w;

    .line 70
    .line 71
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-wide p1, p3, Lg9/w;->a:J

    .line 75
    .line 76
    :goto_1
    iput-object p0, v0, Lz/q;->d:Lk2/m0;

    .line 77
    .line 78
    iput-object p3, v0, Lz/q;->e:Lg9/w;

    .line 79
    .line 80
    iput v2, v0, Lz/q;->g:I

    .line 81
    .line 82
    invoke-static {p0, v0}, La2/f;->r(Lk2/m0;Ly8/a;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 87
    .line 88
    if-ne p1, p2, :cond_4

    .line 89
    .line 90
    return-object p2

    .line 91
    :cond_4
    move-object v11, p3

    .line 92
    move-object p3, p1

    .line 93
    move-object p1, v11

    .line 94
    :goto_2
    check-cast p3, Lk2/o;

    .line 95
    .line 96
    iget-object p2, p3, Lk2/o;->a:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v5, 0x0

    .line 104
    :goto_3
    if-ge v5, v1, :cond_6

    .line 105
    .line 106
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    move-object v7, v6

    .line 111
    check-cast v7, Lk2/w;

    .line 112
    .line 113
    iget-wide v7, v7, Lk2/w;->a:J

    .line 114
    .line 115
    iget-wide v9, p1, Lg9/w;->a:J

    .line 116
    .line 117
    invoke-static {v7, v8, v9, v10}, Lk2/v;->d(JJ)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_5

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    move-object v6, v3

    .line 128
    :goto_4
    check-cast v6, Lk2/w;

    .line 129
    .line 130
    if-nez v6, :cond_7

    .line 131
    .line 132
    move-object v6, v3

    .line 133
    goto :goto_7

    .line 134
    :cond_7
    invoke-static {v6}, Lk2/v;->c(Lk2/w;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_b

    .line 139
    .line 140
    iget-object p2, p3, Lk2/o;->a:Ljava/lang/Object;

    .line 141
    .line 142
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    :goto_5
    if-ge v4, p3, :cond_9

    .line 147
    .line 148
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    move-object v5, v1

    .line 153
    check-cast v5, Lk2/w;

    .line 154
    .line 155
    iget-boolean v5, v5, Lk2/w;->d:Z

    .line 156
    .line 157
    if-eqz v5, :cond_8

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_9
    move-object v1, v3

    .line 164
    :goto_6
    check-cast v1, Lk2/w;

    .line 165
    .line 166
    if-nez v1, :cond_a

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_a
    iget-wide p2, v1, Lk2/w;->a:J

    .line 170
    .line 171
    iput-wide p2, p1, Lg9/w;->a:J

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_b
    invoke-static {v6, v2}, Lk2/v;->f(Lk2/w;Z)J

    .line 175
    .line 176
    .line 177
    move-result-wide p2

    .line 178
    const-wide/16 v4, 0x0

    .line 179
    .line 180
    invoke-static {p2, p3, v4, v5}, Lx1/b;->b(JJ)Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-nez p2, :cond_d

    .line 185
    .line 186
    :goto_7
    if-eqz v6, :cond_c

    .line 187
    .line 188
    invoke-virtual {v6}, Lk2/w;->b()Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-nez p0, :cond_c

    .line 193
    .line 194
    return-object v6

    .line 195
    :cond_c
    :goto_8
    return-object v3

    .line 196
    :cond_d
    :goto_9
    move-object p3, p1

    .line 197
    goto :goto_1
.end method

.method public static final c(Lk2/m0;JILw7/a;Ly8/a;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    instance-of v3, v2, Lz/r;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Lz/r;

    .line 11
    .line 12
    iget v4, v3, Lz/r;->k:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Lz/r;->k:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Lz/r;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Ly8/c;-><init>(Lw8/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Lz/r;->j:Ljava/lang/Object;

    .line 30
    .line 31
    iget v4, v3, Lz/r;->k:I

    .line 32
    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    const/4 v7, 0x2

    .line 36
    const/4 v8, 0x1

    .line 37
    const/4 v9, 0x0

    .line 38
    sget-object v10, Lx8/a;->a:Lx8/a;

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    if-eq v4, v8, :cond_2

    .line 43
    .line 44
    if-ne v4, v7, :cond_1

    .line 45
    .line 46
    iget v0, v3, Lz/r;->i:F

    .line 47
    .line 48
    iget-object v1, v3, Lz/r;->h:Lk2/w;

    .line 49
    .line 50
    iget-object v4, v3, Lz/r;->g:Lq8/d;

    .line 51
    .line 52
    iget-object v11, v3, Lz/r;->f:Lg9/w;

    .line 53
    .line 54
    iget-object v12, v3, Lz/r;->e:Lk2/m0;

    .line 55
    .line 56
    iget-object v13, v3, Lz/r;->d:Lf9/n;

    .line 57
    .line 58
    invoke-static {v2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object v2, v12

    .line 62
    move-object v12, v11

    .line 63
    move-object v11, v2

    .line 64
    move-wide v6, v5

    .line 65
    move-object/from16 v17, v9

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    move v5, v0

    .line 69
    move-object v0, v13

    .line 70
    goto/16 :goto_a

    .line 71
    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    iget v0, v3, Lz/r;->i:F

    .line 81
    .line 82
    iget-object v1, v3, Lz/r;->g:Lq8/d;

    .line 83
    .line 84
    iget-object v4, v3, Lz/r;->f:Lg9/w;

    .line 85
    .line 86
    iget-object v11, v3, Lz/r;->e:Lk2/m0;

    .line 87
    .line 88
    iget-object v12, v3, Lz/r;->d:Lf9/n;

    .line 89
    .line 90
    invoke-static {v2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    move-object/from16 v18, v4

    .line 94
    .line 95
    move v4, v0

    .line 96
    move-object v0, v12

    .line 97
    :goto_1
    move-object/from16 v12, v18

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    invoke-static {v2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-object/from16 v2, p0

    .line 104
    .line 105
    iget-object v4, v2, Lk2/m0;->f:Lk2/n0;

    .line 106
    .line 107
    iget-object v4, v4, Lk2/n0;->s:Lk2/o;

    .line 108
    .line 109
    invoke-static {v4, v0, v1}, Lz/y;->h(Lk2/o;J)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_4

    .line 114
    .line 115
    move-object/from16 v17, v9

    .line 116
    .line 117
    goto/16 :goto_b

    .line 118
    .line 119
    :cond_4
    invoke-virtual {v2}, Lk2/m0;->d()Lr2/q2;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    move/from16 v11, p3

    .line 124
    .line 125
    invoke-static {v4, v11}, Lz/y;->i(Lr2/q2;I)F

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    new-instance v11, Lg9/w;

    .line 130
    .line 131
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-wide v0, v11, Lg9/w;->a:J

    .line 135
    .line 136
    new-instance v0, Lq8/d;

    .line 137
    .line 138
    sget-object v1, Lz/w0;->b:Lz/w0;

    .line 139
    .line 140
    invoke-direct {v0, v5, v6, v1}, Lq8/d;-><init>(JLz/w0;)V

    .line 141
    .line 142
    .line 143
    move-object v1, v0

    .line 144
    move-object/from16 v0, p4

    .line 145
    .line 146
    :goto_2
    iput-object v0, v3, Lz/r;->d:Lf9/n;

    .line 147
    .line 148
    iput-object v2, v3, Lz/r;->e:Lk2/m0;

    .line 149
    .line 150
    iput-object v11, v3, Lz/r;->f:Lg9/w;

    .line 151
    .line 152
    iput-object v1, v3, Lz/r;->g:Lq8/d;

    .line 153
    .line 154
    iput-object v9, v3, Lz/r;->h:Lk2/w;

    .line 155
    .line 156
    iput v4, v3, Lz/r;->i:F

    .line 157
    .line 158
    iput v8, v3, Lz/r;->k:I

    .line 159
    .line 160
    invoke-static {v2, v3}, La2/f;->r(Lk2/m0;Ly8/a;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    if-ne v12, v10, :cond_5

    .line 165
    .line 166
    goto/16 :goto_9

    .line 167
    .line 168
    :cond_5
    move-object/from16 v18, v11

    .line 169
    .line 170
    move-object v11, v2

    .line 171
    move-object v2, v12

    .line 172
    goto :goto_1

    .line 173
    :goto_3
    check-cast v2, Lk2/o;

    .line 174
    .line 175
    iget-object v13, v2, Lk2/o;->a:Ljava/lang/Object;

    .line 176
    .line 177
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    const/4 v15, 0x0

    .line 182
    const/4 v8, 0x0

    .line 183
    :goto_4
    if-ge v8, v14, :cond_7

    .line 184
    .line 185
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v16

    .line 189
    move-object/from16 v17, v9

    .line 190
    .line 191
    move-object/from16 v9, v16

    .line 192
    .line 193
    check-cast v9, Lk2/w;

    .line 194
    .line 195
    move/from16 p0, v8

    .line 196
    .line 197
    iget-wide v7, v9, Lk2/w;->a:J

    .line 198
    .line 199
    iget-wide v5, v12, Lg9/w;->a:J

    .line 200
    .line 201
    invoke-static {v7, v8, v5, v6}, Lk2/v;->d(JJ)Z

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-eqz v5, :cond_6

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_6
    add-int/lit8 v8, p0, 0x1

    .line 209
    .line 210
    move-object/from16 v9, v17

    .line 211
    .line 212
    const-wide/16 v5, 0x0

    .line 213
    .line 214
    const/4 v7, 0x2

    .line 215
    goto :goto_4

    .line 216
    :cond_7
    move-object/from16 v17, v9

    .line 217
    .line 218
    move-object/from16 v16, v17

    .line 219
    .line 220
    :goto_5
    move-object/from16 v5, v16

    .line 221
    .line 222
    check-cast v5, Lk2/w;

    .line 223
    .line 224
    if-nez v5, :cond_8

    .line 225
    .line 226
    goto/16 :goto_b

    .line 227
    .line 228
    :cond_8
    invoke-virtual {v5}, Lk2/w;->b()Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_9

    .line 233
    .line 234
    goto/16 :goto_b

    .line 235
    .line 236
    :cond_9
    invoke-static {v5}, Lk2/v;->c(Lk2/w;)Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-eqz v6, :cond_d

    .line 241
    .line 242
    iget-object v2, v2, Lk2/o;->a:Ljava/lang/Object;

    .line 243
    .line 244
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    :goto_6
    if-ge v15, v5, :cond_b

    .line 249
    .line 250
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    move-object v7, v6

    .line 255
    check-cast v7, Lk2/w;

    .line 256
    .line 257
    iget-boolean v7, v7, Lk2/w;->d:Z

    .line 258
    .line 259
    if-eqz v7, :cond_a

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_b
    move-object/from16 v6, v17

    .line 266
    .line 267
    :goto_7
    check-cast v6, Lk2/w;

    .line 268
    .line 269
    if-nez v6, :cond_c

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_c
    iget-wide v5, v6, Lk2/w;->a:J

    .line 273
    .line 274
    iput-wide v5, v12, Lg9/w;->a:J

    .line 275
    .line 276
    const-wide/16 v6, 0x0

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_d
    invoke-virtual {v1, v5, v4}, Lq8/d;->a(Lk2/w;F)J

    .line 280
    .line 281
    .line 282
    move-result-wide v6

    .line 283
    const-wide v8, 0x7fffffff7fffffffL

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    and-long/2addr v8, v6

    .line 289
    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    cmp-long v2, v8, v13

    .line 295
    .line 296
    if-eqz v2, :cond_f

    .line 297
    .line 298
    const/16 v2, 0x20

    .line 299
    .line 300
    shr-long/2addr v6, v2

    .line 301
    long-to-int v2, v6

    .line 302
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    new-instance v6, Ljava/lang/Float;

    .line 307
    .line 308
    invoke-direct {v6, v2}, Ljava/lang/Float;-><init>(F)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v0, v5, v6}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5}, Lk2/w;->b()Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_e

    .line 319
    .line 320
    return-object v5

    .line 321
    :cond_e
    const-wide/16 v6, 0x0

    .line 322
    .line 323
    iput-wide v6, v1, Lq8/d;->a:J

    .line 324
    .line 325
    :goto_8
    move-wide v5, v6

    .line 326
    move-object v2, v11

    .line 327
    move-object v11, v12

    .line 328
    move-object/from16 v9, v17

    .line 329
    .line 330
    const/4 v7, 0x2

    .line 331
    const/4 v8, 0x1

    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :cond_f
    const-wide/16 v6, 0x0

    .line 335
    .line 336
    iput-object v0, v3, Lz/r;->d:Lf9/n;

    .line 337
    .line 338
    iput-object v11, v3, Lz/r;->e:Lk2/m0;

    .line 339
    .line 340
    iput-object v12, v3, Lz/r;->f:Lg9/w;

    .line 341
    .line 342
    iput-object v1, v3, Lz/r;->g:Lq8/d;

    .line 343
    .line 344
    iput-object v5, v3, Lz/r;->h:Lk2/w;

    .line 345
    .line 346
    iput v4, v3, Lz/r;->i:F

    .line 347
    .line 348
    const/4 v2, 0x2

    .line 349
    iput v2, v3, Lz/r;->k:I

    .line 350
    .line 351
    sget-object v8, Lk2/p;->c:Lk2/p;

    .line 352
    .line 353
    invoke-virtual {v11, v8, v3}, Lk2/m0;->b(Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    if-ne v8, v10, :cond_10

    .line 358
    .line 359
    :goto_9
    return-object v10

    .line 360
    :cond_10
    move/from16 v18, v4

    .line 361
    .line 362
    move-object v4, v1

    .line 363
    move-object v1, v5

    .line 364
    move/from16 v5, v18

    .line 365
    .line 366
    :goto_a
    invoke-virtual {v1}, Lk2/w;->b()Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_11

    .line 371
    .line 372
    :goto_b
    return-object v17

    .line 373
    :cond_11
    move-object v1, v4

    .line 374
    move v4, v5

    .line 375
    goto :goto_8
.end method

.method public static final d(Lk2/m0;JLy8/c;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Lz/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lz/s;

    .line 7
    .line 8
    iget v1, v0, Lz/s;->h:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/s;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/s;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lz/s;->g:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/s;->h:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lz/s;->f:Lg9/t;

    .line 36
    .line 37
    iget-object p1, v0, Lz/s;->e:Lg9/x;

    .line 38
    .line 39
    iget-object p2, v0, Lz/s;->d:Lk2/w;

    .line 40
    .line 41
    :try_start_0
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Lk2/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :catch_0
    nop

    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p3, p0, Lk2/m0;->f:Lk2/n0;

    .line 61
    .line 62
    iget-object p3, p3, Lk2/n0;->s:Lk2/o;

    .line 63
    .line 64
    invoke-static {p3, p1, p2}, Lz/y;->h(Lk2/o;J)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_3
    iget-object p3, p0, Lk2/m0;->f:Lk2/n0;

    .line 72
    .line 73
    iget-object p3, p3, Lk2/n0;->s:Lk2/o;

    .line 74
    .line 75
    iget-object p3, p3, Lk2/o;->a:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v4, 0x0

    .line 82
    :goto_1
    if-ge v4, v1, :cond_5

    .line 83
    .line 84
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    move-object v6, v5

    .line 89
    check-cast v6, Lk2/w;

    .line 90
    .line 91
    iget-wide v6, v6, Lk2/w;->a:J

    .line 92
    .line 93
    invoke-static {v6, v7, p1, p2}, Lk2/v;->d(JJ)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object v5, v3

    .line 104
    :goto_2
    move-object p2, v5

    .line 105
    check-cast p2, Lk2/w;

    .line 106
    .line 107
    if-nez p2, :cond_6

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    new-instance p1, Lg9/x;

    .line 111
    .line 112
    invoke-direct {p1}, Lg9/x;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance p3, Lg9/x;

    .line 116
    .line 117
    invoke-direct {p3}, Lg9/x;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object p2, p3, Lg9/x;->b:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-virtual {p0}, Lk2/m0;->d()Lr2/q2;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v1}, Lr2/q2;->b()J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    :try_start_1
    new-instance v1, Lg9/t;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    new-instance v6, Lz/t;

    .line 136
    .line 137
    invoke-direct {v6, v1, p3, p1, v3}, Lz/t;-><init>(Lg9/t;Lg9/x;Lg9/x;Lw8/c;)V

    .line 138
    .line 139
    .line 140
    iput-object p2, v0, Lz/s;->d:Lk2/w;

    .line 141
    .line 142
    iput-object p1, v0, Lz/s;->e:Lg9/x;

    .line 143
    .line 144
    iput-object v1, v0, Lz/s;->f:Lg9/t;

    .line 145
    .line 146
    iput v2, v0, Lz/s;->h:I

    .line 147
    .line 148
    invoke-virtual {p0, v4, v5, v6, v0}, Lk2/m0;->e(JLf9/n;Ly8/c;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0
    :try_end_1
    .catch Lk2/q; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    sget-object p3, Lx8/a;->a:Lx8/a;

    .line 153
    .line 154
    if-ne p0, p3, :cond_7

    .line 155
    .line 156
    return-object p3

    .line 157
    :cond_7
    move-object p0, v1

    .line 158
    :goto_3
    :try_start_2
    iget-boolean p0, p0, Lg9/t;->a:Z

    .line 159
    .line 160
    if-eqz p0, :cond_9

    .line 161
    .line 162
    iget-object p0, p1, Lg9/x;->b:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Lk2/w;
    :try_end_2
    .catch Lk2/q; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    .line 166
    if-nez p0, :cond_8

    .line 167
    .line 168
    return-object p2

    .line 169
    :cond_8
    return-object p0

    .line 170
    :cond_9
    :goto_4
    return-object v3

    .line 171
    :goto_5
    iget-object p0, p1, Lg9/x;->b:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast p0, Lk2/w;

    .line 174
    .line 175
    if-nez p0, :cond_a

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_a
    move-object p2, p0

    .line 179
    :goto_6
    return-object p2
.end method

.method public static e(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;
    .locals 12

    .line 1
    new-instance v0, Lx7/h;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx7/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lu7/i;

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lu7/i;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v9, Lu7/i;

    .line 16
    .line 17
    invoke-direct {v9, v2}, Lu7/i;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v7, Lac/h;

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    invoke-direct {v7, v2, v0}, Lac/h;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v10, Lw0/b1;

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    invoke-direct {v10, v1, v0}, Lw0/b1;-><init>(Lf9/a;I)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lu7/i;

    .line 33
    .line 34
    const/16 v0, 0xa

    .line 35
    .line 36
    invoke-direct {v4, v0}, Lu7/i;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Lg9/w;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lz/u;

    .line 45
    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v8, p1

    .line 49
    invoke-direct/range {v3 .. v11}, Lz/u;-><init>(Lf9/a;Lg9/w;Lz/w0;Lf9/o;Lf9/n;Lf9/a;Lf9/k;Lw8/c;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v3, p2}, Lp4/e;->f(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 57
    .line 58
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 59
    .line 60
    if-ne p0, p2, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object p0, p1

    .line 64
    :goto_0
    if-ne p0, p2, :cond_1

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_1
    return-object p1
.end method

.method public static final f(Lk2/m0;JLf9/k;Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Lz/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lz/w;

    .line 7
    .line 8
    iget v1, v0, Lz/w;->g:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/w;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/w;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lz/w;->f:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/w;->g:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lz/w;->e:Lf9/k;

    .line 35
    .line 36
    iget-object p1, v0, Lz/w;->d:Lk2/m0;

    .line 37
    .line 38
    invoke-static {p4}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object p3, p0

    .line 42
    move-object p0, p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-static {p4}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iput-object p0, v0, Lz/w;->d:Lk2/m0;

    .line 56
    .line 57
    iput-object p3, v0, Lz/w;->e:Lf9/k;

    .line 58
    .line 59
    iput v2, v0, Lz/w;->g:I

    .line 60
    .line 61
    invoke-static {p0, p1, p2, v0}, Lz/y;->b(Lk2/m0;JLy8/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 66
    .line 67
    if-ne p4, p1, :cond_3

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_3
    :goto_2
    check-cast p4, Lk2/w;

    .line 71
    .line 72
    if-nez p4, :cond_4

    .line 73
    .line 74
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_4
    invoke-static {p4}, Lk2/v;->c(Lk2/w;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_5
    invoke-interface {p3, p4}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-wide p1, p4, Lk2/w;->a:J

    .line 90
    .line 91
    goto :goto_1
.end method

.method public static final g(Lk2/m0;JLs0/d;Ly8/a;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Lz/x;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lz/x;

    .line 9
    .line 10
    iget v2, v1, Lz/x;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lz/x;->j:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lz/x;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ly8/c;-><init>(Lw8/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lz/x;->i:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lz/x;->j:I

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v5, :cond_1

    .line 35
    .line 36
    iget-object v2, v1, Lz/x;->h:Lg9/w;

    .line 37
    .line 38
    iget-object v6, v1, Lz/x;->g:Lk2/m0;

    .line 39
    .line 40
    iget-object v7, v1, Lz/x;->f:Lz/w0;

    .line 41
    .line 42
    iget-object v8, v1, Lz/x;->e:Lk2/m0;

    .line 43
    .line 44
    iget-object v9, v1, Lz/x;->d:Lf9/k;

    .line 45
    .line 46
    invoke-static {v0}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object/from16 v16, v2

    .line 50
    .line 51
    move-object v2, v1

    .line 52
    move-object v1, v9

    .line 53
    move-object/from16 v9, v16

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    invoke-static {v0}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object/from16 v0, p0

    .line 68
    .line 69
    iget-object v2, v0, Lk2/m0;->f:Lk2/n0;

    .line 70
    .line 71
    iget-object v2, v2, Lk2/n0;->s:Lk2/o;

    .line 72
    .line 73
    move-wide/from16 v6, p1

    .line 74
    .line 75
    invoke-static {v2, v6, v7}, Lz/y;->h(Lk2/o;J)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    :goto_1
    const/4 v4, 0x0

    .line 82
    goto/16 :goto_d

    .line 83
    .line 84
    :cond_3
    sget-object v2, Lz/w0;->b:Lz/w0;

    .line 85
    .line 86
    move-object v8, v2

    .line 87
    move-object v2, v1

    .line 88
    move-object/from16 v1, p3

    .line 89
    .line 90
    :goto_2
    new-instance v9, Lg9/w;

    .line 91
    .line 92
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-wide v6, v9, Lg9/w;->a:J

    .line 96
    .line 97
    move-object v6, v0

    .line 98
    move-object v7, v8

    .line 99
    :goto_3
    iput-object v1, v2, Lz/x;->d:Lf9/k;

    .line 100
    .line 101
    iput-object v0, v2, Lz/x;->e:Lk2/m0;

    .line 102
    .line 103
    iput-object v7, v2, Lz/x;->f:Lz/w0;

    .line 104
    .line 105
    iput-object v6, v2, Lz/x;->g:Lk2/m0;

    .line 106
    .line 107
    iput-object v9, v2, Lz/x;->h:Lg9/w;

    .line 108
    .line 109
    iput v5, v2, Lz/x;->j:I

    .line 110
    .line 111
    invoke-static {v6, v2}, La2/f;->r(Lk2/m0;Ly8/a;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    sget-object v10, Lx8/a;->a:Lx8/a;

    .line 116
    .line 117
    if-ne v8, v10, :cond_4

    .line 118
    .line 119
    return-object v10

    .line 120
    :cond_4
    move-object/from16 v16, v8

    .line 121
    .line 122
    move-object v8, v0

    .line 123
    move-object/from16 v0, v16

    .line 124
    .line 125
    :goto_4
    check-cast v0, Lk2/o;

    .line 126
    .line 127
    iget-object v10, v0, Lk2/o;->a:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    const/4 v12, 0x0

    .line 134
    :goto_5
    if-ge v12, v11, :cond_6

    .line 135
    .line 136
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    move-object v14, v13

    .line 141
    check-cast v14, Lk2/w;

    .line 142
    .line 143
    iget-wide v14, v14, Lk2/w;->a:J

    .line 144
    .line 145
    iget-wide v3, v9, Lg9/w;->a:J

    .line 146
    .line 147
    invoke-static {v14, v15, v3, v4}, Lk2/v;->d(JJ)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    const/4 v13, 0x0

    .line 158
    :goto_6
    check-cast v13, Lk2/w;

    .line 159
    .line 160
    if-nez v13, :cond_7

    .line 161
    .line 162
    const/4 v13, 0x0

    .line 163
    goto :goto_c

    .line 164
    :cond_7
    invoke-static {v13}, Lk2/v;->c(Lk2/w;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_b

    .line 169
    .line 170
    iget-object v0, v0, Lk2/o;->a:Ljava/lang/Object;

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    const/4 v4, 0x0

    .line 177
    :goto_7
    if-ge v4, v3, :cond_9

    .line 178
    .line 179
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    move-object v11, v10

    .line 184
    check-cast v11, Lk2/w;

    .line 185
    .line 186
    iget-boolean v11, v11, Lk2/w;->d:Z

    .line 187
    .line 188
    if-eqz v11, :cond_8

    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_9
    const/4 v10, 0x0

    .line 195
    :goto_8
    check-cast v10, Lk2/w;

    .line 196
    .line 197
    if-nez v10, :cond_a

    .line 198
    .line 199
    goto :goto_c

    .line 200
    :cond_a
    iget-wide v3, v10, Lk2/w;->a:J

    .line 201
    .line 202
    iput-wide v3, v9, Lg9/w;->a:J

    .line 203
    .line 204
    goto :goto_b

    .line 205
    :cond_b
    invoke-static {v13, v5}, Lk2/v;->f(Lk2/w;Z)J

    .line 206
    .line 207
    .line 208
    move-result-wide v3

    .line 209
    if-nez v7, :cond_c

    .line 210
    .line 211
    invoke-static {v3, v4}, Lx1/b;->c(J)F

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    goto :goto_a

    .line 216
    :cond_c
    sget-object v0, Lz/w0;->a:Lz/w0;

    .line 217
    .line 218
    if-ne v7, v0, :cond_d

    .line 219
    .line 220
    const-wide v10, 0xffffffffL

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    and-long/2addr v3, v10

    .line 226
    :goto_9
    long-to-int v0, v3

    .line 227
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    goto :goto_a

    .line 232
    :cond_d
    const/16 v0, 0x20

    .line 233
    .line 234
    shr-long/2addr v3, v0

    .line 235
    goto :goto_9

    .line 236
    :goto_a
    const/4 v3, 0x0

    .line 237
    cmpg-float v0, v0, v3

    .line 238
    .line 239
    if-nez v0, :cond_e

    .line 240
    .line 241
    :goto_b
    move-object v0, v8

    .line 242
    goto/16 :goto_3

    .line 243
    .line 244
    :cond_e
    :goto_c
    if-nez v13, :cond_f

    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_f
    invoke-virtual {v13}, Lk2/w;->b()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_10

    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :cond_10
    invoke-static {v13}, Lk2/v;->c(Lk2/w;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_12

    .line 261
    .line 262
    move-object v4, v13

    .line 263
    :goto_d
    if-eqz v4, :cond_11

    .line 264
    .line 265
    const/4 v3, 0x1

    .line 266
    goto :goto_e

    .line 267
    :cond_11
    const/4 v3, 0x0

    .line 268
    :goto_e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    return-object v0

    .line 273
    :cond_12
    invoke-interface {v1, v13}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    iget-wide v3, v13, Lk2/w;->a:J

    .line 277
    .line 278
    move-object v0, v8

    .line 279
    move-object v8, v7

    .line 280
    move-wide v6, v3

    .line 281
    goto/16 :goto_2
.end method

.method public static final h(Lk2/o;J)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lk2/o;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    move-object v4, v3

    .line 16
    check-cast v4, Lk2/w;

    .line 17
    .line 18
    iget-wide v4, v4, Lk2/w;->a:J

    .line 19
    .line 20
    invoke-static {v4, v5, p1, p2}, Lk2/v;->d(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :goto_1
    check-cast v3, Lk2/w;

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-boolean p1, v3, Lk2/w;->d:Z

    .line 37
    .line 38
    if-ne p1, p0, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_2
    xor-int/2addr p0, v1

    .line 42
    return p0
.end method

.method public static final i(Lr2/q2;I)F
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-interface {p0}, Lr2/q2;->f()F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    sget p1, Lz/y;->a:F

    .line 9
    .line 10
    mul-float p0, p0, p1

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lr2/q2;->f()F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
