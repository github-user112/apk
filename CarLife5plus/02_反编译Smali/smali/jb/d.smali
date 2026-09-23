.class public final Ljb/d;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljb/i;


# direct methods
.method public synthetic constructor <init>(Ljb/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Ljb/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljb/d;->b:Ljb/i;

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
    .locals 13

    .line 1
    iget v0, p0, Ljb/d;->a:I

    .line 2
    .line 3
    const-string v1, "getConstructorList(...)"

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, p0, Ljb/d;->b:Ljb/i;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-static {v6}, Lv9/v;->c(Lv9/i;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :pswitch_0
    iget-object v0, v6, Ljb/i;->l:Lhb/k;

    .line 21
    .line 22
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 23
    .line 24
    iget-object v0, v0, Lhb/i;->e:Lhb/a;

    .line 25
    .line 26
    iget-object v1, v6, Ljb/i;->v:Lhb/u;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lhb/c;->r0(Lhb/u;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :pswitch_1
    invoke-virtual {v6}, Ljb/i;->g()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v6}, Ljb/i;->i()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_0
    iget-object v0, v6, Ljb/i;->e:Lpa/k;

    .line 52
    .line 53
    iget-object v1, v6, Ljb/i;->l:Lhb/k;

    .line 54
    .line 55
    iget-object v7, v1, Lhb/k;->b:Lra/f;

    .line 56
    .line 57
    iget-object v8, v1, Lhb/k;->d:Lra/g;

    .line 58
    .line 59
    iget-object v1, v1, Lhb/k;->h:Lp/h3;

    .line 60
    .line 61
    const-string v9, "<this>"

    .line 62
    .line 63
    invoke-static {v0, v9}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v9, "nameResolver"

    .line 67
    .line 68
    invoke-static {v7, v9}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v9, v0, Lpa/k;->z:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-lez v9, :cond_6

    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v9, v0, Lpa/k;->z:Ljava/util/List;

    .line 84
    .line 85
    const-string v10, "getMultiFieldValueClassUnderlyingNameList(...)"

    .line 86
    .line 87
    invoke-static {v9, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v10, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {v9, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_1

    .line 108
    .line 109
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    check-cast v11, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-static {v11}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    invoke-static {v7, v11}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    iget-object v9, v0, Lpa/k;->C:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    iget-object v11, v0, Lpa/k;->B:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    new-instance v12, Lr8/j;

    .line 151
    .line 152
    invoke-direct {v12, v9, v11}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    new-instance v11, Lr8/j;

    .line 164
    .line 165
    invoke-direct {v11, v9, v4}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v12, v11}, Lr8/j;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_2

    .line 173
    .line 174
    iget-object v0, v0, Lpa/k;->C:Ljava/util/List;

    .line 175
    .line 176
    const-string v4, "getMultiFieldValueClassUnderlyingTypeIdList(...)"

    .line 177
    .line 178
    invoke-static {v0, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v4, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-static {v0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_3

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    check-cast v7, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    invoke-virtual {v8, v7}, Lra/g;->a(I)Lpa/s0;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    new-instance v9, Lr8/j;

    .line 230
    .line 231
    invoke-direct {v9, v4, v8}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v12, v9}, Lr8/j;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_5

    .line 239
    .line 240
    iget-object v4, v0, Lpa/k;->B:Ljava/util/List;

    .line 241
    .line 242
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-static {v4, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_4

    .line 260
    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Lpa/s0;

    .line 266
    .line 267
    const-string v7, "p0"

    .line 268
    .line 269
    invoke-static {v4, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v4, v5}, Lp/h3;->i(Lpa/s0;Z)Llb/a0;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_4
    invoke-static {v10, v0}, Ls8/p;->G0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-instance v1, Lv9/z;

    .line 285
    .line 286
    invoke-direct {v1, v0}, Lv9/z;-><init>(Ljava/util/ArrayList;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_4

    .line 290
    .line 291
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 292
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v3, "class "

    .line 296
    .line 297
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget v0, v0, Lpa/k;->e:I

    .line 301
    .line 302
    invoke-static {v7, v0}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v0, " has illegal multi-field value class representation"

    .line 310
    .line 311
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v1

    .line 326
    :cond_6
    iget v2, v0, Lpa/k;->c:I

    .line 327
    .line 328
    const/16 v4, 0x8

    .line 329
    .line 330
    and-int/2addr v2, v4

    .line 331
    if-ne v2, v4, :cond_c

    .line 332
    .line 333
    iget v2, v0, Lpa/k;->w:I

    .line 334
    .line 335
    invoke-static {v7, v2}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    iget v4, v0, Lpa/k;->c:I

    .line 340
    .line 341
    and-int/lit8 v9, v4, 0x10

    .line 342
    .line 343
    const/16 v10, 0x10

    .line 344
    .line 345
    if-ne v9, v10, :cond_7

    .line 346
    .line 347
    iget-object v4, v0, Lpa/k;->x:Lpa/s0;

    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_7
    const/16 v9, 0x20

    .line 351
    .line 352
    and-int/2addr v4, v9

    .line 353
    if-ne v4, v9, :cond_8

    .line 354
    .line 355
    iget v4, v0, Lpa/k;->y:I

    .line 356
    .line 357
    invoke-virtual {v8, v4}, Lra/g;->a(I)Lpa/s0;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    goto :goto_3

    .line 362
    :cond_8
    move-object v4, v3

    .line 363
    :goto_3
    if-eqz v4, :cond_9

    .line 364
    .line 365
    invoke-virtual {v1, v4, v5}, Lp/h3;->i(Lpa/s0;Z)Llb/a0;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    if-nez v1, :cond_a

    .line 370
    .line 371
    :cond_9
    invoke-virtual {v6, v2}, Ljb/i;->C0(Lua/e;)Llb/a0;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    if-eqz v1, :cond_b

    .line 376
    .line 377
    :cond_a
    new-instance v0, Lv9/u;

    .line 378
    .line 379
    invoke-direct {v0, v2, v1}, Lv9/u;-><init>(Lua/e;Lob/e;)V

    .line 380
    .line 381
    .line 382
    move-object v1, v0

    .line 383
    goto :goto_4

    .line 384
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 385
    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v4, "cannot determine underlying type for value class "

    .line 389
    .line 390
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget v0, v0, Lpa/k;->e:I

    .line 394
    .line 395
    invoke-static {v7, v0}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v0, " with property "

    .line 403
    .line 404
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    throw v1

    .line 422
    :cond_c
    move-object v1, v3

    .line 423
    :goto_4
    if-eqz v1, :cond_d

    .line 424
    .line 425
    move-object v3, v1

    .line 426
    goto :goto_5

    .line 427
    :cond_d
    iget-object v0, v6, Ljb/i;->f:Lra/a;

    .line 428
    .line 429
    const/4 v1, 0x5

    .line 430
    invoke-virtual {v0, v5, v1, v5}, Lra/a;->a(III)Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_10

    .line 435
    .line 436
    invoke-virtual {v6}, Ljb/i;->N()Ly9/i;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    if-eqz v0, :cond_f

    .line 441
    .line 442
    check-cast v0, Ly9/u;

    .line 443
    .line 444
    invoke-virtual {v0}, Ly9/u;->S()Ljava/util/List;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    const-string v1, "getValueParameters(...)"

    .line 449
    .line 450
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-static {v0}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    check-cast v0, Ly9/r0;

    .line 458
    .line 459
    check-cast v0, Ly9/m;

    .line 460
    .line 461
    invoke-virtual {v0}, Ly9/m;->getName()Lua/e;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    const-string v1, "getName(...)"

    .line 466
    .line 467
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v6, v0}, Ljb/i;->C0(Lua/e;)Llb/a0;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    if-eqz v1, :cond_e

    .line 475
    .line 476
    new-instance v3, Lv9/u;

    .line 477
    .line 478
    invoke-direct {v3, v0, v1}, Lv9/u;-><init>(Lua/e;Lob/e;)V

    .line 479
    .line 480
    .line 481
    goto :goto_5

    .line 482
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 483
    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    const-string v2, "Value class has no underlying property: "

    .line 487
    .line 488
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw v0

    .line 506
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 507
    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    const-string v2, "Inline class has no primary constructor: "

    .line 511
    .line 512
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw v0

    .line 530
    :cond_10
    :goto_5
    return-object v3

    .line 531
    :pswitch_2
    iget-object v0, v6, Ljb/i;->i:Lv9/x;

    .line 532
    .line 533
    sget-object v1, Lv9/x;->c:Lv9/x;

    .line 534
    .line 535
    if-eq v0, v1, :cond_11

    .line 536
    .line 537
    goto :goto_7

    .line 538
    :cond_11
    iget-object v2, v6, Ljb/i;->e:Lpa/k;

    .line 539
    .line 540
    iget-object v2, v2, Lpa/k;->u:Ljava/util/List;

    .line 541
    .line 542
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    if-nez v3, :cond_13

    .line 550
    .line 551
    new-instance v0, Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .line 555
    .line 556
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    :cond_12
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    if-eqz v2, :cond_16

    .line 565
    .line 566
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    check-cast v2, Ljava/lang/Integer;

    .line 571
    .line 572
    iget-object v3, v6, Ljb/i;->l:Lhb/k;

    .line 573
    .line 574
    iget-object v4, v3, Lhb/k;->a:Lhb/i;

    .line 575
    .line 576
    iget-object v3, v3, Lhb/k;->b:Lra/f;

    .line 577
    .line 578
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    invoke-static {v3, v2}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-virtual {v4, v2}, Lhb/i;->b(Lua/b;)Lv9/e;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    if-eqz v2, :cond_12

    .line 594
    .line 595
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    goto :goto_6

    .line 599
    :cond_13
    if-eq v0, v1, :cond_14

    .line 600
    .line 601
    :goto_7
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 602
    .line 603
    goto :goto_8

    .line 604
    :cond_14
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 605
    .line 606
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 607
    .line 608
    .line 609
    iget-object v1, v6, Ljb/i;->q:Lv9/k;

    .line 610
    .line 611
    instance-of v2, v1, Lv9/d0;

    .line 612
    .line 613
    if-eqz v2, :cond_15

    .line 614
    .line 615
    check-cast v1, Lv9/d0;

    .line 616
    .line 617
    invoke-interface {v1}, Lv9/d0;->R()Leb/o;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-static {v6, v0, v1, v4}, Lxa/k;->c(Lv9/e;Ljava/util/LinkedHashSet;Leb/o;Z)V

    .line 622
    .line 623
    .line 624
    :cond_15
    invoke-virtual {v6}, Ly9/b;->m0()Leb/o;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-static {v6, v0, v1, v5}, Lxa/k;->c(Lv9/e;Ljava/util/LinkedHashSet;Leb/o;Z)V

    .line 629
    .line 630
    .line 631
    new-instance v1, Lxa/g;

    .line 632
    .line 633
    invoke-direct {v1, v5}, Lxa/g;-><init>(I)V

    .line 634
    .line 635
    .line 636
    invoke-static {v0, v1}, Ls8/p;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    :cond_16
    :goto_8
    return-object v0

    .line 641
    :pswitch_3
    iget-object v0, v6, Ljb/i;->e:Lpa/k;

    .line 642
    .line 643
    iget v1, v0, Lpa/k;->c:I

    .line 644
    .line 645
    const/4 v2, 0x4

    .line 646
    and-int/2addr v1, v2

    .line 647
    if-ne v1, v2, :cond_17

    .line 648
    .line 649
    iget-object v1, v6, Ljb/i;->l:Lhb/k;

    .line 650
    .line 651
    iget-object v1, v1, Lhb/k;->b:Lra/f;

    .line 652
    .line 653
    iget v0, v0, Lpa/k;->f:I

    .line 654
    .line 655
    invoke-static {v1, v0}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-virtual {v6}, Ljb/i;->B0()Ljb/h;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    sget-object v2, Lda/b;->g:Lda/b;

    .line 664
    .line 665
    invoke-virtual {v1, v0, v2}, Ljb/h;->e(Lua/e;Lda/b;)Lv9/h;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    instance-of v1, v0, Lv9/e;

    .line 670
    .line 671
    if-eqz v1, :cond_17

    .line 672
    .line 673
    move-object v3, v0

    .line 674
    check-cast v3, Lv9/e;

    .line 675
    .line 676
    :cond_17
    return-object v3

    .line 677
    :pswitch_4
    iget-object v0, v6, Ljb/i;->l:Lhb/k;

    .line 678
    .line 679
    iget-object v3, v6, Ljb/i;->e:Lpa/k;

    .line 680
    .line 681
    iget-object v3, v3, Lpa/k;->p:Ljava/util/List;

    .line 682
    .line 683
    invoke-static {v3, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    new-instance v1, Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 692
    .line 693
    .line 694
    move-result-object v3

    .line 695
    :cond_18
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    if-eqz v5, :cond_19

    .line 700
    .line 701
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v5

    .line 705
    move-object v7, v5

    .line 706
    check-cast v7, Lpa/n;

    .line 707
    .line 708
    sget-object v8, Lra/d;->n:Lra/b;

    .line 709
    .line 710
    iget v7, v7, Lpa/n;->d:I

    .line 711
    .line 712
    invoke-virtual {v8, v7}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 713
    .line 714
    .line 715
    move-result-object v7

    .line 716
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 717
    .line 718
    .line 719
    move-result v7

    .line 720
    if-eqz v7, :cond_18

    .line 721
    .line 722
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    goto :goto_9

    .line 726
    :cond_19
    new-instance v3, Ljava/util/ArrayList;

    .line 727
    .line 728
    invoke-static {v1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    if-eqz v2, :cond_1a

    .line 744
    .line 745
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    check-cast v2, Lpa/n;

    .line 750
    .line 751
    iget-object v5, v0, Lhb/k;->i:Lhb/t;

    .line 752
    .line 753
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v5, v2, v4}, Lhb/t;->d(Lpa/n;Z)Ljb/c;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    goto :goto_a

    .line 764
    :cond_1a
    invoke-virtual {v6}, Ljb/i;->N()Ly9/i;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    invoke-static {v1}, Lp9/x1;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-static {v1, v3}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 777
    .line 778
    iget-object v0, v0, Lhb/i;->n:Lx9/b;

    .line 779
    .line 780
    invoke-interface {v0, v6}, Lx9/b;->e(Lv9/e;)Ljava/util/Collection;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    check-cast v0, Ljava/lang/Iterable;

    .line 785
    .line 786
    invoke-static {v0, v1}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    return-object v0

    .line 791
    :pswitch_5
    const/4 v0, 0x1

    .line 792
    iget-object v5, p0, Ljb/d;->b:Ljb/i;

    .line 793
    .line 794
    iget-object v2, v5, Ljb/i;->k:Lv9/f;

    .line 795
    .line 796
    invoke-virtual {v2}, Lv9/f;->a()Z

    .line 797
    .line 798
    .line 799
    move-result v4

    .line 800
    if-eqz v4, :cond_23

    .line 801
    .line 802
    new-instance v4, Lxa/c;

    .line 803
    .line 804
    const/4 v8, 0x1

    .line 805
    const/4 v9, 0x1

    .line 806
    const/4 v6, 0x0

    .line 807
    sget-object v7, Lw9/g;->a:Lw9/f;

    .line 808
    .line 809
    sget-object v10, Lv9/m0;->e0:Lv9/n0;

    .line 810
    .line 811
    invoke-direct/range {v4 .. v10}, Ly9/i;-><init>(Lv9/e;Lv9/j;Lw9/h;ZILv9/m0;)V

    .line 812
    .line 813
    .line 814
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 815
    .line 816
    sget v1, Lxa/d;->a:I

    .line 817
    .line 818
    sget-object v1, Lv9/f;->c:Lv9/f;

    .line 819
    .line 820
    if-eq v2, v1, :cond_21

    .line 821
    .line 822
    invoke-virtual {v2}, Lv9/f;->a()Z

    .line 823
    .line 824
    .line 825
    move-result v1

    .line 826
    if-eqz v1, :cond_1b

    .line 827
    .line 828
    goto :goto_b

    .line 829
    :cond_1b
    invoke-static {v5}, Lxa/d;->q(Lv9/k;)Z

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    if-eqz v1, :cond_1d

    .line 834
    .line 835
    sget-object v1, Lv9/o;->a:Lea/o;

    .line 836
    .line 837
    if-eqz v1, :cond_1c

    .line 838
    .line 839
    goto :goto_c

    .line 840
    :cond_1c
    const/16 v0, 0x33

    .line 841
    .line 842
    invoke-static {v0}, Lxa/d;->a(I)V

    .line 843
    .line 844
    .line 845
    throw v3

    .line 846
    :cond_1d
    invoke-static {v5}, Lxa/d;->k(Lv9/k;)Z

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    if-eqz v1, :cond_1f

    .line 851
    .line 852
    sget-object v1, Lv9/o;->j:Lea/o;

    .line 853
    .line 854
    if-eqz v1, :cond_1e

    .line 855
    .line 856
    goto :goto_c

    .line 857
    :cond_1e
    const/16 v0, 0x34

    .line 858
    .line 859
    invoke-static {v0}, Lxa/d;->a(I)V

    .line 860
    .line 861
    .line 862
    throw v3

    .line 863
    :cond_1f
    sget-object v1, Lv9/o;->e:Lea/o;

    .line 864
    .line 865
    if-eqz v1, :cond_20

    .line 866
    .line 867
    goto :goto_c

    .line 868
    :cond_20
    const/16 v0, 0x35

    .line 869
    .line 870
    invoke-static {v0}, Lxa/d;->a(I)V

    .line 871
    .line 872
    .line 873
    throw v3

    .line 874
    :cond_21
    :goto_b
    sget-object v1, Lv9/o;->a:Lea/o;

    .line 875
    .line 876
    if-eqz v1, :cond_22

    .line 877
    .line 878
    :goto_c
    invoke-virtual {v4, v0, v1}, Ly9/i;->Q0(Ljava/util/List;Lea/o;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v5}, Ly9/b;->n()Llb/a0;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    iput-object v0, v4, Ly9/u;->g:Llb/w;

    .line 886
    .line 887
    move-object v3, v4

    .line 888
    goto :goto_e

    .line 889
    :cond_22
    const/16 v0, 0x31

    .line 890
    .line 891
    invoke-static {v0}, Lxa/d;->a(I)V

    .line 892
    .line 893
    .line 894
    throw v3

    .line 895
    :cond_23
    iget-object v2, v5, Ljb/i;->e:Lpa/k;

    .line 896
    .line 897
    iget-object v2, v2, Lpa/k;->p:Ljava/util/List;

    .line 898
    .line 899
    invoke-static {v2, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 907
    .line 908
    .line 909
    move-result v2

    .line 910
    if-eqz v2, :cond_25

    .line 911
    .line 912
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v2

    .line 916
    move-object v4, v2

    .line 917
    check-cast v4, Lpa/n;

    .line 918
    .line 919
    sget-object v6, Lra/d;->n:Lra/b;

    .line 920
    .line 921
    iget v4, v4, Lpa/n;->d:I

    .line 922
    .line 923
    invoke-virtual {v6, v4}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 924
    .line 925
    .line 926
    move-result-object v4

    .line 927
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 928
    .line 929
    .line 930
    move-result v4

    .line 931
    if-nez v4, :cond_24

    .line 932
    .line 933
    goto :goto_d

    .line 934
    :cond_25
    move-object v2, v3

    .line 935
    :goto_d
    check-cast v2, Lpa/n;

    .line 936
    .line 937
    if-eqz v2, :cond_26

    .line 938
    .line 939
    iget-object v1, v5, Ljb/i;->l:Lhb/k;

    .line 940
    .line 941
    iget-object v1, v1, Lhb/k;->i:Lhb/t;

    .line 942
    .line 943
    invoke-virtual {v1, v2, v0}, Lhb/t;->d(Lpa/n;Z)Ljb/c;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    :cond_26
    :goto_e
    return-object v3

    .line 948
    nop

    .line 949
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
