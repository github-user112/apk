.class public final synthetic Lx7/h;
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
    iput p1, p0, Lx7/h;->a:I

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lx7/h;->a:I

    .line 4
    .line 5
    const/16 v2, 0x2d

    .line 6
    .line 7
    const/16 v3, 0x3a

    .line 8
    .line 9
    const-string v4, "it"

    .line 10
    .line 11
    const-string v5, "$this$update"

    .line 12
    .line 13
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Lk2/w;

    .line 23
    .line 24
    iget v1, v1, Lk2/w;->i:I

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    :cond_0
    xor-int/lit8 v1, v7, 0x1

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    return-object v1

    .line 37
    :pswitch_0
    move-object/from16 v1, p1

    .line 38
    .line 39
    check-cast v1, Lk2/w;

    .line 40
    .line 41
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    return-object v1

    .line 44
    :pswitch_1
    move-object/from16 v1, p1

    .line 45
    .line 46
    check-cast v1, Lx1/b;

    .line 47
    .line 48
    sget v1, Lz/y;->a:F

    .line 49
    .line 50
    return-object v6

    .line 51
    :pswitch_2
    move-object/from16 v1, p1

    .line 52
    .line 53
    check-cast v1, Lf1/q1;

    .line 54
    .line 55
    sget-object v2, Lr2/n0;->b:Lf1/w2;

    .line 56
    .line 57
    check-cast v1, Ln1/g;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Lf1/b;->t(Lf1/q1;Lf1/t1;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "android.software.leanback"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    sget-object v1, Lz/c;->a:Lz/b;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lz/b;->c:Lz/a;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    sget-object v1, Lz/d;->b:Lz/a;

    .line 89
    .line 90
    :goto_0
    return-object v1

    .line 91
    :pswitch_3
    move-object/from16 v1, p1

    .line 92
    .line 93
    check-cast v1, Ljava/lang/Character;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/16 v2, 0x30

    .line 100
    .line 101
    if-gt v2, v1, :cond_2

    .line 102
    .line 103
    if-ge v1, v3, :cond_2

    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    return-object v1

    .line 111
    :pswitch_4
    move-object/from16 v1, p1

    .line 112
    .line 113
    check-cast v1, Ljava/lang/Character;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-ne v1, v3, :cond_3

    .line 120
    .line 121
    const/4 v7, 0x1

    .line 122
    :cond_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    return-object v1

    .line 127
    :pswitch_5
    move-object/from16 v1, p1

    .line 128
    .line 129
    check-cast v1, Ljava/lang/Character;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ne v1, v3, :cond_4

    .line 136
    .line 137
    const/4 v7, 0x1

    .line 138
    :cond_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    return-object v1

    .line 143
    :pswitch_6
    move-object/from16 v1, p1

    .line 144
    .line 145
    check-cast v1, Ljava/lang/Character;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/16 v2, 0x54

    .line 152
    .line 153
    if-eq v1, v2, :cond_5

    .line 154
    .line 155
    const/16 v2, 0x74

    .line 156
    .line 157
    if-ne v1, v2, :cond_6

    .line 158
    .line 159
    :cond_5
    const/4 v7, 0x1

    .line 160
    :cond_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    return-object v1

    .line 165
    :pswitch_7
    move-object/from16 v1, p1

    .line 166
    .line 167
    check-cast v1, Ljava/lang/Character;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-ne v1, v2, :cond_7

    .line 174
    .line 175
    const/4 v7, 0x1

    .line 176
    :cond_7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    return-object v1

    .line 181
    :pswitch_8
    move-object/from16 v1, p1

    .line 182
    .line 183
    check-cast v1, Ljava/lang/Character;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-ne v1, v2, :cond_8

    .line 190
    .line 191
    const/4 v7, 0x1

    .line 192
    :cond_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    return-object v1

    .line 197
    :pswitch_9
    move-object/from16 v15, p1

    .line 198
    .line 199
    check-cast v15, Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v15, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 205
    .line 206
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 207
    .line 208
    :cond_9
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    move-object v7, v2

    .line 213
    check-cast v7, Lx7/j;

    .line 214
    .line 215
    invoke-static {v7, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const/16 v18, 0x0

    .line 219
    .line 220
    const/16 v19, 0x77f

    .line 221
    .line 222
    const/4 v8, 0x0

    .line 223
    const/4 v9, 0x0

    .line 224
    const/4 v10, 0x0

    .line 225
    const/4 v11, 0x0

    .line 226
    const/4 v12, 0x0

    .line 227
    const/4 v13, 0x0

    .line 228
    const/4 v14, 0x0

    .line 229
    const/16 v16, 0x0

    .line 230
    .line 231
    const/16 v17, 0x0

    .line 232
    .line 233
    invoke-static/range {v7 .. v19}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_9

    .line 242
    .line 243
    return-object v6

    .line 244
    :pswitch_a
    move-object/from16 v1, p1

    .line 245
    .line 246
    check-cast v1, Ljava/lang/Integer;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 253
    .line 254
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 255
    .line 256
    :cond_a
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    move-object v7, v2

    .line 261
    check-cast v7, Lx7/j;

    .line 262
    .line 263
    invoke-static {v7, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const/16 v18, 0x0

    .line 267
    .line 268
    const/16 v19, 0x7df

    .line 269
    .line 270
    const/4 v8, 0x0

    .line 271
    const/4 v9, 0x0

    .line 272
    const/4 v10, 0x0

    .line 273
    const/4 v11, 0x0

    .line 274
    const/4 v12, 0x0

    .line 275
    const/4 v14, 0x0

    .line 276
    const/4 v15, 0x0

    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    const/16 v17, 0x0

    .line 280
    .line 281
    invoke-static/range {v7 .. v19}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_a

    .line 290
    .line 291
    return-object v6

    .line 292
    :pswitch_b
    move-object/from16 v1, p1

    .line 293
    .line 294
    check-cast v1, Lj8/k0;

    .line 295
    .line 296
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sget-object v2, Lx7/j;->l:Ldc/l0;

    .line 300
    .line 301
    sget-object v2, Lx7/j;->l:Ldc/l0;

    .line 302
    .line 303
    :cond_b
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    move-object v7, v3

    .line 308
    check-cast v7, Lx7/j;

    .line 309
    .line 310
    invoke-static {v7, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 314
    .line 315
    invoke-interface {v4}, Lj8/o0;->c()Z

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    const/16 v18, 0x0

    .line 320
    .line 321
    const/16 v19, 0x7bf

    .line 322
    .line 323
    const/4 v8, 0x0

    .line 324
    const/4 v9, 0x0

    .line 325
    const/4 v10, 0x0

    .line 326
    const/4 v11, 0x0

    .line 327
    const/4 v12, 0x0

    .line 328
    const/4 v13, 0x0

    .line 329
    const/4 v15, 0x0

    .line 330
    const/16 v16, 0x0

    .line 331
    .line 332
    const/16 v17, 0x0

    .line 333
    .line 334
    invoke-static/range {v7 .. v19}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eqz v3, :cond_b

    .line 343
    .line 344
    return-object v6

    .line 345
    :pswitch_c
    move-object/from16 v1, p1

    .line 346
    .line 347
    check-cast v1, Lj8/k0;

    .line 348
    .line 349
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    sget-object v2, Lx7/j;->l:Ldc/l0;

    .line 353
    .line 354
    sget-object v2, Lx7/j;->l:Ldc/l0;

    .line 355
    .line 356
    :cond_c
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    move-object v7, v3

    .line 361
    check-cast v7, Lx7/j;

    .line 362
    .line 363
    invoke-static {v7, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v4, v1, Lj8/k0;->b:Lj8/o0;

    .line 367
    .line 368
    invoke-interface {v4}, Lj8/o0;->c()Z

    .line 369
    .line 370
    .line 371
    move-result v12

    .line 372
    const/16 v18, 0x0

    .line 373
    .line 374
    const/16 v19, 0x7ef

    .line 375
    .line 376
    const/4 v8, 0x0

    .line 377
    const/4 v9, 0x0

    .line 378
    const/4 v10, 0x0

    .line 379
    const/4 v11, 0x0

    .line 380
    const/4 v13, 0x0

    .line 381
    const/4 v14, 0x0

    .line 382
    const/4 v15, 0x0

    .line 383
    const/16 v16, 0x0

    .line 384
    .line 385
    const/16 v17, 0x0

    .line 386
    .line 387
    invoke-static/range {v7 .. v19}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v2, v3, v4}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_c

    .line 396
    .line 397
    return-object v6

    .line 398
    :pswitch_d
    move-object/from16 v11, p1

    .line 399
    .line 400
    check-cast v11, Ljava/lang/String;

    .line 401
    .line 402
    invoke-static {v11, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 406
    .line 407
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 408
    .line 409
    :cond_d
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    move-object v7, v2

    .line 414
    check-cast v7, Lx7/j;

    .line 415
    .line 416
    invoke-static {v7, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const/16 v18, 0x0

    .line 420
    .line 421
    const/16 v19, 0x7f7

    .line 422
    .line 423
    const/4 v8, 0x0

    .line 424
    const/4 v9, 0x0

    .line 425
    const/4 v10, 0x0

    .line 426
    const/4 v12, 0x0

    .line 427
    const/4 v13, 0x0

    .line 428
    const/4 v14, 0x0

    .line 429
    const/4 v15, 0x0

    .line 430
    const/16 v16, 0x0

    .line 431
    .line 432
    const/16 v17, 0x0

    .line 433
    .line 434
    invoke-static/range {v7 .. v19}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-eqz v2, :cond_d

    .line 443
    .line 444
    return-object v6

    .line 445
    :pswitch_e
    move-object/from16 v1, p1

    .line 446
    .line 447
    check-cast v1, Ljava/lang/Integer;

    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result v10

    .line 453
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 454
    .line 455
    sget-object v1, Lx7/j;->l:Ldc/l0;

    .line 456
    .line 457
    :cond_e
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    move-object v7, v2

    .line 462
    check-cast v7, Lx7/j;

    .line 463
    .line 464
    invoke-static {v7, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const/16 v18, 0x0

    .line 468
    .line 469
    const/16 v19, 0x7fb

    .line 470
    .line 471
    const/4 v8, 0x0

    .line 472
    const/4 v9, 0x0

    .line 473
    const/4 v11, 0x0

    .line 474
    const/4 v12, 0x0

    .line 475
    const/4 v13, 0x0

    .line 476
    const/4 v14, 0x0

    .line 477
    const/4 v15, 0x0

    .line 478
    const/16 v16, 0x0

    .line 479
    .line 480
    const/16 v17, 0x0

    .line 481
    .line 482
    invoke-static/range {v7 .. v19}, Lx7/j;->a(Lx7/j;IZILjava/lang/String;ZIZLjava/lang/String;ZZZI)Lx7/j;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-virtual {v1, v2, v3}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    if-eqz v2, :cond_e

    .line 491
    .line 492
    return-object v6

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
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
