.class public final synthetic Lv/x0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lv/x0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv/x0;->a:I

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
    const-string v5, "it"

    .line 13
    .line 14
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 15
    .line 16
    const-string v7, "$this$update"

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Lj8/k0;

    .line 24
    .line 25
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lx7/j;->l:Ldc/l0;

    .line 29
    .line 30
    sget-object v2, Lx7/j;->l:Ldc/l0;

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v8, v3

    .line 37
    check-cast v8, Lx7/j;

    .line 38
    .line 39
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 43
    .line 44
    invoke-interface {v4}, Lj8/o0;->c()Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    const/16 v20, 0x7fd

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    const/16 v18, 0x0

    .line 63
    .line 64
    invoke-static/range {v8 .. v20}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    return-object v6

    .line 75
    :pswitch_0
    move-object/from16 v1, p1

    .line 76
    .line 77
    check-cast v1, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 84
    .line 85
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 86
    .line 87
    :cond_1
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    move-object v8, v2

    .line 92
    check-cast v8, Lx7/j;

    .line 93
    .line 94
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 v19, 0x0

    .line 98
    .line 99
    const/16 v20, 0x7fe

    .line 100
    .line 101
    const/4 v10, 0x0

    .line 102
    const/4 v11, 0x0

    .line 103
    const/4 v12, 0x0

    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v14, 0x0

    .line 106
    const/4 v15, 0x0

    .line 107
    const/16 v16, 0x0

    .line 108
    .line 109
    const/16 v17, 0x0

    .line 110
    .line 111
    const/16 v18, 0x0

    .line 112
    .line 113
    invoke-static/range {v8 .. v20}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    return-object v6

    .line 124
    :pswitch_1
    move-object/from16 v1, p1

    .line 125
    .line 126
    check-cast v1, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v18

    .line 132
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 133
    .line 134
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 135
    .line 136
    :cond_2
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    move-object v8, v2

    .line 141
    check-cast v8, Lx7/j;

    .line 142
    .line 143
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/16 v19, 0x0

    .line 147
    .line 148
    const/16 v20, 0x5ff

    .line 149
    .line 150
    const/4 v9, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    const/4 v11, 0x0

    .line 153
    const/4 v12, 0x0

    .line 154
    const/4 v13, 0x0

    .line 155
    const/4 v14, 0x0

    .line 156
    const/4 v15, 0x0

    .line 157
    const/16 v16, 0x0

    .line 158
    .line 159
    const/16 v17, 0x0

    .line 160
    .line 161
    invoke-static/range {v8 .. v20}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_2

    .line 170
    .line 171
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 172
    .line 173
    return-object v1

    .line 174
    :pswitch_2
    move-object/from16 v1, p1

    .line 175
    .line 176
    check-cast v1, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result v17

    .line 182
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 183
    .line 184
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 185
    .line 186
    :cond_3
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    move-object v8, v2

    .line 191
    check-cast v8, Lx7/j;

    .line 192
    .line 193
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const/16 v19, 0x0

    .line 197
    .line 198
    const/16 v20, 0x6ff

    .line 199
    .line 200
    const/4 v9, 0x0

    .line 201
    const/4 v10, 0x0

    .line 202
    const/4 v11, 0x0

    .line 203
    const/4 v12, 0x0

    .line 204
    const/4 v13, 0x0

    .line 205
    const/4 v14, 0x0

    .line 206
    const/4 v15, 0x0

    .line 207
    const/16 v16, 0x0

    .line 208
    .line 209
    const/16 v18, 0x0

    .line 210
    .line 211
    invoke-static/range {v8 .. v20}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_3

    .line 220
    .line 221
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 222
    .line 223
    return-object v1

    .line 224
    :pswitch_3
    move-object/from16 v1, p1

    .line 225
    .line 226
    check-cast v1, Ljava/lang/Boolean;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 229
    .line 230
    .line 231
    move-result v19

    .line 232
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 233
    .line 234
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 235
    .line 236
    :cond_4
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    move-object v8, v2

    .line 241
    check-cast v8, Lx7/j;

    .line 242
    .line 243
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const/16 v18, 0x0

    .line 247
    .line 248
    const/16 v20, 0x3ff

    .line 249
    .line 250
    const/4 v9, 0x0

    .line 251
    const/4 v10, 0x0

    .line 252
    const/4 v11, 0x0

    .line 253
    const/4 v12, 0x0

    .line 254
    const/4 v13, 0x0

    .line 255
    const/4 v14, 0x0

    .line 256
    const/4 v15, 0x0

    .line 257
    const/16 v16, 0x0

    .line 258
    .line 259
    const/16 v17, 0x0

    .line 260
    .line 261
    invoke-static/range {v8 .. v20}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_4

    .line 270
    .line 271
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 272
    .line 273
    return-object v1

    .line 274
    :pswitch_4
    move-object/from16 v1, p1

    .line 275
    .line 276
    check-cast v1, Ljava/lang/Integer;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    new-instance v2, Lx/n1;

    .line 283
    .line 284
    invoke-direct {v2, v1}, Lx/n1;-><init>(I)V

    .line 285
    .line 286
    .line 287
    return-object v2

    .line 288
    :pswitch_5
    move-object/from16 v1, p1

    .line 289
    .line 290
    check-cast v1, Lf1/q1;

    .line 291
    .line 292
    sget v2, Lx/j;->a:I

    .line 293
    .line 294
    sget-object v2, Lr2/n0;->b:Lf1/w2;

    .line 295
    .line 296
    check-cast v1, Ln1/g;

    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-static {v1, v2}, Lf1/b;->t(Lf1/q1;Lf1/t1;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    move-object v4, v2

    .line 306
    check-cast v4, Landroid/content/Context;

    .line 307
    .line 308
    sget-object v2, Lr2/i1;->h:Lf1/w2;

    .line 309
    .line 310
    invoke-static {v1, v2}, Lf1/b;->t(Lf1/q1;Lf1/t1;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    move-object v5, v2

    .line 315
    check-cast v5, Ln3/c;

    .line 316
    .line 317
    sget-object v2, Lx/c1;->a:Lf1/c0;

    .line 318
    .line 319
    invoke-static {v1, v2}, Lf1/b;->t(Lf1/q1;Lf1/t1;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    check-cast v1, Lx/b1;

    .line 324
    .line 325
    if-nez v1, :cond_5

    .line 326
    .line 327
    const/4 v1, 0x0

    .line 328
    goto :goto_0

    .line 329
    :cond_5
    new-instance v3, Lx/i;

    .line 330
    .line 331
    iget-wide v6, v1, Lx/b1;->a:J

    .line 332
    .line 333
    iget-object v8, v1, Lx/b1;->b:Ld0/h0;

    .line 334
    .line 335
    invoke-direct/range {v3 .. v8}, Lx/i;-><init>(Landroid/content/Context;Ln3/c;JLd0/h0;)V

    .line 336
    .line 337
    .line 338
    move-object v1, v3

    .line 339
    :goto_0
    return-object v1

    .line 340
    :pswitch_6
    move-object/from16 v1, p1

    .line 341
    .line 342
    check-cast v1, Ljava/lang/Long;

    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    return-object v6

    .line 348
    :pswitch_7
    move-object/from16 v1, p1

    .line 349
    .line 350
    check-cast v1, Lo2/u0;

    .line 351
    .line 352
    return-object v6

    .line 353
    :pswitch_8
    move-object/from16 v1, p1

    .line 354
    .line 355
    check-cast v1, Lq2/j0;

    .line 356
    .line 357
    invoke-virtual {v1}, Lq2/j0;->b()V

    .line 358
    .line 359
    .line 360
    return-object v6

    .line 361
    :pswitch_9
    if-nez p1, :cond_6

    .line 362
    .line 363
    const/4 v1, 0x1

    .line 364
    goto :goto_1

    .line 365
    :cond_6
    const/4 v1, 0x0

    .line 366
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    return-object v1

    .line 371
    :pswitch_a
    move-object/from16 v1, p1

    .line 372
    .line 373
    check-cast v1, Lwb/j;

    .line 374
    .line 375
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-interface {v1}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    return-object v1

    .line 383
    :pswitch_b
    move-object/from16 v1, p1

    .line 384
    .line 385
    check-cast v1, Ljava/lang/Long;

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 388
    .line 389
    .line 390
    move-result-wide v1

    .line 391
    new-instance v3, Lw0/c1;

    .line 392
    .line 393
    invoke-direct {v3, v1, v2}, Lw0/c1;-><init>(J)V

    .line 394
    .line 395
    .line 396
    return-object v3

    .line 397
    :pswitch_c
    move-object/from16 v1, p1

    .line 398
    .line 399
    check-cast v1, Lv/m;

    .line 400
    .line 401
    iget v5, v1, Lv/m;->a:F

    .line 402
    .line 403
    iget v1, v1, Lv/m;->b:F

    .line 404
    .line 405
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    int-to-long v5, v5

    .line 410
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    int-to-long v7, v1

    .line 415
    shl-long v4, v5, v4

    .line 416
    .line 417
    and-long/2addr v2, v7

    .line 418
    or-long/2addr v2, v4

    .line 419
    new-instance v1, Lx1/b;

    .line 420
    .line 421
    invoke-direct {v1, v2, v3}, Lx1/b;-><init>(J)V

    .line 422
    .line 423
    .line 424
    return-object v1

    .line 425
    :pswitch_d
    move-object/from16 v1, p1

    .line 426
    .line 427
    check-cast v1, Lx1/b;

    .line 428
    .line 429
    iget-wide v5, v1, Lx1/b;->a:J

    .line 430
    .line 431
    const-wide v7, 0x7fffffff7fffffffL

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    and-long/2addr v7, v5

    .line 437
    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    cmp-long v11, v7, v9

    .line 443
    .line 444
    if-eqz v11, :cond_7

    .line 445
    .line 446
    new-instance v7, Lv/m;

    .line 447
    .line 448
    shr-long v4, v5, v4

    .line 449
    .line 450
    long-to-int v5, v4

    .line 451
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    iget-wide v5, v1, Lx1/b;->a:J

    .line 456
    .line 457
    and-long/2addr v2, v5

    .line 458
    long-to-int v1, v2

    .line 459
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    invoke-direct {v7, v4, v1}, Lv/m;-><init>(FF)V

    .line 464
    .line 465
    .line 466
    goto :goto_2

    .line 467
    :cond_7
    sget-object v7, Lw0/t0;->a:Lv/m;

    .line 468
    .line 469
    :goto_2
    return-object v7

    .line 470
    :pswitch_e
    move-object/from16 v1, p1

    .line 471
    .line 472
    check-cast v1, Ljava/lang/Integer;

    .line 473
    .line 474
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 475
    .line 476
    .line 477
    move-result v14

    .line 478
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 479
    .line 480
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 481
    .line 482
    :cond_8
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    move-object v8, v2

    .line 487
    check-cast v8, Lv7/m;

    .line 488
    .line 489
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const/16 v20, 0x0

    .line 493
    .line 494
    const/16 v21, 0xfdf

    .line 495
    .line 496
    const/4 v9, 0x0

    .line 497
    const/4 v10, 0x0

    .line 498
    const/4 v11, 0x0

    .line 499
    const/4 v12, 0x0

    .line 500
    const/4 v13, 0x0

    .line 501
    const/4 v15, 0x0

    .line 502
    const/16 v16, 0x0

    .line 503
    .line 504
    const/16 v17, 0x0

    .line 505
    .line 506
    const/16 v18, 0x0

    .line 507
    .line 508
    const/16 v19, 0x0

    .line 509
    .line 510
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-eqz v2, :cond_8

    .line 519
    .line 520
    return-object v6

    .line 521
    :pswitch_f
    move-object/from16 v1, p1

    .line 522
    .line 523
    check-cast v1, Ljava/lang/Integer;

    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 526
    .line 527
    .line 528
    move-result v13

    .line 529
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 530
    .line 531
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 532
    .line 533
    :cond_9
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    move-object v8, v2

    .line 538
    check-cast v8, Lv7/m;

    .line 539
    .line 540
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    const/16 v20, 0x0

    .line 544
    .line 545
    const/16 v21, 0xfef

    .line 546
    .line 547
    const/4 v9, 0x0

    .line 548
    const/4 v10, 0x0

    .line 549
    const/4 v11, 0x0

    .line 550
    const/4 v12, 0x0

    .line 551
    const/4 v14, 0x0

    .line 552
    const/4 v15, 0x0

    .line 553
    const/16 v16, 0x0

    .line 554
    .line 555
    const/16 v17, 0x0

    .line 556
    .line 557
    const/16 v18, 0x0

    .line 558
    .line 559
    const/16 v19, 0x0

    .line 560
    .line 561
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-eqz v2, :cond_9

    .line 570
    .line 571
    return-object v6

    .line 572
    :pswitch_10
    move-object/from16 v1, p1

    .line 573
    .line 574
    check-cast v1, Ljava/lang/Integer;

    .line 575
    .line 576
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 577
    .line 578
    .line 579
    move-result v12

    .line 580
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 581
    .line 582
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 583
    .line 584
    :cond_a
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    move-object v8, v2

    .line 589
    check-cast v8, Lv7/m;

    .line 590
    .line 591
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    const/16 v20, 0x0

    .line 595
    .line 596
    const/16 v21, 0xff7

    .line 597
    .line 598
    const/4 v9, 0x0

    .line 599
    const/4 v10, 0x0

    .line 600
    const/4 v11, 0x0

    .line 601
    const/4 v13, 0x0

    .line 602
    const/4 v14, 0x0

    .line 603
    const/4 v15, 0x0

    .line 604
    const/16 v16, 0x0

    .line 605
    .line 606
    const/16 v17, 0x0

    .line 607
    .line 608
    const/16 v18, 0x0

    .line 609
    .line 610
    const/16 v19, 0x0

    .line 611
    .line 612
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-eqz v2, :cond_a

    .line 621
    .line 622
    return-object v6

    .line 623
    :pswitch_11
    move-object/from16 v1, p1

    .line 624
    .line 625
    check-cast v1, Ljava/lang/Integer;

    .line 626
    .line 627
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 628
    .line 629
    .line 630
    move-result v11

    .line 631
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 632
    .line 633
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 634
    .line 635
    :cond_b
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    move-object v8, v2

    .line 640
    check-cast v8, Lv7/m;

    .line 641
    .line 642
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    const/16 v20, 0x0

    .line 646
    .line 647
    const/16 v21, 0xffb

    .line 648
    .line 649
    const/4 v9, 0x0

    .line 650
    const/4 v10, 0x0

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v13, 0x0

    .line 653
    const/4 v14, 0x0

    .line 654
    const/4 v15, 0x0

    .line 655
    const/16 v16, 0x0

    .line 656
    .line 657
    const/16 v17, 0x0

    .line 658
    .line 659
    const/16 v18, 0x0

    .line 660
    .line 661
    const/16 v19, 0x0

    .line 662
    .line 663
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    if-eqz v2, :cond_b

    .line 672
    .line 673
    return-object v6

    .line 674
    :pswitch_12
    move-object/from16 v1, p1

    .line 675
    .line 676
    check-cast v1, Lj8/k0;

    .line 677
    .line 678
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    sget-object v2, Lv7/m;->m:Ldc/l0;

    .line 682
    .line 683
    sget-object v2, Lv7/m;->m:Ldc/l0;

    .line 684
    .line 685
    :cond_c
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    move-object v8, v3

    .line 690
    check-cast v8, Lv7/m;

    .line 691
    .line 692
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 696
    .line 697
    invoke-interface {v4}, Lj8/o0;->a()I

    .line 698
    .line 699
    .line 700
    move-result v9

    .line 701
    const/16 v20, 0x0

    .line 702
    .line 703
    const/16 v21, 0xffe

    .line 704
    .line 705
    const/4 v10, 0x0

    .line 706
    const/4 v11, 0x0

    .line 707
    const/4 v12, 0x0

    .line 708
    const/4 v13, 0x0

    .line 709
    const/4 v14, 0x0

    .line 710
    const/4 v15, 0x0

    .line 711
    const/16 v16, 0x0

    .line 712
    .line 713
    const/16 v17, 0x0

    .line 714
    .line 715
    const/16 v18, 0x0

    .line 716
    .line 717
    const/16 v19, 0x0

    .line 718
    .line 719
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    if-eqz v3, :cond_c

    .line 728
    .line 729
    return-object v6

    .line 730
    :pswitch_13
    move-object/from16 v1, p1

    .line 731
    .line 732
    check-cast v1, Lj8/k0;

    .line 733
    .line 734
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    sget-object v2, Lv7/m;->m:Ldc/l0;

    .line 738
    .line 739
    sget-object v2, Lv7/m;->m:Ldc/l0;

    .line 740
    .line 741
    :cond_d
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    move-object v8, v3

    .line 746
    check-cast v8, Lv7/m;

    .line 747
    .line 748
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 752
    .line 753
    invoke-interface {v4}, Lj8/o0;->a()I

    .line 754
    .line 755
    .line 756
    move-result v10

    .line 757
    const/16 v20, 0x0

    .line 758
    .line 759
    const/16 v21, 0xffd

    .line 760
    .line 761
    const/4 v9, 0x0

    .line 762
    const/4 v11, 0x0

    .line 763
    const/4 v12, 0x0

    .line 764
    const/4 v13, 0x0

    .line 765
    const/4 v14, 0x0

    .line 766
    const/4 v15, 0x0

    .line 767
    const/16 v16, 0x0

    .line 768
    .line 769
    const/16 v17, 0x0

    .line 770
    .line 771
    const/16 v18, 0x0

    .line 772
    .line 773
    const/16 v19, 0x0

    .line 774
    .line 775
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 776
    .line 777
    .line 778
    move-result-object v4

    .line 779
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v3

    .line 783
    if-eqz v3, :cond_d

    .line 784
    .line 785
    return-object v6

    .line 786
    :pswitch_14
    move-object/from16 v1, p1

    .line 787
    .line 788
    check-cast v1, Ljava/lang/Integer;

    .line 789
    .line 790
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 791
    .line 792
    .line 793
    move-result v19

    .line 794
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 795
    .line 796
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 797
    .line 798
    :cond_e
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    move-object v8, v2

    .line 803
    check-cast v8, Lv7/m;

    .line 804
    .line 805
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    const/16 v20, 0x0

    .line 809
    .line 810
    const/16 v21, 0xbff

    .line 811
    .line 812
    const/4 v9, 0x0

    .line 813
    const/4 v10, 0x0

    .line 814
    const/4 v11, 0x0

    .line 815
    const/4 v12, 0x0

    .line 816
    const/4 v13, 0x0

    .line 817
    const/4 v14, 0x0

    .line 818
    const/4 v15, 0x0

    .line 819
    const/16 v16, 0x0

    .line 820
    .line 821
    const/16 v17, 0x0

    .line 822
    .line 823
    const/16 v18, 0x0

    .line 824
    .line 825
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v2

    .line 833
    if-eqz v2, :cond_e

    .line 834
    .line 835
    return-object v6

    .line 836
    :pswitch_15
    move-object/from16 v1, p1

    .line 837
    .line 838
    check-cast v1, Ljava/lang/Integer;

    .line 839
    .line 840
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 841
    .line 842
    .line 843
    move-result v18

    .line 844
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 845
    .line 846
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 847
    .line 848
    :cond_f
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    move-object v8, v2

    .line 853
    check-cast v8, Lv7/m;

    .line 854
    .line 855
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    const/16 v20, 0x0

    .line 859
    .line 860
    const/16 v21, 0xdff

    .line 861
    .line 862
    const/4 v9, 0x0

    .line 863
    const/4 v10, 0x0

    .line 864
    const/4 v11, 0x0

    .line 865
    const/4 v12, 0x0

    .line 866
    const/4 v13, 0x0

    .line 867
    const/4 v14, 0x0

    .line 868
    const/4 v15, 0x0

    .line 869
    const/16 v16, 0x0

    .line 870
    .line 871
    const/16 v17, 0x0

    .line 872
    .line 873
    const/16 v19, 0x0

    .line 874
    .line 875
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result v2

    .line 883
    if-eqz v2, :cond_f

    .line 884
    .line 885
    return-object v6

    .line 886
    :pswitch_16
    move-object/from16 v1, p1

    .line 887
    .line 888
    check-cast v1, Ljava/lang/Integer;

    .line 889
    .line 890
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 891
    .line 892
    .line 893
    move-result v17

    .line 894
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 895
    .line 896
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 897
    .line 898
    :cond_10
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v2

    .line 902
    move-object v8, v2

    .line 903
    check-cast v8, Lv7/m;

    .line 904
    .line 905
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    const/16 v20, 0x0

    .line 909
    .line 910
    const/16 v21, 0xeff

    .line 911
    .line 912
    const/4 v9, 0x0

    .line 913
    const/4 v10, 0x0

    .line 914
    const/4 v11, 0x0

    .line 915
    const/4 v12, 0x0

    .line 916
    const/4 v13, 0x0

    .line 917
    const/4 v14, 0x0

    .line 918
    const/4 v15, 0x0

    .line 919
    const/16 v16, 0x0

    .line 920
    .line 921
    const/16 v18, 0x0

    .line 922
    .line 923
    const/16 v19, 0x0

    .line 924
    .line 925
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 926
    .line 927
    .line 928
    move-result-object v3

    .line 929
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    if-eqz v2, :cond_10

    .line 934
    .line 935
    return-object v6

    .line 936
    :pswitch_17
    move-object/from16 v1, p1

    .line 937
    .line 938
    check-cast v1, Lj8/k0;

    .line 939
    .line 940
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    sget-object v2, Lv7/m;->m:Ldc/l0;

    .line 944
    .line 945
    sget-object v2, Lv7/m;->m:Ldc/l0;

    .line 946
    .line 947
    :cond_11
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    move-object v8, v3

    .line 952
    check-cast v8, Lv7/m;

    .line 953
    .line 954
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 958
    .line 959
    invoke-interface {v4}, Lj8/o0;->a()I

    .line 960
    .line 961
    .line 962
    move-result v15

    .line 963
    const/16 v20, 0x0

    .line 964
    .line 965
    const/16 v21, 0xfbf

    .line 966
    .line 967
    const/4 v9, 0x0

    .line 968
    const/4 v10, 0x0

    .line 969
    const/4 v11, 0x0

    .line 970
    const/4 v12, 0x0

    .line 971
    const/4 v13, 0x0

    .line 972
    const/4 v14, 0x0

    .line 973
    const/16 v16, 0x0

    .line 974
    .line 975
    const/16 v17, 0x0

    .line 976
    .line 977
    const/16 v18, 0x0

    .line 978
    .line 979
    const/16 v19, 0x0

    .line 980
    .line 981
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 982
    .line 983
    .line 984
    move-result-object v4

    .line 985
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    if-eqz v3, :cond_11

    .line 990
    .line 991
    return-object v6

    .line 992
    :pswitch_18
    move-object/from16 v1, p1

    .line 993
    .line 994
    check-cast v1, Lj8/k0;

    .line 995
    .line 996
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    sget-object v2, Lv7/m;->m:Ldc/l0;

    .line 1000
    .line 1001
    sget-object v2, Lv7/m;->m:Ldc/l0;

    .line 1002
    .line 1003
    :cond_12
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v3

    .line 1007
    move-object v8, v3

    .line 1008
    check-cast v8, Lv7/m;

    .line 1009
    .line 1010
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 1014
    .line 1015
    invoke-interface {v4}, Lj8/o0;->a()I

    .line 1016
    .line 1017
    .line 1018
    move-result v16

    .line 1019
    const/16 v20, 0x0

    .line 1020
    .line 1021
    const/16 v21, 0xf7f

    .line 1022
    .line 1023
    const/4 v9, 0x0

    .line 1024
    const/4 v10, 0x0

    .line 1025
    const/4 v11, 0x0

    .line 1026
    const/4 v12, 0x0

    .line 1027
    const/4 v13, 0x0

    .line 1028
    const/4 v14, 0x0

    .line 1029
    const/4 v15, 0x0

    .line 1030
    const/16 v17, 0x0

    .line 1031
    .line 1032
    const/16 v18, 0x0

    .line 1033
    .line 1034
    const/16 v19, 0x0

    .line 1035
    .line 1036
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v4

    .line 1040
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v3

    .line 1044
    if-eqz v3, :cond_12

    .line 1045
    .line 1046
    return-object v6

    .line 1047
    :pswitch_19
    move-object/from16 v1, p1

    .line 1048
    .line 1049
    check-cast v1, Ljava/lang/Integer;

    .line 1050
    .line 1051
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1052
    .line 1053
    .line 1054
    move-result v20

    .line 1055
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 1056
    .line 1057
    sget-object v1, Lv7/m;->m:Ldc/l0;

    .line 1058
    .line 1059
    :cond_13
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v2

    .line 1063
    move-object v8, v2

    .line 1064
    check-cast v8, Lv7/m;

    .line 1065
    .line 1066
    invoke-static {v8, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    const/16 v19, 0x0

    .line 1070
    .line 1071
    const/16 v21, 0x7ff

    .line 1072
    .line 1073
    const/4 v9, 0x0

    .line 1074
    const/4 v10, 0x0

    .line 1075
    const/4 v11, 0x0

    .line 1076
    const/4 v12, 0x0

    .line 1077
    const/4 v13, 0x0

    .line 1078
    const/4 v14, 0x0

    .line 1079
    const/4 v15, 0x0

    .line 1080
    const/16 v16, 0x0

    .line 1081
    .line 1082
    const/16 v17, 0x0

    .line 1083
    .line 1084
    const/16 v18, 0x0

    .line 1085
    .line 1086
    invoke-static/range {v8 .. v21}, Lv7/m;->a(Lv7/m;IIIIIIIIIIIII)Lv7/m;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v2

    .line 1094
    if-eqz v2, :cond_13

    .line 1095
    .line 1096
    return-object v6

    .line 1097
    :pswitch_1a
    move-object/from16 v1, p1

    .line 1098
    .line 1099
    check-cast v1, Lv/l;

    .line 1100
    .line 1101
    iget v1, v1, Lv/l;->a:F

    .line 1102
    .line 1103
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v1

    .line 1107
    return-object v1

    .line 1108
    :pswitch_1b
    move-object/from16 v1, p1

    .line 1109
    .line 1110
    check-cast v1, Lv/o;

    .line 1111
    .line 1112
    new-instance v2, Lx1/c;

    .line 1113
    .line 1114
    iget v3, v1, Lv/o;->a:F

    .line 1115
    .line 1116
    iget v4, v1, Lv/o;->b:F

    .line 1117
    .line 1118
    iget v5, v1, Lv/o;->c:F

    .line 1119
    .line 1120
    iget v1, v1, Lv/o;->d:F

    .line 1121
    .line 1122
    invoke-direct {v2, v3, v4, v5, v1}, Lx1/c;-><init>(FFFF)V

    .line 1123
    .line 1124
    .line 1125
    return-object v2

    .line 1126
    :pswitch_1c
    move-object/from16 v1, p1

    .line 1127
    .line 1128
    check-cast v1, Lx1/c;

    .line 1129
    .line 1130
    new-instance v2, Lv/o;

    .line 1131
    .line 1132
    iget v3, v1, Lx1/c;->a:F

    .line 1133
    .line 1134
    iget v4, v1, Lx1/c;->b:F

    .line 1135
    .line 1136
    iget v5, v1, Lx1/c;->c:F

    .line 1137
    .line 1138
    iget v1, v1, Lx1/c;->d:F

    .line 1139
    .line 1140
    invoke-direct {v2, v3, v4, v5, v1}, Lv/o;-><init>(FFFF)V

    .line 1141
    .line 1142
    .line 1143
    return-object v2

    .line 1144
    nop

    .line 1145
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
.end method
