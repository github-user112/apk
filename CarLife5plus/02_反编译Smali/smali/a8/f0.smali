.class public final La8/f0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La8/f0;->a:I

    iput-object p2, p0, La8/f0;->b:Ljava/lang/Object;

    iput-object p3, p0, La8/f0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ly9/n;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, La8/f0;->a:I

    iput-object p1, p0, La8/f0;->c:Ljava/lang/Object;

    iput-object p2, p0, La8/f0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8/f0;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v6, v1

    .line 11
    check-cast v6, Ly9/o0;

    .line 12
    .line 13
    iget-object v1, v0, La8/f0;->c:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v5, v1

    .line 16
    check-cast v5, Ly9/i;

    .line 17
    .line 18
    new-instance v2, Ly9/o0;

    .line 19
    .line 20
    iget-object v3, v6, Ly9/o0;->D:Lkb/o;

    .line 21
    .line 22
    iget-object v4, v6, Ly9/o0;->E:Lv9/p0;

    .line 23
    .line 24
    move-object v1, v5

    .line 25
    check-cast v1, Lfb/a;

    .line 26
    .line 27
    invoke-virtual {v1}, Lfb/a;->getAnnotations()Lw9/h;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    move-object v1, v5

    .line 32
    check-cast v1, Ly9/u;

    .line 33
    .line 34
    invoke-virtual {v1}, Ly9/u;->f()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    const-string v9, "getKind(...)"

    .line 39
    .line 40
    invoke-static {v8, v9}, La2/f;->O(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v10, v6, Ly9/o0;->E:Lv9/p0;

    .line 44
    .line 45
    move-object v9, v10

    .line 46
    check-cast v9, Ly9/n;

    .line 47
    .line 48
    invoke-virtual {v9}, Ly9/n;->getSource()Lv9/m0;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    const-string v11, "getSource(...)"

    .line 53
    .line 54
    invoke-static {v9, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v2 .. v9}, Ly9/o0;-><init>(Lkb/o;Lv9/p0;Ly9/i;Ly9/n0;Lw9/h;ILv9/m0;)V

    .line 58
    .line 59
    .line 60
    sget-object v3, Ly9/o0;->G:Ly9/d0;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-object v3, v10

    .line 66
    check-cast v3, Ljb/u;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljb/u;->C0()Lv9/e;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const/4 v5, 0x0

    .line 73
    if-nez v4, :cond_0

    .line 74
    .line 75
    move-object v3, v5

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v3}, Ljb/u;->D0()Llb/a0;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v3}, Llb/s0;->d(Llb/w;)Llb/s0;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :goto_0
    if-nez v3, :cond_1

    .line 86
    .line 87
    move-object v2, v5

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    iget-object v4, v1, Ly9/u;->j:Ly9/v;

    .line 90
    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ly9/v;->D0(Llb/s0;)Ly9/v;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    :cond_2
    move-object v9, v5

    .line 98
    invoke-virtual {v1}, Ly9/u;->f0()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v4, "getContextReceiverParameters(...)"

    .line 103
    .line 104
    invoke-static {v1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move-object v4, v10

    .line 108
    new-instance v10, Ljava/util/ArrayList;

    .line 109
    .line 110
    const/16 v5, 0xa

    .line 111
    .line 112
    invoke-static {v1, v5}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Ly9/v;

    .line 134
    .line 135
    invoke-virtual {v5, v3}, Ly9/v;->D0(Llb/s0;)Ly9/v;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    move-object v1, v4

    .line 144
    check-cast v1, Ly9/f;

    .line 145
    .line 146
    invoke-virtual {v1}, Ly9/f;->q()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-virtual {v6}, Ly9/u;->S()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    iget-object v13, v6, Ly9/u;->g:Llb/w;

    .line 155
    .line 156
    invoke-static {v13}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    sget-object v14, Lv9/x;->b:Lv9/x;

    .line 160
    .line 161
    iget-object v15, v1, Ly9/f;->f:Lea/o;

    .line 162
    .line 163
    const/4 v8, 0x0

    .line 164
    move-object v7, v2

    .line 165
    invoke-virtual/range {v7 .. v15}, Ly9/u;->H0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    return-object v2

    .line 169
    :pswitch_0
    new-instance v1, Lub/f;

    .line 170
    .line 171
    invoke-direct {v1}, Lub/f;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v2, Ly9/u;

    .line 177
    .line 178
    invoke-virtual {v2}, Ly9/u;->m()Ljava/util/Collection;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_4

    .line 191
    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Lv9/t;

    .line 197
    .line 198
    iget-object v4, v0, La8/f0;->b:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v4, Llb/s0;

    .line 201
    .line 202
    invoke-interface {v3, v4}, Lv9/t;->e(Llb/s0;)Lv9/t;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v1, v3}, Lub/f;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_4
    return-object v1

    .line 211
    :pswitch_1
    sget-object v1, Llb/h0;->b:Lu0/j;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    sget-object v1, Llb/h0;->c:Llb/h0;

    .line 217
    .line 218
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v2, Ly9/h;

    .line 221
    .line 222
    invoke-virtual {v2}, Ly9/h;->t()Llb/k0;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 227
    .line 228
    new-instance v4, Leb/k;

    .line 229
    .line 230
    new-instance v5, La8/g0;

    .line 231
    .line 232
    const/16 v6, 0x1c

    .line 233
    .line 234
    invoke-direct {v5, v6, v0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    sget-object v6, Lkb/l;->e:Lkb/c;

    .line 238
    .line 239
    invoke-direct {v4, v6, v5}, Leb/k;-><init>(Lkb/o;Lf9/a;)V

    .line 240
    .line 241
    .line 242
    const/4 v5, 0x0

    .line 243
    invoke-static {v4, v3, v1, v2, v5}, Llb/c;->u(Leb/o;Ljava/util/List;Llb/h0;Llb/k0;Z)Llb/a0;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    return-object v1

    .line 248
    :pswitch_2
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v1, Lia/j;

    .line 251
    .line 252
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v2, Lv9/e;

    .line 255
    .line 256
    new-instance v3, Lia/j;

    .line 257
    .line 258
    iget-object v4, v1, Lia/j;->j:Lba/a;

    .line 259
    .line 260
    iget-object v5, v4, Lba/a;->b:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v5, Lha/a;

    .line 263
    .line 264
    new-instance v6, Lha/a;

    .line 265
    .line 266
    iget-object v7, v5, Lha/a;->a:Lkb/o;

    .line 267
    .line 268
    iget-object v8, v5, Lha/a;->b:Laa/b;

    .line 269
    .line 270
    iget-object v9, v5, Lha/a;->c:Laa/b;

    .line 271
    .line 272
    iget-object v10, v5, Lha/a;->d:Lna/f;

    .line 273
    .line 274
    iget-object v11, v5, Lha/a;->e:Lfa/h;

    .line 275
    .line 276
    iget-object v12, v5, Lha/a;->f:Lhb/m;

    .line 277
    .line 278
    iget-object v13, v5, Lha/a;->h:Lfa/h;

    .line 279
    .line 280
    iget-object v14, v5, Lha/a;->i:Lib/d;

    .line 281
    .line 282
    iget-object v15, v5, Lha/a;->j:Laa/e;

    .line 283
    .line 284
    move-object/from16 v16, v6

    .line 285
    .line 286
    iget-object v6, v5, Lha/a;->k:La2/d;

    .line 287
    .line 288
    move-object/from16 v17, v6

    .line 289
    .line 290
    iget-object v6, v5, Lha/a;->l:Lna/g;

    .line 291
    .line 292
    move-object/from16 v18, v6

    .line 293
    .line 294
    iget-object v6, v5, Lha/a;->m:Lv9/n0;

    .line 295
    .line 296
    move-object/from16 v19, v6

    .line 297
    .line 298
    iget-object v6, v5, Lha/a;->n:Lda/a;

    .line 299
    .line 300
    move-object/from16 v20, v6

    .line 301
    .line 302
    iget-object v6, v5, Lha/a;->o:Lv9/y;

    .line 303
    .line 304
    move-object/from16 v21, v6

    .line 305
    .line 306
    iget-object v6, v5, Lha/a;->p:Ls9/n;

    .line 307
    .line 308
    move-object/from16 v22, v6

    .line 309
    .line 310
    iget-object v6, v5, Lha/a;->q:Lea/b;

    .line 311
    .line 312
    move-object/from16 v23, v6

    .line 313
    .line 314
    iget-object v6, v5, Lha/a;->r:Lma/d;

    .line 315
    .line 316
    move-object/from16 v24, v6

    .line 317
    .line 318
    iget-object v6, v5, Lha/a;->s:Lea/l;

    .line 319
    .line 320
    move-object/from16 v25, v6

    .line 321
    .line 322
    iget-object v6, v5, Lha/a;->t:Lha/b;

    .line 323
    .line 324
    move-object/from16 v26, v6

    .line 325
    .line 326
    iget-object v6, v5, Lha/a;->u:Lmb/k;

    .line 327
    .line 328
    move-object/from16 v27, v6

    .line 329
    .line 330
    iget-object v6, v5, Lha/a;->v:Lea/u;

    .line 331
    .line 332
    iget-object v5, v5, Lha/a;->w:Lna/g;

    .line 333
    .line 334
    move-object/from16 v28, v27

    .line 335
    .line 336
    move-object/from16 v27, v6

    .line 337
    .line 338
    move-object/from16 v6, v16

    .line 339
    .line 340
    move-object/from16 v16, v17

    .line 341
    .line 342
    move-object/from16 v17, v18

    .line 343
    .line 344
    move-object/from16 v18, v19

    .line 345
    .line 346
    move-object/from16 v19, v20

    .line 347
    .line 348
    move-object/from16 v20, v21

    .line 349
    .line 350
    move-object/from16 v21, v22

    .line 351
    .line 352
    move-object/from16 v22, v23

    .line 353
    .line 354
    move-object/from16 v23, v24

    .line 355
    .line 356
    move-object/from16 v24, v25

    .line 357
    .line 358
    move-object/from16 v25, v26

    .line 359
    .line 360
    move-object/from16 v26, v28

    .line 361
    .line 362
    move-object/from16 v28, v5

    .line 363
    .line 364
    invoke-direct/range {v6 .. v28}, Lha/a;-><init>(Lkb/o;Laa/b;Laa/b;Lna/f;Lfa/h;Lhb/m;Lfa/h;Lib/d;Laa/e;La2/d;Lna/g;Lv9/n0;Lda/a;Lv9/y;Ls9/n;Lea/b;Lma/d;Lea/l;Lha/b;Lmb/k;Lea/u;Lna/g;)V

    .line 365
    .line 366
    .line 367
    new-instance v5, Lba/a;

    .line 368
    .line 369
    iget-object v7, v4, Lba/a;->c:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v7, Lha/f;

    .line 372
    .line 373
    iget-object v4, v4, Lba/a;->d:Ljava/lang/Object;

    .line 374
    .line 375
    invoke-direct {v5, v6, v7, v4}, Lba/a;-><init>(Lha/a;Lha/f;Lr8/h;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1}, Ly9/j;->k()Lv9/k;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    const-string v6, "getContainingDeclaration(...)"

    .line 383
    .line 384
    invoke-static {v4, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v1, v1, Lia/j;->h:Lba/p;

    .line 388
    .line 389
    invoke-direct {v3, v5, v4, v1, v2}, Lia/j;-><init>(Lba/a;Lv9/k;Lba/p;Lv9/e;)V

    .line 390
    .line 391
    .line 392
    return-object v3

    .line 393
    :pswitch_3
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v1, Lu9/m;

    .line 396
    .line 397
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v2, Lkb/l;

    .line 400
    .line 401
    invoke-virtual {v1}, Lu9/m;->g()Lu9/h;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    iget-object v3, v3, Lu9/h;->a:Ly9/a0;

    .line 406
    .line 407
    sget-object v4, Lu9/g;->d:Lu9/e;

    .line 408
    .line 409
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    sget-object v4, Lu9/g;->h:Lua/b;

    .line 413
    .line 414
    new-instance v5, Lba/a;

    .line 415
    .line 416
    invoke-virtual {v1}, Lu9/m;->g()Lu9/h;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    iget-object v1, v1, Lu9/h;->a:Ly9/a0;

    .line 421
    .line 422
    invoke-direct {v5, v2, v1}, Lba/a;-><init>(Lkb/l;Lv9/y;)V

    .line 423
    .line 424
    .line 425
    invoke-static {v3, v4, v5}, Lv9/v;->f(Lv9/y;Lua/b;Lba/a;)Lv9/e;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-interface {v1}, Lv9/e;->n()Llb/a0;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    return-object v1

    .line 434
    :pswitch_4
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v1, Lu9/i;

    .line 437
    .line 438
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v2, Lkb/l;

    .line 441
    .line 442
    new-instance v3, Lu9/m;

    .line 443
    .line 444
    invoke-virtual {v1}, Ls9/i;->l()Ly9/a0;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    const-string v5, "getBuiltInsModule(...)"

    .line 449
    .line 450
    invoke-static {v4, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    new-instance v5, La8/g0;

    .line 454
    .line 455
    const/16 v6, 0x17

    .line 456
    .line 457
    invoke-direct {v5, v6, v1}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    invoke-direct {v3, v4, v2, v5}, Lu9/m;-><init>(Ly9/a0;Lkb/l;La8/g0;)V

    .line 461
    .line 462
    .line 463
    return-object v3

    .line 464
    :pswitch_5
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v1, Lu9/g;

    .line 467
    .line 468
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 469
    .line 470
    move-object v9, v2

    .line 471
    check-cast v9, Lkb/l;

    .line 472
    .line 473
    new-instance v3, Ly9/k;

    .line 474
    .line 475
    iget-object v2, v1, Lu9/g;->b:Lf9/k;

    .line 476
    .line 477
    iget-object v1, v1, Lu9/g;->a:Ly9/a0;

    .line 478
    .line 479
    invoke-interface {v2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    move-object v4, v2

    .line 484
    check-cast v4, Lv9/k;

    .line 485
    .line 486
    sget-object v5, Lu9/g;->g:Lua/e;

    .line 487
    .line 488
    iget-object v1, v1, Ly9/a0;->d:Ls9/i;

    .line 489
    .line 490
    invoke-virtual {v1}, Ls9/i;->e()Llb/a0;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    sget-object v6, Lv9/x;->e:Lv9/x;

    .line 499
    .line 500
    sget-object v7, Lv9/f;->b:Lv9/f;

    .line 501
    .line 502
    invoke-direct/range {v3 .. v9}, Ly9/k;-><init>(Lv9/k;Lua/e;Lv9/x;Lv9/f;Ljava/util/List;Lkb/o;)V

    .line 503
    .line 504
    .line 505
    new-instance v1, Lu9/a;

    .line 506
    .line 507
    invoke-direct {v1, v9, v3}, Leb/h;-><init>(Lkb/l;Ly9/b;)V

    .line 508
    .line 509
    .line 510
    sget-object v2, Ls8/y;->a:Ls8/y;

    .line 511
    .line 512
    const/4 v4, 0x0

    .line 513
    invoke-virtual {v3, v1, v2, v4}, Ly9/k;->B0(Leb/o;Ljava/util/Set;Ly9/i;)V

    .line 514
    .line 515
    .line 516
    return-object v3

    .line 517
    :pswitch_6
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v1, Ljava/lang/Class;

    .line 520
    .line 521
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v2, Ljava/util/Map;

    .line 524
    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    const/16 v3, 0x40

    .line 531
    .line 532
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    move-object v3, v1

    .line 547
    check-cast v3, Ljava/lang/Iterable;

    .line 548
    .line 549
    sget-object v8, Lq9/e;->a:Lq9/e;

    .line 550
    .line 551
    const/16 v9, 0x30

    .line 552
    .line 553
    const-string v5, ", "

    .line 554
    .line 555
    const-string v6, "("

    .line 556
    .line 557
    const-string v7, ")"

    .line 558
    .line 559
    invoke-static/range {v3 .. v9}, Ls8/p;->h0(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    return-object v1

    .line 567
    :pswitch_7
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 568
    .line 569
    check-cast v1, Lp9/r1;

    .line 570
    .line 571
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast v2, Lf9/a;

    .line 574
    .line 575
    iget-object v3, v1, Lp9/r1;->a:Llb/w;

    .line 576
    .line 577
    invoke-virtual {v3}, Llb/w;->B0()Ljava/util/List;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    if-eqz v4, :cond_5

    .line 586
    .line 587
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 588
    .line 589
    goto/16 :goto_7

    .line 590
    .line 591
    :cond_5
    new-instance v4, Lp9/q1;

    .line 592
    .line 593
    const/4 v5, 0x1

    .line 594
    invoke-direct {v4, v1, v5}, Lp9/q1;-><init>(Lp9/r1;I)V

    .line 595
    .line 596
    .line 597
    sget-object v5, Lr8/i;->a:Lr8/i;

    .line 598
    .line 599
    invoke-static {v5, v4}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    new-instance v5, Ljava/util/ArrayList;

    .line 604
    .line 605
    const/16 v6, 0xa

    .line 606
    .line 607
    invoke-static {v3, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 608
    .line 609
    .line 610
    move-result v6

    .line 611
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 612
    .line 613
    .line 614
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    const/4 v6, 0x0

    .line 619
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 620
    .line 621
    .line 622
    move-result v7

    .line 623
    if-eqz v7, :cond_c

    .line 624
    .line 625
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    add-int/lit8 v8, v6, 0x1

    .line 630
    .line 631
    const/4 v9, 0x0

    .line 632
    if-ltz v6, :cond_b

    .line 633
    .line 634
    check-cast v7, Llb/n0;

    .line 635
    .line 636
    invoke-virtual {v7}, Llb/n0;->c()Z

    .line 637
    .line 638
    .line 639
    move-result v10

    .line 640
    if-eqz v10, :cond_6

    .line 641
    .line 642
    sget-object v6, Lm9/x;->c:Lm9/x;

    .line 643
    .line 644
    goto :goto_6

    .line 645
    :cond_6
    new-instance v10, Lp9/r1;

    .line 646
    .line 647
    invoke-virtual {v7}, Llb/n0;->b()Llb/w;

    .line 648
    .line 649
    .line 650
    move-result-object v11

    .line 651
    const-string v12, "getType(...)"

    .line 652
    .line 653
    invoke-static {v11, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    if-nez v2, :cond_7

    .line 657
    .line 658
    goto :goto_5

    .line 659
    :cond_7
    new-instance v9, Lhb/q;

    .line 660
    .line 661
    invoke-direct {v9, v1, v6, v4}, Lhb/q;-><init>(Lp9/r1;ILr8/h;)V

    .line 662
    .line 663
    .line 664
    :goto_5
    invoke-direct {v10, v11, v9}, Lp9/r1;-><init>(Llb/w;Lf9/a;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v7}, Llb/n0;->a()Llb/y0;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 672
    .line 673
    .line 674
    move-result v6

    .line 675
    if-eqz v6, :cond_a

    .line 676
    .line 677
    const/4 v7, 0x1

    .line 678
    if-eq v6, v7, :cond_9

    .line 679
    .line 680
    const/4 v7, 0x2

    .line 681
    if-ne v6, v7, :cond_8

    .line 682
    .line 683
    new-instance v6, Lm9/x;

    .line 684
    .line 685
    sget-object v7, Lm9/y;->c:Lm9/y;

    .line 686
    .line 687
    invoke-direct {v6, v7, v10}, Lm9/x;-><init>(Lm9/y;Lp9/r1;)V

    .line 688
    .line 689
    .line 690
    goto :goto_6

    .line 691
    :cond_8
    new-instance v1, Lac/p;

    .line 692
    .line 693
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 694
    .line 695
    .line 696
    throw v1

    .line 697
    :cond_9
    new-instance v6, Lm9/x;

    .line 698
    .line 699
    sget-object v7, Lm9/y;->b:Lm9/y;

    .line 700
    .line 701
    invoke-direct {v6, v7, v10}, Lm9/x;-><init>(Lm9/y;Lp9/r1;)V

    .line 702
    .line 703
    .line 704
    goto :goto_6

    .line 705
    :cond_a
    new-instance v6, Lm9/x;

    .line 706
    .line 707
    sget-object v7, Lm9/y;->a:Lm9/y;

    .line 708
    .line 709
    invoke-direct {v6, v7, v10}, Lm9/x;-><init>(Lm9/y;Lp9/r1;)V

    .line 710
    .line 711
    .line 712
    :goto_6
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move v6, v8

    .line 716
    goto :goto_4

    .line 717
    :cond_b
    invoke-static {}, Lp9/x1;->L()V

    .line 718
    .line 719
    .line 720
    throw v9

    .line 721
    :cond_c
    move-object v1, v5

    .line 722
    :goto_7
    return-object v1

    .line 723
    :pswitch_8
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast v1, Lp9/j0;

    .line 726
    .line 727
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v2, Ljava/lang/String;

    .line 730
    .line 731
    iget-object v3, v1, Lp9/j0;->c:Lp9/h0;

    .line 732
    .line 733
    iget-object v1, v1, Lp9/j0;->d:Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    .line 737
    .line 738
    const-string v4, "signature"

    .line 739
    .line 740
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    const-string v4, "<init>"

    .line 744
    .line 745
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v4

    .line 749
    if-eqz v4, :cond_10

    .line 750
    .line 751
    invoke-virtual {v3}, Lp9/h0;->e()Ljava/util/Collection;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    check-cast v4, Ljava/lang/Iterable;

    .line 756
    .line 757
    invoke-static {v4}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 758
    .line 759
    .line 760
    move-result-object v4

    .line 761
    new-instance v5, Ljava/util/ArrayList;

    .line 762
    .line 763
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .line 765
    .line 766
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    :cond_d
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 771
    .line 772
    .line 773
    move-result v7

    .line 774
    if-eqz v7, :cond_13

    .line 775
    .line 776
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v7

    .line 780
    move-object v8, v7

    .line 781
    check-cast v8, Lv9/j;

    .line 782
    .line 783
    invoke-interface {v8}, Lv9/j;->y()Z

    .line 784
    .line 785
    .line 786
    move-result v9

    .line 787
    if-eqz v9, :cond_f

    .line 788
    .line 789
    invoke-interface {v8}, Lv9/j;->k()Lv9/i;

    .line 790
    .line 791
    .line 792
    move-result-object v9

    .line 793
    const-string v10, "getContainingDeclaration(...)"

    .line 794
    .line 795
    invoke-static {v9, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    invoke-static {v9}, Lxa/f;->d(Lv9/k;)Z

    .line 799
    .line 800
    .line 801
    move-result v9

    .line 802
    if-eqz v9, :cond_f

    .line 803
    .line 804
    invoke-static {v8}, Lp9/a2;->c(Lv9/t;)Lp9/l;

    .line 805
    .line 806
    .line 807
    move-result-object v9

    .line 808
    invoke-virtual {v9}, Lp9/l;->d()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v9

    .line 812
    const-string v11, "constructor-impl"

    .line 813
    .line 814
    invoke-static {v9, v11}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 815
    .line 816
    .line 817
    move-result v11

    .line 818
    if-eqz v11, :cond_e

    .line 819
    .line 820
    const-string v11, ")V"

    .line 821
    .line 822
    invoke-static {v9, v11}, Lxb/p;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 823
    .line 824
    .line 825
    move-result v11

    .line 826
    if-eqz v11, :cond_e

    .line 827
    .line 828
    new-instance v11, Ljava/lang/StringBuilder;

    .line 829
    .line 830
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .line 832
    .line 833
    const-string v12, "V"

    .line 834
    .line 835
    invoke-static {v9, v12}, Lxb/i;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v9

    .line 839
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-interface {v8}, Lv9/j;->k()Lv9/i;

    .line 843
    .line 844
    .line 845
    move-result-object v8

    .line 846
    invoke-static {v8, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    invoke-static {v8}, Lbb/e;->f(Lv9/h;)Lua/b;

    .line 850
    .line 851
    .line 852
    move-result-object v8

    .line 853
    invoke-static {v8}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v8}, Lua/b;->b()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v8

    .line 860
    invoke-static {v8}, Lta/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v8

    .line 864
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v8

    .line 871
    goto :goto_9

    .line 872
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 873
    .line 874
    const-string v2, "Invalid signature of "

    .line 875
    .line 876
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    const-string v2, ": "

    .line 883
    .line 884
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 895
    .line 896
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    throw v2

    .line 904
    :cond_f
    invoke-static {v8}, Lp9/a2;->c(Lv9/t;)Lp9/l;

    .line 905
    .line 906
    .line 907
    move-result-object v8

    .line 908
    invoke-virtual {v8}, Lp9/l;->d()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v8

    .line 912
    :goto_9
    invoke-static {v8, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v8

    .line 916
    if-eqz v8, :cond_d

    .line 917
    .line 918
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    goto/16 :goto_8

    .line 922
    .line 923
    :cond_10
    invoke-static {v2}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 924
    .line 925
    .line 926
    move-result-object v4

    .line 927
    invoke-virtual {v3, v4}, Lp9/h0;->f(Lua/e;)Ljava/util/Collection;

    .line 928
    .line 929
    .line 930
    move-result-object v4

    .line 931
    move-object v5, v4

    .line 932
    check-cast v5, Ljava/lang/Iterable;

    .line 933
    .line 934
    new-instance v6, Ljava/util/ArrayList;

    .line 935
    .line 936
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .line 938
    .line 939
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    :cond_11
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 944
    .line 945
    .line 946
    move-result v7

    .line 947
    if-eqz v7, :cond_12

    .line 948
    .line 949
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v7

    .line 953
    move-object v8, v7

    .line 954
    check-cast v8, Lv9/t;

    .line 955
    .line 956
    invoke-static {v8}, Lp9/a2;->c(Lv9/t;)Lp9/l;

    .line 957
    .line 958
    .line 959
    move-result-object v8

    .line 960
    invoke-virtual {v8}, Lp9/l;->d()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v8

    .line 964
    invoke-static {v8, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v8

    .line 968
    if-eqz v8, :cond_11

    .line 969
    .line 970
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    goto :goto_a

    .line 974
    :cond_12
    move-object v5, v6

    .line 975
    :cond_13
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 976
    .line 977
    .line 978
    move-result v6

    .line 979
    const/4 v7, 0x1

    .line 980
    if-eq v6, v7, :cond_15

    .line 981
    .line 982
    move-object v8, v4

    .line 983
    check-cast v8, Ljava/lang/Iterable;

    .line 984
    .line 985
    sget-object v12, Lp9/b;->g:Lp9/b;

    .line 986
    .line 987
    const/16 v13, 0x1e

    .line 988
    .line 989
    const-string v9, "\n"

    .line 990
    .line 991
    const/4 v10, 0x0

    .line 992
    const/4 v11, 0x0

    .line 993
    invoke-static/range {v8 .. v13}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v4

    .line 997
    new-instance v5, Lac/y;

    .line 998
    .line 999
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    const-string v7, "Function \'"

    .line 1002
    .line 1003
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    const-string v2, "\' (JVM signature: "

    .line 1010
    .line 1011
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    const-string v1, ") not resolved in "

    .line 1018
    .line 1019
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    const/16 v1, 0x3a

    .line 1026
    .line 1027
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1031
    .line 1032
    .line 1033
    move-result v1

    .line 1034
    if-nez v1, :cond_14

    .line 1035
    .line 1036
    const-string v1, " no members found"

    .line 1037
    .line 1038
    goto :goto_b

    .line 1039
    :cond_14
    const-string v1, "\n"

    .line 1040
    .line 1041
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    :goto_b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    const/4 v2, 0x2

    .line 1053
    invoke-direct {v5, v2, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    throw v5

    .line 1057
    :cond_15
    invoke-static {v5}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    check-cast v1, Lv9/t;

    .line 1062
    .line 1063
    return-object v1

    .line 1064
    :pswitch_9
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1065
    .line 1066
    check-cast v1, Lmb/i;

    .line 1067
    .line 1068
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1069
    .line 1070
    check-cast v2, Lmb/f;

    .line 1071
    .line 1072
    iget-object v1, v1, Lmb/i;->e:Ljava/lang/Object;

    .line 1073
    .line 1074
    invoke-interface {v1}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v1

    .line 1078
    check-cast v1, Ljava/util/List;

    .line 1079
    .line 1080
    if-nez v1, :cond_16

    .line 1081
    .line 1082
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 1083
    .line 1084
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    .line 1085
    .line 1086
    const/16 v4, 0xa

    .line 1087
    .line 1088
    invoke-static {v1, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 1089
    .line 1090
    .line 1091
    move-result v4

    .line 1092
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1093
    .line 1094
    .line 1095
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1100
    .line 1101
    .line 1102
    move-result v4

    .line 1103
    if-eqz v4, :cond_17

    .line 1104
    .line 1105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v4

    .line 1109
    check-cast v4, Llb/x0;

    .line 1110
    .line 1111
    invoke-virtual {v4, v2}, Llb/x0;->I0(Lmb/f;)Llb/x0;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v4

    .line 1115
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    .line 1117
    .line 1118
    goto :goto_c

    .line 1119
    :cond_17
    return-object v3

    .line 1120
    :pswitch_a
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1121
    .line 1122
    check-cast v1, Lmb/f;

    .line 1123
    .line 1124
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1125
    .line 1126
    check-cast v2, Llb/y;

    .line 1127
    .line 1128
    iget-object v2, v2, Llb/y;->c:Lf9/a;

    .line 1129
    .line 1130
    invoke-interface {v2}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v2

    .line 1134
    check-cast v2, Lob/d;

    .line 1135
    .line 1136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1137
    .line 1138
    .line 1139
    const-string v1, "type"

    .line 1140
    .line 1141
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    check-cast v2, Llb/w;

    .line 1145
    .line 1146
    return-object v2

    .line 1147
    :pswitch_b
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1148
    .line 1149
    check-cast v1, Ljb/i;

    .line 1150
    .line 1151
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1152
    .line 1153
    check-cast v2, Lpa/v;

    .line 1154
    .line 1155
    iget-object v3, v1, Ljb/i;->l:Lhb/k;

    .line 1156
    .line 1157
    iget-object v3, v3, Lhb/k;->a:Lhb/i;

    .line 1158
    .line 1159
    iget-object v3, v3, Lhb/i;->e:Lhb/a;

    .line 1160
    .line 1161
    iget-object v1, v1, Ljb/i;->v:Lhb/u;

    .line 1162
    .line 1163
    invoke-interface {v3, v1, v2}, Lhb/c;->w(Lhb/w;Lpa/v;)Ljava/util/List;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    invoke-static {v1}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v1

    .line 1171
    return-object v1

    .line 1172
    :pswitch_c
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1173
    .line 1174
    check-cast v1, Lj8/k0;

    .line 1175
    .line 1176
    iget-object v2, v1, Lj8/k0;->e:Lf9/a;

    .line 1177
    .line 1178
    invoke-interface {v2}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v2

    .line 1182
    check-cast v2, Ljava/lang/Boolean;

    .line 1183
    .line 1184
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1185
    .line 1186
    .line 1187
    move-result v2

    .line 1188
    if-eqz v2, :cond_18

    .line 1189
    .line 1190
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1191
    .line 1192
    check-cast v2, Lf9/k;

    .line 1193
    .line 1194
    invoke-interface {v2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    :cond_18
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 1198
    .line 1199
    return-object v1

    .line 1200
    :pswitch_d
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1201
    .line 1202
    check-cast v1, Lba/a;

    .line 1203
    .line 1204
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1205
    .line 1206
    check-cast v2, Lia/v;

    .line 1207
    .line 1208
    iget-object v1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 1209
    .line 1210
    check-cast v1, Lha/a;

    .line 1211
    .line 1212
    iget-object v1, v1, Lha/a;->b:Laa/b;

    .line 1213
    .line 1214
    iget-object v2, v2, Lia/v;->o:Lia/q;

    .line 1215
    .line 1216
    iget-object v2, v2, Ly9/c0;->e:Lua/c;

    .line 1217
    .line 1218
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    .line 1220
    .line 1221
    const-string v1, "packageFqName"

    .line 1222
    .line 1223
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    const/4 v1, 0x0

    .line 1227
    return-object v1

    .line 1228
    :pswitch_e
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1229
    .line 1230
    check-cast v1, Lp/h3;

    .line 1231
    .line 1232
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1233
    .line 1234
    check-cast v2, Lpa/s0;

    .line 1235
    .line 1236
    iget-object v1, v1, Lp/h3;->b:Ljava/lang/Object;

    .line 1237
    .line 1238
    check-cast v1, Lhb/k;

    .line 1239
    .line 1240
    iget-object v3, v1, Lhb/k;->a:Lhb/i;

    .line 1241
    .line 1242
    iget-object v3, v3, Lhb/i;->e:Lhb/a;

    .line 1243
    .line 1244
    iget-object v1, v1, Lhb/k;->b:Lra/f;

    .line 1245
    .line 1246
    invoke-interface {v3, v2, v1}, Lhb/c;->E0(Lpa/s0;Lra/f;)Ljava/util/ArrayList;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v1

    .line 1250
    return-object v1

    .line 1251
    :pswitch_f
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1252
    .line 1253
    check-cast v1, Lha/d;

    .line 1254
    .line 1255
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1256
    .line 1257
    check-cast v2, Lba/z;

    .line 1258
    .line 1259
    new-instance v3, Lia/q;

    .line 1260
    .line 1261
    iget-object v1, v1, Lha/d;->a:Lba/a;

    .line 1262
    .line 1263
    invoke-direct {v3, v1, v2}, Lia/q;-><init>(Lba/a;Lba/z;)V

    .line 1264
    .line 1265
    .line 1266
    return-object v3

    .line 1267
    :pswitch_10
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1268
    .line 1269
    check-cast v1, Lba/a;

    .line 1270
    .line 1271
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1272
    .line 1273
    check-cast v2, Lw9/h;

    .line 1274
    .line 1275
    const-string v3, "<this>"

    .line 1276
    .line 1277
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    const-string v3, "additionalAnnotations"

    .line 1281
    .line 1282
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    iget-object v3, v1, Lba/a;->b:Ljava/lang/Object;

    .line 1286
    .line 1287
    check-cast v3, Lha/a;

    .line 1288
    .line 1289
    iget-object v3, v3, Lha/a;->q:Lea/b;

    .line 1290
    .line 1291
    iget-object v1, v1, Lba/a;->d:Ljava/lang/Object;

    .line 1292
    .line 1293
    invoke-interface {v1}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v1

    .line 1297
    check-cast v1, Lea/v;

    .line 1298
    .line 1299
    invoke-virtual {v3, v1, v2}, Lea/b;->b(Lea/v;Lw9/h;)Lea/v;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v1

    .line 1303
    return-object v1

    .line 1304
    :pswitch_11
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1305
    .line 1306
    check-cast v1, Lba/a;

    .line 1307
    .line 1308
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1309
    .line 1310
    check-cast v2, Lv9/g;

    .line 1311
    .line 1312
    invoke-interface {v2}, Lw9/a;->getAnnotations()Lw9/h;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v2

    .line 1316
    const-string v3, "<this>"

    .line 1317
    .line 1318
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    const-string v3, "additionalAnnotations"

    .line 1322
    .line 1323
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    iget-object v3, v1, Lba/a;->b:Ljava/lang/Object;

    .line 1327
    .line 1328
    check-cast v3, Lha/a;

    .line 1329
    .line 1330
    iget-object v3, v3, Lha/a;->q:Lea/b;

    .line 1331
    .line 1332
    iget-object v1, v1, Lba/a;->d:Ljava/lang/Object;

    .line 1333
    .line 1334
    invoke-interface {v1}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v1

    .line 1338
    check-cast v1, Lea/v;

    .line 1339
    .line 1340
    invoke-virtual {v3, v1, v2}, Lea/b;->b(Lea/v;Lw9/h;)Lea/v;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v1

    .line 1344
    return-object v1

    .line 1345
    :pswitch_12
    iget-object v1, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1346
    .line 1347
    check-cast v1, Lba/a;

    .line 1348
    .line 1349
    iget-object v2, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1350
    .line 1351
    check-cast v2, Lfa/b;

    .line 1352
    .line 1353
    iget-object v1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 1354
    .line 1355
    check-cast v1, Lha/a;

    .line 1356
    .line 1357
    iget-object v1, v1, Lha/a;->o:Lv9/y;

    .line 1358
    .line 1359
    invoke-interface {v1}, Lv9/y;->j()Ls9/i;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v1

    .line 1363
    iget-object v2, v2, Lfa/b;->a:Lua/c;

    .line 1364
    .line 1365
    invoke-virtual {v1, v2}, Ls9/i;->j(Lua/c;)Lv9/e;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v1

    .line 1369
    invoke-interface {v1}, Lv9/e;->n()Llb/a0;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v1

    .line 1373
    const-string v2, "getDefaultType(...)"

    .line 1374
    .line 1375
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1376
    .line 1377
    .line 1378
    return-object v1

    .line 1379
    :pswitch_13
    iget-object v1, v0, La8/f0;->c:Ljava/lang/Object;

    .line 1380
    .line 1381
    check-cast v1, Lf1/b1;

    .line 1382
    .line 1383
    iget-object v2, v0, La8/f0;->b:Ljava/lang/Object;

    .line 1384
    .line 1385
    check-cast v2, Lz7/v1;

    .line 1386
    .line 1387
    invoke-interface {v2}, Lz7/v1;->getName()Ljava/lang/String;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v2

    .line 1391
    invoke-interface {v1, v2}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 1392
    .line 1393
    .line 1394
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 1395
    .line 1396
    return-object v1

    .line 1397
    :pswitch_data_0
    .packed-switch 0x0
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
