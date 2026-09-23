.class public final synthetic Lm7/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lm7/j;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lm7/j;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Lj8/k0;

    .line 12
    .line 13
    const-string v0, "it"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Ls7/h;->n:Ldc/l0;

    .line 19
    .line 20
    sget-object v3, Ls7/h;->n:Ldc/l0;

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v3}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Ls7/h;

    .line 28
    .line 29
    const-string v5, "$this$update"

    .line 30
    .line 31
    invoke-static {v4, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v5, v2, Lj8/k0;->b:Lj8/o0;

    .line 35
    .line 36
    invoke-interface {v5}, Lj8/o0;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    const/16 v18, 0x3fbf

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v14, 0x0

    .line 53
    const/4 v15, 0x0

    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    invoke-static/range {v4 .. v18}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v0, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_0
    check-cast v0, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    sget-object v0, Ls7/h;->n:Ldc/l0;

    .line 76
    .line 77
    sget-object v0, Ls7/h;->n:Ldc/l0;

    .line 78
    .line 79
    :goto_0
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v4, v2

    .line 84
    move-object v2, v4

    .line 85
    check-cast v2, Ls7/h;

    .line 86
    .line 87
    const-string v5, "$this$update"

    .line 88
    .line 89
    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v15, 0x0

    .line 93
    const/16 v16, 0x3ffe

    .line 94
    .line 95
    move-object v5, v4

    .line 96
    const/4 v4, 0x0

    .line 97
    move-object v6, v5

    .line 98
    const/4 v5, 0x0

    .line 99
    move-object v7, v6

    .line 100
    const/4 v6, 0x0

    .line 101
    move-object v8, v7

    .line 102
    const/4 v7, 0x0

    .line 103
    move-object v9, v8

    .line 104
    const/4 v8, 0x0

    .line 105
    move-object v10, v9

    .line 106
    const/4 v9, 0x0

    .line 107
    move-object v11, v10

    .line 108
    const/4 v10, 0x0

    .line 109
    move-object v12, v11

    .line 110
    const/4 v11, 0x0

    .line 111
    move-object v13, v12

    .line 112
    const/4 v12, 0x0

    .line 113
    move-object v14, v13

    .line 114
    const/4 v13, 0x0

    .line 115
    move-object/from16 v17, v14

    .line 116
    .line 117
    const/4 v14, 0x0

    .line 118
    move-object/from16 v1, v17

    .line 119
    .line 120
    invoke-static/range {v2 .. v16}, Ls7/h;->a(Ls7/h;ZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZIIII)Ls7/h;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_1

    .line 129
    .line 130
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_1
    move-object/from16 v1, p0

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_1
    check-cast v0, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    sget-object v0, Lq7/e;->e:Ldc/l0;

    .line 143
    .line 144
    sget-object v7, Lq7/e;->e:Ldc/l0;

    .line 145
    .line 146
    :cond_2
    invoke-virtual {v7}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    move-object v1, v0

    .line 151
    check-cast v1, Lq7/e;

    .line 152
    .line 153
    const-string v2, "$this$update"

    .line 154
    .line 155
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/4 v4, 0x0

    .line 159
    const/4 v6, 0x7

    .line 160
    const/4 v2, 0x0

    .line 161
    const/4 v3, 0x0

    .line 162
    invoke-static/range {v1 .. v6}, Lq7/e;->a(Lq7/e;ZIIII)Lq7/e;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v7, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_2

    .line 171
    .line 172
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 173
    .line 174
    return-object v0

    .line 175
    :pswitch_2
    check-cast v0, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    sget-object v0, Lq7/e;->e:Ldc/l0;

    .line 182
    .line 183
    sget-object v7, Lq7/e;->e:Ldc/l0;

    .line 184
    .line 185
    :cond_3
    invoke-virtual {v7}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    move-object v1, v0

    .line 190
    check-cast v1, Lq7/e;

    .line 191
    .line 192
    const-string v2, "$this$update"

    .line 193
    .line 194
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/4 v5, 0x0

    .line 198
    const/16 v6, 0xb

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    const/4 v3, 0x0

    .line 202
    invoke-static/range {v1 .. v6}, Lq7/e;->a(Lq7/e;ZIIII)Lq7/e;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v7, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_3

    .line 211
    .line 212
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 213
    .line 214
    return-object v0

    .line 215
    :pswitch_3
    check-cast v0, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    sget-object v0, Lq7/e;->e:Ldc/l0;

    .line 222
    .line 223
    sget-object v7, Lq7/e;->e:Ldc/l0;

    .line 224
    .line 225
    :cond_4
    invoke-virtual {v7}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    move-object v1, v0

    .line 230
    check-cast v1, Lq7/e;

    .line 231
    .line 232
    const-string v2, "$this$update"

    .line 233
    .line 234
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    const/16 v6, 0xd

    .line 239
    .line 240
    const/4 v2, 0x0

    .line 241
    const/4 v4, 0x0

    .line 242
    invoke-static/range {v1 .. v6}, Lq7/e;->a(Lq7/e;ZIIII)Lq7/e;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v7, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_4

    .line 251
    .line 252
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 253
    .line 254
    return-object v0

    .line 255
    :pswitch_4
    check-cast v0, Ljava/lang/Integer;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    sget-object v0, Lp7/b;->e:Ldc/l0;

    .line 262
    .line 263
    sget-object v7, Lp7/b;->e:Ldc/l0;

    .line 264
    .line 265
    :cond_5
    invoke-virtual {v7}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    move-object v1, v0

    .line 270
    check-cast v1, Lp7/b;

    .line 271
    .line 272
    const-string v2, "$this$update"

    .line 273
    .line 274
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const/4 v4, 0x0

    .line 278
    const/4 v6, 0x7

    .line 279
    const/4 v2, 0x0

    .line 280
    const/4 v3, 0x0

    .line 281
    invoke-static/range {v1 .. v6}, Lp7/b;->a(Lp7/b;ZIIII)Lp7/b;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v7, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_5

    .line 290
    .line 291
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 292
    .line 293
    return-object v0

    .line 294
    :pswitch_5
    check-cast v0, Ljava/lang/Integer;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    sget-object v0, Lp7/b;->e:Ldc/l0;

    .line 301
    .line 302
    sget-object v7, Lp7/b;->e:Ldc/l0;

    .line 303
    .line 304
    :cond_6
    invoke-virtual {v7}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    move-object v1, v0

    .line 309
    check-cast v1, Lp7/b;

    .line 310
    .line 311
    const-string v2, "$this$update"

    .line 312
    .line 313
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const/4 v5, 0x0

    .line 317
    const/16 v6, 0xb

    .line 318
    .line 319
    const/4 v2, 0x0

    .line 320
    const/4 v3, 0x0

    .line 321
    invoke-static/range {v1 .. v6}, Lp7/b;->a(Lp7/b;ZIIII)Lp7/b;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v7, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_6

    .line 330
    .line 331
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 332
    .line 333
    return-object v0

    .line 334
    :pswitch_6
    check-cast v0, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    sget-object v0, Lp7/b;->e:Ldc/l0;

    .line 341
    .line 342
    sget-object v7, Lp7/b;->e:Ldc/l0;

    .line 343
    .line 344
    :cond_7
    invoke-virtual {v7}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    move-object v1, v0

    .line 349
    check-cast v1, Lp7/b;

    .line 350
    .line 351
    const-string v2, "$this$update"

    .line 352
    .line 353
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const/4 v5, 0x0

    .line 357
    const/16 v6, 0xd

    .line 358
    .line 359
    const/4 v2, 0x0

    .line 360
    const/4 v4, 0x0

    .line 361
    invoke-static/range {v1 .. v6}, Lp7/b;->a(Lp7/b;ZIIII)Lp7/b;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v7, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_7

    .line 370
    .line 371
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 372
    .line 373
    return-object v0

    .line 374
    :pswitch_7
    check-cast v0, Ljava/lang/Boolean;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    sget-object v0, Lp7/b;->e:Ldc/l0;

    .line 381
    .line 382
    sget-object v7, Lp7/b;->e:Ldc/l0;

    .line 383
    .line 384
    :cond_8
    invoke-virtual {v7}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    move-object v1, v0

    .line 389
    check-cast v1, Lp7/b;

    .line 390
    .line 391
    const-string v3, "$this$update"

    .line 392
    .line 393
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    const/4 v5, 0x0

    .line 397
    const/16 v6, 0xe

    .line 398
    .line 399
    const/4 v3, 0x0

    .line 400
    const/4 v4, 0x0

    .line 401
    invoke-static/range {v1 .. v6}, Lp7/b;->a(Lp7/b;ZIIII)Lp7/b;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v7, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_8

    .line 410
    .line 411
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 412
    .line 413
    return-object v0

    .line 414
    :pswitch_8
    check-cast v0, Lp1/j;

    .line 415
    .line 416
    sget-object v0, Lp1/l;->a:Lm7/j;

    .line 417
    .line 418
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 419
    .line 420
    return-object v0

    .line 421
    :pswitch_9
    sget-object v1, Lp1/l;->c:Ljava/lang/Object;

    .line 422
    .line 423
    monitor-enter v1

    .line 424
    :try_start_0
    sget-object v2, Lp1/l;->i:Ljava/lang/Object;

    .line 425
    .line 426
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    const/4 v4, 0x0

    .line 431
    :goto_1
    if-ge v4, v3, :cond_9

    .line 432
    .line 433
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    check-cast v5, Lf9/k;

    .line 438
    .line 439
    invoke-interface {v5, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    .line 441
    .line 442
    add-int/lit8 v4, v4, 0x1

    .line 443
    .line 444
    goto :goto_1

    .line 445
    :catchall_0
    move-exception v0

    .line 446
    goto :goto_2

    .line 447
    :cond_9
    monitor-exit v1

    .line 448
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 449
    .line 450
    return-object v0

    .line 451
    :goto_2
    monitor-exit v1

    .line 452
    throw v0

    .line 453
    :pswitch_a
    check-cast v0, Ljava/util/Map$Entry;

    .line 454
    .line 455
    const-string v1, "<destruct>"

    .line 456
    .line 457
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    check-cast v1, Ljava/lang/String;

    .line 465
    .line 466
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Loc/j;

    .line 471
    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-static {v1, v2}, Lpc/u;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 478
    .line 479
    .line 480
    const/16 v1, 0x3a

    .line 481
    .line 482
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    return-object v0

    .line 493
    :pswitch_b
    check-cast v0, Llc/a;

    .line 494
    .line 495
    const-string v1, "$this$buildSerialDescriptor"

    .line 496
    .line 497
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    const-string v1, "JsonPrimitive"

    .line 501
    .line 502
    new-instance v2, Lm7/e;

    .line 503
    .line 504
    const/16 v3, 0xc

    .line 505
    .line 506
    invoke-direct {v2, v3}, Lm7/e;-><init>(I)V

    .line 507
    .line 508
    .line 509
    new-instance v3, Loc/m;

    .line 510
    .line 511
    invoke-direct {v3, v2}, Loc/m;-><init>(Lf9/a;)V

    .line 512
    .line 513
    .line 514
    invoke-static {v0, v1, v3}, Llc/a;->a(Llc/a;Ljava/lang/String;Llc/e;)V

    .line 515
    .line 516
    .line 517
    const-string v1, "JsonNull"

    .line 518
    .line 519
    new-instance v2, Lm7/e;

    .line 520
    .line 521
    const/16 v3, 0xd

    .line 522
    .line 523
    invoke-direct {v2, v3}, Lm7/e;-><init>(I)V

    .line 524
    .line 525
    .line 526
    new-instance v3, Loc/m;

    .line 527
    .line 528
    invoke-direct {v3, v2}, Loc/m;-><init>(Lf9/a;)V

    .line 529
    .line 530
    .line 531
    invoke-static {v0, v1, v3}, Llc/a;->a(Llc/a;Ljava/lang/String;Llc/e;)V

    .line 532
    .line 533
    .line 534
    const-string v1, "JsonLiteral"

    .line 535
    .line 536
    new-instance v2, Lm7/e;

    .line 537
    .line 538
    const/16 v3, 0xe

    .line 539
    .line 540
    invoke-direct {v2, v3}, Lm7/e;-><init>(I)V

    .line 541
    .line 542
    .line 543
    new-instance v3, Loc/m;

    .line 544
    .line 545
    invoke-direct {v3, v2}, Loc/m;-><init>(Lf9/a;)V

    .line 546
    .line 547
    .line 548
    invoke-static {v0, v1, v3}, Llc/a;->a(Llc/a;Ljava/lang/String;Llc/e;)V

    .line 549
    .line 550
    .line 551
    const-string v1, "JsonObject"

    .line 552
    .line 553
    new-instance v2, Lm7/e;

    .line 554
    .line 555
    const/16 v3, 0xf

    .line 556
    .line 557
    invoke-direct {v2, v3}, Lm7/e;-><init>(I)V

    .line 558
    .line 559
    .line 560
    new-instance v3, Loc/m;

    .line 561
    .line 562
    invoke-direct {v3, v2}, Loc/m;-><init>(Lf9/a;)V

    .line 563
    .line 564
    .line 565
    invoke-static {v0, v1, v3}, Llc/a;->a(Llc/a;Ljava/lang/String;Llc/e;)V

    .line 566
    .line 567
    .line 568
    const-string v1, "JsonArray"

    .line 569
    .line 570
    new-instance v2, Lm7/e;

    .line 571
    .line 572
    const/16 v3, 0x10

    .line 573
    .line 574
    invoke-direct {v2, v3}, Lm7/e;-><init>(I)V

    .line 575
    .line 576
    .line 577
    new-instance v3, Loc/m;

    .line 578
    .line 579
    invoke-direct {v3, v2}, Loc/m;-><init>(Lf9/a;)V

    .line 580
    .line 581
    .line 582
    invoke-static {v0, v1, v3}, Llc/a;->a(Llc/a;Ljava/lang/String;Llc/e;)V

    .line 583
    .line 584
    .line 585
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 586
    .line 587
    return-object v0

    .line 588
    :pswitch_c
    check-cast v0, Ljava/lang/Integer;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    sget-object v0, Lo7/i;->f:Ldc/l0;

    .line 595
    .line 596
    sget-object v8, Lo7/i;->f:Ldc/l0;

    .line 597
    .line 598
    :cond_a
    invoke-virtual {v8}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    move-object v1, v0

    .line 603
    check-cast v1, Lo7/i;

    .line 604
    .line 605
    const-string v2, "$this$update"

    .line 606
    .line 607
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    const/4 v5, 0x0

    .line 611
    const/16 v7, 0xf

    .line 612
    .line 613
    const/4 v2, 0x0

    .line 614
    const/4 v3, 0x0

    .line 615
    const/4 v4, 0x0

    .line 616
    invoke-static/range {v1 .. v7}, Lo7/i;->a(Lo7/i;IIIIII)Lo7/i;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-virtual {v8, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-eqz v0, :cond_a

    .line 625
    .line 626
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 627
    .line 628
    return-object v0

    .line 629
    :pswitch_d
    check-cast v0, Ljava/lang/Integer;

    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    sget-object v0, Lo7/i;->f:Ldc/l0;

    .line 636
    .line 637
    sget-object v8, Lo7/i;->f:Ldc/l0;

    .line 638
    .line 639
    :cond_b
    invoke-virtual {v8}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    move-object v1, v0

    .line 644
    check-cast v1, Lo7/i;

    .line 645
    .line 646
    const-string v2, "$this$update"

    .line 647
    .line 648
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    const/4 v6, 0x0

    .line 652
    const/16 v7, 0x17

    .line 653
    .line 654
    const/4 v2, 0x0

    .line 655
    const/4 v3, 0x0

    .line 656
    const/4 v4, 0x0

    .line 657
    invoke-static/range {v1 .. v7}, Lo7/i;->a(Lo7/i;IIIIII)Lo7/i;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-virtual {v8, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-eqz v0, :cond_b

    .line 666
    .line 667
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 668
    .line 669
    return-object v0

    .line 670
    :pswitch_e
    check-cast v0, Ljava/lang/Integer;

    .line 671
    .line 672
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    sget-object v0, Lo7/i;->f:Ldc/l0;

    .line 677
    .line 678
    sget-object v8, Lo7/i;->f:Ldc/l0;

    .line 679
    .line 680
    :cond_c
    invoke-virtual {v8}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    move-object v1, v0

    .line 685
    check-cast v1, Lo7/i;

    .line 686
    .line 687
    const-string v2, "$this$update"

    .line 688
    .line 689
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    const/4 v6, 0x0

    .line 693
    const/16 v7, 0x1b

    .line 694
    .line 695
    const/4 v2, 0x0

    .line 696
    const/4 v3, 0x0

    .line 697
    const/4 v5, 0x0

    .line 698
    invoke-static/range {v1 .. v7}, Lo7/i;->a(Lo7/i;IIIIII)Lo7/i;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    invoke-virtual {v8, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    if-eqz v0, :cond_c

    .line 707
    .line 708
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 709
    .line 710
    return-object v0

    .line 711
    :pswitch_f
    check-cast v0, Ljava/lang/Integer;

    .line 712
    .line 713
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    sget-object v0, Lo7/i;->f:Ldc/l0;

    .line 718
    .line 719
    sget-object v8, Lo7/i;->f:Ldc/l0;

    .line 720
    .line 721
    :cond_d
    invoke-virtual {v8}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    move-object v1, v0

    .line 726
    check-cast v1, Lo7/i;

    .line 727
    .line 728
    const-string v2, "$this$update"

    .line 729
    .line 730
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    const/4 v6, 0x0

    .line 734
    const/16 v7, 0x1d

    .line 735
    .line 736
    const/4 v2, 0x0

    .line 737
    const/4 v4, 0x0

    .line 738
    const/4 v5, 0x0

    .line 739
    invoke-static/range {v1 .. v7}, Lo7/i;->a(Lo7/i;IIIIII)Lo7/i;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    invoke-virtual {v8, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    if-eqz v0, :cond_d

    .line 748
    .line 749
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 750
    .line 751
    return-object v0

    .line 752
    :pswitch_10
    move-object v1, v0

    .line 753
    check-cast v1, Lj8/k0;

    .line 754
    .line 755
    const-string v0, "it"

    .line 756
    .line 757
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    sget-object v0, Lo7/i;->f:Ldc/l0;

    .line 761
    .line 762
    sget-object v2, Lo7/i;->f:Ldc/l0;

    .line 763
    .line 764
    :cond_e
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    move-object v3, v0

    .line 769
    check-cast v3, Lo7/i;

    .line 770
    .line 771
    const-string v4, "$this$update"

    .line 772
    .line 773
    invoke-static {v3, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 777
    .line 778
    invoke-interface {v4}, Lj8/o0;->a()I

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    const/4 v8, 0x0

    .line 783
    const/16 v9, 0x1e

    .line 784
    .line 785
    const/4 v5, 0x0

    .line 786
    const/4 v6, 0x0

    .line 787
    const/4 v7, 0x0

    .line 788
    invoke-static/range {v3 .. v9}, Lo7/i;->a(Lo7/i;IIIIII)Lo7/i;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    invoke-virtual {v2, v0, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    if-eqz v0, :cond_e

    .line 797
    .line 798
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 799
    .line 800
    :pswitch_11
    return-object v0

    .line 801
    :pswitch_12
    check-cast v0, Ljava/util/Map;

    .line 802
    .line 803
    new-instance v1, Lo1/d;

    .line 804
    .line 805
    invoke-direct {v1, v0}, Lo1/d;-><init>(Ljava/util/Map;)V

    .line 806
    .line 807
    .line 808
    return-object v1

    .line 809
    :pswitch_13
    check-cast v0, Ljava/lang/Integer;

    .line 810
    .line 811
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    sget-object v0, Lm7/f0;->a:Lr8/o;

    .line 815
    .line 816
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 817
    .line 818
    return-object v0

    .line 819
    :pswitch_14
    move-object v6, v0

    .line 820
    check-cast v6, Ljava/lang/String;

    .line 821
    .line 822
    const-string v0, "it"

    .line 823
    .line 824
    invoke-static {v6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    const-string v1, "CONFIG_TARGET_BLUETOOTH_NAME"

    .line 832
    .line 833
    invoke-interface {v0, v1, v6}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConfig(Ljava/lang/String;Ljava/lang/Object;)V

    .line 834
    .line 835
    .line 836
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 837
    .line 838
    invoke-static {v1, v6}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 842
    .line 843
    sget-object v15, Lm7/z;->m:Ldc/l0;

    .line 844
    .line 845
    :cond_f
    invoke-virtual {v15}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    move-object v1, v0

    .line 850
    check-cast v1, Lm7/z;

    .line 851
    .line 852
    const-string v2, "$this$update"

    .line 853
    .line 854
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    const/4 v13, 0x0

    .line 858
    const/16 v14, 0xfef

    .line 859
    .line 860
    const/4 v2, 0x0

    .line 861
    const/4 v3, 0x0

    .line 862
    const/4 v4, 0x0

    .line 863
    const/4 v5, 0x0

    .line 864
    const/4 v7, 0x0

    .line 865
    const/4 v8, 0x0

    .line 866
    const/4 v9, 0x0

    .line 867
    const/4 v10, 0x0

    .line 868
    const/4 v11, 0x0

    .line 869
    const/4 v12, 0x0

    .line 870
    invoke-static/range {v1 .. v14}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    invoke-virtual {v15, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    if-eqz v0, :cond_f

    .line 879
    .line 880
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 881
    .line 882
    return-object v0

    .line 883
    :pswitch_15
    check-cast v0, Lf9/k;

    .line 884
    .line 885
    const-string v1, "it"

    .line 886
    .line 887
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    new-instance v1, Lc8/x;

    .line 891
    .line 892
    const/4 v2, 0x7

    .line 893
    invoke-direct {v1, v0, v2}, Lc8/x;-><init>(Lf9/k;I)V

    .line 894
    .line 895
    .line 896
    const-string v0, "BLUETOOTH"

    .line 897
    .line 898
    invoke-static {v0, v1}, Lm7/f0;->c(Ljava/lang/String;Lf9/k;)V

    .line 899
    .line 900
    .line 901
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 902
    .line 903
    return-object v0

    .line 904
    :pswitch_16
    move-object v5, v0

    .line 905
    check-cast v5, Ljava/lang/String;

    .line 906
    .line 907
    const-string v0, "it"

    .line 908
    .line 909
    invoke-static {v5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    const-string v1, "CONFIG_WIFI_DIRECT_NAME"

    .line 917
    .line 918
    invoke-interface {v0, v1, v5}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConfig(Ljava/lang/String;Ljava/lang/Object;)V

    .line 919
    .line 920
    .line 921
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 922
    .line 923
    invoke-static {v1, v5}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 927
    .line 928
    sget-object v15, Lm7/z;->m:Ldc/l0;

    .line 929
    .line 930
    :cond_10
    invoke-virtual {v15}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    move-object v1, v0

    .line 935
    check-cast v1, Lm7/z;

    .line 936
    .line 937
    const-string v2, "$this$update"

    .line 938
    .line 939
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    const/4 v13, 0x0

    .line 943
    const/16 v14, 0xff7

    .line 944
    .line 945
    const/4 v2, 0x0

    .line 946
    const/4 v3, 0x0

    .line 947
    const/4 v4, 0x0

    .line 948
    const/4 v6, 0x0

    .line 949
    const/4 v7, 0x0

    .line 950
    const/4 v8, 0x0

    .line 951
    const/4 v9, 0x0

    .line 952
    const/4 v10, 0x0

    .line 953
    const/4 v11, 0x0

    .line 954
    const/4 v12, 0x0

    .line 955
    invoke-static/range {v1 .. v14}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    invoke-virtual {v15, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    if-eqz v0, :cond_10

    .line 964
    .line 965
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 966
    .line 967
    return-object v0

    .line 968
    :pswitch_17
    check-cast v0, Lf9/k;

    .line 969
    .line 970
    const-string v1, "it"

    .line 971
    .line 972
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    const-string v1, "WLAN"

    .line 976
    .line 977
    new-instance v2, Lc8/x;

    .line 978
    .line 979
    const/4 v3, 0x6

    .line 980
    invoke-direct {v2, v0, v3}, Lc8/x;-><init>(Lf9/k;I)V

    .line 981
    .line 982
    .line 983
    invoke-static {v1, v2}, Lm7/f0;->c(Ljava/lang/String;Lf9/k;)V

    .line 984
    .line 985
    .line 986
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 987
    .line 988
    return-object v0

    .line 989
    :pswitch_18
    move-object v7, v0

    .line 990
    check-cast v7, Ljava/lang/String;

    .line 991
    .line 992
    const-string v0, "it"

    .line 993
    .line 994
    invoke-static {v7, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 998
    .line 999
    sget-object v15, Lm7/z;->m:Ldc/l0;

    .line 1000
    .line 1001
    :cond_11
    invoke-virtual {v15}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    move-object v1, v0

    .line 1006
    check-cast v1, Lm7/z;

    .line 1007
    .line 1008
    const-string v2, "$this$update"

    .line 1009
    .line 1010
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    const/4 v13, 0x0

    .line 1014
    const/16 v14, 0xfdf

    .line 1015
    .line 1016
    const/4 v2, 0x0

    .line 1017
    const/4 v3, 0x0

    .line 1018
    const/4 v4, 0x0

    .line 1019
    const/4 v5, 0x0

    .line 1020
    const/4 v6, 0x0

    .line 1021
    const/4 v8, 0x0

    .line 1022
    const/4 v9, 0x0

    .line 1023
    const/4 v10, 0x0

    .line 1024
    const/4 v11, 0x0

    .line 1025
    const/4 v12, 0x0

    .line 1026
    invoke-static/range {v1 .. v14}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v1

    .line 1030
    invoke-virtual {v15, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v0

    .line 1034
    if-eqz v0, :cond_11

    .line 1035
    .line 1036
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 1037
    .line 1038
    const-string v0, "CONNECT_TARGET_IP_ADDRESS"

    .line 1039
    .line 1040
    invoke-static {v0, v7}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1044
    .line 1045
    return-object v0

    .line 1046
    :pswitch_19
    check-cast v0, Ljava/lang/Integer;

    .line 1047
    .line 1048
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1049
    .line 1050
    .line 1051
    move-result v8

    .line 1052
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 1053
    .line 1054
    sget-object v15, Lm7/z;->m:Ldc/l0;

    .line 1055
    .line 1056
    :cond_12
    invoke-virtual {v15}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    move-object v1, v0

    .line 1061
    check-cast v1, Lm7/z;

    .line 1062
    .line 1063
    const-string v2, "$this$update"

    .line 1064
    .line 1065
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    const/4 v13, 0x0

    .line 1069
    const/16 v14, 0xfbf

    .line 1070
    .line 1071
    const/4 v2, 0x0

    .line 1072
    const/4 v3, 0x0

    .line 1073
    const/4 v4, 0x0

    .line 1074
    const/4 v5, 0x0

    .line 1075
    const/4 v6, 0x0

    .line 1076
    const/4 v7, 0x0

    .line 1077
    const/4 v9, 0x0

    .line 1078
    const/4 v10, 0x0

    .line 1079
    const/4 v11, 0x0

    .line 1080
    const/4 v12, 0x0

    .line 1081
    invoke-static/range {v1 .. v14}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    invoke-virtual {v15, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v0

    .line 1089
    if-eqz v0, :cond_12

    .line 1090
    .line 1091
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1092
    .line 1093
    return-object v0

    .line 1094
    :pswitch_1a
    check-cast v0, Ljava/lang/Integer;

    .line 1095
    .line 1096
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1097
    .line 1098
    .line 1099
    move-result v4

    .line 1100
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 1101
    .line 1102
    const-string v0, "CONNECT_TYPE"

    .line 1103
    .line 1104
    invoke-static {v4, v0}, Ll8/d;->f(ILjava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 1108
    .line 1109
    sget-object v15, Lm7/z;->m:Ldc/l0;

    .line 1110
    .line 1111
    :cond_13
    invoke-virtual {v15}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    move-object v1, v0

    .line 1116
    check-cast v1, Lm7/z;

    .line 1117
    .line 1118
    const-string v2, "$this$update"

    .line 1119
    .line 1120
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    const/4 v13, 0x0

    .line 1124
    const/16 v14, 0xffb

    .line 1125
    .line 1126
    const/4 v2, 0x0

    .line 1127
    const/4 v3, 0x0

    .line 1128
    const/4 v5, 0x0

    .line 1129
    const/4 v6, 0x0

    .line 1130
    const/4 v7, 0x0

    .line 1131
    const/4 v8, 0x0

    .line 1132
    const/4 v9, 0x0

    .line 1133
    const/4 v10, 0x0

    .line 1134
    const/4 v11, 0x0

    .line 1135
    const/4 v12, 0x0

    .line 1136
    invoke-static/range {v1 .. v14}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    invoke-virtual {v15, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    if-eqz v0, :cond_13

    .line 1145
    .line 1146
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    invoke-interface {v0, v4}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;->setConnectType(I)V

    .line 1151
    .line 1152
    .line 1153
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1154
    .line 1155
    return-object v0

    .line 1156
    :pswitch_1b
    move-object v12, v0

    .line 1157
    check-cast v12, Ljava/lang/String;

    .line 1158
    .line 1159
    const-string v0, "it"

    .line 1160
    .line 1161
    invoke-static {v12, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 1165
    .line 1166
    sget-object v15, Lm7/z;->m:Ldc/l0;

    .line 1167
    .line 1168
    :cond_14
    invoke-virtual {v15}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    move-object v1, v0

    .line 1173
    check-cast v1, Lm7/z;

    .line 1174
    .line 1175
    const-string v2, "$this$update"

    .line 1176
    .line 1177
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    const/4 v13, 0x0

    .line 1181
    const/16 v14, 0xbff

    .line 1182
    .line 1183
    const/4 v2, 0x0

    .line 1184
    const/4 v3, 0x0

    .line 1185
    const/4 v4, 0x0

    .line 1186
    const/4 v5, 0x0

    .line 1187
    const/4 v6, 0x0

    .line 1188
    const/4 v7, 0x0

    .line 1189
    const/4 v8, 0x0

    .line 1190
    const/4 v9, 0x0

    .line 1191
    const/4 v10, 0x0

    .line 1192
    const/4 v11, 0x0

    .line 1193
    invoke-static/range {v1 .. v14}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v1

    .line 1197
    invoke-virtual {v15, v0, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1198
    .line 1199
    .line 1200
    move-result v0

    .line 1201
    if-eqz v0, :cond_14

    .line 1202
    .line 1203
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1204
    .line 1205
    return-object v0

    .line 1206
    :pswitch_1c
    move-object v11, v0

    .line 1207
    check-cast v11, Ljava/lang/String;

    .line 1208
    .line 1209
    const-string v0, "it"

    .line 1210
    .line 1211
    invoke-static {v11, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 1215
    .line 1216
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 1217
    .line 1218
    :cond_15
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v15

    .line 1222
    move-object v1, v15

    .line 1223
    check-cast v1, Lm7/z;

    .line 1224
    .line 1225
    const-string v2, "$this$update"

    .line 1226
    .line 1227
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    const/4 v13, 0x0

    .line 1231
    const/16 v14, 0xdff

    .line 1232
    .line 1233
    const/4 v2, 0x0

    .line 1234
    const/4 v3, 0x0

    .line 1235
    const/4 v4, 0x0

    .line 1236
    const/4 v5, 0x0

    .line 1237
    const/4 v6, 0x0

    .line 1238
    const/4 v7, 0x0

    .line 1239
    const/4 v8, 0x0

    .line 1240
    const/4 v9, 0x0

    .line 1241
    const/4 v10, 0x0

    .line 1242
    const/4 v12, 0x0

    .line 1243
    invoke-static/range {v1 .. v14}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v1

    .line 1247
    invoke-virtual {v0, v15, v1}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v1

    .line 1251
    if-eqz v1, :cond_15

    .line 1252
    .line 1253
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 1254
    .line 1255
    return-object v0

    .line 1256
    nop

    .line 1257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
