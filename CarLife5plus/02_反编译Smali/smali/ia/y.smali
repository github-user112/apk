.class public final Lia/y;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lia/a0;


# direct methods
.method public synthetic constructor <init>(Lia/a0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lia/y;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lia/y;->b:Lia/a0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lia/y;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, "name"

    .line 8
    .line 9
    iget-object v5, v0, Lia/y;->b:Lia/a0;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Lua/e;

    .line 17
    .line 18
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v3, v5, Lia/a0;->g:Lf1/e;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v2, v3}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v2, v1}, Lia/a0;->n(Ljava/util/ArrayList;Lua/e;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Lia/a0;->q()Lv9/k;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget v3, Lxa/d;->a:I

    .line 43
    .line 44
    sget-object v3, Lv9/f;->e:Lv9/f;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-static {v2}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, v5, Lia/a0;->b:Lba/a;

    .line 58
    .line 59
    iget-object v3, v1, Lba/a;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Lha/a;

    .line 62
    .line 63
    iget-object v3, v3, Lha/a;->r:Lma/d;

    .line 64
    .line 65
    invoke-virtual {v3, v1, v2}, Lma/d;->e(Lba/a;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 74
    :pswitch_0
    move-object/from16 v1, p1

    .line 75
    .line 76
    check-cast v1, Lua/e;

    .line 77
    .line 78
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 82
    .line 83
    iget-object v6, v5, Lia/a0;->f:Lkb/f;

    .line 84
    .line 85
    invoke-virtual {v6, v1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/util/Collection;

    .line 90
    .line 91
    invoke-direct {v4, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_2

    .line 108
    .line 109
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    move-object v9, v8

    .line 114
    check-cast v9, Ly9/l0;

    .line 115
    .line 116
    invoke-static {v9, v2}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    if-nez v10, :cond_1

    .line 125
    .line 126
    new-instance v10, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_1
    check-cast v10, Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_4

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eq v7, v3, :cond_3

    .line 165
    .line 166
    sget-object v7, Lia/m;->c:Lia/m;

    .line 167
    .line 168
    invoke-static {v6, v7}, Lxa/k;->o(Ljava/util/Collection;Lf9/k;)Ljava/util/Collection;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-interface {v4, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 173
    .line 174
    .line 175
    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {v5, v4, v1}, Lia/a0;->m(Ljava/util/LinkedHashSet;Lua/e;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v5, Lia/a0;->b:Lba/a;

    .line 183
    .line 184
    iget-object v2, v1, Lba/a;->b:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v2, Lha/a;

    .line 187
    .line 188
    iget-object v2, v2, Lha/a;->r:Lma/d;

    .line 189
    .line 190
    invoke-virtual {v2, v1, v4}, Lma/d;->e(Lba/a;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v1}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    return-object v1

    .line 199
    :pswitch_1
    move-object/from16 v1, p1

    .line 200
    .line 201
    check-cast v1, Lua/e;

    .line 202
    .line 203
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v4, v5, Lia/a0;->c:Lia/a0;

    .line 207
    .line 208
    if-eqz v4, :cond_5

    .line 209
    .line 210
    iget-object v2, v4, Lia/a0;->g:Lf1/e;

    .line 211
    .line 212
    invoke-virtual {v2, v1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Lv9/k0;

    .line 217
    .line 218
    goto/16 :goto_d

    .line 219
    .line 220
    :cond_5
    iget-object v4, v5, Lia/a0;->e:Lkb/j;

    .line 221
    .line 222
    invoke-virtual {v4}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Lia/c;

    .line 227
    .line 228
    invoke-interface {v4, v1}, Lia/c;->b(Lua/e;)Lba/v;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const/4 v4, 0x0

    .line 233
    if-eqz v1, :cond_16

    .line 234
    .line 235
    iget-object v6, v1, Lba/v;->a:Ljava/lang/reflect/Field;

    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-nez v7, :cond_16

    .line 242
    .line 243
    new-instance v7, Lg9/x;

    .line 244
    .line 245
    invoke-direct {v7}, Lg9/x;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Lba/v;->b()Ljava/lang/reflect/Member;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    check-cast v8, Ljava/lang/reflect/Field;

    .line 253
    .line 254
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    xor-int/lit8 v12, v8, 0x1

    .line 263
    .line 264
    iget-object v8, v5, Lia/a0;->b:Lba/a;

    .line 265
    .line 266
    invoke-static {v8, v1}, Li2/c;->I(Lba/a;Lla/b;)Lha/c;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    iget-object v9, v8, Lba/a;->b:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v9, Lha/a;

    .line 273
    .line 274
    invoke-virtual {v5}, Lia/a0;->q()Lv9/k;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    invoke-virtual {v1}, Lba/x;->e()Ln/a;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    invoke-static {v13}, Lg5/a;->Z(Ln/a;)Lea/o;

    .line 283
    .line 284
    .line 285
    move-result-object v13

    .line 286
    move-object v14, v11

    .line 287
    move-object v11, v13

    .line 288
    invoke-virtual {v1}, Lba/x;->c()Lua/e;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    iget-object v15, v9, Lha/a;->j:Laa/e;

    .line 293
    .line 294
    invoke-virtual {v15, v1}, Laa/e;->a(Lla/c;)Laa/g;

    .line 295
    .line 296
    .line 297
    move-result-object v15

    .line 298
    invoke-virtual {v1}, Lba/v;->b()Ljava/lang/reflect/Member;

    .line 299
    .line 300
    .line 301
    move-result-object v16

    .line 302
    check-cast v16, Ljava/lang/reflect/Field;

    .line 303
    .line 304
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 305
    .line 306
    .line 307
    move-result v16

    .line 308
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 309
    .line 310
    .line 311
    move-result v16

    .line 312
    const/16 v17, 0x2

    .line 313
    .line 314
    const/4 v2, 0x0

    .line 315
    if-eqz v16, :cond_6

    .line 316
    .line 317
    invoke-virtual {v1}, Lba/v;->b()Ljava/lang/reflect/Member;

    .line 318
    .line 319
    .line 320
    move-result-object v16

    .line 321
    check-cast v16, Ljava/lang/reflect/Field;

    .line 322
    .line 323
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 324
    .line 325
    .line 326
    move-result v16

    .line 327
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 328
    .line 329
    .line 330
    move-result v16

    .line 331
    if-eqz v16, :cond_6

    .line 332
    .line 333
    move-object v3, v9

    .line 334
    move-object v9, v14

    .line 335
    move-object v14, v15

    .line 336
    const/4 v15, 0x1

    .line 337
    :goto_3
    const/16 v16, 0x1

    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_6
    move-object v3, v9

    .line 341
    move-object v9, v14

    .line 342
    move-object v14, v15

    .line 343
    const/4 v15, 0x0

    .line 344
    goto :goto_3

    .line 345
    :goto_4
    invoke-static/range {v9 .. v15}, Lga/f;->K0(Lv9/k;Lha/c;Lea/o;ZLua/e;Laa/g;Z)Lga/f;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    iput-object v9, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 350
    .line 351
    invoke-virtual {v9, v4, v4, v4, v4}, Ly9/i0;->G0(Ly9/j0;Ly9/k0;Ly9/r;Ly9/r;)V

    .line 352
    .line 353
    .line 354
    iget-object v9, v8, Lba/a;->e:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v9, La2/b;

    .line 357
    .line 358
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    const-string v10, "getGenericType(...)"

    .line 363
    .line 364
    invoke-static {v6, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    instance-of v10, v6, Ljava/lang/Class;

    .line 368
    .line 369
    if-eqz v10, :cond_7

    .line 370
    .line 371
    move-object v11, v6

    .line 372
    check-cast v11, Ljava/lang/Class;

    .line 373
    .line 374
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    .line 375
    .line 376
    .line 377
    move-result v12

    .line 378
    if-eqz v12, :cond_7

    .line 379
    .line 380
    new-instance v6, Lba/a0;

    .line 381
    .line 382
    invoke-direct {v6, v11}, Lba/a0;-><init>(Ljava/lang/Class;)V

    .line 383
    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_7
    instance-of v11, v6, Ljava/lang/reflect/GenericArrayType;

    .line 387
    .line 388
    if-nez v11, :cond_a

    .line 389
    .line 390
    if-eqz v10, :cond_8

    .line 391
    .line 392
    move-object v10, v6

    .line 393
    check-cast v10, Ljava/lang/Class;

    .line 394
    .line 395
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    .line 396
    .line 397
    .line 398
    move-result v10

    .line 399
    if-eqz v10, :cond_8

    .line 400
    .line 401
    goto :goto_6

    .line 402
    :cond_8
    instance-of v10, v6, Ljava/lang/reflect/WildcardType;

    .line 403
    .line 404
    if-eqz v10, :cond_9

    .line 405
    .line 406
    new-instance v10, Lba/f0;

    .line 407
    .line 408
    check-cast v6, Ljava/lang/reflect/WildcardType;

    .line 409
    .line 410
    invoke-direct {v10, v6}, Lba/f0;-><init>(Ljava/lang/reflect/WildcardType;)V

    .line 411
    .line 412
    .line 413
    :goto_5
    move-object v6, v10

    .line 414
    goto :goto_7

    .line 415
    :cond_9
    new-instance v10, Lba/r;

    .line 416
    .line 417
    invoke-direct {v10, v6}, Lba/r;-><init>(Ljava/lang/reflect/Type;)V

    .line 418
    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_a
    :goto_6
    new-instance v10, Lba/i;

    .line 422
    .line 423
    invoke-direct {v10, v6}, Lba/i;-><init>(Ljava/lang/reflect/Type;)V

    .line 424
    .line 425
    .line 426
    goto :goto_5

    .line 427
    :goto_7
    sget-object v10, Llb/t0;->b:Llb/t0;

    .line 428
    .line 429
    const/4 v11, 0x7

    .line 430
    invoke-static {v10, v2, v4, v11}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    invoke-virtual {v9, v6, v10}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 435
    .line 436
    .line 437
    move-result-object v19

    .line 438
    invoke-static/range {v19 .. v19}, Ls9/i;->G(Llb/w;)Z

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    if-nez v6, :cond_b

    .line 443
    .line 444
    invoke-static/range {v19 .. v19}, Ls9/i;->H(Llb/w;)Z

    .line 445
    .line 446
    .line 447
    move-result v6

    .line 448
    if-eqz v6, :cond_c

    .line 449
    .line 450
    :cond_b
    invoke-virtual {v1}, Lba/v;->b()Ljava/lang/reflect/Member;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    check-cast v6, Ljava/lang/reflect/Field;

    .line 455
    .line 456
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-eqz v6, :cond_c

    .line 465
    .line 466
    invoke-virtual {v1}, Lba/v;->b()Ljava/lang/reflect/Member;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    check-cast v6, Ljava/lang/reflect/Field;

    .line 471
    .line 472
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 477
    .line 478
    .line 479
    move-result v6

    .line 480
    :cond_c
    iget-object v6, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 481
    .line 482
    move-object/from16 v18, v6

    .line 483
    .line 484
    check-cast v18, Ly9/i0;

    .line 485
    .line 486
    invoke-virtual {v5}, Lia/a0;->p()Ly9/v;

    .line 487
    .line 488
    .line 489
    move-result-object v21

    .line 490
    const/16 v22, 0x0

    .line 491
    .line 492
    sget-object v20, Ls8/w;->a:Ls8/w;

    .line 493
    .line 494
    move-object/from16 v23, v20

    .line 495
    .line 496
    invoke-virtual/range {v18 .. v23}, Ly9/i0;->J0(Llb/w;Ljava/util/List;Ly9/v;Ly9/v;Ljava/util/List;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v5}, Lia/a0;->q()Lv9/k;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    instance-of v9, v6, Lv9/e;

    .line 504
    .line 505
    if-eqz v9, :cond_d

    .line 506
    .line 507
    check-cast v6, Lv9/e;

    .line 508
    .line 509
    goto :goto_8

    .line 510
    :cond_d
    move-object v6, v4

    .line 511
    :goto_8
    if-eqz v6, :cond_e

    .line 512
    .line 513
    iget-object v6, v3, Lha/a;->x:Lcb/e;

    .line 514
    .line 515
    iget-object v9, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 516
    .line 517
    check-cast v9, Ly9/i0;

    .line 518
    .line 519
    check-cast v6, Lcb/a;

    .line 520
    .line 521
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    const-string v6, "propertyDescriptor"

    .line 525
    .line 526
    invoke-static {v9, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    const-string v6, "c"

    .line 530
    .line 531
    invoke-static {v8, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iput-object v9, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 535
    .line 536
    :cond_e
    iget-object v6, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 537
    .line 538
    move-object v8, v6

    .line 539
    check-cast v8, Lv9/t0;

    .line 540
    .line 541
    check-cast v6, Ly9/i0;

    .line 542
    .line 543
    invoke-virtual {v6}, Ly9/s0;->getType()Llb/w;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    if-eqz v8, :cond_15

    .line 548
    .line 549
    if-eqz v6, :cond_14

    .line 550
    .line 551
    sget v9, Lxa/d;->a:I

    .line 552
    .line 553
    invoke-interface {v8}, Lv9/t0;->Z()Z

    .line 554
    .line 555
    .line 556
    move-result v9

    .line 557
    if-nez v9, :cond_12

    .line 558
    .line 559
    invoke-static {v6}, Llb/c;->j(Llb/w;)Z

    .line 560
    .line 561
    .line 562
    move-result v9

    .line 563
    if-eqz v9, :cond_f

    .line 564
    .line 565
    goto :goto_a

    .line 566
    :cond_f
    invoke-static {v6}, Llb/v0;->b(Llb/w;)Z

    .line 567
    .line 568
    .line 569
    move-result v9

    .line 570
    if-eqz v9, :cond_10

    .line 571
    .line 572
    goto :goto_9

    .line 573
    :cond_10
    invoke-static {v8}, Lbb/e;->e(Lv9/k;)Ls9/i;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    invoke-static {v6}, Ls9/i;->G(Llb/w;)Z

    .line 578
    .line 579
    .line 580
    move-result v9

    .line 581
    if-nez v9, :cond_11

    .line 582
    .line 583
    sget-object v9, Lmb/d;->a:Lmb/l;

    .line 584
    .line 585
    invoke-virtual {v8}, Ls9/i;->v()Llb/a0;

    .line 586
    .line 587
    .line 588
    move-result-object v10

    .line 589
    invoke-virtual {v9, v10, v6}, Lmb/l;->a(Llb/w;Llb/w;)Z

    .line 590
    .line 591
    .line 592
    move-result v10

    .line 593
    if-nez v10, :cond_11

    .line 594
    .line 595
    const-string v10, "Number"

    .line 596
    .line 597
    invoke-virtual {v8, v10}, Ls9/i;->k(Ljava/lang/String;)Lv9/e;

    .line 598
    .line 599
    .line 600
    move-result-object v10

    .line 601
    invoke-interface {v10}, Lv9/e;->n()Llb/a0;

    .line 602
    .line 603
    .line 604
    move-result-object v10

    .line 605
    invoke-virtual {v9, v10, v6}, Lmb/l;->a(Llb/w;Llb/w;)Z

    .line 606
    .line 607
    .line 608
    move-result v10

    .line 609
    if-nez v10, :cond_11

    .line 610
    .line 611
    invoke-virtual {v8}, Ls9/i;->e()Llb/a0;

    .line 612
    .line 613
    .line 614
    move-result-object v8

    .line 615
    invoke-virtual {v9, v8, v6}, Lmb/l;->a(Llb/w;Llb/w;)Z

    .line 616
    .line 617
    .line 618
    move-result v8

    .line 619
    if-nez v8, :cond_11

    .line 620
    .line 621
    invoke-static {v6}, Ls9/t;->a(Llb/w;)Z

    .line 622
    .line 623
    .line 624
    move-result v6

    .line 625
    if-eqz v6, :cond_12

    .line 626
    .line 627
    :cond_11
    :goto_9
    iget-object v6, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast v6, Ly9/i0;

    .line 630
    .line 631
    new-instance v8, Lia/x;

    .line 632
    .line 633
    invoke-direct {v8, v5, v1, v7, v2}, Lia/x;-><init>(Lia/a0;Lba/v;Lg9/x;I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v6, v4, v8}, Ly9/i0;->H0(Lkb/i;Lf9/a;)V

    .line 637
    .line 638
    .line 639
    :cond_12
    :goto_a
    iget-object v1, v3, Lha/a;->g:Lfa/h;

    .line 640
    .line 641
    iget-object v3, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v3, Lv9/k0;

    .line 644
    .line 645
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    if-eqz v3, :cond_13

    .line 649
    .line 650
    iget-object v1, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v1, Lv9/k0;

    .line 653
    .line 654
    goto :goto_d

    .line 655
    :cond_13
    const/4 v1, 0x3

    .line 656
    new-array v1, v1, [Ljava/lang/Object;

    .line 657
    .line 658
    const/4 v3, 0x6

    .line 659
    packed-switch v3, :pswitch_data_1

    .line 660
    .line 661
    .line 662
    const-string v4, "fqName"

    .line 663
    .line 664
    aput-object v4, v1, v2

    .line 665
    .line 666
    goto :goto_b

    .line 667
    :pswitch_2
    const-string v4, "javaClass"

    .line 668
    .line 669
    aput-object v4, v1, v2

    .line 670
    .line 671
    goto :goto_b

    .line 672
    :pswitch_3
    const-string v4, "field"

    .line 673
    .line 674
    aput-object v4, v1, v2

    .line 675
    .line 676
    goto :goto_b

    .line 677
    :pswitch_4
    const-string v4, "element"

    .line 678
    .line 679
    aput-object v4, v1, v2

    .line 680
    .line 681
    goto :goto_b

    .line 682
    :pswitch_5
    const-string v4, "descriptor"

    .line 683
    .line 684
    aput-object v4, v1, v2

    .line 685
    .line 686
    goto :goto_b

    .line 687
    :pswitch_6
    const-string v4, "member"

    .line 688
    .line 689
    aput-object v4, v1, v2

    .line 690
    .line 691
    :goto_b
    const-string v2, "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1"

    .line 692
    .line 693
    aput-object v2, v1, v16

    .line 694
    .line 695
    packed-switch v3, :pswitch_data_2

    .line 696
    .line 697
    .line 698
    const-string v2, "getClassResolvedFromSource"

    .line 699
    .line 700
    aput-object v2, v1, v17

    .line 701
    .line 702
    goto :goto_c

    .line 703
    :pswitch_7
    const-string v2, "recordClass"

    .line 704
    .line 705
    aput-object v2, v1, v17

    .line 706
    .line 707
    goto :goto_c

    .line 708
    :pswitch_8
    const-string v2, "recordField"

    .line 709
    .line 710
    aput-object v2, v1, v17

    .line 711
    .line 712
    goto :goto_c

    .line 713
    :pswitch_9
    const-string v2, "recordConstructor"

    .line 714
    .line 715
    aput-object v2, v1, v17

    .line 716
    .line 717
    goto :goto_c

    .line 718
    :pswitch_a
    const-string v2, "recordMethod"

    .line 719
    .line 720
    aput-object v2, v1, v17

    .line 721
    .line 722
    :goto_c
    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 723
    .line 724
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 729
    .line 730
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    throw v2

    .line 734
    :cond_14
    const/16 v1, 0x42

    .line 735
    .line 736
    invoke-static {v1}, Lxa/d;->a(I)V

    .line 737
    .line 738
    .line 739
    throw v4

    .line 740
    :cond_15
    const/16 v1, 0x41

    .line 741
    .line 742
    invoke-static {v1}, Lxa/d;->a(I)V

    .line 743
    .line 744
    .line 745
    throw v4

    .line 746
    :cond_16
    move-object v1, v4

    .line 747
    :goto_d
    return-object v1

    .line 748
    :pswitch_b
    move-object/from16 v1, p1

    .line 749
    .line 750
    check-cast v1, Lua/e;

    .line 751
    .line 752
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    iget-object v2, v5, Lia/a0;->c:Lia/a0;

    .line 756
    .line 757
    if-eqz v2, :cond_17

    .line 758
    .line 759
    iget-object v2, v2, Lia/a0;->f:Lkb/f;

    .line 760
    .line 761
    invoke-virtual {v2, v1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    check-cast v1, Ljava/util/Collection;

    .line 766
    .line 767
    goto :goto_f

    .line 768
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    .line 769
    .line 770
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .line 772
    .line 773
    iget-object v3, v5, Lia/a0;->e:Lkb/j;

    .line 774
    .line 775
    invoke-virtual {v3}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    check-cast v3, Lia/c;

    .line 780
    .line 781
    invoke-interface {v3, v1}, Lia/c;->c(Lua/e;)Ljava/util/Collection;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    :cond_18
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    if-eqz v4, :cond_19

    .line 794
    .line 795
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v4

    .line 799
    check-cast v4, Lba/y;

    .line 800
    .line 801
    invoke-virtual {v5, v4}, Lia/a0;->t(Lba/y;)Lga/e;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    invoke-virtual {v5, v4}, Lia/a0;->r(Lga/e;)Z

    .line 806
    .line 807
    .line 808
    move-result v6

    .line 809
    if-eqz v6, :cond_18

    .line 810
    .line 811
    iget-object v6, v5, Lia/a0;->b:Lba/a;

    .line 812
    .line 813
    iget-object v6, v6, Lba/a;->b:Ljava/lang/Object;

    .line 814
    .line 815
    check-cast v6, Lha/a;

    .line 816
    .line 817
    iget-object v6, v6, Lha/a;->g:Lfa/h;

    .line 818
    .line 819
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    goto :goto_e

    .line 826
    :cond_19
    invoke-virtual {v5, v2, v1}, Lia/a0;->j(Ljava/util/ArrayList;Lua/e;)V

    .line 827
    .line 828
    .line 829
    move-object v1, v2

    .line 830
    :goto_f
    return-object v1

    .line 831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
