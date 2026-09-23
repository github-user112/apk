.class public final synthetic La8/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf9/k;Ll5/l;Lf9/k;Lf1/b1;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    iput v0, p0, La8/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/h;->b:Ljava/lang/Object;

    iput-object p2, p0, La8/h;->d:Ljava/lang/Object;

    iput-object p3, p0, La8/h;->e:Ljava/lang/Object;

    iput-object p4, p0, La8/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, La8/h;->a:I

    iput-object p1, p0, La8/h;->b:Ljava/lang/Object;

    iput-object p2, p0, La8/h;->c:Ljava/lang/Object;

    iput-object p3, p0, La8/h;->d:Ljava/lang/Object;

    iput-object p4, p0, La8/h;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Lg9/v;Ljava/util/List;ILg0/m;)V
    .locals 0

    .line 3
    const/4 p4, 0x1

    iput p4, p0, La8/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/h;->b:Ljava/lang/Object;

    iput-object p2, p0, La8/h;->c:Ljava/lang/Object;

    iput-object p3, p0, La8/h;->d:Ljava/lang/Object;

    iput-object p5, p0, La8/h;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8/h;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-wide v3, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/16 v5, 0x20

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 15
    .line 16
    iget-object v8, v0, La8/h;->e:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v9, v0, La8/h;->d:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v10, v0, La8/h;->c:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v11, v0, La8/h;->b:Ljava/lang/Object;

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    check-cast v11, Lg9/u;

    .line 28
    .line 29
    check-cast v10, Lz/v0;

    .line 30
    .line 31
    check-cast v9, Lz/q1;

    .line 32
    .line 33
    check-cast v8, Lk7/d;

    .line 34
    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Lv/i;

    .line 38
    .line 39
    iget-object v2, v1, Lv/i;->e:Lf1/k1;

    .line 40
    .line 41
    iget-object v3, v1, Lv/i;->d:Lf9/a;

    .line 42
    .line 43
    iget-object v1, v1, Lv/i;->i:Lf1/k1;

    .line 44
    .line 45
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iget v4, v11, Lg9/u;->a:F

    .line 56
    .line 57
    sub-float/2addr v2, v4

    .line 58
    invoke-static {v2}, Lz/p0;->a(F)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v10, v9, v2}, Lz/v0;->c(Lz/q1;F)F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    sub-float v4, v2, v4

    .line 69
    .line 70
    invoke-static {v4}, Lz/p0;->a(F)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_0

    .line 75
    .line 76
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v3}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget v4, v11, Lg9/u;->a:F

    .line 86
    .line 87
    add-float/2addr v4, v2

    .line 88
    iput v4, v11, Lg9/u;->a:F

    .line 89
    .line 90
    :cond_1
    iget v2, v11, Lg9/u;->a:F

    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v8, v2}, Lk7/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v3}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    return-object v7

    .line 117
    :pswitch_0
    check-cast v11, Lg9/u;

    .line 118
    .line 119
    check-cast v10, Lz/o1;

    .line 120
    .line 121
    check-cast v9, Lg9/u;

    .line 122
    .line 123
    check-cast v8, Lz/h;

    .line 124
    .line 125
    move-object/from16 v1, p1

    .line 126
    .line 127
    check-cast v1, Lv/i;

    .line 128
    .line 129
    iget-object v2, v1, Lv/i;->e:Lf1/k1;

    .line 130
    .line 131
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    iget v3, v11, Lg9/u;->a:F

    .line 142
    .line 143
    sub-float/2addr v2, v3

    .line 144
    invoke-virtual {v10, v2}, Lz/o1;->a(F)F

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iget-object v4, v1, Lv/i;->e:Lf1/k1;

    .line 149
    .line 150
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    iput v4, v11, Lg9/u;->a:F

    .line 161
    .line 162
    iget-object v4, v1, Lv/i;->a:Lv/w0;

    .line 163
    .line 164
    iget-object v4, v4, Lv/w0;->b:Lf9/k;

    .line 165
    .line 166
    iget-object v5, v1, Lv/i;->f:Lv/p;

    .line 167
    .line 168
    invoke-interface {v4, v5}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/Number;

    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    iput v4, v9, Lg9/u;->a:F

    .line 179
    .line 180
    sub-float/2addr v2, v3

    .line 181
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    const/high16 v3, 0x3f000000    # 0.5f

    .line 186
    .line 187
    cmpl-float v2, v2, v3

    .line 188
    .line 189
    if-lez v2, :cond_3

    .line 190
    .line 191
    iget-object v2, v1, Lv/i;->i:Lf1/k1;

    .line 192
    .line 193
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v1, Lv/i;->d:Lf9/a;

    .line 199
    .line 200
    invoke-interface {v1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    return-object v7

    .line 207
    :pswitch_1
    check-cast v11, Lf9/n;

    .line 208
    .line 209
    check-cast v10, Lf1/b1;

    .line 210
    .line 211
    check-cast v9, Lf1/b1;

    .line 212
    .line 213
    check-cast v8, Lf1/b1;

    .line 214
    .line 215
    move-object/from16 v1, p1

    .line 216
    .line 217
    check-cast v1, Lj8/k0;

    .line 218
    .line 219
    const-string v2, "it"

    .line 220
    .line 221
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v2, v1, Lj8/k0;->b:Lj8/o0;

    .line 225
    .line 226
    invoke-interface {v2}, Lj8/o0;->b()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-interface {v10, v2}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v1, Lj8/k0;->a:Ljava/lang/String;

    .line 234
    .line 235
    invoke-interface {v9, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/String;

    .line 243
    .line 244
    invoke-interface {v9}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    check-cast v2, Ljava/lang/String;

    .line 249
    .line 250
    invoke-interface {v11, v1, v2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 254
    .line 255
    invoke-interface {v8, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    return-object v7

    .line 259
    :pswitch_2
    check-cast v11, Lv/c;

    .line 260
    .line 261
    check-cast v10, Lv/k;

    .line 262
    .line 263
    check-cast v9, Lf9/k;

    .line 264
    .line 265
    check-cast v8, Lg9/t;

    .line 266
    .line 267
    move-object/from16 v1, p1

    .line 268
    .line 269
    check-cast v1, Lv/i;

    .line 270
    .line 271
    iget-object v2, v11, Lv/c;->c:Lv/k;

    .line 272
    .line 273
    invoke-static {v1, v2}, Lv/d;->l(Lv/i;Lv/k;)V

    .line 274
    .line 275
    .line 276
    iget-object v2, v1, Lv/i;->e:Lf1/k1;

    .line 277
    .line 278
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {v11, v3}, Lv/c;->a(Lv/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-static {v3, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_5

    .line 295
    .line 296
    iget-object v2, v11, Lv/c;->c:Lv/k;

    .line 297
    .line 298
    iget-object v2, v2, Lv/k;->b:Lf1/k1;

    .line 299
    .line 300
    invoke-virtual {v2, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    iget-object v2, v10, Lv/k;->b:Lf1/k1;

    .line 304
    .line 305
    invoke-virtual {v2, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    if-eqz v9, :cond_4

    .line 309
    .line 310
    invoke-interface {v9, v11}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    :cond_4
    iget-object v2, v1, Lv/i;->i:Lf1/k1;

    .line 314
    .line 315
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 316
    .line 317
    invoke-virtual {v2, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v1, Lv/i;->d:Lf9/a;

    .line 321
    .line 322
    invoke-interface {v1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    iput-boolean v6, v8, Lg9/t;->a:Z

    .line 326
    .line 327
    goto :goto_1

    .line 328
    :cond_5
    if-eqz v9, :cond_6

    .line 329
    .line 330
    invoke-interface {v9, v11}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    :cond_6
    :goto_1
    return-object v7

    .line 334
    :pswitch_3
    check-cast v11, Lf9/k;

    .line 335
    .line 336
    check-cast v9, Ll5/l;

    .line 337
    .line 338
    check-cast v8, Lf9/k;

    .line 339
    .line 340
    check-cast v10, Lf1/b1;

    .line 341
    .line 342
    move-object/from16 v1, p1

    .line 343
    .line 344
    check-cast v1, Ln3/l;

    .line 345
    .line 346
    const-string v2, "$controller"

    .line 347
    .line 348
    invoke-static {v9, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const-string v2, "$setup"

    .line 352
    .line 353
    invoke-static {v8, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v2, "$initialized$delegate"

    .line 357
    .line 358
    invoke-static {v10, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-wide v12, v1, Ln3/l;->a:J

    .line 362
    .line 363
    shr-long v5, v12, v5

    .line 364
    .line 365
    long-to-int v2, v5

    .line 366
    if-eqz v2, :cond_8

    .line 367
    .line 368
    and-long/2addr v3, v12

    .line 369
    long-to-int v2, v3

    .line 370
    if-eqz v2, :cond_8

    .line 371
    .line 372
    invoke-interface {v11, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    iget-wide v1, v1, Ln3/l;->a:J

    .line 376
    .line 377
    invoke-static {v1, v2}, La/a;->S(J)J

    .line 378
    .line 379
    .line 380
    move-result-wide v1

    .line 381
    iget-object v3, v9, Ll5/l;->c:Lf1/k1;

    .line 382
    .line 383
    iget-wide v4, v9, Ll5/l;->b:J

    .line 384
    .line 385
    invoke-static {v1, v2, v4, v5}, Lx1/e;->a(JJ)Z

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    if-eqz v4, :cond_7

    .line 390
    .line 391
    goto :goto_2

    .line 392
    :cond_7
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    check-cast v4, Lx1/b;

    .line 397
    .line 398
    iget-wide v4, v4, Lx1/b;->a:J

    .line 399
    .line 400
    invoke-static {v4, v5}, Lx1/b;->d(J)F

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    invoke-static {v1, v2}, Lx1/e;->d(J)F

    .line 405
    .line 406
    .line 407
    move-result v11

    .line 408
    mul-float v11, v11, v6

    .line 409
    .line 410
    iget-wide v12, v9, Ll5/l;->b:J

    .line 411
    .line 412
    invoke-static {v12, v13}, Lx1/e;->d(J)F

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    div-float/2addr v11, v6

    .line 417
    invoke-static {v4, v5}, Lx1/b;->e(J)F

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    invoke-static {v1, v2}, Lx1/e;->b(J)F

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    mul-float v5, v5, v4

    .line 426
    .line 427
    iget-wide v12, v9, Ll5/l;->b:J

    .line 428
    .line 429
    invoke-static {v12, v13}, Lx1/e;->b(J)F

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    div-float/2addr v5, v4

    .line 434
    invoke-static {v11, v5}, Lp9/q;->d(FF)J

    .line 435
    .line 436
    .line 437
    move-result-wide v4

    .line 438
    new-instance v6, Lx1/b;

    .line 439
    .line 440
    invoke-direct {v6, v4, v5}, Lx1/b;-><init>(J)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3, v6}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    iput-wide v1, v9, Ll5/l;->b:J

    .line 447
    .line 448
    :goto_2
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    check-cast v1, Ljava/lang/Boolean;

    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-nez v1, :cond_8

    .line 459
    .line 460
    invoke-interface {v8, v9}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 464
    .line 465
    invoke-interface {v10, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    :cond_8
    return-object v7

    .line 469
    :pswitch_4
    check-cast v11, Ll0/s0;

    .line 470
    .line 471
    check-cast v10, Lg3/x;

    .line 472
    .line 473
    check-cast v9, Lg3/w;

    .line 474
    .line 475
    check-cast v8, Lg3/k;

    .line 476
    .line 477
    move-object/from16 v1, p1

    .line 478
    .line 479
    check-cast v1, Lf1/i0;

    .line 480
    .line 481
    invoke-virtual {v11}, Ll0/s0;->b()Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-eqz v1, :cond_9

    .line 486
    .line 487
    iget-object v1, v11, Ll0/s0;->d:Landroid/support/v4/media/session/t;

    .line 488
    .line 489
    iget-object v2, v11, Ll0/s0;->v:Ll0/s;

    .line 490
    .line 491
    iget-object v3, v11, Ll0/s0;->w:Ll0/s;

    .line 492
    .line 493
    new-instance v4, Lg9/x;

    .line 494
    .line 495
    invoke-direct {v4}, Lg9/x;-><init>()V

    .line 496
    .line 497
    .line 498
    new-instance v5, Ll0/u;

    .line 499
    .line 500
    invoke-direct {v5, v1, v2, v4, v6}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 501
    .line 502
    .line 503
    iget-object v1, v10, Lg3/x;->a:Lg3/r;

    .line 504
    .line 505
    invoke-interface {v1, v9, v8, v5, v3}, Lg3/r;->e(Lg3/w;Lg3/k;Ll0/u;Ll0/s;)V

    .line 506
    .line 507
    .line 508
    new-instance v2, Lg3/c0;

    .line 509
    .line 510
    invoke-direct {v2, v10, v1}, Lg3/c0;-><init>(Lg3/x;Lg3/r;)V

    .line 511
    .line 512
    .line 513
    iget-object v1, v10, Lg3/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 514
    .line 515
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    iput-object v2, v4, Lg9/x;->b:Ljava/lang/Object;

    .line 519
    .line 520
    iput-object v2, v11, Ll0/s0;->e:Lg3/c0;

    .line 521
    .line 522
    :cond_9
    new-instance v1, Ll0/b0;

    .line 523
    .line 524
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 525
    .line 526
    .line 527
    return-object v1

    .line 528
    :pswitch_5
    check-cast v11, Lh0/h0;

    .line 529
    .line 530
    check-cast v10, Lh0/t;

    .line 531
    .line 532
    check-cast v9, Lo2/h1;

    .line 533
    .line 534
    check-cast v8, Lh0/r0;

    .line 535
    .line 536
    move-object/from16 v1, p1

    .line 537
    .line 538
    check-cast v1, Lf1/i0;

    .line 539
    .line 540
    new-instance v1, Lf1/t0;

    .line 541
    .line 542
    invoke-direct {v1, v10, v9, v8}, Lf1/t0;-><init>(Lh0/t;Lo2/h1;Lh0/r0;)V

    .line 543
    .line 544
    .line 545
    iput-object v1, v11, Lh0/h0;->c:Lf1/t0;

    .line 546
    .line 547
    new-instance v1, Lc8/p;

    .line 548
    .line 549
    const/4 v2, 0x3

    .line 550
    invoke-direct {v1, v2, v11}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    return-object v1

    .line 554
    :pswitch_6
    check-cast v11, Ljava/util/List;

    .line 555
    .line 556
    check-cast v10, Lg9/v;

    .line 557
    .line 558
    check-cast v9, Ljava/util/List;

    .line 559
    .line 560
    check-cast v8, Lg0/m;

    .line 561
    .line 562
    move-object/from16 v1, p1

    .line 563
    .line 564
    check-cast v1, Lh0/q0;

    .line 565
    .line 566
    iget-object v12, v1, Lh0/q0;->e:Lo2/f1;

    .line 567
    .line 568
    if-eqz v12, :cond_a

    .line 569
    .line 570
    invoke-interface {v12}, Lo2/f1;->b()I

    .line 571
    .line 572
    .line 573
    move-result v12

    .line 574
    goto :goto_3

    .line 575
    :cond_a
    const/4 v12, 0x0

    .line 576
    :goto_3
    const/4 v13, 0x0

    .line 577
    :goto_4
    if-ge v2, v12, :cond_e

    .line 578
    .line 579
    iget-object v14, v8, Lg0/m;->q:Lz/w0;

    .line 580
    .line 581
    sget-object v15, Lz/w0;->a:Lz/w0;

    .line 582
    .line 583
    const-wide/16 v16, 0x0

    .line 584
    .line 585
    if-ne v14, v15, :cond_c

    .line 586
    .line 587
    iget-object v14, v1, Lh0/q0;->e:Lo2/f1;

    .line 588
    .line 589
    if-eqz v14, :cond_b

    .line 590
    .line 591
    invoke-interface {v14, v2}, Lo2/f1;->c(I)J

    .line 592
    .line 593
    .line 594
    move-result-wide v16

    .line 595
    :cond_b
    and-long v14, v16, v3

    .line 596
    .line 597
    :goto_5
    long-to-int v15, v14

    .line 598
    goto :goto_6

    .line 599
    :cond_c
    iget-object v14, v1, Lh0/q0;->e:Lo2/f1;

    .line 600
    .line 601
    if-eqz v14, :cond_d

    .line 602
    .line 603
    invoke-interface {v14, v2}, Lo2/f1;->c(I)J

    .line 604
    .line 605
    .line 606
    move-result-wide v16

    .line 607
    :cond_d
    shr-long v14, v16, v5

    .line 608
    .line 609
    goto :goto_5

    .line 610
    :goto_6
    add-int/2addr v13, v15

    .line 611
    add-int/lit8 v2, v2, 0x1

    .line 612
    .line 613
    goto :goto_4

    .line 614
    :cond_e
    if-eqz v11, :cond_f

    .line 615
    .line 616
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    :cond_f
    iget v1, v10, Lg9/v;->a:I

    .line 624
    .line 625
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-ne v1, v2, :cond_10

    .line 630
    .line 631
    goto :goto_7

    .line 632
    :cond_10
    iget v1, v10, Lg9/v;->a:I

    .line 633
    .line 634
    add-int/2addr v1, v6

    .line 635
    iput v1, v10, Lg9/v;->a:I

    .line 636
    .line 637
    :goto_7
    return-object v7

    .line 638
    :pswitch_7
    check-cast v11, Lp1/p;

    .line 639
    .line 640
    check-cast v10, Lf1/b1;

    .line 641
    .line 642
    check-cast v9, Lf1/b1;

    .line 643
    .line 644
    check-cast v8, Lf1/h1;

    .line 645
    .line 646
    move-object/from16 v1, p1

    .line 647
    .line 648
    check-cast v1, Ljava/lang/String;

    .line 649
    .line 650
    sget-object v3, La8/t;->a:La8/t;

    .line 651
    .line 652
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    check-cast v3, Lj8/k0;

    .line 657
    .line 658
    iget-object v3, v3, Lj8/k0;->b:Lj8/o0;

    .line 659
    .line 660
    invoke-interface {v3}, Lj8/o0;->b()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    invoke-static {v1, v3, v2}, Lxb/i;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 665
    .line 666
    .line 667
    move-result v3

    .line 668
    if-eqz v3, :cond_12

    .line 669
    .line 670
    invoke-virtual {v11}, Lp1/p;->size()I

    .line 671
    .line 672
    .line 673
    move-result v3

    .line 674
    const/16 v4, 0xc8

    .line 675
    .line 676
    if-le v3, v4, :cond_11

    .line 677
    .line 678
    invoke-virtual {v11, v2}, Lp1/p;->remove(I)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    :cond_11
    invoke-interface {v9}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    check-cast v2, Ljava/lang/Boolean;

    .line 686
    .line 687
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    if-eqz v2, :cond_12

    .line 692
    .line 693
    invoke-virtual {v11, v1}, Lp1/p;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    invoke-virtual {v11}, Lp1/p;->size()I

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    mul-int/lit16 v1, v1, 0x12c

    .line 701
    .line 702
    invoke-virtual {v8, v1}, Lf1/h1;->g(I)V

    .line 703
    .line 704
    .line 705
    :cond_12
    return-object v7

    .line 706
    nop

    .line 707
    :pswitch_data_0
    .packed-switch 0x0
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
