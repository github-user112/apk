.class public final synthetic Lac/y0;
.super Lg9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iput p8, p0, Lac/y0;->i:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lg9/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lac/y0;->i:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lx/f;

    .line 19
    .line 20
    iget-object v3, v2, Lx/f;->D:Ls/a0;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lx/f;->I0()V

    .line 25
    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_0
    iget-object v1, v2, Lx/f;->q:Lb0/k;

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    iget-object v1, v3, Ls/a0;->c:[Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v4, v3, Ls/a0;->a:[J

    .line 35
    .line 36
    array-length v5, v4

    .line 37
    add-int/lit8 v5, v5, -0x2

    .line 38
    .line 39
    if-ltz v5, :cond_4

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    :goto_0
    aget-wide v8, v4, v7

    .line 43
    .line 44
    not-long v10, v8

    .line 45
    const/4 v12, 0x7

    .line 46
    shl-long/2addr v10, v12

    .line 47
    and-long/2addr v10, v8

    .line 48
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long/2addr v10, v12

    .line 54
    cmp-long v14, v10, v12

    .line 55
    .line 56
    if-eqz v14, :cond_3

    .line 57
    .line 58
    sub-int v10, v7, v5

    .line 59
    .line 60
    not-int v10, v10

    .line 61
    ushr-int/lit8 v10, v10, 0x1f

    .line 62
    .line 63
    const/16 v11, 0x8

    .line 64
    .line 65
    rsub-int/lit8 v10, v10, 0x8

    .line 66
    .line 67
    const/4 v12, 0x0

    .line 68
    :goto_1
    if-ge v12, v10, :cond_2

    .line 69
    .line 70
    const-wide/16 v13, 0xff

    .line 71
    .line 72
    and-long/2addr v13, v8

    .line 73
    const-wide/16 v15, 0x80

    .line 74
    .line 75
    cmp-long v17, v13, v15

    .line 76
    .line 77
    if-gez v17, :cond_1

    .line 78
    .line 79
    shl-int/lit8 v13, v7, 0x3

    .line 80
    .line 81
    add-int/2addr v13, v12

    .line 82
    aget-object v13, v1, v13

    .line 83
    .line 84
    check-cast v13, Lb0/m;

    .line 85
    .line 86
    invoke-virtual {v2}, Lr1/o;->m0()Lac/w;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    new-instance v15, Lx/d;

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    const/16 v16, 0x8

    .line 94
    .line 95
    const/4 v11, 0x0

    .line 96
    invoke-direct {v15, v2, v13, v11, v6}, Lx/d;-><init>(Lx/f;Lb0/m;Lw8/c;I)V

    .line 97
    .line 98
    .line 99
    const/4 v6, 0x3

    .line 100
    invoke-static {v14, v11, v15, v6}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    const/16 v16, 0x8

    .line 105
    .line 106
    :goto_2
    shr-long v8, v8, v16

    .line 107
    .line 108
    add-int/lit8 v12, v12, 0x1

    .line 109
    .line 110
    const/16 v11, 0x8

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const/16 v6, 0x8

    .line 114
    .line 115
    if-ne v10, v6, :cond_4

    .line 116
    .line 117
    :cond_3
    if-eq v7, v5, :cond_4

    .line 118
    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {v3}, Ls/a0;->a()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lx/f;->J0()V

    .line 126
    .line 127
    .line 128
    :goto_3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 129
    .line 130
    return-object v1

    .line 131
    :pswitch_0
    move-object/from16 v1, p1

    .line 132
    .line 133
    check-cast v1, Lf9/k;

    .line 134
    .line 135
    iget-object v2, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Ln0/a;

    .line 138
    .line 139
    iget-object v2, v2, Ln0/a;->b:Ls/d0;

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 145
    .line 146
    return-object v1

    .line 147
    :pswitch_1
    move-object/from16 v1, p1

    .line 148
    .line 149
    check-cast v1, Lx1/b;

    .line 150
    .line 151
    iget-wide v1, v1, Lx1/b;->a:J

    .line 152
    .line 153
    iget-object v3, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 154
    .line 155
    move-object v5, v3

    .line 156
    check-cast v5, Lr0/e;

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    sget-object v3, Ls0/g;->a:Lf1/c0;

    .line 162
    .line 163
    invoke-static {v5, v3}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    move-object v6, v3

    .line 168
    check-cast v6, Ls0/f;

    .line 169
    .line 170
    if-nez v6, :cond_5

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_5
    new-instance v7, Lr0/d;

    .line 174
    .line 175
    invoke-direct {v7, v5, v1, v2}, Lr0/d;-><init>(Lr0/e;J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Lr1/o;->m0()Lac/w;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-instance v4, Lb1/f;

    .line 183
    .line 184
    const/16 v9, 0x8

    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    invoke-direct/range {v4 .. v9}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 188
    .line 189
    .line 190
    const/4 v2, 0x3

    .line 191
    invoke-static {v1, v8, v4, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 192
    .line 193
    .line 194
    :goto_4
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 195
    .line 196
    return-object v1

    .line 197
    :pswitch_2
    move-object/from16 v1, p1

    .line 198
    .line 199
    check-cast v1, Li2/b;

    .line 200
    .line 201
    iget-object v1, v1, Li2/b;->a:Landroid/view/KeyEvent;

    .line 202
    .line 203
    iget-object v2, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v2, Ll0/e1;

    .line 206
    .line 207
    iget-object v3, v2, Ll0/e1;->f:Lw0/v1;

    .line 208
    .line 209
    iget-boolean v4, v2, Ll0/e1;->d:Z

    .line 210
    .line 211
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    const/4 v6, 0x1

    .line 216
    const/4 v7, 0x0

    .line 217
    if-nez v5, :cond_a

    .line 218
    .line 219
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    invoke-static {v5}, Ljava/lang/Character;->isISOControl(I)Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-nez v5, :cond_a

    .line 228
    .line 229
    iget-object v5, v2, Ll0/e1;->i:Ll0/f0;

    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    const/high16 v9, -0x80000000

    .line 239
    .line 240
    and-int/2addr v9, v8

    .line 241
    if-eqz v9, :cond_6

    .line 242
    .line 243
    const v9, 0x7fffffff

    .line 244
    .line 245
    .line 246
    and-int/2addr v8, v9

    .line 247
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    iput-object v8, v5, Ll0/f0;->a:Ljava/lang/Integer;

    .line 252
    .line 253
    move-object v5, v7

    .line 254
    goto :goto_5

    .line 255
    :cond_6
    iget-object v9, v5, Ll0/f0;->a:Ljava/lang/Integer;

    .line 256
    .line 257
    if-eqz v9, :cond_9

    .line 258
    .line 259
    iput-object v7, v5, Ll0/f0;->a:Ljava/lang/Integer;

    .line 260
    .line 261
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    invoke-static {v5, v8}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    if-nez v5, :cond_7

    .line 274
    .line 275
    move-object v9, v7

    .line 276
    :cond_7
    if-eqz v9, :cond_8

    .line 277
    .line 278
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    goto :goto_5

    .line 287
    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    :goto_5
    if-eqz v5, :cond_a

    .line 292
    .line 293
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    new-instance v8, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    new-instance v8, Lg3/a;

    .line 311
    .line 312
    invoke-direct {v8, v6, v5}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_a
    move-object v8, v7

    .line 317
    :goto_6
    const/4 v5, 0x0

    .line 318
    if-eqz v8, :cond_c

    .line 319
    .line 320
    if-eqz v4, :cond_b

    .line 321
    .line 322
    invoke-static {v8}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v2, v1}, Ll0/e1;->a(Ljava/util/List;)V

    .line 327
    .line 328
    .line 329
    iput-object v7, v3, Lw0/v1;->a:Ljava/lang/Float;

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_b
    :goto_7
    const/4 v6, 0x0

    .line 333
    goto :goto_8

    .line 334
    :cond_c
    invoke-static {v1}, Li2/c;->E(Landroid/view/KeyEvent;)I

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    const/4 v8, 0x2

    .line 339
    if-ne v7, v8, :cond_b

    .line 340
    .line 341
    iget-object v7, v2, Ll0/e1;->j:Ll0/m0;

    .line 342
    .line 343
    invoke-virtual {v7, v1}, Ll0/m0;->a(Landroid/view/KeyEvent;)Ll0/l0;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    if-eqz v1, :cond_b

    .line 348
    .line 349
    iget-boolean v7, v1, Ll0/l0;->a:Z

    .line 350
    .line 351
    if-eqz v7, :cond_d

    .line 352
    .line 353
    if-nez v4, :cond_d

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_d
    new-instance v4, Lg9/t;

    .line 357
    .line 358
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 359
    .line 360
    .line 361
    iput-boolean v6, v4, Lg9/t;->a:Z

    .line 362
    .line 363
    new-instance v5, Ll0/u;

    .line 364
    .line 365
    const/4 v7, 0x2

    .line 366
    invoke-direct {v5, v1, v2, v4, v7}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 367
    .line 368
    .line 369
    new-instance v1, Lw0/h1;

    .line 370
    .line 371
    iget-object v7, v2, Ll0/e1;->c:Lg3/w;

    .line 372
    .line 373
    iget-object v8, v2, Ll0/e1;->g:Lg3/q;

    .line 374
    .line 375
    iget-object v9, v2, Ll0/e1;->a:Ll0/s0;

    .line 376
    .line 377
    invoke-virtual {v9}, Ll0/s0;->d()Ll0/q1;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-direct {v1, v7, v8, v9, v3}, Lw0/h1;-><init>(Lg3/w;Lg3/q;Ll0/q1;Lw0/v1;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5, v1}, Ll0/u;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    iget-wide v8, v1, Lw0/h1;->f:J

    .line 388
    .line 389
    iget-wide v10, v7, Lg3/w;->b:J

    .line 390
    .line 391
    invoke-static {v8, v9, v10, v11}, Lb3/n0;->b(JJ)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_e

    .line 396
    .line 397
    iget-object v3, v1, Lw0/h1;->g:Lb3/g;

    .line 398
    .line 399
    iget-object v5, v7, Lg3/w;->a:Lb3/g;

    .line 400
    .line 401
    invoke-static {v3, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-nez v3, :cond_f

    .line 406
    .line 407
    :cond_e
    iget-object v3, v2, Ll0/e1;->k:Lf9/k;

    .line 408
    .line 409
    iget-wide v8, v1, Lw0/h1;->f:J

    .line 410
    .line 411
    const/4 v5, 0x4

    .line 412
    iget-object v1, v1, Lw0/h1;->g:Lb3/g;

    .line 413
    .line 414
    invoke-static {v7, v1, v8, v9, v5}, Lg3/w;->a(Lg3/w;Lb3/g;JI)Lg3/w;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-interface {v3, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    :cond_f
    iget-object v1, v2, Ll0/e1;->h:Ll0/r1;

    .line 422
    .line 423
    if-eqz v1, :cond_10

    .line 424
    .line 425
    iput-boolean v6, v1, Ll0/r1;->e:Z

    .line 426
    .line 427
    :cond_10
    iget-boolean v6, v4, Lg9/t;->a:Z

    .line 428
    .line 429
    :goto_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    return-object v1

    .line 434
    :pswitch_3
    move-object/from16 v1, p1

    .line 435
    .line 436
    check-cast v1, Lmb/f;

    .line 437
    .line 438
    const-string v2, "p0"

    .line 439
    .line 440
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    new-instance v2, Ljb/h;

    .line 444
    .line 445
    iget-object v3, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v3, Ljb/i;

    .line 448
    .line 449
    invoke-direct {v2, v3, v1}, Ljb/h;-><init>(Ljb/i;Lmb/f;)V

    .line 450
    .line 451
    .line 452
    return-object v2

    .line 453
    :pswitch_4
    move-object/from16 v1, p1

    .line 454
    .line 455
    check-cast v1, Lua/e;

    .line 456
    .line 457
    const-string v2, "p0"

    .line 458
    .line 459
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    iget-object v2, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast v2, Lia/o;

    .line 465
    .line 466
    invoke-virtual {v2, v1}, Lia/o;->O(Lua/e;)Ljava/util/ArrayList;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    return-object v1

    .line 471
    :pswitch_5
    move-object/from16 v1, p1

    .line 472
    .line 473
    check-cast v1, Lua/e;

    .line 474
    .line 475
    const-string v2, "p0"

    .line 476
    .line 477
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    iget-object v2, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v2, Lia/o;

    .line 483
    .line 484
    invoke-virtual {v2, v1}, Lia/o;->N(Lua/e;)Ljava/util/ArrayList;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    return-object v1

    .line 489
    :pswitch_6
    move-object/from16 v1, p1

    .line 490
    .line 491
    check-cast v1, Ljava/lang/Throwable;

    .line 492
    .line 493
    iget-object v2, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v2, Lac/z0;

    .line 496
    .line 497
    invoke-virtual {v2, v1}, Lac/z0;->l(Ljava/lang/Throwable;)V

    .line 498
    .line 499
    .line 500
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 501
    .line 502
    return-object v1

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
