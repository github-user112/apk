.class public final Lc1/r1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lc1/i2;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:Lf9/n;

.field public final synthetic i:Lf9/o;


# direct methods
.method public constructor <init>(Lc1/i2;JJJJFFLf9/n;Lf9/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/r1;->a:Lc1/i2;

    .line 2
    .line 3
    iput-wide p2, p0, Lc1/r1;->b:J

    .line 4
    .line 5
    iput-wide p4, p0, Lc1/r1;->c:J

    .line 6
    .line 7
    iput-wide p6, p0, Lc1/r1;->d:J

    .line 8
    .line 9
    iput-wide p8, p0, Lc1/r1;->e:J

    .line 10
    .line 11
    iput p10, p0, Lc1/r1;->f:F

    .line 12
    .line 13
    iput p11, p0, Lc1/r1;->g:F

    .line 14
    .line 15
    iput-object p12, p0, Lc1/r1;->h:Lf9/n;

    .line 16
    .line 17
    iput-object p13, p0, Lc1/r1;->i:Lf9/o;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, La2/g;

    .line 6
    .line 7
    sget-object v2, Lc1/t1;->a:Lc1/t1;

    .line 8
    .line 9
    iget-object v2, v0, Lc1/r1;->a:Lc1/i2;

    .line 10
    .line 11
    iget-object v10, v2, Lc1/i2;->f:[F

    .line 12
    .line 13
    invoke-virtual {v2}, Lc1/i2;->b()F

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    iget-object v3, v2, Lc1/i2;->i:Lf1/g1;

    .line 18
    .line 19
    invoke-virtual {v3}, Lf1/g1;->f()F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-interface {v1, v3}, Ln3/c;->J(F)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v12, 0x0

    .line 28
    invoke-interface {v1, v12}, Ln3/c;->H(I)F

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget-object v2, v2, Lc1/i2;->j:Lf1/g1;

    .line 33
    .line 34
    invoke-virtual {v2}, Lf1/g1;->f()F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-interface {v1, v2}, Ln3/c;->J(F)F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-interface {v1}, La2/g;->c0()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    invoke-static {v5, v6}, Lx1/b;->e(J)F

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/4 v13, 0x0

    .line 51
    invoke-static {v13, v5}, Lp9/q;->d(FF)J

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    invoke-interface {v1}, La2/g;->g()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    invoke-static {v5, v6}, Lx1/e;->d(J)F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-interface {v1}, La2/g;->c0()J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    invoke-static {v6, v7}, Lx1/b;->e(J)F

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-static {v5, v6}, Lp9/q;->d(FF)J

    .line 72
    .line 73
    .line 74
    move-result-wide v16

    .line 75
    invoke-interface {v1, v3}, Ln3/c;->S(F)F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v14, v15}, Lx1/b;->d(J)F

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-static/range {v16 .. v17}, Lx1/b;->d(J)F

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-static {v14, v15}, Lx1/b;->d(J)F

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    sub-float/2addr v6, v7

    .line 92
    mul-float v6, v6, v11

    .line 93
    .line 94
    add-float/2addr v6, v5

    .line 95
    invoke-interface {v1}, La2/g;->c0()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    invoke-static {v7, v8}, Lx1/b;->e(J)F

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-static {v6, v5}, Lp9/q;->d(FF)J

    .line 104
    .line 105
    .line 106
    move-result-wide v18

    .line 107
    invoke-static {v14, v15}, Lx1/b;->d(J)F

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-static/range {v16 .. v17}, Lx1/b;->d(J)F

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-static {v14, v15}, Lx1/b;->d(J)F

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    sub-float/2addr v6, v7

    .line 120
    mul-float v6, v6, v13

    .line 121
    .line 122
    add-float/2addr v6, v5

    .line 123
    invoke-interface {v1}, La2/g;->c0()J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    invoke-static {v7, v8}, Lx1/b;->e(J)F

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-static {v6, v5}, Lp9/q;->d(FF)J

    .line 132
    .line 133
    .line 134
    move-result-wide v20

    .line 135
    const/4 v5, 0x2

    .line 136
    int-to-float v5, v5

    .line 137
    div-float v8, v3, v5

    .line 138
    .line 139
    iget v6, v0, Lc1/r1;->g:F

    .line 140
    .line 141
    invoke-interface {v1, v6}, Ln3/c;->S(F)F

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    int-to-float v6, v12

    .line 146
    iget v7, v0, Lc1/r1;->f:F

    .line 147
    .line 148
    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-lez v6, :cond_0

    .line 153
    .line 154
    invoke-interface {v1, v4}, Ln3/c;->S(F)F

    .line 155
    .line 156
    .line 157
    invoke-interface {v1, v7}, Ln3/c;->S(F)F

    .line 158
    .line 159
    .line 160
    invoke-interface {v1, v2}, Ln3/c;->S(F)F

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    div-float/2addr v2, v5

    .line 165
    invoke-interface {v1, v7}, Ln3/c;->S(F)F

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    add-float/2addr v4, v2

    .line 170
    move/from16 v22, v4

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_0
    const/16 v22, 0x0

    .line 174
    .line 175
    :goto_0
    invoke-static/range {v18 .. v19}, Lx1/b;->d(J)F

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-static/range {v16 .. v17}, Lx1/b;->d(J)F

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    sub-float v4, v4, v22

    .line 184
    .line 185
    sub-float/2addr v4, v8

    .line 186
    iget-object v5, v0, Lc1/r1;->h:Lf9/n;

    .line 187
    .line 188
    cmpg-float v2, v2, v4

    .line 189
    .line 190
    if-gez v2, :cond_1

    .line 191
    .line 192
    invoke-static/range {v18 .. v19}, Lx1/b;->d(J)F

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    add-float v2, v2, v22

    .line 197
    .line 198
    invoke-static/range {v16 .. v17}, Lx1/b;->d(J)F

    .line 199
    .line 200
    .line 201
    move-result v23

    .line 202
    invoke-static {v2, v13}, Lp9/q;->d(FF)J

    .line 203
    .line 204
    .line 205
    move-result-wide v6

    .line 206
    sub-float v2, v23, v2

    .line 207
    .line 208
    invoke-static {v2, v3}, Lp4/e;->b(FF)J

    .line 209
    .line 210
    .line 211
    move-result-wide v24

    .line 212
    move v4, v3

    .line 213
    move-wide v2, v6

    .line 214
    iget-wide v6, v0, Lc1/r1;->b:J

    .line 215
    .line 216
    move v12, v9

    .line 217
    move v9, v8

    .line 218
    move v8, v12

    .line 219
    move v12, v4

    .line 220
    move-object v13, v5

    .line 221
    move-wide/from16 v4, v24

    .line 222
    .line 223
    const/16 v24, 0x0

    .line 224
    .line 225
    invoke-static/range {v1 .. v9}, Lc1/t1;->d(La2/g;JJJFF)V

    .line 226
    .line 227
    .line 228
    move/from16 v26, v9

    .line 229
    .line 230
    move v9, v8

    .line 231
    move/from16 v8, v26

    .line 232
    .line 233
    if-eqz v13, :cond_2

    .line 234
    .line 235
    sub-float v2, v23, v8

    .line 236
    .line 237
    invoke-interface {v1}, La2/g;->c0()J

    .line 238
    .line 239
    .line 240
    move-result-wide v3

    .line 241
    invoke-static {v3, v4}, Lx1/b;->e(J)F

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    invoke-static {v2, v3}, Lp9/q;->d(FF)J

    .line 246
    .line 247
    .line 248
    move-result-wide v2

    .line 249
    new-instance v4, Lx1/b;

    .line 250
    .line 251
    invoke-direct {v4, v2, v3}, Lx1/b;-><init>(J)V

    .line 252
    .line 253
    .line 254
    invoke-interface {v13, v1, v4}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_1
    move v12, v3

    .line 259
    move-object v13, v5

    .line 260
    const/16 v24, 0x0

    .line 261
    .line 262
    :cond_2
    :goto_1
    invoke-static/range {v18 .. v19}, Lx1/b;->d(J)F

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    sub-float v2, v2, v22

    .line 267
    .line 268
    sub-float v2, v2, v24

    .line 269
    .line 270
    cmpl-float v3, v2, v8

    .line 271
    .line 272
    if-lez v3, :cond_3

    .line 273
    .line 274
    const/4 v3, 0x0

    .line 275
    invoke-static {v3, v3}, Lp9/q;->d(FF)J

    .line 276
    .line 277
    .line 278
    move-result-wide v4

    .line 279
    invoke-static {v2, v12}, Lp4/e;->b(FF)J

    .line 280
    .line 281
    .line 282
    move-result-wide v2

    .line 283
    iget-wide v6, v0, Lc1/r1;->c:J

    .line 284
    .line 285
    move-wide/from16 v26, v4

    .line 286
    .line 287
    move-wide v4, v2

    .line 288
    move-wide/from16 v2, v26

    .line 289
    .line 290
    invoke-static/range {v1 .. v9}, Lc1/t1;->d(La2/g;JJJFF)V

    .line 291
    .line 292
    .line 293
    :cond_3
    invoke-static {v14, v15}, Lx1/b;->d(J)F

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    add-float/2addr v2, v8

    .line 298
    invoke-static {v14, v15}, Lx1/b;->e(J)F

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-static {v2, v3}, Lp9/q;->d(FF)J

    .line 303
    .line 304
    .line 305
    move-result-wide v2

    .line 306
    invoke-static/range {v16 .. v17}, Lx1/b;->d(J)F

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    sub-float/2addr v4, v8

    .line 311
    invoke-static/range {v16 .. v17}, Lx1/b;->e(J)F

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    invoke-static {v4, v5}, Lp9/q;->d(FF)J

    .line 316
    .line 317
    .line 318
    move-result-wide v4

    .line 319
    invoke-static/range {v20 .. v21}, Lx1/b;->d(J)F

    .line 320
    .line 321
    .line 322
    invoke-static/range {v20 .. v21}, Lx1/b;->d(J)F

    .line 323
    .line 324
    .line 325
    invoke-static/range {v18 .. v19}, Lx1/b;->d(J)F

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    sub-float v6, v6, v22

    .line 330
    .line 331
    invoke-static/range {v18 .. v19}, Lx1/b;->d(J)F

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    add-float v7, v7, v22

    .line 336
    .line 337
    array-length v8, v10

    .line 338
    const/4 v9, 0x0

    .line 339
    const/4 v12, 0x0

    .line 340
    :goto_2
    if-ge v9, v8, :cond_9

    .line 341
    .line 342
    aget v14, v10, v9

    .line 343
    .line 344
    add-int/lit8 v15, v12, 0x1

    .line 345
    .line 346
    const/16 v16, 0x1

    .line 347
    .line 348
    move/from16 v17, v6

    .line 349
    .line 350
    if-eqz v13, :cond_4

    .line 351
    .line 352
    array-length v6, v10

    .line 353
    add-int/lit8 v6, v6, -0x1

    .line 354
    .line 355
    if-ne v12, v6, :cond_4

    .line 356
    .line 357
    move-wide/from16 v18, v2

    .line 358
    .line 359
    const/16 v24, 0x0

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_4
    cmpl-float v6, v14, v11

    .line 363
    .line 364
    const/16 v24, 0x0

    .line 365
    .line 366
    if-gtz v6, :cond_6

    .line 367
    .line 368
    cmpg-float v6, v14, v24

    .line 369
    .line 370
    if-gez v6, :cond_5

    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_5
    const/16 v16, 0x0

    .line 374
    .line 375
    :cond_6
    :goto_3
    invoke-static {v14, v2, v3, v4, v5}, Lp9/q;->G(FJJ)J

    .line 376
    .line 377
    .line 378
    move-result-wide v18

    .line 379
    invoke-static/range {v18 .. v19}, Lx1/b;->d(J)F

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    invoke-interface {v1}, La2/g;->c0()J

    .line 384
    .line 385
    .line 386
    move-result-wide v18

    .line 387
    invoke-static/range {v18 .. v19}, Lx1/b;->e(J)F

    .line 388
    .line 389
    .line 390
    move-result v12

    .line 391
    move-wide/from16 v18, v2

    .line 392
    .line 393
    invoke-static {v6, v12}, Lp9/q;->d(FF)J

    .line 394
    .line 395
    .line 396
    move-result-wide v2

    .line 397
    invoke-static {v2, v3}, Lx1/b;->d(J)F

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    cmpl-float v12, v6, v17

    .line 402
    .line 403
    if-ltz v12, :cond_7

    .line 404
    .line 405
    cmpg-float v6, v6, v7

    .line 406
    .line 407
    if-gtz v6, :cond_7

    .line 408
    .line 409
    goto :goto_5

    .line 410
    :cond_7
    new-instance v6, Lx1/b;

    .line 411
    .line 412
    invoke-direct {v6, v2, v3}, Lx1/b;-><init>(J)V

    .line 413
    .line 414
    .line 415
    if-eqz v16, :cond_8

    .line 416
    .line 417
    iget-wide v2, v0, Lc1/r1;->d:J

    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_8
    iget-wide v2, v0, Lc1/r1;->e:J

    .line 421
    .line 422
    :goto_4
    new-instance v12, Ly1/q;

    .line 423
    .line 424
    invoke-direct {v12, v2, v3}, Ly1/q;-><init>(J)V

    .line 425
    .line 426
    .line 427
    iget-object v2, v0, Lc1/r1;->i:Lf9/o;

    .line 428
    .line 429
    invoke-interface {v2, v1, v6, v12}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 433
    .line 434
    move v12, v15

    .line 435
    move/from16 v6, v17

    .line 436
    .line 437
    move-wide/from16 v2, v18

    .line 438
    .line 439
    goto :goto_2

    .line 440
    :cond_9
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 441
    .line 442
    return-object v1
.end method
