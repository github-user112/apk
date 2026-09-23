.class public final synthetic La8/w;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, La8/w;->a:I

    iput-object p3, p0, La8/w;->c:Ljava/lang/Object;

    iput-object p4, p0, La8/w;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, La8/w;->a:I

    iput-object p2, p0, La8/w;->c:Ljava/lang/Object;

    iput-object p3, p0, La8/w;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, La8/w;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x31

    .line 5
    .line 6
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 7
    .line 8
    iget-object v4, p0, La8/w;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, La8/w;->c:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v5, Lf1/b1;

    .line 16
    .line 17
    check-cast v4, Lf1/h1;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    check-cast p2, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    sget v0, Ly7/u;->c:I

    .line 31
    .line 32
    invoke-interface {v5, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, p2}, Lf1/h1;->g(I)V

    .line 36
    .line 37
    .line 38
    return-object v3

    .line 39
    :pswitch_0
    check-cast v5, Ly7/m;

    .line 40
    .line 41
    check-cast v4, Lf9/n;

    .line 42
    .line 43
    check-cast p1, Lf1/s;

    .line 44
    .line 45
    check-cast p2, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/4 p2, 0x7

    .line 51
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {v5, v4, p1, p2}, Ly7/m;->e(Lf9/n;Lf1/s;I)V

    .line 56
    .line 57
    .line 58
    return-object v3

    .line 59
    :pswitch_1
    check-cast v5, Ly/e;

    .line 60
    .line 61
    check-cast v4, Ly/c;

    .line 62
    .line 63
    check-cast p1, Lf1/s;

    .line 64
    .line 65
    check-cast p2, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-virtual {v5, v4, p1, p2}, Ly/e;->a(Ly/c;Lf1/s;I)V

    .line 75
    .line 76
    .line 77
    return-object v3

    .line 78
    :pswitch_2
    check-cast v5, Lx7/f;

    .line 79
    .line 80
    check-cast v4, Ljava/util/List;

    .line 81
    .line 82
    check-cast p1, Lf1/s;

    .line 83
    .line 84
    check-cast p2, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-virtual {v5, v4, p1, p2}, Lx7/f;->b(Ljava/util/List;Lf1/s;I)V

    .line 94
    .line 95
    .line 96
    return-object v3

    .line 97
    :pswitch_3
    check-cast v5, Lw0/r1;

    .line 98
    .line 99
    check-cast v4, Lac/w;

    .line 100
    .line 101
    move-object v6, p1

    .line 102
    check-cast v6, Ln0/a;

    .line 103
    .line 104
    move-object v7, p2

    .line 105
    check-cast v7, Landroid/content/Context;

    .line 106
    .line 107
    iget-object p1, v5, Lw0/r1;->l:Lf1/k1;

    .line 108
    .line 109
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    invoke-virtual {v5}, Lw0/r1;->l()Lb3/g;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const/4 p2, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    .line 126
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 127
    .line 128
    move-object v9, p1

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    move-object v9, p2

    .line 131
    :goto_0
    iget-object p1, v5, Lw0/r1;->v:Lb3/n0;

    .line 132
    .line 133
    if-eqz p1, :cond_1

    .line 134
    .line 135
    iget-wide p1, p1, Lb3/n0;->a:J

    .line 136
    .line 137
    iget-object v0, v5, Lw0/r1;->b:Lg3/q;

    .line 138
    .line 139
    const/16 v1, 0x20

    .line 140
    .line 141
    shr-long v1, p1, v1

    .line 142
    .line 143
    long-to-int v2, v1

    .line 144
    invoke-interface {v0, v2}, Lg3/q;->b(I)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    const-wide v10, 0xffffffffL

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    and-long/2addr p1, v10

    .line 154
    long-to-int p2, p1

    .line 155
    invoke-interface {v0, p2}, Lg3/q;->b(I)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-static {v1, p1}, Lb3/d0;->b(II)J

    .line 160
    .line 161
    .line 162
    move-result-wide p1

    .line 163
    new-instance v0, Lb3/n0;

    .line 164
    .line 165
    invoke-direct {v0, p1, p2}, Lb3/n0;-><init>(J)V

    .line 166
    .line 167
    .line 168
    move-object v10, v0

    .line 169
    goto :goto_1

    .line 170
    :cond_1
    move-object v10, p2

    .line 171
    :goto_1
    iget-object v11, v5, Lw0/r1;->i:Lw0/t;

    .line 172
    .line 173
    new-instance v12, Ll0/u;

    .line 174
    .line 175
    const/16 p1, 0xc

    .line 176
    .line 177
    invoke-direct {v12, v5, v4, v7, p1}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 178
    .line 179
    .line 180
    invoke-static/range {v6 .. v12}, Lw0/v;->a(Ln0/a;Landroid/content/Context;ZLjava/lang/CharSequence;Lb3/n0;Lw0/t;Lf9/k;)V

    .line 181
    .line 182
    .line 183
    return-object v3

    .line 184
    :pswitch_4
    check-cast v5, Lq0/q;

    .line 185
    .line 186
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 187
    .line 188
    check-cast p1, Lf1/s;

    .line 189
    .line 190
    check-cast p2, Ljava/lang/Integer;

    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    invoke-virtual {v5, v4, p1, p2}, Lq0/q;->a(Landroid/graphics/drawable/Drawable;Lf1/s;I)V

    .line 200
    .line 201
    .line 202
    return-object v3

    .line 203
    :pswitch_5
    check-cast v5, Ls0/b;

    .line 204
    .line 205
    check-cast v4, Lo0/c;

    .line 206
    .line 207
    check-cast p1, Lf1/s;

    .line 208
    .line 209
    check-cast p2, Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-static {v5, v4, p1, p2}, Lq0/k;->a(Ls0/b;Lo0/c;Lf1/s;I)V

    .line 219
    .line 220
    .line 221
    return-object v3

    .line 222
    :pswitch_6
    check-cast v5, Lw0/w0;

    .line 223
    .line 224
    check-cast v4, Ln1/c;

    .line 225
    .line 226
    check-cast p1, Lf1/s;

    .line 227
    .line 228
    check-cast p2, Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    invoke-static {v5, v4, p1, p2}, Ll0/p0;->c(Lw0/w0;Ln1/c;Lf1/s;I)V

    .line 238
    .line 239
    .line 240
    return-object v3

    .line 241
    :pswitch_7
    check-cast v5, Lk7/j;

    .line 242
    .line 243
    check-cast v4, Ljava/util/List;

    .line 244
    .line 245
    check-cast p1, Lf1/s;

    .line 246
    .line 247
    check-cast p2, Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    invoke-virtual {v5, v4, p1, p2}, Lk7/j;->c(Ljava/util/List;Lf1/s;I)V

    .line 257
    .line 258
    .line 259
    return-object v3

    .line 260
    :pswitch_8
    check-cast v5, Ll5/l;

    .line 261
    .line 262
    check-cast v4, Lf9/k;

    .line 263
    .line 264
    check-cast p1, Lf1/s;

    .line 265
    .line 266
    check-cast p2, Ljava/lang/Integer;

    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 272
    .line 273
    .line 274
    move-result p2

    .line 275
    invoke-static {v5, v4, p1, p2}, Li2/c;->c(Ll5/l;Lf9/k;Lf1/s;I)V

    .line 276
    .line 277
    .line 278
    return-object v3

    .line 279
    :pswitch_9
    check-cast v5, Lh0/t;

    .line 280
    .line 281
    check-cast v4, Lf0/k;

    .line 282
    .line 283
    check-cast p1, Lo2/i1;

    .line 284
    .line 285
    check-cast p2, Ln3/a;

    .line 286
    .line 287
    new-instance v0, Lh0/x;

    .line 288
    .line 289
    invoke-direct {v0, v5, p1}, Lh0/x;-><init>(Lh0/t;Lo2/i1;)V

    .line 290
    .line 291
    .line 292
    iget-wide p1, p2, Ln3/a;->a:J

    .line 293
    .line 294
    invoke-virtual {v4, v0, p1, p2}, Lf0/k;->a(Lh0/x;J)Lo2/n0;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    return-object p1

    .line 299
    :pswitch_a
    check-cast v5, Lg0/a;

    .line 300
    .line 301
    move-object v6, v4

    .line 302
    check-cast v6, Ld0/e;

    .line 303
    .line 304
    move-object v7, p1

    .line 305
    check-cast v7, Ln3/c;

    .line 306
    .line 307
    check-cast p2, Ln3/a;

    .line 308
    .line 309
    iget-wide v2, p2, Ln3/a;->a:J

    .line 310
    .line 311
    invoke-static {v2, v3}, Ln3/a;->h(J)I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    const v0, 0x7fffffff

    .line 316
    .line 317
    .line 318
    if-eq p1, v0, :cond_2

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_2
    const-string p1, "LazyVerticalGrid\'s width should be bound by parent."

    .line 322
    .line 323
    invoke-static {p1}, Lc0/b;->a(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :goto_2
    iget-wide p1, p2, Ln3/a;->a:J

    .line 327
    .line 328
    invoke-static {p1, p2}, Ln3/a;->h(J)I

    .line 329
    .line 330
    .line 331
    move-result v8

    .line 332
    invoke-interface {v6}, Ld0/e;->a()F

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    invoke-interface {v7, p1}, Ln3/c;->b0(F)I

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    iget p2, v5, Lg0/a;->a:I

    .line 341
    .line 342
    add-int/lit8 v0, p2, -0x1

    .line 343
    .line 344
    mul-int v0, v0, p1

    .line 345
    .line 346
    sub-int p1, v8, v0

    .line 347
    .line 348
    div-int v0, p1, p2

    .line 349
    .line 350
    rem-int/2addr p1, p2

    .line 351
    new-instance v2, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .line 355
    .line 356
    const/4 v3, 0x0

    .line 357
    const/4 v4, 0x0

    .line 358
    :goto_3
    if-ge v4, p2, :cond_4

    .line 359
    .line 360
    if-ge v4, p1, :cond_3

    .line 361
    .line 362
    const/4 v5, 0x1

    .line 363
    goto :goto_4

    .line 364
    :cond_3
    const/4 v5, 0x0

    .line 365
    :goto_4
    add-int/2addr v5, v0

    .line 366
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    add-int/lit8 v4, v4, 0x1

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_4
    invoke-static {v2}, Ls8/p;->A0(Ljava/util/ArrayList;)[I

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    array-length p1, v9

    .line 381
    new-array v11, p1, [I

    .line 382
    .line 383
    sget-object v10, Ln3/m;->a:Ln3/m;

    .line 384
    .line 385
    invoke-interface/range {v6 .. v11}, Ld0/e;->c(Ln3/c;I[ILn3/m;[I)V

    .line 386
    .line 387
    .line 388
    new-instance p1, Landroid/support/v4/media/session/t;

    .line 389
    .line 390
    const/16 p2, 0x9

    .line 391
    .line 392
    invoke-direct {p1, p2, v9, v11}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    return-object p1

    .line 396
    :pswitch_b
    check-cast v5, Ln1/i;

    .line 397
    .line 398
    check-cast v4, Lf1/k2;

    .line 399
    .line 400
    check-cast p1, Ljava/lang/Integer;

    .line 401
    .line 402
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    instance-of v0, p2, Lf1/j;

    .line 407
    .line 408
    if-eqz v0, :cond_5

    .line 409
    .line 410
    check-cast p2, Lf1/j;

    .line 411
    .line 412
    iget-object p1, v5, Ln1/i;->f:Lh1/e;

    .line 413
    .line 414
    invoke-virtual {p1, p2}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    goto :goto_5

    .line 418
    :cond_5
    instance-of v0, p2, Lf1/d2;

    .line 419
    .line 420
    if-eqz v0, :cond_6

    .line 421
    .line 422
    move-object v0, p2

    .line 423
    check-cast v0, Lf1/d2;

    .line 424
    .line 425
    iget-object v1, v0, Lf1/d2;->a:Lf1/c2;

    .line 426
    .line 427
    instance-of v1, v1, Lf1/p;

    .line 428
    .line 429
    if-nez v1, :cond_7

    .line 430
    .line 431
    invoke-static {v4, p1, p2}, Lf1/t;->g(Lf1/k2;ILjava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v5, v0}, Ln1/i;->e(Lf1/d2;)V

    .line 435
    .line 436
    .line 437
    goto :goto_5

    .line 438
    :cond_6
    instance-of v0, p2, Lf1/w1;

    .line 439
    .line 440
    if-eqz v0, :cond_7

    .line 441
    .line 442
    invoke-static {v4, p1, p2}, Lf1/t;->g(Lf1/k2;ILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    check-cast p2, Lf1/w1;

    .line 446
    .line 447
    invoke-virtual {p2}, Lf1/w1;->d()V

    .line 448
    .line 449
    .line 450
    :cond_7
    :goto_5
    return-object v3

    .line 451
    :pswitch_c
    check-cast v5, Le8/d;

    .line 452
    .line 453
    check-cast v4, Ljava/util/List;

    .line 454
    .line 455
    check-cast p1, Lf1/s;

    .line 456
    .line 457
    check-cast p2, Ljava/lang/Integer;

    .line 458
    .line 459
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 463
    .line 464
    .line 465
    move-result p2

    .line 466
    invoke-virtual {v5, v4, p1, p2}, Le8/d;->c(Ljava/util/List;Lf1/s;I)V

    .line 467
    .line 468
    .line 469
    return-object v3

    .line 470
    :pswitch_d
    check-cast v5, Le8/d;

    .line 471
    .line 472
    check-cast v4, Le8/i;

    .line 473
    .line 474
    check-cast p1, Lf1/s;

    .line 475
    .line 476
    check-cast p2, Ljava/lang/Integer;

    .line 477
    .line 478
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 482
    .line 483
    .line 484
    move-result p2

    .line 485
    invoke-virtual {v5, v4, p1, p2}, Le8/d;->b(Le8/i;Lf1/s;I)V

    .line 486
    .line 487
    .line 488
    return-object v3

    .line 489
    :pswitch_e
    check-cast v5, Ld8/j;

    .line 490
    .line 491
    check-cast v4, Ljava/util/List;

    .line 492
    .line 493
    check-cast p1, Lf1/s;

    .line 494
    .line 495
    check-cast p2, Ljava/lang/Integer;

    .line 496
    .line 497
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    const/16 p2, 0x207

    .line 501
    .line 502
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 503
    .line 504
    .line 505
    move-result p2

    .line 506
    invoke-virtual {v5, v4, v1, p1, p2}, Ld8/j;->c(Ljava/util/List;ZLf1/s;I)V

    .line 507
    .line 508
    .line 509
    return-object v3

    .line 510
    :pswitch_f
    check-cast v5, Lc8/v;

    .line 511
    .line 512
    check-cast v4, Ljava/util/List;

    .line 513
    .line 514
    check-cast p1, Lf1/s;

    .line 515
    .line 516
    check-cast p2, Ljava/lang/Integer;

    .line 517
    .line 518
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 522
    .line 523
    .line 524
    move-result p2

    .line 525
    invoke-virtual {v5, v4, p1, p2}, Lc8/v;->d(Ljava/util/List;Lf1/s;I)V

    .line 526
    .line 527
    .line 528
    return-object v3

    .line 529
    :pswitch_10
    check-cast v5, La8/w0;

    .line 530
    .line 531
    check-cast v4, Ljava/util/List;

    .line 532
    .line 533
    check-cast p1, Lf1/s;

    .line 534
    .line 535
    check-cast p2, Ljava/lang/Integer;

    .line 536
    .line 537
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 541
    .line 542
    .line 543
    move-result p2

    .line 544
    invoke-virtual {v5, v4, p1, p2}, La8/w0;->c(Ljava/util/List;Lf1/s;I)V

    .line 545
    .line 546
    .line 547
    return-object v3

    .line 548
    nop

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
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
