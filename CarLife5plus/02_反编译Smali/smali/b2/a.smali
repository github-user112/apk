.class public final Lb2/a;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb2/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lb2/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lb2/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "(this)"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Lr8/z;->a:Lr8/z;

    .line 9
    .line 10
    iget-object v6, p0, Lb2/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    check-cast v6, Lh0/m0;

    .line 18
    .line 19
    invoke-virtual {v6}, Lh0/m0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Float;

    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :pswitch_0
    check-cast p1, Ly2/j;

    .line 34
    .line 35
    check-cast v6, Ly2/g;

    .line 36
    .line 37
    iget v0, v6, Ly2/g;->a:I

    .line 38
    .line 39
    invoke-static {p1, v0}, Ly2/t;->b(Ly2/j;I)V

    .line 40
    .line 41
    .line 42
    return-object v5

    .line 43
    :pswitch_1
    check-cast p1, Ly1/i0;

    .line 44
    .line 45
    check-cast v6, Ly1/m0;

    .line 46
    .line 47
    iget v0, v6, Ly1/m0;->o:F

    .line 48
    .line 49
    iget v1, p1, Ly1/i0;->b:F

    .line 50
    .line 51
    cmpg-float v1, v1, v0

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget v1, p1, Ly1/i0;->a:I

    .line 57
    .line 58
    or-int/2addr v1, v4

    .line 59
    iput v1, p1, Ly1/i0;->a:I

    .line 60
    .line 61
    iput v0, p1, Ly1/i0;->b:F

    .line 62
    .line 63
    :goto_0
    iget v0, v6, Ly1/m0;->p:F

    .line 64
    .line 65
    iget v1, p1, Ly1/i0;->c:F

    .line 66
    .line 67
    cmpg-float v1, v1, v0

    .line 68
    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget v1, p1, Ly1/i0;->a:I

    .line 73
    .line 74
    or-int/lit8 v1, v1, 0x2

    .line 75
    .line 76
    iput v1, p1, Ly1/i0;->a:I

    .line 77
    .line 78
    iput v0, p1, Ly1/i0;->c:F

    .line 79
    .line 80
    :goto_1
    iget v0, v6, Ly1/m0;->q:F

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ly1/i0;->b(F)V

    .line 83
    .line 84
    .line 85
    iget v0, v6, Ly1/m0;->r:F

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ly1/i0;->d(F)V

    .line 88
    .line 89
    .line 90
    iget v0, v6, Ly1/m0;->s:F

    .line 91
    .line 92
    iget v1, p1, Ly1/i0;->h:F

    .line 93
    .line 94
    cmpg-float v1, v1, v0

    .line 95
    .line 96
    if-nez v1, :cond_2

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    iget v1, p1, Ly1/i0;->a:I

    .line 100
    .line 101
    or-int/lit16 v1, v1, 0x400

    .line 102
    .line 103
    iput v1, p1, Ly1/i0;->a:I

    .line 104
    .line 105
    iput v0, p1, Ly1/i0;->h:F

    .line 106
    .line 107
    :goto_2
    iget v0, v6, Ly1/m0;->t:F

    .line 108
    .line 109
    iget v1, p1, Ly1/i0;->i:F

    .line 110
    .line 111
    cmpg-float v1, v1, v0

    .line 112
    .line 113
    if-nez v1, :cond_3

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    iget v1, p1, Ly1/i0;->a:I

    .line 117
    .line 118
    or-int/lit16 v1, v1, 0x800

    .line 119
    .line 120
    iput v1, p1, Ly1/i0;->a:I

    .line 121
    .line 122
    iput v0, p1, Ly1/i0;->i:F

    .line 123
    .line 124
    :goto_3
    iget-wide v0, v6, Ly1/m0;->u:J

    .line 125
    .line 126
    iget-wide v2, p1, Ly1/i0;->j:J

    .line 127
    .line 128
    sget v4, Ly1/p0;->b:I

    .line 129
    .line 130
    cmp-long v4, v2, v0

    .line 131
    .line 132
    if-nez v4, :cond_4

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_4
    iget v2, p1, Ly1/i0;->a:I

    .line 136
    .line 137
    or-int/lit16 v2, v2, 0x1000

    .line 138
    .line 139
    iput v2, p1, Ly1/i0;->a:I

    .line 140
    .line 141
    iput-wide v0, p1, Ly1/i0;->j:J

    .line 142
    .line 143
    :goto_4
    iget-object v0, v6, Ly1/m0;->v:Ly1/l0;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ly1/i0;->e(Ly1/l0;)V

    .line 146
    .line 147
    .line 148
    iget-boolean v0, v6, Ly1/m0;->w:Z

    .line 149
    .line 150
    iget-boolean v1, p1, Ly1/i0;->l:Z

    .line 151
    .line 152
    if-eq v1, v0, :cond_5

    .line 153
    .line 154
    iget v1, p1, Ly1/i0;->a:I

    .line 155
    .line 156
    or-int/lit16 v1, v1, 0x4000

    .line 157
    .line 158
    iput v1, p1, Ly1/i0;->a:I

    .line 159
    .line 160
    iput-boolean v0, p1, Ly1/i0;->l:Z

    .line 161
    .line 162
    :cond_5
    iget-wide v0, v6, Ly1/m0;->x:J

    .line 163
    .line 164
    invoke-virtual {p1, v0, v1}, Ly1/i0;->c(J)V

    .line 165
    .line 166
    .line 167
    iget-wide v0, v6, Ly1/m0;->y:J

    .line 168
    .line 169
    invoke-virtual {p1, v0, v1}, Ly1/i0;->f(J)V

    .line 170
    .line 171
    .line 172
    iget v0, v6, Ly1/m0;->z:I

    .line 173
    .line 174
    iget v1, p1, Ly1/i0;->p:I

    .line 175
    .line 176
    if-ne v1, v0, :cond_6

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_6
    iget v1, p1, Ly1/i0;->a:I

    .line 180
    .line 181
    const/high16 v2, 0x80000

    .line 182
    .line 183
    or-int/2addr v1, v2

    .line 184
    iput v1, p1, Ly1/i0;->a:I

    .line 185
    .line 186
    iput v0, p1, Ly1/i0;->p:I

    .line 187
    .line 188
    :goto_5
    return-object v5

    .line 189
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 190
    .line 191
    if-eqz p1, :cond_7

    .line 192
    .line 193
    check-cast v6, Landroid/os/CancellationSignal;

    .line 194
    .line 195
    invoke-virtual {v6}, Landroid/os/CancellationSignal;->cancel()V

    .line 196
    .line 197
    .line 198
    :cond_7
    return-object v5

    .line 199
    :pswitch_3
    check-cast p1, Ly1/i0;

    .line 200
    .line 201
    check-cast v6, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;

    .line 202
    .line 203
    sget v0, Ly/f;->d:F

    .line 204
    .line 205
    iget-object v1, p1, Ly1/i0;->n:Ln3/c;

    .line 206
    .line 207
    invoke-interface {v1}, Ln3/c;->a()F

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    mul-float v1, v1, v0

    .line 212
    .line 213
    invoke-virtual {p1, v1}, Ly1/i0;->d(F)V

    .line 214
    .line 215
    .line 216
    iget-object v0, v6, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->a:Ly1/l0;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Ly1/i0;->e(Ly1/l0;)V

    .line 219
    .line 220
    .line 221
    iget-boolean v0, v6, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->b:Z

    .line 222
    .line 223
    iget-boolean v1, p1, Ly1/i0;->l:Z

    .line 224
    .line 225
    if-eq v1, v0, :cond_8

    .line 226
    .line 227
    iget v1, p1, Ly1/i0;->a:I

    .line 228
    .line 229
    or-int/lit16 v1, v1, 0x4000

    .line 230
    .line 231
    iput v1, p1, Ly1/i0;->a:I

    .line 232
    .line 233
    iput-boolean v0, p1, Ly1/i0;->l:Z

    .line 234
    .line 235
    :cond_8
    iget-wide v0, v6, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->c:J

    .line 236
    .line 237
    invoke-virtual {p1, v0, v1}, Ly1/i0;->c(J)V

    .line 238
    .line 239
    .line 240
    iget-wide v0, v6, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->d:J

    .line 241
    .line 242
    invoke-virtual {p1, v0, v1}, Ly1/i0;->f(J)V

    .line 243
    .line 244
    .line 245
    return-object v5

    .line 246
    :pswitch_4
    check-cast p1, Lq2/j0;

    .line 247
    .line 248
    check-cast v6, Lc1/a1;

    .line 249
    .line 250
    invoke-virtual {v6, p1}, Lc1/a1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Lq2/j0;->b()V

    .line 254
    .line 255
    .line 256
    return-object v5

    .line 257
    :pswitch_5
    check-cast p1, Lu1/d;

    .line 258
    .line 259
    iget-object v0, p1, Lr1/o;->a:Lr1/o;

    .line 260
    .line 261
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 262
    .line 263
    if-nez v0, :cond_9

    .line 264
    .line 265
    sget-object p1, Lq2/c2;->b:Lq2/c2;

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_9
    iget-object v0, p1, Lu1/d;->p:Lu1/d;

    .line 269
    .line 270
    sget-object v1, Lq2/c2;->a:Lq2/c2;

    .line 271
    .line 272
    if-eqz v0, :cond_b

    .line 273
    .line 274
    check-cast v6, Lkb/a;

    .line 275
    .line 276
    new-instance v2, Lb2/a;

    .line 277
    .line 278
    const/16 v4, 0x12

    .line 279
    .line 280
    invoke-direct {v2, v4, v6}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v0}, Lb2/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    if-eq v4, v1, :cond_a

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_a
    invoke-static {v0, v2}, Lq2/f;->A(Lq2/d2;Lf9/k;)V

    .line 291
    .line 292
    .line 293
    :cond_b
    :goto_6
    iput-object v3, p1, Lu1/d;->p:Lu1/d;

    .line 294
    .line 295
    iput-object v3, p1, Lu1/d;->o:Lu1/d;

    .line 296
    .line 297
    move-object p1, v1

    .line 298
    :goto_7
    return-object p1

    .line 299
    :pswitch_6
    check-cast p1, Lv/o;

    .line 300
    .line 301
    iget v0, p1, Lv/o;->b:F

    .line 302
    .line 303
    const/4 v1, 0x0

    .line 304
    cmpg-float v2, v0, v1

    .line 305
    .line 306
    if-gez v2, :cond_c

    .line 307
    .line 308
    const/4 v0, 0x0

    .line 309
    :cond_c
    const/high16 v2, 0x3f800000    # 1.0f

    .line 310
    .line 311
    cmpl-float v3, v0, v2

    .line 312
    .line 313
    if-lez v3, :cond_d

    .line 314
    .line 315
    const/high16 v0, 0x3f800000    # 1.0f

    .line 316
    .line 317
    :cond_d
    iget v3, p1, Lv/o;->c:F

    .line 318
    .line 319
    const/high16 v4, -0x41000000    # -0.5f

    .line 320
    .line 321
    cmpg-float v5, v3, v4

    .line 322
    .line 323
    if-gez v5, :cond_e

    .line 324
    .line 325
    const/high16 v3, -0x41000000    # -0.5f

    .line 326
    .line 327
    :cond_e
    const/high16 v5, 0x3f000000    # 0.5f

    .line 328
    .line 329
    cmpl-float v7, v3, v5

    .line 330
    .line 331
    if-lez v7, :cond_f

    .line 332
    .line 333
    const/high16 v3, 0x3f000000    # 0.5f

    .line 334
    .line 335
    :cond_f
    iget v7, p1, Lv/o;->d:F

    .line 336
    .line 337
    cmpg-float v8, v7, v4

    .line 338
    .line 339
    if-gez v8, :cond_10

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_10
    move v4, v7

    .line 343
    :goto_8
    cmpl-float v7, v4, v5

    .line 344
    .line 345
    if-lez v7, :cond_11

    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_11
    move v5, v4

    .line 349
    :goto_9
    iget p1, p1, Lv/o;->a:F

    .line 350
    .line 351
    cmpg-float v4, p1, v1

    .line 352
    .line 353
    if-gez v4, :cond_12

    .line 354
    .line 355
    goto :goto_a

    .line 356
    :cond_12
    move v1, p1

    .line 357
    :goto_a
    cmpl-float p1, v1, v2

    .line 358
    .line 359
    if-lez p1, :cond_13

    .line 360
    .line 361
    goto :goto_b

    .line 362
    :cond_13
    move v2, v1

    .line 363
    :goto_b
    sget-object p1, Lz1/d;->x:Lz1/l;

    .line 364
    .line 365
    invoke-static {v0, v3, v5, v2, p1}, Ly1/h0;->b(FFFFLz1/c;)J

    .line 366
    .line 367
    .line 368
    move-result-wide v0

    .line 369
    check-cast v6, Lz1/c;

    .line 370
    .line 371
    invoke-static {v0, v1, v6}, Ly1/q;->a(JLz1/c;)J

    .line 372
    .line 373
    .line 374
    move-result-wide v0

    .line 375
    new-instance p1, Ly1/q;

    .line 376
    .line 377
    invoke-direct {p1, v0, v1}, Ly1/q;-><init>(J)V

    .line 378
    .line 379
    .line 380
    return-object p1

    .line 381
    :pswitch_7
    check-cast v6, Ls/i0;

    .line 382
    .line 383
    if-ne p1, v6, :cond_14

    .line 384
    .line 385
    goto :goto_c

    .line 386
    :cond_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    :goto_c
    return-object v2

    .line 391
    :pswitch_8
    check-cast v6, Ls/e0;

    .line 392
    .line 393
    if-ne p1, v6, :cond_15

    .line 394
    .line 395
    goto :goto_d

    .line 396
    :cond_15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    :goto_d
    return-object v2

    .line 401
    :pswitch_9
    check-cast v6, Ls/d0;

    .line 402
    .line 403
    if-ne p1, v6, :cond_16

    .line 404
    .line 405
    goto :goto_e

    .line 406
    :cond_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    :goto_e
    return-object v2

    .line 411
    :pswitch_a
    check-cast p1, Ly1/o;

    .line 412
    .line 413
    check-cast v6, Lf9/n;

    .line 414
    .line 415
    invoke-interface {v6, p1, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    return-object v5

    .line 419
    :pswitch_b
    check-cast p1, Lg3/l;

    .line 420
    .line 421
    iget-object v0, p1, Lg3/l;->b:Lu0/p;

    .line 422
    .line 423
    if-eqz v0, :cond_17

    .line 424
    .line 425
    invoke-virtual {p1, v0}, Lg3/l;->a(Lu0/p;)V

    .line 426
    .line 427
    .line 428
    iput-object v3, p1, Lg3/l;->b:Lu0/p;

    .line 429
    .line 430
    :cond_17
    check-cast v6, Lr2/u1;

    .line 431
    .line 432
    iget-object v0, v6, Lr2/u1;->d:Lh1/e;

    .line 433
    .line 434
    iget-object v2, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 435
    .line 436
    iget v3, v0, Lh1/e;->c:I

    .line 437
    .line 438
    :goto_f
    if-ge v1, v3, :cond_19

    .line 439
    .line 440
    aget-object v4, v2, v1

    .line 441
    .line 442
    check-cast v4, Lq2/e2;

    .line 443
    .line 444
    invoke-static {v4, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    if-eqz v4, :cond_18

    .line 449
    .line 450
    goto :goto_10

    .line 451
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 452
    .line 453
    goto :goto_f

    .line 454
    :cond_19
    const/4 v1, -0x1

    .line 455
    :goto_10
    if-ltz v1, :cond_1a

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    :cond_1a
    iget p1, v0, Lh1/e;->c:I

    .line 461
    .line 462
    if-nez p1, :cond_1b

    .line 463
    .line 464
    iget-object p1, v6, Lr2/u1;->b:Lb1/a;

    .line 465
    .line 466
    invoke-virtual {p1}, Lb1/a;->invoke()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    :cond_1b
    return-object v5

    .line 470
    :pswitch_c
    check-cast p1, La2/g;

    .line 471
    .line 472
    check-cast v6, Lr2/s1;

    .line 473
    .line 474
    invoke-interface {p1}, La2/g;->X()La2/b;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {v0}, La2/b;->z()Ly1/o;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    iget-object v1, v6, Lr2/s1;->d:Lf9/n;

    .line 483
    .line 484
    if-eqz v1, :cond_1c

    .line 485
    .line 486
    invoke-interface {p1}, La2/g;->X()La2/b;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    iget-object p1, p1, La2/b;->c:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast p1, Lb2/c;

    .line 493
    .line 494
    invoke-interface {v1, v0, p1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    :cond_1c
    return-object v5

    .line 498
    :pswitch_d
    sget-object p1, Lr2/r1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 499
    .line 500
    invoke-virtual {p1, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 501
    .line 502
    .line 503
    move-result p1

    .line 504
    if-eqz p1, :cond_1d

    .line 505
    .line 506
    check-cast v6, Lcc/h;

    .line 507
    .line 508
    invoke-interface {v6, v5}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    :cond_1d
    return-object v5

    .line 512
    :pswitch_e
    check-cast p1, Lf1/i0;

    .line 513
    .line 514
    check-cast v6, Lr2/l1;

    .line 515
    .line 516
    new-instance p1, Lc8/p;

    .line 517
    .line 518
    const/16 v0, 0x8

    .line 519
    .line 520
    invoke-direct {p1, v0, v6}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    return-object p1

    .line 524
    :pswitch_f
    check-cast p1, Landroid/content/res/Configuration;

    .line 525
    .line 526
    check-cast v6, Lf1/b1;

    .line 527
    .line 528
    new-instance v0, Landroid/content/res/Configuration;

    .line 529
    .line 530
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 531
    .line 532
    .line 533
    invoke-interface {v6, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    return-object v5

    .line 537
    :pswitch_10
    check-cast p1, Ly2/m;

    .line 538
    .line 539
    check-cast v6, Landroid/content/res/Resources;

    .line 540
    .line 541
    invoke-static {p1, v6}, Lr2/j0;->c(Ly2/m;Landroid/content/res/Resources;)Z

    .line 542
    .line 543
    .line 544
    move-result p1

    .line 545
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    return-object p1

    .line 550
    :pswitch_11
    check-cast p1, Ly2/m;

    .line 551
    .line 552
    check-cast v6, Ls/k;

    .line 553
    .line 554
    iget p1, p1, Ly2/m;->g:I

    .line 555
    .line 556
    invoke-virtual {v6, p1}, Ls/k;->a(I)Z

    .line 557
    .line 558
    .line 559
    move-result p1

    .line 560
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    return-object p1

    .line 565
    :pswitch_12
    check-cast p1, Ln3/c;

    .line 566
    .line 567
    check-cast v6, Lq2/h0;

    .line 568
    .line 569
    invoke-virtual {v6, p1}, Lq2/h0;->Z(Ln3/c;)V

    .line 570
    .line 571
    .line 572
    return-object v5

    .line 573
    :pswitch_13
    check-cast p1, Lr1/n;

    .line 574
    .line 575
    check-cast v6, Lh1/e;

    .line 576
    .line 577
    invoke-virtual {v6, p1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 578
    .line 579
    .line 580
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 581
    .line 582
    return-object p1

    .line 583
    :pswitch_14
    check-cast p1, Lq2/a;

    .line 584
    .line 585
    check-cast v6, Lq2/i0;

    .line 586
    .line 587
    invoke-interface {p1}, Lq2/a;->B()Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-nez v0, :cond_1e

    .line 592
    .line 593
    goto/16 :goto_14

    .line 594
    .line 595
    :cond_1e
    invoke-interface {p1}, Lq2/a;->b()Lq2/i0;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    iget-boolean v0, v0, Lq2/i0;->b:Z

    .line 600
    .line 601
    if-eqz v0, :cond_1f

    .line 602
    .line 603
    invoke-interface {p1}, Lq2/a;->A()V

    .line 604
    .line 605
    .line 606
    :cond_1f
    invoke-interface {p1}, Lq2/a;->b()Lq2/i0;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    iget-object v0, v0, Lq2/i0;->g:Ljava/util/HashMap;

    .line 611
    .line 612
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    if-eqz v1, :cond_20

    .line 625
    .line 626
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    check-cast v1, Ljava/util/Map$Entry;

    .line 631
    .line 632
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    check-cast v2, Lo2/m;

    .line 637
    .line 638
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    check-cast v1, Ljava/lang/Number;

    .line 643
    .line 644
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    invoke-interface {p1}, Lq2/a;->f()Lq2/t;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-static {v6, v2, v1, v3}, Lq2/i0;->a(Lq2/i0;Lo2/m;ILq2/h1;)V

    .line 653
    .line 654
    .line 655
    goto :goto_11

    .line 656
    :cond_20
    invoke-interface {p1}, Lq2/a;->f()Lq2/t;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    iget-object p1, p1, Lq2/h1;->q:Lq2/h1;

    .line 661
    .line 662
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    :goto_12
    iget-object v0, v6, Lq2/i0;->a:Lo2/v0;

    .line 666
    .line 667
    invoke-interface {v0}, Lq2/a;->f()Lq2/t;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-nez v0, :cond_22

    .line 676
    .line 677
    invoke-virtual {v6, p1}, Lq2/i0;->b(Lq2/h1;)Ljava/util/Map;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    check-cast v0, Ljava/lang/Iterable;

    .line 686
    .line 687
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 692
    .line 693
    .line 694
    move-result v1

    .line 695
    if-eqz v1, :cond_21

    .line 696
    .line 697
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    check-cast v1, Lo2/m;

    .line 702
    .line 703
    invoke-virtual {v6, p1, v1}, Lq2/i0;->c(Lq2/h1;Lo2/m;)I

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    invoke-static {v6, v1, v2, p1}, Lq2/i0;->a(Lq2/i0;Lo2/m;ILq2/h1;)V

    .line 708
    .line 709
    .line 710
    goto :goto_13

    .line 711
    :cond_21
    iget-object p1, p1, Lq2/h1;->q:Lq2/h1;

    .line 712
    .line 713
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    goto :goto_12

    .line 717
    :cond_22
    :goto_14
    return-object v5

    .line 718
    :pswitch_15
    check-cast p1, Ljava/lang/Throwable;

    .line 719
    .line 720
    check-cast v6, Lk2/m0;

    .line 721
    .line 722
    iget-object v0, v6, Lk2/m0;->c:Lac/i;

    .line 723
    .line 724
    if-eqz v0, :cond_23

    .line 725
    .line 726
    invoke-virtual {v0, p1}, Lac/i;->u(Ljava/lang/Throwable;)Z

    .line 727
    .line 728
    .line 729
    :cond_23
    iput-object v3, v6, Lk2/m0;->c:Lac/i;

    .line 730
    .line 731
    return-object v5

    .line 732
    :pswitch_16
    check-cast p1, Le2/d0;

    .line 733
    .line 734
    check-cast v6, Le2/c;

    .line 735
    .line 736
    invoke-virtual {v6, p1}, Le2/c;->g(Le2/d0;)V

    .line 737
    .line 738
    .line 739
    iget-object v0, v6, Le2/c;->i:Lf9/k;

    .line 740
    .line 741
    if-eqz v0, :cond_24

    .line 742
    .line 743
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    :cond_24
    return-object v5

    .line 747
    :pswitch_17
    check-cast p1, La2/g;

    .line 748
    .line 749
    check-cast v6, Lb2/c;

    .line 750
    .line 751
    iget-object v0, v6, Lb2/c;->l:Ly1/e0;

    .line 752
    .line 753
    iget-boolean v1, v6, Lb2/c;->n:Z

    .line 754
    .line 755
    if-eqz v1, :cond_25

    .line 756
    .line 757
    iget-boolean v1, v6, Lb2/c;->w:Z

    .line 758
    .line 759
    if-eqz v1, :cond_25

    .line 760
    .line 761
    if-eqz v0, :cond_25

    .line 762
    .line 763
    invoke-interface {p1}, La2/g;->X()La2/b;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v1}, La2/b;->J()J

    .line 768
    .line 769
    .line 770
    move-result-wide v2

    .line 771
    invoke-virtual {v1}, La2/b;->z()Ly1/o;

    .line 772
    .line 773
    .line 774
    move-result-object v4

    .line 775
    invoke-interface {v4}, Ly1/o;->f()V

    .line 776
    .line 777
    .line 778
    :try_start_0
    iget-object v4, v1, La2/b;->b:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v4, La2/d;

    .line 781
    .line 782
    iget-object v4, v4, La2/d;->b:Ljava/lang/Object;

    .line 783
    .line 784
    check-cast v4, La2/b;

    .line 785
    .line 786
    invoke-virtual {v4}, La2/b;->z()Ly1/o;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    invoke-interface {v4, v0}, Ly1/o;->h(Ly1/e0;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v6, p1}, Lb2/c;->c(La2/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    .line 795
    .line 796
    invoke-static {v1, v2, v3}, Lp9/v;->w(La2/b;J)V

    .line 797
    .line 798
    .line 799
    goto :goto_15

    .line 800
    :catchall_0
    move-exception p1

    .line 801
    invoke-static {v1, v2, v3}, Lp9/v;->w(La2/b;J)V

    .line 802
    .line 803
    .line 804
    throw p1

    .line 805
    :cond_25
    invoke-virtual {v6, p1}, Lb2/c;->c(La2/g;)V

    .line 806
    .line 807
    .line 808
    :goto_15
    return-object v5

    .line 809
    :pswitch_data_0
    .packed-switch 0x0
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
