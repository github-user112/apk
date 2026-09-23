.class public final Lp9/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lp9/j0;


# direct methods
.method public synthetic constructor <init>(Lp9/j0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp9/i0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp9/i0;->b:Lp9/j0;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lp9/i0;->a:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const-string v3, "desc"

    .line 7
    .line 8
    const-string v4, "getValueParameters(...)"

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    const-string v7, "getContainingDeclaration(...)"

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const/16 v9, 0xa

    .line 16
    .line 17
    iget-object v10, v0, Lp9/i0;->b:Lp9/j0;

    .line 18
    .line 19
    const/4 v11, 0x1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    sget-object v1, Lp9/a2;->a:Lua/b;

    .line 24
    .line 25
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v12, v10, Lp9/j0;->c:Lp9/h0;

    .line 30
    .line 31
    invoke-static {v1}, Lp9/a2;->c(Lv9/t;)Lp9/l;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    instance-of v13, v1, Lp9/k;

    .line 36
    .line 37
    if-eqz v13, :cond_b

    .line 38
    .line 39
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Lv9/k;->k()Lv9/k;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-static {v9, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v9}, Lxa/f;->d(Lv9/k;)Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-eqz v9, :cond_1

    .line 55
    .line 56
    instance-of v9, v3, Lv9/j;

    .line 57
    .line 58
    if-eqz v9, :cond_1

    .line 59
    .line 60
    check-cast v3, Lv9/j;

    .line 61
    .line 62
    invoke-interface {v3}, Lv9/j;->y()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Lac/y;

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v3}, Lv9/k;->k()Lv9/k;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, " cannot have default arguments"

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-direct {v1, v5, v2}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-interface {v3}, Lv9/b;->S()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v5, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_4

    .line 127
    .line 128
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    check-cast v9, Ly9/r0;

    .line 133
    .line 134
    invoke-virtual {v9}, Ly9/r0;->D0()Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-eqz v9, :cond_3

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_4
    :goto_1
    invoke-interface {v3}, Lv9/k;->k()Lv9/k;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v5, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v5}, Lxa/f;->f(Lv9/k;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_9

    .line 153
    .line 154
    invoke-virtual {v10}, Lp9/j0;->f()Lq9/g;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-interface {v5}, Lq9/g;->r()Ljava/lang/reflect/Member;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_9

    .line 174
    .line 175
    invoke-static {v3}, Lbb/e;->l(Lv9/c;)Lwb/i;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    new-instance v5, Lwb/g;

    .line 180
    .line 181
    invoke-direct {v5, v3}, Lwb/g;-><init>(Lwb/i;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lwb/g;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_8

    .line 189
    .line 190
    invoke-virtual {v5}, Lwb/g;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    move-object v7, v3

    .line 195
    check-cast v7, Lv9/c;

    .line 196
    .line 197
    invoke-interface {v7}, Lv9/b;->S()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-static {v7, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-eqz v9, :cond_6

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_6
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    if-eqz v9, :cond_5

    .line 220
    .line 221
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    check-cast v9, Ly9/r0;

    .line 226
    .line 227
    invoke-virtual {v9}, Ly9/r0;->D0()Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_7

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_8
    move-object v3, v6

    .line 235
    :goto_3
    instance-of v4, v3, Lv9/t;

    .line 236
    .line 237
    if-eqz v4, :cond_9

    .line 238
    .line 239
    check-cast v3, Lv9/t;

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_9
    :goto_4
    move-object v3, v6

    .line 243
    :goto_5
    if-eqz v3, :cond_a

    .line 244
    .line 245
    invoke-static {v3}, Lp9/a2;->c(Lv9/t;)Lp9/l;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Lp9/k;

    .line 250
    .line 251
    iget-object v1, v1, Lp9/k;->b:Lta/e;

    .line 252
    .line 253
    iget-object v3, v1, Lta/e;->f:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v1, v1, Lta/e;->g:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v12, v3, v1, v11}, Lp9/h0;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    goto/16 :goto_9

    .line 262
    .line 263
    :cond_a
    check-cast v1, Lp9/k;

    .line 264
    .line 265
    iget-object v1, v1, Lp9/k;->b:Lta/e;

    .line 266
    .line 267
    iget-object v3, v1, Lta/e;->f:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v1, v1, Lta/e;->g:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v10}, Lp9/j0;->f()Lq9/g;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-interface {v4}, Lq9/g;->r()Ljava/lang/reflect/Member;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    xor-int/2addr v4, v11

    .line 291
    invoke-virtual {v12, v3, v1, v4}, Lp9/h0;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    goto/16 :goto_9

    .line 296
    .line 297
    :cond_b
    instance-of v4, v1, Lp9/j;

    .line 298
    .line 299
    sget-object v5, Lq9/a;->a:Lq9/a;

    .line 300
    .line 301
    if-eqz v4, :cond_e

    .line 302
    .line 303
    invoke-virtual {v10}, Lp9/t;->m()Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eqz v4, :cond_d

    .line 308
    .line 309
    invoke-interface {v12}, Lg9/e;->a()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v10}, Lp9/t;->l()Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-static {v2, v9}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 324
    .line 325
    .line 326
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_c

    .line 335
    .line 336
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Lm9/n;

    .line 341
    .line 342
    check-cast v4, Lp9/y0;

    .line 343
    .line 344
    invoke-virtual {v4}, Lp9/y0;->b()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_c
    new-instance v6, Lq9/c;

    .line 356
    .line 357
    invoke-direct {v6, v1, v3, v5}, Lq9/c;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lq9/a;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_c

    .line 361
    .line 362
    :cond_d
    check-cast v1, Lp9/j;

    .line 363
    .line 364
    iget-object v1, v1, Lp9/j;->b:Lta/e;

    .line 365
    .line 366
    iget-object v1, v1, Lta/e;->g:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-interface {v12}, Lg9/e;->a()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    new-instance v4, Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v12, v1, v8}, Lp9/h0;->p(Ljava/lang/String;Z)Landroid/support/v4/media/session/t;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    iget-object v1, v1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v1, Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-static {v4, v1, v11}, Lp9/h0;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 392
    .line 393
    .line 394
    :try_start_0
    new-array v1, v8, [Ljava/lang/Class;

    .line 395
    .line 396
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    check-cast v1, [Ljava/lang/Class;

    .line 401
    .line 402
    array-length v4, v1

    .line 403
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    check-cast v1, [Ljava/lang/Class;

    .line 408
    .line 409
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 410
    .line 411
    .line 412
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_9

    .line 414
    :catch_0
    nop

    .line 415
    goto :goto_8

    .line 416
    :cond_e
    instance-of v3, v1, Lp9/g;

    .line 417
    .line 418
    if-eqz v3, :cond_10

    .line 419
    .line 420
    check-cast v1, Lp9/g;

    .line 421
    .line 422
    iget-object v1, v1, Lp9/g;->b:Ljava/util/List;

    .line 423
    .line 424
    invoke-interface {v12}, Lg9/e;->a()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    move-result-object v14

    .line 428
    new-instance v15, Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-static {v1, v9}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    .line 436
    .line 437
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-eqz v3, :cond_f

    .line 446
    .line 447
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    check-cast v3, Ljava/lang/reflect/Method;

    .line 452
    .line 453
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_f
    new-instance v13, Lq9/c;

    .line 462
    .line 463
    sget-object v17, Lq9/b;->a:Lq9/b;

    .line 464
    .line 465
    move-object/from16 v18, v1

    .line 466
    .line 467
    move-object/from16 v16, v5

    .line 468
    .line 469
    invoke-direct/range {v13 .. v18}, Lq9/c;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lq9/a;Lq9/b;Ljava/util/List;)V

    .line 470
    .line 471
    .line 472
    move-object v6, v13

    .line 473
    goto/16 :goto_c

    .line 474
    .line 475
    :cond_10
    :goto_8
    move-object v1, v6

    .line 476
    :goto_9
    instance-of v3, v1, Ljava/lang/reflect/Constructor;

    .line 477
    .line 478
    if-eqz v3, :cond_11

    .line 479
    .line 480
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 481
    .line 482
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v10, v1, v2, v11}, Lp9/j0;->p(Ljava/lang/reflect/Constructor;Lv9/t;Z)Lq9/w;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    goto :goto_b

    .line 491
    :cond_11
    instance-of v3, v1, Ljava/lang/reflect/Method;

    .line 492
    .line 493
    if-eqz v3, :cond_14

    .line 494
    .line 495
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    check-cast v3, Lfb/a;

    .line 500
    .line 501
    invoke-virtual {v3}, Lfb/a;->getAnnotations()Lw9/h;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    sget-object v4, Lp9/c2;->a:Lua/c;

    .line 506
    .line 507
    invoke-interface {v3, v4}, Lw9/h;->c(Lua/c;)Lw9/b;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    if-eqz v3, :cond_13

    .line 512
    .line 513
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-interface {v3}, Lv9/k;->k()Lv9/k;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    const-string v4, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 522
    .line 523
    invoke-static {v3, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    check-cast v3, Lv9/e;

    .line 527
    .line 528
    invoke-interface {v3}, Lv9/e;->u()Z

    .line 529
    .line 530
    .line 531
    move-result v3

    .line 532
    if-nez v3, :cond_13

    .line 533
    .line 534
    check-cast v1, Ljava/lang/reflect/Method;

    .line 535
    .line 536
    invoke-virtual {v10}, Lp9/j0;->n()Z

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-eqz v3, :cond_12

    .line 541
    .line 542
    new-instance v3, Lq9/s;

    .line 543
    .line 544
    invoke-direct {v3, v1, v8, v2}, Lq9/q;-><init>(Ljava/lang/reflect/Method;ZI)V

    .line 545
    .line 546
    .line 547
    :goto_a
    move-object v1, v3

    .line 548
    goto :goto_b

    .line 549
    :cond_12
    new-instance v3, Lq9/v;

    .line 550
    .line 551
    invoke-direct {v3, v1, v11, v2, v11}, Lq9/v;-><init>(Ljava/lang/reflect/Method;ZII)V

    .line 552
    .line 553
    .line 554
    goto :goto_a

    .line 555
    :cond_13
    check-cast v1, Ljava/lang/reflect/Method;

    .line 556
    .line 557
    invoke-virtual {v10}, Lp9/j0;->f()Lq9/g;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-interface {v2}, Lq9/g;->s()Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    invoke-virtual {v10, v1, v2}, Lp9/j0;->q(Ljava/lang/reflect/Method;Z)Lq9/q;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    goto :goto_b

    .line 570
    :cond_14
    move-object v1, v6

    .line 571
    :goto_b
    if-eqz v1, :cond_15

    .line 572
    .line 573
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-static {v1, v2, v11}, Lp9/x1;->l(Lq9/g;Lv9/c;Z)Lq9/g;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    :cond_15
    :goto_c
    return-object v6

    .line 582
    :pswitch_0
    sget-object v1, Lp9/a2;->a:Lua/b;

    .line 583
    .line 584
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    iget-object v12, v10, Lp9/j0;->c:Lp9/h0;

    .line 589
    .line 590
    invoke-static {v1}, Lp9/a2;->c(Lv9/t;)Lp9/l;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    instance-of v13, v1, Lp9/j;

    .line 595
    .line 596
    sget-object v14, Lq9/a;->b:Lq9/a;

    .line 597
    .line 598
    if-eqz v13, :cond_18

    .line 599
    .line 600
    invoke-virtual {v10}, Lp9/t;->m()Z

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    if-eqz v4, :cond_17

    .line 605
    .line 606
    invoke-interface {v12}, Lg9/e;->a()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-virtual {v10}, Lp9/t;->l()Ljava/util/List;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    new-instance v3, Ljava/util/ArrayList;

    .line 615
    .line 616
    invoke-static {v2, v9}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 617
    .line 618
    .line 619
    move-result v4

    .line 620
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 621
    .line 622
    .line 623
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    if-eqz v4, :cond_16

    .line 632
    .line 633
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    check-cast v4, Lm9/n;

    .line 638
    .line 639
    check-cast v4, Lp9/y0;

    .line 640
    .line 641
    invoke-virtual {v4}, Lp9/y0;->b()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    goto :goto_d

    .line 652
    :cond_16
    new-instance v2, Lq9/c;

    .line 653
    .line 654
    invoke-direct {v2, v1, v3, v14}, Lq9/c;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lq9/a;)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_11

    .line 658
    .line 659
    :cond_17
    check-cast v1, Lp9/j;

    .line 660
    .line 661
    iget-object v1, v1, Lp9/j;->b:Lta/e;

    .line 662
    .line 663
    iget-object v1, v1, Lta/e;->g:Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-interface {v12}, Lg9/e;->a()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    invoke-virtual {v12, v1, v8}, Lp9/h0;->p(Ljava/lang/String;Z)Landroid/support/v4/media/session/t;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    iget-object v1, v1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast v1, Ljava/util/ArrayList;

    .line 682
    .line 683
    :try_start_1
    new-array v4, v8, [Ljava/lang/Class;

    .line 684
    .line 685
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    check-cast v1, [Ljava/lang/Class;

    .line 690
    .line 691
    array-length v4, v1

    .line 692
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    check-cast v1, [Ljava/lang/Class;

    .line 697
    .line 698
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 699
    .line 700
    .line 701
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    goto :goto_e

    .line 703
    :catch_1
    nop

    .line 704
    goto :goto_e

    .line 705
    :cond_18
    instance-of v3, v1, Lp9/k;

    .line 706
    .line 707
    if-eqz v3, :cond_1a

    .line 708
    .line 709
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    invoke-interface {v3}, Lv9/k;->k()Lv9/k;

    .line 714
    .line 715
    .line 716
    move-result-object v6

    .line 717
    invoke-static {v6, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-static {v6}, Lxa/f;->d(Lv9/k;)Z

    .line 721
    .line 722
    .line 723
    move-result v6

    .line 724
    if-eqz v6, :cond_19

    .line 725
    .line 726
    instance-of v6, v3, Lv9/j;

    .line 727
    .line 728
    if-eqz v6, :cond_19

    .line 729
    .line 730
    check-cast v3, Lv9/j;

    .line 731
    .line 732
    invoke-interface {v3}, Lv9/j;->y()Z

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    if-eqz v3, :cond_19

    .line 737
    .line 738
    new-instance v2, Lq9/b0;

    .line 739
    .line 740
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 741
    .line 742
    .line 743
    move-result-object v3

    .line 744
    check-cast v1, Lp9/k;

    .line 745
    .line 746
    iget-object v1, v1, Lp9/k;->b:Lta/e;

    .line 747
    .line 748
    iget-object v1, v1, Lta/e;->g:Ljava/lang/String;

    .line 749
    .line 750
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    invoke-interface {v5}, Lv9/b;->S()Ljava/util/List;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    invoke-static {v5, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-direct {v2, v3, v12, v1, v5}, Lq9/b0;-><init>(Lv9/t;Lp9/h0;Ljava/lang/String;Ljava/util/List;)V

    .line 762
    .line 763
    .line 764
    goto/16 :goto_11

    .line 765
    .line 766
    :cond_19
    check-cast v1, Lp9/k;

    .line 767
    .line 768
    iget-object v1, v1, Lp9/k;->b:Lta/e;

    .line 769
    .line 770
    iget-object v3, v1, Lta/e;->f:Ljava/lang/String;

    .line 771
    .line 772
    iget-object v1, v1, Lta/e;->g:Ljava/lang/String;

    .line 773
    .line 774
    invoke-virtual {v12, v3, v1}, Lp9/h0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 775
    .line 776
    .line 777
    move-result-object v6

    .line 778
    goto :goto_e

    .line 779
    :cond_1a
    instance-of v3, v1, Lp9/i;

    .line 780
    .line 781
    const-string v4, "null cannot be cast to non-null type java.lang.reflect.Member"

    .line 782
    .line 783
    if-eqz v3, :cond_1b

    .line 784
    .line 785
    check-cast v1, Lp9/i;

    .line 786
    .line 787
    iget-object v6, v1, Lp9/i;->b:Ljava/lang/reflect/Method;

    .line 788
    .line 789
    invoke-static {v6, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    goto :goto_e

    .line 793
    :cond_1b
    instance-of v3, v1, Lp9/h;

    .line 794
    .line 795
    if-eqz v3, :cond_22

    .line 796
    .line 797
    check-cast v1, Lp9/h;

    .line 798
    .line 799
    iget-object v6, v1, Lp9/h;->b:Ljava/lang/reflect/Constructor;

    .line 800
    .line 801
    invoke-static {v6, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    :goto_e
    instance-of v1, v6, Ljava/lang/reflect/Constructor;

    .line 805
    .line 806
    if-eqz v1, :cond_1c

    .line 807
    .line 808
    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 809
    .line 810
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-virtual {v10, v6, v1, v8}, Lp9/j0;->p(Ljava/lang/reflect/Constructor;Lv9/t;Z)Lq9/w;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    goto :goto_f

    .line 819
    :cond_1c
    instance-of v1, v6, Ljava/lang/reflect/Method;

    .line 820
    .line 821
    if-eqz v1, :cond_21

    .line 822
    .line 823
    check-cast v6, Ljava/lang/reflect/Method;

    .line 824
    .line 825
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 826
    .line 827
    .line 828
    move-result v1

    .line 829
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    if-nez v1, :cond_1e

    .line 834
    .line 835
    invoke-virtual {v10}, Lp9/j0;->n()Z

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    if-eqz v1, :cond_1d

    .line 840
    .line 841
    new-instance v1, Lq9/r;

    .line 842
    .line 843
    iget-object v2, v10, Lp9/j0;->e:Ljava/lang/Object;

    .line 844
    .line 845
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 846
    .line 847
    .line 848
    move-result-object v3

    .line 849
    invoke-static {v2, v3}, Lp9/x1;->h(Ljava/lang/Object;Lv9/c;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    invoke-direct {v1, v6, v2}, Lq9/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 854
    .line 855
    .line 856
    goto :goto_f

    .line 857
    :cond_1d
    new-instance v1, Lq9/v;

    .line 858
    .line 859
    invoke-direct {v1, v6}, Lq9/v;-><init>(Ljava/lang/reflect/Method;)V

    .line 860
    .line 861
    .line 862
    goto :goto_f

    .line 863
    :cond_1e
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    check-cast v1, Lfb/a;

    .line 868
    .line 869
    invoke-virtual {v1}, Lfb/a;->getAnnotations()Lw9/h;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    sget-object v3, Lp9/c2;->a:Lua/c;

    .line 874
    .line 875
    invoke-interface {v1, v3}, Lw9/h;->c(Lua/c;)Lw9/b;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    if-eqz v1, :cond_20

    .line 880
    .line 881
    invoke-virtual {v10}, Lp9/j0;->n()Z

    .line 882
    .line 883
    .line 884
    move-result v1

    .line 885
    if-eqz v1, :cond_1f

    .line 886
    .line 887
    new-instance v1, Lq9/s;

    .line 888
    .line 889
    invoke-direct {v1, v6, v8, v2}, Lq9/q;-><init>(Ljava/lang/reflect/Method;ZI)V

    .line 890
    .line 891
    .line 892
    goto :goto_f

    .line 893
    :cond_1f
    new-instance v1, Lq9/v;

    .line 894
    .line 895
    invoke-direct {v1, v6, v11, v2, v11}, Lq9/v;-><init>(Ljava/lang/reflect/Method;ZII)V

    .line 896
    .line 897
    .line 898
    goto :goto_f

    .line 899
    :cond_20
    invoke-virtual {v10, v6, v8}, Lp9/j0;->q(Ljava/lang/reflect/Method;Z)Lq9/q;

    .line 900
    .line 901
    .line 902
    move-result-object v1

    .line 903
    :goto_f
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    invoke-static {v1, v2, v8}, Lp9/x1;->l(Lq9/g;Lv9/c;Z)Lq9/g;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    goto :goto_11

    .line 912
    :cond_21
    new-instance v1, Lac/y;

    .line 913
    .line 914
    new-instance v2, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    const-string v3, "Could not compute caller for function: "

    .line 917
    .line 918
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v10}, Lp9/j0;->r()Lv9/t;

    .line 922
    .line 923
    .line 924
    move-result-object v3

    .line 925
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    const-string v3, " (member = "

    .line 929
    .line 930
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    const/16 v3, 0x29

    .line 937
    .line 938
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v2

    .line 945
    invoke-direct {v1, v5, v2}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 946
    .line 947
    .line 948
    throw v1

    .line 949
    :cond_22
    instance-of v2, v1, Lp9/g;

    .line 950
    .line 951
    if-eqz v2, :cond_24

    .line 952
    .line 953
    check-cast v1, Lp9/g;

    .line 954
    .line 955
    iget-object v1, v1, Lp9/g;->b:Ljava/util/List;

    .line 956
    .line 957
    invoke-interface {v12}, Lg9/e;->a()Ljava/lang/Class;

    .line 958
    .line 959
    .line 960
    move-result-object v15

    .line 961
    new-instance v2, Ljava/util/ArrayList;

    .line 962
    .line 963
    invoke-static {v1, v9}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 964
    .line 965
    .line 966
    move-result v3

    .line 967
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 968
    .line 969
    .line 970
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 971
    .line 972
    .line 973
    move-result-object v3

    .line 974
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 975
    .line 976
    .line 977
    move-result v4

    .line 978
    if-eqz v4, :cond_23

    .line 979
    .line 980
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v4

    .line 984
    check-cast v4, Ljava/lang/reflect/Method;

    .line 985
    .line 986
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    goto :goto_10

    .line 994
    :cond_23
    new-instance v3, Lq9/c;

    .line 995
    .line 996
    sget-object v18, Lq9/b;->a:Lq9/b;

    .line 997
    .line 998
    move-object/from16 v19, v1

    .line 999
    .line 1000
    move-object/from16 v16, v2

    .line 1001
    .line 1002
    move-object/from16 v17, v14

    .line 1003
    .line 1004
    move-object v14, v3

    .line 1005
    invoke-direct/range {v14 .. v19}, Lq9/c;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lq9/a;Lq9/b;Ljava/util/List;)V

    .line 1006
    .line 1007
    .line 1008
    move-object v2, v14

    .line 1009
    :goto_11
    return-object v2

    .line 1010
    :cond_24
    new-instance v1, Lac/p;

    .line 1011
    .line 1012
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 1013
    .line 1014
    .line 1015
    throw v1

    .line 1016
    nop

    .line 1017
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
