.class public final Lp9/r;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lp9/t;


# direct methods
.method public synthetic constructor <init>(Lp9/t;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp9/r;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp9/r;->b:Lp9/t;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lp9/r;->a:I

    .line 2
    .line 3
    sget-object v1, Lm9/m;->c:Lm9/m;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, Lp9/r;->b:Lp9/t;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v5}, Lm9/b;->o()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {v5}, Lp9/t;->f()Lq9/g;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lq9/g;->q()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v0, v2

    .line 39
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v1, v2

    .line 47
    :goto_1
    const-class v3, Lw8/c;

    .line 48
    .line 49
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "getActualTypeArguments(...)"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Ls8/l;->f0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move-object v0, v2

    .line 76
    :goto_2
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-static {v0}, Ls8/l;->W([Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v2, v0

    .line 89
    check-cast v2, Ljava/lang/reflect/Type;

    .line 90
    .line 91
    :cond_3
    if-nez v2, :cond_4

    .line 92
    .line 93
    invoke-virtual {v5}, Lp9/t;->f()Lq9/g;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Lq9/g;->p()Ljava/lang/reflect/Type;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :cond_4
    return-object v2

    .line 102
    :pswitch_0
    invoke-virtual {v5}, Lp9/t;->l()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lm9/n;

    .line 128
    .line 129
    check-cast v1, Lp9/y0;

    .line 130
    .line 131
    invoke-virtual {v1}, Lp9/y0;->c()Lp9/r1;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Lp9/c2;->h(Lp9/r1;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    const/4 v3, 0x1

    .line 142
    :cond_7
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0

    .line 147
    :pswitch_1
    invoke-virtual {v5}, Lp9/t;->l()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-interface {v5}, Lm9/b;->o()Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    add-int/2addr v7, v6

    .line 160
    iget-object v5, v5, Lp9/t;->b:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-interface {v5}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_b

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    const/4 v8, 0x0

    .line 179
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_f

    .line 184
    .line 185
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    check-cast v9, Lm9/n;

    .line 190
    .line 191
    check-cast v9, Lp9/y0;

    .line 192
    .line 193
    iget-object v10, v9, Lp9/y0;->c:Lm9/m;

    .line 194
    .line 195
    if-ne v10, v1, :cond_a

    .line 196
    .line 197
    invoke-interface {v5}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    check-cast v10, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    if-eqz v10, :cond_9

    .line 208
    .line 209
    invoke-virtual {v9}, Lp9/y0;->c()Lp9/r1;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    invoke-static {v10}, Lp9/c2;->h(Lp9/r1;)Z

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    if-eqz v10, :cond_8

    .line 218
    .line 219
    invoke-virtual {v9}, Lp9/y0;->c()Lp9/r1;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    iget-object v9, v9, Lp9/r1;->a:Llb/w;

    .line 224
    .line 225
    invoke-static {v9}, Llb/c;->b(Llb/w;)Llb/a0;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    invoke-static {v9}, Lp9/x1;->v(Llb/a0;)Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    goto :goto_5

    .line 241
    :cond_8
    const/4 v9, 0x1

    .line 242
    goto :goto_5

    .line 243
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 244
    .line 245
    const-string v1, "Check if parametersNeedMFVCFlattening is true before"

    .line 246
    .line 247
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :cond_a
    const/4 v9, 0x0

    .line 252
    :goto_5
    add-int/2addr v8, v9

    .line 253
    goto :goto_4

    .line 254
    :cond_b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_c

    .line 259
    .line 260
    const/4 v8, 0x0

    .line 261
    goto :goto_7

    .line 262
    :cond_c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    const/4 v8, 0x0

    .line 267
    :cond_d
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    if-eqz v6, :cond_f

    .line 272
    .line 273
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    check-cast v6, Lm9/n;

    .line 278
    .line 279
    check-cast v6, Lp9/y0;

    .line 280
    .line 281
    iget-object v6, v6, Lp9/y0;->c:Lm9/m;

    .line 282
    .line 283
    if-ne v6, v1, :cond_d

    .line 284
    .line 285
    add-int/lit8 v8, v8, 0x1

    .line 286
    .line 287
    if-ltz v8, :cond_e

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_e
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 291
    .line 292
    const-string v1, "Count overflow has happened."

    .line 293
    .line 294
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :cond_f
    :goto_7
    add-int/lit8 v8, v8, 0x1f

    .line 299
    .line 300
    div-int/lit8 v8, v8, 0x20

    .line 301
    .line 302
    add-int v1, v7, v8

    .line 303
    .line 304
    add-int/2addr v1, v4

    .line 305
    new-array v1, v1, [Ljava/lang/Object;

    .line 306
    .line 307
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_1a

    .line 316
    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    check-cast v5, Lm9/n;

    .line 322
    .line 323
    check-cast v5, Lp9/y0;

    .line 324
    .line 325
    invoke-virtual {v5}, Lp9/y0;->a()Lv9/i0;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    iget v9, v5, Lp9/y0;->b:I

    .line 330
    .line 331
    instance-of v10, v6, Ly9/r0;

    .line 332
    .line 333
    if-eqz v10, :cond_11

    .line 334
    .line 335
    check-cast v6, Ly9/r0;

    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_11
    move-object v6, v2

    .line 339
    :goto_9
    if-eqz v6, :cond_12

    .line 340
    .line 341
    invoke-static {v6}, Lbb/e;->a(Ly9/r0;)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    goto :goto_a

    .line 346
    :cond_12
    const/4 v6, 0x0

    .line 347
    :goto_a
    if-eqz v6, :cond_18

    .line 348
    .line 349
    invoke-virtual {v5}, Lp9/y0;->c()Lp9/r1;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    sget-object v10, Lp9/c2;->a:Lua/c;

    .line 354
    .line 355
    iget-object v6, v6, Lp9/r1;->a:Llb/w;

    .line 356
    .line 357
    if-eqz v6, :cond_13

    .line 358
    .line 359
    invoke-static {v6}, Lxa/f;->c(Llb/w;)Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-ne v6, v4, :cond_13

    .line 364
    .line 365
    goto :goto_e

    .line 366
    :cond_13
    invoke-virtual {v5}, Lp9/y0;->c()Lp9/r1;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    iget-object v6, v5, Lp9/r1;->b:Lp9/v1;

    .line 371
    .line 372
    if-eqz v6, :cond_14

    .line 373
    .line 374
    invoke-virtual {v6}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    check-cast v10, Ljava/lang/reflect/Type;

    .line 379
    .line 380
    goto :goto_b

    .line 381
    :cond_14
    move-object v10, v2

    .line 382
    :goto_b
    if-nez v10, :cond_17

    .line 383
    .line 384
    if-eqz v6, :cond_15

    .line 385
    .line 386
    invoke-virtual {v6}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    check-cast v6, Ljava/lang/reflect/Type;

    .line 391
    .line 392
    move-object v10, v6

    .line 393
    goto :goto_c

    .line 394
    :cond_15
    move-object v10, v2

    .line 395
    :goto_c
    if-eqz v10, :cond_16

    .line 396
    .line 397
    goto :goto_d

    .line 398
    :cond_16
    invoke-static {v5, v3}, Lm9/e0;->M(Lg9/m;Z)Ljava/lang/reflect/Type;

    .line 399
    .line 400
    .line 401
    move-result-object v10

    .line 402
    :cond_17
    :goto_d
    invoke-static {v10}, Lp9/c2;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    aput-object v5, v1, v9

    .line 407
    .line 408
    goto :goto_8

    .line 409
    :cond_18
    :goto_e
    invoke-virtual {v5}, Lp9/y0;->a()Lv9/i0;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    instance-of v10, v6, Ly9/r0;

    .line 414
    .line 415
    if-eqz v10, :cond_10

    .line 416
    .line 417
    check-cast v6, Ly9/r0;

    .line 418
    .line 419
    iget-object v6, v6, Ly9/r0;->j:Llb/w;

    .line 420
    .line 421
    if-eqz v6, :cond_10

    .line 422
    .line 423
    invoke-virtual {v5}, Lp9/y0;->c()Lp9/r1;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-static {v5}, Lg5/a;->H(Lg9/m;)Lm9/c;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-static {v5}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    if-eqz v6, :cond_19

    .line 440
    .line 441
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    const-string v6, "run(...)"

    .line 450
    .line 451
    invoke-static {v5, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    aput-object v5, v1, v9

    .line 455
    .line 456
    goto/16 :goto_8

    .line 457
    .line 458
    :cond_19
    new-instance v0, Lac/y;

    .line 459
    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v2, "Cannot instantiate the default empty array of type "

    .line 463
    .line 464
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v2, ", because it is not an array type"

    .line 475
    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    const/4 v2, 0x2

    .line 484
    invoke-direct {v0, v2, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    throw v0

    .line 488
    :cond_1a
    const/4 v0, 0x0

    .line 489
    :goto_f
    if-ge v0, v8, :cond_1b

    .line 490
    .line 491
    add-int v2, v7, v0

    .line 492
    .line 493
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    aput-object v4, v1, v2

    .line 498
    .line 499
    add-int/lit8 v0, v0, 0x1

    .line 500
    .line 501
    goto :goto_f

    .line 502
    :cond_1b
    return-object v1

    .line 503
    :pswitch_2
    invoke-virtual {v5}, Lp9/t;->k()Lv9/c;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-interface {v0}, Lv9/b;->getTypeParameters()Ljava/util/List;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    const-string v1, "getTypeParameters(...)"

    .line 512
    .line 513
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    new-instance v1, Ljava/util/ArrayList;

    .line 517
    .line 518
    const/16 v2, 0xa

    .line 519
    .line 520
    invoke-static {v0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 525
    .line 526
    .line 527
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    if-eqz v2, :cond_1c

    .line 536
    .line 537
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    check-cast v2, Lv9/q0;

    .line 542
    .line 543
    new-instance v3, Lp9/s1;

    .line 544
    .line 545
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    invoke-direct {v3, v5, v2}, Lp9/s1;-><init>(Lp9/t1;Lv9/q0;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    goto :goto_10

    .line 555
    :cond_1c
    return-object v1

    .line 556
    :pswitch_3
    new-instance v0, Lp9/r1;

    .line 557
    .line 558
    invoke-virtual {v5}, Lp9/t;->k()Lv9/c;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    invoke-interface {v1}, Lv9/b;->p()Llb/w;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    new-instance v2, Lp9/r;

    .line 570
    .line 571
    const/4 v3, 0x6

    .line 572
    invoke-direct {v2, v5, v3}, Lp9/r;-><init>(Lp9/t;I)V

    .line 573
    .line 574
    .line 575
    invoke-direct {v0, v1, v2}, Lp9/r1;-><init>(Llb/w;Lf9/a;)V

    .line 576
    .line 577
    .line 578
    return-object v0

    .line 579
    :pswitch_4
    invoke-virtual {v5}, Lp9/t;->k()Lv9/c;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    new-instance v2, Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v5}, Lp9/t;->n()Z

    .line 589
    .line 590
    .line 591
    move-result v6

    .line 592
    if-nez v6, :cond_1e

    .line 593
    .line 594
    invoke-static {v0}, Lp9/c2;->g(Lv9/c;)Ly9/v;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    if-eqz v6, :cond_1d

    .line 599
    .line 600
    new-instance v7, Lp9/y0;

    .line 601
    .line 602
    new-instance v8, Lp9/s;

    .line 603
    .line 604
    invoke-direct {v8, v6, v3}, Lp9/s;-><init>(Ly9/v;I)V

    .line 605
    .line 606
    .line 607
    sget-object v6, Lm9/m;->a:Lm9/m;

    .line 608
    .line 609
    invoke-direct {v7, v5, v3, v6, v8}, Lp9/y0;-><init>(Lp9/t;ILm9/m;Lf9/a;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    const/4 v6, 0x1

    .line 616
    goto :goto_11

    .line 617
    :cond_1d
    const/4 v6, 0x0

    .line 618
    :goto_11
    invoke-interface {v0}, Lv9/b;->a0()Ly9/v;

    .line 619
    .line 620
    .line 621
    move-result-object v7

    .line 622
    if-eqz v7, :cond_1f

    .line 623
    .line 624
    new-instance v8, Lp9/y0;

    .line 625
    .line 626
    add-int/lit8 v9, v6, 0x1

    .line 627
    .line 628
    new-instance v10, Lp9/s;

    .line 629
    .line 630
    invoke-direct {v10, v7, v4}, Lp9/s;-><init>(Ly9/v;I)V

    .line 631
    .line 632
    .line 633
    sget-object v7, Lm9/m;->b:Lm9/m;

    .line 634
    .line 635
    invoke-direct {v8, v5, v6, v7, v10}, Lp9/y0;-><init>(Lp9/t;ILm9/m;Lf9/a;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move v6, v9

    .line 642
    goto :goto_12

    .line 643
    :cond_1e
    const/4 v6, 0x0

    .line 644
    :cond_1f
    :goto_12
    invoke-interface {v0}, Lv9/b;->S()Ljava/util/List;

    .line 645
    .line 646
    .line 647
    move-result-object v7

    .line 648
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 649
    .line 650
    .line 651
    move-result v7

    .line 652
    :goto_13
    if-ge v3, v7, :cond_20

    .line 653
    .line 654
    new-instance v8, Lp9/y0;

    .line 655
    .line 656
    add-int/lit8 v9, v6, 0x1

    .line 657
    .line 658
    new-instance v10, Lj8/y;

    .line 659
    .line 660
    invoke-direct {v10, v3, v4, v0}, Lj8/y;-><init>(IILjava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    invoke-direct {v8, v5, v6, v1, v10}, Lp9/y0;-><init>(Lp9/t;ILm9/m;Lf9/a;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    add-int/lit8 v3, v3, 0x1

    .line 670
    .line 671
    move v6, v9

    .line 672
    goto :goto_13

    .line 673
    :cond_20
    invoke-virtual {v5}, Lp9/t;->m()Z

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    if-eqz v1, :cond_21

    .line 678
    .line 679
    instance-of v0, v0, Lga/a;

    .line 680
    .line 681
    if-eqz v0, :cond_21

    .line 682
    .line 683
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    if-le v0, v4, :cond_21

    .line 688
    .line 689
    new-instance v0, Lp9/f;

    .line 690
    .line 691
    invoke-direct {v0, v4}, Lp9/f;-><init>(I)V

    .line 692
    .line 693
    .line 694
    invoke-static {v2, v0}, Ls8/t;->T(Ljava/util/List;Ljava/util/Comparator;)V

    .line 695
    .line 696
    .line 697
    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 698
    .line 699
    .line 700
    return-object v2

    .line 701
    :pswitch_5
    invoke-virtual {v5}, Lp9/t;->k()Lv9/c;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    invoke-static {v0}, Lp9/c2;->d(Lw9/a;)Ljava/util/ArrayList;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    return-object v0

    .line 710
    nop

    .line 711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
