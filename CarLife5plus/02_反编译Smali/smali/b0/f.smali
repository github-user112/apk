.class public final Lb0/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/f;->a:I

    iput-object p2, p0, Lb0/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb0/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldc/c;Lg9/x;Ldc/e;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Lb0/f;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb0/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb0/f;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lb0/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lx1/b;

    .line 7
    .line 8
    iget-wide v2, p1, Lx1/b;->a:J

    .line 9
    .line 10
    iget-object p1, p0, Lb0/f;->b:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lv/c;

    .line 14
    .line 15
    invoke-virtual {v1}, Lv/c;->d()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lx1/b;

    .line 20
    .line 21
    iget-wide v4, p1, Lx1/b;->a:J

    .line 22
    .line 23
    const-wide v6, 0x7fffffff7fffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long/2addr v4, v6

    .line 29
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    const-wide v8, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    cmp-long v0, v4, v8

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    and-long v4, v2, v6

    .line 41
    .line 42
    cmp-long v0, v4, v8

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lv/c;->d()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lx1/b;

    .line 51
    .line 52
    iget-wide v4, v0, Lx1/b;->a:J

    .line 53
    .line 54
    const-wide v6, 0xffffffffL

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v4, v6

    .line 60
    long-to-int v0, v4

    .line 61
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    and-long v4, v2, v6

    .line 66
    .line 67
    long-to-int v5, v4

    .line 68
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    cmpg-float v0, v0, v4

    .line 73
    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p0, Lb0/f;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p2, Lac/w;

    .line 80
    .line 81
    new-instance v0, Lk2/k0;

    .line 82
    .line 83
    const/4 v5, 0x2

    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-direct/range {v0 .. v5}, Lk2/k0;-><init>(Ljava/lang/Object;JLw8/c;I)V

    .line 86
    .line 87
    .line 88
    const/4 v1, 0x3

    .line 89
    invoke-static {p2, v4, v0, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    new-instance v0, Lx1/b;

    .line 94
    .line 95
    invoke-direct {v0, v2, v3}, Lx1/b;-><init>(J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0, p2}, Lv/c;->e(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 103
    .line 104
    if-ne p2, v0, :cond_2

    .line 105
    .line 106
    move-object p1, p2

    .line 107
    :cond_2
    :goto_1
    return-object p1

    .line 108
    :pswitch_0
    instance-of v0, p2, Ldc/q;

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    move-object v0, p2

    .line 113
    check-cast v0, Ldc/q;

    .line 114
    .line 115
    iget v1, v0, Ldc/q;->f:I

    .line 116
    .line 117
    const/high16 v2, -0x80000000

    .line 118
    .line 119
    and-int v3, v1, v2

    .line 120
    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    sub-int/2addr v1, v2

    .line 124
    iput v1, v0, Ldc/q;->f:I

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    new-instance v0, Ldc/q;

    .line 128
    .line 129
    invoke-direct {v0, p0, p2}, Ldc/q;-><init>(Lb0/f;Lw8/c;)V

    .line 130
    .line 131
    .line 132
    :goto_2
    iget-object p2, v0, Ldc/q;->e:Ljava/lang/Object;

    .line 133
    .line 134
    iget v1, v0, Ldc/q;->f:I

    .line 135
    .line 136
    const/4 v2, 0x1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    if-ne v1, v2, :cond_4

    .line 140
    .line 141
    iget-object p1, v0, Ldc/q;->h:Ljava/lang/Object;

    .line 142
    .line 143
    iget-object v0, v0, Ldc/q;->d:Lb0/f;

    .line 144
    .line 145
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 152
    .line 153
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_5
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object p2, p0, Lb0/f;->b:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p2, Lf9/n;

    .line 163
    .line 164
    iput-object p0, v0, Ldc/q;->d:Lb0/f;

    .line 165
    .line 166
    iput-object p1, v0, Ldc/q;->h:Ljava/lang/Object;

    .line 167
    .line 168
    iput v2, v0, Ldc/q;->f:I

    .line 169
    .line 170
    invoke-interface {p2, p1, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 175
    .line 176
    if-ne p2, v0, :cond_6

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_6
    move-object v0, p0

    .line 180
    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-nez p2, :cond_7

    .line 187
    .line 188
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 189
    .line 190
    :goto_4
    return-object v0

    .line 191
    :cond_7
    iget-object p2, v0, Lb0/f;->c:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p2, Lg9/x;

    .line 194
    .line 195
    iput-object p1, p2, Lg9/x;->b:Ljava/lang/Object;

    .line 196
    .line 197
    new-instance p1, Lec/a;

    .line 198
    .line 199
    invoke-direct {p1, v0}, Lec/a;-><init>(Lb0/f;)V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :pswitch_1
    iget-object v0, p0, Lb0/f;->b:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v0, Lg9/x;

    .line 206
    .line 207
    instance-of v1, p2, Ldc/b;

    .line 208
    .line 209
    if-eqz v1, :cond_8

    .line 210
    .line 211
    move-object v1, p2

    .line 212
    check-cast v1, Ldc/b;

    .line 213
    .line 214
    iget v2, v1, Ldc/b;->f:I

    .line 215
    .line 216
    const/high16 v3, -0x80000000

    .line 217
    .line 218
    and-int v4, v2, v3

    .line 219
    .line 220
    if-eqz v4, :cond_8

    .line 221
    .line 222
    sub-int/2addr v2, v3

    .line 223
    iput v2, v1, Ldc/b;->f:I

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_8
    new-instance v1, Ldc/b;

    .line 227
    .line 228
    invoke-direct {v1, p0, p2}, Ldc/b;-><init>(Lb0/f;Lw8/c;)V

    .line 229
    .line 230
    .line 231
    :goto_5
    iget-object p2, v1, Ldc/b;->d:Ljava/lang/Object;

    .line 232
    .line 233
    iget v2, v1, Ldc/b;->f:I

    .line 234
    .line 235
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 236
    .line 237
    const/4 v4, 0x1

    .line 238
    if-eqz v2, :cond_a

    .line 239
    .line 240
    if-ne v2, v4, :cond_9

    .line 241
    .line 242
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 247
    .line 248
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 249
    .line 250
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :cond_a
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iget-object p2, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 258
    .line 259
    sget-object v2, Lec/c;->b:Lfc/s;

    .line 260
    .line 261
    if-eq p2, v2, :cond_b

    .line 262
    .line 263
    invoke-static {p2, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-nez p2, :cond_c

    .line 268
    .line 269
    :cond_b
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 270
    .line 271
    iget-object p2, p0, Lb0/f;->c:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast p2, Ldc/e;

    .line 274
    .line 275
    iput v4, v1, Ldc/b;->f:I

    .line 276
    .line 277
    invoke-interface {p2, p1, v1}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 282
    .line 283
    if-ne p1, p2, :cond_c

    .line 284
    .line 285
    move-object v3, p2

    .line 286
    :cond_c
    :goto_6
    return-object v3

    .line 287
    :pswitch_2
    check-cast p1, Lb0/j;

    .line 288
    .line 289
    iget-object p2, p0, Lb0/f;->b:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast p2, Lg9/v;

    .line 292
    .line 293
    instance-of v0, p1, Lb0/m;

    .line 294
    .line 295
    const/4 v1, 0x1

    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    iget p1, p2, Lg9/v;->a:I

    .line 299
    .line 300
    add-int/2addr p1, v1

    .line 301
    iput p1, p2, Lg9/v;->a:I

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_d
    instance-of v0, p1, Lb0/n;

    .line 305
    .line 306
    if-eqz v0, :cond_e

    .line 307
    .line 308
    iget p1, p2, Lg9/v;->a:I

    .line 309
    .line 310
    add-int/lit8 p1, p1, -0x1

    .line 311
    .line 312
    iput p1, p2, Lg9/v;->a:I

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_e
    instance-of p1, p1, Lb0/l;

    .line 316
    .line 317
    if-eqz p1, :cond_f

    .line 318
    .line 319
    iget p1, p2, Lg9/v;->a:I

    .line 320
    .line 321
    add-int/lit8 p1, p1, -0x1

    .line 322
    .line 323
    iput p1, p2, Lg9/v;->a:I

    .line 324
    .line 325
    :cond_f
    :goto_7
    iget p1, p2, Lg9/v;->a:I

    .line 326
    .line 327
    if-lez p1, :cond_10

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_10
    const/4 v1, 0x0

    .line 331
    :goto_8
    iget-object p1, p0, Lb0/f;->c:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast p1, Lc1/x2;

    .line 334
    .line 335
    iget-boolean p2, p1, Lc1/x2;->q:Z

    .line 336
    .line 337
    if-eq p2, v1, :cond_11

    .line 338
    .line 339
    iput-boolean v1, p1, Lc1/x2;->q:Z

    .line 340
    .line 341
    invoke-static {p1}, Lq2/f;->m(Lq2/x;)V

    .line 342
    .line 343
    .line 344
    :cond_11
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 345
    .line 346
    return-object p1

    .line 347
    :pswitch_3
    instance-of v0, p2, Lb8/k;

    .line 348
    .line 349
    if-eqz v0, :cond_12

    .line 350
    .line 351
    move-object v0, p2

    .line 352
    check-cast v0, Lb8/k;

    .line 353
    .line 354
    iget v1, v0, Lb8/k;->e:I

    .line 355
    .line 356
    const/high16 v2, -0x80000000

    .line 357
    .line 358
    and-int v3, v1, v2

    .line 359
    .line 360
    if-eqz v3, :cond_12

    .line 361
    .line 362
    sub-int/2addr v1, v2

    .line 363
    iput v1, v0, Lb8/k;->e:I

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_12
    new-instance v0, Lb8/k;

    .line 367
    .line 368
    invoke-direct {v0, p0, p2}, Lb8/k;-><init>(Lb0/f;Lw8/c;)V

    .line 369
    .line 370
    .line 371
    :goto_9
    iget-object p2, v0, Lb8/k;->d:Ljava/lang/Object;

    .line 372
    .line 373
    iget v1, v0, Lb8/k;->e:I

    .line 374
    .line 375
    const/4 v2, 0x1

    .line 376
    if-eqz v1, :cond_14

    .line 377
    .line 378
    if-ne v1, v2, :cond_13

    .line 379
    .line 380
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    goto :goto_a

    .line 384
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 385
    .line 386
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 387
    .line 388
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw p1

    .line 392
    :cond_14
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    iget-object p2, p0, Lb0/f;->b:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast p2, Ldc/e;

    .line 398
    .line 399
    move-object v1, p1

    .line 400
    check-cast v1, Lz7/q1;

    .line 401
    .line 402
    iget-object v3, p0, Lb0/f;->c:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v3, Lz7/b2;

    .line 405
    .line 406
    iget-object v3, v3, Lz7/b2;->c:Ljava/util/List;

    .line 407
    .line 408
    if-eqz v3, :cond_15

    .line 409
    .line 410
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-eqz v4, :cond_15

    .line 415
    .line 416
    goto :goto_a

    .line 417
    :cond_15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    if-eqz v4, :cond_17

    .line 426
    .line 427
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    check-cast v4, Lz7/a2;

    .line 432
    .line 433
    iget-object v4, v4, Lz7/a2;->d:Lz7/q1;

    .line 434
    .line 435
    invoke-static {v4, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-eqz v4, :cond_16

    .line 440
    .line 441
    iput v2, v0, Lb8/k;->e:I

    .line 442
    .line 443
    invoke-interface {p2, p1, v0}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 448
    .line 449
    if-ne p1, p2, :cond_17

    .line 450
    .line 451
    goto :goto_b

    .line 452
    :cond_17
    :goto_a
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 453
    .line 454
    :goto_b
    return-object p2

    .line 455
    :pswitch_4
    check-cast p1, Lb0/j;

    .line 456
    .line 457
    iget-object p2, p0, Lb0/f;->b:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast p2, Lb1/c;

    .line 460
    .line 461
    instance-of v0, p1, Lb0/o;

    .line 462
    .line 463
    if-eqz v0, :cond_19

    .line 464
    .line 465
    iget-boolean v0, p2, Lb1/c;->w:Z

    .line 466
    .line 467
    if-eqz v0, :cond_18

    .line 468
    .line 469
    check-cast p1, Lb0/o;

    .line 470
    .line 471
    invoke-virtual {p2, p1}, Lb1/c;->A0(Lb0/o;)V

    .line 472
    .line 473
    .line 474
    goto :goto_c

    .line 475
    :cond_18
    iget-object p2, p2, Lb1/c;->x:Ls/d0;

    .line 476
    .line 477
    invoke-virtual {p2, p1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    goto :goto_c

    .line 481
    :cond_19
    iget-object v0, p0, Lb0/f;->c:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v0, Lac/w;

    .line 484
    .line 485
    iget-object v1, p2, Lb1/c;->t:Lb1/q;

    .line 486
    .line 487
    if-nez v1, :cond_1a

    .line 488
    .line 489
    new-instance v1, Lb1/q;

    .line 490
    .line 491
    iget-boolean v2, p2, Lb1/c;->p:Z

    .line 492
    .line 493
    iget-object v3, p2, Lb1/c;->s:Lc1/c0;

    .line 494
    .line 495
    invoke-direct {v1, v3, v2}, Lb1/q;-><init>(Lf9/a;Z)V

    .line 496
    .line 497
    .line 498
    invoke-static {p2}, Lq2/f;->l(Lq2/o;)V

    .line 499
    .line 500
    .line 501
    iput-object v1, p2, Lb1/c;->t:Lb1/q;

    .line 502
    .line 503
    :cond_1a
    invoke-virtual {v1, p1, v0}, Lb1/q;->e(Lb0/j;Lac/w;)V

    .line 504
    .line 505
    .line 506
    :goto_c
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 507
    .line 508
    return-object p1

    .line 509
    :pswitch_5
    check-cast p1, Lb0/j;

    .line 510
    .line 511
    iget-object p2, p0, Lb0/f;->b:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast p2, Lb1/b;

    .line 514
    .line 515
    instance-of v0, p1, Lb0/m;

    .line 516
    .line 517
    if-eqz v0, :cond_1c

    .line 518
    .line 519
    move-object v2, p1

    .line 520
    check-cast v2, Lb0/m;

    .line 521
    .line 522
    iget-object p1, p2, Lb1/b;->h:Lb1/i;

    .line 523
    .line 524
    if-eqz p1, :cond_1b

    .line 525
    .line 526
    goto :goto_d

    .line 527
    :cond_1b
    iget-object p1, p2, Lb1/b;->g:Landroid/view/ViewGroup;

    .line 528
    .line 529
    invoke-static {p1}, Lg5/a;->w(Landroid/view/ViewGroup;)Lb1/i;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    iput-object p1, p2, Lb1/b;->h:Lb1/i;

    .line 534
    .line 535
    :goto_d
    invoke-virtual {p1, p2}, Lb1/i;->a(Lb1/j;)Lb1/k;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    iget-boolean v3, p2, Lb1/b;->c:Z

    .line 540
    .line 541
    iget-wide v4, p2, Lb1/b;->k:J

    .line 542
    .line 543
    iget v6, p2, Lb1/b;->l:I

    .line 544
    .line 545
    iget-object p1, p2, Lb1/b;->e:Lf1/b1;

    .line 546
    .line 547
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    check-cast p1, Ly1/q;

    .line 552
    .line 553
    iget-wide v7, p1, Ly1/q;->a:J

    .line 554
    .line 555
    iget-object p1, p2, Lb1/b;->f:Lf1/b1;

    .line 556
    .line 557
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    check-cast p1, Lb1/g;

    .line 562
    .line 563
    iget v9, p1, Lb1/g;->d:F

    .line 564
    .line 565
    iget-object v10, p2, Lb1/b;->m:Lb1/a;

    .line 566
    .line 567
    invoke-virtual/range {v1 .. v10}, Lb1/k;->b(Lb0/m;ZJIJFLf9/a;)V

    .line 568
    .line 569
    .line 570
    iget-object p1, p2, Lb1/b;->i:Lf1/k1;

    .line 571
    .line 572
    invoke-virtual {p1, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    goto :goto_e

    .line 576
    :cond_1c
    instance-of v0, p1, Lb0/n;

    .line 577
    .line 578
    if-eqz v0, :cond_1d

    .line 579
    .line 580
    iget-object p1, p2, Lb1/b;->i:Lf1/k1;

    .line 581
    .line 582
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    check-cast p1, Lb1/k;

    .line 587
    .line 588
    if-eqz p1, :cond_1f

    .line 589
    .line 590
    invoke-virtual {p1}, Lb1/k;->d()V

    .line 591
    .line 592
    .line 593
    goto :goto_e

    .line 594
    :cond_1d
    instance-of v0, p1, Lb0/l;

    .line 595
    .line 596
    if-eqz v0, :cond_1e

    .line 597
    .line 598
    iget-object p1, p2, Lb1/b;->i:Lf1/k1;

    .line 599
    .line 600
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    check-cast p1, Lb1/k;

    .line 605
    .line 606
    if-eqz p1, :cond_1f

    .line 607
    .line 608
    invoke-virtual {p1}, Lb1/k;->d()V

    .line 609
    .line 610
    .line 611
    goto :goto_e

    .line 612
    :cond_1e
    iget-object v0, p0, Lb0/f;->c:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v0, Lac/w;

    .line 615
    .line 616
    iget-object p2, p2, Lb1/b;->b:Lb1/q;

    .line 617
    .line 618
    invoke-virtual {p2, p1, v0}, Lb1/q;->e(Lb0/j;Lac/w;)V

    .line 619
    .line 620
    .line 621
    :cond_1f
    :goto_e
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 622
    .line 623
    return-object p1

    .line 624
    :pswitch_6
    check-cast p1, Lb0/j;

    .line 625
    .line 626
    iget-object p2, p0, Lb0/f;->b:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast p2, Ljava/util/ArrayList;

    .line 629
    .line 630
    instance-of v0, p1, Lb0/d;

    .line 631
    .line 632
    if-eqz v0, :cond_20

    .line 633
    .line 634
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    goto :goto_f

    .line 638
    :cond_20
    instance-of v0, p1, Lb0/e;

    .line 639
    .line 640
    if-eqz v0, :cond_21

    .line 641
    .line 642
    check-cast p1, Lb0/e;

    .line 643
    .line 644
    iget-object p1, p1, Lb0/e;->a:Lb0/d;

    .line 645
    .line 646
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    :cond_21
    :goto_f
    iget-object p1, p0, Lb0/f;->c:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast p1, Lf1/b1;

    .line 652
    .line 653
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 654
    .line 655
    .line 656
    move-result p2

    .line 657
    xor-int/lit8 p2, p2, 0x1

    .line 658
    .line 659
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 660
    .line 661
    .line 662
    move-result-object p2

    .line 663
    invoke-interface {p1, p2}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 667
    .line 668
    return-object p1

    .line 669
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
