.class public final Ld1/l;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lb3/o0;

.field public final synthetic b:Lb3/o0;

.field public final synthetic c:F

.field public final synthetic d:Lf1/v2;

.field public final synthetic e:Lf9/n;

.field public final synthetic f:Z

.field public final synthetic g:Lf1/v2;


# direct methods
.method public constructor <init>(Lb3/o0;Lb3/o0;FLv/p0;Lf9/n;ZLv/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld1/l;->a:Lb3/o0;

    .line 2
    .line 3
    iput-object p2, p0, Ld1/l;->b:Lb3/o0;

    .line 4
    .line 5
    iput p3, p0, Ld1/l;->c:F

    .line 6
    .line 7
    iput-object p4, p0, Ld1/l;->d:Lf1/v2;

    .line 8
    .line 9
    iput-object p5, p0, Ld1/l;->e:Lf9/n;

    .line 10
    .line 11
    iput-boolean p6, p0, Ld1/l;->f:Z

    .line 12
    .line 13
    iput-object p7, p0, Ld1/l;->g:Lf1/v2;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    check-cast v5, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v1, v1, 0x3

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v5}, Lf1/s;->z()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v5}, Lf1/s;->Q()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_1
    :goto_0
    new-instance v6, Lb3/o0;

    .line 33
    .line 34
    iget-object v1, v0, Ld1/l;->a:Lb3/o0;

    .line 35
    .line 36
    iget-object v2, v1, Lb3/o0;->a:Lb3/e0;

    .line 37
    .line 38
    iget-object v3, v0, Ld1/l;->b:Lb3/o0;

    .line 39
    .line 40
    iget-object v4, v3, Lb3/o0;->a:Lb3/e0;

    .line 41
    .line 42
    sget-object v7, Lb3/g0;->d:Lm3/o;

    .line 43
    .line 44
    iget-object v7, v2, Lb3/e0;->a:Lm3/o;

    .line 45
    .line 46
    iget-object v8, v4, Lb3/e0;->a:Lm3/o;

    .line 47
    .line 48
    instance-of v9, v7, Lm3/b;

    .line 49
    .line 50
    iget v10, v0, Ld1/l;->c:F

    .line 51
    .line 52
    const-wide/16 v11, 0x10

    .line 53
    .line 54
    sget-object v13, Lm3/n;->a:Lm3/n;

    .line 55
    .line 56
    if-nez v9, :cond_3

    .line 57
    .line 58
    instance-of v14, v8, Lm3/b;

    .line 59
    .line 60
    if-nez v14, :cond_3

    .line 61
    .line 62
    invoke-interface {v7}, Lm3/o;->b()J

    .line 63
    .line 64
    .line 65
    move-result-wide v14

    .line 66
    invoke-interface {v8}, Lm3/o;->b()J

    .line 67
    .line 68
    .line 69
    move-result-wide v7

    .line 70
    invoke-static {v10, v14, v15, v7, v8}, Ly1/h0;->q(FJJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    cmp-long v9, v7, v11

    .line 75
    .line 76
    if-eqz v9, :cond_2

    .line 77
    .line 78
    new-instance v13, Lm3/c;

    .line 79
    .line 80
    invoke-direct {v13, v7, v8}, Lm3/c;-><init>(J)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    move-object v15, v13

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    if-eqz v9, :cond_7

    .line 86
    .line 87
    instance-of v9, v8, Lm3/b;

    .line 88
    .line 89
    if-eqz v9, :cond_7

    .line 90
    .line 91
    check-cast v7, Lm3/b;

    .line 92
    .line 93
    iget-object v9, v7, Lm3/b;->a:Ly1/j0;

    .line 94
    .line 95
    check-cast v8, Lm3/b;

    .line 96
    .line 97
    iget-object v14, v8, Lm3/b;->a:Ly1/j0;

    .line 98
    .line 99
    invoke-static {v10, v9, v14}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    check-cast v9, Ly1/m;

    .line 104
    .line 105
    iget v7, v7, Lm3/b;->b:F

    .line 106
    .line 107
    iget v8, v8, Lm3/b;->b:F

    .line 108
    .line 109
    invoke-static {v7, v8, v10}, Lm9/e0;->p0(FFF)F

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-nez v9, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    instance-of v8, v9, Ly1/n0;

    .line 117
    .line 118
    if-eqz v8, :cond_5

    .line 119
    .line 120
    check-cast v9, Ly1/n0;

    .line 121
    .line 122
    iget-wide v8, v9, Ly1/n0;->a:J

    .line 123
    .line 124
    invoke-static {v7, v8, v9}, Lg5/a;->Q(FJ)J

    .line 125
    .line 126
    .line 127
    move-result-wide v7

    .line 128
    cmp-long v9, v7, v11

    .line 129
    .line 130
    if-eqz v9, :cond_2

    .line 131
    .line 132
    new-instance v13, Lm3/c;

    .line 133
    .line 134
    invoke-direct {v13, v7, v8}, Lm3/c;-><init>(J)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    instance-of v8, v9, Ly1/j0;

    .line 139
    .line 140
    if-eqz v8, :cond_6

    .line 141
    .line 142
    new-instance v13, Lm3/b;

    .line 143
    .line 144
    check-cast v9, Ly1/j0;

    .line 145
    .line 146
    invoke-direct {v13, v9, v7}, Lm3/b;-><init>(Ly1/j0;F)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    new-instance v1, Lac/p;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 153
    .line 154
    .line 155
    throw v1

    .line 156
    :cond_7
    invoke-static {v10, v7, v8}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    move-object v13, v7

    .line 161
    check-cast v13, Lm3/o;

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :goto_2
    iget-object v7, v2, Lb3/e0;->f:Lf3/n;

    .line 165
    .line 166
    iget-object v8, v4, Lb3/e0;->f:Lf3/n;

    .line 167
    .line 168
    invoke-static {v10, v7, v8}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    move-object/from16 v21, v7

    .line 173
    .line 174
    check-cast v21, Lf3/n;

    .line 175
    .line 176
    iget-wide v7, v2, Lb3/e0;->b:J

    .line 177
    .line 178
    iget-wide v11, v4, Lb3/e0;->b:J

    .line 179
    .line 180
    invoke-static {v10, v7, v8, v11, v12}, Lb3/g0;->c(FJJ)J

    .line 181
    .line 182
    .line 183
    move-result-wide v16

    .line 184
    iget-object v7, v2, Lb3/e0;->c:Lf3/k;

    .line 185
    .line 186
    if-nez v7, :cond_8

    .line 187
    .line 188
    sget-object v7, Lf3/k;->c:Lf3/k;

    .line 189
    .line 190
    :cond_8
    iget-object v8, v4, Lb3/e0;->c:Lf3/k;

    .line 191
    .line 192
    if-nez v8, :cond_9

    .line 193
    .line 194
    sget-object v8, Lf3/k;->c:Lf3/k;

    .line 195
    .line 196
    :cond_9
    iget v7, v7, Lf3/k;->a:I

    .line 197
    .line 198
    iget v8, v8, Lf3/k;->a:I

    .line 199
    .line 200
    invoke-static {v10, v7, v8}, Lm9/e0;->q0(FII)I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    const/4 v8, 0x1

    .line 205
    const/16 v9, 0x3e8

    .line 206
    .line 207
    invoke-static {v7, v8, v9}, Li9/a;->n(III)I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    new-instance v8, Lf3/k;

    .line 212
    .line 213
    invoke-direct {v8, v7}, Lf3/k;-><init>(I)V

    .line 214
    .line 215
    .line 216
    iget-object v7, v2, Lb3/e0;->d:Lf3/i;

    .line 217
    .line 218
    iget-object v9, v4, Lb3/e0;->d:Lf3/i;

    .line 219
    .line 220
    invoke-static {v10, v7, v9}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    move-object/from16 v19, v7

    .line 225
    .line 226
    check-cast v19, Lf3/i;

    .line 227
    .line 228
    iget-object v7, v2, Lb3/e0;->e:Lf3/j;

    .line 229
    .line 230
    iget-object v9, v4, Lb3/e0;->e:Lf3/j;

    .line 231
    .line 232
    invoke-static {v10, v7, v9}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    move-object/from16 v20, v7

    .line 237
    .line 238
    check-cast v20, Lf3/j;

    .line 239
    .line 240
    iget-object v7, v2, Lb3/e0;->g:Ljava/lang/String;

    .line 241
    .line 242
    iget-object v9, v4, Lb3/e0;->g:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v10, v7, v9}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    move-object/from16 v22, v7

    .line 249
    .line 250
    check-cast v22, Ljava/lang/String;

    .line 251
    .line 252
    iget-wide v11, v2, Lb3/e0;->h:J

    .line 253
    .line 254
    iget-wide v13, v4, Lb3/e0;->h:J

    .line 255
    .line 256
    invoke-static {v10, v11, v12, v13, v14}, Lb3/g0;->c(FJJ)J

    .line 257
    .line 258
    .line 259
    move-result-wide v23

    .line 260
    iget-object v7, v2, Lb3/e0;->i:Lm3/a;

    .line 261
    .line 262
    const/4 v9, 0x0

    .line 263
    if-eqz v7, :cond_a

    .line 264
    .line 265
    iget v7, v7, Lm3/a;->a:F

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_a
    const/4 v7, 0x0

    .line 269
    :goto_3
    iget-object v11, v4, Lb3/e0;->i:Lm3/a;

    .line 270
    .line 271
    if-eqz v11, :cond_b

    .line 272
    .line 273
    iget v9, v11, Lm3/a;->a:F

    .line 274
    .line 275
    :cond_b
    invoke-static {v7, v9, v10}, Lm9/e0;->p0(FFF)F

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    iget-object v9, v2, Lb3/e0;->j:Lm3/p;

    .line 280
    .line 281
    sget-object v11, Lm3/p;->c:Lm3/p;

    .line 282
    .line 283
    if-nez v9, :cond_c

    .line 284
    .line 285
    move-object v9, v11

    .line 286
    :cond_c
    iget-object v12, v4, Lb3/e0;->j:Lm3/p;

    .line 287
    .line 288
    if-nez v12, :cond_d

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_d
    move-object v11, v12

    .line 292
    :goto_4
    new-instance v12, Lm3/p;

    .line 293
    .line 294
    iget v13, v9, Lm3/p;->a:F

    .line 295
    .line 296
    iget v14, v11, Lm3/p;->a:F

    .line 297
    .line 298
    invoke-static {v13, v14, v10}, Lm9/e0;->p0(FFF)F

    .line 299
    .line 300
    .line 301
    move-result v13

    .line 302
    iget v9, v9, Lm3/p;->b:F

    .line 303
    .line 304
    iget v11, v11, Lm3/p;->b:F

    .line 305
    .line 306
    invoke-static {v9, v11, v10}, Lm9/e0;->p0(FFF)F

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    invoke-direct {v12, v13, v9}, Lm3/p;-><init>(FF)V

    .line 311
    .line 312
    .line 313
    iget-object v9, v2, Lb3/e0;->k:Li3/b;

    .line 314
    .line 315
    iget-object v11, v4, Lb3/e0;->k:Li3/b;

    .line 316
    .line 317
    invoke-static {v10, v9, v11}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    move-object/from16 v27, v9

    .line 322
    .line 323
    check-cast v27, Li3/b;

    .line 324
    .line 325
    iget-wide v13, v2, Lb3/e0;->l:J

    .line 326
    .line 327
    move-object/from16 v18, v8

    .line 328
    .line 329
    iget-wide v8, v4, Lb3/e0;->l:J

    .line 330
    .line 331
    invoke-static {v10, v13, v14, v8, v9}, Ly1/h0;->q(FJJ)J

    .line 332
    .line 333
    .line 334
    move-result-wide v28

    .line 335
    iget-object v8, v2, Lb3/e0;->m:Lm3/l;

    .line 336
    .line 337
    iget-object v9, v4, Lb3/e0;->m:Lm3/l;

    .line 338
    .line 339
    invoke-static {v10, v8, v9}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    move-object/from16 v30, v8

    .line 344
    .line 345
    check-cast v30, Lm3/l;

    .line 346
    .line 347
    iget-object v8, v2, Lb3/e0;->n:Ly1/k0;

    .line 348
    .line 349
    if-nez v8, :cond_e

    .line 350
    .line 351
    new-instance v8, Ly1/k0;

    .line 352
    .line 353
    invoke-direct {v8}, Ly1/k0;-><init>()V

    .line 354
    .line 355
    .line 356
    :cond_e
    iget-object v9, v4, Lb3/e0;->n:Ly1/k0;

    .line 357
    .line 358
    if-nez v9, :cond_f

    .line 359
    .line 360
    new-instance v9, Ly1/k0;

    .line 361
    .line 362
    invoke-direct {v9}, Ly1/k0;-><init>()V

    .line 363
    .line 364
    .line 365
    :cond_f
    new-instance v31, Ly1/k0;

    .line 366
    .line 367
    iget-wide v13, v8, Ly1/k0;->a:J

    .line 368
    .line 369
    move-object/from16 v26, v12

    .line 370
    .line 371
    iget-wide v11, v9, Ly1/k0;->a:J

    .line 372
    .line 373
    invoke-static {v10, v13, v14, v11, v12}, Ly1/h0;->q(FJJ)J

    .line 374
    .line 375
    .line 376
    move-result-wide v33

    .line 377
    iget-wide v11, v8, Ly1/k0;->b:J

    .line 378
    .line 379
    iget-wide v13, v9, Ly1/k0;->b:J

    .line 380
    .line 381
    invoke-static {v10, v11, v12, v13, v14}, Lp9/q;->G(FJJ)J

    .line 382
    .line 383
    .line 384
    move-result-wide v35

    .line 385
    iget v8, v8, Ly1/k0;->c:F

    .line 386
    .line 387
    iget v9, v9, Ly1/k0;->c:F

    .line 388
    .line 389
    invoke-static {v8, v9, v10}, Lm9/e0;->p0(FFF)F

    .line 390
    .line 391
    .line 392
    move-result v32

    .line 393
    invoke-direct/range {v31 .. v36}, Ly1/k0;-><init>(FJJ)V

    .line 394
    .line 395
    .line 396
    iget-object v8, v2, Lb3/e0;->o:Lb3/x;

    .line 397
    .line 398
    iget-object v9, v4, Lb3/e0;->o:Lb3/x;

    .line 399
    .line 400
    const/4 v11, 0x0

    .line 401
    if-nez v8, :cond_10

    .line 402
    .line 403
    if-nez v9, :cond_10

    .line 404
    .line 405
    move-object/from16 v32, v11

    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_10
    if-nez v8, :cond_11

    .line 409
    .line 410
    sget-object v8, Lb3/x;->a:Lb3/x;

    .line 411
    .line 412
    :cond_11
    move-object/from16 v32, v8

    .line 413
    .line 414
    :goto_5
    iget-object v2, v2, Lb3/e0;->p:La2/h;

    .line 415
    .line 416
    iget-object v4, v4, Lb3/e0;->p:La2/h;

    .line 417
    .line 418
    invoke-static {v10, v2, v4}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    move-object/from16 v33, v2

    .line 423
    .line 424
    check-cast v33, La2/h;

    .line 425
    .line 426
    new-instance v14, Lb3/e0;

    .line 427
    .line 428
    new-instance v2, Lm3/a;

    .line 429
    .line 430
    invoke-direct {v2, v7}, Lm3/a;-><init>(F)V

    .line 431
    .line 432
    .line 433
    move-object/from16 v25, v2

    .line 434
    .line 435
    invoke-direct/range {v14 .. v33}, Lb3/e0;-><init>(Lm3/o;JLf3/k;Lf3/i;Lf3/j;Lf3/n;Ljava/lang/String;JLm3/a;Lm3/p;Li3/b;JLm3/l;Ly1/k0;Lb3/x;La2/h;)V

    .line 436
    .line 437
    .line 438
    iget-object v1, v1, Lb3/o0;->b:Lb3/u;

    .line 439
    .line 440
    iget-object v2, v3, Lb3/o0;->b:Lb3/u;

    .line 441
    .line 442
    sget v3, Lb3/v;->b:I

    .line 443
    .line 444
    new-instance v15, Lb3/u;

    .line 445
    .line 446
    iget v3, v1, Lb3/u;->a:I

    .line 447
    .line 448
    new-instance v4, Lm3/k;

    .line 449
    .line 450
    invoke-direct {v4, v3}, Lm3/k;-><init>(I)V

    .line 451
    .line 452
    .line 453
    iget v3, v2, Lb3/u;->a:I

    .line 454
    .line 455
    new-instance v7, Lm3/k;

    .line 456
    .line 457
    invoke-direct {v7, v3}, Lm3/k;-><init>(I)V

    .line 458
    .line 459
    .line 460
    invoke-static {v10, v4, v7}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    check-cast v3, Lm3/k;

    .line 465
    .line 466
    iget v3, v3, Lm3/k;->a:I

    .line 467
    .line 468
    iget v4, v1, Lb3/u;->b:I

    .line 469
    .line 470
    new-instance v7, Lm3/m;

    .line 471
    .line 472
    invoke-direct {v7, v4}, Lm3/m;-><init>(I)V

    .line 473
    .line 474
    .line 475
    iget v4, v2, Lb3/u;->b:I

    .line 476
    .line 477
    new-instance v8, Lm3/m;

    .line 478
    .line 479
    invoke-direct {v8, v4}, Lm3/m;-><init>(I)V

    .line 480
    .line 481
    .line 482
    invoke-static {v10, v7, v8}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    check-cast v4, Lm3/m;

    .line 487
    .line 488
    iget v4, v4, Lm3/m;->a:I

    .line 489
    .line 490
    iget-wide v7, v1, Lb3/u;->c:J

    .line 491
    .line 492
    iget-wide v12, v2, Lb3/u;->c:J

    .line 493
    .line 494
    invoke-static {v10, v7, v8, v12, v13}, Lb3/g0;->c(FJJ)J

    .line 495
    .line 496
    .line 497
    move-result-wide v18

    .line 498
    iget-object v7, v1, Lb3/u;->d:Lm3/q;

    .line 499
    .line 500
    if-nez v7, :cond_12

    .line 501
    .line 502
    sget-object v7, Lm3/q;->c:Lm3/q;

    .line 503
    .line 504
    :cond_12
    iget-object v8, v2, Lb3/u;->d:Lm3/q;

    .line 505
    .line 506
    if-nez v8, :cond_13

    .line 507
    .line 508
    sget-object v8, Lm3/q;->c:Lm3/q;

    .line 509
    .line 510
    :cond_13
    new-instance v9, Lm3/q;

    .line 511
    .line 512
    iget-wide v12, v7, Lm3/q;->a:J

    .line 513
    .line 514
    move/from16 v16, v3

    .line 515
    .line 516
    move/from16 v17, v4

    .line 517
    .line 518
    iget-wide v3, v8, Lm3/q;->a:J

    .line 519
    .line 520
    invoke-static {v10, v12, v13, v3, v4}, Lb3/g0;->c(FJJ)J

    .line 521
    .line 522
    .line 523
    move-result-wide v3

    .line 524
    iget-wide v12, v7, Lm3/q;->b:J

    .line 525
    .line 526
    iget-wide v7, v8, Lm3/q;->b:J

    .line 527
    .line 528
    invoke-static {v10, v12, v13, v7, v8}, Lb3/g0;->c(FJJ)J

    .line 529
    .line 530
    .line 531
    move-result-wide v7

    .line 532
    invoke-direct {v9, v3, v4, v7, v8}, Lm3/q;-><init>(JJ)V

    .line 533
    .line 534
    .line 535
    iget-object v3, v1, Lb3/u;->e:Lb3/w;

    .line 536
    .line 537
    iget-object v4, v2, Lb3/u;->e:Lb3/w;

    .line 538
    .line 539
    if-nez v3, :cond_14

    .line 540
    .line 541
    if-nez v4, :cond_14

    .line 542
    .line 543
    :goto_6
    move-object/from16 v21, v11

    .line 544
    .line 545
    goto :goto_8

    .line 546
    :cond_14
    sget-object v7, Lb3/w;->b:Lb3/w;

    .line 547
    .line 548
    if-nez v3, :cond_15

    .line 549
    .line 550
    move-object v11, v7

    .line 551
    goto :goto_7

    .line 552
    :cond_15
    move-object v11, v3

    .line 553
    :goto_7
    iget-boolean v3, v11, Lb3/w;->a:Z

    .line 554
    .line 555
    if-nez v4, :cond_16

    .line 556
    .line 557
    move-object v4, v7

    .line 558
    :cond_16
    iget-boolean v4, v4, Lb3/w;->a:Z

    .line 559
    .line 560
    if-ne v3, v4, :cond_17

    .line 561
    .line 562
    goto :goto_6

    .line 563
    :cond_17
    new-instance v11, Lb3/w;

    .line 564
    .line 565
    new-instance v7, Lb3/j;

    .line 566
    .line 567
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 568
    .line 569
    .line 570
    new-instance v8, Lb3/j;

    .line 571
    .line 572
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 573
    .line 574
    .line 575
    invoke-static {v10, v7, v8}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    check-cast v7, Lb3/j;

    .line 580
    .line 581
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-static {v10, v3, v4}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    check-cast v3, Ljava/lang/Boolean;

    .line 597
    .line 598
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    invoke-direct {v11, v3}, Lb3/w;-><init>(Z)V

    .line 603
    .line 604
    .line 605
    goto :goto_6

    .line 606
    :goto_8
    iget-object v3, v1, Lb3/u;->f:Lm3/i;

    .line 607
    .line 608
    iget-object v4, v2, Lb3/u;->f:Lm3/i;

    .line 609
    .line 610
    invoke-static {v10, v3, v4}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    move-object/from16 v22, v3

    .line 615
    .line 616
    check-cast v22, Lm3/i;

    .line 617
    .line 618
    iget v3, v1, Lb3/u;->g:I

    .line 619
    .line 620
    new-instance v4, Lm3/e;

    .line 621
    .line 622
    invoke-direct {v4, v3}, Lm3/e;-><init>(I)V

    .line 623
    .line 624
    .line 625
    iget v3, v2, Lb3/u;->g:I

    .line 626
    .line 627
    new-instance v7, Lm3/e;

    .line 628
    .line 629
    invoke-direct {v7, v3}, Lm3/e;-><init>(I)V

    .line 630
    .line 631
    .line 632
    invoke-static {v10, v4, v7}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    check-cast v3, Lm3/e;

    .line 637
    .line 638
    iget v3, v3, Lm3/e;->a:I

    .line 639
    .line 640
    iget v4, v1, Lb3/u;->h:I

    .line 641
    .line 642
    new-instance v7, Lm3/d;

    .line 643
    .line 644
    invoke-direct {v7, v4}, Lm3/d;-><init>(I)V

    .line 645
    .line 646
    .line 647
    iget v4, v2, Lb3/u;->h:I

    .line 648
    .line 649
    new-instance v8, Lm3/d;

    .line 650
    .line 651
    invoke-direct {v8, v4}, Lm3/d;-><init>(I)V

    .line 652
    .line 653
    .line 654
    invoke-static {v10, v7, v8}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    check-cast v4, Lm3/d;

    .line 659
    .line 660
    iget v4, v4, Lm3/d;->a:I

    .line 661
    .line 662
    iget-object v1, v1, Lb3/u;->i:Lm3/s;

    .line 663
    .line 664
    iget-object v2, v2, Lb3/u;->i:Lm3/s;

    .line 665
    .line 666
    invoke-static {v10, v1, v2}, Lb3/g0;->b(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    move-object/from16 v25, v1

    .line 671
    .line 672
    check-cast v25, Lm3/s;

    .line 673
    .line 674
    move/from16 v23, v3

    .line 675
    .line 676
    move/from16 v24, v4

    .line 677
    .line 678
    move-object/from16 v20, v9

    .line 679
    .line 680
    invoke-direct/range {v15 .. v25}, Lb3/u;-><init>(IIJLm3/q;Lb3/w;Lm3/i;IILm3/s;)V

    .line 681
    .line 682
    .line 683
    invoke-direct {v6, v14, v15}, Lb3/o0;-><init>(Lb3/e0;Lb3/u;)V

    .line 684
    .line 685
    .line 686
    iget-boolean v1, v0, Ld1/l;->f:Z

    .line 687
    .line 688
    if-eqz v1, :cond_18

    .line 689
    .line 690
    iget-object v1, v0, Ld1/l;->g:Lf1/v2;

    .line 691
    .line 692
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    check-cast v1, Ly1/q;

    .line 697
    .line 698
    iget-wide v7, v1, Ly1/q;->a:J

    .line 699
    .line 700
    const/16 v17, 0x0

    .line 701
    .line 702
    const v18, 0xfffffe

    .line 703
    .line 704
    .line 705
    const-wide/16 v9, 0x0

    .line 706
    .line 707
    const/4 v11, 0x0

    .line 708
    const/4 v12, 0x0

    .line 709
    const-wide/16 v13, 0x0

    .line 710
    .line 711
    const-wide/16 v15, 0x0

    .line 712
    .line 713
    invoke-static/range {v6 .. v18}, Lb3/o0;->a(Lb3/o0;JJLf3/k;Lf3/n;JJLm3/i;I)Lb3/o0;

    .line 714
    .line 715
    .line 716
    move-result-object v6

    .line 717
    :cond_18
    move-object v3, v6

    .line 718
    iget-object v1, v0, Ld1/l;->d:Lf1/v2;

    .line 719
    .line 720
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    check-cast v1, Ly1/q;

    .line 725
    .line 726
    iget-wide v1, v1, Ly1/q;->a:J

    .line 727
    .line 728
    iget-object v4, v0, Ld1/l;->e:Lf9/n;

    .line 729
    .line 730
    const/4 v6, 0x0

    .line 731
    invoke-static/range {v1 .. v6}, Ld1/r;->b(JLb3/o0;Lf9/n;Lf1/s;I)V

    .line 732
    .line 733
    .line 734
    :goto_9
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 735
    .line 736
    return-object v1
.end method
