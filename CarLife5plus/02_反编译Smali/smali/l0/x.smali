.class public final Ll0/x;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/m0;


# instance fields
.field public final synthetic a:Ll0/s0;

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lg3/w;

.field public final synthetic d:Lg3/q;

.field public final synthetic e:Ln3/c;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ll0/s0;Lf9/k;Lg3/w;Lg3/q;Ln3/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/x;->a:Ll0/s0;

    .line 5
    .line 6
    iput-object p2, p0, Ll0/x;->b:Lf9/k;

    .line 7
    .line 8
    iput-object p3, p0, Ll0/x;->c:Lg3/w;

    .line 9
    .line 10
    iput-object p4, p0, Ll0/x;->d:Lg3/q;

    .line 11
    .line 12
    iput-object p5, p0, Ll0/x;->e:Ln3/c;

    .line 13
    .line 14
    iput p6, p0, Ll0/x;->f:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic a(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->j(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final c(Lo2/o0;Ljava/util/List;J)Lo2/n0;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Ll0/x;->a:Ll0/s0;

    .line 4
    .line 5
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lp1/f;->e()Lf9/k;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-static {v2}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 22
    .line 23
    .line 24
    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v2, v4, v3}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 26
    .line 27
    .line 28
    if-eqz v15, :cond_1

    .line 29
    .line 30
    iget-object v2, v15, Ll0/q1;->a:Lb3/l0;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    :goto_1
    iget-object v3, v0, Ll0/s0;->a:Ll0/y0;

    .line 35
    .line 36
    invoke-interface/range {p1 .. p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    iget v4, v3, Ll0/y0;->f:I

    .line 41
    .line 42
    iget-boolean v5, v3, Ll0/y0;->e:Z

    .line 43
    .line 44
    iget v6, v3, Ll0/y0;->c:I

    .line 45
    .line 46
    const-wide v16, 0xffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const/16 v18, 0x20

    .line 52
    .line 53
    if-eqz v2, :cond_8

    .line 54
    .line 55
    iget-object v11, v2, Lb3/l0;->b:Lb3/o;

    .line 56
    .line 57
    iget-object v12, v2, Lb3/l0;->a:Lb3/k0;

    .line 58
    .line 59
    iget-object v13, v3, Ll0/y0;->a:Lb3/g;

    .line 60
    .line 61
    iget-object v8, v3, Ll0/y0;->b:Lb3/o0;

    .line 62
    .line 63
    iget-object v9, v3, Ll0/y0;->i:Ljava/util/List;

    .line 64
    .line 65
    iget-object v14, v3, Ll0/y0;->g:Ln3/c;

    .line 66
    .line 67
    iget-object v7, v3, Ll0/y0;->h:Lf3/d;

    .line 68
    .line 69
    move-object/from16 v21, v2

    .line 70
    .line 71
    iget-object v2, v11, Lb3/o;->a:Lb3/q;

    .line 72
    .line 73
    invoke-virtual {v2}, Lb3/q;->a()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    move-wide/from16 v12, p3

    .line 80
    .line 81
    move-object/from16 v22, v0

    .line 82
    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :cond_2
    iget-object v2, v12, Lb3/k0;->a:Lb3/g;

    .line 86
    .line 87
    move-object/from16 v22, v0

    .line 88
    .line 89
    iget-wide v0, v12, Lb3/k0;->j:J

    .line 90
    .line 91
    invoke-static {v2, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    iget-object v2, v12, Lb3/k0;->b:Lb3/o0;

    .line 98
    .line 99
    invoke-virtual {v2, v8}, Lb3/o0;->c(Lb3/o0;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    iget-object v2, v12, Lb3/k0;->c:Ljava/util/List;

    .line 106
    .line 107
    invoke-static {v2, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_7

    .line 112
    .line 113
    iget v2, v12, Lb3/k0;->d:I

    .line 114
    .line 115
    if-ne v2, v6, :cond_7

    .line 116
    .line 117
    iget-boolean v2, v12, Lb3/k0;->e:Z

    .line 118
    .line 119
    if-ne v2, v5, :cond_7

    .line 120
    .line 121
    iget v2, v12, Lb3/k0;->f:I

    .line 122
    .line 123
    if-ne v2, v4, :cond_7

    .line 124
    .line 125
    iget-object v2, v12, Lb3/k0;->g:Ln3/c;

    .line 126
    .line 127
    invoke-static {v2, v14}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_7

    .line 132
    .line 133
    iget-object v2, v12, Lb3/k0;->h:Ln3/m;

    .line 134
    .line 135
    if-ne v2, v10, :cond_7

    .line 136
    .line 137
    iget-object v2, v12, Lb3/k0;->i:Lf3/d;

    .line 138
    .line 139
    invoke-static {v2, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_3

    .line 144
    .line 145
    goto/16 :goto_5

    .line 146
    .line 147
    :cond_3
    invoke-static/range {p3 .. p4}, Ln3/a;->j(J)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-static {v0, v1}, Ln3/a;->j(J)I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eq v2, v7, :cond_4

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_4
    const/4 v2, 0x2

    .line 159
    if-nez v5, :cond_6

    .line 160
    .line 161
    if-ne v4, v2, :cond_5

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_5
    :goto_2
    const/16 v20, 0x2

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_6
    :goto_3
    invoke-static/range {p3 .. p4}, Ln3/a;->h(J)I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-static {v0, v1}, Ln3/a;->h(J)I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-ne v7, v8, :cond_7

    .line 176
    .line 177
    invoke-static/range {p3 .. p4}, Ln3/a;->g(J)I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    invoke-static {v0, v1}, Ln3/a;->g(J)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-ne v7, v0, :cond_7

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :goto_4
    new-instance v2, Lb3/k0;

    .line 189
    .line 190
    iget-object v0, v12, Lb3/k0;->a:Lb3/g;

    .line 191
    .line 192
    iget-object v4, v3, Ll0/y0;->b:Lb3/o0;

    .line 193
    .line 194
    iget-object v5, v12, Lb3/k0;->c:Ljava/util/List;

    .line 195
    .line 196
    iget v6, v12, Lb3/k0;->d:I

    .line 197
    .line 198
    iget-boolean v7, v12, Lb3/k0;->e:Z

    .line 199
    .line 200
    iget v8, v12, Lb3/k0;->f:I

    .line 201
    .line 202
    iget-object v9, v12, Lb3/k0;->g:Ln3/c;

    .line 203
    .line 204
    iget-object v10, v12, Lb3/k0;->h:Ln3/m;

    .line 205
    .line 206
    iget-object v1, v12, Lb3/k0;->i:Lf3/d;

    .line 207
    .line 208
    move-object v3, v11

    .line 209
    move-object v11, v1

    .line 210
    move-object v1, v3

    .line 211
    move-wide/from16 v12, p3

    .line 212
    .line 213
    move-object v3, v0

    .line 214
    move-object/from16 v14, v21

    .line 215
    .line 216
    const/4 v0, 0x2

    .line 217
    invoke-direct/range {v2 .. v13}, Lb3/k0;-><init>(Lb3/g;Lb3/o0;Ljava/util/List;IZILn3/c;Ln3/m;Lf3/d;J)V

    .line 218
    .line 219
    .line 220
    iget v3, v1, Lb3/o;->d:F

    .line 221
    .line 222
    invoke-static {v3}, Ll0/p0;->k(F)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    iget v4, v1, Lb3/o;->e:F

    .line 227
    .line 228
    invoke-static {v4}, Ll0/p0;->k(F)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    int-to-long v5, v3

    .line 233
    shl-long v5, v5, v18

    .line 234
    .line 235
    int-to-long v3, v4

    .line 236
    and-long v3, v3, v16

    .line 237
    .line 238
    or-long/2addr v3, v5

    .line 239
    invoke-static {v12, v13, v3, v4}, Ln3/b;->d(JJ)J

    .line 240
    .line 241
    .line 242
    move-result-wide v3

    .line 243
    new-instance v5, Lb3/l0;

    .line 244
    .line 245
    invoke-direct {v5, v2, v1, v3, v4}, Lb3/l0;-><init>(Lb3/k0;Lb3/o;J)V

    .line 246
    .line 247
    .line 248
    move-object/from16 p2, v15

    .line 249
    .line 250
    goto/16 :goto_b

    .line 251
    .line 252
    :cond_7
    :goto_5
    move-wide/from16 v12, p3

    .line 253
    .line 254
    :goto_6
    move-object/from16 v14, v21

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_8
    move-wide/from16 v12, p3

    .line 258
    .line 259
    move-object/from16 v22, v0

    .line 260
    .line 261
    move-object v14, v2

    .line 262
    :goto_7
    const/4 v0, 0x2

    .line 263
    invoke-virtual {v3, v10}, Ll0/y0;->a(Ln3/m;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v12, v13}, Ln3/a;->j(J)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v5, :cond_9

    .line 271
    .line 272
    if-ne v4, v0, :cond_a

    .line 273
    .line 274
    :cond_9
    invoke-static {v12, v13}, Ln3/a;->d(J)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_a

    .line 279
    .line 280
    invoke-static {v12, v13}, Ln3/a;->h(J)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    goto :goto_8

    .line 285
    :cond_a
    const v2, 0x7fffffff

    .line 286
    .line 287
    .line 288
    :goto_8
    if-nez v5, :cond_b

    .line 289
    .line 290
    if-ne v4, v0, :cond_b

    .line 291
    .line 292
    const/16 v27, 0x1

    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_b
    move/from16 v27, v6

    .line 296
    .line 297
    :goto_9
    const-string v4, "layoutIntrinsics must be called first"

    .line 298
    .line 299
    if-ne v1, v2, :cond_c

    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_c
    iget-object v5, v3, Ll0/y0;->j:Lb3/q;

    .line 303
    .line 304
    if-eqz v5, :cond_11

    .line 305
    .line 306
    invoke-virtual {v5}, Lb3/q;->h()F

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    invoke-static {v5}, Ll0/p0;->k(F)I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    invoke-static {v5, v1, v2}, Li9/a;->n(III)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    :goto_a
    new-instance v23, Lb3/o;

    .line 319
    .line 320
    iget-object v1, v3, Ll0/y0;->j:Lb3/q;

    .line 321
    .line 322
    if-eqz v1, :cond_10

    .line 323
    .line 324
    invoke-static {v12, v13}, Ln3/a;->g(J)I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    const/4 v5, 0x0

    .line 329
    invoke-static {v5, v2, v5, v4}, Lc7/a;->q(IIII)J

    .line 330
    .line 331
    .line 332
    move-result-wide v25

    .line 333
    iget v2, v3, Ll0/y0;->f:I

    .line 334
    .line 335
    move-object/from16 v24, v1

    .line 336
    .line 337
    move/from16 v28, v2

    .line 338
    .line 339
    invoke-direct/range {v23 .. v28}, Lb3/o;-><init>(Lb3/q;JII)V

    .line 340
    .line 341
    .line 342
    move-object/from16 v1, v23

    .line 343
    .line 344
    iget v2, v1, Lb3/o;->d:F

    .line 345
    .line 346
    invoke-static {v2}, Ll0/p0;->k(F)I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    iget v4, v1, Lb3/o;->e:F

    .line 351
    .line 352
    invoke-static {v4}, Ll0/p0;->k(F)I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    int-to-long v5, v2

    .line 357
    shl-long v5, v5, v18

    .line 358
    .line 359
    int-to-long v7, v4

    .line 360
    and-long v7, v7, v16

    .line 361
    .line 362
    or-long/2addr v5, v7

    .line 363
    invoke-static {v12, v13, v5, v6}, Ln3/b;->d(JJ)J

    .line 364
    .line 365
    .line 366
    move-result-wide v4

    .line 367
    new-instance v2, Lb3/l0;

    .line 368
    .line 369
    move-object v6, v2

    .line 370
    new-instance v2, Lb3/k0;

    .line 371
    .line 372
    iget-object v7, v3, Ll0/y0;->a:Lb3/g;

    .line 373
    .line 374
    move-wide v8, v4

    .line 375
    iget-object v4, v3, Ll0/y0;->b:Lb3/o0;

    .line 376
    .line 377
    iget-object v5, v3, Ll0/y0;->i:Ljava/util/List;

    .line 378
    .line 379
    move-object v11, v6

    .line 380
    iget v6, v3, Ll0/y0;->c:I

    .line 381
    .line 382
    move-object/from16 v20, v7

    .line 383
    .line 384
    iget-boolean v7, v3, Ll0/y0;->e:Z

    .line 385
    .line 386
    move-wide/from16 v23, v8

    .line 387
    .line 388
    iget v8, v3, Ll0/y0;->f:I

    .line 389
    .line 390
    iget-object v9, v3, Ll0/y0;->g:Ln3/c;

    .line 391
    .line 392
    iget-object v3, v3, Ll0/y0;->h:Lf3/d;

    .line 393
    .line 394
    move-object v0, v11

    .line 395
    move-object/from16 v21, v14

    .line 396
    .line 397
    move-object/from16 p2, v15

    .line 398
    .line 399
    move-wide/from16 v14, v23

    .line 400
    .line 401
    move-object v11, v3

    .line 402
    move-object/from16 v3, v20

    .line 403
    .line 404
    invoke-direct/range {v2 .. v13}, Lb3/k0;-><init>(Lb3/g;Lb3/o0;Ljava/util/List;IZILn3/c;Ln3/m;Lf3/d;J)V

    .line 405
    .line 406
    .line 407
    invoke-direct {v0, v2, v1, v14, v15}, Lb3/l0;-><init>(Lb3/k0;Lb3/o;J)V

    .line 408
    .line 409
    .line 410
    move-object v5, v0

    .line 411
    :goto_b
    iget-wide v0, v5, Lb3/l0;->c:J

    .line 412
    .line 413
    shr-long v2, v0, v18

    .line 414
    .line 415
    long-to-int v3, v2

    .line 416
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    and-long v0, v0, v16

    .line 421
    .line 422
    long-to-int v1, v0

    .line 423
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    move-object/from16 v14, v21

    .line 436
    .line 437
    invoke-static {v14, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-nez v2, :cond_e

    .line 442
    .line 443
    new-instance v2, Ll0/q1;

    .line 444
    .line 445
    if-eqz p2, :cond_d

    .line 446
    .line 447
    move-object/from16 v3, p2

    .line 448
    .line 449
    iget-object v14, v3, Ll0/q1;->c:Lo2/w;

    .line 450
    .line 451
    goto :goto_c

    .line 452
    :cond_d
    const/4 v14, 0x0

    .line 453
    :goto_c
    invoke-direct {v2, v5, v14}, Ll0/q1;-><init>(Lb3/l0;Lo2/w;)V

    .line 454
    .line 455
    .line 456
    move-object/from16 v3, v22

    .line 457
    .line 458
    iget-object v4, v3, Ll0/s0;->i:Lf1/k1;

    .line 459
    .line 460
    invoke-virtual {v4, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    const/4 v2, 0x0

    .line 464
    iput-boolean v2, v3, Ll0/s0;->p:Z

    .line 465
    .line 466
    move-object/from16 v6, p0

    .line 467
    .line 468
    iget-object v4, v6, Ll0/x;->b:Lf9/k;

    .line 469
    .line 470
    invoke-interface {v4, v5}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    iget-object v4, v6, Ll0/x;->c:Lg3/w;

    .line 474
    .line 475
    iget-object v7, v6, Ll0/x;->d:Lg3/q;

    .line 476
    .line 477
    invoke-static {v3, v4, v7}, Ll0/p0;->u(Ll0/s0;Lg3/w;Lg3/q;)V

    .line 478
    .line 479
    .line 480
    goto :goto_d

    .line 481
    :cond_e
    move-object/from16 v6, p0

    .line 482
    .line 483
    move-object/from16 v3, v22

    .line 484
    .line 485
    const/4 v2, 0x0

    .line 486
    :goto_d
    iget v4, v6, Ll0/x;->f:I

    .line 487
    .line 488
    const/4 v7, 0x1

    .line 489
    if-ne v4, v7, :cond_f

    .line 490
    .line 491
    iget-object v4, v5, Lb3/l0;->b:Lb3/o;

    .line 492
    .line 493
    invoke-virtual {v4, v2}, Lb3/o;->b(I)F

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    invoke-static {v4}, Ll0/p0;->k(F)I

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    goto :goto_e

    .line 502
    :cond_f
    const/4 v9, 0x0

    .line 503
    :goto_e
    iget-object v2, v6, Ll0/x;->e:Ln3/c;

    .line 504
    .line 505
    invoke-interface {v2, v9}, Ln3/c;->H(I)F

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    iget-object v3, v3, Ll0/s0;->g:Lf1/k1;

    .line 510
    .line 511
    new-instance v4, Ln3/f;

    .line 512
    .line 513
    invoke-direct {v4, v2}, Ln3/f;-><init>(F)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3, v4}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    sget-object v2, Lo2/c;->a:Lo2/m;

    .line 520
    .line 521
    iget v3, v5, Lb3/l0;->d:F

    .line 522
    .line 523
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    new-instance v4, Lr8/j;

    .line 532
    .line 533
    invoke-direct {v4, v2, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    sget-object v2, Lo2/c;->b:Lo2/m;

    .line 537
    .line 538
    iget v3, v5, Lb3/l0;->e:F

    .line 539
    .line 540
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    new-instance v5, Lr8/j;

    .line 549
    .line 550
    invoke-direct {v5, v2, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    const/4 v2, 0x2

    .line 554
    new-array v2, v2, [Lr8/j;

    .line 555
    .line 556
    const/16 v19, 0x0

    .line 557
    .line 558
    aput-object v4, v2, v19

    .line 559
    .line 560
    aput-object v5, v2, v7

    .line 561
    .line 562
    invoke-static {v2}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    new-instance v3, Lv/x0;

    .line 567
    .line 568
    const/16 v4, 0x15

    .line 569
    .line 570
    invoke-direct {v3, v4}, Lv/x0;-><init>(I)V

    .line 571
    .line 572
    .line 573
    move-object/from16 v4, p1

    .line 574
    .line 575
    invoke-interface {v4, v1, v0, v2, v3}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    return-object v0

    .line 580
    :cond_10
    move-object/from16 v6, p0

    .line 581
    .line 582
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 583
    .line 584
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw v0

    .line 588
    :cond_11
    move-object/from16 v6, p0

    .line 589
    .line 590
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 591
    .line 592
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw v0

    .line 596
    :catchall_0
    move-exception v0

    .line 597
    move-object v6, v1

    .line 598
    invoke-static {v2, v4, v3}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 599
    .line 600
    .line 601
    throw v0
.end method

.method public final f(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    iget-object p2, p0, Ll0/x;->a:Ll0/s0;

    .line 2
    .line 3
    iget-object p3, p2, Ll0/s0;->a:Ll0/y0;

    .line 4
    .line 5
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p3, p1}, Ll0/y0;->a(Ln3/m;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p2, Ll0/s0;->a:Ll0/y0;

    .line 13
    .line 14
    iget-object p1, p1, Ll0/y0;->j:Lb3/q;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lb3/q;->h()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ll0/p0;->k(F)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string p2, "layoutIntrinsics must be called first"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final synthetic h(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->c(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic j(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->h(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
