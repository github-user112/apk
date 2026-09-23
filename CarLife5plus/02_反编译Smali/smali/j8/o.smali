.class public final Lj8/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll8/p;


# direct methods
.method public synthetic constructor <init>(Ll8/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj8/o;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/o;->b:Ll8/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lj8/o;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0x30

    .line 8
    .line 9
    const/16 v5, 0x10

    .line 10
    .line 11
    sget-object v6, Lr1/m;->a:Lr1/m;

    .line 12
    .line 13
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 14
    .line 15
    const/4 v8, 0x3

    .line 16
    const/4 v9, 0x1

    .line 17
    iget-object v10, v0, Lj8/o;->b:Ll8/p;

    .line 18
    .line 19
    const/4 v11, 0x2

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Lf1/s;

    .line 26
    .line 27
    move-object/from16 v2, p2

    .line 28
    .line 29
    check-cast v2, Ljava/lang/Number;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    and-int/2addr v2, v8

    .line 36
    if-ne v2, v11, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    new-instance v2, Lj8/o;

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-direct {v2, v10, v8}, Lj8/o;-><init>(Ll8/p;I)V

    .line 53
    .line 54
    .line 55
    const v8, -0x2285e06b

    .line 56
    .line 57
    .line 58
    invoke-static {v8, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v3, v2, v1, v4, v9}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 63
    .line 64
    .line 65
    invoke-static {v5, v1}, Lg5/a;->B(ILf1/s;)F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-static {v6, v2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v1, v2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Lj8/o;

    .line 77
    .line 78
    invoke-direct {v2, v10, v11}, Lj8/o;-><init>(Ll8/p;I)V

    .line 79
    .line 80
    .line 81
    const v5, -0x453aa282

    .line 82
    .line 83
    .line 84
    invoke-static {v5, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v3, v2, v1, v4, v9}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-object v7

    .line 92
    :pswitch_0
    move-object/from16 v1, p1

    .line 93
    .line 94
    check-cast v1, Lf1/s;

    .line 95
    .line 96
    move-object/from16 v2, p2

    .line 97
    .line 98
    check-cast v2, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    and-int/2addr v2, v8

    .line 105
    if-ne v2, v11, :cond_3

    .line 106
    .line 107
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_2

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    :goto_2
    new-instance v2, Lj8/o;

    .line 119
    .line 120
    invoke-direct {v2, v10, v9}, Lj8/o;-><init>(Ll8/p;I)V

    .line 121
    .line 122
    .line 123
    const v5, 0x7136867b

    .line 124
    .line 125
    .line 126
    invoke-static {v5, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v3, v2, v1, v4}, Lw0/y0;->b(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 131
    .line 132
    .line 133
    :goto_3
    return-object v7

    .line 134
    :pswitch_1
    move-object/from16 v1, p1

    .line 135
    .line 136
    check-cast v1, Lf1/s;

    .line 137
    .line 138
    move-object/from16 v3, p2

    .line 139
    .line 140
    check-cast v3, Ljava/lang/Number;

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    and-int/2addr v3, v8

    .line 147
    if-ne v3, v11, :cond_5

    .line 148
    .line 149
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-nez v3, :cond_4

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_4
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :cond_5
    :goto_4
    sget-object v3, Ld0/h;->d:Ld0/d;

    .line 162
    .line 163
    sget-object v4, Lr1/c;->n:Lr1/f;

    .line 164
    .line 165
    invoke-static {v5, v1}, Lg5/a;->B(ILf1/s;)F

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    invoke-static {v6, v2, v11, v9}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const/16 v11, 0x36

    .line 174
    .line 175
    invoke-static {v3, v4, v1, v11}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget-wide v11, v1, Lf1/s;->T:J

    .line 180
    .line 181
    const/16 v4, 0x20

    .line 182
    .line 183
    ushr-long v13, v11, v4

    .line 184
    .line 185
    xor-long/2addr v11, v13

    .line 186
    long-to-int v4, v11

    .line 187
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    invoke-static {v1, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    sget-object v12, Lq2/j;->d0:Lq2/i;

    .line 196
    .line 197
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    sget-object v12, Lq2/i;->b:Lq2/a0;

    .line 201
    .line 202
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 203
    .line 204
    .line 205
    iget-boolean v13, v1, Lf1/s;->S:Z

    .line 206
    .line 207
    if-eqz v13, :cond_6

    .line 208
    .line 209
    invoke-virtual {v1, v12}, Lf1/s;->k(Lf9/a;)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_6
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 214
    .line 215
    .line 216
    :goto_5
    sget-object v12, Lq2/i;->e:Lq2/h;

    .line 217
    .line 218
    invoke-static {v1, v12, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    sget-object v3, Lq2/i;->d:Lq2/h;

    .line 222
    .line 223
    invoke-static {v1, v3, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    sget-object v3, Lq2/i;->f:Lq2/h;

    .line 227
    .line 228
    iget-boolean v11, v1, Lf1/s;->S:Z

    .line 229
    .line 230
    if-nez v11, :cond_7

    .line 231
    .line 232
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    invoke-static {v11, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    if-nez v11, :cond_8

    .line 245
    .line 246
    :cond_7
    invoke-static {v4, v1, v4, v3}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 247
    .line 248
    .line 249
    :cond_8
    sget-object v3, Lq2/i;->c:Lq2/h;

    .line 250
    .line 251
    invoke-static {v1, v3, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-static {}, Ll8/p;->j()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    const-string v3, "\u6253\u5f00\u6d4f\u89c8\u5668\u4e0a\u4f20: "

    .line 262
    .line 263
    invoke-static {v3, v2}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    const/16 v2, 0x16

    .line 268
    .line 269
    invoke-static {v2, v1}, Lg5/a;->B(ILf1/s;)F

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    const-wide v3, 0x100000000L

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    invoke-static {v2, v3, v4}, Lc7/a;->M(FJ)J

    .line 279
    .line 280
    .line 281
    move-result-wide v15

    .line 282
    sget-object v12, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 283
    .line 284
    new-instance v2, Lm3/k;

    .line 285
    .line 286
    invoke-direct {v2, v8}, Lm3/k;-><init>(I)V

    .line 287
    .line 288
    .line 289
    const/16 v30, 0x0

    .line 290
    .line 291
    const v31, 0x1fdf4

    .line 292
    .line 293
    .line 294
    const-wide/16 v13, 0x0

    .line 295
    .line 296
    const/16 v17, 0x0

    .line 297
    .line 298
    const-wide/16 v18, 0x0

    .line 299
    .line 300
    const-wide/16 v21, 0x0

    .line 301
    .line 302
    const/16 v23, 0x0

    .line 303
    .line 304
    const/16 v24, 0x0

    .line 305
    .line 306
    const/16 v25, 0x0

    .line 307
    .line 308
    const/16 v26, 0x0

    .line 309
    .line 310
    const/16 v27, 0x0

    .line 311
    .line 312
    const/16 v29, 0x30

    .line 313
    .line 314
    move-object/from16 v28, v1

    .line 315
    .line 316
    move-object/from16 v20, v2

    .line 317
    .line 318
    invoke-static/range {v11 .. v31}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 319
    .line 320
    .line 321
    move-object v11, v12

    .line 322
    invoke-static {v5, v1}, Lg5/a;->B(ILf1/s;)F

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    invoke-static {v6, v2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-static {v1, v2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 331
    .line 332
    .line 333
    iget-object v2, v10, Ll8/p;->k:Ljava/io/File;

    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    const-string v5, "getAbsolutePath(...)"

    .line 340
    .line 341
    invoke-static {v2, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v5, "/storage/emulated/0/"

    .line 345
    .line 346
    invoke-static {v2, v5}, Lxb/i;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    const-string v5, "\u9700\u8f66\u673a\u8fde\u63a5\u624b\u673a\u70ed\u70b9, \u5982\u679c\u65e0\u6cd5\u6253\u5f00\u8bf7\u624b\u52a8\u4e0a\u4f20\u5230: "

    .line 351
    .line 352
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    const/16 v2, 0x14

    .line 357
    .line 358
    invoke-static {v2, v1}, Lg5/a;->B(ILf1/s;)F

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    invoke-static {v2, v3, v4}, Lc7/a;->M(FJ)J

    .line 363
    .line 364
    .line 365
    move-result-wide v14

    .line 366
    new-instance v2, Lm3/k;

    .line 367
    .line 368
    invoke-direct {v2, v8}, Lm3/k;-><init>(I)V

    .line 369
    .line 370
    .line 371
    const/16 v29, 0x0

    .line 372
    .line 373
    const v30, 0x1fdf4

    .line 374
    .line 375
    .line 376
    const-wide/16 v12, 0x0

    .line 377
    .line 378
    const/16 v16, 0x0

    .line 379
    .line 380
    const-wide/16 v17, 0x0

    .line 381
    .line 382
    const-wide/16 v20, 0x0

    .line 383
    .line 384
    const/16 v22, 0x0

    .line 385
    .line 386
    const/16 v26, 0x0

    .line 387
    .line 388
    const/16 v28, 0x30

    .line 389
    .line 390
    move-object/from16 v27, v1

    .line 391
    .line 392
    move-object/from16 v19, v2

    .line 393
    .line 394
    invoke-static/range {v10 .. v30}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 398
    .line 399
    .line 400
    :goto_6
    return-object v7

    .line 401
    :pswitch_2
    move-object/from16 v13, p1

    .line 402
    .line 403
    check-cast v13, Lf1/s;

    .line 404
    .line 405
    move-object/from16 v1, p2

    .line 406
    .line 407
    check-cast v1, Ljava/lang/Number;

    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    and-int/2addr v1, v8

    .line 414
    if-ne v1, v11, :cond_a

    .line 415
    .line 416
    invoke-virtual {v13}, Lf1/s;->z()Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-nez v1, :cond_9

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_9
    invoke-virtual {v13}, Lf1/s;->Q()V

    .line 424
    .line 425
    .line 426
    goto :goto_8

    .line 427
    :cond_a
    :goto_7
    const/high16 v1, 0x40000000    # 2.0f

    .line 428
    .line 429
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-static {v5, v13}, Lg5/a;->B(ILf1/s;)F

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    invoke-static {v1, v2, v3, v9}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 438
    .line 439
    .line 440
    move-result-object v12

    .line 441
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 442
    .line 443
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    invoke-static {}, Ll8/p;->j()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-static {v1}, Ll8/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    new-instance v10, Ly1/f;

    .line 455
    .line 456
    invoke-direct {v10, v1}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 457
    .line 458
    .line 459
    const/16 v14, 0x30

    .line 460
    .line 461
    const/16 v15, 0xf8

    .line 462
    .line 463
    const-string v11, "\u4e8c\u7ef4\u7801"

    .line 464
    .line 465
    invoke-static/range {v10 .. v15}, Lp9/q;->c(Ly1/f;Ljava/lang/String;Lr1/p;Lf1/s;II)V

    .line 466
    .line 467
    .line 468
    :goto_8
    return-object v7

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
