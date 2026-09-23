.class public final Lr2/s1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/p1;


# instance fields
.field public a:Lb2/c;

.field public final b:Ly1/v;

.field public final c:Lr2/u;

.field public d:Lf9/n;

.field public e:Lf9/a;

.field public f:J

.field public g:Z

.field public final h:[F

.field public i:[F

.field public j:Z

.field public k:Ln3/c;

.field public l:Ln3/m;

.field public final m:La2/c;

.field public n:I

.field public o:J

.field public p:Ly1/h0;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public final u:Lb2/a;


# direct methods
.method public constructor <init>(Lb2/c;Ly1/v;Lr2/u;Lf9/n;Lf9/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/s1;->a:Lb2/c;

    .line 5
    .line 6
    iput-object p2, p0, Lr2/s1;->b:Ly1/v;

    .line 7
    .line 8
    iput-object p3, p0, Lr2/s1;->c:Lr2/u;

    .line 9
    .line 10
    iput-object p4, p0, Lr2/s1;->d:Lf9/n;

    .line 11
    .line 12
    iput-object p5, p0, Lr2/s1;->e:Lf9/a;

    .line 13
    .line 14
    const p1, 0x7fffffff

    .line 15
    .line 16
    .line 17
    int-to-long p1, p1

    .line 18
    const/16 p3, 0x20

    .line 19
    .line 20
    shl-long p3, p1, p3

    .line 21
    .line 22
    const-wide v0, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr p1, v0

    .line 28
    or-long/2addr p1, p3

    .line 29
    iput-wide p1, p0, Lr2/s1;->f:J

    .line 30
    .line 31
    invoke-static {}, Ly1/a0;->a()[F

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lr2/s1;->h:[F

    .line 36
    .line 37
    invoke-static {}, Lg5/a;->h()Ln3/d;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lr2/s1;->k:Ln3/c;

    .line 42
    .line 43
    sget-object p1, Ln3/m;->a:Ln3/m;

    .line 44
    .line 45
    iput-object p1, p0, Lr2/s1;->l:Ln3/m;

    .line 46
    .line 47
    new-instance p1, La2/c;

    .line 48
    .line 49
    invoke-direct {p1}, La2/c;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lr2/s1;->m:La2/c;

    .line 53
    .line 54
    sget-wide p1, Ly1/p0;->a:J

    .line 55
    .line 56
    iput-wide p1, p0, Lr2/s1;->o:J

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lr2/s1;->s:Z

    .line 60
    .line 61
    new-instance p1, Lb2/a;

    .line 62
    .line 63
    const/16 p2, 0xb

    .line 64
    .line 65
    invoke-direct {p1, p2, p0}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lr2/s1;->u:Lb2/a;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final a([F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr2/s1;->m()[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Ly1/a0;->e([F[F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Lx1/a;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lr2/s1;->l()[F

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lr2/s1;->m()[F

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    iget-boolean v0, p0, Lr2/s1;->s:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    iput p2, p1, Lx1/a;->a:F

    .line 20
    .line 21
    iput p2, p1, Lx1/a;->b:F

    .line 22
    .line 23
    iput p2, p1, Lx1/a;->c:F

    .line 24
    .line 25
    iput p2, p1, Lx1/a;->d:F

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-static {p2, p1}, Ly1/a0;->c([FLx1/a;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public final c(Ly1/i0;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Ly1/i0;->a:I

    .line 6
    .line 7
    iget v3, v0, Lr2/s1;->n:I

    .line 8
    .line 9
    or-int/2addr v2, v3

    .line 10
    iget-object v3, v1, Ly1/i0;->o:Ln3/m;

    .line 11
    .line 12
    iput-object v3, v0, Lr2/s1;->l:Ln3/m;

    .line 13
    .line 14
    iget-object v3, v1, Ly1/i0;->n:Ln3/c;

    .line 15
    .line 16
    iput-object v3, v0, Lr2/s1;->k:Ln3/c;

    .line 17
    .line 18
    and-int/lit16 v3, v2, 0x1000

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-wide v4, v1, Ly1/i0;->j:J

    .line 23
    .line 24
    iput-wide v4, v0, Lr2/s1;->o:J

    .line 25
    .line 26
    :cond_0
    and-int/lit8 v4, v2, 0x1

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 31
    .line 32
    iget v5, v1, Ly1/i0;->b:F

    .line 33
    .line 34
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 35
    .line 36
    invoke-interface {v4}, Lb2/e;->o()F

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    cmpg-float v6, v6, v5

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v4, v5}, Lb2/e;->l(F)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    and-int/lit8 v4, v2, 0x2

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 53
    .line 54
    iget v5, v1, Ly1/i0;->c:F

    .line 55
    .line 56
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 57
    .line 58
    invoke-interface {v4}, Lb2/e;->M()F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    cmpg-float v6, v6, v5

    .line 63
    .line 64
    if-nez v6, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-interface {v4, v5}, Lb2/e;->e(F)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_1
    and-int/lit8 v4, v2, 0x4

    .line 71
    .line 72
    if-eqz v4, :cond_6

    .line 73
    .line 74
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 75
    .line 76
    iget v5, v1, Ly1/i0;->d:F

    .line 77
    .line 78
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 79
    .line 80
    invoke-interface {v4}, Lb2/e;->a()F

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    cmpg-float v6, v6, v5

    .line 85
    .line 86
    if-nez v6, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-interface {v4, v5}, Lb2/e;->h(F)V

    .line 90
    .line 91
    .line 92
    :cond_6
    :goto_2
    and-int/lit8 v4, v2, 0x8

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    if-eqz v4, :cond_8

    .line 96
    .line 97
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 98
    .line 99
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 100
    .line 101
    invoke-interface {v4}, Lb2/e;->E()F

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    cmpg-float v6, v6, v5

    .line 106
    .line 107
    if-nez v6, :cond_7

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_7
    invoke-interface {v4}, Lb2/e;->m()V

    .line 111
    .line 112
    .line 113
    :cond_8
    :goto_3
    and-int/lit8 v4, v2, 0x10

    .line 114
    .line 115
    if-eqz v4, :cond_a

    .line 116
    .line 117
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 118
    .line 119
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 120
    .line 121
    invoke-interface {v4}, Lb2/e;->A()F

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    cmpg-float v6, v6, v5

    .line 126
    .line 127
    if-nez v6, :cond_9

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_9
    invoke-interface {v4}, Lb2/e;->i()V

    .line 131
    .line 132
    .line 133
    :cond_a
    :goto_4
    and-int/lit8 v4, v2, 0x20

    .line 134
    .line 135
    const/4 v6, 0x1

    .line 136
    if-eqz v4, :cond_c

    .line 137
    .line 138
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 139
    .line 140
    iget v7, v1, Ly1/i0;->e:F

    .line 141
    .line 142
    iget-object v8, v4, Lb2/c;->a:Lb2/e;

    .line 143
    .line 144
    invoke-interface {v8}, Lb2/e;->L()F

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    cmpg-float v9, v9, v7

    .line 149
    .line 150
    if-nez v9, :cond_b

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_b
    invoke-interface {v8, v7}, Lb2/e;->p(F)V

    .line 154
    .line 155
    .line 156
    iput-boolean v6, v4, Lb2/c;->g:Z

    .line 157
    .line 158
    invoke-virtual {v4}, Lb2/c;->a()V

    .line 159
    .line 160
    .line 161
    :goto_5
    iget v4, v1, Ly1/i0;->e:F

    .line 162
    .line 163
    cmpl-float v4, v4, v5

    .line 164
    .line 165
    if-lez v4, :cond_c

    .line 166
    .line 167
    iget-boolean v4, v0, Lr2/s1;->t:Z

    .line 168
    .line 169
    if-nez v4, :cond_c

    .line 170
    .line 171
    iget-object v4, v0, Lr2/s1;->e:Lf9/a;

    .line 172
    .line 173
    if-eqz v4, :cond_c

    .line 174
    .line 175
    invoke-interface {v4}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    :cond_c
    and-int/lit8 v4, v2, 0x40

    .line 179
    .line 180
    if-eqz v4, :cond_d

    .line 181
    .line 182
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 183
    .line 184
    iget-wide v7, v1, Ly1/i0;->f:J

    .line 185
    .line 186
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 187
    .line 188
    invoke-interface {v4}, Lb2/e;->y()J

    .line 189
    .line 190
    .line 191
    move-result-wide v9

    .line 192
    invoke-static {v7, v8, v9, v10}, Ly1/q;->c(JJ)Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-nez v9, :cond_d

    .line 197
    .line 198
    invoke-interface {v4, v7, v8}, Lb2/e;->C(J)V

    .line 199
    .line 200
    .line 201
    :cond_d
    and-int/lit16 v4, v2, 0x80

    .line 202
    .line 203
    if-eqz v4, :cond_e

    .line 204
    .line 205
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 206
    .line 207
    iget-wide v7, v1, Ly1/i0;->g:J

    .line 208
    .line 209
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 210
    .line 211
    invoke-interface {v4}, Lb2/e;->B()J

    .line 212
    .line 213
    .line 214
    move-result-wide v9

    .line 215
    invoke-static {v7, v8, v9, v10}, Ly1/q;->c(JJ)Z

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    if-nez v9, :cond_e

    .line 220
    .line 221
    invoke-interface {v4, v7, v8}, Lb2/e;->I(J)V

    .line 222
    .line 223
    .line 224
    :cond_e
    and-int/lit16 v4, v2, 0x400

    .line 225
    .line 226
    if-eqz v4, :cond_10

    .line 227
    .line 228
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 229
    .line 230
    iget v7, v1, Ly1/i0;->h:F

    .line 231
    .line 232
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 233
    .line 234
    invoke-interface {v4}, Lb2/e;->w()F

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    cmpg-float v8, v8, v7

    .line 239
    .line 240
    if-nez v8, :cond_f

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_f
    invoke-interface {v4, v7}, Lb2/e;->b(F)V

    .line 244
    .line 245
    .line 246
    :cond_10
    :goto_6
    and-int/lit16 v4, v2, 0x100

    .line 247
    .line 248
    if-eqz v4, :cond_12

    .line 249
    .line 250
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 251
    .line 252
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 253
    .line 254
    invoke-interface {v4}, Lb2/e;->G()F

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    cmpg-float v7, v7, v5

    .line 259
    .line 260
    if-nez v7, :cond_11

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_11
    invoke-interface {v4}, Lb2/e;->g()V

    .line 264
    .line 265
    .line 266
    :cond_12
    :goto_7
    and-int/lit16 v4, v2, 0x200

    .line 267
    .line 268
    if-eqz v4, :cond_14

    .line 269
    .line 270
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 271
    .line 272
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 273
    .line 274
    invoke-interface {v4}, Lb2/e;->u()F

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    cmpg-float v7, v7, v5

    .line 279
    .line 280
    if-nez v7, :cond_13

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_13
    invoke-interface {v4}, Lb2/e;->j()V

    .line 284
    .line 285
    .line 286
    :cond_14
    :goto_8
    and-int/lit16 v4, v2, 0x800

    .line 287
    .line 288
    if-eqz v4, :cond_16

    .line 289
    .line 290
    iget-object v4, v0, Lr2/s1;->a:Lb2/c;

    .line 291
    .line 292
    iget v7, v1, Ly1/i0;->i:F

    .line 293
    .line 294
    iget-object v4, v4, Lb2/c;->a:Lb2/e;

    .line 295
    .line 296
    invoke-interface {v4}, Lb2/e;->D()F

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    cmpg-float v8, v8, v7

    .line 301
    .line 302
    if-nez v8, :cond_15

    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_15
    invoke-interface {v4, v7}, Lb2/e;->n(F)V

    .line 306
    .line 307
    .line 308
    :cond_16
    :goto_9
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    const-wide v9, 0xffffffffL

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    const/16 v4, 0x20

    .line 319
    .line 320
    if-eqz v3, :cond_18

    .line 321
    .line 322
    iget-wide v11, v0, Lr2/s1;->o:J

    .line 323
    .line 324
    sget-wide v13, Ly1/p0;->a:J

    .line 325
    .line 326
    cmp-long v3, v11, v13

    .line 327
    .line 328
    if-nez v3, :cond_17

    .line 329
    .line 330
    iget-object v3, v0, Lr2/s1;->a:Lb2/c;

    .line 331
    .line 332
    iget-wide v11, v3, Lb2/c;->v:J

    .line 333
    .line 334
    invoke-static {v11, v12, v7, v8}, Lx1/b;->b(JJ)Z

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    if-nez v11, :cond_18

    .line 339
    .line 340
    iput-wide v7, v3, Lb2/c;->v:J

    .line 341
    .line 342
    iget-object v3, v3, Lb2/c;->a:Lb2/e;

    .line 343
    .line 344
    invoke-interface {v3, v7, v8}, Lb2/e;->x(J)V

    .line 345
    .line 346
    .line 347
    goto :goto_a

    .line 348
    :cond_17
    iget-object v3, v0, Lr2/s1;->a:Lb2/c;

    .line 349
    .line 350
    invoke-static {v11, v12}, Ly1/p0;->a(J)F

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    iget-wide v12, v0, Lr2/s1;->f:J

    .line 355
    .line 356
    shr-long/2addr v12, v4

    .line 357
    long-to-int v13, v12

    .line 358
    int-to-float v12, v13

    .line 359
    mul-float v11, v11, v12

    .line 360
    .line 361
    iget-wide v12, v0, Lr2/s1;->o:J

    .line 362
    .line 363
    invoke-static {v12, v13}, Ly1/p0;->b(J)F

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    iget-wide v13, v0, Lr2/s1;->f:J

    .line 368
    .line 369
    and-long/2addr v13, v9

    .line 370
    long-to-int v14, v13

    .line 371
    int-to-float v13, v14

    .line 372
    mul-float v12, v12, v13

    .line 373
    .line 374
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 375
    .line 376
    .line 377
    move-result v11

    .line 378
    int-to-long v13, v11

    .line 379
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 380
    .line 381
    .line 382
    move-result v11

    .line 383
    int-to-long v11, v11

    .line 384
    shl-long/2addr v13, v4

    .line 385
    and-long/2addr v11, v9

    .line 386
    or-long/2addr v11, v13

    .line 387
    iget-wide v13, v3, Lb2/c;->v:J

    .line 388
    .line 389
    invoke-static {v13, v14, v11, v12}, Lx1/b;->b(JJ)Z

    .line 390
    .line 391
    .line 392
    move-result v13

    .line 393
    if-nez v13, :cond_18

    .line 394
    .line 395
    iput-wide v11, v3, Lb2/c;->v:J

    .line 396
    .line 397
    iget-object v3, v3, Lb2/c;->a:Lb2/e;

    .line 398
    .line 399
    invoke-interface {v3, v11, v12}, Lb2/e;->x(J)V

    .line 400
    .line 401
    .line 402
    :cond_18
    :goto_a
    and-int/lit16 v3, v2, 0x4000

    .line 403
    .line 404
    if-eqz v3, :cond_19

    .line 405
    .line 406
    iget-object v3, v0, Lr2/s1;->a:Lb2/c;

    .line 407
    .line 408
    iget-boolean v11, v1, Ly1/i0;->l:Z

    .line 409
    .line 410
    iget-boolean v12, v3, Lb2/c;->w:Z

    .line 411
    .line 412
    if-eq v12, v11, :cond_19

    .line 413
    .line 414
    iput-boolean v11, v3, Lb2/c;->w:Z

    .line 415
    .line 416
    iput-boolean v6, v3, Lb2/c;->g:Z

    .line 417
    .line 418
    invoke-virtual {v3}, Lb2/c;->a()V

    .line 419
    .line 420
    .line 421
    :cond_19
    const/high16 v3, 0x20000

    .line 422
    .line 423
    and-int/2addr v3, v2

    .line 424
    if-eqz v3, :cond_1a

    .line 425
    .line 426
    iget-object v3, v0, Lr2/s1;->a:Lb2/c;

    .line 427
    .line 428
    iget-object v3, v3, Lb2/c;->a:Lb2/e;

    .line 429
    .line 430
    :cond_1a
    const/high16 v3, 0x40000

    .line 431
    .line 432
    and-int/2addr v3, v2

    .line 433
    const/4 v11, 0x0

    .line 434
    if-eqz v3, :cond_1b

    .line 435
    .line 436
    iget-object v3, v0, Lr2/s1;->a:Lb2/c;

    .line 437
    .line 438
    iget-object v3, v3, Lb2/c;->a:Lb2/e;

    .line 439
    .line 440
    invoke-interface {v3}, Lb2/e;->s()Ly1/k;

    .line 441
    .line 442
    .line 443
    move-result-object v12

    .line 444
    invoke-static {v12, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v12

    .line 448
    if-nez v12, :cond_1b

    .line 449
    .line 450
    invoke-interface {v3}, Lb2/e;->k()V

    .line 451
    .line 452
    .line 453
    :cond_1b
    const/high16 v3, 0x80000

    .line 454
    .line 455
    and-int/2addr v3, v2

    .line 456
    if-eqz v3, :cond_1d

    .line 457
    .line 458
    iget-object v3, v0, Lr2/s1;->a:Lb2/c;

    .line 459
    .line 460
    iget v12, v1, Ly1/i0;->p:I

    .line 461
    .line 462
    iget-object v3, v3, Lb2/c;->a:Lb2/e;

    .line 463
    .line 464
    invoke-interface {v3}, Lb2/e;->N()I

    .line 465
    .line 466
    .line 467
    move-result v13

    .line 468
    if-ne v13, v12, :cond_1c

    .line 469
    .line 470
    goto :goto_b

    .line 471
    :cond_1c
    invoke-interface {v3, v12}, Lb2/e;->c(I)V

    .line 472
    .line 473
    .line 474
    :cond_1d
    :goto_b
    const v3, 0x8000

    .line 475
    .line 476
    .line 477
    and-int/2addr v3, v2

    .line 478
    const/4 v12, 0x0

    .line 479
    if-eqz v3, :cond_1f

    .line 480
    .line 481
    iget-object v3, v0, Lr2/s1;->a:Lb2/c;

    .line 482
    .line 483
    iget-object v3, v3, Lb2/c;->a:Lb2/e;

    .line 484
    .line 485
    invoke-interface {v3}, Lb2/e;->r()I

    .line 486
    .line 487
    .line 488
    move-result v13

    .line 489
    if-nez v13, :cond_1e

    .line 490
    .line 491
    goto :goto_c

    .line 492
    :cond_1e
    invoke-interface {v3, v12}, Lb2/e;->H(I)V

    .line 493
    .line 494
    .line 495
    :cond_1f
    :goto_c
    and-int/lit16 v3, v2, 0x1f1b

    .line 496
    .line 497
    if-eqz v3, :cond_20

    .line 498
    .line 499
    iput-boolean v6, v0, Lr2/s1;->q:Z

    .line 500
    .line 501
    iput-boolean v6, v0, Lr2/s1;->r:Z

    .line 502
    .line 503
    :cond_20
    iget-object v3, v0, Lr2/s1;->p:Ly1/h0;

    .line 504
    .line 505
    iget-object v13, v1, Ly1/i0;->q:Ly1/h0;

    .line 506
    .line 507
    invoke-static {v3, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    if-nez v3, :cond_26

    .line 512
    .line 513
    iget-object v3, v1, Ly1/i0;->q:Ly1/h0;

    .line 514
    .line 515
    iput-object v3, v0, Lr2/s1;->p:Ly1/h0;

    .line 516
    .line 517
    if-nez v3, :cond_21

    .line 518
    .line 519
    goto/16 :goto_e

    .line 520
    .line 521
    :cond_21
    iget-object v13, v0, Lr2/s1;->a:Lb2/c;

    .line 522
    .line 523
    instance-of v14, v3, Ly1/c0;

    .line 524
    .line 525
    if-eqz v14, :cond_22

    .line 526
    .line 527
    move-object v7, v3

    .line 528
    check-cast v7, Ly1/c0;

    .line 529
    .line 530
    iget-object v7, v7, Ly1/c0;->e:Lx1/c;

    .line 531
    .line 532
    iget v8, v7, Lx1/c;->a:F

    .line 533
    .line 534
    iget v11, v7, Lx1/c;->b:F

    .line 535
    .line 536
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 537
    .line 538
    .line 539
    move-result v12

    .line 540
    int-to-long v14, v12

    .line 541
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 542
    .line 543
    .line 544
    move-result v12

    .line 545
    move-wide/from16 v16, v9

    .line 546
    .line 547
    int-to-long v9, v12

    .line 548
    shl-long/2addr v14, v4

    .line 549
    and-long v9, v9, v16

    .line 550
    .line 551
    or-long/2addr v9, v14

    .line 552
    iget v12, v7, Lx1/c;->c:F

    .line 553
    .line 554
    sub-float/2addr v12, v8

    .line 555
    iget v7, v7, Lx1/c;->d:F

    .line 556
    .line 557
    sub-float/2addr v7, v11

    .line 558
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 559
    .line 560
    .line 561
    move-result v8

    .line 562
    int-to-long v11, v8

    .line 563
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 564
    .line 565
    .line 566
    move-result v7

    .line 567
    int-to-long v7, v7

    .line 568
    shl-long/2addr v11, v4

    .line 569
    and-long v7, v7, v16

    .line 570
    .line 571
    or-long v17, v11, v7

    .line 572
    .line 573
    const/4 v14, 0x0

    .line 574
    move-wide v15, v9

    .line 575
    invoke-virtual/range {v13 .. v18}, Lb2/c;->f(FJJ)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_d

    .line 579
    .line 580
    :cond_22
    move-wide/from16 v16, v9

    .line 581
    .line 582
    instance-of v9, v3, Ly1/b0;

    .line 583
    .line 584
    const-wide/16 v14, 0x0

    .line 585
    .line 586
    if-eqz v9, :cond_23

    .line 587
    .line 588
    move-object v4, v3

    .line 589
    check-cast v4, Ly1/b0;

    .line 590
    .line 591
    iget-object v4, v4, Ly1/b0;->e:Ly1/e0;

    .line 592
    .line 593
    iput-object v11, v13, Lb2/c;->k:Ly1/h0;

    .line 594
    .line 595
    iput-wide v7, v13, Lb2/c;->i:J

    .line 596
    .line 597
    iput-wide v14, v13, Lb2/c;->h:J

    .line 598
    .line 599
    iput v5, v13, Lb2/c;->j:F

    .line 600
    .line 601
    iput-boolean v6, v13, Lb2/c;->g:Z

    .line 602
    .line 603
    iput-boolean v12, v13, Lb2/c;->n:Z

    .line 604
    .line 605
    iput-object v4, v13, Lb2/c;->l:Ly1/e0;

    .line 606
    .line 607
    invoke-virtual {v13}, Lb2/c;->a()V

    .line 608
    .line 609
    .line 610
    goto :goto_d

    .line 611
    :cond_23
    instance-of v9, v3, Ly1/d0;

    .line 612
    .line 613
    if-eqz v9, :cond_25

    .line 614
    .line 615
    move-object v9, v3

    .line 616
    check-cast v9, Ly1/d0;

    .line 617
    .line 618
    iget-object v10, v9, Ly1/d0;->f:Ly1/h;

    .line 619
    .line 620
    if-eqz v10, :cond_24

    .line 621
    .line 622
    iput-object v11, v13, Lb2/c;->k:Ly1/h0;

    .line 623
    .line 624
    iput-wide v7, v13, Lb2/c;->i:J

    .line 625
    .line 626
    iput-wide v14, v13, Lb2/c;->h:J

    .line 627
    .line 628
    iput v5, v13, Lb2/c;->j:F

    .line 629
    .line 630
    iput-boolean v6, v13, Lb2/c;->g:Z

    .line 631
    .line 632
    iput-boolean v12, v13, Lb2/c;->n:Z

    .line 633
    .line 634
    iput-object v10, v13, Lb2/c;->l:Ly1/e0;

    .line 635
    .line 636
    invoke-virtual {v13}, Lb2/c;->a()V

    .line 637
    .line 638
    .line 639
    goto :goto_d

    .line 640
    :cond_24
    iget-object v7, v9, Ly1/d0;->e:Lx1/d;

    .line 641
    .line 642
    iget v8, v7, Lx1/d;->a:F

    .line 643
    .line 644
    iget v9, v7, Lx1/d;->b:F

    .line 645
    .line 646
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 647
    .line 648
    .line 649
    move-result v8

    .line 650
    int-to-long v10, v8

    .line 651
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 652
    .line 653
    .line 654
    move-result v8

    .line 655
    int-to-long v8, v8

    .line 656
    shl-long/2addr v10, v4

    .line 657
    and-long v8, v8, v16

    .line 658
    .line 659
    or-long/2addr v8, v10

    .line 660
    invoke-virtual {v7}, Lx1/d;->b()F

    .line 661
    .line 662
    .line 663
    move-result v10

    .line 664
    invoke-virtual {v7}, Lx1/d;->a()F

    .line 665
    .line 666
    .line 667
    move-result v11

    .line 668
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 669
    .line 670
    .line 671
    move-result v10

    .line 672
    int-to-long v14, v10

    .line 673
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 674
    .line 675
    .line 676
    move-result v10

    .line 677
    int-to-long v10, v10

    .line 678
    shl-long/2addr v14, v4

    .line 679
    and-long v10, v10, v16

    .line 680
    .line 681
    or-long v17, v14, v10

    .line 682
    .line 683
    iget-wide v10, v7, Lx1/d;->h:J

    .line 684
    .line 685
    shr-long/2addr v10, v4

    .line 686
    long-to-int v4, v10

    .line 687
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 688
    .line 689
    .line 690
    move-result v14

    .line 691
    move-wide v15, v8

    .line 692
    invoke-virtual/range {v13 .. v18}, Lb2/c;->f(FJJ)V

    .line 693
    .line 694
    .line 695
    :goto_d
    instance-of v3, v3, Ly1/b0;

    .line 696
    .line 697
    if-eqz v3, :cond_27

    .line 698
    .line 699
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 700
    .line 701
    const/16 v4, 0x21

    .line 702
    .line 703
    if-ge v3, v4, :cond_27

    .line 704
    .line 705
    iget-object v3, v0, Lr2/s1;->e:Lf9/a;

    .line 706
    .line 707
    if-eqz v3, :cond_27

    .line 708
    .line 709
    invoke-interface {v3}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    goto :goto_e

    .line 713
    :cond_25
    new-instance v1, Lac/p;

    .line 714
    .line 715
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 716
    .line 717
    .line 718
    throw v1

    .line 719
    :cond_26
    const/4 v6, 0x0

    .line 720
    :cond_27
    :goto_e
    iget v1, v1, Ly1/i0;->a:I

    .line 721
    .line 722
    iput v1, v0, Lr2/s1;->n:I

    .line 723
    .line 724
    if-nez v2, :cond_28

    .line 725
    .line 726
    if-eqz v6, :cond_2b

    .line 727
    .line 728
    :cond_28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 729
    .line 730
    const/16 v2, 0x1a

    .line 731
    .line 732
    iget-object v3, v0, Lr2/s1;->c:Lr2/u;

    .line 733
    .line 734
    if-lt v1, v2, :cond_29

    .line 735
    .line 736
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    if-eqz v1, :cond_2a

    .line 741
    .line 742
    invoke-static {v1, v3, v3}, Lq0/o;->q(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;)V

    .line 743
    .line 744
    .line 745
    goto :goto_f

    .line 746
    :cond_29
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 747
    .line 748
    .line 749
    :cond_2a
    :goto_f
    iget-boolean v1, v3, Lr2/u;->f:Z

    .line 750
    .line 751
    if-eqz v1, :cond_2b

    .line 752
    .line 753
    invoke-virtual {v3, v5}, Lr2/u;->Q(F)V

    .line 754
    .line 755
    .line 756
    :cond_2b
    return-void
.end method

.method public final d(Lf9/n;Lf9/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lr2/s1;->b:Ly1/v;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lr2/s1;->a:Lb2/c;

    .line 6
    .line 7
    iget-boolean v1, v1, Lb2/c;->s:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string v1, "layer should have been released before reuse"

    .line 12
    .line 13
    invoke-static {v1}, Ln2/a;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Ly1/v;->b()Lb2/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lr2/s1;->a:Lb2/c;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lr2/s1;->g:Z

    .line 24
    .line 25
    iput-object p1, p0, Lr2/s1;->d:Lf9/n;

    .line 26
    .line 27
    iput-object p2, p0, Lr2/s1;->e:Lf9/a;

    .line 28
    .line 29
    iput-boolean v0, p0, Lr2/s1;->q:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lr2/s1;->r:Z

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lr2/s1;->s:Z

    .line 35
    .line 36
    iget-object p1, p0, Lr2/s1;->h:[F

    .line 37
    .line 38
    invoke-static {p1}, Ly1/a0;->d([F)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lr2/s1;->i:[F

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-static {p1}, Ly1/a0;->d([F)V

    .line 46
    .line 47
    .line 48
    :cond_1
    sget-wide p1, Ly1/p0;->a:J

    .line 49
    .line 50
    iput-wide p1, p0, Lr2/s1;->o:J

    .line 51
    .line 52
    iput-boolean v0, p0, Lr2/s1;->t:Z

    .line 53
    .line 54
    const p1, 0x7fffffff

    .line 55
    .line 56
    .line 57
    int-to-long p1, p1

    .line 58
    const/16 v1, 0x20

    .line 59
    .line 60
    shl-long v1, p1, v1

    .line 61
    .line 62
    const-wide v3, 0xffffffffL

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    and-long/2addr p1, v3

    .line 68
    or-long/2addr p1, v1

    .line 69
    iput-wide p1, p0, Lr2/s1;->f:J

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lr2/s1;->p:Ly1/h0;

    .line 73
    .line 74
    iput v0, p0, Lr2/s1;->n:I

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    const-string p1, "currently reuse is only supported when we manage the layer lifecycle"

    .line 78
    .line 79
    invoke-static {p1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    throw p1
.end method

.method public final destroy()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lr2/s1;->d:Lf9/n;

    .line 3
    .line 4
    iput-object v0, p0, Lr2/s1;->e:Lf9/a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lr2/s1;->g:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lr2/s1;->j:Z

    .line 10
    .line 11
    iget-object v1, p0, Lr2/s1;->c:Lr2/u;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lr2/s1;->j:Z

    .line 17
    .line 18
    invoke-virtual {v1, p0, v0}, Lr2/u;->A(Lq2/p1;Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lr2/s1;->b:Ly1/v;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lr2/s1;->a:Lb2/c;

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ly1/v;->a(Lb2/c;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Lr2/u;->I(Lq2/p1;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final e(Ly1/o;Lb2/c;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Lr2/s1;->k()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v1, Lr2/s1;->a:Lb2/c;

    .line 7
    .line 8
    iget-object v0, v0, Lb2/c;->a:Lb2/e;

    .line 9
    .line 10
    invoke-interface {v0}, Lb2/e;->L()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v4, 0x0

    .line 15
    cmpl-float v0, v0, v4

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-boolean v0, v1, Lr2/s1;->t:Z

    .line 23
    .line 24
    iget-object v0, v1, Lr2/s1;->m:La2/c;

    .line 25
    .line 26
    iget-object v5, v0, La2/c;->b:La2/b;

    .line 27
    .line 28
    move-object/from16 v6, p1

    .line 29
    .line 30
    invoke-virtual {v5, v6}, La2/b;->Z(Ly1/o;)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v6, p2

    .line 34
    .line 35
    iput-object v6, v5, La2/b;->c:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v5, v1, Lr2/s1;->a:Lb2/c;

    .line 38
    .line 39
    invoke-interface {v0}, La2/g;->X()La2/b;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, La2/b;->z()Ly1/o;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v0}, La2/g;->X()La2/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, La2/b;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lb2/c;

    .line 54
    .line 55
    iget-object v7, v5, Lb2/c;->a:Lb2/e;

    .line 56
    .line 57
    iget-boolean v8, v5, Lb2/c;->s:Z

    .line 58
    .line 59
    if-eqz v8, :cond_1

    .line 60
    .line 61
    goto/16 :goto_c

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v5}, Lb2/c;->a()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v7}, Lb2/e;->f()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_2

    .line 71
    .line 72
    :try_start_0
    iget-object v8, v5, Lb2/c;->a:Lb2/e;

    .line 73
    .line 74
    iget-object v9, v5, Lb2/c;->b:Ln3/c;

    .line 75
    .line 76
    iget-object v10, v5, Lb2/c;->c:Ln3/m;

    .line 77
    .line 78
    iget-object v11, v5, Lb2/c;->e:Lb2/a;

    .line 79
    .line 80
    invoke-interface {v8, v9, v10, v5, v11}, Lb2/e;->z(Ln3/c;Ln3/m;Lb2/c;Lb2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    nop

    .line 85
    :cond_2
    :goto_1
    invoke-interface {v7}, Lb2/e;->L()F

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    cmpl-float v4, v8, v4

    .line 90
    .line 91
    if-lez v4, :cond_3

    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const/4 v4, 0x0

    .line 96
    :goto_2
    if-eqz v4, :cond_4

    .line 97
    .line 98
    invoke-interface {v6}, Ly1/o;->r()V

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-static {v6}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v8}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    if-nez v14, :cond_8

    .line 110
    .line 111
    iget-wide v9, v5, Lb2/c;->t:J

    .line 112
    .line 113
    const/16 v11, 0x20

    .line 114
    .line 115
    shr-long v12, v9, v11

    .line 116
    .line 117
    long-to-int v13, v12

    .line 118
    int-to-float v12, v13

    .line 119
    const-wide v15, 0xffffffffL

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    and-long/2addr v9, v15

    .line 125
    long-to-int v10, v9

    .line 126
    int-to-float v10, v10

    .line 127
    move v9, v12

    .line 128
    const/16 p1, 0x20

    .line 129
    .line 130
    iget-wide v11, v5, Lb2/c;->u:J

    .line 131
    .line 132
    shr-long v2, v11, p1

    .line 133
    .line 134
    long-to-int v3, v2

    .line 135
    int-to-float v2, v3

    .line 136
    add-float/2addr v2, v9

    .line 137
    and-long/2addr v11, v15

    .line 138
    long-to-int v3, v11

    .line 139
    int-to-float v3, v3

    .line 140
    add-float v12, v10, v3

    .line 141
    .line 142
    invoke-interface {v7}, Lb2/e;->a()F

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-interface {v7}, Lb2/e;->s()Ly1/k;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-interface {v7}, Lb2/e;->N()I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    const/high16 v15, 0x3f800000    # 1.0f

    .line 155
    .line 156
    cmpg-float v15, v3, v15

    .line 157
    .line 158
    if-ltz v15, :cond_6

    .line 159
    .line 160
    const/4 v15, 0x3

    .line 161
    if-ne v13, v15, :cond_6

    .line 162
    .line 163
    if-nez v11, :cond_6

    .line 164
    .line 165
    invoke-interface {v7}, Lb2/e;->r()I

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    const/4 v1, 0x1

    .line 170
    if-ne v15, v1, :cond_5

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    :goto_3
    iget-object v1, v5, Lb2/c;->p:Ld7/q;

    .line 178
    .line 179
    if-nez v1, :cond_7

    .line 180
    .line 181
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iput-object v1, v5, Lb2/c;->p:Ld7/q;

    .line 186
    .line 187
    :cond_7
    invoke-virtual {v1, v3}, Ld7/q;->i(F)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v13}, Ld7/q;->j(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v11}, Ld7/q;->l(Ly1/k;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v1, Ld7/q;->c:Ljava/lang/Object;

    .line 197
    .line 198
    move-object v13, v1

    .line 199
    check-cast v13, Landroid/graphics/Paint;

    .line 200
    .line 201
    move v11, v2

    .line 202
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 203
    .line 204
    .line 205
    :goto_4
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v7}, Lb2/e;->J()Landroid/graphics/Matrix;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 213
    .line 214
    .line 215
    :cond_8
    if-nez v14, :cond_9

    .line 216
    .line 217
    iget-boolean v1, v5, Lb2/c;->w:Z

    .line 218
    .line 219
    if-eqz v1, :cond_9

    .line 220
    .line 221
    const/4 v1, 0x1

    .line 222
    goto :goto_5

    .line 223
    :cond_9
    const/4 v1, 0x0

    .line 224
    :goto_5
    if-eqz v1, :cond_e

    .line 225
    .line 226
    invoke-interface {v6}, Ly1/o;->f()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Lb2/c;->d()Ly1/h0;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    instance-of v3, v2, Ly1/c0;

    .line 234
    .line 235
    if-eqz v3, :cond_a

    .line 236
    .line 237
    check-cast v2, Ly1/c0;

    .line 238
    .line 239
    iget-object v2, v2, Ly1/c0;->e:Lx1/c;

    .line 240
    .line 241
    invoke-interface {v6, v2}, Ly1/o;->d(Lx1/c;)V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_a
    instance-of v3, v2, Ly1/d0;

    .line 246
    .line 247
    if-eqz v3, :cond_c

    .line 248
    .line 249
    iget-object v3, v5, Lb2/c;->m:Ly1/h;

    .line 250
    .line 251
    if-eqz v3, :cond_b

    .line 252
    .line 253
    iget-object v9, v3, Ly1/h;->a:Landroid/graphics/Path;

    .line 254
    .line 255
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_b
    invoke-static {}, Ly1/j;->a()Ly1/h;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    iput-object v3, v5, Lb2/c;->m:Ly1/h;

    .line 264
    .line 265
    :goto_6
    check-cast v2, Ly1/d0;

    .line 266
    .line 267
    iget-object v2, v2, Ly1/d0;->e:Lx1/d;

    .line 268
    .line 269
    invoke-static {v3, v2}, Lp9/v;->h(Ly1/e0;Lx1/d;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v6, v3}, Ly1/o;->h(Ly1/e0;)V

    .line 273
    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_c
    instance-of v3, v2, Ly1/b0;

    .line 277
    .line 278
    if-eqz v3, :cond_d

    .line 279
    .line 280
    check-cast v2, Ly1/b0;

    .line 281
    .line 282
    iget-object v2, v2, Ly1/b0;->e:Ly1/e0;

    .line 283
    .line 284
    invoke-interface {v6, v2}, Ly1/o;->h(Ly1/e0;)V

    .line 285
    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_d
    new-instance v0, Lac/p;

    .line 289
    .line 290
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_e
    :goto_7
    if-eqz v0, :cond_14

    .line 295
    .line 296
    iget-object v0, v0, Lb2/c;->r:Lb1/q;

    .line 297
    .line 298
    iget-boolean v2, v0, Lb1/q;->a:Z

    .line 299
    .line 300
    if-nez v2, :cond_f

    .line 301
    .line 302
    const-string v2, "Only add dependencies during a tracking"

    .line 303
    .line 304
    invoke-static {v2}, Ly1/y;->a(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    :cond_f
    iget-object v2, v0, Lb1/q;->d:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v2, Ls/i0;

    .line 310
    .line 311
    const/4 v3, 0x0

    .line 312
    if-eqz v2, :cond_10

    .line 313
    .line 314
    invoke-virtual {v2, v5}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_10
    iget-object v2, v0, Lb1/q;->b:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v2, Lb2/c;

    .line 321
    .line 322
    if-eqz v2, :cond_11

    .line 323
    .line 324
    sget-object v2, Ls/p0;->a:Ls/i0;

    .line 325
    .line 326
    new-instance v2, Ls/i0;

    .line 327
    .line 328
    invoke-direct {v2}, Ls/i0;-><init>()V

    .line 329
    .line 330
    .line 331
    iget-object v9, v0, Lb1/q;->b:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v9, Lb2/c;

    .line 334
    .line 335
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v9}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v5}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    iput-object v2, v0, Lb1/q;->d:Ljava/lang/Object;

    .line 345
    .line 346
    iput-object v3, v0, Lb1/q;->b:Ljava/lang/Object;

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_11
    iput-object v5, v0, Lb1/q;->b:Ljava/lang/Object;

    .line 350
    .line 351
    :goto_8
    iget-object v2, v0, Lb1/q;->e:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v2, Ls/i0;

    .line 354
    .line 355
    if-eqz v2, :cond_12

    .line 356
    .line 357
    invoke-virtual {v2, v5}, Ls/i0;->l(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    const/16 v17, 0x1

    .line 362
    .line 363
    xor-int/lit8 v2, v0, 0x1

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_12
    const/16 v17, 0x1

    .line 367
    .line 368
    iget-object v2, v0, Lb1/q;->c:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v2, Lb2/c;

    .line 371
    .line 372
    if-eq v2, v5, :cond_13

    .line 373
    .line 374
    const/4 v2, 0x1

    .line 375
    goto :goto_9

    .line 376
    :cond_13
    iput-object v3, v0, Lb1/q;->c:Ljava/lang/Object;

    .line 377
    .line 378
    const/4 v2, 0x0

    .line 379
    :goto_9
    if-eqz v2, :cond_14

    .line 380
    .line 381
    iget v0, v5, Lb2/c;->q:I

    .line 382
    .line 383
    add-int/lit8 v0, v0, 0x1

    .line 384
    .line 385
    iput v0, v5, Lb2/c;->q:I

    .line 386
    .line 387
    :cond_14
    invoke-static {v6}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-nez v0, :cond_15

    .line 396
    .line 397
    invoke-interface {v7}, Lb2/e;->K()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_16

    .line 402
    .line 403
    :cond_15
    move/from16 p2, v1

    .line 404
    .line 405
    move/from16 p1, v14

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :cond_16
    iget-object v0, v5, Lb2/c;->o:La2/c;

    .line 409
    .line 410
    if-nez v0, :cond_17

    .line 411
    .line 412
    new-instance v0, La2/c;

    .line 413
    .line 414
    invoke-direct {v0}, La2/c;-><init>()V

    .line 415
    .line 416
    .line 417
    iput-object v0, v5, Lb2/c;->o:La2/c;

    .line 418
    .line 419
    :cond_17
    iget-object v2, v0, La2/c;->b:La2/b;

    .line 420
    .line 421
    iget-object v3, v5, Lb2/c;->b:Ln3/c;

    .line 422
    .line 423
    iget-object v7, v5, Lb2/c;->c:Ln3/m;

    .line 424
    .line 425
    iget-wide v9, v5, Lb2/c;->u:J

    .line 426
    .line 427
    invoke-static {v9, v10}, La/a;->S(J)J

    .line 428
    .line 429
    .line 430
    move-result-wide v9

    .line 431
    invoke-virtual {v2}, La2/b;->C()Ln3/c;

    .line 432
    .line 433
    .line 434
    move-result-object v11

    .line 435
    invoke-virtual {v2}, La2/b;->H()Ln3/m;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    invoke-virtual {v2}, La2/b;->z()Ly1/o;

    .line 440
    .line 441
    .line 442
    move-result-object v13

    .line 443
    move/from16 p1, v14

    .line 444
    .line 445
    invoke-virtual {v2}, La2/b;->J()J

    .line 446
    .line 447
    .line 448
    move-result-wide v14

    .line 449
    move/from16 p2, v1

    .line 450
    .line 451
    iget-object v1, v2, La2/b;->c:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v1, Lb2/c;

    .line 454
    .line 455
    invoke-virtual {v2, v3}, La2/b;->a0(Ln3/c;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v7}, La2/b;->b0(Ln3/m;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v6}, La2/b;->Z(Ly1/o;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v9, v10}, La2/b;->c0(J)V

    .line 465
    .line 466
    .line 467
    iput-object v5, v2, La2/b;->c:Ljava/lang/Object;

    .line 468
    .line 469
    invoke-interface {v6}, Ly1/o;->f()V

    .line 470
    .line 471
    .line 472
    :try_start_1
    invoke-virtual {v5, v0}, Lb2/c;->c(La2/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 473
    .line 474
    .line 475
    invoke-interface {v6}, Ly1/o;->n()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v11}, La2/b;->a0(Ln3/c;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, v12}, La2/b;->b0(Ln3/m;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v13}, La2/b;->Z(Ly1/o;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v14, v15}, La2/b;->c0(J)V

    .line 488
    .line 489
    .line 490
    iput-object v1, v2, La2/b;->c:Ljava/lang/Object;

    .line 491
    .line 492
    goto :goto_b

    .line 493
    :catchall_1
    move-exception v0

    .line 494
    invoke-interface {v6}, Ly1/o;->n()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v11}, La2/b;->a0(Ln3/c;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v12}, La2/b;->b0(Ln3/m;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2, v13}, La2/b;->Z(Ly1/o;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2, v14, v15}, La2/b;->c0(J)V

    .line 507
    .line 508
    .line 509
    iput-object v1, v2, La2/b;->c:Ljava/lang/Object;

    .line 510
    .line 511
    throw v0

    .line 512
    :goto_a
    invoke-interface {v7, v6}, Lb2/e;->v(Ly1/o;)V

    .line 513
    .line 514
    .line 515
    :goto_b
    if-eqz p2, :cond_18

    .line 516
    .line 517
    invoke-interface {v6}, Ly1/o;->n()V

    .line 518
    .line 519
    .line 520
    :cond_18
    if-eqz v4, :cond_19

    .line 521
    .line 522
    invoke-interface {v6}, Ly1/o;->g()V

    .line 523
    .line 524
    .line 525
    :cond_19
    if-nez p1, :cond_1a

    .line 526
    .line 527
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 528
    .line 529
    .line 530
    :cond_1a
    :goto_c
    return-void
.end method

.method public final f(J)Z
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v1, v0

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-wide v1, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long/2addr p1, v1

    .line 16
    long-to-int p2, p1

    .line 17
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p2, p0, Lr2/s1;->a:Lb2/c;

    .line 22
    .line 23
    iget-boolean v1, p2, Lb2/c;->w:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lb2/c;->d()Ly1/h0;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2, v0, p1}, Lr2/j0;->q(Ly1/h0;FF)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_0
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method public final g(JZ)J
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lr2/s1;->l()[F

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    const-wide p1, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    return-wide p1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lr2/s1;->m()[F

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    :cond_1
    iget-boolean v0, p0, Lr2/s1;->s:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    return-wide p1

    .line 24
    :cond_2
    invoke-static {p1, p2, p3}, Ly1/a0;->b(J[F)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method public final getUnderlyingMatrix-sQKQjiQ()[F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr2/s1;->m()[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final h(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lr2/s1;->f:J

    .line 2
    .line 3
    invoke-static {p1, p2, v0, v1}, Ln3/l;->a(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lr2/s1;->c:Lr2/u;

    .line 10
    .line 11
    iget-boolean v1, v0, Lr2/u;->f:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/high16 v1, -0x3f800000    # -4.0f

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lr2/u;->Q(F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-wide p1, p0, Lr2/s1;->f:J

    .line 21
    .line 22
    iget-boolean p1, p0, Lr2/s1;->j:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-boolean p1, p0, Lr2/s1;->g:Z

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, p0, Lr2/s1;->j:Z

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    if-eq p2, p1, :cond_1

    .line 37
    .line 38
    iput-boolean p2, p0, Lr2/s1;->j:Z

    .line 39
    .line 40
    invoke-virtual {v0, p0, p2}, Lr2/u;->A(Lq2/p1;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final i([F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr2/s1;->l()[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, v0}, Ly1/a0;->e([F[F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr2/s1;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lr2/s1;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lr2/s1;->c:Lr2/u;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lr2/s1;->j:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq v2, v1, :cond_0

    .line 18
    .line 19
    iput-boolean v2, p0, Lr2/s1;->j:Z

    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Lr2/u;->A(Lq2/p1;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final j(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lr2/s1;->c:Lr2/u;

    .line 2
    .line 3
    iget-boolean v1, v0, Lr2/u;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/high16 v1, -0x3f800000    # -4.0f

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lr2/u;->Q(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lr2/s1;->a:Lb2/c;

    .line 13
    .line 14
    iget-wide v2, v1, Lb2/c;->t:J

    .line 15
    .line 16
    invoke-static {v2, v3, p1, p2}, Ln3/j;->a(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iput-wide p1, v1, Lb2/c;->t:J

    .line 23
    .line 24
    iget-wide v2, v1, Lb2/c;->u:J

    .line 25
    .line 26
    iget-object v1, v1, Lb2/c;->a:Lb2/e;

    .line 27
    .line 28
    const/16 v4, 0x20

    .line 29
    .line 30
    shr-long v4, p1, v4

    .line 31
    .line 32
    long-to-int v5, v4

    .line 33
    const-wide v6, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr p1, v6

    .line 39
    long-to-int p2, p1

    .line 40
    invoke-interface {v1, v5, p2, v2, v3}, Lb2/e;->t(IIJ)V

    .line 41
    .line 42
    .line 43
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 p2, 0x1a

    .line 46
    .line 47
    if-lt p1, p2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-static {p1, v0, v0}, Lq0/o;->q(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void

    .line 59
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final k()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lr2/s1;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-wide v0, p0, Lr2/s1;->o:J

    .line 6
    .line 7
    sget-wide v2, Ly1/p0;->a:J

    .line 8
    .line 9
    const-wide v4, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/16 v6, 0x20

    .line 15
    .line 16
    cmp-long v7, v0, v2

    .line 17
    .line 18
    if-nez v7, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lr2/s1;->a:Lb2/c;

    .line 22
    .line 23
    iget-wide v0, v0, Lb2/c;->u:J

    .line 24
    .line 25
    iget-wide v2, p0, Lr2/s1;->f:J

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Ln3/l;->a(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lr2/s1;->a:Lb2/c;

    .line 34
    .line 35
    iget-wide v1, p0, Lr2/s1;->o:J

    .line 36
    .line 37
    invoke-static {v1, v2}, Ly1/p0;->a(J)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-wide v2, p0, Lr2/s1;->f:J

    .line 42
    .line 43
    shr-long/2addr v2, v6

    .line 44
    long-to-int v3, v2

    .line 45
    int-to-float v2, v3

    .line 46
    mul-float v1, v1, v2

    .line 47
    .line 48
    iget-wide v2, p0, Lr2/s1;->o:J

    .line 49
    .line 50
    invoke-static {v2, v3}, Ly1/p0;->b(J)F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-wide v7, p0, Lr2/s1;->f:J

    .line 55
    .line 56
    and-long/2addr v7, v4

    .line 57
    long-to-int v3, v7

    .line 58
    int-to-float v3, v3

    .line 59
    mul-float v2, v2, v3

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    int-to-long v7, v1

    .line 66
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    int-to-long v1, v1

    .line 71
    shl-long/2addr v7, v6

    .line 72
    and-long/2addr v1, v4

    .line 73
    or-long/2addr v1, v7

    .line 74
    iget-wide v7, v0, Lb2/c;->v:J

    .line 75
    .line 76
    invoke-static {v7, v8, v1, v2}, Lx1/b;->b(JJ)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    iput-wide v1, v0, Lb2/c;->v:J

    .line 83
    .line 84
    iget-object v0, v0, Lb2/c;->a:Lb2/e;

    .line 85
    .line 86
    invoke-interface {v0, v1, v2}, Lb2/e;->x(J)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lr2/s1;->a:Lb2/c;

    .line 90
    .line 91
    iget-object v1, p0, Lr2/s1;->k:Ln3/c;

    .line 92
    .line 93
    iget-object v2, p0, Lr2/s1;->l:Ln3/m;

    .line 94
    .line 95
    iget-wide v7, p0, Lr2/s1;->f:J

    .line 96
    .line 97
    iget-wide v9, v0, Lb2/c;->u:J

    .line 98
    .line 99
    iget-object v3, v0, Lb2/c;->a:Lb2/e;

    .line 100
    .line 101
    invoke-static {v9, v10, v7, v8}, Ln3/l;->a(JJ)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-nez v9, :cond_2

    .line 106
    .line 107
    iput-wide v7, v0, Lb2/c;->u:J

    .line 108
    .line 109
    iget-wide v9, v0, Lb2/c;->t:J

    .line 110
    .line 111
    shr-long v11, v9, v6

    .line 112
    .line 113
    long-to-int v6, v11

    .line 114
    and-long/2addr v4, v9

    .line 115
    long-to-int v5, v4

    .line 116
    invoke-interface {v3, v6, v5, v7, v8}, Lb2/e;->t(IIJ)V

    .line 117
    .line 118
    .line 119
    iget-wide v4, v0, Lb2/c;->i:J

    .line 120
    .line 121
    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    cmp-long v8, v4, v6

    .line 127
    .line 128
    if-nez v8, :cond_2

    .line 129
    .line 130
    const/4 v4, 0x1

    .line 131
    iput-boolean v4, v0, Lb2/c;->g:Z

    .line 132
    .line 133
    invoke-virtual {v0}, Lb2/c;->a()V

    .line 134
    .line 135
    .line 136
    :cond_2
    iput-object v1, v0, Lb2/c;->b:Ln3/c;

    .line 137
    .line 138
    iput-object v2, v0, Lb2/c;->c:Ln3/m;

    .line 139
    .line 140
    iget-object v4, p0, Lr2/s1;->u:Lb2/a;

    .line 141
    .line 142
    iput-object v4, v0, Lb2/c;->d:Lg9/n;

    .line 143
    .line 144
    iget-object v4, v0, Lb2/c;->e:Lb2/a;

    .line 145
    .line 146
    invoke-interface {v3, v1, v2, v0, v4}, Lb2/e;->z(Ln3/c;Ln3/m;Lb2/c;Lb2/a;)V

    .line 147
    .line 148
    .line 149
    iget-boolean v0, p0, Lr2/s1;->j:Z

    .line 150
    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lr2/s1;->j:Z

    .line 155
    .line 156
    iget-object v1, p0, Lr2/s1;->c:Lr2/u;

    .line 157
    .line 158
    invoke-virtual {v1, p0, v0}, Lr2/u;->A(Lq2/p1;Z)V

    .line 159
    .line 160
    .line 161
    :cond_3
    return-void
.end method

.method public final l()[F
    .locals 5

    .line 1
    iget-object v0, p0, Lr2/s1;->i:[F

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ly1/a0;->a()[F

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lr2/s1;->i:[F

    .line 10
    .line 11
    :cond_0
    iget-boolean v1, p0, Lr2/s1;->r:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    aget v1, v0, v2

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_1
    iput-boolean v2, p0, Lr2/s1;->r:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Lr2/s1;->m()[F

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-boolean v4, p0, Lr2/s1;->s:Z

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_2
    invoke-static {v1, v0}, Lr2/j0;->p([F[F)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    :cond_3
    return-object v0

    .line 44
    :cond_4
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 45
    .line 46
    aput v1, v0, v2

    .line 47
    .line 48
    return-object v3
.end method

.method public final m()[F
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lr2/s1;->q:Z

    .line 4
    .line 5
    iget-object v2, v0, Lr2/s1;->h:[F

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, v0, Lr2/s1;->a:Lb2/c;

    .line 10
    .line 11
    iget-wide v3, v1, Lb2/c;->v:J

    .line 12
    .line 13
    iget-object v1, v1, Lb2/c;->a:Lb2/e;

    .line 14
    .line 15
    const-wide v5, 0x7fffffff7fffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr v5, v3

    .line 21
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long v9, v5, v7

    .line 27
    .line 28
    if-nez v9, :cond_0

    .line 29
    .line 30
    iget-wide v3, v0, Lr2/s1;->f:J

    .line 31
    .line 32
    invoke-static {v3, v4}, La/a;->S(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {v3, v4}, Lp4/e;->p(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    :cond_0
    const/16 v5, 0x20

    .line 41
    .line 42
    shr-long v5, v3, v5

    .line 43
    .line 44
    long-to-int v6, v5

    .line 45
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const-wide v6, 0xffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    and-long/2addr v3, v6

    .line 55
    long-to-int v4, v3

    .line 56
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-interface {v1}, Lb2/e;->E()F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-interface {v1}, Lb2/e;->A()F

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-interface {v1}, Lb2/e;->G()F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-interface {v1}, Lb2/e;->u()F

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    invoke-interface {v1}, Lb2/e;->w()F

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    invoke-interface {v1}, Lb2/e;->o()F

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    invoke-interface {v1}, Lb2/e;->M()F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    float-to-double v11, v7

    .line 89
    const-wide v13, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    mul-double v11, v11, v13

    .line 95
    .line 96
    move-wide v15, v13

    .line 97
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 98
    .line 99
    .line 100
    move-result-wide v13

    .line 101
    double-to-float v7, v13

    .line 102
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 103
    .line 104
    .line 105
    move-result-wide v11

    .line 106
    double-to-float v11, v11

    .line 107
    neg-float v12, v7

    .line 108
    mul-float v13, v6, v11

    .line 109
    .line 110
    const/high16 v14, 0x3f800000    # 1.0f

    .line 111
    .line 112
    mul-float v17, v14, v7

    .line 113
    .line 114
    sub-float v13, v13, v17

    .line 115
    .line 116
    mul-float v6, v6, v7

    .line 117
    .line 118
    mul-float v17, v14, v11

    .line 119
    .line 120
    add-float v17, v17, v6

    .line 121
    .line 122
    move-wide/from16 v18, v15

    .line 123
    .line 124
    const/high16 v6, 0x3f800000    # 1.0f

    .line 125
    .line 126
    float-to-double v14, v8

    .line 127
    mul-double v14, v14, v18

    .line 128
    .line 129
    move v8, v7

    .line 130
    const/high16 v16, 0x3f800000    # 1.0f

    .line 131
    .line 132
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 133
    .line 134
    .line 135
    move-result-wide v6

    .line 136
    double-to-float v6, v6

    .line 137
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 138
    .line 139
    .line 140
    move-result-wide v14

    .line 141
    double-to-float v7, v14

    .line 142
    neg-float v14, v6

    .line 143
    mul-float v15, v8, v6

    .line 144
    .line 145
    mul-float v8, v8, v7

    .line 146
    .line 147
    mul-float v20, v11, v6

    .line 148
    .line 149
    mul-float v21, v11, v7

    .line 150
    .line 151
    mul-float v22, v4, v7

    .line 152
    .line 153
    mul-float v23, v17, v6

    .line 154
    .line 155
    add-float v23, v23, v22

    .line 156
    .line 157
    neg-float v4, v4

    .line 158
    mul-float v4, v4, v6

    .line 159
    .line 160
    mul-float v17, v17, v7

    .line 161
    .line 162
    add-float v17, v17, v4

    .line 163
    .line 164
    move v6, v3

    .line 165
    float-to-double v3, v9

    .line 166
    mul-double v3, v3, v18

    .line 167
    .line 168
    move-wide/from16 v18, v3

    .line 169
    .line 170
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    .line 171
    .line 172
    .line 173
    move-result-wide v3

    .line 174
    double-to-float v3, v3

    .line 175
    move v9, v6

    .line 176
    move v4, v7

    .line 177
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    .line 178
    .line 179
    .line 180
    move-result-wide v6

    .line 181
    double-to-float v6, v6

    .line 182
    neg-float v7, v3

    .line 183
    mul-float v18, v7, v4

    .line 184
    .line 185
    mul-float v19, v6, v15

    .line 186
    .line 187
    add-float v19, v19, v18

    .line 188
    .line 189
    mul-float v4, v4, v6

    .line 190
    .line 191
    mul-float v15, v15, v3

    .line 192
    .line 193
    add-float/2addr v15, v4

    .line 194
    mul-float v4, v3, v11

    .line 195
    .line 196
    mul-float v11, v11, v6

    .line 197
    .line 198
    mul-float v7, v7, v14

    .line 199
    .line 200
    mul-float v18, v6, v8

    .line 201
    .line 202
    add-float v18, v18, v7

    .line 203
    .line 204
    mul-float v6, v6, v14

    .line 205
    .line 206
    mul-float v3, v3, v8

    .line 207
    .line 208
    add-float/2addr v3, v6

    .line 209
    mul-float v15, v15, v10

    .line 210
    .line 211
    mul-float v4, v4, v10

    .line 212
    .line 213
    mul-float v3, v3, v10

    .line 214
    .line 215
    mul-float v19, v19, v1

    .line 216
    .line 217
    mul-float v11, v11, v1

    .line 218
    .line 219
    mul-float v18, v18, v1

    .line 220
    .line 221
    mul-float v20, v20, v16

    .line 222
    .line 223
    mul-float v12, v12, v16

    .line 224
    .line 225
    mul-float v21, v21, v16

    .line 226
    .line 227
    array-length v1, v2

    .line 228
    const/16 v6, 0x10

    .line 229
    .line 230
    const/4 v7, 0x0

    .line 231
    if-ge v1, v6, :cond_1

    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_1
    aput v15, v2, v7

    .line 235
    .line 236
    const/4 v1, 0x1

    .line 237
    aput v4, v2, v1

    .line 238
    .line 239
    const/4 v1, 0x2

    .line 240
    aput v3, v2, v1

    .line 241
    .line 242
    const/4 v1, 0x3

    .line 243
    const/4 v6, 0x0

    .line 244
    aput v6, v2, v1

    .line 245
    .line 246
    const/4 v1, 0x4

    .line 247
    aput v19, v2, v1

    .line 248
    .line 249
    const/4 v1, 0x5

    .line 250
    aput v11, v2, v1

    .line 251
    .line 252
    const/4 v1, 0x6

    .line 253
    aput v18, v2, v1

    .line 254
    .line 255
    const/4 v1, 0x7

    .line 256
    aput v6, v2, v1

    .line 257
    .line 258
    const/16 v1, 0x8

    .line 259
    .line 260
    aput v20, v2, v1

    .line 261
    .line 262
    const/16 v1, 0x9

    .line 263
    .line 264
    aput v12, v2, v1

    .line 265
    .line 266
    const/16 v1, 0xa

    .line 267
    .line 268
    aput v21, v2, v1

    .line 269
    .line 270
    const/16 v1, 0xb

    .line 271
    .line 272
    aput v6, v2, v1

    .line 273
    .line 274
    neg-float v1, v5

    .line 275
    mul-float v15, v15, v1

    .line 276
    .line 277
    mul-float v6, v9, v19

    .line 278
    .line 279
    sub-float/2addr v15, v6

    .line 280
    add-float v15, v15, v23

    .line 281
    .line 282
    add-float/2addr v15, v5

    .line 283
    const/16 v5, 0xc

    .line 284
    .line 285
    aput v15, v2, v5

    .line 286
    .line 287
    mul-float v4, v4, v1

    .line 288
    .line 289
    mul-float v5, v9, v11

    .line 290
    .line 291
    sub-float/2addr v4, v5

    .line 292
    add-float/2addr v4, v13

    .line 293
    add-float/2addr v4, v9

    .line 294
    const/16 v5, 0xd

    .line 295
    .line 296
    aput v4, v2, v5

    .line 297
    .line 298
    mul-float v1, v1, v3

    .line 299
    .line 300
    mul-float v3, v9, v18

    .line 301
    .line 302
    sub-float/2addr v1, v3

    .line 303
    add-float v1, v1, v17

    .line 304
    .line 305
    const/16 v3, 0xe

    .line 306
    .line 307
    aput v1, v2, v3

    .line 308
    .line 309
    const/16 v1, 0xf

    .line 310
    .line 311
    aput v16, v2, v1

    .line 312
    .line 313
    :goto_0
    iput-boolean v7, v0, Lr2/s1;->q:Z

    .line 314
    .line 315
    invoke-static {v2}, Ly1/h0;->p([F)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    iput-boolean v1, v0, Lr2/s1;->s:Z

    .line 320
    .line 321
    :cond_2
    return-object v2
.end method
