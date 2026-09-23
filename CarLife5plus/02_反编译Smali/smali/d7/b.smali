.class public final Ld7/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/journeyapps/barcodescanner/BarcodeView;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/BarcodeView;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld7/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ld7/b;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

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
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Ld7/b;->a:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v2, v1, Ld7/b;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 14
    .line 15
    iget-object v7, v2, Ld7/f;->y:Ld7/e;

    .line 16
    .line 17
    iget v8, v0, Landroid/os/Message;->what:I

    .line 18
    .line 19
    const v9, 0x7f0800d4

    .line 20
    .line 21
    .line 22
    if-ne v8, v9, :cond_8

    .line 23
    .line 24
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ld7/v;

    .line 27
    .line 28
    iput-object v0, v2, Ld7/f;->n:Ld7/v;

    .line 29
    .line 30
    iget-object v8, v2, Ld7/f;->m:Ld7/v;

    .line 31
    .line 32
    if-eqz v8, :cond_7

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    iget-object v9, v2, Ld7/f;->k:Le7/l;

    .line 37
    .line 38
    if-eqz v9, :cond_6

    .line 39
    .line 40
    iget v10, v0, Ld7/v;->a:I

    .line 41
    .line 42
    iget v11, v0, Ld7/v;->b:I

    .line 43
    .line 44
    iget v12, v8, Ld7/v;->a:I

    .line 45
    .line 46
    iget v8, v8, Ld7/v;->b:I

    .line 47
    .line 48
    iget-object v13, v9, Le7/l;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v13, Le7/n;

    .line 51
    .line 52
    iget-object v9, v9, Le7/l;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v9, Ld7/v;

    .line 55
    .line 56
    invoke-virtual {v13, v0, v9}, Le7/n;->b(Ld7/v;Ld7/v;)Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-lez v9, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-gtz v9, :cond_0

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_0
    iput-object v0, v2, Ld7/f;->o:Landroid/graphics/Rect;

    .line 75
    .line 76
    new-instance v0, Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-direct {v0, v5, v5, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    .line 80
    .line 81
    iget-object v8, v2, Ld7/f;->o:Landroid/graphics/Rect;

    .line 82
    .line 83
    new-instance v9, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 89
    .line 90
    .line 91
    iget-object v0, v2, Ld7/f;->s:Ld7/v;

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iget-object v8, v2, Ld7/f;->s:Ld7/v;

    .line 100
    .line 101
    iget v8, v8, Ld7/v;->a:I

    .line 102
    .line 103
    sub-int/2addr v0, v8

    .line 104
    div-int/2addr v0, v3

    .line 105
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    iget-object v12, v2, Ld7/f;->s:Ld7/v;

    .line 114
    .line 115
    iget v12, v12, Ld7/v;->b:I

    .line 116
    .line 117
    sub-int/2addr v8, v12

    .line 118
    div-int/2addr v8, v3

    .line 119
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 124
    .line 125
    .line 126
    move-object/from16 v16, v7

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    int-to-double v12, v0

    .line 134
    iget-wide v14, v2, Ld7/f;->t:D

    .line 135
    .line 136
    mul-double v12, v12, v14

    .line 137
    .line 138
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    int-to-double v14, v0

    .line 143
    move-object/from16 v16, v7

    .line 144
    .line 145
    iget-wide v6, v2, Ld7/f;->t:D

    .line 146
    .line 147
    mul-double v14, v14, v6

    .line 148
    .line 149
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    .line 150
    .line 151
    .line 152
    move-result-wide v6

    .line 153
    double-to-int v0, v6

    .line 154
    invoke-virtual {v9, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-le v0, v6, :cond_2

    .line 166
    .line 167
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    sub-int/2addr v0, v6

    .line 176
    div-int/2addr v0, v3

    .line 177
    invoke-virtual {v9, v5, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 178
    .line 179
    .line 180
    :cond_2
    :goto_0
    iput-object v9, v2, Ld7/f;->q:Landroid/graphics/Rect;

    .line 181
    .line 182
    new-instance v0, Landroid/graphics/Rect;

    .line 183
    .line 184
    iget-object v3, v2, Ld7/f;->q:Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 187
    .line 188
    .line 189
    iget-object v3, v2, Ld7/f;->o:Landroid/graphics/Rect;

    .line 190
    .line 191
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 192
    .line 193
    neg-int v5, v5

    .line 194
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 195
    .line 196
    neg-int v3, v3

    .line 197
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 198
    .line 199
    .line 200
    new-instance v3, Landroid/graphics/Rect;

    .line 201
    .line 202
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 203
    .line 204
    mul-int v5, v5, v10

    .line 205
    .line 206
    iget-object v6, v2, Ld7/f;->o:Landroid/graphics/Rect;

    .line 207
    .line 208
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    div-int/2addr v5, v6

    .line 213
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 214
    .line 215
    mul-int v6, v6, v11

    .line 216
    .line 217
    iget-object v7, v2, Ld7/f;->o:Landroid/graphics/Rect;

    .line 218
    .line 219
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    div-int/2addr v6, v7

    .line 224
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 225
    .line 226
    mul-int v7, v7, v10

    .line 227
    .line 228
    iget-object v8, v2, Ld7/f;->o:Landroid/graphics/Rect;

    .line 229
    .line 230
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    div-int/2addr v7, v8

    .line 235
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 236
    .line 237
    mul-int v0, v0, v11

    .line 238
    .line 239
    iget-object v8, v2, Ld7/f;->o:Landroid/graphics/Rect;

    .line 240
    .line 241
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    div-int/2addr v0, v8

    .line 246
    invoke-direct {v3, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 247
    .line 248
    .line 249
    iput-object v3, v2, Ld7/f;->r:Landroid/graphics/Rect;

    .line 250
    .line 251
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-lez v0, :cond_4

    .line 256
    .line 257
    iget-object v0, v2, Ld7/f;->r:Landroid/graphics/Rect;

    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-gtz v0, :cond_3

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ld7/e;->e()V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_4
    :goto_1
    iput-object v4, v2, Ld7/f;->r:Landroid/graphics/Rect;

    .line 271
    .line 272
    iput-object v4, v2, Ld7/f;->q:Landroid/graphics/Rect;

    .line 273
    .line 274
    const-string v0, "f"

    .line 275
    .line 276
    const-string v3, "Preview frame is too small"

    .line 277
    .line 278
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2}, Ld7/f;->e()V

    .line 285
    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_6
    iput-object v4, v2, Ld7/f;->r:Landroid/graphics/Rect;

    .line 289
    .line 290
    iput-object v4, v2, Ld7/f;->q:Landroid/graphics/Rect;

    .line 291
    .line 292
    iput-object v4, v2, Ld7/f;->o:Landroid/graphics/Rect;

    .line 293
    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 295
    .line 296
    const-string v2, "containerSize or previewSize is not set yet"

    .line 297
    .line 298
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_7
    :goto_3
    const/4 v5, 0x1

    .line 303
    goto :goto_4

    .line 304
    :cond_8
    move-object/from16 v16, v7

    .line 305
    .line 306
    const v3, 0x7f0800ce

    .line 307
    .line 308
    .line 309
    if-ne v8, v3, :cond_9

    .line 310
    .line 311
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v0, Ljava/lang/Exception;

    .line 314
    .line 315
    iget-object v3, v2, Ld7/f;->a:Le7/g;

    .line 316
    .line 317
    if-eqz v3, :cond_a

    .line 318
    .line 319
    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->g()V

    .line 320
    .line 321
    .line 322
    move-object/from16 v2, v16

    .line 323
    .line 324
    invoke-virtual {v2, v0}, Ld7/e;->c(Ljava/lang/Exception;)V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_9
    move-object/from16 v2, v16

    .line 329
    .line 330
    const v0, 0x7f0800cd

    .line 331
    .line 332
    .line 333
    if-ne v8, v0, :cond_a

    .line 334
    .line 335
    invoke-virtual {v2}, Ld7/e;->a()V

    .line 336
    .line 337
    .line 338
    :cond_a
    :goto_4
    return v5

    .line 339
    :pswitch_0
    iget-object v2, v1, Ld7/b;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 340
    .line 341
    iget v6, v0, Landroid/os/Message;->what:I

    .line 342
    .line 343
    const v7, 0x7f0800d1

    .line 344
    .line 345
    .line 346
    if-ne v6, v7, :cond_e

    .line 347
    .line 348
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Ld7/a;

    .line 351
    .line 352
    if-eqz v0, :cond_d

    .line 353
    .line 354
    iget-object v5, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lu0/j;

    .line 355
    .line 356
    if-eqz v5, :cond_d

    .line 357
    .line 358
    iget v6, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->A:I

    .line 359
    .line 360
    const/4 v7, 0x1

    .line 361
    if-eq v6, v7, :cond_c

    .line 362
    .line 363
    iget-object v5, v5, Lu0/j;->b:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v5, La2/d;

    .line 366
    .line 367
    iget-object v6, v5, La2/d;->b:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v6, Ld7/j;

    .line 370
    .line 371
    iget-object v6, v6, Ld7/j;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 372
    .line 373
    iget-object v6, v6, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 374
    .line 375
    invoke-virtual {v6}, Lcom/journeyapps/barcodescanner/BarcodeView;->g()V

    .line 376
    .line 377
    .line 378
    iget-object v6, v5, La2/d;->b:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v6, Ld7/j;

    .line 381
    .line 382
    iget-object v6, v6, Ld7/j;->i:Ld6/h;

    .line 383
    .line 384
    monitor-enter v6

    .line 385
    :try_start_0
    iget-boolean v7, v6, Ld6/h;->b:Z

    .line 386
    .line 387
    if-eqz v7, :cond_b

    .line 388
    .line 389
    invoke-virtual {v6}, Ld6/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :catchall_0
    move-exception v0

    .line 394
    goto :goto_8

    .line 395
    :cond_b
    :goto_5
    monitor-exit v6

    .line 396
    iget-object v6, v5, La2/d;->b:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v6, Ld7/j;

    .line 399
    .line 400
    iget-object v6, v6, Ld7/j;->j:Landroid/os/Handler;

    .line 401
    .line 402
    new-instance v7, Lc/n;

    .line 403
    .line 404
    const/4 v8, 0x1

    .line 405
    invoke-direct {v7, v8, v5, v0}, Lc/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    .line 410
    .line 411
    iget v0, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->A:I

    .line 412
    .line 413
    if-ne v0, v3, :cond_d

    .line 414
    .line 415
    iput v8, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->A:I

    .line 416
    .line 417
    iput-object v4, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lu0/j;

    .line 418
    .line 419
    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->i()V

    .line 420
    .line 421
    .line 422
    :cond_c
    :goto_6
    const/4 v5, 0x1

    .line 423
    goto :goto_a

    .line 424
    :cond_d
    :goto_7
    const/4 v7, 0x1

    .line 425
    goto :goto_6

    .line 426
    :goto_8
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    throw v0

    .line 428
    :cond_e
    const v3, 0x7f0800d0

    .line 429
    .line 430
    .line 431
    if-ne v6, v3, :cond_f

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_f
    const v3, 0x7f0800d2

    .line 435
    .line 436
    .line 437
    if-ne v6, v3, :cond_11

    .line 438
    .line 439
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v0, Ljava/util/List;

    .line 442
    .line 443
    iget-object v3, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lu0/j;

    .line 444
    .line 445
    if-eqz v3, :cond_d

    .line 446
    .line 447
    iget v2, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->A:I

    .line 448
    .line 449
    const/4 v7, 0x1

    .line 450
    if-eq v2, v7, :cond_c

    .line 451
    .line 452
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    :cond_10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    if-eqz v2, :cond_c

    .line 464
    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    check-cast v2, Lm5/o;

    .line 470
    .line 471
    iget-object v4, v3, Lu0/j;->c:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v4, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 474
    .line 475
    iget-object v4, v4, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 476
    .line 477
    iget-object v5, v4, Lcom/journeyapps/barcodescanner/ViewfinderView;->g:Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    const/16 v6, 0x14

    .line 484
    .line 485
    if-ge v5, v6, :cond_10

    .line 486
    .line 487
    iget-object v4, v4, Lcom/journeyapps/barcodescanner/ViewfinderView;->g:Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_11
    :goto_a
    return v5

    .line 494
    nop

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
