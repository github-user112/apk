.class public final Lj8/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:Lf9/n;

.field public final synthetic b:I

.field public final synthetic c:Lf9/n;

.field public final synthetic d:Lf9/n;

.field public final synthetic e:Lf9/n;

.field public final synthetic f:Lf9/n;


# direct methods
.method public constructor <init>(Lf9/n;ILf9/n;Lf9/n;Lf9/n;Lf9/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/l;->a:Lf9/n;

    .line 5
    .line 6
    iput p2, p0, Lj8/l;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lj8/l;->c:Lf9/n;

    .line 9
    .line 10
    iput-object p4, p0, Lj8/l;->d:Lf9/n;

    .line 11
    .line 12
    iput-object p5, p0, Lj8/l;->e:Lf9/n;

    .line 13
    .line 14
    iput-object p6, p0, Lj8/l;->f:Lf9/n;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Ld0/t;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Lf1/s;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v6, "$this$Card"

    .line 25
    .line 26
    invoke-static {v1, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    and-int/lit8 v1, v3, 0x11

    .line 30
    .line 31
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 32
    .line 33
    const/16 v6, 0x10

    .line 34
    .line 35
    if-ne v1, v6, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lf1/s;->z()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v2}, Lf1/s;->Q()V

    .line 45
    .line 46
    .line 47
    return-object v3

    .line 48
    :cond_1
    :goto_0
    sget-object v1, Ld0/h;->d:Ld0/d;

    .line 49
    .line 50
    invoke-static {v6, v2}, Lg5/a;->B(ILf1/s;)F

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    sget-object v7, Lr1/m;->a:Lr1/m;

    .line 55
    .line 56
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/a;->h(Lr1/p;F)Lr1/p;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sget-object v8, Lr1/c;->m:Lr1/f;

    .line 61
    .line 62
    const/4 v9, 0x6

    .line 63
    invoke-static {v1, v8, v2, v9}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-wide v9, v2, Lf1/s;->T:J

    .line 68
    .line 69
    const/16 v11, 0x20

    .line 70
    .line 71
    ushr-long v12, v9, v11

    .line 72
    .line 73
    xor-long/2addr v9, v12

    .line 74
    long-to-int v10, v9

    .line 75
    invoke-virtual {v2}, Lf1/s;->l()Lf1/q1;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-static {v2, v6}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    sget-object v12, Lq2/j;->d0:Lq2/i;

    .line 84
    .line 85
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    sget-object v12, Lq2/i;->b:Lq2/a0;

    .line 89
    .line 90
    invoke-virtual {v2}, Lf1/s;->a0()V

    .line 91
    .line 92
    .line 93
    iget-boolean v13, v2, Lf1/s;->S:Z

    .line 94
    .line 95
    if-eqz v13, :cond_2

    .line 96
    .line 97
    invoke-virtual {v2, v12}, Lf1/s;->k(Lf9/a;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v2}, Lf1/s;->k0()V

    .line 102
    .line 103
    .line 104
    :goto_1
    sget-object v13, Lq2/i;->e:Lq2/h;

    .line 105
    .line 106
    invoke-static {v2, v13, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v1, Lq2/i;->d:Lq2/h;

    .line 110
    .line 111
    invoke-static {v2, v1, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object v9, Lq2/i;->f:Lq2/h;

    .line 115
    .line 116
    iget-boolean v14, v2, Lf1/s;->S:Z

    .line 117
    .line 118
    if-nez v14, :cond_3

    .line 119
    .line 120
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    invoke-static {v14, v15}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    if-nez v14, :cond_4

    .line 133
    .line 134
    :cond_3
    invoke-static {v10, v2, v10, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    sget-object v10, Lq2/i;->c:Lq2/h;

    .line 138
    .line 139
    invoke-static {v2, v10, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const v6, 0x6dda6a60

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v6}, Lf1/s;->W(I)V

    .line 146
    .line 147
    .line 148
    iget-object v6, v0, Lj8/l;->a:Lf9/n;

    .line 149
    .line 150
    if-nez v6, :cond_5

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    invoke-interface {v6, v2, v5}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :goto_2
    invoke-virtual {v2, v4}, Lf1/s;->p(Z)V

    .line 157
    .line 158
    .line 159
    const/high16 v6, 0x3f800000    # 1.0f

    .line 160
    .line 161
    float-to-double v14, v6

    .line 162
    const-wide/16 v16, 0x0

    .line 163
    .line 164
    cmpl-double v18, v14, v16

    .line 165
    .line 166
    if-lez v18, :cond_6

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    const-string v14, "invalid weight; must be greater than zero"

    .line 170
    .line 171
    invoke-static {v14}, Le0/a;->a(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_3
    new-instance v14, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 175
    .line 176
    invoke-direct {v14, v6, v4}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 177
    .line 178
    .line 179
    const/16 v6, 0xc

    .line 180
    .line 181
    invoke-static {v6, v2}, Lg5/a;->B(ILf1/s;)F

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-static {v6}, Lk0/e;->a(F)Lk0/d;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {v14, v6}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    sget-object v14, Ld0/h;->c:Ld0/b;

    .line 194
    .line 195
    invoke-static {v14, v8, v2, v4}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    move-object/from16 p2, v5

    .line 200
    .line 201
    iget-wide v4, v2, Lf1/s;->T:J

    .line 202
    .line 203
    ushr-long v16, v4, v11

    .line 204
    .line 205
    xor-long v4, v4, v16

    .line 206
    .line 207
    long-to-int v5, v4

    .line 208
    invoke-virtual {v2}, Lf1/s;->l()Lf1/q1;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-static {v2, v6}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v2}, Lf1/s;->a0()V

    .line 217
    .line 218
    .line 219
    const/16 p3, 0x20

    .line 220
    .line 221
    iget-boolean v11, v2, Lf1/s;->S:Z

    .line 222
    .line 223
    if-eqz v11, :cond_7

    .line 224
    .line 225
    invoke-virtual {v2, v12}, Lf1/s;->k(Lf9/a;)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_7
    invoke-virtual {v2}, Lf1/s;->k0()V

    .line 230
    .line 231
    .line 232
    :goto_4
    invoke-static {v2, v13, v15}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v2, v1, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    iget-boolean v4, v2, Lf1/s;->S:Z

    .line 239
    .line 240
    if-nez v4, :cond_8

    .line 241
    .line 242
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-static {v4, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-nez v4, :cond_9

    .line 255
    .line 256
    :cond_8
    invoke-static {v5, v2, v5, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 257
    .line 258
    .line 259
    :cond_9
    invoke-static {v2, v10, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v2}, Lp9/p1;->C(Lf1/s;)Lx/n1;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    iget v5, v0, Lj8/l;->b:I

    .line 267
    .line 268
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    const v11, -0x615d173a

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v11}, Lf1/s;->W(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v11

    .line 282
    invoke-virtual {v2, v5}, Lf1/s;->d(I)Z

    .line 283
    .line 284
    .line 285
    move-result v15

    .line 286
    or-int/2addr v11, v15

    .line 287
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    move-object/from16 v16, v3

    .line 292
    .line 293
    const/4 v3, 0x0

    .line 294
    if-nez v11, :cond_a

    .line 295
    .line 296
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 297
    .line 298
    if-ne v15, v11, :cond_b

    .line 299
    .line 300
    :cond_a
    new-instance v15, Lb8/l;

    .line 301
    .line 302
    const/4 v11, 0x2

    .line 303
    invoke-direct {v15, v4, v5, v3, v11}, Lb8/l;-><init>(Ljava/lang/Object;ILw8/c;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v15}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :cond_b
    check-cast v15, Lf9/n;

    .line 310
    .line 311
    const/4 v5, 0x0

    .line 312
    invoke-virtual {v2, v5}, Lf1/s;->p(Z)V

    .line 313
    .line 314
    .line 315
    iget-object v11, v0, Lj8/l;->c:Lf9/n;

    .line 316
    .line 317
    invoke-static {v6, v11, v15, v2}, Lf1/b;->g(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;Lf1/s;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v7}, Landroidx/compose/foundation/layout/c;->m(Lr1/p;)Lr1/p;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    const/4 v15, 0x1

    .line 325
    invoke-static {v6, v4, v15}, Lp9/p1;->D(Lr1/p;Lx/n1;Z)Lr1/p;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-static {v14, v8, v2, v5}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    move-object v8, v4

    .line 334
    iget-wide v3, v2, Lf1/s;->T:J

    .line 335
    .line 336
    ushr-long v17, v3, p3

    .line 337
    .line 338
    xor-long v3, v3, v17

    .line 339
    .line 340
    long-to-int v4, v3

    .line 341
    invoke-virtual {v2}, Lf1/s;->l()Lf1/q1;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-static {v2, v8}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-virtual {v2}, Lf1/s;->a0()V

    .line 350
    .line 351
    .line 352
    iget-boolean v14, v2, Lf1/s;->S:Z

    .line 353
    .line 354
    if-eqz v14, :cond_c

    .line 355
    .line 356
    invoke-virtual {v2, v12}, Lf1/s;->k(Lf9/a;)V

    .line 357
    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_c
    invoke-virtual {v2}, Lf1/s;->k0()V

    .line 361
    .line 362
    .line 363
    :goto_5
    invoke-static {v2, v13, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v2, v1, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    iget-boolean v3, v2, Lf1/s;->S:Z

    .line 370
    .line 371
    if-nez v3, :cond_d

    .line 372
    .line 373
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-static {v3, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-nez v3, :cond_e

    .line 386
    .line 387
    :cond_d
    invoke-static {v4, v2, v4, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 388
    .line 389
    .line 390
    :cond_e
    invoke-static {v2, v10, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    move-object/from16 v3, p2

    .line 394
    .line 395
    invoke-interface {v11, v2, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v15}, Lf1/s;->p(Z)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v15}, Lf1/s;->p(Z)V

    .line 402
    .line 403
    .line 404
    sget-object v4, Ld0/h;->b:Ld0/b;

    .line 405
    .line 406
    sget-object v6, Lr1/c;->l:Lr1/g;

    .line 407
    .line 408
    sget-object v8, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 409
    .line 410
    const/16 v11, 0x36

    .line 411
    .line 412
    invoke-static {v4, v6, v2, v11}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    iget-wide v5, v2, Lf1/s;->T:J

    .line 417
    .line 418
    ushr-long v17, v5, p3

    .line 419
    .line 420
    xor-long v5, v5, v17

    .line 421
    .line 422
    long-to-int v6, v5

    .line 423
    invoke-virtual {v2}, Lf1/s;->l()Lf1/q1;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-static {v2, v8}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 428
    .line 429
    .line 430
    move-result-object v8

    .line 431
    invoke-virtual {v2}, Lf1/s;->a0()V

    .line 432
    .line 433
    .line 434
    iget-boolean v11, v2, Lf1/s;->S:Z

    .line 435
    .line 436
    if-eqz v11, :cond_f

    .line 437
    .line 438
    invoke-virtual {v2, v12}, Lf1/s;->k(Lf9/a;)V

    .line 439
    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_f
    invoke-virtual {v2}, Lf1/s;->k0()V

    .line 443
    .line 444
    .line 445
    :goto_6
    invoke-static {v2, v13, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    invoke-static {v2, v1, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    iget-boolean v1, v2, Lf1/s;->S:Z

    .line 452
    .line 453
    if-nez v1, :cond_10

    .line 454
    .line 455
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-static {v1, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-nez v1, :cond_11

    .line 468
    .line 469
    :cond_10
    invoke-static {v6, v2, v6, v9}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 470
    .line 471
    .line 472
    :cond_11
    invoke-static {v2, v10, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    const v1, -0x3637409c    # -1644524.5f

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v1}, Lf1/s;->W(I)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v0, Lj8/l;->d:Lf9/n;

    .line 482
    .line 483
    if-nez v1, :cond_12

    .line 484
    .line 485
    const/4 v1, 0x0

    .line 486
    :goto_7
    const/4 v5, 0x0

    .line 487
    goto :goto_8

    .line 488
    :cond_12
    invoke-interface {v1, v2, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-object/from16 v1, v16

    .line 492
    .line 493
    goto :goto_7

    .line 494
    :goto_8
    invoke-virtual {v2, v5}, Lf1/s;->p(Z)V

    .line 495
    .line 496
    .line 497
    const v4, -0x36373e52

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v4}, Lf1/s;->W(I)V

    .line 501
    .line 502
    .line 503
    const/16 v4, 0xa

    .line 504
    .line 505
    const/16 v5, 0x40

    .line 506
    .line 507
    if-nez v1, :cond_13

    .line 508
    .line 509
    :goto_9
    const/4 v1, 0x0

    .line 510
    goto :goto_a

    .line 511
    :cond_13
    invoke-static {v5, v2}, Lg5/a;->B(ILf1/s;)F

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-static {v4, v2}, Lg5/a;->B(ILf1/s;)F

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    invoke-static {v1, v6}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-static {v2, v1}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 528
    .line 529
    .line 530
    goto :goto_9

    .line 531
    :goto_a
    invoke-virtual {v2, v1}, Lf1/s;->p(Z)V

    .line 532
    .line 533
    .line 534
    const v6, -0x3637183c    # -1645816.5f

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2, v6}, Lf1/s;->W(I)V

    .line 538
    .line 539
    .line 540
    iget-object v6, v0, Lj8/l;->e:Lf9/n;

    .line 541
    .line 542
    if-nez v6, :cond_14

    .line 543
    .line 544
    const/4 v6, 0x0

    .line 545
    goto :goto_b

    .line 546
    :cond_14
    invoke-interface {v6, v2, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-object/from16 v6, v16

    .line 550
    .line 551
    :goto_b
    invoke-virtual {v2, v1}, Lf1/s;->p(Z)V

    .line 552
    .line 553
    .line 554
    const v8, -0x363715f2

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2, v8}, Lf1/s;->W(I)V

    .line 558
    .line 559
    .line 560
    if-nez v6, :cond_15

    .line 561
    .line 562
    goto :goto_c

    .line 563
    :cond_15
    invoke-static {v5, v2}, Lg5/a;->B(ILf1/s;)F

    .line 564
    .line 565
    .line 566
    move-result v6

    .line 567
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    invoke-static {v4, v2}, Lg5/a;->B(ILf1/s;)F

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-static {v2, v4}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 580
    .line 581
    .line 582
    :goto_c
    invoke-virtual {v2, v1}, Lf1/s;->p(Z)V

    .line 583
    .line 584
    .line 585
    const v4, -0x3636efbc

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v4}, Lf1/s;->W(I)V

    .line 589
    .line 590
    .line 591
    iget-object v4, v0, Lj8/l;->f:Lf9/n;

    .line 592
    .line 593
    if-nez v4, :cond_16

    .line 594
    .line 595
    const/4 v3, 0x0

    .line 596
    goto :goto_d

    .line 597
    :cond_16
    invoke-interface {v4, v2, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-object/from16 v3, v16

    .line 601
    .line 602
    :goto_d
    invoke-virtual {v2, v1}, Lf1/s;->p(Z)V

    .line 603
    .line 604
    .line 605
    const v4, -0x3636ee13

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2, v4}, Lf1/s;->W(I)V

    .line 609
    .line 610
    .line 611
    if-nez v3, :cond_17

    .line 612
    .line 613
    goto :goto_e

    .line 614
    :cond_17
    invoke-static {v5, v2}, Lg5/a;->B(ILf1/s;)F

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    invoke-static {v2, v3}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 623
    .line 624
    .line 625
    :goto_e
    invoke-virtual {v2, v1}, Lf1/s;->p(Z)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2, v15}, Lf1/s;->p(Z)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v2, v15}, Lf1/s;->p(Z)V

    .line 632
    .line 633
    .line 634
    return-object v16
.end method
