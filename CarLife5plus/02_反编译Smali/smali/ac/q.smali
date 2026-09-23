.class public final synthetic Lac/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lac/q;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lac/q;->a:I

    .line 4
    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    const/16 v5, 0x9

    .line 13
    .line 14
    const/4 v9, -0x1

    .line 15
    const/4 v11, 0x4

    .line 16
    const/4 v12, 0x3

    .line 17
    const/4 v13, 0x2

    .line 18
    const/4 v14, 0x0

    .line 19
    const/4 v15, 0x1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    move-object/from16 v2, p2

    .line 32
    .line 33
    check-cast v2, Lw8/f;

    .line 34
    .line 35
    add-int/2addr v1, v15

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    return-object v1

    .line 41
    :pswitch_0
    move-object/from16 v1, p1

    .line 42
    .line 43
    check-cast v1, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    move-object/from16 v2, p2

    .line 50
    .line 51
    check-cast v2, Ln3/m;

    .line 52
    .line 53
    int-to-float v1, v1

    .line 54
    const/high16 v3, 0x40000000    # 2.0f

    .line 55
    .line 56
    div-float/2addr v1, v3

    .line 57
    sget-object v3, Ln3/m;->a:Ln3/m;

    .line 58
    .line 59
    const/high16 v4, -0x40800000    # -1.0f

    .line 60
    .line 61
    if-ne v2, v3, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    int-to-float v2, v9

    .line 65
    mul-float v4, v4, v2

    .line 66
    .line 67
    :goto_0
    int-to-float v2, v15

    .line 68
    add-float/2addr v2, v4

    .line 69
    mul-float v2, v2, v1

    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    return-object v1

    .line 80
    :pswitch_1
    move-object/from16 v1, p1

    .line 81
    .line 82
    check-cast v1, Lo1/a;

    .line 83
    .line 84
    move-object/from16 v1, p2

    .line 85
    .line 86
    check-cast v1, Lm3/s;

    .line 87
    .line 88
    iget v2, v1, Lm3/s;->a:I

    .line 89
    .line 90
    new-instance v3, Lm3/r;

    .line 91
    .line 92
    invoke-direct {v3, v2}, Lm3/r;-><init>(I)V

    .line 93
    .line 94
    .line 95
    sget-object v2, Lb3/c0;->a:Lu0/j;

    .line 96
    .line 97
    iget-boolean v1, v1, Lm3/s;->b:Z

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-array v2, v13, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v3, v2, v14

    .line 106
    .line 107
    aput-object v1, v2, v15

    .line 108
    .line 109
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    return-object v1

    .line 114
    :pswitch_2
    move-object/from16 v1, p1

    .line 115
    .line 116
    check-cast v1, Lo1/a;

    .line 117
    .line 118
    move-object/from16 v1, p2

    .line 119
    .line 120
    check-cast v1, Lm3/e;

    .line 121
    .line 122
    iget v1, v1, Lm3/e;->a:I

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    return-object v1

    .line 129
    :pswitch_3
    move-object/from16 v1, p1

    .line 130
    .line 131
    check-cast v1, Lo1/a;

    .line 132
    .line 133
    move-object/from16 v1, p2

    .line 134
    .line 135
    check-cast v1, Lb3/w;

    .line 136
    .line 137
    iget-boolean v1, v1, Lb3/w;->a:Z

    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    sget-object v2, Lb3/c0;->a:Lu0/j;

    .line 144
    .line 145
    new-instance v2, Lb3/j;

    .line 146
    .line 147
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    new-array v3, v13, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object v1, v3, v14

    .line 153
    .line 154
    aput-object v2, v3, v15

    .line 155
    .line 156
    invoke-static {v3}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    return-object v1

    .line 161
    :pswitch_4
    move-object/from16 v1, p1

    .line 162
    .line 163
    check-cast v1, Lo1/a;

    .line 164
    .line 165
    move-object/from16 v2, p2

    .line 166
    .line 167
    check-cast v2, Lb3/m0;

    .line 168
    .line 169
    iget-object v3, v2, Lb3/m0;->a:Lb3/e0;

    .line 170
    .line 171
    sget-object v4, Lb3/c0;->h:Lu0/j;

    .line 172
    .line 173
    invoke-static {v3, v4, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iget-object v5, v2, Lb3/m0;->b:Lb3/e0;

    .line 178
    .line 179
    invoke-static {v5, v4, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget-object v6, v2, Lb3/m0;->c:Lb3/e0;

    .line 184
    .line 185
    invoke-static {v6, v4, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    iget-object v2, v2, Lb3/m0;->d:Lb3/e0;

    .line 190
    .line 191
    invoke-static {v2, v4, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    new-array v2, v11, [Ljava/lang/Object;

    .line 196
    .line 197
    aput-object v3, v2, v14

    .line 198
    .line 199
    aput-object v5, v2, v15

    .line 200
    .line 201
    aput-object v6, v2, v13

    .line 202
    .line 203
    aput-object v1, v2, v12

    .line 204
    .line 205
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    return-object v1

    .line 210
    :pswitch_5
    move-object/from16 v1, p1

    .line 211
    .line 212
    check-cast v1, Lo1/a;

    .line 213
    .line 214
    move-object/from16 v2, p2

    .line 215
    .line 216
    check-cast v2, Lb3/e0;

    .line 217
    .line 218
    iget-object v3, v2, Lb3/e0;->a:Lm3/o;

    .line 219
    .line 220
    invoke-interface {v3}, Lm3/o;->b()J

    .line 221
    .line 222
    .line 223
    move-result-wide v3

    .line 224
    const/16 v16, 0x8

    .line 225
    .line 226
    new-instance v6, Ly1/q;

    .line 227
    .line 228
    invoke-direct {v6, v3, v4}, Ly1/q;-><init>(J)V

    .line 229
    .line 230
    .line 231
    sget-object v3, Lb3/c0;->p:Lb3/b0;

    .line 232
    .line 233
    invoke-static {v6, v3, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    const/4 v6, 0x7

    .line 238
    const/16 v17, 0x6

    .line 239
    .line 240
    iget-wide v7, v2, Lb3/e0;->b:J

    .line 241
    .line 242
    const/16 v18, 0x7

    .line 243
    .line 244
    new-instance v6, Ln3/o;

    .line 245
    .line 246
    invoke-direct {v6, v7, v8}, Ln3/o;-><init>(J)V

    .line 247
    .line 248
    .line 249
    sget-object v7, Lb3/c0;->q:Lb3/b0;

    .line 250
    .line 251
    invoke-static {v6, v7, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    iget-object v8, v2, Lb3/e0;->c:Lf3/k;

    .line 256
    .line 257
    sget-object v19, Lf3/k;->b:Lf3/k;

    .line 258
    .line 259
    const/16 v19, -0x1

    .line 260
    .line 261
    sget-object v9, Lb3/c0;->m:Lu0/j;

    .line 262
    .line 263
    invoke-static {v8, v9, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    iget-object v9, v2, Lb3/e0;->d:Lf3/i;

    .line 268
    .line 269
    const/16 v20, 0x4

    .line 270
    .line 271
    iget-object v11, v2, Lb3/e0;->e:Lf3/j;

    .line 272
    .line 273
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v19

    .line 277
    const/16 v21, 0x0

    .line 278
    .line 279
    iget-object v14, v2, Lb3/e0;->g:Ljava/lang/String;

    .line 280
    .line 281
    move-object/from16 p1, v11

    .line 282
    .line 283
    const/16 v22, 0x5

    .line 284
    .line 285
    iget-wide v10, v2, Lb3/e0;->h:J

    .line 286
    .line 287
    const/16 v23, 0x1

    .line 288
    .line 289
    new-instance v15, Ln3/o;

    .line 290
    .line 291
    invoke-direct {v15, v10, v11}, Ln3/o;-><init>(J)V

    .line 292
    .line 293
    .line 294
    invoke-static {v15, v7, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    iget-object v10, v2, Lb3/e0;->i:Lm3/a;

    .line 299
    .line 300
    sget-object v11, Lb3/c0;->n:Lu0/j;

    .line 301
    .line 302
    invoke-static {v10, v11, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    iget-object v11, v2, Lb3/e0;->j:Lm3/p;

    .line 307
    .line 308
    sget-object v15, Lb3/c0;->k:Lu0/j;

    .line 309
    .line 310
    invoke-static {v11, v15, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    iget-object v15, v2, Lb3/e0;->k:Li3/b;

    .line 315
    .line 316
    sget-object v24, Li3/b;->c:Li3/b;

    .line 317
    .line 318
    const/16 v24, 0x3

    .line 319
    .line 320
    sget-object v12, Lb3/c0;->s:Lu0/j;

    .line 321
    .line 322
    invoke-static {v15, v12, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v12

    .line 326
    move-object/from16 p2, v14

    .line 327
    .line 328
    const/4 v15, 0x2

    .line 329
    iget-wide v13, v2, Lb3/e0;->l:J

    .line 330
    .line 331
    const/16 v25, 0x2

    .line 332
    .line 333
    new-instance v15, Ly1/q;

    .line 334
    .line 335
    invoke-direct {v15, v13, v14}, Ly1/q;-><init>(J)V

    .line 336
    .line 337
    .line 338
    invoke-static {v15, v3, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    iget-object v13, v2, Lb3/e0;->m:Lm3/l;

    .line 343
    .line 344
    sget-object v14, Lb3/c0;->j:Lu0/j;

    .line 345
    .line 346
    invoke-static {v13, v14, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    iget-object v2, v2, Lb3/e0;->n:Ly1/k0;

    .line 351
    .line 352
    sget-object v14, Ly1/k0;->d:Ly1/k0;

    .line 353
    .line 354
    sget-object v14, Lb3/c0;->o:Lu0/j;

    .line 355
    .line 356
    invoke-static {v2, v14, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    const/16 v2, 0xe

    .line 361
    .line 362
    new-array v2, v2, [Ljava/lang/Object;

    .line 363
    .line 364
    aput-object v4, v2, v21

    .line 365
    .line 366
    aput-object v6, v2, v23

    .line 367
    .line 368
    aput-object v8, v2, v25

    .line 369
    .line 370
    aput-object v9, v2, v24

    .line 371
    .line 372
    aput-object p1, v2, v20

    .line 373
    .line 374
    aput-object v19, v2, v22

    .line 375
    .line 376
    aput-object p2, v2, v17

    .line 377
    .line 378
    aput-object v7, v2, v18

    .line 379
    .line 380
    aput-object v10, v2, v16

    .line 381
    .line 382
    aput-object v11, v2, v5

    .line 383
    .line 384
    const/16 v4, 0xa

    .line 385
    .line 386
    aput-object v12, v2, v4

    .line 387
    .line 388
    const/16 v4, 0xb

    .line 389
    .line 390
    aput-object v3, v2, v4

    .line 391
    .line 392
    const/16 v3, 0xc

    .line 393
    .line 394
    aput-object v13, v2, v3

    .line 395
    .line 396
    const/16 v3, 0xd

    .line 397
    .line 398
    aput-object v1, v2, v3

    .line 399
    .line 400
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    return-object v1

    .line 405
    :pswitch_6
    const/16 v16, 0x8

    .line 406
    .line 407
    const/16 v17, 0x6

    .line 408
    .line 409
    const/16 v18, 0x7

    .line 410
    .line 411
    const/16 v20, 0x4

    .line 412
    .line 413
    const/16 v21, 0x0

    .line 414
    .line 415
    const/16 v22, 0x5

    .line 416
    .line 417
    const/16 v23, 0x1

    .line 418
    .line 419
    const/16 v24, 0x3

    .line 420
    .line 421
    const/16 v25, 0x2

    .line 422
    .line 423
    move-object/from16 v1, p1

    .line 424
    .line 425
    check-cast v1, Lo1/a;

    .line 426
    .line 427
    move-object/from16 v2, p2

    .line 428
    .line 429
    check-cast v2, Lb3/u;

    .line 430
    .line 431
    iget v3, v2, Lb3/u;->a:I

    .line 432
    .line 433
    new-instance v4, Lm3/k;

    .line 434
    .line 435
    invoke-direct {v4, v3}, Lm3/k;-><init>(I)V

    .line 436
    .line 437
    .line 438
    iget v3, v2, Lb3/u;->b:I

    .line 439
    .line 440
    new-instance v6, Lm3/m;

    .line 441
    .line 442
    invoke-direct {v6, v3}, Lm3/m;-><init>(I)V

    .line 443
    .line 444
    .line 445
    iget-wide v7, v2, Lb3/u;->c:J

    .line 446
    .line 447
    new-instance v3, Ln3/o;

    .line 448
    .line 449
    invoke-direct {v3, v7, v8}, Ln3/o;-><init>(J)V

    .line 450
    .line 451
    .line 452
    sget-object v7, Lb3/c0;->q:Lb3/b0;

    .line 453
    .line 454
    invoke-static {v3, v7, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    iget-object v7, v2, Lb3/u;->d:Lm3/q;

    .line 459
    .line 460
    sget-object v8, Lm3/q;->c:Lm3/q;

    .line 461
    .line 462
    sget-object v8, Lb3/c0;->l:Lu0/j;

    .line 463
    .line 464
    invoke-static {v7, v8, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v7

    .line 468
    iget-object v8, v2, Lb3/u;->e:Lb3/w;

    .line 469
    .line 470
    sget-object v9, Lb3/d0;->a:Lu0/j;

    .line 471
    .line 472
    invoke-static {v8, v9, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    iget-object v9, v2, Lb3/u;->f:Lm3/i;

    .line 477
    .line 478
    sget-object v10, Lm3/i;->c:Lm3/i;

    .line 479
    .line 480
    sget-object v10, Lb3/c0;->u:Lu0/j;

    .line 481
    .line 482
    invoke-static {v9, v10, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    iget v10, v2, Lb3/u;->g:I

    .line 487
    .line 488
    new-instance v11, Lm3/e;

    .line 489
    .line 490
    invoke-direct {v11, v10}, Lm3/e;-><init>(I)V

    .line 491
    .line 492
    .line 493
    sget-object v10, Lb3/d0;->b:Lu0/j;

    .line 494
    .line 495
    invoke-static {v11, v10, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v10

    .line 499
    iget v11, v2, Lb3/u;->h:I

    .line 500
    .line 501
    new-instance v12, Lm3/d;

    .line 502
    .line 503
    invoke-direct {v12, v11}, Lm3/d;-><init>(I)V

    .line 504
    .line 505
    .line 506
    iget-object v2, v2, Lb3/u;->i:Lm3/s;

    .line 507
    .line 508
    sget-object v11, Lb3/d0;->c:Lu0/j;

    .line 509
    .line 510
    invoke-static {v2, v11, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    new-array v2, v5, [Ljava/lang/Object;

    .line 515
    .line 516
    aput-object v4, v2, v21

    .line 517
    .line 518
    aput-object v6, v2, v23

    .line 519
    .line 520
    aput-object v3, v2, v25

    .line 521
    .line 522
    aput-object v7, v2, v24

    .line 523
    .line 524
    aput-object v8, v2, v20

    .line 525
    .line 526
    aput-object v9, v2, v22

    .line 527
    .line 528
    aput-object v10, v2, v17

    .line 529
    .line 530
    aput-object v12, v2, v18

    .line 531
    .line 532
    aput-object v1, v2, v16

    .line 533
    .line 534
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    return-object v1

    .line 539
    :pswitch_7
    move-object/from16 v1, p1

    .line 540
    .line 541
    check-cast v1, Lo1/a;

    .line 542
    .line 543
    move-object/from16 v1, p2

    .line 544
    .line 545
    check-cast v1, Lb3/p0;

    .line 546
    .line 547
    iget-object v1, v1, Lb3/p0;->a:Ljava/lang/String;

    .line 548
    .line 549
    return-object v1

    .line 550
    :pswitch_8
    move-object/from16 v1, p1

    .line 551
    .line 552
    check-cast v1, Lo1/a;

    .line 553
    .line 554
    move-object/from16 v1, p2

    .line 555
    .line 556
    check-cast v1, Lb3/q0;

    .line 557
    .line 558
    iget-object v1, v1, Lb3/q0;->a:Ljava/lang/String;

    .line 559
    .line 560
    return-object v1

    .line 561
    :pswitch_9
    const/16 v21, 0x0

    .line 562
    .line 563
    const/16 v23, 0x1

    .line 564
    .line 565
    const/16 v25, 0x2

    .line 566
    .line 567
    move-object/from16 v1, p1

    .line 568
    .line 569
    check-cast v1, Lo1/a;

    .line 570
    .line 571
    move-object/from16 v2, p2

    .line 572
    .line 573
    check-cast v2, Lb3/k;

    .line 574
    .line 575
    iget-object v3, v2, Lb3/k;->a:Ljava/lang/String;

    .line 576
    .line 577
    iget-object v2, v2, Lb3/k;->b:Lb3/m0;

    .line 578
    .line 579
    sget-object v4, Lb3/c0;->i:Lu0/j;

    .line 580
    .line 581
    invoke-static {v2, v4, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    const/4 v15, 0x2

    .line 586
    new-array v2, v15, [Ljava/lang/Object;

    .line 587
    .line 588
    aput-object v3, v2, v21

    .line 589
    .line 590
    aput-object v1, v2, v23

    .line 591
    .line 592
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    return-object v1

    .line 597
    :pswitch_a
    const/16 v20, 0x4

    .line 598
    .line 599
    const/16 v21, 0x0

    .line 600
    .line 601
    const/16 v22, 0x5

    .line 602
    .line 603
    const/16 v23, 0x1

    .line 604
    .line 605
    const/16 v24, 0x3

    .line 606
    .line 607
    move-object/from16 v1, p1

    .line 608
    .line 609
    check-cast v1, Lo1/a;

    .line 610
    .line 611
    move-object/from16 v2, p2

    .line 612
    .line 613
    check-cast v2, Lb3/e;

    .line 614
    .line 615
    iget-object v3, v2, Lb3/e;->a:Ljava/lang/Object;

    .line 616
    .line 617
    instance-of v4, v3, Lb3/u;

    .line 618
    .line 619
    if-eqz v4, :cond_1

    .line 620
    .line 621
    sget-object v4, Lb3/i;->a:Lb3/i;

    .line 622
    .line 623
    goto :goto_1

    .line 624
    :cond_1
    instance-of v4, v3, Lb3/e0;

    .line 625
    .line 626
    if-eqz v4, :cond_2

    .line 627
    .line 628
    sget-object v4, Lb3/i;->b:Lb3/i;

    .line 629
    .line 630
    goto :goto_1

    .line 631
    :cond_2
    instance-of v4, v3, Lb3/q0;

    .line 632
    .line 633
    if-eqz v4, :cond_3

    .line 634
    .line 635
    sget-object v4, Lb3/i;->c:Lb3/i;

    .line 636
    .line 637
    goto :goto_1

    .line 638
    :cond_3
    instance-of v4, v3, Lb3/p0;

    .line 639
    .line 640
    if-eqz v4, :cond_4

    .line 641
    .line 642
    sget-object v4, Lb3/i;->d:Lb3/i;

    .line 643
    .line 644
    goto :goto_1

    .line 645
    :cond_4
    instance-of v4, v3, Lb3/l;

    .line 646
    .line 647
    if-eqz v4, :cond_5

    .line 648
    .line 649
    sget-object v4, Lb3/i;->e:Lb3/i;

    .line 650
    .line 651
    goto :goto_1

    .line 652
    :cond_5
    instance-of v4, v3, Lb3/k;

    .line 653
    .line 654
    if-eqz v4, :cond_6

    .line 655
    .line 656
    sget-object v4, Lb3/i;->f:Lb3/i;

    .line 657
    .line 658
    goto :goto_1

    .line 659
    :cond_6
    instance-of v4, v3, Lb3/h0;

    .line 660
    .line 661
    if-eqz v4, :cond_7

    .line 662
    .line 663
    sget-object v4, Lb3/i;->g:Lb3/i;

    .line 664
    .line 665
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 666
    .line 667
    .line 668
    move-result v5

    .line 669
    packed-switch v5, :pswitch_data_1

    .line 670
    .line 671
    .line 672
    new-instance v1, Lac/p;

    .line 673
    .line 674
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 675
    .line 676
    .line 677
    throw v1

    .line 678
    :pswitch_b
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.text.StringAnnotation"

    .line 679
    .line 680
    invoke-static {v3, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    check-cast v3, Lb3/h0;

    .line 684
    .line 685
    iget-object v1, v3, Lb3/h0;->a:Ljava/lang/String;

    .line 686
    .line 687
    goto :goto_2

    .line 688
    :pswitch_c
    const-string v5, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Clickable"

    .line 689
    .line 690
    invoke-static {v3, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    check-cast v3, Lb3/k;

    .line 694
    .line 695
    sget-object v5, Lb3/c0;->f:Lu0/j;

    .line 696
    .line 697
    invoke-static {v3, v5, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    goto :goto_2

    .line 702
    :pswitch_d
    const-string v5, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Url"

    .line 703
    .line 704
    invoke-static {v3, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    check-cast v3, Lb3/l;

    .line 708
    .line 709
    sget-object v5, Lb3/c0;->e:Lu0/j;

    .line 710
    .line 711
    invoke-static {v3, v5, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    goto :goto_2

    .line 716
    :pswitch_e
    const-string v5, "null cannot be cast to non-null type androidx.compose.ui.text.UrlAnnotation"

    .line 717
    .line 718
    invoke-static {v3, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    check-cast v3, Lb3/p0;

    .line 722
    .line 723
    sget-object v5, Lb3/c0;->d:Lu0/j;

    .line 724
    .line 725
    invoke-static {v3, v5, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    goto :goto_2

    .line 730
    :pswitch_f
    const-string v5, "null cannot be cast to non-null type androidx.compose.ui.text.VerbatimTtsAnnotation"

    .line 731
    .line 732
    invoke-static {v3, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    check-cast v3, Lb3/q0;

    .line 736
    .line 737
    sget-object v5, Lb3/c0;->c:Lu0/j;

    .line 738
    .line 739
    invoke-static {v3, v5, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    goto :goto_2

    .line 744
    :pswitch_10
    const-string v5, "null cannot be cast to non-null type androidx.compose.ui.text.SpanStyle"

    .line 745
    .line 746
    invoke-static {v3, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    check-cast v3, Lb3/e0;

    .line 750
    .line 751
    sget-object v5, Lb3/c0;->h:Lu0/j;

    .line 752
    .line 753
    invoke-static {v3, v5, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    goto :goto_2

    .line 758
    :pswitch_11
    const-string v5, "null cannot be cast to non-null type androidx.compose.ui.text.ParagraphStyle"

    .line 759
    .line 760
    invoke-static {v3, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    check-cast v3, Lb3/u;

    .line 764
    .line 765
    sget-object v5, Lb3/c0;->g:Lu0/j;

    .line 766
    .line 767
    invoke-static {v3, v5, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    :goto_2
    iget v3, v2, Lb3/e;->b:I

    .line 772
    .line 773
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    iget v5, v2, Lb3/e;->c:I

    .line 778
    .line 779
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    iget-object v2, v2, Lb3/e;->d:Ljava/lang/String;

    .line 784
    .line 785
    const/4 v6, 0x5

    .line 786
    new-array v6, v6, [Ljava/lang/Object;

    .line 787
    .line 788
    aput-object v4, v6, v21

    .line 789
    .line 790
    aput-object v1, v6, v23

    .line 791
    .line 792
    const/4 v15, 0x2

    .line 793
    aput-object v3, v6, v15

    .line 794
    .line 795
    aput-object v5, v6, v24

    .line 796
    .line 797
    aput-object v2, v6, v20

    .line 798
    .line 799
    invoke-static {v6}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    return-object v1

    .line 804
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 805
    .line 806
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 807
    .line 808
    .line 809
    throw v1

    .line 810
    :pswitch_12
    const/16 v21, 0x0

    .line 811
    .line 812
    const/16 v23, 0x1

    .line 813
    .line 814
    const/16 v24, 0x3

    .line 815
    .line 816
    move-object/from16 v1, p1

    .line 817
    .line 818
    check-cast v1, Lo1/a;

    .line 819
    .line 820
    move-object/from16 v1, p2

    .line 821
    .line 822
    check-cast v1, Lm3/i;

    .line 823
    .line 824
    iget v2, v1, Lm3/i;->a:F

    .line 825
    .line 826
    new-instance v3, Lm3/f;

    .line 827
    .line 828
    invoke-direct {v3, v2}, Lm3/f;-><init>(F)V

    .line 829
    .line 830
    .line 831
    iget v1, v1, Lm3/i;->b:I

    .line 832
    .line 833
    new-instance v2, Lm3/h;

    .line 834
    .line 835
    invoke-direct {v2, v1}, Lm3/h;-><init>(I)V

    .line 836
    .line 837
    .line 838
    new-instance v1, Lm3/g;

    .line 839
    .line 840
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 841
    .line 842
    .line 843
    const/4 v4, 0x3

    .line 844
    new-array v4, v4, [Ljava/lang/Object;

    .line 845
    .line 846
    aput-object v3, v4, v21

    .line 847
    .line 848
    aput-object v2, v4, v23

    .line 849
    .line 850
    const/4 v15, 0x2

    .line 851
    aput-object v1, v4, v15

    .line 852
    .line 853
    invoke-static {v4}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    return-object v1

    .line 858
    :pswitch_13
    move-object/from16 v1, p1

    .line 859
    .line 860
    check-cast v1, Lo1/a;

    .line 861
    .line 862
    move-object/from16 v1, p2

    .line 863
    .line 864
    check-cast v1, Li3/a;

    .line 865
    .line 866
    iget-object v1, v1, Li3/a;->a:Ljava/util/Locale;

    .line 867
    .line 868
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    return-object v1

    .line 873
    :pswitch_14
    const/16 v21, 0x0

    .line 874
    .line 875
    move-object/from16 v1, p1

    .line 876
    .line 877
    check-cast v1, Lo1/a;

    .line 878
    .line 879
    move-object/from16 v2, p2

    .line 880
    .line 881
    check-cast v2, Li3/b;

    .line 882
    .line 883
    iget-object v2, v2, Li3/b;->a:Ljava/util/List;

    .line 884
    .line 885
    new-instance v3, Ljava/util/ArrayList;

    .line 886
    .line 887
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 888
    .line 889
    .line 890
    move-result v4

    .line 891
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 892
    .line 893
    .line 894
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 895
    .line 896
    .line 897
    move-result v4

    .line 898
    const/4 v14, 0x0

    .line 899
    :goto_3
    if-ge v14, v4, :cond_8

    .line 900
    .line 901
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v5

    .line 905
    check-cast v5, Li3/a;

    .line 906
    .line 907
    sget-object v6, Lb3/c0;->t:Lu0/j;

    .line 908
    .line 909
    invoke-static {v5, v6, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v5

    .line 913
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    add-int/lit8 v14, v14, 0x1

    .line 917
    .line 918
    goto :goto_3

    .line 919
    :cond_8
    return-object v3

    .line 920
    :pswitch_15
    const/16 v21, 0x0

    .line 921
    .line 922
    const/16 v23, 0x1

    .line 923
    .line 924
    move-object/from16 v1, p1

    .line 925
    .line 926
    check-cast v1, Lo1/a;

    .line 927
    .line 928
    move-object/from16 v1, p2

    .line 929
    .line 930
    check-cast v1, Lx1/b;

    .line 931
    .line 932
    if-nez v1, :cond_9

    .line 933
    .line 934
    const/4 v5, 0x0

    .line 935
    goto :goto_4

    .line 936
    :cond_9
    iget-wide v5, v1, Lx1/b;->a:J

    .line 937
    .line 938
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    invoke-static {v5, v6, v7, v8}, Lx1/b;->b(JJ)Z

    .line 944
    .line 945
    .line 946
    move-result v5

    .line 947
    :goto_4
    if-eqz v5, :cond_a

    .line 948
    .line 949
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 950
    .line 951
    goto :goto_5

    .line 952
    :cond_a
    iget-wide v5, v1, Lx1/b;->a:J

    .line 953
    .line 954
    shr-long v4, v5, v4

    .line 955
    .line 956
    long-to-int v5, v4

    .line 957
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 958
    .line 959
    .line 960
    move-result v4

    .line 961
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    iget-wide v5, v1, Lx1/b;->a:J

    .line 966
    .line 967
    and-long/2addr v2, v5

    .line 968
    long-to-int v1, v2

    .line 969
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    const/4 v15, 0x2

    .line 978
    new-array v2, v15, [Ljava/lang/Float;

    .line 979
    .line 980
    aput-object v4, v2, v21

    .line 981
    .line 982
    aput-object v1, v2, v23

    .line 983
    .line 984
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    :goto_5
    return-object v1

    .line 989
    :pswitch_16
    const/16 v21, 0x0

    .line 990
    .line 991
    const/16 v23, 0x1

    .line 992
    .line 993
    move-object/from16 v1, p1

    .line 994
    .line 995
    check-cast v1, Lo1/a;

    .line 996
    .line 997
    move-object/from16 v1, p2

    .line 998
    .line 999
    check-cast v1, Ln3/o;

    .line 1000
    .line 1001
    sget-wide v2, Ln3/o;->c:J

    .line 1002
    .line 1003
    if-nez v1, :cond_b

    .line 1004
    .line 1005
    const/4 v2, 0x0

    .line 1006
    goto :goto_6

    .line 1007
    :cond_b
    iget-wide v4, v1, Ln3/o;->a:J

    .line 1008
    .line 1009
    invoke-static {v4, v5, v2, v3}, Ln3/o;->a(JJ)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v2

    .line 1013
    :goto_6
    if-eqz v2, :cond_c

    .line 1014
    .line 1015
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1016
    .line 1017
    goto :goto_7

    .line 1018
    :cond_c
    iget-wide v2, v1, Ln3/o;->a:J

    .line 1019
    .line 1020
    invoke-static {v2, v3}, Ln3/o;->c(J)F

    .line 1021
    .line 1022
    .line 1023
    move-result v2

    .line 1024
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v2

    .line 1028
    iget-wide v3, v1, Ln3/o;->a:J

    .line 1029
    .line 1030
    invoke-static {v3, v4}, Ln3/o;->b(J)J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v3

    .line 1034
    new-instance v1, Ln3/p;

    .line 1035
    .line 1036
    invoke-direct {v1, v3, v4}, Ln3/p;-><init>(J)V

    .line 1037
    .line 1038
    .line 1039
    const/4 v15, 0x2

    .line 1040
    new-array v3, v15, [Ljava/lang/Object;

    .line 1041
    .line 1042
    aput-object v2, v3, v21

    .line 1043
    .line 1044
    aput-object v1, v3, v23

    .line 1045
    .line 1046
    invoke-static {v3}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    :goto_7
    return-object v1

    .line 1051
    :pswitch_17
    const/16 v21, 0x0

    .line 1052
    .line 1053
    const/16 v23, 0x1

    .line 1054
    .line 1055
    move-object/from16 v1, p1

    .line 1056
    .line 1057
    check-cast v1, Lo1/a;

    .line 1058
    .line 1059
    move-object/from16 v2, p2

    .line 1060
    .line 1061
    check-cast v2, Ly1/k0;

    .line 1062
    .line 1063
    iget-wide v3, v2, Ly1/k0;->a:J

    .line 1064
    .line 1065
    new-instance v5, Ly1/q;

    .line 1066
    .line 1067
    invoke-direct {v5, v3, v4}, Ly1/q;-><init>(J)V

    .line 1068
    .line 1069
    .line 1070
    sget-object v3, Lb3/c0;->p:Lb3/b0;

    .line 1071
    .line 1072
    invoke-static {v5, v3, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v3

    .line 1076
    iget-wide v4, v2, Ly1/k0;->b:J

    .line 1077
    .line 1078
    new-instance v6, Lx1/b;

    .line 1079
    .line 1080
    invoke-direct {v6, v4, v5}, Lx1/b;-><init>(J)V

    .line 1081
    .line 1082
    .line 1083
    sget-object v4, Lb3/c0;->r:Lb3/b0;

    .line 1084
    .line 1085
    invoke-static {v6, v4, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v1

    .line 1089
    iget v2, v2, Ly1/k0;->c:F

    .line 1090
    .line 1091
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    const/4 v4, 0x3

    .line 1096
    new-array v4, v4, [Ljava/lang/Object;

    .line 1097
    .line 1098
    aput-object v3, v4, v21

    .line 1099
    .line 1100
    aput-object v1, v4, v23

    .line 1101
    .line 1102
    const/4 v15, 0x2

    .line 1103
    aput-object v2, v4, v15

    .line 1104
    .line 1105
    invoke-static {v4}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    return-object v1

    .line 1110
    :pswitch_18
    const/16 v21, 0x0

    .line 1111
    .line 1112
    const/16 v23, 0x1

    .line 1113
    .line 1114
    move-object/from16 v1, p1

    .line 1115
    .line 1116
    check-cast v1, Lo1/a;

    .line 1117
    .line 1118
    move-object/from16 v1, p2

    .line 1119
    .line 1120
    check-cast v1, Lb3/n0;

    .line 1121
    .line 1122
    iget-wide v5, v1, Lb3/n0;->a:J

    .line 1123
    .line 1124
    shr-long v4, v5, v4

    .line 1125
    .line 1126
    long-to-int v5, v4

    .line 1127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v4

    .line 1131
    iget-wide v5, v1, Lb3/n0;->a:J

    .line 1132
    .line 1133
    and-long/2addr v2, v5

    .line 1134
    long-to-int v1, v2

    .line 1135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    const/4 v15, 0x2

    .line 1140
    new-array v2, v15, [Ljava/lang/Integer;

    .line 1141
    .line 1142
    aput-object v4, v2, v21

    .line 1143
    .line 1144
    aput-object v1, v2, v23

    .line 1145
    .line 1146
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v1

    .line 1150
    return-object v1

    .line 1151
    :pswitch_19
    const/16 v21, 0x0

    .line 1152
    .line 1153
    move-object/from16 v1, p1

    .line 1154
    .line 1155
    check-cast v1, Lo1/a;

    .line 1156
    .line 1157
    move-object/from16 v2, p2

    .line 1158
    .line 1159
    check-cast v2, Ljava/util/List;

    .line 1160
    .line 1161
    new-instance v3, Ljava/util/ArrayList;

    .line 1162
    .line 1163
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1164
    .line 1165
    .line 1166
    move-result v4

    .line 1167
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1168
    .line 1169
    .line 1170
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1171
    .line 1172
    .line 1173
    move-result v4

    .line 1174
    const/4 v14, 0x0

    .line 1175
    :goto_8
    if-ge v14, v4, :cond_d

    .line 1176
    .line 1177
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v5

    .line 1181
    check-cast v5, Lb3/e;

    .line 1182
    .line 1183
    sget-object v6, Lb3/c0;->b:Lu0/j;

    .line 1184
    .line 1185
    invoke-static {v5, v6, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v5

    .line 1189
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    add-int/lit8 v14, v14, 0x1

    .line 1193
    .line 1194
    goto :goto_8

    .line 1195
    :cond_d
    return-object v3

    .line 1196
    :pswitch_1a
    move-object/from16 v1, p1

    .line 1197
    .line 1198
    check-cast v1, Lo1/a;

    .line 1199
    .line 1200
    move-object/from16 v1, p2

    .line 1201
    .line 1202
    check-cast v1, Lm3/a;

    .line 1203
    .line 1204
    iget v1, v1, Lm3/a;->a:F

    .line 1205
    .line 1206
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v1

    .line 1210
    return-object v1

    .line 1211
    :pswitch_1b
    const/16 v21, 0x0

    .line 1212
    .line 1213
    const/16 v23, 0x1

    .line 1214
    .line 1215
    move-object/from16 v1, p1

    .line 1216
    .line 1217
    check-cast v1, Lo1/a;

    .line 1218
    .line 1219
    move-object/from16 v2, p2

    .line 1220
    .line 1221
    check-cast v2, Lb3/l;

    .line 1222
    .line 1223
    iget-object v3, v2, Lb3/l;->a:Ljava/lang/String;

    .line 1224
    .line 1225
    iget-object v2, v2, Lb3/l;->b:Lb3/m0;

    .line 1226
    .line 1227
    sget-object v4, Lb3/c0;->i:Lu0/j;

    .line 1228
    .line 1229
    invoke-static {v2, v4, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v1

    .line 1233
    const/4 v15, 0x2

    .line 1234
    new-array v2, v15, [Ljava/lang/Object;

    .line 1235
    .line 1236
    aput-object v3, v2, v21

    .line 1237
    .line 1238
    aput-object v1, v2, v23

    .line 1239
    .line 1240
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v1

    .line 1244
    return-object v1

    .line 1245
    :pswitch_1c
    move-object/from16 v1, p1

    .line 1246
    .line 1247
    check-cast v1, Lo1/a;

    .line 1248
    .line 1249
    move-object/from16 v1, p2

    .line 1250
    .line 1251
    check-cast v1, Lf3/k;

    .line 1252
    .line 1253
    iget v1, v1, Lf3/k;->a:I

    .line 1254
    .line 1255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v1

    .line 1259
    return-object v1

    .line 1260
    :pswitch_1d
    const/16 v21, 0x0

    .line 1261
    .line 1262
    const/16 v23, 0x1

    .line 1263
    .line 1264
    move-object/from16 v1, p1

    .line 1265
    .line 1266
    check-cast v1, Lo1/a;

    .line 1267
    .line 1268
    move-object/from16 v2, p2

    .line 1269
    .line 1270
    check-cast v2, Lm3/q;

    .line 1271
    .line 1272
    iget-wide v3, v2, Lm3/q;->a:J

    .line 1273
    .line 1274
    new-instance v5, Ln3/o;

    .line 1275
    .line 1276
    invoke-direct {v5, v3, v4}, Ln3/o;-><init>(J)V

    .line 1277
    .line 1278
    .line 1279
    sget-object v3, Lb3/c0;->q:Lb3/b0;

    .line 1280
    .line 1281
    invoke-static {v5, v3, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v4

    .line 1285
    iget-wide v5, v2, Lm3/q;->b:J

    .line 1286
    .line 1287
    new-instance v2, Ln3/o;

    .line 1288
    .line 1289
    invoke-direct {v2, v5, v6}, Ln3/o;-><init>(J)V

    .line 1290
    .line 1291
    .line 1292
    invoke-static {v2, v3, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v1

    .line 1296
    const/4 v15, 0x2

    .line 1297
    new-array v2, v15, [Ljava/lang/Object;

    .line 1298
    .line 1299
    aput-object v4, v2, v21

    .line 1300
    .line 1301
    aput-object v1, v2, v23

    .line 1302
    .line 1303
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v1

    .line 1307
    return-object v1

    .line 1308
    :pswitch_1e
    const/4 v15, 0x2

    .line 1309
    const/16 v21, 0x0

    .line 1310
    .line 1311
    const/16 v23, 0x1

    .line 1312
    .line 1313
    move-object/from16 v1, p1

    .line 1314
    .line 1315
    check-cast v1, Lo1/a;

    .line 1316
    .line 1317
    move-object/from16 v1, p2

    .line 1318
    .line 1319
    check-cast v1, Lm3/p;

    .line 1320
    .line 1321
    iget v2, v1, Lm3/p;->a:F

    .line 1322
    .line 1323
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v2

    .line 1327
    iget v1, v1, Lm3/p;->b:F

    .line 1328
    .line 1329
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v1

    .line 1333
    new-array v3, v15, [Ljava/lang/Float;

    .line 1334
    .line 1335
    aput-object v2, v3, v21

    .line 1336
    .line 1337
    aput-object v1, v3, v23

    .line 1338
    .line 1339
    invoke-static {v3}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v1

    .line 1343
    return-object v1

    .line 1344
    :pswitch_1f
    move-object/from16 v1, p1

    .line 1345
    .line 1346
    check-cast v1, Lo1/a;

    .line 1347
    .line 1348
    move-object/from16 v1, p2

    .line 1349
    .line 1350
    check-cast v1, Lm3/l;

    .line 1351
    .line 1352
    iget v1, v1, Lm3/l;->a:I

    .line 1353
    .line 1354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v1

    .line 1358
    return-object v1

    .line 1359
    :pswitch_20
    const/16 v21, 0x0

    .line 1360
    .line 1361
    const/16 v23, 0x1

    .line 1362
    .line 1363
    move-object/from16 v1, p1

    .line 1364
    .line 1365
    check-cast v1, Lo1/a;

    .line 1366
    .line 1367
    move-object/from16 v2, p2

    .line 1368
    .line 1369
    check-cast v2, Lb3/g;

    .line 1370
    .line 1371
    iget-object v3, v2, Lb3/g;->b:Ljava/lang/String;

    .line 1372
    .line 1373
    iget-object v2, v2, Lb3/g;->a:Ljava/util/List;

    .line 1374
    .line 1375
    sget-object v4, Lb3/c0;->a:Lu0/j;

    .line 1376
    .line 1377
    invoke-static {v2, v4, v1}, Lb3/c0;->a(Ljava/lang/Object;Lo1/j;Lo1/a;)Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v1

    .line 1381
    const/4 v15, 0x2

    .line 1382
    new-array v2, v15, [Ljava/lang/Object;

    .line 1383
    .line 1384
    aput-object v3, v2, v21

    .line 1385
    .line 1386
    aput-object v1, v2, v23

    .line 1387
    .line 1388
    invoke-static {v2}, Lp9/x1;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v1

    .line 1392
    return-object v1

    .line 1393
    :pswitch_21
    move-object/from16 v1, p1

    .line 1394
    .line 1395
    check-cast v1, Ljava/lang/Boolean;

    .line 1396
    .line 1397
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1398
    .line 1399
    .line 1400
    move-object/from16 v2, p2

    .line 1401
    .line 1402
    check-cast v2, Lw8/f;

    .line 1403
    .line 1404
    return-object v1

    .line 1405
    :pswitch_22
    move-object/from16 v1, p1

    .line 1406
    .line 1407
    check-cast v1, Lw8/h;

    .line 1408
    .line 1409
    move-object/from16 v2, p2

    .line 1410
    .line 1411
    check-cast v2, Lw8/f;

    .line 1412
    .line 1413
    invoke-interface {v1, v2}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v1

    .line 1417
    return-object v1

    .line 1418
    :pswitch_23
    move-object/from16 v1, p1

    .line 1419
    .line 1420
    check-cast v1, Lw8/h;

    .line 1421
    .line 1422
    move-object/from16 v2, p2

    .line 1423
    .line 1424
    check-cast v2, Lw8/f;

    .line 1425
    .line 1426
    invoke-interface {v1, v2}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v1

    .line 1430
    return-object v1

    .line 1431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
