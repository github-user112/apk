.class public final synthetic La8/n0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La8/n0;->a:I

    iput-object p2, p0, La8/n0;->b:Ljava/lang/Object;

    iput-object p3, p0, La8/n0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lac/w;Lf9/k;)V
    .locals 1

    .line 2
    const/16 v0, 0x14

    iput v0, p0, La8/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/n0;->b:Ljava/lang/Object;

    check-cast p2, Ly8/i;

    iput-object p2, p0, La8/n0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lf9/k;Ly7/x;Lf1/h1;)V
    .locals 0

    .line 3
    const/16 p2, 0x19

    iput p2, p0, La8/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/n0;->b:Ljava/lang/Object;

    iput-object p3, p0, La8/n0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, La8/n0;->a:I

    .line 4
    .line 5
    sget-object v2, Ls8/x;->a:Ls8/x;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x0

    .line 9
    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/16 v7, 0x20

    .line 15
    .line 16
    const/4 v8, -0x1

    .line 17
    const/4 v9, 0x3

    .line 18
    const/4 v10, 0x2

    .line 19
    const/4 v11, 0x1

    .line 20
    const/4 v12, 0x0

    .line 21
    sget-object v13, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    iget-object v14, v1, La8/n0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v15, v1, La8/n0;->b:Ljava/lang/Object;

    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    check-cast v15, Lf9/k;

    .line 31
    .line 32
    check-cast v14, Lf1/h1;

    .line 33
    .line 34
    new-instance v0, Lz7/a2;

    .line 35
    .line 36
    invoke-virtual {v14}, Lf1/h1;->f()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const-string v3, "\u5ef6\u8fdf"

    .line 41
    .line 42
    const-string v4, "\u79d2"

    .line 43
    .line 44
    invoke-static {v3, v4, v2}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v3, Lz7/f0;

    .line 49
    .line 50
    invoke-virtual {v14}, Lf1/h1;->f()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    int-to-long v4, v4

    .line 55
    invoke-direct {v3, v4, v5}, Lz7/f0;-><init>(J)V

    .line 56
    .line 57
    .line 58
    const-string v4, "Delay"

    .line 59
    .line 60
    const-string v5, "\u5ef6\u8fdf\u6267\u884c"

    .line 61
    .line 62
    invoke-direct {v0, v4, v5, v2, v3}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v15, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-object v13

    .line 69
    :pswitch_0
    check-cast v15, Lf1/b1;

    .line 70
    .line 71
    check-cast v14, Lf1/b1;

    .line 72
    .line 73
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    .line 98
    :goto_0
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 99
    .line 100
    const-string v0, "\u8bf7\u5148\u9009\u62e9\u5e94\u7528\u5305\u540d\u53ca\u6d3b\u52a8"

    .line 101
    .line 102
    invoke-static {v12, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 107
    .line 108
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/lang/String;

    .line 113
    .line 114
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0, v2}, Ll8/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-object v13

    .line 124
    :pswitch_1
    check-cast v15, Lg9/x;

    .line 125
    .line 126
    check-cast v14, Lx/c0;

    .line 127
    .line 128
    sget-object v0, Lo2/t0;->a:Lf1/c0;

    .line 129
    .line 130
    invoke-static {v14, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, v15, Lg9/x;->b:Ljava/lang/Object;

    .line 135
    .line 136
    return-object v13

    .line 137
    :pswitch_2
    check-cast v15, Lx/l;

    .line 138
    .line 139
    check-cast v14, Lq2/j0;

    .line 140
    .line 141
    iget-object v0, v15, Lx/l;->r:Ly1/l0;

    .line 142
    .line 143
    iget-object v2, v14, Lq2/j0;->a:La2/c;

    .line 144
    .line 145
    iget-object v2, v2, La2/c;->b:La2/b;

    .line 146
    .line 147
    invoke-virtual {v2}, La2/b;->J()J

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    invoke-virtual {v14}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-interface {v0, v2, v3, v4, v14}, Ly1/l0;->a(JLn3/m;Ln3/c;)Ly1/h0;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iput-object v0, v15, Lx/l;->w:Ly1/h0;

    .line 160
    .line 161
    return-object v13

    .line 162
    :pswitch_3
    check-cast v15, Lw0/r1;

    .line 163
    .line 164
    check-cast v14, Lf1/b1;

    .line 165
    .line 166
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Ln3/l;

    .line 171
    .line 172
    iget-wide v2, v0, Ln3/l;->a:J

    .line 173
    .line 174
    invoke-virtual {v15}, Lw0/r1;->i()Lx1/b;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    iget-wide v13, v0, Lx1/b;->a:J

    .line 181
    .line 182
    invoke-virtual {v15}, Lw0/r1;->l()Lb3/g;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-eqz v0, :cond_9

    .line 187
    .line 188
    iget-object v0, v0, Lb3/g;->b:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_2

    .line 195
    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_2
    iget-object v0, v15, Lw0/r1;->q:Lf1/k1;

    .line 199
    .line 200
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Ll0/h0;

    .line 205
    .line 206
    if-nez v0, :cond_3

    .line 207
    .line 208
    const/4 v0, -0x1

    .line 209
    goto :goto_2

    .line 210
    :cond_3
    sget-object v4, Lw0/t1;->a:[I

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    aget v0, v4, v0

    .line 217
    .line 218
    :goto_2
    if-eq v0, v8, :cond_9

    .line 219
    .line 220
    const-wide v16, 0xffffffffL

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    if-eq v0, v11, :cond_5

    .line 226
    .line 227
    if-eq v0, v10, :cond_5

    .line 228
    .line 229
    if-ne v0, v9, :cond_4

    .line 230
    .line 231
    invoke-virtual {v15}, Lw0/r1;->m()Lg3/w;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-wide v8, v0, Lg3/w;->b:J

    .line 236
    .line 237
    sget v0, Lb3/n0;->c:I

    .line 238
    .line 239
    and-long v8, v8, v16

    .line 240
    .line 241
    :goto_3
    long-to-int v0, v8

    .line 242
    goto :goto_4

    .line 243
    :cond_4
    new-instance v0, Lac/p;

    .line 244
    .line 245
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_5
    invoke-virtual {v15}, Lw0/r1;->m()Lg3/w;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    iget-wide v8, v0, Lg3/w;->b:J

    .line 254
    .line 255
    sget v0, Lb3/n0;->c:I

    .line 256
    .line 257
    shr-long/2addr v8, v7

    .line 258
    goto :goto_3

    .line 259
    :goto_4
    iget-object v4, v15, Lw0/r1;->d:Ll0/s0;

    .line 260
    .line 261
    if-eqz v4, :cond_9

    .line 262
    .line 263
    invoke-virtual {v4}, Ll0/s0;->d()Ll0/q1;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    if-nez v4, :cond_6

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_6
    iget-object v8, v15, Lw0/r1;->d:Ll0/s0;

    .line 271
    .line 272
    if-eqz v8, :cond_9

    .line 273
    .line 274
    iget-object v8, v8, Ll0/s0;->a:Ll0/y0;

    .line 275
    .line 276
    iget-object v8, v8, Ll0/y0;->a:Lb3/g;

    .line 277
    .line 278
    if-nez v8, :cond_7

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_7
    iget-object v9, v15, Lw0/r1;->b:Lg3/q;

    .line 282
    .line 283
    invoke-interface {v9, v0}, Lg3/q;->b(I)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    iget-object v8, v8, Lb3/g;->b:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    invoke-static {v0, v12, v8}, Li9/a;->n(III)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-virtual {v4, v13, v14}, Ll0/q1;->d(J)J

    .line 298
    .line 299
    .line 300
    move-result-wide v8

    .line 301
    shr-long/2addr v8, v7

    .line 302
    long-to-int v9, v8

    .line 303
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    iget-object v4, v4, Ll0/q1;->a:Lb3/l0;

    .line 308
    .line 309
    iget-object v9, v4, Lb3/l0;->b:Lb3/o;

    .line 310
    .line 311
    invoke-virtual {v9, v0}, Lb3/o;->d(I)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {v4, v0}, Lb3/l0;->e(I)F

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    invoke-virtual {v4, v0}, Lb3/l0;->f(I)F

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    invoke-static {v8, v12, v4}, Li9/a;->m(FFF)F

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    const-wide/16 v11, 0x0

    .line 336
    .line 337
    invoke-static {v2, v3, v11, v12}, Ln3/l;->a(JJ)Z

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    if-nez v11, :cond_8

    .line 342
    .line 343
    sub-float/2addr v8, v4

    .line 344
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    shr-long/2addr v2, v7

    .line 349
    long-to-int v3, v2

    .line 350
    div-int/2addr v3, v10

    .line 351
    int-to-float v2, v3

    .line 352
    cmpl-float v2, v8, v2

    .line 353
    .line 354
    if-lez v2, :cond_8

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_8
    invoke-virtual {v9, v0}, Lb3/o;->f(I)F

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    invoke-virtual {v9, v0}, Lb3/o;->b(I)F

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    sub-float/2addr v0, v2

    .line 366
    int-to-float v3, v10

    .line 367
    div-float/2addr v0, v3

    .line 368
    add-float/2addr v0, v2

    .line 369
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    int-to-long v2, v2

    .line 374
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    int-to-long v4, v0

    .line 379
    shl-long/2addr v2, v7

    .line 380
    and-long v4, v4, v16

    .line 381
    .line 382
    or-long/2addr v2, v4

    .line 383
    move-wide v5, v2

    .line 384
    :cond_9
    :goto_5
    new-instance v0, Lx1/b;

    .line 385
    .line 386
    invoke-direct {v0, v5, v6}, Lx1/b;-><init>(J)V

    .line 387
    .line 388
    .line 389
    return-object v0

    .line 390
    :pswitch_4
    check-cast v15, Lac/w;

    .line 391
    .line 392
    check-cast v14, Ly8/i;

    .line 393
    .line 394
    new-instance v0, Lb8/g;

    .line 395
    .line 396
    invoke-direct {v0, v14, v4}, Lb8/g;-><init>(Lf9/k;Lw8/c;)V

    .line 397
    .line 398
    .line 399
    invoke-static {v15, v4, v0, v11}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 400
    .line 401
    .line 402
    return-object v13

    .line 403
    :pswitch_5
    check-cast v15, Lw0/w0;

    .line 404
    .line 405
    check-cast v14, Lf1/b1;

    .line 406
    .line 407
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    check-cast v0, Ln3/l;

    .line 412
    .line 413
    iget-wide v2, v0, Ln3/l;->a:J

    .line 414
    .line 415
    invoke-virtual {v15}, Lw0/w0;->g()Lw0/z;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    if-nez v0, :cond_a

    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_a
    invoke-virtual {v15}, Lw0/w0;->f()Ll0/h0;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    if-nez v4, :cond_b

    .line 427
    .line 428
    const/4 v4, -0x1

    .line 429
    goto :goto_6

    .line 430
    :cond_b
    sget-object v7, Lw0/x0;->a:[I

    .line 431
    .line 432
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    aget v4, v7, v4

    .line 437
    .line 438
    :goto_6
    if-eq v4, v8, :cond_f

    .line 439
    .line 440
    if-eq v4, v11, :cond_e

    .line 441
    .line 442
    if-eq v4, v10, :cond_d

    .line 443
    .line 444
    if-eq v4, v9, :cond_c

    .line 445
    .line 446
    new-instance v0, Lac/p;

    .line 447
    .line 448
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 449
    .line 450
    .line 451
    throw v0

    .line 452
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 453
    .line 454
    const-string v2, "SelectionContainer does not support cursor"

    .line 455
    .line 456
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw v0

    .line 460
    :cond_d
    iget-object v0, v0, Lw0/z;->b:Lw0/y;

    .line 461
    .line 462
    invoke-static {v15, v2, v3, v0}, Lw0/y0;->r(Lw0/w0;JLw0/y;)J

    .line 463
    .line 464
    .line 465
    move-result-wide v5

    .line 466
    goto :goto_7

    .line 467
    :cond_e
    iget-object v0, v0, Lw0/z;->a:Lw0/y;

    .line 468
    .line 469
    invoke-static {v15, v2, v3, v0}, Lw0/y0;->r(Lw0/w0;JLw0/y;)J

    .line 470
    .line 471
    .line 472
    move-result-wide v5

    .line 473
    :cond_f
    :goto_7
    new-instance v0, Lx1/b;

    .line 474
    .line 475
    invoke-direct {v0, v5, v6}, Lx1/b;-><init>(J)V

    .line 476
    .line 477
    .line 478
    return-object v0

    .line 479
    :pswitch_6
    check-cast v15, Lcc/l;

    .line 480
    .line 481
    invoke-interface {v15, v14}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    return-object v13

    .line 485
    :pswitch_7
    check-cast v15, Lr7/g;

    .line 486
    .line 487
    check-cast v14, Lf1/b1;

    .line 488
    .line 489
    invoke-interface {v15}, Lr7/g;->getName()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-interface {v14, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    return-object v13

    .line 497
    :pswitch_8
    check-cast v15, Lq1/b;

    .line 498
    .line 499
    iget-object v0, v15, Lq1/b;->a:Lf1/s;

    .line 500
    .line 501
    iget-object v2, v0, Lf1/s;->c:Lf1/h2;

    .line 502
    .line 503
    iget-boolean v5, v0, Lf1/s;->C:Z

    .line 504
    .line 505
    sget-object v6, Ls8/w;->a:Ls8/w;

    .line 506
    .line 507
    if-nez v5, :cond_10

    .line 508
    .line 509
    goto/16 :goto_12

    .line 510
    .line 511
    :cond_10
    invoke-virtual {v2}, Lf1/h2;->j()Lf1/g2;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    const/4 v7, 0x0

    .line 516
    :goto_8
    :try_start_0
    iget v8, v2, Lf1/h2;->b:I

    .line 517
    .line 518
    if-ge v7, v8, :cond_1a

    .line 519
    .line 520
    invoke-virtual {v5, v7}, Lf1/g2;->l(I)Z

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    if-eqz v8, :cond_14

    .line 525
    .line 526
    invoke-virtual {v5, v7}, Lf1/g2;->n(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v8

    .line 530
    if-eq v8, v14, :cond_13

    .line 531
    .line 532
    instance-of v9, v8, Lf1/d2;

    .line 533
    .line 534
    if-eqz v9, :cond_11

    .line 535
    .line 536
    check-cast v8, Lf1/d2;

    .line 537
    .line 538
    goto :goto_9

    .line 539
    :cond_11
    move-object v8, v4

    .line 540
    :goto_9
    if-eqz v8, :cond_12

    .line 541
    .line 542
    iget-object v8, v8, Lf1/d2;->a:Lf1/c2;

    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_12
    move-object v8, v4

    .line 546
    :goto_a
    if-ne v8, v14, :cond_14

    .line 547
    .line 548
    :cond_13
    new-instance v3, Lq1/g;

    .line 549
    .line 550
    invoke-direct {v3, v7, v4}, Lq1/g;-><init>(ILjava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .line 552
    .line 553
    invoke-virtual {v5}, Lf1/g2;->c()V

    .line 554
    .line 555
    .line 556
    move-object v4, v3

    .line 557
    goto :goto_10

    .line 558
    :catchall_0
    move-exception v0

    .line 559
    goto/16 :goto_13

    .line 560
    .line 561
    :cond_14
    :try_start_1
    iget-object v8, v5, Lf1/g2;->b:[I

    .line 562
    .line 563
    invoke-static {v8, v7}, Lf1/j2;->c([II)I

    .line 564
    .line 565
    .line 566
    move-result v9

    .line 567
    add-int/lit8 v10, v7, 0x1

    .line 568
    .line 569
    iget v11, v5, Lf1/g2;->c:I

    .line 570
    .line 571
    if-ge v10, v11, :cond_15

    .line 572
    .line 573
    mul-int/lit8 v11, v10, 0x5

    .line 574
    .line 575
    add-int/2addr v11, v3

    .line 576
    aget v8, v8, v11

    .line 577
    .line 578
    goto :goto_b

    .line 579
    :cond_15
    iget v8, v5, Lf1/g2;->e:I

    .line 580
    .line 581
    :goto_b
    sub-int/2addr v8, v9

    .line 582
    const/4 v9, 0x0

    .line 583
    :goto_c
    if-ge v9, v8, :cond_1b

    .line 584
    .line 585
    invoke-virtual {v5, v7, v9}, Lf1/g2;->h(II)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v11

    .line 589
    if-eq v11, v14, :cond_19

    .line 590
    .line 591
    instance-of v13, v11, Lf1/d2;

    .line 592
    .line 593
    if-eqz v13, :cond_16

    .line 594
    .line 595
    check-cast v11, Lf1/d2;

    .line 596
    .line 597
    goto :goto_d

    .line 598
    :cond_16
    move-object v11, v4

    .line 599
    :goto_d
    if-eqz v11, :cond_17

    .line 600
    .line 601
    iget-object v11, v11, Lf1/d2;->a:Lf1/c2;

    .line 602
    .line 603
    goto :goto_e

    .line 604
    :cond_17
    move-object v11, v4

    .line 605
    :goto_e
    if-ne v11, v14, :cond_18

    .line 606
    .line 607
    goto :goto_f

    .line 608
    :cond_18
    add-int/lit8 v9, v9, 0x1

    .line 609
    .line 610
    goto :goto_c

    .line 611
    :cond_19
    :goto_f
    new-instance v4, Lq1/g;

    .line 612
    .line 613
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    invoke-direct {v4, v7, v3}, Lq1/g;-><init>(ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    .line 619
    .line 620
    :cond_1a
    invoke-virtual {v5}, Lf1/g2;->c()V

    .line 621
    .line 622
    .line 623
    goto :goto_10

    .line 624
    :cond_1b
    move v7, v10

    .line 625
    goto :goto_8

    .line 626
    :goto_10
    if-eqz v4, :cond_1d

    .line 627
    .line 628
    iget v3, v4, Lq1/g;->a:I

    .line 629
    .line 630
    iget-object v4, v4, Lq1/g;->b:Ljava/lang/Integer;

    .line 631
    .line 632
    iget-boolean v5, v0, Lf1/s;->C:Z

    .line 633
    .line 634
    if-nez v5, :cond_1c

    .line 635
    .line 636
    goto :goto_11

    .line 637
    :cond_1c
    invoke-virtual {v2}, Lf1/h2;->j()Lf1/g2;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    :try_start_2
    invoke-static {v2, v3, v4}, Lp9/x1;->P(Lf1/g2;ILjava/lang/Integer;)Ljava/util/ArrayList;

    .line 642
    .line 643
    .line 644
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 645
    invoke-virtual {v2}, Lf1/g2;->c()V

    .line 646
    .line 647
    .line 648
    :goto_11
    invoke-virtual {v0}, Lf1/s;->D()Ljava/util/List;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-static {v0, v6}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    goto :goto_12

    .line 657
    :catchall_1
    move-exception v0

    .line 658
    invoke-virtual {v2}, Lf1/g2;->c()V

    .line 659
    .line 660
    .line 661
    throw v0

    .line 662
    :cond_1d
    :goto_12
    return-object v6

    .line 663
    :goto_13
    invoke-virtual {v5}, Lf1/g2;->c()V

    .line 664
    .line 665
    .line 666
    throw v0

    .line 667
    :pswitch_9
    check-cast v15, Landroid/content/Context;

    .line 668
    .line 669
    check-cast v14, Landroid/view/textclassifier/TextClassification;

    .line 670
    .line 671
    invoke-static {v14}, Lq0/o;->n(Landroid/view/textclassifier/TextClassification;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    if-eqz v0, :cond_1e

    .line 676
    .line 677
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 678
    .line 679
    .line 680
    move-result v12

    .line 681
    :cond_1e
    invoke-static {v14}, Lq0/o;->c(Landroid/view/textclassifier/TextClassification;)Landroid/content/Intent;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    const/high16 v2, 0xc000000

    .line 686
    .line 687
    invoke-static {v15, v12, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 692
    .line 693
    const/16 v3, 0x22

    .line 694
    .line 695
    if-lt v0, v3, :cond_1f

    .line 696
    .line 697
    :try_start_3
    invoke-static {}, Li7/a;->b()Landroid/app/ActivityOptions;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-static {v0}, Lc3/a;->g(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v2, v0}, Lc3/a;->p(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    .line 710
    .line 711
    .line 712
    goto :goto_14

    .line 713
    :catch_0
    move-exception v0

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    const-string v4, "error sending pendingIntent: "

    .line 717
    .line 718
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    const-string v2, " error: "

    .line 725
    .line 726
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    const-string v2, "TextClassification"

    .line 737
    .line 738
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .line 740
    .line 741
    goto :goto_14

    .line 742
    :cond_1f
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V

    .line 743
    .line 744
    .line 745
    :goto_14
    return-object v13

    .line 746
    :pswitch_a
    check-cast v15, Lo0/d;

    .line 747
    .line 748
    check-cast v14, Ls0/b;

    .line 749
    .line 750
    iget-object v0, v15, Lo0/d;->d:Lf9/k;

    .line 751
    .line 752
    invoke-interface {v0, v14}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    return-object v13

    .line 756
    :pswitch_b
    check-cast v15, Ls0/e;

    .line 757
    .line 758
    check-cast v14, Lf9/a;

    .line 759
    .line 760
    invoke-interface {v14}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    check-cast v0, Lo2/w;

    .line 765
    .line 766
    invoke-interface {v15, v0}, Ls0/e;->C(Lo2/w;)J

    .line 767
    .line 768
    .line 769
    move-result-wide v2

    .line 770
    invoke-static {v2, v3}, Li9/a;->M(J)J

    .line 771
    .line 772
    .line 773
    move-result-wide v2

    .line 774
    new-instance v0, Ln3/j;

    .line 775
    .line 776
    invoke-direct {v0, v2, v3}, Ln3/j;-><init>(J)V

    .line 777
    .line 778
    .line 779
    return-object v0

    .line 780
    :pswitch_c
    check-cast v15, Lg9/x;

    .line 781
    .line 782
    check-cast v14, Lf9/a;

    .line 783
    .line 784
    invoke-interface {v14}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    iput-object v0, v15, Lg9/x;->b:Ljava/lang/Object;

    .line 789
    .line 790
    return-object v13

    .line 791
    :pswitch_d
    check-cast v15, Llc/e;

    .line 792
    .line 793
    check-cast v14, Loc/b;

    .line 794
    .line 795
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 796
    .line 797
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 798
    .line 799
    .line 800
    iget-object v3, v14, Loc/b;->a:Lma/r;

    .line 801
    .line 802
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    invoke-static {v15, v14}, Lpc/j;->l(Llc/e;Loc/b;)V

    .line 806
    .line 807
    .line 808
    invoke-interface {v15}, Llc/e;->k()I

    .line 809
    .line 810
    .line 811
    move-result v3

    .line 812
    const/4 v4, 0x0

    .line 813
    :goto_15
    if-ge v4, v3, :cond_25

    .line 814
    .line 815
    invoke-interface {v15, v4}, Llc/e;->m(I)Ljava/util/List;

    .line 816
    .line 817
    .line 818
    move-result-object v5

    .line 819
    new-instance v6, Ljava/util/ArrayList;

    .line 820
    .line 821
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .line 823
    .line 824
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 825
    .line 826
    .line 827
    move-result-object v5

    .line 828
    :cond_20
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 829
    .line 830
    .line 831
    move-result v8

    .line 832
    if-eqz v8, :cond_21

    .line 833
    .line 834
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v8

    .line 838
    instance-of v9, v8, Loc/q;

    .line 839
    .line 840
    if-eqz v9, :cond_20

    .line 841
    .line 842
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    goto :goto_16

    .line 846
    :cond_21
    invoke-static {v6}, Ls8/p;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    check-cast v5, Loc/q;

    .line 851
    .line 852
    if-eqz v5, :cond_24

    .line 853
    .line 854
    invoke-interface {v5}, Loc/q;->names()[Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v5

    .line 858
    if-eqz v5, :cond_24

    .line 859
    .line 860
    array-length v6, v5

    .line 861
    const/4 v8, 0x0

    .line 862
    :goto_17
    if-ge v8, v6, :cond_24

    .line 863
    .line 864
    aget-object v9, v5, v8

    .line 865
    .line 866
    invoke-interface {v15}, Llc/e;->f()La/a;

    .line 867
    .line 868
    .line 869
    move-result-object v10

    .line 870
    sget-object v11, Llc/h;->d:Llc/h;

    .line 871
    .line 872
    invoke-static {v10, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 873
    .line 874
    .line 875
    move-result v10

    .line 876
    if-eqz v10, :cond_22

    .line 877
    .line 878
    const-string v10, "enum value"

    .line 879
    .line 880
    goto :goto_18

    .line 881
    :cond_22
    const-string v10, "property"

    .line 882
    .line 883
    :goto_18
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v11

    .line 887
    if-nez v11, :cond_23

    .line 888
    .line 889
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 890
    .line 891
    .line 892
    move-result-object v10

    .line 893
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    add-int/lit8 v8, v8, 0x1

    .line 897
    .line 898
    goto :goto_17

    .line 899
    :cond_23
    new-instance v2, Lkc/f;

    .line 900
    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    .line 902
    .line 903
    const-string v5, "The suggested name \'"

    .line 904
    .line 905
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    const-string v5, "\' for "

    .line 912
    .line 913
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-interface {v15, v4}, Llc/e;->l(I)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v4

    .line 926
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    const-string v4, " is already one of the names for "

    .line 930
    .line 931
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-static {v9, v0}, Ls8/b0;->K(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    check-cast v0, Ljava/lang/Number;

    .line 945
    .line 946
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 947
    .line 948
    .line 949
    move-result v0

    .line 950
    invoke-interface {v15, v0}, Llc/e;->l(I)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    const-string v0, " in "

    .line 958
    .line 959
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    const-string v3, "message"

    .line 970
    .line 971
    invoke-static {v0, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    throw v2

    .line 978
    :cond_24
    add-int/lit8 v4, v4, 0x1

    .line 979
    .line 980
    goto/16 :goto_15

    .line 981
    .line 982
    :cond_25
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    if-eqz v3, :cond_26

    .line 987
    .line 988
    goto :goto_19

    .line 989
    :cond_26
    move-object v2, v0

    .line 990
    :goto_19
    return-object v2

    .line 991
    :pswitch_e
    check-cast v15, Landroid/app/Activity;

    .line 992
    .line 993
    check-cast v14, Lf1/b1;

    .line 994
    .line 995
    sget-object v0, Lu7/j;->a:Lr8/o;

    .line 996
    .line 997
    invoke-static {}, Lw6/a;->f()Ly6/a;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    invoke-static {}, Lw6/a;->e()Ly6/a;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    invoke-static {}, Lw6/a;->d()Ly6/a;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v4

    .line 1009
    invoke-static {}, Lw6/a;->b()Ly6/a;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v5

    .line 1013
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v6

    .line 1017
    invoke-static {}, Lw6/a;->a()Ly6/a;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v7

    .line 1021
    const/4 v8, 0x6

    .line 1022
    new-array v8, v8, [Ly6/a;

    .line 1023
    .line 1024
    aput-object v0, v8, v12

    .line 1025
    .line 1026
    aput-object v2, v8, v11

    .line 1027
    .line 1028
    aput-object v4, v8, v10

    .line 1029
    .line 1030
    aput-object v5, v8, v9

    .line 1031
    .line 1032
    aput-object v6, v8, v3

    .line 1033
    .line 1034
    const/4 v0, 0x5

    .line 1035
    aput-object v7, v8, v0

    .line 1036
    .line 1037
    invoke-static {v8}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    const-string v2, "\u84dd\u7259\u76f8\u5173"

    .line 1042
    .line 1043
    invoke-static {v15, v2, v0}, Lu7/j;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    if-nez v0, :cond_27

    .line 1048
    .line 1049
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 1050
    .line 1051
    const-string v0, "\u84dd\u7259\u76f8\u5173\u6743\u9650\u672a\u5f00\u542f"

    .line 1052
    .line 1053
    invoke-static {v12, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_1a

    .line 1057
    :cond_27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1058
    .line 1059
    const/16 v2, 0x21

    .line 1060
    .line 1061
    if-lt v0, v2, :cond_29

    .line 1062
    .line 1063
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 1064
    .line 1065
    invoke-static {v0}, Lu7/j;->b(Ljava/lang/String;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v2

    .line 1069
    if-nez v2, :cond_29

    .line 1070
    .line 1071
    if-eqz v15, :cond_28

    .line 1072
    .line 1073
    filled-new-array {v0}, [Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v0

    .line 1077
    invoke-static {v15, v0, v11}, Lu3/f;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1078
    .line 1079
    .line 1080
    :cond_28
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 1081
    .line 1082
    const-string v0, "\u9644\u8fd1\u8bbe\u5907\u6743\u9650\u672a\u5f00\u542f"

    .line 1083
    .line 1084
    invoke-static {v12, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    goto :goto_1a

    .line 1088
    :cond_29
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1089
    .line 1090
    invoke-interface {v14, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 1091
    .line 1092
    .line 1093
    :goto_1a
    return-object v13

    .line 1094
    :pswitch_f
    check-cast v15, Landroid/app/Activity;

    .line 1095
    .line 1096
    check-cast v14, Lm7/g0;

    .line 1097
    .line 1098
    sget-object v0, Lm7/f0;->a:Lr8/o;

    .line 1099
    .line 1100
    iget v0, v14, Lm7/g0;->b:I

    .line 1101
    .line 1102
    new-instance v2, Lm7/j;

    .line 1103
    .line 1104
    invoke-direct {v2, v10}, Lm7/j;-><init>(I)V

    .line 1105
    .line 1106
    .line 1107
    invoke-static {v15, v0, v2}, Lm7/f0;->a(Landroid/app/Activity;ILf9/k;)V

    .line 1108
    .line 1109
    .line 1110
    return-object v13

    .line 1111
    :pswitch_10
    check-cast v15, Lj8/k0;

    .line 1112
    .line 1113
    check-cast v14, Lf1/b1;

    .line 1114
    .line 1115
    sget-object v0, Lm7/k;->b:Ll8/p;

    .line 1116
    .line 1117
    iget-object v2, v15, Lj8/k0;->c:Ljava/lang/String;

    .line 1118
    .line 1119
    new-instance v3, Lj8/h;

    .line 1120
    .line 1121
    const/16 v4, 0xe

    .line 1122
    .line 1123
    invoke-direct {v3, v14, v4}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    .line 1128
    .line 1129
    invoke-static {v2, v3}, Ll8/p;->h(Ljava/lang/String;Lf9/a;)V

    .line 1130
    .line 1131
    .line 1132
    return-object v13

    .line 1133
    :pswitch_11
    check-cast v15, Lf9/n;

    .line 1134
    .line 1135
    check-cast v14, Lf1/b1;

    .line 1136
    .line 1137
    sget-object v0, Lm7/k;->a:Lm7/k;

    .line 1138
    .line 1139
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    check-cast v0, Ljava/lang/String;

    .line 1144
    .line 1145
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1146
    .line 1147
    invoke-interface {v15, v0, v2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    return-object v13

    .line 1151
    :pswitch_12
    check-cast v15, Lg3/w;

    .line 1152
    .line 1153
    check-cast v14, Lf1/b1;

    .line 1154
    .line 1155
    iget-wide v2, v15, Lg3/w;->b:J

    .line 1156
    .line 1157
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    check-cast v0, Lg3/w;

    .line 1162
    .line 1163
    iget-wide v4, v0, Lg3/w;->b:J

    .line 1164
    .line 1165
    invoke-static {v2, v3, v4, v5}, Lb3/n0;->b(JJ)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v0

    .line 1169
    if-eqz v0, :cond_2a

    .line 1170
    .line 1171
    iget-object v0, v15, Lg3/w;->c:Lb3/n0;

    .line 1172
    .line 1173
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v2

    .line 1177
    check-cast v2, Lg3/w;

    .line 1178
    .line 1179
    iget-object v2, v2, Lg3/w;->c:Lb3/n0;

    .line 1180
    .line 1181
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1182
    .line 1183
    .line 1184
    move-result v0

    .line 1185
    if-nez v0, :cond_2b

    .line 1186
    .line 1187
    :cond_2a
    invoke-interface {v14, v15}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 1188
    .line 1189
    .line 1190
    :cond_2b
    return-object v13

    .line 1191
    :pswitch_13
    check-cast v15, Lf1/h1;

    .line 1192
    .line 1193
    check-cast v14, Lf1/h1;

    .line 1194
    .line 1195
    invoke-virtual {v15}, Lf1/h1;->f()I

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    invoke-virtual {v14, v0}, Lf1/h1;->g(I)V

    .line 1200
    .line 1201
    .line 1202
    return-object v13

    .line 1203
    :pswitch_14
    check-cast v15, Lo1/f;

    .line 1204
    .line 1205
    check-cast v14, Lo1/d;

    .line 1206
    .line 1207
    new-instance v0, Lh0/o0;

    .line 1208
    .line 1209
    invoke-direct {v0, v15, v2, v14}, Lh0/o0;-><init>(Lo1/f;Ljava/util/Map;Lo1/d;)V

    .line 1210
    .line 1211
    .line 1212
    return-object v0

    .line 1213
    :pswitch_15
    check-cast v15, Lf1/f0;

    .line 1214
    .line 1215
    check-cast v14, Lg0/u;

    .line 1216
    .line 1217
    invoke-virtual {v15}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    check-cast v0, Lg0/g;

    .line 1222
    .line 1223
    new-instance v2, Le7/l;

    .line 1224
    .line 1225
    iget-object v3, v14, Lg0/u;->d:Lf0/p;

    .line 1226
    .line 1227
    iget-object v3, v3, Lf0/p;->f:Lh0/b0;

    .line 1228
    .line 1229
    invoke-virtual {v3}, Lh0/b0;->getValue()Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    check-cast v3, Ll9/d;

    .line 1234
    .line 1235
    invoke-direct {v2, v3, v0}, Le7/l;-><init>(Ll9/d;Lh0/z;)V

    .line 1236
    .line 1237
    .line 1238
    new-instance v3, Lg0/h;

    .line 1239
    .line 1240
    invoke-direct {v3, v14, v0, v2}, Lg0/h;-><init>(Lg0/u;Lg0/g;Le7/l;)V

    .line 1241
    .line 1242
    .line 1243
    return-object v3

    .line 1244
    :pswitch_16
    check-cast v15, Ls/i0;

    .line 1245
    .line 1246
    check-cast v14, Lf1/y;

    .line 1247
    .line 1248
    iget-object v0, v15, Ls/i0;->b:[Ljava/lang/Object;

    .line 1249
    .line 1250
    iget-object v2, v15, Ls/i0;->a:[J

    .line 1251
    .line 1252
    array-length v3, v2

    .line 1253
    sub-int/2addr v3, v10

    .line 1254
    if-ltz v3, :cond_2f

    .line 1255
    .line 1256
    const/4 v4, 0x0

    .line 1257
    :goto_1b
    aget-wide v5, v2, v4

    .line 1258
    .line 1259
    not-long v7, v5

    .line 1260
    const/4 v9, 0x7

    .line 1261
    shl-long/2addr v7, v9

    .line 1262
    and-long/2addr v7, v5

    .line 1263
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    and-long/2addr v7, v9

    .line 1269
    cmp-long v11, v7, v9

    .line 1270
    .line 1271
    if-eqz v11, :cond_2e

    .line 1272
    .line 1273
    sub-int v7, v4, v3

    .line 1274
    .line 1275
    not-int v7, v7

    .line 1276
    ushr-int/lit8 v7, v7, 0x1f

    .line 1277
    .line 1278
    const/16 v8, 0x8

    .line 1279
    .line 1280
    rsub-int/lit8 v7, v7, 0x8

    .line 1281
    .line 1282
    const/4 v9, 0x0

    .line 1283
    :goto_1c
    if-ge v9, v7, :cond_2d

    .line 1284
    .line 1285
    const-wide/16 v10, 0xff

    .line 1286
    .line 1287
    and-long/2addr v10, v5

    .line 1288
    const-wide/16 v15, 0x80

    .line 1289
    .line 1290
    cmp-long v17, v10, v15

    .line 1291
    .line 1292
    if-gez v17, :cond_2c

    .line 1293
    .line 1294
    shl-int/lit8 v10, v4, 0x3

    .line 1295
    .line 1296
    add-int/2addr v10, v9

    .line 1297
    aget-object v10, v0, v10

    .line 1298
    .line 1299
    invoke-virtual {v14, v10}, Lf1/y;->A(Ljava/lang/Object;)V

    .line 1300
    .line 1301
    .line 1302
    :cond_2c
    shr-long/2addr v5, v8

    .line 1303
    add-int/lit8 v9, v9, 0x1

    .line 1304
    .line 1305
    goto :goto_1c

    .line 1306
    :cond_2d
    if-ne v7, v8, :cond_2f

    .line 1307
    .line 1308
    :cond_2e
    if-eq v4, v3, :cond_2f

    .line 1309
    .line 1310
    add-int/lit8 v4, v4, 0x1

    .line 1311
    .line 1312
    goto :goto_1b

    .line 1313
    :cond_2f
    return-object v13

    .line 1314
    :pswitch_17
    check-cast v15, Lz7/b2;

    .line 1315
    .line 1316
    check-cast v14, Lf1/b1;

    .line 1317
    .line 1318
    invoke-interface {v14, v15}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 1319
    .line 1320
    .line 1321
    return-object v13

    .line 1322
    :pswitch_18
    check-cast v15, Lz7/b2;

    .line 1323
    .line 1324
    check-cast v14, Lp1/p;

    .line 1325
    .line 1326
    invoke-virtual {v14, v15}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 1327
    .line 1328
    .line 1329
    return-object v13

    .line 1330
    nop

    .line 1331
    :pswitch_data_0
    .packed-switch 0x0
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
