.class public final Lq9/c0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq9/g;


# instance fields
.field public final a:Z

.field public final b:Lq9/g;

.field public final c:Ljava/lang/reflect/Member;

.field public final d:La2/b;

.field public final e:[Ll9/d;

.field public final f:Z


# direct methods
.method public constructor <init>(Lq9/g;Lv9/c;Z)V
    .locals 12

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-boolean p3, p0, Lq9/c0;->a:Z

    .line 10
    .line 11
    instance-of v0, p1, Lq9/t;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    const-string v2, "getValueParameters(...)"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    invoke-interface {p2}, Lv9/b;->a0()Ly9/v;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p2}, Lv9/b;->W()Ly9/v;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ly9/v;->getType()Llb/w;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v3

    .line 39
    :goto_0
    if-eqz v0, :cond_6

    .line 40
    .line 41
    invoke-static {v0}, Lxa/f;->h(Llb/w;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_6

    .line 46
    .line 47
    if-eqz p3, :cond_4

    .line 48
    .line 49
    invoke-interface {p2}, Lv9/b;->S()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-static {p3, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_6

    .line 72
    .line 73
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Ly9/r0;

    .line 78
    .line 79
    invoke-virtual {v5}, Ly9/r0;->D0()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    :cond_4
    invoke-static {v0}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-static {p3}, Lp9/x1;->v(Llb/a0;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-static {p3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-static {p3, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_5

    .line 114
    .line 115
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Ljava/lang/reflect/Method;

    .line 120
    .line 121
    move-object v6, p1

    .line 122
    check-cast v6, Lq9/t;

    .line 123
    .line 124
    iget-object v6, v6, Lq9/t;->h:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    new-array p3, v4, [Ljava/lang/Object;

    .line 135
    .line 136
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    new-instance v0, Lq9/u;

    .line 141
    .line 142
    check-cast p1, Lq9/q;

    .line 143
    .line 144
    iget-object p1, p1, Lq9/w;->a:Ljava/lang/reflect/Member;

    .line 145
    .line 146
    check-cast p1, Ljava/lang/reflect/Method;

    .line 147
    .line 148
    invoke-direct {v0, p1, p3}, Lq9/u;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    move-object p1, v0

    .line 152
    :cond_6
    :goto_2
    iput-object p1, p0, Lq9/c0;->b:Lq9/g;

    .line 153
    .line 154
    invoke-interface {p1}, Lq9/g;->r()Ljava/lang/reflect/Member;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    iput-object p3, p0, Lq9/c0;->c:Ljava/lang/reflect/Member;

    .line 159
    .line 160
    invoke-interface {p2}, Lv9/b;->p()Llb/w;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-static {p3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    instance-of v0, p2, Lv9/t;

    .line 168
    .line 169
    const/4 v5, 0x2

    .line 170
    const/4 v6, 0x1

    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    move-object v7, p2

    .line 174
    check-cast v7, Lv9/t;

    .line 175
    .line 176
    invoke-interface {v7}, Lv9/t;->o()Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_9

    .line 181
    .line 182
    invoke-static {p3}, Lxa/f;->i(Llb/w;)Llb/a0;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    if-eqz v7, :cond_7

    .line 187
    .line 188
    invoke-static {p3}, Llb/s0;->d(Llb/w;)Llb/s0;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    sget-object v9, Llb/y0;->c:Llb/y0;

    .line 193
    .line 194
    invoke-virtual {v8, v7, v9}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    goto :goto_3

    .line 199
    :cond_7
    move-object v7, v3

    .line 200
    :goto_3
    if-eqz v7, :cond_9

    .line 201
    .line 202
    invoke-static {v7}, Ls9/i;->G(Llb/w;)Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-ne v7, v6, :cond_9

    .line 207
    .line 208
    :cond_8
    move-object v7, v3

    .line 209
    goto :goto_4

    .line 210
    :cond_9
    invoke-static {p3}, Lp9/x1;->M(Llb/w;)Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    if-eqz p3, :cond_8

    .line 215
    .line 216
    :try_start_0
    const-string v7, "box-impl"

    .line 217
    .line 218
    invoke-static {p3, p2}, Lp9/x1;->t(Ljava/lang/Class;Lv9/c;)Ljava/lang/reflect/Method;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    new-array v9, v6, [Ljava/lang/Class;

    .line 227
    .line 228
    aput-object v8, v9, v4

    .line 229
    .line 230
    invoke-virtual {p3, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catch_0
    new-instance p1, Lac/y;

    .line 239
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v1, "No box method found in inline class: "

    .line 243
    .line 244
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string p3, " (calling "

    .line 251
    .line 252
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const/16 p2, 0x29

    .line 259
    .line 260
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    invoke-direct {p1, v5, p2}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw p1

    .line 271
    :goto_4
    invoke-static {p2}, Lxa/f;->a(Lv9/c;)Z

    .line 272
    .line 273
    .line 274
    move-result p3

    .line 275
    if-eqz p3, :cond_a

    .line 276
    .line 277
    new-instance p1, La2/b;

    .line 278
    .line 279
    sget-object p2, Ll9/d;->d:Ll9/d;

    .line 280
    .line 281
    new-array p3, v4, [Ljava/util/List;

    .line 282
    .line 283
    invoke-direct {p1, p2, p3, v7}, La2/b;-><init>(Ll9/d;[Ljava/util/List;Ljava/lang/reflect/Method;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_14

    .line 287
    .line 288
    :cond_a
    instance-of p3, p1, Lq9/t;

    .line 289
    .line 290
    const-string v8, "getContainingDeclaration(...)"

    .line 291
    .line 292
    const/4 v9, -0x1

    .line 293
    if-eqz p3, :cond_b

    .line 294
    .line 295
    move-object p3, p1

    .line 296
    check-cast p3, Lq9/t;

    .line 297
    .line 298
    iget-boolean p3, p3, Lq9/t;->g:Z

    .line 299
    .line 300
    if-nez p3, :cond_b

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_b
    instance-of p3, p1, Lq9/u;

    .line 304
    .line 305
    if-eqz p3, :cond_c

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_c
    instance-of p3, p2, Lv9/j;

    .line 309
    .line 310
    if-eqz p3, :cond_e

    .line 311
    .line 312
    instance-of p3, p1, Lq9/f;

    .line 313
    .line 314
    if-eqz p3, :cond_d

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_d
    :goto_5
    const/4 v9, 0x0

    .line 318
    goto :goto_6

    .line 319
    :cond_e
    invoke-interface {p2}, Lv9/b;->W()Ly9/v;

    .line 320
    .line 321
    .line 322
    move-result-object p3

    .line 323
    if-eqz p3, :cond_d

    .line 324
    .line 325
    instance-of p3, p1, Lq9/f;

    .line 326
    .line 327
    if-nez p3, :cond_d

    .line 328
    .line 329
    invoke-interface {p2}, Lv9/k;->k()Lv9/k;

    .line 330
    .line 331
    .line 332
    move-result-object p3

    .line 333
    invoke-static {p3, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-static {p3}, Lxa/f;->f(Lv9/k;)Z

    .line 337
    .line 338
    .line 339
    move-result p3

    .line 340
    if-eqz p3, :cond_f

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_f
    const/4 v9, 0x1

    .line 344
    :goto_6
    instance-of p3, p1, Lq9/u;

    .line 345
    .line 346
    if-eqz p3, :cond_10

    .line 347
    .line 348
    move-object p3, p1

    .line 349
    check-cast p3, Lq9/u;

    .line 350
    .line 351
    iget-object p3, p3, Lq9/u;->g:[Ljava/lang/Object;

    .line 352
    .line 353
    array-length p3, p3

    .line 354
    neg-int p3, p3

    .line 355
    goto :goto_7

    .line 356
    :cond_10
    move p3, v9

    .line 357
    :goto_7
    invoke-interface {p1}, Lq9/g;->r()Ljava/lang/reflect/Member;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    new-instance v10, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-interface {p2}, Lv9/b;->a0()Ly9/v;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    if-eqz v11, :cond_11

    .line 371
    .line 372
    invoke-virtual {v11}, Ly9/v;->getType()Llb/w;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    goto :goto_8

    .line 377
    :cond_11
    move-object v11, v3

    .line 378
    :goto_8
    if-eqz v11, :cond_12

    .line 379
    .line 380
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    goto/16 :goto_b

    .line 384
    .line 385
    :cond_12
    instance-of v11, p2, Lv9/j;

    .line 386
    .line 387
    if-eqz v11, :cond_13

    .line 388
    .line 389
    move-object p1, p2

    .line 390
    check-cast p1, Lv9/j;

    .line 391
    .line 392
    invoke-interface {p1}, Lv9/j;->z()Lv9/e;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    const-string v8, "getConstructedClass(...)"

    .line 397
    .line 398
    invoke-static {p1, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-interface {p1}, Lv9/i;->I()Z

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    if-eqz v8, :cond_17

    .line 406
    .line 407
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    const-string v8, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 412
    .line 413
    invoke-static {p1, v8}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    check-cast p1, Lv9/e;

    .line 417
    .line 418
    invoke-interface {p1}, Lv9/e;->n()Llb/a0;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_b

    .line 426
    :cond_13
    invoke-interface {p2}, Lv9/k;->k()Lv9/k;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    invoke-static {v11, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    instance-of v8, v11, Lv9/e;

    .line 434
    .line 435
    if-eqz v8, :cond_17

    .line 436
    .line 437
    check-cast v11, Lv9/e;

    .line 438
    .line 439
    invoke-static {v11}, Lxa/f;->f(Lv9/k;)Z

    .line 440
    .line 441
    .line 442
    move-result v8

    .line 443
    if-eqz v8, :cond_17

    .line 444
    .line 445
    if-eqz p1, :cond_15

    .line 446
    .line 447
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    if-nez p1, :cond_14

    .line 452
    .line 453
    const/4 p1, 0x0

    .line 454
    goto :goto_9

    .line 455
    :cond_14
    invoke-static {p1}, Lc7/a;->z(Ljava/lang/Class;)Lm9/c;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    invoke-interface {p1}, Lm9/c;->i()Z

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    xor-int/2addr p1, v6

    .line 464
    :goto_9
    if-ne p1, v6, :cond_15

    .line 465
    .line 466
    const/4 p1, 0x1

    .line 467
    goto :goto_a

    .line 468
    :cond_15
    const/4 p1, 0x0

    .line 469
    :goto_a
    if-eqz p1, :cond_16

    .line 470
    .line 471
    invoke-interface {v11}, Lv9/e;->n()Llb/a0;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    const-string v8, "getDefaultType(...)"

    .line 476
    .line 477
    invoke-static {p1, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-static {p1}, Lp4/o;->N(Llb/w;)Llb/x0;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    goto :goto_b

    .line 488
    :cond_16
    invoke-interface {v11}, Lv9/e;->n()Llb/a0;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    :cond_17
    :goto_b
    invoke-interface {p2}, Lv9/b;->S()Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_18

    .line 511
    .line 512
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    check-cast v2, Ly9/r0;

    .line 517
    .line 518
    check-cast v2, Ly9/s0;

    .line 519
    .line 520
    invoke-virtual {v2}, Ly9/s0;->getType()Llb/w;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    goto :goto_c

    .line 528
    :cond_18
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    const/4 v2, 0x0

    .line 533
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 534
    .line 535
    .line 536
    move-result v8

    .line 537
    if-eqz v8, :cond_1a

    .line 538
    .line 539
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v8

    .line 543
    check-cast v8, Llb/w;

    .line 544
    .line 545
    invoke-static {v8}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    invoke-static {v8}, Lp9/x1;->v(Llb/a0;)Ljava/util/ArrayList;

    .line 550
    .line 551
    .line 552
    move-result-object v8

    .line 553
    if-eqz v8, :cond_19

    .line 554
    .line 555
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 556
    .line 557
    .line 558
    move-result v8

    .line 559
    goto :goto_e

    .line 560
    :cond_19
    const/4 v8, 0x1

    .line 561
    :goto_e
    add-int/2addr v2, v8

    .line 562
    goto :goto_d

    .line 563
    :cond_1a
    iget-boolean p1, p0, Lq9/c0;->a:Z

    .line 564
    .line 565
    if-eqz p1, :cond_1b

    .line 566
    .line 567
    add-int/lit8 p1, v2, 0x1f

    .line 568
    .line 569
    div-int/lit8 p1, p1, 0x20

    .line 570
    .line 571
    add-int/2addr p1, v6

    .line 572
    goto :goto_f

    .line 573
    :cond_1b
    const/4 p1, 0x0

    .line 574
    :goto_f
    if-eqz v0, :cond_1c

    .line 575
    .line 576
    move-object v0, p2

    .line 577
    check-cast v0, Lv9/t;

    .line 578
    .line 579
    invoke-interface {v0}, Lv9/t;->o()Z

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    if-eqz v0, :cond_1c

    .line 584
    .line 585
    const/4 v0, 0x1

    .line 586
    goto :goto_10

    .line 587
    :cond_1c
    const/4 v0, 0x0

    .line 588
    :goto_10
    add-int/2addr p1, v0

    .line 589
    add-int/2addr v2, p3

    .line 590
    add-int/2addr v2, p1

    .line 591
    iget-boolean p1, p0, Lq9/c0;->a:Z

    .line 592
    .line 593
    invoke-static {p0}, Lp9/p1;->s(Lq9/g;)I

    .line 594
    .line 595
    .line 596
    move-result p3

    .line 597
    if-ne p3, v2, :cond_2b

    .line 598
    .line 599
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 600
    .line 601
    .line 602
    move-result p1

    .line 603
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 604
    .line 605
    .line 606
    move-result p3

    .line 607
    add-int/2addr p3, v9

    .line 608
    invoke-static {p1, p3}, Li9/a;->Z(II)Ll9/d;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    new-array p3, v2, [Ljava/util/List;

    .line 613
    .line 614
    const/4 v0, 0x0

    .line 615
    :goto_11
    if-ge v0, v2, :cond_20

    .line 616
    .line 617
    iget v5, p1, Ll9/b;->a:I

    .line 618
    .line 619
    iget v8, p1, Ll9/b;->b:I

    .line 620
    .line 621
    if-gt v0, v8, :cond_1d

    .line 622
    .line 623
    if-gt v5, v0, :cond_1d

    .line 624
    .line 625
    const/4 v5, 0x1

    .line 626
    goto :goto_12

    .line 627
    :cond_1d
    const/4 v5, 0x0

    .line 628
    :goto_12
    if-eqz v5, :cond_1e

    .line 629
    .line 630
    sub-int v5, v0, v9

    .line 631
    .line 632
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    check-cast v5, Llb/w;

    .line 637
    .line 638
    invoke-static {v5}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    invoke-static {v5}, Lp9/x1;->v(Llb/a0;)Ljava/util/ArrayList;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    if-nez v8, :cond_1f

    .line 647
    .line 648
    invoke-static {v5}, Lp9/x1;->M(Llb/w;)Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    if-eqz v5, :cond_1e

    .line 653
    .line 654
    invoke-static {v5, p2}, Lp9/x1;->t(Ljava/lang/Class;Lv9/c;)Ljava/lang/reflect/Method;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    invoke-static {v5}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 659
    .line 660
    .line 661
    move-result-object v8

    .line 662
    goto :goto_13

    .line 663
    :cond_1e
    move-object v8, v3

    .line 664
    :cond_1f
    :goto_13
    aput-object v8, p3, v0

    .line 665
    .line 666
    add-int/lit8 v0, v0, 0x1

    .line 667
    .line 668
    goto :goto_11

    .line 669
    :cond_20
    new-instance p2, La2/b;

    .line 670
    .line 671
    invoke-direct {p2, p1, p3, v7}, La2/b;-><init>(Ll9/d;[Ljava/util/List;Ljava/lang/reflect/Method;)V

    .line 672
    .line 673
    .line 674
    move-object p1, p2

    .line 675
    :goto_14
    iput-object p1, p0, Lq9/c0;->d:La2/b;

    .line 676
    .line 677
    new-instance p2, Lt8/b;

    .line 678
    .line 679
    invoke-direct {p2, v1}, Lt8/b;-><init>(I)V

    .line 680
    .line 681
    .line 682
    iget-object p3, p0, Lq9/c0;->b:Lq9/g;

    .line 683
    .line 684
    instance-of v0, p3, Lq9/u;

    .line 685
    .line 686
    if-eqz v0, :cond_21

    .line 687
    .line 688
    check-cast p3, Lq9/u;

    .line 689
    .line 690
    iget-object p3, p3, Lq9/u;->g:[Ljava/lang/Object;

    .line 691
    .line 692
    array-length p3, p3

    .line 693
    goto :goto_15

    .line 694
    :cond_21
    instance-of p3, p3, Lq9/t;

    .line 695
    .line 696
    if-eqz p3, :cond_22

    .line 697
    .line 698
    const/4 p3, 0x1

    .line 699
    goto :goto_15

    .line 700
    :cond_22
    const/4 p3, 0x0

    .line 701
    :goto_15
    if-lez p3, :cond_23

    .line 702
    .line 703
    invoke-static {v4, p3}, Li9/a;->Z(II)Ll9/d;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-virtual {p2, v0}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    :cond_23
    iget-object p1, p1, La2/b;->c:Ljava/lang/Object;

    .line 711
    .line 712
    check-cast p1, [Ljava/util/List;

    .line 713
    .line 714
    array-length v0, p1

    .line 715
    const/4 v1, 0x0

    .line 716
    :goto_16
    if-ge v1, v0, :cond_25

    .line 717
    .line 718
    aget-object v2, p1, v1

    .line 719
    .line 720
    if-eqz v2, :cond_24

    .line 721
    .line 722
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    goto :goto_17

    .line 727
    :cond_24
    const/4 v2, 0x1

    .line 728
    :goto_17
    add-int/2addr v2, p3

    .line 729
    invoke-static {p3, v2}, Li9/a;->Z(II)Ll9/d;

    .line 730
    .line 731
    .line 732
    move-result-object p3

    .line 733
    invoke-virtual {p2, p3}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    add-int/lit8 v1, v1, 0x1

    .line 737
    .line 738
    move p3, v2

    .line 739
    goto :goto_16

    .line 740
    :cond_25
    invoke-static {p2}, Lp9/x1;->c(Lt8/b;)Lt8/b;

    .line 741
    .line 742
    .line 743
    move-result-object p1

    .line 744
    new-array p2, v4, [Ll9/d;

    .line 745
    .line 746
    invoke-virtual {p1, p2}, Lt8/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    check-cast p1, [Ll9/d;

    .line 751
    .line 752
    iput-object p1, p0, Lq9/c0;->e:[Ll9/d;

    .line 753
    .line 754
    iget-object p1, p0, Lq9/c0;->d:La2/b;

    .line 755
    .line 756
    iget-object p1, p1, La2/b;->b:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast p1, Ll9/d;

    .line 759
    .line 760
    instance-of p2, p1, Ljava/util/Collection;

    .line 761
    .line 762
    if-eqz p2, :cond_26

    .line 763
    .line 764
    move-object p2, p1

    .line 765
    check-cast p2, Ljava/util/Collection;

    .line 766
    .line 767
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 768
    .line 769
    .line 770
    move-result p2

    .line 771
    if-eqz p2, :cond_26

    .line 772
    .line 773
    goto :goto_19

    .line 774
    :cond_26
    invoke-virtual {p1}, Ll9/b;->iterator()Ljava/util/Iterator;

    .line 775
    .line 776
    .line 777
    move-result-object p1

    .line 778
    :cond_27
    move-object p2, p1

    .line 779
    check-cast p2, Ll9/c;

    .line 780
    .line 781
    iget-boolean p3, p2, Ll9/c;->c:Z

    .line 782
    .line 783
    if-eqz p3, :cond_2a

    .line 784
    .line 785
    invoke-virtual {p2}, Ll9/c;->nextInt()I

    .line 786
    .line 787
    .line 788
    move-result p2

    .line 789
    iget-object p3, p0, Lq9/c0;->d:La2/b;

    .line 790
    .line 791
    iget-object p3, p3, La2/b;->c:Ljava/lang/Object;

    .line 792
    .line 793
    check-cast p3, [Ljava/util/List;

    .line 794
    .line 795
    aget-object p2, p3, p2

    .line 796
    .line 797
    if-nez p2, :cond_29

    .line 798
    .line 799
    :cond_28
    const/4 p2, 0x0

    .line 800
    goto :goto_18

    .line 801
    :cond_29
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 802
    .line 803
    .line 804
    move-result p2

    .line 805
    if-le p2, v6, :cond_28

    .line 806
    .line 807
    const/4 p2, 0x1

    .line 808
    :goto_18
    if-eqz p2, :cond_27

    .line 809
    .line 810
    const/4 v4, 0x1

    .line 811
    :cond_2a
    :goto_19
    iput-boolean v4, p0, Lq9/c0;->f:Z

    .line 812
    .line 813
    return-void

    .line 814
    :cond_2b
    new-instance p3, Lac/y;

    .line 815
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    .line 817
    .line 818
    const-string v1, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    .line 819
    .line 820
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    invoke-static {p0}, Lp9/p1;->s(Lq9/g;)I

    .line 824
    .line 825
    .line 826
    move-result v1

    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const-string v1, " != "

    .line 831
    .line 832
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    const-string v1, "\nCalling: "

    .line 839
    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    const-string p2, "\nParameter types: "

    .line 847
    .line 848
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    iget-object p2, p0, Lq9/c0;->b:Lq9/g;

    .line 852
    .line 853
    invoke-interface {p2}, Lq9/g;->q()Ljava/util/List;

    .line 854
    .line 855
    .line 856
    move-result-object p2

    .line 857
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string p2, ")\nDefault: "

    .line 861
    .line 862
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object p1

    .line 872
    invoke-direct {p3, v5, p1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 873
    .line 874
    .line 875
    throw p3
.end method


# virtual methods
.method public final a(I)Ll9/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lq9/c0;->e:[Ll9/d;

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p1, v1, :cond_0

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    array-length v1, v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v0, Ll9/d;

    .line 16
    .line 17
    invoke-direct {v0, p1, p1, v2}, Ll9/b;-><init>(III)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    array-length v1, v0

    .line 22
    sub-int/2addr p1, v1

    .line 23
    invoke-static {v0}, Ls8/l;->e0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ll9/d;

    .line 28
    .line 29
    iget v0, v0, Ll9/b;->b:I

    .line 30
    .line 31
    add-int/2addr v0, v2

    .line 32
    add-int/2addr v0, p1

    .line 33
    new-instance p1, Ll9/d;

    .line 34
    .line 35
    invoke-direct {p1, v0, v0, v2}, Ll9/b;-><init>(III)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public final p()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/c0;->b:Lq9/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lq9/g;->p()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/c0;->b:Lq9/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lq9/g;->q()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final r()Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/c0;->c:Ljava/lang/reflect/Member;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/c0;->b:Lq9/g;

    .line 2
    .line 3
    instance-of v0, v0, Lq9/r;

    .line 4
    .line 5
    return v0
.end method

.method public final t([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq9/c0;->d:La2/b;

    .line 7
    .line 8
    iget-object v1, v0, La2/b;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ll9/d;

    .line 11
    .line 12
    iget-object v2, v0, La2/b;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, [Ljava/util/List;

    .line 15
    .line 16
    iget-object v0, v0, La2/b;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/lang/reflect/Method;

    .line 19
    .line 20
    invoke-virtual {v1}, Ll9/d;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v4, v1, Ll9/b;->b:I

    .line 25
    .line 26
    iget v1, v1, Ll9/b;->a:I

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x1

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_0
    iget-boolean v3, p0, Lq9/c0;->f:Z

    .line 36
    .line 37
    const-string v8, "getReturnType(...)"

    .line 38
    .line 39
    if-eqz v3, :cond_7

    .line 40
    .line 41
    array-length v3, p1

    .line 42
    new-instance v9, Lt8/b;

    .line 43
    .line 44
    invoke-direct {v9, v3}, Lt8/b;-><init>(I)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    :goto_0
    if-ge v3, v1, :cond_1

    .line 49
    .line 50
    aget-object v10, p1, v3

    .line 51
    .line 52
    invoke-virtual {v9, v10}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    if-gt v1, v4, :cond_5

    .line 59
    .line 60
    :goto_1
    aget-object v3, v2, v1

    .line 61
    .line 62
    aget-object v10, p1, v1

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    if-eqz v11, :cond_4

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    check-cast v11, Ljava/lang/reflect/Method;

    .line 81
    .line 82
    if-eqz v10, :cond_2

    .line 83
    .line 84
    invoke-virtual {v11, v10, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-static {v11, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v11}, Lp9/c2;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    :goto_3
    invoke-virtual {v9, v11}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {v9, v10}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_4
    if-eq v1, v4, :cond_5

    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    add-int/2addr v4, v7

    .line 113
    array-length v1, p1

    .line 114
    sub-int/2addr v1, v7

    .line 115
    if-gt v4, v1, :cond_6

    .line 116
    .line 117
    :goto_4
    aget-object v2, p1, v4

    .line 118
    .line 119
    invoke-virtual {v9, v2}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    if-eq v4, v1, :cond_6

    .line 123
    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_6
    invoke-static {v9}, Lp9/x1;->c(Lt8/b;)Lt8/b;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-array v1, v5, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {p1, v1}, Lt8/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    goto :goto_8

    .line 138
    :cond_7
    array-length v3, p1

    .line 139
    new-array v9, v3, [Ljava/lang/Object;

    .line 140
    .line 141
    const/4 v10, 0x0

    .line 142
    :goto_5
    if-ge v10, v3, :cond_c

    .line 143
    .line 144
    if-gt v10, v4, :cond_b

    .line 145
    .line 146
    if-gt v1, v10, :cond_b

    .line 147
    .line 148
    aget-object v11, v2, v10

    .line 149
    .line 150
    if-eqz v11, :cond_8

    .line 151
    .line 152
    invoke-static {v11}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    check-cast v11, Ljava/lang/reflect/Method;

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_8
    move-object v11, v6

    .line 160
    :goto_6
    aget-object v12, p1, v10

    .line 161
    .line 162
    if-nez v11, :cond_9

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_9
    if-eqz v12, :cond_a

    .line 166
    .line 167
    invoke-virtual {v11, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    goto :goto_7

    .line 172
    :cond_a
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    invoke-static {v11, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v11}, Lp9/c2;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    goto :goto_7

    .line 184
    :cond_b
    aget-object v12, p1, v10

    .line 185
    .line 186
    :goto_7
    aput-object v12, v9, v10

    .line 187
    .line 188
    add-int/lit8 v10, v10, 0x1

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_c
    move-object p1, v9

    .line 192
    :goto_8
    iget-object v1, p0, Lq9/c0;->b:Lq9/g;

    .line 193
    .line 194
    invoke-interface {v1, p1}, Lq9/g;->t([Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 199
    .line 200
    if-ne p1, v1, :cond_d

    .line 201
    .line 202
    goto :goto_9

    .line 203
    :cond_d
    if-eqz v0, :cond_f

    .line 204
    .line 205
    new-array v1, v7, [Ljava/lang/Object;

    .line 206
    .line 207
    aput-object p1, v1, v5

    .line 208
    .line 209
    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-nez v0, :cond_e

    .line 214
    .line 215
    goto :goto_9

    .line 216
    :cond_e
    return-object v0

    .line 217
    :cond_f
    :goto_9
    return-object p1
.end method
