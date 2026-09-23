.class public final Lia/k;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lba/a;

.field public final c:Lia/o;


# direct methods
.method public constructor <init>(Lba/a;Lia/o;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lia/k;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lia/k;->b:Lba/a;

    iput-object p2, p0, Lia/k;->c:Lia/o;

    return-void
.end method

.method public constructor <init>(Lia/o;Lba/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lia/k;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lia/k;->c:Lia/o;

    iput-object p2, p0, Lia/k;->b:Lba/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lia/k;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lia/k;->b:Lba/a;

    .line 9
    .line 10
    iget-object v2, v1, Lba/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lha/a;

    .line 13
    .line 14
    iget-object v2, v2, Lha/a;->x:Lcb/e;

    .line 15
    .line 16
    iget-object v3, v0, Lia/k;->c:Lia/o;

    .line 17
    .line 18
    iget-object v3, v3, Lia/o;->n:Lv9/e;

    .line 19
    .line 20
    check-cast v2, Lcb/a;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v2, "thisDescriptor"

    .line 26
    .line 27
    invoke-static {v3, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "c"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    return-object v1

    .line 45
    :pswitch_0
    iget-object v2, v0, Lia/k;->c:Lia/o;

    .line 46
    .line 47
    iget-object v1, v2, Lia/o;->o:Lba/p;

    .line 48
    .line 49
    iget-object v9, v2, Lia/a0;->b:Lba/a;

    .line 50
    .line 51
    iget-object v10, v2, Lia/o;->n:Lv9/e;

    .line 52
    .line 53
    iget-object v3, v1, Lba/p;->a:Ljava/lang/Class;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "getDeclaredConstructors(...)"

    .line 60
    .line 61
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v3}, Ls8/l;->K([Ljava/lang/Object;)Lwb/j;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-object v4, Lba/k;->i:Lba/k;

    .line 69
    .line 70
    new-instance v5, Lwb/h;

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    invoke-direct {v5, v3, v11, v4}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 74
    .line 75
    .line 76
    sget-object v3, Lba/l;->i:Lba/l;

    .line 77
    .line 78
    invoke-static {v5, v3}, Lwb/l;->N(Lwb/j;Lf9/k;)Lwb/p;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const/4 v12, 0x1

    .line 104
    if-eqz v5, :cond_5

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lba/s;

    .line 111
    .line 112
    invoke-static {v9, v5}, Li2/c;->I(Lba/a;Lla/b;)Lha/c;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    iget-object v7, v9, Lba/a;->b:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v7, Lha/a;

    .line 119
    .line 120
    iget-object v8, v7, Lha/a;->j:Laa/e;

    .line 121
    .line 122
    invoke-virtual {v8, v5}, Laa/e;->a(Lla/c;)Laa/g;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {v10, v6, v11, v8}, Lga/b;->T0(Lv9/e;Lw9/h;ZLaa/g;)Lga/b;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-interface {v10}, Lv9/e;->q()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    iget-object v13, v9, Lba/a;->d:Ljava/lang/Object;

    .line 139
    .line 140
    new-instance v14, Lha/e;

    .line 141
    .line 142
    invoke-direct {v14, v9, v6, v5, v8}, Lha/e;-><init>(Lba/a;Lv9/l;Lla/e;I)V

    .line 143
    .line 144
    .line 145
    new-instance v8, Lba/a;

    .line 146
    .line 147
    invoke-direct {v8, v7, v14, v13}, Lba/a;-><init>(Lha/a;Lha/f;Lr8/h;)V

    .line 148
    .line 149
    .line 150
    iget-object v7, v5, Lba/s;->a:Ljava/lang/reflect/Constructor;

    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    invoke-static {v13}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    array-length v14, v13

    .line 160
    if-nez v14, :cond_0

    .line 161
    .line 162
    sget-object v7, Ls8/w;->a:Ls8/w;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    if-eqz v15, :cond_1

    .line 174
    .line 175
    invoke-virtual {v14}, Ljava/lang/Class;->getModifiers()I

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    if-nez v14, :cond_1

    .line 184
    .line 185
    array-length v14, v13

    .line 186
    invoke-static {v13, v12, v14}, Ls8/l;->S([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    move-object v13, v12

    .line 191
    check-cast v13, [Ljava/lang/reflect/Type;

    .line 192
    .line 193
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    array-length v14, v12

    .line 198
    array-length v15, v13

    .line 199
    if-lt v14, v15, :cond_4

    .line 200
    .line 201
    array-length v14, v12

    .line 202
    array-length v15, v13

    .line 203
    if-le v14, v15, :cond_2

    .line 204
    .line 205
    array-length v14, v12

    .line 206
    array-length v15, v13

    .line 207
    sub-int/2addr v14, v15

    .line 208
    array-length v15, v12

    .line 209
    invoke-static {v12, v14, v15}, Ls8/l;->S([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    check-cast v12, [[Ljava/lang/annotation/Annotation;

    .line 214
    .line 215
    :cond_2
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    invoke-virtual {v5, v13, v12, v7}, Lba/x;->d([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/ArrayList;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    :goto_1
    invoke-static {v8, v6, v7}, Lia/a0;->u(Lba/a;Ly9/u;Ljava/util/List;)Ld6/h;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-interface {v10}, Lv9/e;->q()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    const-string v13, "getDeclaredTypeParameters(...)"

    .line 232
    .line 233
    invoke-static {v12, v13}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5}, Lba/s;->getTypeParameters()Ljava/util/ArrayList;

    .line 237
    .line 238
    .line 239
    move-result-object v13

    .line 240
    new-instance v14, Ljava/util/ArrayList;

    .line 241
    .line 242
    const/16 v15, 0xa

    .line 243
    .line 244
    invoke-static {v13, v15}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 245
    .line 246
    .line 247
    move-result v15

    .line 248
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    if-eqz v15, :cond_3

    .line 260
    .line 261
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v15

    .line 265
    check-cast v15, Lba/d0;

    .line 266
    .line 267
    iget-object v11, v8, Lba/a;->c:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v11, Lha/f;

    .line 270
    .line 271
    invoke-interface {v11, v15}, Lha/f;->a(Lba/d0;)Lv9/q0;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    invoke-static {v11}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    const/4 v11, 0x0

    .line 282
    goto :goto_2

    .line 283
    :cond_3
    invoke-static {v14, v12}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    iget-object v12, v7, Ld6/h;->c:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v12, Ljava/util/List;

    .line 290
    .line 291
    invoke-virtual {v5}, Lba/x;->e()Ln/a;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-static {v5}, Lg5/a;->Z(Ln/a;)Lea/o;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v6, v12, v5, v11}, Ly9/i;->R0(Ljava/util/List;Lea/o;Ljava/util/List;)V

    .line 300
    .line 301
    .line 302
    const/4 v5, 0x0

    .line 303
    invoke-virtual {v6, v5}, Lga/b;->K0(Z)V

    .line 304
    .line 305
    .line 306
    iget-boolean v5, v7, Ld6/h;->b:Z

    .line 307
    .line 308
    invoke-virtual {v6, v5}, Lga/b;->L0(Z)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v10}, Lv9/e;->n()Llb/a0;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {v6, v5}, Ly9/u;->M0(Llb/a0;)V

    .line 316
    .line 317
    .line 318
    iget-object v5, v8, Lba/a;->b:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v5, Lha/a;

    .line 321
    .line 322
    iget-object v5, v5, Lha/a;->g:Lfa/h;

    .line 323
    .line 324
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    const/4 v11, 0x0

    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 334
    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v3, "Illegal generic signature: "

    .line 338
    .line 339
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw v1

    .line 353
    :cond_5
    invoke-virtual {v1}, Lba/p;->g()Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    iget-object v5, v1, Lba/p;->a:Ljava/lang/Class;

    .line 358
    .line 359
    const-string v11, "PROTECTED_AND_PACKAGE"

    .line 360
    .line 361
    const-string v13, "getVisibility(...)"

    .line 362
    .line 363
    const/4 v6, 0x6

    .line 364
    sget-object v7, Llb/t0;->b:Llb/t0;

    .line 365
    .line 366
    iget-object v14, v0, Lia/k;->b:Lba/a;

    .line 367
    .line 368
    sget-object v8, Lw9/g;->a:Lw9/f;

    .line 369
    .line 370
    const/4 v15, 0x0

    .line 371
    if-eqz v3, :cond_b

    .line 372
    .line 373
    iget-object v3, v9, Lba/a;->b:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v3, Lha/a;

    .line 376
    .line 377
    iget-object v3, v3, Lha/a;->j:Laa/e;

    .line 378
    .line 379
    invoke-virtual {v3, v1}, Laa/e;->a(Lla/c;)Laa/g;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-static {v10, v8, v12, v3}, Lga/b;->T0(Lv9/e;Lw9/h;ZLaa/g;)Lga/b;

    .line 384
    .line 385
    .line 386
    move-result-object v17

    .line 387
    invoke-virtual {v1}, Lba/p;->f()Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    new-instance v12, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    .line 399
    .line 400
    move-object/from16 v28, v2

    .line 401
    .line 402
    const/4 v0, 0x0

    .line 403
    invoke-static {v7, v0, v15, v6}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const/16 v19, 0x0

    .line 412
    .line 413
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    if-eqz v3, :cond_6

    .line 418
    .line 419
    add-int/lit8 v3, v19, 0x1

    .line 420
    .line 421
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v16

    .line 425
    move-object/from16 v6, v16

    .line 426
    .line 427
    check-cast v6, Lba/b0;

    .line 428
    .line 429
    iget-object v15, v9, Lba/a;->e:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast v15, La2/b;

    .line 432
    .line 433
    move-object/from16 v29, v0

    .line 434
    .line 435
    invoke-virtual {v6}, Lba/b0;->f()Lla/d;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v15, v0, v2}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 440
    .line 441
    .line 442
    move-result-object v22

    .line 443
    new-instance v16, Ly9/r0;

    .line 444
    .line 445
    invoke-virtual {v6}, Lba/x;->c()Lua/e;

    .line 446
    .line 447
    .line 448
    move-result-object v21

    .line 449
    iget-object v0, v9, Lba/a;->b:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v0, Lha/a;

    .line 452
    .line 453
    iget-object v0, v0, Lha/a;->j:Laa/e;

    .line 454
    .line 455
    invoke-virtual {v0, v6}, Laa/e;->a(Lla/c;)Laa/g;

    .line 456
    .line 457
    .line 458
    move-result-object v27

    .line 459
    const/16 v18, 0x0

    .line 460
    .line 461
    const/16 v23, 0x0

    .line 462
    .line 463
    const/16 v24, 0x0

    .line 464
    .line 465
    const/16 v25, 0x0

    .line 466
    .line 467
    const/16 v26, 0x0

    .line 468
    .line 469
    move-object/from16 v20, v8

    .line 470
    .line 471
    invoke-direct/range {v16 .. v27}, Ly9/r0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;)V

    .line 472
    .line 473
    .line 474
    move-object/from16 v6, v16

    .line 475
    .line 476
    move-object/from16 v0, v17

    .line 477
    .line 478
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move/from16 v19, v3

    .line 482
    .line 483
    move-object/from16 v0, v29

    .line 484
    .line 485
    const/4 v6, 0x6

    .line 486
    const/4 v15, 0x0

    .line 487
    goto :goto_3

    .line 488
    :cond_6
    move-object/from16 v0, v17

    .line 489
    .line 490
    const/4 v3, 0x0

    .line 491
    invoke-virtual {v0, v3}, Lga/b;->L0(Z)V

    .line 492
    .line 493
    .line 494
    invoke-interface {v10}, Lv9/e;->d()Lea/o;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-static {v2, v13}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    sget-object v6, Lea/p;->b:Lea/o;

    .line 502
    .line 503
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v6

    .line 507
    if-eqz v6, :cond_7

    .line 508
    .line 509
    sget-object v2, Lea/p;->c:Lea/o;

    .line 510
    .line 511
    invoke-static {v2, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    :cond_7
    invoke-virtual {v0, v12, v2}, Ly9/i;->Q0(Ljava/util/List;Lea/o;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v3}, Lga/b;->K0(Z)V

    .line 518
    .line 519
    .line 520
    invoke-interface {v10}, Lv9/e;->n()Llb/a0;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-virtual {v0, v2}, Ly9/u;->M0(Llb/a0;)V

    .line 525
    .line 526
    .line 527
    const/4 v2, 0x2

    .line 528
    invoke-static {v0, v2}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 533
    .line 534
    .line 535
    move-result v6

    .line 536
    if-eqz v6, :cond_8

    .line 537
    .line 538
    goto :goto_4

    .line 539
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 540
    .line 541
    .line 542
    move-result-object v6

    .line 543
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 544
    .line 545
    .line 546
    move-result v12

    .line 547
    if-eqz v12, :cond_a

    .line 548
    .line 549
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v12

    .line 553
    check-cast v12, Ly9/i;

    .line 554
    .line 555
    invoke-static {v12, v2}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v12

    .line 559
    invoke-static {v12, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v12

    .line 563
    if-eqz v12, :cond_9

    .line 564
    .line 565
    goto :goto_5

    .line 566
    :cond_a
    :goto_4
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    iget-object v0, v14, Lba/a;->b:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v0, Lha/a;

    .line 572
    .line 573
    iget-object v0, v0, Lha/a;->g:Lfa/h;

    .line 574
    .line 575
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    goto :goto_5

    .line 579
    :cond_b
    move-object/from16 v28, v2

    .line 580
    .line 581
    :goto_5
    iget-object v0, v14, Lba/a;->b:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v0, Lha/a;

    .line 584
    .line 585
    iget-object v0, v0, Lha/a;->x:Lcb/e;

    .line 586
    .line 587
    check-cast v0, Lcb/a;

    .line 588
    .line 589
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    const-string v0, "thisDescriptor"

    .line 593
    .line 594
    invoke-static {v10, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const-string v0, "c"

    .line 598
    .line 599
    invoke-static {v14, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-object v0, v14, Lba/a;->b:Ljava/lang/Object;

    .line 603
    .line 604
    check-cast v0, Lha/a;

    .line 605
    .line 606
    iget-object v0, v0, Lha/a;->r:Lma/d;

    .line 607
    .line 608
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    if-eqz v2, :cond_15

    .line 613
    .line 614
    invoke-virtual {v5}, Ljava/lang/Class;->isAnnotation()Z

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    .line 619
    .line 620
    .line 621
    if-nez v2, :cond_c

    .line 622
    .line 623
    const/4 v15, 0x0

    .line 624
    goto/16 :goto_d

    .line 625
    .line 626
    :cond_c
    iget-object v3, v9, Lba/a;->b:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v3, Lha/a;

    .line 629
    .line 630
    iget-object v4, v9, Lba/a;->e:Ljava/lang/Object;

    .line 631
    .line 632
    move-object v12, v4

    .line 633
    check-cast v12, La2/b;

    .line 634
    .line 635
    iget-object v3, v3, Lha/a;->j:Laa/e;

    .line 636
    .line 637
    invoke-virtual {v3, v1}, Laa/e;->a(Lla/c;)Laa/g;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    const/4 v4, 0x1

    .line 642
    invoke-static {v10, v8, v4, v3}, Lga/b;->T0(Lv9/e;Lw9/h;ZLaa/g;)Lga/b;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    if-eqz v2, :cond_13

    .line 647
    .line 648
    invoke-virtual {v1}, Lba/p;->d()Ljava/util/List;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    move-object v2, v3

    .line 653
    new-instance v3, Ljava/util/ArrayList;

    .line 654
    .line 655
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 660
    .line 661
    .line 662
    const/4 v5, 0x6

    .line 663
    const/4 v6, 0x0

    .line 664
    invoke-static {v7, v4, v6, v5}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 665
    .line 666
    .line 667
    move-result-object v15

    .line 668
    new-instance v4, Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .line 672
    .line 673
    new-instance v5, Ljava/util/ArrayList;

    .line 674
    .line 675
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .line 677
    .line 678
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 683
    .line 684
    .line 685
    move-result v6

    .line 686
    if-eqz v6, :cond_e

    .line 687
    .line 688
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v6

    .line 692
    move-object v7, v6

    .line 693
    check-cast v7, Lba/y;

    .line 694
    .line 695
    invoke-virtual {v7}, Lba/x;->c()Lua/e;

    .line 696
    .line 697
    .line 698
    move-result-object v7

    .line 699
    sget-object v8, Lea/y;->b:Lua/e;

    .line 700
    .line 701
    invoke-static {v7, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v7

    .line 705
    if-eqz v7, :cond_d

    .line 706
    .line 707
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    goto :goto_6

    .line 711
    :cond_d
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    goto :goto_6

    .line 715
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 716
    .line 717
    .line 718
    invoke-static {v4}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    move-object v6, v1

    .line 723
    check-cast v6, Lba/y;

    .line 724
    .line 725
    if-eqz v6, :cond_10

    .line 726
    .line 727
    invoke-virtual {v6}, Lba/y;->f()Lba/c0;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    instance-of v4, v1, Lba/i;

    .line 732
    .line 733
    if-eqz v4, :cond_f

    .line 734
    .line 735
    new-instance v4, Lr8/j;

    .line 736
    .line 737
    check-cast v1, Lba/i;

    .line 738
    .line 739
    const/4 v7, 0x1

    .line 740
    invoke-virtual {v12, v1, v15, v7}, La2/b;->d0(Lba/i;Lja/a;Z)Llb/x0;

    .line 741
    .line 742
    .line 743
    move-result-object v8

    .line 744
    iget-object v1, v1, Lba/i;->b:Lba/c0;

    .line 745
    .line 746
    invoke-virtual {v12, v1, v15}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-direct {v4, v8, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 751
    .line 752
    .line 753
    goto :goto_7

    .line 754
    :cond_f
    new-instance v4, Lr8/j;

    .line 755
    .line 756
    invoke-virtual {v12, v1, v15}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    const/4 v7, 0x0

    .line 761
    invoke-direct {v4, v1, v7}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    :goto_7
    iget-object v1, v4, Lr8/j;->a:Ljava/lang/Object;

    .line 765
    .line 766
    move-object v7, v1

    .line 767
    check-cast v7, Llb/w;

    .line 768
    .line 769
    iget-object v1, v4, Lr8/j;->b:Ljava/lang/Object;

    .line 770
    .line 771
    move-object v8, v1

    .line 772
    check-cast v8, Llb/w;

    .line 773
    .line 774
    move-object v1, v5

    .line 775
    const/4 v5, 0x0

    .line 776
    move-object v4, v2

    .line 777
    move-object/from16 v2, v28

    .line 778
    .line 779
    invoke-virtual/range {v2 .. v8}, Lia/o;->v(Ljava/util/ArrayList;Lga/b;ILba/y;Llb/w;Llb/w;)V

    .line 780
    .line 781
    .line 782
    goto :goto_8

    .line 783
    :cond_10
    move-object v4, v2

    .line 784
    move-object v1, v5

    .line 785
    move-object/from16 v2, v28

    .line 786
    .line 787
    :goto_8
    if-eqz v6, :cond_11

    .line 788
    .line 789
    const/16 v16, 0x1

    .line 790
    .line 791
    goto :goto_9

    .line 792
    :cond_11
    const/16 v16, 0x0

    .line 793
    .line 794
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    const/4 v5, 0x0

    .line 799
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 800
    .line 801
    .line 802
    move-result v6

    .line 803
    if-eqz v6, :cond_12

    .line 804
    .line 805
    add-int/lit8 v17, v5, 0x1

    .line 806
    .line 807
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v6

    .line 811
    check-cast v6, Lba/y;

    .line 812
    .line 813
    invoke-virtual {v6}, Lba/y;->f()Lba/c0;

    .line 814
    .line 815
    .line 816
    move-result-object v7

    .line 817
    invoke-virtual {v12, v7, v15}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 818
    .line 819
    .line 820
    move-result-object v7

    .line 821
    add-int v5, v5, v16

    .line 822
    .line 823
    const/4 v8, 0x0

    .line 824
    invoke-virtual/range {v2 .. v8}, Lia/o;->v(Ljava/util/ArrayList;Lga/b;ILba/y;Llb/w;Llb/w;)V

    .line 825
    .line 826
    .line 827
    move/from16 v5, v17

    .line 828
    .line 829
    goto :goto_a

    .line 830
    :cond_12
    :goto_b
    const/4 v5, 0x0

    .line 831
    goto :goto_c

    .line 832
    :cond_13
    move-object v4, v3

    .line 833
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 834
    .line 835
    goto :goto_b

    .line 836
    :goto_c
    invoke-virtual {v4, v5}, Lga/b;->L0(Z)V

    .line 837
    .line 838
    .line 839
    invoke-interface {v10}, Lv9/e;->d()Lea/o;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    invoke-static {v1, v13}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    sget-object v2, Lea/p;->b:Lea/o;

    .line 847
    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v2

    .line 852
    if-eqz v2, :cond_14

    .line 853
    .line 854
    sget-object v1, Lea/p;->c:Lea/o;

    .line 855
    .line 856
    invoke-static {v1, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    :cond_14
    invoke-virtual {v4, v3, v1}, Ly9/i;->Q0(Ljava/util/List;Lea/o;)V

    .line 860
    .line 861
    .line 862
    const/4 v7, 0x1

    .line 863
    invoke-virtual {v4, v7}, Lga/b;->K0(Z)V

    .line 864
    .line 865
    .line 866
    invoke-interface {v10}, Lv9/e;->n()Llb/a0;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    invoke-virtual {v4, v1}, Ly9/u;->M0(Llb/a0;)V

    .line 871
    .line 872
    .line 873
    iget-object v1, v9, Lba/a;->b:Ljava/lang/Object;

    .line 874
    .line 875
    check-cast v1, Lha/a;

    .line 876
    .line 877
    iget-object v1, v1, Lha/a;->g:Lfa/h;

    .line 878
    .line 879
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 880
    .line 881
    .line 882
    move-object v15, v4

    .line 883
    :goto_d
    invoke-static {v15}, Lp9/x1;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    :cond_15
    invoke-virtual {v0, v14, v4}, Lma/d;->e(Lba/a;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    return-object v0

    .line 896
    nop

    .line 897
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
