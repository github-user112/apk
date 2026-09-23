.class public final Lp9/i1;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lp9/o1;


# direct methods
.method public synthetic constructor <init>(Lp9/o1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp9/i1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp9/i1;->b:Lp9/o1;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lp9/i1;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lp9/i1;->b:Lp9/o1;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x2

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v1, v3, Lp9/o1;->c:Lp9/h0;

    .line 14
    .line 15
    iget-object v6, v3, Lp9/o1;->d:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, v3, Lp9/o1;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v7, "name"

    .line 23
    .line 24
    invoke-static {v6, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v7, "signature"

    .line 28
    .line 29
    invoke-static {v3, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v7, Lp9/h0;->a:Lg9/x;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v7, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v7, Ljava/util/regex/Pattern;

    .line 40
    .line 41
    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, "matcher(...)"

    .line 46
    .line 47
    invoke-static {v7, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-nez v8, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v2, La2/b;

    .line 58
    .line 59
    invoke-direct {v2, v7, v3}, La2/b;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object v3, v2, La2/b;->d:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Ls8/e0;

    .line 67
    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    new-instance v3, Ls8/e0;

    .line 71
    .line 72
    invoke-direct {v3, v2}, Ls8/e0;-><init>(La2/b;)V

    .line 73
    .line 74
    .line 75
    iput-object v3, v2, La2/b;->d:Ljava/lang/Object;

    .line 76
    .line 77
    :cond_1
    iget-object v2, v2, La2/b;->d:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Ls8/e0;

    .line 80
    .line 81
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4}, Ls8/e0;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v1, v3}, Lp9/h0;->g(I)Lv9/k0;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_2
    new-instance v3, Lac/y;

    .line 103
    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v6, "Local property #"

    .line 107
    .line 108
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, " not found in "

    .line 115
    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-interface {v1}, Lg9/e;->a()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v3, v5, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v3

    .line 134
    :cond_3
    invoke-static {v6}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lp9/h0;->n(Lua/e;)Ljava/util/Collection;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Ljava/lang/Iterable;

    .line 143
    .line 144
    new-instance v7, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-eqz v8, :cond_5

    .line 158
    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    move-object v9, v8

    .line 164
    check-cast v9, Lv9/k0;

    .line 165
    .line 166
    invoke-static {v9}, Lp9/a2;->b(Lv9/k0;)Lp9/q;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v9}, Lp9/q;->j()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-static {v9, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_4

    .line 179
    .line 180
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    const-string v8, ") not resolved in "

    .line 189
    .line 190
    const-string v9, "\' (JVM signature: "

    .line 191
    .line 192
    const-string v10, "Property \'"

    .line 193
    .line 194
    if-nez v2, :cond_b

    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eq v2, v4, :cond_a

    .line 201
    .line 202
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-eqz v11, :cond_7

    .line 216
    .line 217
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    move-object v12, v11

    .line 222
    check-cast v12, Lv9/k0;

    .line 223
    .line 224
    invoke-interface {v12}, Lv9/w;->d()Lea/o;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    invoke-virtual {v2, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v13

    .line 232
    if-nez v13, :cond_6

    .line 233
    .line 234
    new-instance v13, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    :cond_6
    check-cast v13, Ljava/util/List;

    .line 243
    .line 244
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_7
    new-instance v7, Lp9/f;

    .line 249
    .line 250
    invoke-direct {v7, v5}, Lp9/f;-><init>(I)V

    .line 251
    .line 252
    .line 253
    new-instance v11, Ljava/util/TreeMap;

    .line 254
    .line 255
    invoke-direct {v11, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v11, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const-string v7, "<get-values>(...)"

    .line 266
    .line 267
    invoke-static {v2, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    check-cast v2, Ljava/lang/Iterable;

    .line 271
    .line 272
    invoke-static {v2}, Ls8/p;->j0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Ljava/util/List;

    .line 277
    .line 278
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    if-ne v7, v4, :cond_8

    .line 283
    .line 284
    invoke-static {v2}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    move-object v3, v1

    .line 289
    check-cast v3, Lv9/k0;

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_8
    invoke-static {v6}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Lp9/h0;->n(Lua/e;)Ljava/util/Collection;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    move-object v11, v2

    .line 301
    check-cast v11, Ljava/lang/Iterable;

    .line 302
    .line 303
    sget-object v15, Lp9/b;->f:Lp9/b;

    .line 304
    .line 305
    const/16 v16, 0x1e

    .line 306
    .line 307
    const-string v12, "\n"

    .line 308
    .line 309
    const/4 v13, 0x0

    .line 310
    const/4 v14, 0x0

    .line 311
    invoke-static/range {v11 .. v16}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    new-instance v4, Lac/y;

    .line 316
    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const/16 v1, 0x3a

    .line 338
    .line 339
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-nez v1, :cond_9

    .line 347
    .line 348
    const-string v1, " no members found"

    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_9
    const-string v1, "\n"

    .line 352
    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-direct {v4, v5, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw v4

    .line 368
    :cond_a
    invoke-static {v7}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    move-object v3, v1

    .line 373
    check-cast v3, Lv9/k0;

    .line 374
    .line 375
    :goto_4
    return-object v3

    .line 376
    :cond_b
    new-instance v2, Lac/y;

    .line 377
    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-direct {v2, v5, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v2

    .line 406
    :pswitch_0
    sget-object v1, Lp9/a2;->a:Lua/b;

    .line 407
    .line 408
    invoke-virtual {v3}, Lp9/o1;->q()Lv9/k0;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    iget-object v3, v3, Lp9/o1;->c:Lp9/h0;

    .line 413
    .line 414
    invoke-static {v1}, Lp9/a2;->b(Lv9/k0;)Lp9/q;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    instance-of v6, v1, Lp9/o;

    .line 419
    .line 420
    if-eqz v6, :cond_15

    .line 421
    .line 422
    check-cast v1, Lp9/o;

    .line 423
    .line 424
    iget-object v6, v1, Lp9/o;->d:Lpa/i0;

    .line 425
    .line 426
    iget-object v7, v1, Lp9/o;->c:Lv9/k0;

    .line 427
    .line 428
    sget-object v8, Lta/g;->a:Lva/g;

    .line 429
    .line 430
    iget-object v8, v1, Lp9/o;->f:Lra/f;

    .line 431
    .line 432
    iget-object v1, v1, Lp9/o;->g:Lra/g;

    .line 433
    .line 434
    invoke-static {v6, v8, v1, v4}, Lta/g;->b(Lpa/i0;Lra/f;Lra/g;Z)Lta/d;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    if-eqz v1, :cond_18

    .line 439
    .line 440
    invoke-interface {v7}, Lv9/c;->f()I

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    const/4 v9, 0x0

    .line 445
    if-ne v8, v5, :cond_d

    .line 446
    .line 447
    :cond_c
    const/4 v4, 0x0

    .line 448
    goto :goto_6

    .line 449
    :cond_d
    invoke-interface {v7}, Lv9/k;->k()Lv9/k;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    if-eqz v8, :cond_14

    .line 454
    .line 455
    invoke-static {v8}, Lxa/d;->l(Lv9/k;)Z

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    if-eqz v5, :cond_f

    .line 460
    .line 461
    invoke-interface {v8}, Lv9/k;->k()Lv9/k;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    sget-object v10, Lv9/f;->a:Lv9/f;

    .line 466
    .line 467
    invoke-static {v5, v10}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 468
    .line 469
    .line 470
    move-result v10

    .line 471
    if-nez v10, :cond_e

    .line 472
    .line 473
    sget-object v10, Lv9/f;->c:Lv9/f;

    .line 474
    .line 475
    invoke-static {v5, v10}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    if-eqz v5, :cond_f

    .line 480
    .line 481
    :cond_e
    check-cast v8, Lv9/e;

    .line 482
    .line 483
    sget-object v5, Ls9/d;->a:Ljava/util/LinkedHashSet;

    .line 484
    .line 485
    invoke-static {v8}, Lp9/l;->q(Lv9/e;)Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    if-nez v5, :cond_f

    .line 490
    .line 491
    goto :goto_6

    .line 492
    :cond_f
    invoke-interface {v7}, Lv9/k;->k()Lv9/k;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    invoke-static {v5}, Lxa/d;->l(Lv9/k;)Z

    .line 497
    .line 498
    .line 499
    move-result v5

    .line 500
    if-eqz v5, :cond_c

    .line 501
    .line 502
    invoke-interface {v7}, Lv9/k0;->e0()Ly9/r;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    if-eqz v5, :cond_10

    .line 507
    .line 508
    invoke-virtual {v5}, Lfb/a;->getAnnotations()Lw9/h;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    sget-object v8, Lea/x;->a:Lua/c;

    .line 513
    .line 514
    invoke-interface {v5, v8}, Lw9/h;->g(Lua/c;)Z

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    if-eqz v5, :cond_10

    .line 519
    .line 520
    const/4 v5, 0x1

    .line 521
    goto :goto_5

    .line 522
    :cond_10
    invoke-interface {v7}, Lw9/a;->getAnnotations()Lw9/h;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    sget-object v8, Lea/x;->a:Lua/c;

    .line 527
    .line 528
    invoke-interface {v5, v8}, Lw9/h;->g(Lua/c;)Z

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    :goto_5
    if-eqz v5, :cond_c

    .line 533
    .line 534
    :goto_6
    if-nez v4, :cond_13

    .line 535
    .line 536
    invoke-static {v6}, Lta/g;->d(Lpa/i0;)Z

    .line 537
    .line 538
    .line 539
    move-result v4

    .line 540
    if-eqz v4, :cond_11

    .line 541
    .line 542
    goto :goto_7

    .line 543
    :cond_11
    invoke-interface {v7}, Lv9/k;->k()Lv9/k;

    .line 544
    .line 545
    .line 546
    move-result-object v4

    .line 547
    instance-of v5, v4, Lv9/e;

    .line 548
    .line 549
    if-eqz v5, :cond_12

    .line 550
    .line 551
    check-cast v4, Lv9/e;

    .line 552
    .line 553
    invoke-static {v4}, Lp9/c2;->k(Lv9/e;)Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    goto :goto_8

    .line 558
    :cond_12
    invoke-interface {v3}, Lg9/e;->a()Ljava/lang/Class;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    goto :goto_8

    .line 563
    :cond_13
    :goto_7
    invoke-interface {v3}, Lg9/e;->a()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    :goto_8
    if-eqz v3, :cond_18

    .line 572
    .line 573
    :try_start_0
    iget-object v1, v1, Lta/d;->f:Ljava/lang/String;

    .line 574
    .line 575
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 576
    .line 577
    .line 578
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_9

    .line 580
    :cond_14
    const/4 v1, 0x3

    .line 581
    new-array v1, v1, [Ljava/lang/Object;

    .line 582
    .line 583
    const-string v2, "companionObject"

    .line 584
    .line 585
    aput-object v2, v1, v9

    .line 586
    .line 587
    const-string v2, "kotlin/reflect/jvm/internal/impl/load/java/DescriptorsJvmAbiUtil"

    .line 588
    .line 589
    aput-object v2, v1, v4

    .line 590
    .line 591
    const-string v2, "isClassCompanionObjectWithBackingFieldsInOuter"

    .line 592
    .line 593
    aput-object v2, v1, v5

    .line 594
    .line 595
    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 596
    .line 597
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 602
    .line 603
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    throw v2

    .line 607
    :cond_15
    instance-of v3, v1, Lp9/m;

    .line 608
    .line 609
    if-eqz v3, :cond_16

    .line 610
    .line 611
    check-cast v1, Lp9/m;

    .line 612
    .line 613
    iget-object v2, v1, Lp9/m;->c:Ljava/lang/reflect/Field;

    .line 614
    .line 615
    goto :goto_9

    .line 616
    :cond_16
    instance-of v3, v1, Lp9/n;

    .line 617
    .line 618
    if-eqz v3, :cond_17

    .line 619
    .line 620
    goto :goto_9

    .line 621
    :cond_17
    instance-of v1, v1, Lp9/p;

    .line 622
    .line 623
    if-eqz v1, :cond_19

    .line 624
    .line 625
    :catch_0
    :cond_18
    :goto_9
    return-object v2

    .line 626
    :cond_19
    new-instance v1, Lac/p;

    .line 627
    .line 628
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 629
    .line 630
    .line 631
    throw v1

    .line 632
    nop

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
