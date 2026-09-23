.class public final Ld7/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld7/n;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ld7/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Ld7/n;->a:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v1, Ld7/n;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget v0, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    check-cast v4, Le7/b;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-ne v0, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4}, Le7/b;->b()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    :goto_0
    return v3

    .line 28
    :pswitch_0
    check-cast v4, Ld7/o;

    .line 29
    .line 30
    iget-object v2, v4, Ld7/o;->j:La2/d;

    .line 31
    .line 32
    iget-object v6, v4, Ld7/o;->a:Le7/g;

    .line 33
    .line 34
    iget v7, v0, Landroid/os/Message;->what:I

    .line 35
    .line 36
    const v8, 0x7f0800cf

    .line 37
    .line 38
    .line 39
    if-ne v7, v8, :cond_14

    .line 40
    .line 41
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ld7/w;

    .line 44
    .line 45
    iget-object v7, v4, Ld7/o;->e:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    iget-object v10, v4, Ld7/o;->f:Landroid/graphics/Rect;

    .line 52
    .line 53
    iput-object v10, v0, Ld7/w;->d:Landroid/graphics/Rect;

    .line 54
    .line 55
    iget-object v11, v0, Ld7/w;->a:Ld7/t;

    .line 56
    .line 57
    iget v12, v11, Ld7/t;->b:I

    .line 58
    .line 59
    if-nez v10, :cond_1

    .line 60
    .line 61
    const/4 v13, 0x0

    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_1
    iget v10, v0, Ld7/w;->c:I

    .line 65
    .line 66
    iget-object v14, v11, Ld7/t;->a:[B

    .line 67
    .line 68
    iget v15, v11, Ld7/t;->c:I

    .line 69
    .line 70
    const/16 v5, 0x5a

    .line 71
    .line 72
    if-eq v10, v5, :cond_7

    .line 73
    .line 74
    const/16 v5, 0xb4

    .line 75
    .line 76
    if-eq v10, v5, :cond_5

    .line 77
    .line 78
    const/16 v5, 0x10e

    .line 79
    .line 80
    if-eq v10, v5, :cond_2

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_2
    new-instance v11, Ld7/t;

    .line 84
    .line 85
    mul-int v5, v12, v15

    .line 86
    .line 87
    new-array v10, v5, [B

    .line 88
    .line 89
    sub-int/2addr v5, v3

    .line 90
    const/4 v3, 0x0

    .line 91
    :goto_1
    if-ge v3, v12, :cond_4

    .line 92
    .line 93
    add-int/lit8 v17, v15, -0x1

    .line 94
    .line 95
    :goto_2
    if-ltz v17, :cond_3

    .line 96
    .line 97
    mul-int v18, v17, v12

    .line 98
    .line 99
    add-int v18, v18, v3

    .line 100
    .line 101
    aget-byte v18, v14, v18

    .line 102
    .line 103
    aput-byte v18, v10, v5

    .line 104
    .line 105
    add-int/lit8 v5, v5, -0x1

    .line 106
    .line 107
    add-int/lit8 v17, v17, -0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-direct {v11, v10, v15, v12}, Ld7/t;-><init>([BII)V

    .line 114
    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_5
    new-instance v11, Ld7/t;

    .line 118
    .line 119
    mul-int v3, v12, v15

    .line 120
    .line 121
    new-array v5, v3, [B

    .line 122
    .line 123
    add-int/lit8 v10, v3, -0x1

    .line 124
    .line 125
    const/4 v13, 0x0

    .line 126
    :goto_3
    if-ge v13, v3, :cond_6

    .line 127
    .line 128
    aget-byte v17, v14, v13

    .line 129
    .line 130
    aput-byte v17, v5, v10

    .line 131
    .line 132
    add-int/lit8 v10, v10, -0x1

    .line 133
    .line 134
    add-int/lit8 v13, v13, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    invoke-direct {v11, v5, v12, v15}, Ld7/t;-><init>([BII)V

    .line 138
    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_7
    new-instance v11, Ld7/t;

    .line 142
    .line 143
    mul-int v3, v12, v15

    .line 144
    .line 145
    new-array v3, v3, [B

    .line 146
    .line 147
    const/4 v5, 0x0

    .line 148
    const/4 v10, 0x0

    .line 149
    :goto_4
    if-ge v5, v12, :cond_9

    .line 150
    .line 151
    add-int/lit8 v13, v15, -0x1

    .line 152
    .line 153
    :goto_5
    if-ltz v13, :cond_8

    .line 154
    .line 155
    mul-int v17, v13, v12

    .line 156
    .line 157
    add-int v17, v17, v5

    .line 158
    .line 159
    aget-byte v17, v14, v17

    .line 160
    .line 161
    aput-byte v17, v3, v10

    .line 162
    .line 163
    add-int/lit8 v10, v10, 0x1

    .line 164
    .line 165
    add-int/lit8 v13, v13, -0x1

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_9
    invoke-direct {v11, v3, v15, v12}, Ld7/t;-><init>([BII)V

    .line 172
    .line 173
    .line 174
    :goto_6
    iget-object v3, v0, Ld7/w;->d:Landroid/graphics/Rect;

    .line 175
    .line 176
    iget-object v5, v11, Ld7/t;->a:[B

    .line 177
    .line 178
    iget v10, v11, Ld7/t;->b:I

    .line 179
    .line 180
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    iget v14, v3, Landroid/graphics/Rect;->top:I

    .line 189
    .line 190
    mul-int v15, v11, v13

    .line 191
    .line 192
    new-array v15, v15, [B

    .line 193
    .line 194
    mul-int v14, v14, v10

    .line 195
    .line 196
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 197
    .line 198
    add-int/2addr v14, v3

    .line 199
    const/4 v3, 0x0

    .line 200
    :goto_7
    if-ge v3, v13, :cond_a

    .line 201
    .line 202
    mul-int v1, v3, v11

    .line 203
    .line 204
    invoke-static {v5, v14, v15, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    .line 206
    .line 207
    add-int/2addr v14, v10

    .line 208
    add-int/lit8 v3, v3, 0x1

    .line 209
    .line 210
    move-object/from16 v1, p0

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_a
    new-instance v17, Lm5/j;

    .line 214
    .line 215
    move/from16 v20, v11

    .line 216
    .line 217
    move/from16 v22, v13

    .line 218
    .line 219
    move/from16 v18, v11

    .line 220
    .line 221
    move/from16 v19, v13

    .line 222
    .line 223
    move-object/from16 v21, v15

    .line 224
    .line 225
    invoke-direct/range {v17 .. v22}, Lm5/j;-><init>(III[BI)V

    .line 226
    .line 227
    .line 228
    move-object/from16 v13, v17

    .line 229
    .line 230
    :goto_8
    if-eqz v13, :cond_d

    .line 231
    .line 232
    iget-object v1, v4, Ld7/o;->d:Ld7/k;

    .line 233
    .line 234
    invoke-virtual {v1, v13}, Ld7/k;->b(Lm5/j;)Lm5/b;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    iget-object v5, v1, Ld7/k;->a:Lm5/h;

    .line 239
    .line 240
    iget-object v1, v1, Ld7/k;->b:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 243
    .line 244
    .line 245
    :try_start_0
    invoke-static {v5}, Lp9/v;->y(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_c

    .line 250
    .line 251
    iget-object v1, v5, Lm5/h;->b:[Lm5/k;

    .line 252
    .line 253
    if-nez v1, :cond_b

    .line 254
    .line 255
    const/4 v1, 0x0

    .line 256
    invoke-virtual {v5, v1}, Lm5/h;->c(Ljava/util/Map;)V

    .line 257
    .line 258
    .line 259
    :cond_b
    invoke-virtual {v5, v3}, Lm5/h;->b(Lm5/b;)Lm5/m;

    .line 260
    .line 261
    .line 262
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_9
    invoke-virtual {v5}, Lm5/h;->reset()V

    .line 264
    .line 265
    .line 266
    goto :goto_c

    .line 267
    :catch_0
    const/4 v1, 0x0

    .line 268
    goto :goto_a

    .line 269
    :cond_c
    const/4 v1, 0x0

    .line 270
    :try_start_1
    invoke-virtual {v5, v1}, Lm5/h;->c(Ljava/util/Map;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v3}, Lm5/h;->b(Lm5/b;)Lm5/m;

    .line 274
    .line 275
    .line 276
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    goto :goto_9

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    invoke-virtual {v5}, Lm5/h;->reset()V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :catch_1
    :goto_a
    invoke-virtual {v5}, Lm5/h;->reset()V

    .line 284
    .line 285
    .line 286
    goto :goto_b

    .line 287
    :cond_d
    const/4 v1, 0x0

    .line 288
    :goto_b
    move-object v13, v1

    .line 289
    :goto_c
    if-eqz v13, :cond_e

    .line 290
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 292
    .line 293
    .line 294
    move-result-wide v10

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v3, "Found barcode in "

    .line 298
    .line 299
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    sub-long/2addr v10, v8

    .line 303
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v3, " ms"

    .line 307
    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    const-string v3, "o"

    .line 316
    .line 317
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    if-eqz v7, :cond_f

    .line 321
    .line 322
    new-instance v1, Ld7/a;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 325
    .line 326
    .line 327
    iput-object v13, v1, Ld7/a;->a:Lm5/m;

    .line 328
    .line 329
    iput-object v0, v1, Ld7/a;->b:Ld7/w;

    .line 330
    .line 331
    const v3, 0x7f0800d1

    .line 332
    .line 333
    .line 334
    invoke-static {v7, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    new-instance v3, Landroid/os/Bundle;

    .line 339
    .line 340
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 347
    .line 348
    .line 349
    goto :goto_d

    .line 350
    :cond_e
    if-eqz v7, :cond_f

    .line 351
    .line 352
    const v1, 0x7f0800d0

    .line 353
    .line 354
    .line 355
    invoke-static {v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 360
    .line 361
    .line 362
    :cond_f
    :goto_d
    if-eqz v7, :cond_12

    .line 363
    .line 364
    iget-object v1, v4, Ld7/o;->d:Ld7/k;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    new-instance v3, Ljava/util/ArrayList;

    .line 370
    .line 371
    iget-object v1, v1, Ld7/k;->b:Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 374
    .line 375
    .line 376
    new-instance v1, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-eqz v4, :cond_11

    .line 394
    .line 395
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    check-cast v4, Lm5/o;

    .line 400
    .line 401
    iget v5, v4, Lm5/o;->a:F

    .line 402
    .line 403
    const/4 v8, 0x1

    .line 404
    int-to-float v9, v8

    .line 405
    mul-float v5, v5, v9

    .line 406
    .line 407
    iget-object v8, v0, Ld7/w;->d:Landroid/graphics/Rect;

    .line 408
    .line 409
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 410
    .line 411
    int-to-float v10, v10

    .line 412
    add-float/2addr v5, v10

    .line 413
    iget v4, v4, Lm5/o;->b:F

    .line 414
    .line 415
    mul-float v4, v4, v9

    .line 416
    .line 417
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 418
    .line 419
    int-to-float v8, v8

    .line 420
    add-float/2addr v4, v8

    .line 421
    iget-boolean v8, v0, Ld7/w;->e:Z

    .line 422
    .line 423
    if-eqz v8, :cond_10

    .line 424
    .line 425
    int-to-float v8, v12

    .line 426
    sub-float v5, v8, v5

    .line 427
    .line 428
    :cond_10
    new-instance v8, Lm5/o;

    .line 429
    .line 430
    invoke-direct {v8, v5, v4}, Lm5/o;-><init>(FF)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    goto :goto_e

    .line 437
    :cond_11
    const v0, 0x7f0800d2

    .line 438
    .line 439
    .line 440
    invoke-static {v7, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 445
    .line 446
    .line 447
    :cond_12
    iget-object v0, v6, Le7/g;->h:Landroid/os/Handler;

    .line 448
    .line 449
    new-instance v1, Le7/d;

    .line 450
    .line 451
    const/4 v3, 0x0

    .line 452
    invoke-direct {v1, v6, v2, v3}, Le7/d;-><init>(Le7/g;La2/d;I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    .line 457
    .line 458
    :cond_13
    :goto_f
    const/16 v16, 0x1

    .line 459
    .line 460
    goto :goto_10

    .line 461
    :cond_14
    const/4 v3, 0x0

    .line 462
    const v0, 0x7f0800d3

    .line 463
    .line 464
    .line 465
    if-ne v7, v0, :cond_13

    .line 466
    .line 467
    iget-object v0, v6, Le7/g;->h:Landroid/os/Handler;

    .line 468
    .line 469
    new-instance v1, Le7/d;

    .line 470
    .line 471
    invoke-direct {v1, v6, v2, v3}, Le7/d;-><init>(Le7/g;La2/d;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    .line 476
    .line 477
    goto :goto_f

    .line 478
    :goto_10
    return v16

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
