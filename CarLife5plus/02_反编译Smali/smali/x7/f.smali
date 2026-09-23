.class public final Lx7/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lx7/f;

.field public static final b:Lx7/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx7/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx7/f;->a:Lx7/f;

    .line 7
    .line 8
    new-instance v0, Lx7/f;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lx7/f;->b:Lx7/f;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(ILf1/s;)V
    .locals 17

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const v0, -0x21f939a7

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, v1, 0x1

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Lf1/s;->z()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2}, Lf1/s;->Q()V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_a

    .line 27
    .line 28
    :cond_1
    :goto_0
    sget-object v0, Ld/c;->a:Lf1/c0;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/app/Activity;

    .line 35
    .line 36
    sget-object v4, Lx7/j;->m:Ldc/l0;

    .line 37
    .line 38
    invoke-static {v4, v2}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/16 v6, 0x80

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lx7/j;

    .line 58
    .line 59
    iget-boolean v5, v5, Lx7/j;->j:Z

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const v6, -0x615d173a

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v6}, Lf1/s;->W(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v2, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    or-int/2addr v7, v8

    .line 80
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    sget-object v9, Lf1/n;->a:Lf1/w0;

    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    if-nez v7, :cond_3

    .line 89
    .line 90
    if-ne v8, v9, :cond_4

    .line 91
    .line 92
    :cond_3
    new-instance v8, Lx7/c;

    .line 93
    .line 94
    invoke-direct {v8, v0, v4, v10, v11}, Lx7/c;-><init>(Landroid/app/Activity;Lf1/b1;Lw8/c;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    check-cast v8, Lf9/n;

    .line 101
    .line 102
    invoke-virtual {v2, v11}, Lf1/s;->p(Z)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v8, v5}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object v5, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->z:Ldc/l0;

    .line 109
    .line 110
    invoke-static {v5, v2}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Lx7/j;

    .line 128
    .line 129
    iget-boolean v7, v7, Lx7/j;->b:Z

    .line 130
    .line 131
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    check-cast v8, Lx7/j;

    .line 140
    .line 141
    iget-boolean v8, v8, Lx7/j;->e:Z

    .line 142
    .line 143
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    check-cast v12, Lx7/j;

    .line 152
    .line 153
    iget-object v12, v12, Lx7/j;->d:Ljava/lang/String;

    .line 154
    .line 155
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    check-cast v13, Lx7/j;

    .line 160
    .line 161
    iget-object v13, v13, Lx7/j;->h:Ljava/lang/String;

    .line 162
    .line 163
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    check-cast v14, Lx7/j;

    .line 168
    .line 169
    iget-boolean v14, v14, Lx7/j;->i:Z

    .line 170
    .line 171
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v14

    .line 175
    const/4 v15, 0x6

    .line 176
    const/16 v16, 0x0

    .line 177
    .line 178
    new-array v11, v15, [Ljava/lang/Object;

    .line 179
    .line 180
    aput-object v5, v11, v16

    .line 181
    .line 182
    aput-object v7, v11, v3

    .line 183
    .line 184
    const/4 v5, 0x2

    .line 185
    aput-object v8, v11, v5

    .line 186
    .line 187
    const/4 v7, 0x3

    .line 188
    aput-object v12, v11, v7

    .line 189
    .line 190
    const/4 v7, 0x4

    .line 191
    aput-object v13, v11, v7

    .line 192
    .line 193
    const/4 v7, 0x5

    .line 194
    aput-object v14, v11, v7

    .line 195
    .line 196
    invoke-virtual {v2, v6}, Lf1/s;->W(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    invoke-virtual {v2, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    or-int/2addr v6, v7

    .line 208
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    if-nez v6, :cond_5

    .line 213
    .line 214
    if-ne v7, v9, :cond_6

    .line 215
    .line 216
    :cond_5
    new-instance v7, Lx7/c;

    .line 217
    .line 218
    invoke-direct {v7, v0, v4, v10, v3}, Lx7/c;-><init>(Landroid/app/Activity;Lf1/b1;Lw8/c;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_6
    check-cast v7, Lf9/n;

    .line 225
    .line 226
    const/4 v6, 0x0

    .line 227
    invoke-virtual {v2, v6}, Lf1/s;->p(Z)V

    .line 228
    .line 229
    .line 230
    iget-object v0, v2, Lf1/s;->R:Lw8/h;

    .line 231
    .line 232
    invoke-static {v11, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    array-length v8, v6

    .line 237
    const/4 v10, 0x0

    .line 238
    const/4 v11, 0x0

    .line 239
    :goto_1
    if-ge v10, v8, :cond_7

    .line 240
    .line 241
    aget-object v12, v6, v10

    .line 242
    .line 243
    invoke-virtual {v2, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    or-int/2addr v11, v12

    .line 248
    add-int/lit8 v10, v10, 0x1

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_7
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    if-nez v11, :cond_8

    .line 256
    .line 257
    if-ne v6, v9, :cond_9

    .line 258
    .line 259
    :cond_8
    new-instance v6, Lf1/u0;

    .line 260
    .line 261
    invoke-direct {v6, v0, v7}, Lf1/u0;-><init>(Lw8/h;Lf9/n;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :cond_9
    sget-object v0, Landroidx/compose/foundation/layout/c;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 268
    .line 269
    sget-wide v6, Ly1/q;->b:J

    .line 270
    .line 271
    sget-object v8, Ly1/h0;->a:Ly1/g0;

    .line 272
    .line 273
    invoke-static {v0, v6, v7, v8}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Lx7/j;

    .line 282
    .line 283
    iget v6, v6, Lx7/j;->a:I

    .line 284
    .line 285
    int-to-float v6, v6

    .line 286
    invoke-static {v6}, Lk0/e;->a(F)Lk0/d;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-static {v0, v6}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 295
    .line 296
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Lx7/j;

    .line 301
    .line 302
    iget-boolean v0, v0, Lx7/j;->b:Z

    .line 303
    .line 304
    if-eqz v0, :cond_a

    .line 305
    .line 306
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Lx7/j;

    .line 311
    .line 312
    iget v0, v0, Lx7/j;->c:I

    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_a
    const/4 v0, 0x0

    .line 316
    :goto_2
    invoke-static {v0}, Ll8/c;->f(I)F

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Lx7/j;

    .line 325
    .line 326
    iget-boolean v0, v0, Lx7/j;->e:Z

    .line 327
    .line 328
    if-eqz v0, :cond_b

    .line 329
    .line 330
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Lx7/j;

    .line 335
    .line 336
    iget-boolean v0, v0, Lx7/j;->g:Z

    .line 337
    .line 338
    if-eqz v0, :cond_b

    .line 339
    .line 340
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Lx7/j;

    .line 345
    .line 346
    iget v0, v0, Lx7/j;->f:I

    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_b
    const/4 v0, 0x0

    .line 350
    :goto_3
    invoke-static {v0}, Ll8/c;->f(I)F

    .line 351
    .line 352
    .line 353
    move-result v14

    .line 354
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    check-cast v0, Lx7/j;

    .line 359
    .line 360
    iget-boolean v0, v0, Lx7/j;->e:Z

    .line 361
    .line 362
    if-eqz v0, :cond_c

    .line 363
    .line 364
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    check-cast v0, Lx7/j;

    .line 369
    .line 370
    iget-boolean v0, v0, Lx7/j;->g:Z

    .line 371
    .line 372
    if-nez v0, :cond_c

    .line 373
    .line 374
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    check-cast v0, Lx7/j;

    .line 379
    .line 380
    iget v0, v0, Lx7/j;->f:I

    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_c
    const/4 v0, 0x0

    .line 384
    :goto_4
    invoke-static {v0}, Ll8/c;->f(I)F

    .line 385
    .line 386
    .line 387
    move-result v11

    .line 388
    const/4 v13, 0x0

    .line 389
    const/4 v15, 0x4

    .line 390
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    sget-object v4, Lr1/c;->a:Lr1/h;

    .line 395
    .line 396
    const/4 v6, 0x0

    .line 397
    invoke-static {v4, v6}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    iget-wide v6, v2, Lf1/s;->T:J

    .line 402
    .line 403
    const/16 v8, 0x20

    .line 404
    .line 405
    ushr-long v10, v6, v8

    .line 406
    .line 407
    xor-long/2addr v6, v10

    .line 408
    long-to-int v7, v6

    .line 409
    invoke-virtual {v2}, Lf1/s;->l()Lf1/q1;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-static {v2, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    sget-object v8, Lq2/j;->d0:Lq2/i;

    .line 418
    .line 419
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    sget-object v8, Lq2/i;->b:Lq2/a0;

    .line 423
    .line 424
    invoke-virtual {v2}, Lf1/s;->a0()V

    .line 425
    .line 426
    .line 427
    iget-boolean v10, v2, Lf1/s;->S:Z

    .line 428
    .line 429
    if-eqz v10, :cond_d

    .line 430
    .line 431
    invoke-virtual {v2, v8}, Lf1/s;->k(Lf9/a;)V

    .line 432
    .line 433
    .line 434
    goto :goto_5

    .line 435
    :cond_d
    invoke-virtual {v2}, Lf1/s;->k0()V

    .line 436
    .line 437
    .line 438
    :goto_5
    sget-object v8, Lq2/i;->e:Lq2/h;

    .line 439
    .line 440
    invoke-static {v2, v8, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    sget-object v4, Lq2/i;->d:Lq2/h;

    .line 444
    .line 445
    invoke-static {v2, v4, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 449
    .line 450
    iget-boolean v6, v2, Lf1/s;->S:Z

    .line 451
    .line 452
    if-nez v6, :cond_e

    .line 453
    .line 454
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v6

    .line 458
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    invoke-static {v6, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v6

    .line 466
    if-nez v6, :cond_f

    .line 467
    .line 468
    :cond_e
    invoke-static {v7, v2, v7, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 469
    .line 470
    .line 471
    :cond_f
    sget-object v4, Lq2/i;->c:Lq2/h;

    .line 472
    .line 473
    invoke-static {v2, v4, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    const v0, 0x6e3c21fe

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v0}, Lf1/s;->W(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    if-ne v0, v9, :cond_11

    .line 487
    .line 488
    :try_start_0
    const-class v0, Lt7/e;

    .line 489
    .line 490
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    const-string v4, "load(...)"

    .line 495
    .line 496
    invoke-static {v0, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-static {v0}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    new-instance v4, Lx7/d;

    .line 504
    .line 505
    invoke-direct {v4, v3}, Lx7/d;-><init>(I)V

    .line 506
    .line 507
    .line 508
    new-instance v6, Lwb/h;

    .line 509
    .line 510
    invoke-direct {v6, v0, v3, v4}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 511
    .line 512
    .line 513
    sget-object v0, Lx7/d;->b:Lx7/d;

    .line 514
    .line 515
    new-instance v4, Lwb/c;

    .line 516
    .line 517
    const/4 v7, 0x0

    .line 518
    invoke-direct {v4, v7, v6, v0}, Lwb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    new-instance v0, Lx7/e;

    .line 522
    .line 523
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 524
    .line 525
    .line 526
    new-instance v6, Lwb/c;

    .line 527
    .line 528
    invoke-direct {v6, v5, v4, v0}, Lwb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    invoke-static {v6}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 532
    .line 533
    .line 534
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    goto :goto_6

    .line 536
    :catchall_0
    move-exception v0

    .line 537
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    :goto_6
    invoke-static {v0}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    if-nez v4, :cond_10

    .line 546
    .line 547
    const/4 v6, 0x0

    .line 548
    goto :goto_7

    .line 549
    :cond_10
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 550
    .line 551
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    const-string v5, "\u6a21\u5757\u52a0\u8f7d\u5931\u8d25: "

    .line 556
    .line 557
    invoke-static {v5, v4}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    new-array v5, v3, [Ljava/lang/Object;

    .line 562
    .line 563
    const/4 v6, 0x0

    .line 564
    aput-object v4, v5, v6

    .line 565
    .line 566
    const-string v4, "OptionLoader"

    .line 567
    .line 568
    invoke-virtual {v0, v4, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 572
    .line 573
    :goto_7
    check-cast v0, Ljava/util/List;

    .line 574
    .line 575
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {v2, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    goto :goto_8

    .line 583
    :cond_11
    const/4 v6, 0x0

    .line 584
    :goto_8
    check-cast v0, Lf1/b1;

    .line 585
    .line 586
    invoke-virtual {v2, v6}, Lf1/s;->p(Z)V

    .line 587
    .line 588
    .line 589
    const v4, -0x7037f3eb

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2, v4}, Lf1/s;->W(I)V

    .line 593
    .line 594
    .line 595
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    check-cast v0, Ljava/util/List;

    .line 600
    .line 601
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    if-eqz v4, :cond_12

    .line 610
    .line 611
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    check-cast v4, Lt7/e;

    .line 616
    .line 617
    invoke-interface {v4, v6, v2}, Lt7/e;->c(ILf1/s;)V

    .line 618
    .line 619
    .line 620
    goto :goto_9

    .line 621
    :cond_12
    invoke-virtual {v2, v6}, Lf1/s;->p(Z)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2, v3}, Lf1/s;->p(Z)V

    .line 625
    .line 626
    .line 627
    :goto_a
    invoke-virtual {v2}, Lf1/s;->r()Lf1/w1;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    if-eqz v0, :cond_13

    .line 632
    .line 633
    new-instance v2, Lw7/a;

    .line 634
    .line 635
    move-object/from16 v4, p0

    .line 636
    .line 637
    invoke-direct {v2, v1, v3, v4}, Lw7/a;-><init>(IILjava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    iput-object v2, v0, Lf1/w1;->d:Lf9/n;

    .line 641
    .line 642
    goto :goto_b

    .line 643
    :cond_13
    move-object/from16 v4, p0

    .line 644
    .line 645
    :goto_b
    return-void
.end method

.method public b(Ljava/util/List;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    const v0, 0x4fa15b06

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v14, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string v0, "\u7cfb\u7edf\u680f\u8bbe\u7f6e"

    .line 33
    .line 34
    const-string v1, "\u7cfb\u7edf\u680f\u663e\u793a\u9690\u85cf\u8bbe\u7f6e"

    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    sget-object v0, Lx7/j;->m:Ldc/l0;

    .line 45
    .line 46
    invoke-static {v0, v4}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const v0, 0x6e3c21fe

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 61
    .line 62
    if-ne v0, v8, :cond_2

    .line 63
    .line 64
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    move-object v9, v0

    .line 74
    check-cast v9, Lf1/b1;

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, v0, Lr8/j;->a:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    iget-object v0, v0, Lr8/j;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Ljava/lang/Number;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    new-instance v0, La8/j;

    .line 101
    .line 102
    const/16 v1, 0x1a

    .line 103
    .line 104
    invoke-direct {v0, v1, v15}, La8/j;-><init>(ILjava/util/List;)V

    .line 105
    .line 106
    .line 107
    const v1, 0x50db6d3d

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v1, Lx7/b;->a:Ln1/c;

    .line 115
    .line 116
    const v13, 0x4c5de2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v13}, Lf1/s;->W(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-ne v2, v8, :cond_3

    .line 127
    .line 128
    new-instance v2, Lu7/e;

    .line 129
    .line 130
    const/16 v3, 0x8

    .line 131
    .line 132
    invoke-direct {v2, v9, v3}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    move-object v3, v2

    .line 139
    check-cast v3, Lf9/a;

    .line 140
    .line 141
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 142
    .line 143
    .line 144
    const/16 v5, 0xc36

    .line 145
    .line 146
    const/4 v6, 0x4

    .line 147
    const/4 v2, 0x0

    .line 148
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v9}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual {v4, v13}, Lf1/s;->W(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    if-ne v1, v8, :cond_4

    .line 169
    .line 170
    new-instance v1, Lu7/e;

    .line 171
    .line 172
    const/16 v2, 0x9

    .line 173
    .line 174
    invoke-direct {v1, v9, v2}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    check-cast v1, Lf9/a;

    .line 181
    .line 182
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 183
    .line 184
    .line 185
    new-instance v2, Lx7/i;

    .line 186
    .line 187
    const/4 v3, 0x2

    .line 188
    invoke-direct {v2, v7, v11, v12, v3}, Lx7/i;-><init>(Ljava/lang/Object;III)V

    .line 189
    .line 190
    .line 191
    const v3, 0x2dca047d

    .line 192
    .line 193
    .line 194
    invoke-static {v3, v2, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    const/16 v12, 0x30

    .line 199
    .line 200
    const/16 v13, 0x3fc

    .line 201
    .line 202
    const-wide/16 v2, 0x0

    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    const/4 v5, 0x0

    .line 206
    const/4 v6, 0x0

    .line 207
    const/4 v7, 0x0

    .line 208
    const/4 v8, 0x0

    .line 209
    const/4 v9, 0x0

    .line 210
    move-object/from16 v11, p2

    .line 211
    .line 212
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 213
    .line 214
    .line 215
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-eqz v0, :cond_5

    .line 220
    .line 221
    new-instance v1, La8/w;

    .line 222
    .line 223
    const/16 v2, 0xe

    .line 224
    .line 225
    move-object/from16 v3, p0

    .line 226
    .line 227
    invoke-direct {v1, v14, v2, v3, v15}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 231
    .line 232
    return-void

    .line 233
    :cond_5
    move-object/from16 v3, p0

    .line 234
    .line 235
    return-void
.end method
