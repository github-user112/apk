.class public final Lia/h;
.super Llb/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic c:I

.field public final d:Lkb/j;

.field public final synthetic e:Ly9/b;


# direct methods
.method public constructor <init>(Lia/j;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lia/h;->c:I

    .line 1
    iput-object p1, p0, Lia/h;->e:Ly9/b;

    .line 2
    iget-object v0, p1, Lia/j;->j:Lba/a;

    .line 3
    iget-object v1, v0, Lba/a;->b:Ljava/lang/Object;

    check-cast v1, Lha/a;

    .line 4
    iget-object v1, v1, Lha/a;->a:Lkb/o;

    .line 5
    invoke-direct {p0, v1}, Llb/b;-><init>(Lkb/o;)V

    .line 6
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    check-cast v0, Lha/a;

    .line 7
    iget-object v0, v0, Lha/a;->a:Lkb/o;

    .line 8
    new-instance v1, Lia/g;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lia/g;-><init>(Lia/j;I)V

    check-cast v0, Lkb/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance p1, Lkb/j;

    .line 10
    invoke-direct {p1, v0, v1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 11
    iput-object p1, p0, Lia/h;->d:Lkb/j;

    return-void
.end method

.method public constructor <init>(Ljb/i;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lia/h;->c:I

    .line 12
    iput-object p1, p0, Lia/h;->e:Ly9/b;

    .line 13
    iget-object v0, p1, Ljb/i;->l:Lhb/k;

    .line 14
    iget-object v1, v0, Lhb/k;->a:Lhb/i;

    .line 15
    iget-object v1, v1, Lhb/i;->a:Lkb/l;

    .line 16
    invoke-direct {p0, v1}, Llb/b;-><init>(Lkb/o;)V

    .line 17
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 18
    iget-object v0, v0, Lhb/i;->a:Lkb/l;

    .line 19
    new-instance v1, Ljb/d;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Ljb/d;-><init>(Ljb/i;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance p1, Lkb/j;

    .line 21
    invoke-direct {p1, v0, v1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 22
    iput-object p1, p0, Lia/h;->d:Lkb/j;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lia/h;->c:I

    .line 4
    .line 5
    const-string v2, "<this>"

    .line 6
    .line 7
    iget-object v3, v0, Lia/h;->e:Ly9/b;

    .line 8
    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Ljb/i;

    .line 15
    .line 16
    iget-object v1, v3, Ljb/i;->e:Lpa/k;

    .line 17
    .line 18
    iget-object v6, v3, Ljb/i;->l:Lhb/k;

    .line 19
    .line 20
    iget-object v7, v6, Lhb/k;->d:Lra/g;

    .line 21
    .line 22
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v1, Lpa/k;->h:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-nez v8, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-nez v2, :cond_1

    .line 36
    .line 37
    iget-object v1, v1, Lpa/k;->i:Ljava/util/List;

    .line 38
    .line 39
    const-string v2, "getSupertypeIdList(...)"

    .line 40
    .line 41
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {v1, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_1

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    check-cast v8, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-static {v8}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    invoke-virtual {v7, v8}, Lra/g;->a(I)Lpa/s0;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_2

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Lpa/s0;

    .line 108
    .line 109
    iget-object v8, v6, Lhb/k;->h:Lp/h3;

    .line 110
    .line 111
    invoke-virtual {v8, v7}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    iget-object v2, v6, Lhb/k;->a:Lhb/i;

    .line 120
    .line 121
    iget-object v2, v2, Lhb/i;->n:Lx9/b;

    .line 122
    .line 123
    invoke-interface {v2, v3}, Lx9/b;->a(Lv9/e;)Ljava/util/Collection;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Ljava/lang/Iterable;

    .line 128
    .line 129
    invoke-static {v2, v1}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_5

    .line 147
    .line 148
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Llb/w;

    .line 153
    .line 154
    invoke-virtual {v8}, Llb/w;->D0()Llb/k0;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-interface {v8}, Llb/k0;->k()Lv9/h;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    instance-of v9, v8, Lv9/c0;

    .line 163
    .line 164
    if-eqz v9, :cond_4

    .line 165
    .line 166
    check-cast v8, Lv9/c0;

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_4
    const/4 v8, 0x0

    .line 170
    :goto_4
    if-eqz v8, :cond_3

    .line 171
    .line 172
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-nez v5, :cond_9

    .line 181
    .line 182
    iget-object v5, v6, Lhb/k;->a:Lhb/i;

    .line 183
    .line 184
    iget-object v5, v5, Lhb/i;->h:Lhb/m;

    .line 185
    .line 186
    new-instance v6, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_8

    .line 204
    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Lv9/c0;

    .line 210
    .line 211
    invoke-static {v4}, Lbb/e;->f(Lv9/h;)Lua/b;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    if-eqz v7, :cond_6

    .line 216
    .line 217
    invoke-virtual {v7}, Lua/b;->a()Lua/c;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    if-eqz v7, :cond_6

    .line 222
    .line 223
    iget-object v7, v7, Lua/c;->a:Lua/d;

    .line 224
    .line 225
    iget-object v7, v7, Lua/d;->a:Ljava/lang/String;

    .line 226
    .line 227
    if-nez v7, :cond_7

    .line 228
    .line 229
    :cond_6
    invoke-virtual {v4}, Ly9/b;->getName()Lua/e;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v4}, Lua/e;->b()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    const-string v4, "asString(...)"

    .line 238
    .line 239
    invoke-static {v7, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_7
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_8
    invoke-interface {v5, v3, v6}, Lhb/m;->c(Lv9/e;Ljava/util/ArrayList;)V

    .line 247
    .line 248
    .line 249
    :cond_9
    invoke-static {v1}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    return-object v1

    .line 254
    :pswitch_0
    check-cast v3, Lia/j;

    .line 255
    .line 256
    iget-object v9, v3, Lia/j;->j:Lba/a;

    .line 257
    .line 258
    iget-object v1, v3, Lia/j;->h:Lba/p;

    .line 259
    .line 260
    iget-object v1, v1, Lba/p;->a:Ljava/lang/Class;

    .line 261
    .line 262
    const-class v6, Ljava/lang/Object;

    .line 263
    .line 264
    invoke-static {v1, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    const/4 v8, 0x2

    .line 269
    sget-object v13, Ls8/w;->a:Ls8/w;

    .line 270
    .line 271
    if-eqz v7, :cond_a

    .line 272
    .line 273
    move-object v6, v13

    .line 274
    goto :goto_8

    .line 275
    :cond_a
    new-instance v7, Le2/g;

    .line 276
    .line 277
    invoke-direct {v7, v8}, Le2/g;-><init>(I)V

    .line 278
    .line 279
    .line 280
    iget-object v10, v7, Le2/g;->a:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    if-nez v11, :cond_b

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_b
    move-object v6, v11

    .line 290
    :goto_6
    invoke-virtual {v7, v6}, Le2/g;->a(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v7, v1}, Le2/g;->b(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    new-array v1, v1, [Ljava/lang/reflect/Type;

    .line 305
    .line 306
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    new-instance v6, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-static {v1, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_c

    .line 332
    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    check-cast v7, Ljava/lang/reflect/Type;

    .line 338
    .line 339
    new-instance v10, Lba/r;

    .line 340
    .line 341
    invoke-direct {v10, v7}, Lba/r;-><init>(Ljava/lang/reflect/Type;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_c
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    .line 356
    .line 357
    new-instance v12, Ljava/util/ArrayList;

    .line 358
    .line 359
    const/4 v14, 0x0

    .line 360
    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .line 362
    .line 363
    iget-object v7, v3, Lia/j;->u:Lha/c;

    .line 364
    .line 365
    sget-object v10, Lea/y;->n:Lua/c;

    .line 366
    .line 367
    const-string v11, "PURELY_IMPLEMENTS_ANNOTATION"

    .line 368
    .line 369
    invoke-static {v10, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7, v10}, Lha/c;->c(Lua/c;)Lw9/b;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    const/4 v10, 0x1

    .line 377
    if-nez v7, :cond_e

    .line 378
    .line 379
    :cond_d
    :goto_9
    const/4 v4, 0x0

    .line 380
    goto/16 :goto_e

    .line 381
    .line 382
    :cond_e
    invoke-interface {v7}, Lw9/b;->b()Ljava/util/Map;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    check-cast v7, Ljava/lang/Iterable;

    .line 391
    .line 392
    invoke-static {v7}, Ls8/p;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    instance-of v11, v7, Lza/w;

    .line 397
    .line 398
    if-eqz v11, :cond_f

    .line 399
    .line 400
    check-cast v7, Lza/w;

    .line 401
    .line 402
    goto :goto_a

    .line 403
    :cond_f
    const/4 v7, 0x0

    .line 404
    :goto_a
    if-eqz v7, :cond_d

    .line 405
    .line 406
    iget-object v7, v7, Lza/g;->a:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v7, Ljava/lang/String;

    .line 409
    .line 410
    if-nez v7, :cond_10

    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_10
    sget-object v11, Lua/i;->a:Lua/i;

    .line 414
    .line 415
    const/4 v15, 0x0

    .line 416
    :goto_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    sget-object v14, Lua/i;->c:Lua/i;

    .line 421
    .line 422
    if-ge v15, v5, :cond_17

    .line 423
    .line 424
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_14

    .line 433
    .line 434
    if-eq v4, v10, :cond_12

    .line 435
    .line 436
    if-ne v4, v8, :cond_11

    .line 437
    .line 438
    goto :goto_c

    .line 439
    :cond_11
    new-instance v1, Lac/p;

    .line 440
    .line 441
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 442
    .line 443
    .line 444
    throw v1

    .line 445
    :cond_12
    const/16 v4, 0x2e

    .line 446
    .line 447
    if-ne v5, v4, :cond_13

    .line 448
    .line 449
    move-object v11, v14

    .line 450
    goto :goto_d

    .line 451
    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    if-nez v4, :cond_16

    .line 456
    .line 457
    goto :goto_9

    .line 458
    :cond_14
    :goto_c
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    .line 459
    .line 460
    .line 461
    move-result v4

    .line 462
    if-nez v4, :cond_15

    .line 463
    .line 464
    goto :goto_9

    .line 465
    :cond_15
    sget-object v4, Lua/i;->b:Lua/i;

    .line 466
    .line 467
    move-object v11, v4

    .line 468
    :cond_16
    :goto_d
    add-int/lit8 v15, v15, 0x1

    .line 469
    .line 470
    const/16 v4, 0xa

    .line 471
    .line 472
    const/4 v14, 0x0

    .line 473
    goto :goto_b

    .line 474
    :cond_17
    if-eq v11, v14, :cond_d

    .line 475
    .line 476
    new-instance v4, Lua/c;

    .line 477
    .line 478
    invoke-direct {v4, v7}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    :goto_e
    if-eqz v4, :cond_18

    .line 482
    .line 483
    iget-object v5, v4, Lua/c;->a:Lua/d;

    .line 484
    .line 485
    invoke-virtual {v5}, Lua/d;->c()Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    if-nez v5, :cond_18

    .line 490
    .line 491
    sget-object v5, Ls9/p;->j:Lua/e;

    .line 492
    .line 493
    invoke-virtual {v4, v5}, Lua/c;->c(Lua/e;)Z

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    if-eqz v5, :cond_18

    .line 498
    .line 499
    goto :goto_f

    .line 500
    :cond_18
    const/4 v4, 0x0

    .line 501
    :goto_f
    sget-object v5, Llb/y0;->c:Llb/y0;

    .line 502
    .line 503
    if-nez v4, :cond_1a

    .line 504
    .line 505
    sget-object v7, Lea/j;->a:Ljava/util/LinkedHashMap;

    .line 506
    .line 507
    invoke-static {v3}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    sget-object v8, Lea/j;->b:Ljava/util/Map;

    .line 512
    .line 513
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    check-cast v7, Lua/c;

    .line 518
    .line 519
    if-nez v7, :cond_1b

    .line 520
    .line 521
    :cond_19
    :goto_10
    const/4 v2, 0x0

    .line 522
    goto/16 :goto_14

    .line 523
    .line 524
    :cond_1a
    move-object v7, v4

    .line 525
    :cond_1b
    iget-object v8, v9, Lba/a;->b:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v8, Lha/a;

    .line 528
    .line 529
    iget-object v8, v8, Lha/a;->o:Lv9/y;

    .line 530
    .line 531
    sget v11, Lbb/e;->a:I

    .line 532
    .line 533
    invoke-static {v8, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    iget-object v2, v7, Lua/c;->a:Lua/d;

    .line 537
    .line 538
    invoke-virtual {v2}, Lua/d;->c()Z

    .line 539
    .line 540
    .line 541
    invoke-virtual {v7}, Lua/c;->b()Lua/c;

    .line 542
    .line 543
    .line 544
    move-result-object v7

    .line 545
    invoke-interface {v8, v7}, Lv9/y;->y0(Lua/c;)Lv9/h0;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    check-cast v7, Ly9/x;

    .line 550
    .line 551
    iget-object v7, v7, Ly9/x;->g:Leb/k;

    .line 552
    .line 553
    invoke-virtual {v2}, Lua/d;->f()Lua/e;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    sget-object v8, Lda/b;->h:Lda/b;

    .line 558
    .line 559
    invoke-virtual {v7, v2, v8}, Leb/k;->e(Lua/e;Lda/b;)Lv9/h;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    instance-of v7, v2, Lv9/e;

    .line 564
    .line 565
    if-eqz v7, :cond_1c

    .line 566
    .line 567
    check-cast v2, Lv9/e;

    .line 568
    .line 569
    goto :goto_11

    .line 570
    :cond_1c
    const/4 v2, 0x0

    .line 571
    :goto_11
    if-nez v2, :cond_1d

    .line 572
    .line 573
    goto :goto_10

    .line 574
    :cond_1d
    invoke-interface {v2}, Lv9/h;->t()Llb/k0;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    invoke-interface {v7}, Llb/k0;->m()Ljava/util/List;

    .line 579
    .line 580
    .line 581
    move-result-object v7

    .line 582
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 583
    .line 584
    .line 585
    move-result v7

    .line 586
    iget-object v8, v3, Lia/j;->p:Lia/h;

    .line 587
    .line 588
    invoke-virtual {v8}, Lia/h;->m()Ljava/util/List;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    const-string v11, "getParameters(...)"

    .line 593
    .line 594
    invoke-static {v8, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 598
    .line 599
    .line 600
    move-result v11

    .line 601
    if-ne v11, v7, :cond_1e

    .line 602
    .line 603
    new-instance v4, Ljava/util/ArrayList;

    .line 604
    .line 605
    const/16 v7, 0xa

    .line 606
    .line 607
    invoke-static {v8, v7}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 608
    .line 609
    .line 610
    move-result v10

    .line 611
    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 612
    .line 613
    .line 614
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 615
    .line 616
    .line 617
    move-result-object v7

    .line 618
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    if-eqz v8, :cond_20

    .line 623
    .line 624
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v8

    .line 628
    check-cast v8, Lv9/q0;

    .line 629
    .line 630
    new-instance v10, Llb/f0;

    .line 631
    .line 632
    invoke-interface {v8}, Lv9/h;->n()Llb/a0;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    invoke-direct {v10, v8, v5}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    goto :goto_12

    .line 643
    :cond_1e
    if-ne v11, v10, :cond_19

    .line 644
    .line 645
    if-le v7, v10, :cond_19

    .line 646
    .line 647
    if-nez v4, :cond_19

    .line 648
    .line 649
    new-instance v4, Llb/f0;

    .line 650
    .line 651
    invoke-static {v8}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v8

    .line 655
    check-cast v8, Lv9/q0;

    .line 656
    .line 657
    invoke-interface {v8}, Lv9/h;->n()Llb/a0;

    .line 658
    .line 659
    .line 660
    move-result-object v8

    .line 661
    invoke-direct {v4, v8, v5}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 662
    .line 663
    .line 664
    new-instance v8, Ll9/d;

    .line 665
    .line 666
    invoke-direct {v8, v10, v7, v10}, Ll9/b;-><init>(III)V

    .line 667
    .line 668
    .line 669
    new-instance v7, Ljava/util/ArrayList;

    .line 670
    .line 671
    const/16 v10, 0xa

    .line 672
    .line 673
    invoke-static {v8, v10}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 674
    .line 675
    .line 676
    move-result v11

    .line 677
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v8}, Ll9/b;->iterator()Ljava/util/Iterator;

    .line 681
    .line 682
    .line 683
    move-result-object v8

    .line 684
    :goto_13
    move-object v10, v8

    .line 685
    check-cast v10, Ll9/c;

    .line 686
    .line 687
    iget-boolean v11, v10, Ll9/c;->c:Z

    .line 688
    .line 689
    if-eqz v11, :cond_1f

    .line 690
    .line 691
    invoke-virtual {v10}, Ll9/c;->nextInt()I

    .line 692
    .line 693
    .line 694
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    goto :goto_13

    .line 698
    :cond_1f
    move-object v4, v7

    .line 699
    :cond_20
    sget-object v7, Llb/h0;->b:Lu0/j;

    .line 700
    .line 701
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    sget-object v7, Llb/h0;->c:Llb/h0;

    .line 705
    .line 706
    invoke-static {v7, v2, v4}, Llb/c;->s(Llb/h0;Lv9/e;Ljava/util/List;)Llb/a0;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    :goto_14
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 715
    .line 716
    .line 717
    move-result v6

    .line 718
    if-eqz v6, :cond_26

    .line 719
    .line 720
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v6

    .line 724
    move-object v14, v6

    .line 725
    check-cast v14, Lba/r;

    .line 726
    .line 727
    iget-object v6, v9, Lba/a;->e:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v6, La2/b;

    .line 730
    .line 731
    sget-object v7, Llb/t0;->a:Llb/t0;

    .line 732
    .line 733
    const/4 v8, 0x7

    .line 734
    const/4 v10, 0x0

    .line 735
    const/4 v15, 0x0

    .line 736
    invoke-static {v7, v10, v15, v8}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 737
    .line 738
    .line 739
    move-result-object v7

    .line 740
    invoke-virtual {v6, v14, v7}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 741
    .line 742
    .line 743
    move-result-object v16

    .line 744
    iget-object v6, v9, Lba/a;->b:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast v6, Lha/a;

    .line 747
    .line 748
    iget-object v6, v6, Lha/a;->r:Lma/d;

    .line 749
    .line 750
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    new-instance v11, Lma/r;

    .line 754
    .line 755
    const/16 v17, 0x0

    .line 756
    .line 757
    sget-object v10, Lea/a;->e:Lea/a;

    .line 758
    .line 759
    move-object v7, v6

    .line 760
    move-object v6, v11

    .line 761
    const/4 v11, 0x1

    .line 762
    move-object v8, v7

    .line 763
    const/4 v7, 0x0

    .line 764
    move-object/from16 v18, v8

    .line 765
    .line 766
    const/4 v8, 0x0

    .line 767
    invoke-direct/range {v6 .. v11}, Lma/r;-><init>(Lw9/a;ZLba/a;Lea/a;Z)V

    .line 768
    .line 769
    .line 770
    move-object v7, v14

    .line 771
    const/4 v14, 0x0

    .line 772
    move-object v8, v15

    .line 773
    const/4 v15, 0x0

    .line 774
    move-object v11, v6

    .line 775
    move-object v6, v12

    .line 776
    move-object/from16 v12, v16

    .line 777
    .line 778
    move-object/from16 v10, v18

    .line 779
    .line 780
    move-object/from16 v16, v8

    .line 781
    .line 782
    invoke-virtual/range {v10 .. v15}, Lma/d;->b(Lma/r;Llb/w;Ljava/util/List;Lma/t;Z)Llb/w;

    .line 783
    .line 784
    .line 785
    move-result-object v8

    .line 786
    if-nez v8, :cond_21

    .line 787
    .line 788
    move-object v8, v12

    .line 789
    :cond_21
    invoke-virtual {v8}, Llb/w;->D0()Llb/k0;

    .line 790
    .line 791
    .line 792
    move-result-object v10

    .line 793
    invoke-interface {v10}, Llb/k0;->k()Lv9/h;

    .line 794
    .line 795
    .line 796
    move-result-object v10

    .line 797
    instance-of v10, v10, Lv9/c0;

    .line 798
    .line 799
    if-eqz v10, :cond_22

    .line 800
    .line 801
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    :cond_22
    invoke-virtual {v8}, Llb/w;->D0()Llb/k0;

    .line 805
    .line 806
    .line 807
    move-result-object v7

    .line 808
    if-eqz v2, :cond_23

    .line 809
    .line 810
    invoke-virtual {v2}, Llb/w;->D0()Llb/k0;

    .line 811
    .line 812
    .line 813
    move-result-object v15

    .line 814
    goto :goto_16

    .line 815
    :cond_23
    move-object/from16 v15, v16

    .line 816
    .line 817
    :goto_16
    invoke-static {v7, v15}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v7

    .line 821
    if-eqz v7, :cond_25

    .line 822
    .line 823
    :cond_24
    :goto_17
    move-object v12, v6

    .line 824
    goto :goto_15

    .line 825
    :cond_25
    invoke-static {v8}, Ls9/i;->y(Llb/w;)Z

    .line 826
    .line 827
    .line 828
    move-result v7

    .line 829
    if-nez v7, :cond_24

    .line 830
    .line 831
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    goto :goto_17

    .line 835
    :cond_26
    move-object v6, v12

    .line 836
    const/16 v16, 0x0

    .line 837
    .line 838
    iget-object v4, v3, Lia/j;->i:Lv9/e;

    .line 839
    .line 840
    if-eqz v4, :cond_27

    .line 841
    .line 842
    invoke-static {v4, v3}, Lp9/q;->v(Lv9/e;Lv9/e;)Llb/g0;

    .line 843
    .line 844
    .line 845
    move-result-object v7

    .line 846
    new-instance v8, Llb/s0;

    .line 847
    .line 848
    invoke-direct {v8, v7}, Llb/s0;-><init>(Llb/q0;)V

    .line 849
    .line 850
    .line 851
    invoke-interface {v4}, Lv9/e;->n()Llb/a0;

    .line 852
    .line 853
    .line 854
    move-result-object v4

    .line 855
    invoke-virtual {v8, v4, v5}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 856
    .line 857
    .line 858
    move-result-object v5

    .line 859
    goto :goto_18

    .line 860
    :cond_27
    move-object/from16 v5, v16

    .line 861
    .line 862
    :goto_18
    invoke-static {v1, v5}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    invoke-static {v1, v2}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 869
    .line 870
    .line 871
    move-result v2

    .line 872
    if-nez v2, :cond_29

    .line 873
    .line 874
    iget-object v2, v9, Lba/a;->b:Ljava/lang/Object;

    .line 875
    .line 876
    check-cast v2, Lha/a;

    .line 877
    .line 878
    iget-object v2, v2, Lha/a;->f:Lhb/m;

    .line 879
    .line 880
    new-instance v4, Ljava/util/ArrayList;

    .line 881
    .line 882
    const/16 v7, 0xa

    .line 883
    .line 884
    invoke-static {v6, v7}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 885
    .line 886
    .line 887
    move-result v5

    .line 888
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 892
    .line 893
    .line 894
    move-result-object v5

    .line 895
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    if-eqz v6, :cond_28

    .line 900
    .line 901
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v6

    .line 905
    check-cast v6, Lla/d;

    .line 906
    .line 907
    const-string v7, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType"

    .line 908
    .line 909
    invoke-static {v6, v7}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    check-cast v6, Lba/r;

    .line 913
    .line 914
    iget-object v6, v6, Lba/r;->a:Ljava/lang/reflect/Type;

    .line 915
    .line 916
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v6

    .line 920
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    goto :goto_19

    .line 924
    :cond_28
    invoke-interface {v2, v3, v4}, Lhb/m;->c(Lv9/e;Ljava/util/ArrayList;)V

    .line 925
    .line 926
    .line 927
    :cond_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 928
    .line 929
    .line 930
    move-result v2

    .line 931
    if-nez v2, :cond_2a

    .line 932
    .line 933
    invoke-static {v1}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    goto :goto_1a

    .line 938
    :cond_2a
    iget-object v1, v9, Lba/a;->b:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast v1, Lha/a;

    .line 941
    .line 942
    iget-object v1, v1, Lha/a;->o:Lv9/y;

    .line 943
    .line 944
    invoke-interface {v1}, Lv9/y;->j()Ls9/i;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    invoke-virtual {v1}, Ls9/i;->e()Llb/a0;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    :goto_1a
    return-object v1

    .line 957
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lv9/n0;
    .locals 1

    .line 1
    iget v0, p0, Lia/h;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lv9/n0;->c:Lv9/n0;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lia/h;->e:Ly9/b;

    .line 10
    .line 11
    check-cast v0, Lia/j;

    .line 12
    .line 13
    iget-object v0, v0, Lia/j;->j:Lba/a;

    .line 14
    .line 15
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lha/a;

    .line 18
    .line 19
    iget-object v0, v0, Lha/a;->m:Lv9/n0;

    .line 20
    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Lv9/e;
    .locals 1

    .line 1
    iget v0, p0, Lia/h;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia/h;->e:Ly9/b;

    .line 7
    .line 8
    check-cast v0, Ljb/i;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lia/h;->e:Ly9/b;

    .line 12
    .line 13
    check-cast v0, Lia/j;

    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Lv9/h;
    .locals 1

    .line 1
    iget v0, p0, Lia/h;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia/h;->e:Ly9/b;

    .line 7
    .line 8
    check-cast v0, Ljb/i;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lia/h;->e:Ly9/b;

    .line 12
    .line 13
    check-cast v0, Lia/j;

    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .line 1
    iget v0, p0, Lia/h;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia/h;->d:Lkb/j;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/List;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lia/h;->d:Lkb/j;

    .line 16
    .line 17
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/List;

    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget v0, p0, Lia/h;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :pswitch_0
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lia/h;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia/h;->e:Ly9/b;

    .line 7
    .line 8
    check-cast v0, Ljb/i;

    .line 9
    .line 10
    invoke-virtual {v0}, Ly9/b;->getName()Lua/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lua/e;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "toString(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_0
    iget-object v0, p0, Lia/h;->e:Ly9/b;

    .line 23
    .line 24
    check-cast v0, Lia/j;

    .line 25
    .line 26
    invoke-virtual {v0}, Ly9/b;->getName()Lua/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "asString(...)"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
