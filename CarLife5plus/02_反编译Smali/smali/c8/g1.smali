.class public final Lc8/g1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/b1;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p7, p0, Lc8/g1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/g1;->f:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lc8/g1;->g:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lc8/g1;->b:Lf1/b1;

    .line 8
    .line 9
    iput-object p4, p0, Lc8/g1;->c:Lf1/b1;

    .line 10
    .line 11
    iput-object p5, p0, Lc8/g1;->d:Lf1/b1;

    .line 12
    .line 13
    iput-object p6, p0, Lc8/g1;->e:Lf1/b1;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/g1;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v9, p1

    .line 9
    .line 10
    check-cast v9, Lf1/s;

    .line 11
    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, v0, Lc8/g1;->g:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v4, v2

    .line 23
    check-cast v4, Lf9/n;

    .line 24
    .line 25
    iget-object v2, v0, Lc8/g1;->f:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ly7/m;

    .line 28
    .line 29
    and-int/lit8 v1, v1, 0x3

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    sget-object v12, Lr8/z;->a:Lr8/z;

    .line 33
    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_1
    :goto_0
    const v1, 0x4a2dc1d1    # 2846836.2f

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v1}, Lf1/s;->W(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lc8/g1;->b:Lf1/b1;

    .line 55
    .line 56
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const v5, 0x1da39cd1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v5}, Lf1/s;->W(I)V

    .line 70
    .line 71
    .line 72
    const v5, 0x4c5de2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v5}, Lf1/s;->W(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v3}, Lf1/s;->g(Z)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 87
    .line 88
    if-nez v5, :cond_2

    .line 89
    .line 90
    if-ne v6, v7, :cond_3

    .line 91
    .line 92
    :cond_2
    sget-object v5, Ls8/w;->a:Ls8/w;

    .line 93
    .line 94
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v9, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    check-cast v6, Lf1/b1;

    .line 102
    .line 103
    const/4 v13, 0x0

    .line 104
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 105
    .line 106
    .line 107
    const v5, -0x615d173a

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v5}, Lf1/s;->W(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    invoke-virtual {v9, v3}, Lf1/s;->g(Z)Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    or-int/2addr v8, v10

    .line 122
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    const/4 v11, 0x0

    .line 127
    if-nez v8, :cond_4

    .line 128
    .line 129
    if-ne v10, v7, :cond_5

    .line 130
    .line 131
    :cond_4
    new-instance v10, Lq7/b;

    .line 132
    .line 133
    const/4 v8, 0x1

    .line 134
    invoke-direct {v10, v3, v6, v11, v8}, Lq7/b;-><init>(ZLf1/b1;Lw8/c;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    check-cast v10, Lf9/n;

    .line 141
    .line 142
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 143
    .line 144
    .line 145
    invoke-static {v9, v10, v1}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Ljava/util/List;

    .line 153
    .line 154
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 155
    .line 156
    .line 157
    new-instance v10, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_d

    .line 171
    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 177
    .line 178
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 179
    .line 180
    const-string v8, "packageName"

    .line 181
    .line 182
    invoke-static {v6, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const v14, 0x256d1a19

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9, v14}, Lf1/s;->W(I)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    invoke-virtual {v9, v5}, Lf1/s;->W(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v9, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v15

    .line 202
    invoke-virtual {v9, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v16

    .line 206
    or-int v15, v15, v16

    .line 207
    .line 208
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    if-nez v15, :cond_6

    .line 213
    .line 214
    if-ne v5, v7, :cond_7

    .line 215
    .line 216
    :cond_6
    new-instance v5, Lj8/n;

    .line 217
    .line 218
    const/4 v15, 0x5

    .line 219
    invoke-direct {v5, v14, v6, v11, v15}, Lj8/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_7
    check-cast v5, Lf9/n;

    .line 226
    .line 227
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    if-ne v6, v7, :cond_8

    .line 235
    .line 236
    invoke-static {v11}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v9, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_8
    check-cast v6, Lf1/b1;

    .line 244
    .line 245
    invoke-virtual {v9, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    if-nez v14, :cond_9

    .line 254
    .line 255
    if-ne v15, v7, :cond_a

    .line 256
    .line 257
    :cond_9
    new-instance v15, Lf1/r2;

    .line 258
    .line 259
    const/4 v14, 0x0

    .line 260
    invoke-direct {v15, v5, v6, v11, v14}, Lf1/r2;-><init>(Lf9/n;Lf1/b1;Lw8/c;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9, v15}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_a
    check-cast v15, Lf9/n;

    .line 267
    .line 268
    invoke-static {v9, v15, v12}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    check-cast v5, Lr8/j;

    .line 276
    .line 277
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 278
    .line 279
    .line 280
    if-eqz v5, :cond_b

    .line 281
    .line 282
    iget-object v6, v5, Lr8/j;->a:Ljava/lang/Object;

    .line 283
    .line 284
    move-object v15, v6

    .line 285
    check-cast v15, Ljava/lang/String;

    .line 286
    .line 287
    iget-object v5, v5, Lr8/j;->b:Ljava/lang/Object;

    .line 288
    .line 289
    move-object/from16 v18, v5

    .line 290
    .line 291
    check-cast v18, Landroid/graphics/drawable/Drawable;

    .line 292
    .line 293
    new-instance v14, Lj8/k0;

    .line 294
    .line 295
    new-instance v5, Lj8/n0;

    .line 296
    .line 297
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {v3, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-direct {v5, v3}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const/16 v19, 0x0

    .line 306
    .line 307
    const/16 v20, 0x14

    .line 308
    .line 309
    const/16 v17, 0x0

    .line 310
    .line 311
    move-object/from16 v16, v5

    .line 312
    .line 313
    invoke-direct/range {v14 .. v20}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_b
    move-object v14, v11

    .line 318
    :goto_2
    if-eqz v14, :cond_c

    .line 319
    .line 320
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    :cond_c
    const v5, -0x615d173a

    .line 324
    .line 325
    .line 326
    goto/16 :goto_1

    .line 327
    .line 328
    :cond_d
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-eqz v1, :cond_e

    .line 336
    .line 337
    const v1, -0x4714f87

    .line 338
    .line 339
    .line 340
    invoke-virtual {v9, v1}, Lf1/s;->W(I)V

    .line 341
    .line 342
    .line 343
    sget-object v1, Ly7/c;->a:Ln1/c;

    .line 344
    .line 345
    const/16 v2, 0x30

    .line 346
    .line 347
    const/4 v3, 0x1

    .line 348
    invoke-static {v11, v1, v9, v2, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 352
    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_e
    const v1, -0x4697f8b

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9, v1}, Lf1/s;->W(I)V

    .line 359
    .line 360
    .line 361
    const/16 v1, 0x78

    .line 362
    .line 363
    invoke-static {v1, v9}, Lg5/a;->B(ILf1/s;)F

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    new-instance v3, Ly7/b;

    .line 368
    .line 369
    invoke-direct {v3, v2}, Ly7/b;-><init>(Ly7/m;)V

    .line 370
    .line 371
    .line 372
    const v2, -0x13abb22e

    .line 373
    .line 374
    .line 375
    invoke-static {v2, v3, v9}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    const v3, -0x48fade91

    .line 380
    .line 381
    .line 382
    invoke-virtual {v9, v3}, Lf1/s;->W(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v9, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    if-nez v3, :cond_f

    .line 394
    .line 395
    if-ne v5, v7, :cond_10

    .line 396
    .line 397
    :cond_f
    new-instance v3, La8/h;

    .line 398
    .line 399
    const/4 v8, 0x6

    .line 400
    iget-object v5, v0, Lc8/g1;->c:Lf1/b1;

    .line 401
    .line 402
    iget-object v6, v0, Lc8/g1;->d:Lf1/b1;

    .line 403
    .line 404
    iget-object v7, v0, Lc8/g1;->e:Lf1/b1;

    .line 405
    .line 406
    invoke-direct/range {v3 .. v8}, La8/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v9, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    move-object v5, v3

    .line 413
    :cond_10
    move-object v8, v5

    .line 414
    check-cast v8, Lf9/k;

    .line 415
    .line 416
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 417
    .line 418
    .line 419
    move-object v5, v2

    .line 420
    move-object v2, v10

    .line 421
    const/16 v10, 0xd80

    .line 422
    .line 423
    const/16 v11, 0x22

    .line 424
    .line 425
    const/4 v3, 0x0

    .line 426
    const/4 v4, 0x4

    .line 427
    const/4 v7, 0x0

    .line 428
    move v6, v1

    .line 429
    invoke-static/range {v2 .. v11}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v9, v13}, Lf1/s;->p(Z)V

    .line 433
    .line 434
    .line 435
    :goto_3
    return-object v12

    .line 436
    :pswitch_0
    iget-object v1, v0, Lc8/g1;->g:Ljava/lang/Object;

    .line 437
    .line 438
    move-object v4, v1

    .line 439
    check-cast v4, Lc8/h1;

    .line 440
    .line 441
    move-object/from16 v11, p1

    .line 442
    .line 443
    check-cast v11, Lf1/s;

    .line 444
    .line 445
    move-object/from16 v1, p2

    .line 446
    .line 447
    check-cast v1, Ljava/lang/Number;

    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    and-int/lit8 v1, v1, 0x3

    .line 454
    .line 455
    const/4 v2, 0x2

    .line 456
    if-ne v1, v2, :cond_12

    .line 457
    .line 458
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-nez v1, :cond_11

    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_11
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 466
    .line 467
    .line 468
    goto :goto_5

    .line 469
    :cond_12
    :goto_4
    const v1, -0x48fade91

    .line 470
    .line 471
    .line 472
    invoke-virtual {v11, v1}, Lf1/s;->W(I)V

    .line 473
    .line 474
    .line 475
    iget-object v1, v0, Lc8/g1;->f:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v1, Lf9/k;

    .line 478
    .line 479
    invoke-virtual {v11, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    invoke-virtual {v11, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    or-int/2addr v1, v2

    .line 488
    iget-object v2, v0, Lc8/g1;->f:Ljava/lang/Object;

    .line 489
    .line 490
    move-object v3, v2

    .line 491
    check-cast v3, Lf9/k;

    .line 492
    .line 493
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    if-nez v1, :cond_13

    .line 498
    .line 499
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 500
    .line 501
    if-ne v2, v1, :cond_14

    .line 502
    .line 503
    :cond_13
    new-instance v2, Lc8/f1;

    .line 504
    .line 505
    const/4 v9, 0x0

    .line 506
    iget-object v5, v0, Lc8/g1;->b:Lf1/b1;

    .line 507
    .line 508
    iget-object v6, v0, Lc8/g1;->c:Lf1/b1;

    .line 509
    .line 510
    iget-object v7, v0, Lc8/g1;->d:Lf1/b1;

    .line 511
    .line 512
    iget-object v8, v0, Lc8/g1;->e:Lf1/b1;

    .line 513
    .line 514
    invoke-direct/range {v2 .. v9}, Lc8/f1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v11, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    :cond_14
    move-object v10, v2

    .line 521
    check-cast v10, Lf9/a;

    .line 522
    .line 523
    const/4 v1, 0x0

    .line 524
    invoke-virtual {v11, v1}, Lf1/s;->p(Z)V

    .line 525
    .line 526
    .line 527
    const/4 v12, 0x6

    .line 528
    const/4 v13, 0x6

    .line 529
    const-string v5, "\u6dfb\u52a0"

    .line 530
    .line 531
    const-wide/16 v6, 0x0

    .line 532
    .line 533
    const-wide/16 v8, 0x0

    .line 534
    .line 535
    invoke-static/range {v5 .. v13}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 536
    .line 537
    .line 538
    :goto_5
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 539
    .line 540
    return-object v1

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
