.class public final Ljb/i;
.super Ly9/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/k;


# instance fields
.field public final e:Lpa/k;

.field public final f:Lra/a;

.field public final g:Lv9/m0;

.field public final h:Lua/b;

.field public final i:Lv9/x;

.field public final j:Lea/o;

.field public final k:Lv9/f;

.field public final l:Lhb/k;

.field public final m:Leb/p;

.field public final n:Lia/h;

.field public final o:Lv9/l0;

.field public final p:Lba/a;

.field public final q:Lv9/k;

.field public final r:Lkb/i;

.field public final s:Lkb/j;

.field public final t:Lkb/j;

.field public final u:Lkb/i;

.field public final v:Lhb/u;

.field public final w:Lw9/h;


# direct methods
.method public constructor <init>(Lhb/k;Lpa/k;Lra/f;Lra/a;Lv9/m0;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v10, p5

    .line 10
    .line 11
    const-string v2, "outerContext"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "classProto"

    .line 17
    .line 18
    invoke-static {v9, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "nameResolver"

    .line 22
    .line 23
    invoke-static {v3, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "sourceElement"

    .line 27
    .line 28
    invoke-static {v10, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lhb/k;->a:Lhb/i;

    .line 32
    .line 33
    iget-object v2, v2, Lhb/i;->a:Lkb/l;

    .line 34
    .line 35
    iget v4, v9, Lpa/k;->e:I

    .line 36
    .line 37
    invoke-static {v3, v4}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lua/b;->f()Lua/e;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v1, v2, v4}, Ly9/b;-><init>(Lkb/o;Lua/e;)V

    .line 46
    .line 47
    .line 48
    iput-object v9, v1, Ljb/i;->e:Lpa/k;

    .line 49
    .line 50
    move-object/from16 v6, p4

    .line 51
    .line 52
    iput-object v6, v1, Ljb/i;->f:Lra/a;

    .line 53
    .line 54
    iput-object v10, v1, Ljb/i;->g:Lv9/m0;

    .line 55
    .line 56
    iget v2, v9, Lpa/k;->e:I

    .line 57
    .line 58
    invoke-static {v3, v2}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, v1, Ljb/i;->h:Lua/b;

    .line 63
    .line 64
    sget-object v2, Lra/d;->e:Lra/c;

    .line 65
    .line 66
    iget v4, v9, Lpa/k;->d:I

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Lra/c;->i(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lpa/c0;

    .line 73
    .line 74
    invoke-static {v2}, Lhb/j;->e(Lpa/c0;)Lv9/x;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object v2, v1, Ljb/i;->i:Lv9/x;

    .line 79
    .line 80
    sget-object v2, Lra/d;->d:Lra/c;

    .line 81
    .line 82
    iget v4, v9, Lpa/k;->d:I

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Lra/c;->i(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lpa/g1;

    .line 89
    .line 90
    invoke-static {v2}, Lm9/e0;->X(Lpa/g1;)Lea/o;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iput-object v2, v1, Ljb/i;->j:Lea/o;

    .line 95
    .line 96
    sget-object v2, Lra/d;->f:Lra/c;

    .line 97
    .line 98
    iget v4, v9, Lpa/k;->d:I

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Lra/c;->i(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lpa/j;

    .line 105
    .line 106
    if-nez v2, :cond_0

    .line 107
    .line 108
    const/4 v2, -0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    sget-object v4, Lhb/x;->b:[I

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    aget v2, v4, v2

    .line 117
    .line 118
    :goto_0
    sget-object v11, Lv9/f;->c:Lv9/f;

    .line 119
    .line 120
    sget-object v4, Lv9/f;->a:Lv9/f;

    .line 121
    .line 122
    packed-switch v2, :pswitch_data_0

    .line 123
    .line 124
    .line 125
    :goto_1
    :pswitch_0
    move-object v12, v4

    .line 126
    goto :goto_2

    .line 127
    :pswitch_1
    sget-object v4, Lv9/f;->f:Lv9/f;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :pswitch_2
    sget-object v4, Lv9/f;->e:Lv9/f;

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_3
    sget-object v4, Lv9/f;->d:Lv9/f;

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :pswitch_4
    move-object v12, v11

    .line 137
    goto :goto_2

    .line 138
    :pswitch_5
    sget-object v4, Lv9/f;->b:Lv9/f;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :goto_2
    iput-object v12, v1, Ljb/i;->k:Lv9/f;

    .line 142
    .line 143
    iget-object v2, v9, Lpa/k;->g:Ljava/util/List;

    .line 144
    .line 145
    const-string v4, "getTypeParameterList(...)"

    .line 146
    .line 147
    invoke-static {v2, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    new-instance v4, Lra/g;

    .line 151
    .line 152
    iget-object v5, v9, Lpa/k;->E:Lpa/y0;

    .line 153
    .line 154
    const-string v7, "getTypeTable(...)"

    .line 155
    .line 156
    invoke-static {v5, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v4, v5}, Lra/g;-><init>(Lpa/y0;)V

    .line 160
    .line 161
    .line 162
    iget-object v5, v9, Lpa/k;->G:Lpa/f1;

    .line 163
    .line 164
    const-string v7, "getVersionRequirementTable(...)"

    .line 165
    .line 166
    invoke-static {v5, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v7, v5, Lpa/f1;->b:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-nez v7, :cond_1

    .line 176
    .line 177
    sget-object v5, Lra/h;->a:Lra/h;

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_1
    new-instance v7, Lra/h;

    .line 181
    .line 182
    iget-object v5, v5, Lpa/f1;->b:Ljava/util/List;

    .line 183
    .line 184
    const-string v8, "getRequirementList(...)"

    .line 185
    .line 186
    invoke-static {v5, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    move-object v5, v7

    .line 193
    :goto_3
    invoke-virtual/range {v0 .. v6}, Lhb/k;->a(Lv9/k;Ljava/util/List;Lra/f;Lra/g;Lra/h;Lra/a;)Lhb/k;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    move-object v14, v0

    .line 198
    iget-object v0, v13, Lhb/k;->a:Lhb/i;

    .line 199
    .line 200
    iput-object v13, v1, Ljb/i;->l:Lhb/k;

    .line 201
    .line 202
    sget-object v2, Lra/d;->m:Lra/b;

    .line 203
    .line 204
    iget v3, v9, Lpa/k;->d:I

    .line 205
    .line 206
    invoke-virtual {v2, v3}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-ne v12, v11, :cond_4

    .line 215
    .line 216
    if-nez v2, :cond_3

    .line 217
    .line 218
    iget-object v2, v0, Lhb/i;->s:Lhb/l;

    .line 219
    .line 220
    invoke-interface {v2}, Lhb/l;->d()Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_2

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_2
    const/4 v2, 0x0

    .line 234
    goto :goto_5

    .line 235
    :cond_3
    :goto_4
    const/4 v2, 0x1

    .line 236
    :goto_5
    new-instance v3, Leb/s;

    .line 237
    .line 238
    iget-object v4, v0, Lhb/i;->a:Lkb/l;

    .line 239
    .line 240
    invoke-direct {v3, v4, v1, v2}, Leb/s;-><init>(Lkb/l;Ljb/i;Z)V

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_4
    sget-object v3, Leb/n;->b:Leb/n;

    .line 245
    .line 246
    :goto_6
    iput-object v3, v1, Ljb/i;->m:Leb/p;

    .line 247
    .line 248
    new-instance v2, Lia/h;

    .line 249
    .line 250
    invoke-direct {v2, v1}, Lia/h;-><init>(Ljb/i;)V

    .line 251
    .line 252
    .line 253
    iput-object v2, v1, Ljb/i;->n:Lia/h;

    .line 254
    .line 255
    sget-object v15, Lv9/l0;->d:Lv9/n0;

    .line 256
    .line 257
    iget-object v2, v0, Lhb/i;->a:Lkb/l;

    .line 258
    .line 259
    iget-object v3, v0, Lhb/i;->a:Lkb/l;

    .line 260
    .line 261
    iget-object v0, v0, Lhb/i;->q:Lmb/k;

    .line 262
    .line 263
    check-cast v0, Lmb/l;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    new-instance v0, Lac/y0;

    .line 269
    .line 270
    const/4 v7, 0x0

    .line 271
    const/4 v8, 0x3

    .line 272
    const/4 v1, 0x1

    .line 273
    move-object v4, v3

    .line 274
    const-class v3, Ljb/h;

    .line 275
    .line 276
    move-object v5, v4

    .line 277
    const-string v4, "<init>"

    .line 278
    .line 279
    move-object v6, v5

    .line 280
    const-string v5, "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V"

    .line 281
    .line 282
    move-object/from16 v16, v6

    .line 283
    .line 284
    const/4 v6, 0x0

    .line 285
    move-object v9, v2

    .line 286
    move-object/from16 v2, p0

    .line 287
    .line 288
    invoke-direct/range {v0 .. v8}, Lac/y0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 289
    .line 290
    .line 291
    move-object v6, v2

    .line 292
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    const-string v1, "storageManager"

    .line 296
    .line 297
    invoke-static {v9, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    new-instance v1, Lv9/l0;

    .line 301
    .line 302
    invoke-direct {v1, v6, v9, v0}, Lv9/l0;-><init>(Ly9/b;Lkb/o;Lf9/k;)V

    .line 303
    .line 304
    .line 305
    iput-object v1, v6, Ljb/i;->o:Lv9/l0;

    .line 306
    .line 307
    const/4 v0, 0x0

    .line 308
    if-ne v12, v11, :cond_5

    .line 309
    .line 310
    new-instance v1, Lba/a;

    .line 311
    .line 312
    invoke-direct {v1, v6}, Lba/a;-><init>(Ljb/i;)V

    .line 313
    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_5
    move-object v1, v0

    .line 317
    :goto_7
    iput-object v1, v6, Ljb/i;->p:Lba/a;

    .line 318
    .line 319
    iget-object v1, v14, Lhb/k;->c:Lv9/k;

    .line 320
    .line 321
    iput-object v1, v6, Ljb/i;->q:Lv9/k;

    .line 322
    .line 323
    new-instance v2, Ljb/d;

    .line 324
    .line 325
    const/4 v3, 0x0

    .line 326
    invoke-direct {v2, v6, v3}, Ljb/d;-><init>(Ljb/i;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    new-instance v3, Lkb/i;

    .line 333
    .line 334
    move-object/from16 v7, v16

    .line 335
    .line 336
    invoke-direct {v3, v7, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 337
    .line 338
    .line 339
    iput-object v3, v6, Ljb/i;->r:Lkb/i;

    .line 340
    .line 341
    new-instance v2, Ljb/d;

    .line 342
    .line 343
    const/4 v3, 0x1

    .line 344
    invoke-direct {v2, v6, v3}, Ljb/d;-><init>(Ljb/i;I)V

    .line 345
    .line 346
    .line 347
    new-instance v3, Lkb/j;

    .line 348
    .line 349
    invoke-direct {v3, v7, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 350
    .line 351
    .line 352
    iput-object v3, v6, Ljb/i;->s:Lkb/j;

    .line 353
    .line 354
    new-instance v2, Ljb/d;

    .line 355
    .line 356
    const/4 v3, 0x2

    .line 357
    invoke-direct {v2, v6, v3}, Ljb/d;-><init>(Ljb/i;I)V

    .line 358
    .line 359
    .line 360
    new-instance v3, Lkb/i;

    .line 361
    .line 362
    invoke-direct {v3, v7, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 363
    .line 364
    .line 365
    new-instance v2, Ljb/d;

    .line 366
    .line 367
    const/4 v3, 0x3

    .line 368
    invoke-direct {v2, v6, v3}, Ljb/d;-><init>(Ljb/i;I)V

    .line 369
    .line 370
    .line 371
    new-instance v3, Lkb/j;

    .line 372
    .line 373
    invoke-direct {v3, v7, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 374
    .line 375
    .line 376
    iput-object v3, v6, Ljb/i;->t:Lkb/j;

    .line 377
    .line 378
    new-instance v2, Ljb/d;

    .line 379
    .line 380
    const/4 v3, 0x4

    .line 381
    invoke-direct {v2, v6, v3}, Ljb/d;-><init>(Ljb/i;I)V

    .line 382
    .line 383
    .line 384
    new-instance v3, Lkb/i;

    .line 385
    .line 386
    invoke-direct {v3, v7, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 387
    .line 388
    .line 389
    iput-object v3, v6, Ljb/i;->u:Lkb/i;

    .line 390
    .line 391
    move-object v2, v0

    .line 392
    new-instance v0, Lhb/u;

    .line 393
    .line 394
    move-object v3, v2

    .line 395
    iget-object v2, v13, Lhb/k;->b:Lra/f;

    .line 396
    .line 397
    iget-object v4, v13, Lhb/k;->d:Lra/g;

    .line 398
    .line 399
    instance-of v5, v1, Ljb/i;

    .line 400
    .line 401
    if-eqz v5, :cond_6

    .line 402
    .line 403
    check-cast v1, Ljb/i;

    .line 404
    .line 405
    goto :goto_8

    .line 406
    :cond_6
    move-object v1, v3

    .line 407
    :goto_8
    if-eqz v1, :cond_7

    .line 408
    .line 409
    iget-object v1, v1, Ljb/i;->v:Lhb/u;

    .line 410
    .line 411
    move-object v5, v1

    .line 412
    move-object v3, v4

    .line 413
    move-object v4, v10

    .line 414
    move-object/from16 v1, p2

    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_7
    move-object v5, v3

    .line 418
    move-object/from16 v1, p2

    .line 419
    .line 420
    move-object v3, v4

    .line 421
    move-object v4, v10

    .line 422
    :goto_9
    invoke-direct/range {v0 .. v5}, Lhb/u;-><init>(Lpa/k;Lra/f;Lra/g;Lv9/m0;Lhb/u;)V

    .line 423
    .line 424
    .line 425
    iput-object v0, v6, Ljb/i;->v:Lhb/u;

    .line 426
    .line 427
    sget-object v0, Lra/d;->c:Lra/b;

    .line 428
    .line 429
    iget v1, v1, Lpa/k;->d:I

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-nez v0, :cond_8

    .line 440
    .line 441
    sget-object v0, Lw9/g;->a:Lw9/f;

    .line 442
    .line 443
    goto :goto_a

    .line 444
    :cond_8
    new-instance v0, Ljb/w;

    .line 445
    .line 446
    new-instance v1, Ljb/d;

    .line 447
    .line 448
    const/4 v2, 0x5

    .line 449
    invoke-direct {v1, v6, v2}, Ljb/d;-><init>(Ljb/i;I)V

    .line 450
    .line 451
    .line 452
    invoke-direct {v0, v7, v1}, Ljb/w;-><init>(Lkb/l;Lf9/a;)V

    .line 453
    .line 454
    .line 455
    :goto_a
    iput-object v0, v6, Ljb/i;->w:Lw9/h;

    .line 456
    .line 457
    return-void

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 1
    sget-object v0, Lra/d;->l:Lra/b;

    .line 2
    .line 3
    iget-object v1, p0, Ljb/i;->e:Lpa/k;

    .line 4
    .line 5
    iget v1, v1, Lpa/k;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final B0()Ljb/h;
    .locals 3

    .line 1
    iget-object v0, p0, Ljb/i;->l:Lhb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 4
    .line 5
    iget-object v0, v0, Lhb/i;->q:Lmb/k;

    .line 6
    .line 7
    check-cast v0, Lmb/l;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ljb/i;->o:Lv9/l0;

    .line 13
    .line 14
    iget-object v1, v0, Lv9/l0;->a:Ly9/b;

    .line 15
    .line 16
    invoke-static {v1}, Lbb/e;->j(Lv9/k;)Lv9/y;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lv9/l0;->c:Lkb/j;

    .line 20
    .line 21
    sget-object v1, Lv9/l0;->e:[Lm9/u;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget-object v1, v1, v2

    .line 25
    .line 26
    invoke-static {v0, v1}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Leb/o;

    .line 31
    .line 32
    check-cast v0, Ljb/h;

    .line 33
    .line 34
    return-object v0
.end method

.method public final C0(Lua/e;)Llb/a0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljb/i;->B0()Ljb/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lda/b;->g:Lda/b;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Ljb/h;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    move-object v2, v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    move-object v4, v3

    .line 31
    check-cast v4, Lv9/k0;

    .line 32
    .line 33
    invoke-interface {v4}, Lv9/b;->a0()Ly9/v;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    :goto_1
    move-object v2, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const/4 v1, 0x1

    .line 44
    move-object v2, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-nez v1, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_2
    check-cast v2, Lv9/k0;

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-interface {v2}, Lv9/s0;->getType()Llb/w;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_4
    check-cast v0, Llb/a0;

    .line 58
    .line 59
    return-object v0
.end method

.method public final E(Lmb/f;)Leb/o;
    .locals 2

    .line 1
    iget-object p1, p0, Ljb/i;->o:Lv9/l0;

    .line 2
    .line 3
    iget-object v0, p1, Lv9/l0;->a:Ly9/b;

    .line 4
    .line 5
    invoke-static {v0}, Lbb/e;->j(Lv9/k;)Lv9/y;

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lv9/l0;->c:Lkb/j;

    .line 9
    .line 10
    sget-object v0, Lv9/l0;->e:[Lm9/u;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    invoke-static {p1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Leb/o;

    .line 20
    .line 21
    return-object p1
.end method

.method public final F()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->t:Lkb/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H()Z
    .locals 2

    .line 1
    sget-object v0, Lra/d;->j:Lra/b;

    .line 2
    .line 3
    iget-object v1, p0, Ljb/i;->e:Lpa/k;

    .line 4
    .line 5
    iget v1, v1, Lpa/k;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final I()Z
    .locals 2

    .line 1
    sget-object v0, Lra/d;->g:Lra/b;

    .line 2
    .line 3
    iget-object v1, p0, Ljb/i;->e:Lpa/k;

    .line 4
    .line 5
    iget v1, v1, Lpa/k;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final N()Ly9/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->r:Lkb/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly9/i;

    .line 8
    .line 9
    return-object v0
.end method

.method public final O()Leb/o;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->m:Leb/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lea/o;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->j:Lea/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lv9/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->k:Lv9/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Z
    .locals 4

    .line 1
    sget-object v0, Lra/d;->k:Lra/b;

    .line 2
    .line 3
    iget-object v1, p0, Ljb/i;->e:Lpa/k;

    .line 4
    .line 5
    iget v1, v1, Lpa/k;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Ljb/i;->f:Lra/a;

    .line 18
    .line 19
    iget v1, v0, Lra/a;->b:I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-le v1, v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget v1, v0, Lra/a;->c:I

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    if-ge v1, v3, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    if-le v1, v3, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    iget v0, v0, Lra/a;->d:I

    .line 38
    .line 39
    if-gt v0, v2, :cond_4

    .line 40
    .line 41
    :goto_0
    return v2

    .line 42
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 43
    return v0
.end method

.method public final getAnnotations()Lw9/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->w:Lw9/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Lv9/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->g:Lv9/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lv9/x;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->i:Lv9/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Z
    .locals 4

    .line 1
    sget-object v0, Lra/d;->k:Lra/b;

    .line 2
    .line 3
    iget-object v1, p0, Ljb/i;->e:Lpa/k;

    .line 4
    .line 5
    iget v1, v1, Lpa/k;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    const/4 v1, 0x2

    .line 19
    iget-object v2, p0, Ljb/i;->f:Lra/a;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v3, v0, v1}, Lra/a;->a(III)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return v3

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public final k()Lv9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->q:Lv9/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o0()Lv9/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->u:Lkb/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv9/r0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->l:Lhb/k;

    .line 2
    .line 3
    iget-object v0, v0, Lhb/k;->h:Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lp/h3;->g()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final s()Z
    .locals 2

    .line 1
    sget-object v0, Lra/d;->i:Lra/b;

    .line 2
    .line 3
    iget-object v1, p0, Ljb/i;->e:Lpa/k;

    .line 4
    .line 5
    iget v1, v1, Lpa/k;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final t()Llb/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->n:Lia/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "deserialized "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljb/i;->H()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "expect "

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, ""

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "class "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ly9/b;->getName()Lua/e;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public final u()Z
    .locals 2

    .line 1
    sget-object v0, Lra/d;->f:Lra/c;

    .line 2
    .line 3
    iget-object v1, p0, Ljb/i;->e:Lpa/k;

    .line 4
    .line 5
    iget v1, v1, Lpa/k;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lra/c;->i(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lpa/j;->f:Lpa/j;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final w()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/i;->s:Lkb/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    return-object v0
.end method

.method public final w0()Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Ljb/i;->l:Lhb/k;

    .line 2
    .line 3
    iget-object v1, v0, Lhb/k;->d:Lra/g;

    .line 4
    .line 5
    const-string v2, "<this>"

    .line 6
    .line 7
    iget-object v3, p0, Ljb/i;->e:Lpa/k;

    .line 8
    .line 9
    invoke-static {v3, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v3, Lpa/k;->m:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v5

    .line 23
    :goto_0
    const/16 v4, 0xa

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    iget-object v2, v3, Lpa/k;->n:Ljava/util/List;

    .line 28
    .line 29
    const-string v3, "getContextReceiverTypeIdList(...)"

    .line 30
    .line 31
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-static {v6}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v1, v6}, Lra/g;->a(I)Lpa/s0;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move-object v2, v3

    .line 75
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lpa/s0;

    .line 99
    .line 100
    iget-object v4, v0, Lhb/k;->h:Lp/h3;

    .line 101
    .line 102
    invoke-virtual {v4, v3}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    new-instance v4, Ly9/v;

    .line 107
    .line 108
    invoke-virtual {p0}, Ly9/b;->A0()Ly9/v;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    new-instance v7, Lfb/b;

    .line 113
    .line 114
    invoke-direct {v7, p0, v3, v5}, Lfb/b;-><init>(Lv9/e;Llb/w;Lua/e;)V

    .line 115
    .line 116
    .line 117
    sget-object v3, Lw9/g;->a:Lw9/f;

    .line 118
    .line 119
    invoke-direct {v4, v6, v7, v3}, Ly9/v;-><init>(Lv9/k;Lfb/a;Lw9/h;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    return-object v1
.end method

.method public final z0()Z
    .locals 2

    .line 1
    sget-object v0, Lra/d;->h:Lra/b;

    .line 2
    .line 3
    iget-object v1, p0, Ljb/i;->e:Lpa/k;

    .line 4
    .line 5
    iget v1, v1, Lpa/k;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method
