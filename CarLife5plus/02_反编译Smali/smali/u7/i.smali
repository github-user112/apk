.class public final synthetic Lu7/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu7/i;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu7/i;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 9
    .line 10
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    return-object v1

    .line 15
    :pswitch_0
    sget-object v1, Lz7/q1;->Companion:Lz7/w;

    .line 16
    .line 17
    invoke-virtual {v1}, Lz7/w;->serializer()Lkc/a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    return-object v1

    .line 22
    :pswitch_1
    new-instance v1, Lnc/c;

    .line 23
    .line 24
    sget-object v2, Lz7/y1;->a:Lz7/y1;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Lnc/c;-><init>(Lkc/a;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :pswitch_2
    new-instance v1, Lnc/c;

    .line 31
    .line 32
    sget-object v2, Lz7/y1;->a:Lz7/y1;

    .line 33
    .line 34
    invoke-direct {v1, v2}, Lnc/c;-><init>(Lkc/a;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :pswitch_3
    new-instance v1, Lkc/d;

    .line 39
    .line 40
    sget-object v4, Lg9/y;->a:Lg9/z;

    .line 41
    .line 42
    const-class v5, Lz7/q1;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-class v6, Lz7/d;

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-class v7, Lz7/g;

    .line 55
    .line 56
    invoke-virtual {v4, v7}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const-class v8, Lz7/j;

    .line 61
    .line 62
    invoke-virtual {v4, v8}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const-class v9, Lz7/m;

    .line 67
    .line 68
    invoke-virtual {v4, v9}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const-class v10, Lz7/p;

    .line 73
    .line 74
    invoke-virtual {v4, v10}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    const-class v11, Lz7/s;

    .line 79
    .line 80
    invoke-virtual {v4, v11}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    const-class v12, Lz7/v;

    .line 85
    .line 86
    invoke-virtual {v4, v12}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    const-class v13, Lz7/z;

    .line 91
    .line 92
    invoke-virtual {v4, v13}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    const-class v14, Lz7/c0;

    .line 97
    .line 98
    invoke-virtual {v4, v14}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    const-class v15, Lz7/f0;

    .line 103
    .line 104
    invoke-virtual {v4, v15}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 105
    .line 106
    .line 107
    move-result-object v15

    .line 108
    const/16 v16, 0xe

    .line 109
    .line 110
    const-class v2, Lz7/i0;

    .line 111
    .line 112
    invoke-virtual {v4, v2}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const/16 v17, 0x0

    .line 117
    .line 118
    const-class v3, Lz7/l0;

    .line 119
    .line 120
    invoke-virtual {v4, v3}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-class v0, Lz7/o0;

    .line 125
    .line 126
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    move-object/from16 v18, v0

    .line 131
    .line 132
    const-class v0, Lz7/r0;

    .line 133
    .line 134
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    move-object/from16 v19, v0

    .line 139
    .line 140
    const-class v0, Lz7/u0;

    .line 141
    .line 142
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    move-object/from16 v20, v0

    .line 147
    .line 148
    const-class v0, Lz7/x0;

    .line 149
    .line 150
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    move-object/from16 v21, v0

    .line 155
    .line 156
    const-class v0, Lz7/a1;

    .line 157
    .line 158
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    move-object/from16 v22, v0

    .line 163
    .line 164
    const-class v0, Lz7/d1;

    .line 165
    .line 166
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    move-object/from16 v23, v0

    .line 171
    .line 172
    const-class v0, Lz7/g1;

    .line 173
    .line 174
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    move-object/from16 v24, v0

    .line 179
    .line 180
    const-class v0, Lz7/j1;

    .line 181
    .line 182
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    move-object/from16 v25, v0

    .line 187
    .line 188
    const-class v0, Lz7/m1;

    .line 189
    .line 190
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    move-object/from16 v26, v0

    .line 195
    .line 196
    const-class v0, Lz7/p1;

    .line 197
    .line 198
    invoke-virtual {v4, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const/16 v4, 0x16

    .line 203
    .line 204
    move-object/from16 v27, v0

    .line 205
    .line 206
    new-array v0, v4, [Lm9/c;

    .line 207
    .line 208
    aput-object v6, v0, v17

    .line 209
    .line 210
    const/4 v6, 0x1

    .line 211
    aput-object v7, v0, v6

    .line 212
    .line 213
    const/4 v7, 0x2

    .line 214
    aput-object v8, v0, v7

    .line 215
    .line 216
    const/4 v8, 0x3

    .line 217
    aput-object v9, v0, v8

    .line 218
    .line 219
    const/4 v9, 0x4

    .line 220
    aput-object v10, v0, v9

    .line 221
    .line 222
    const/4 v10, 0x5

    .line 223
    aput-object v11, v0, v10

    .line 224
    .line 225
    const/4 v11, 0x6

    .line 226
    aput-object v12, v0, v11

    .line 227
    .line 228
    const/4 v12, 0x7

    .line 229
    aput-object v13, v0, v12

    .line 230
    .line 231
    const/16 v13, 0x8

    .line 232
    .line 233
    aput-object v14, v0, v13

    .line 234
    .line 235
    const/16 v14, 0x9

    .line 236
    .line 237
    aput-object v15, v0, v14

    .line 238
    .line 239
    const/16 v15, 0xa

    .line 240
    .line 241
    aput-object v2, v0, v15

    .line 242
    .line 243
    const/16 v2, 0xb

    .line 244
    .line 245
    aput-object v3, v0, v2

    .line 246
    .line 247
    const/16 v3, 0xc

    .line 248
    .line 249
    aput-object v18, v0, v3

    .line 250
    .line 251
    const/16 v18, 0xd

    .line 252
    .line 253
    aput-object v19, v0, v18

    .line 254
    .line 255
    aput-object v20, v0, v16

    .line 256
    .line 257
    const/16 v19, 0xf

    .line 258
    .line 259
    aput-object v21, v0, v19

    .line 260
    .line 261
    const/16 v20, 0x10

    .line 262
    .line 263
    aput-object v22, v0, v20

    .line 264
    .line 265
    const/16 v21, 0x11

    .line 266
    .line 267
    aput-object v23, v0, v21

    .line 268
    .line 269
    const/16 v22, 0x12

    .line 270
    .line 271
    aput-object v24, v0, v22

    .line 272
    .line 273
    const/16 v23, 0x13

    .line 274
    .line 275
    aput-object v25, v0, v23

    .line 276
    .line 277
    const/16 v24, 0x14

    .line 278
    .line 279
    aput-object v26, v0, v24

    .line 280
    .line 281
    const/16 v25, 0x15

    .line 282
    .line 283
    aput-object v27, v0, v25

    .line 284
    .line 285
    new-array v4, v4, [Lkc/a;

    .line 286
    .line 287
    sget-object v25, Lz7/b;->a:Lz7/b;

    .line 288
    .line 289
    aput-object v25, v4, v17

    .line 290
    .line 291
    sget-object v25, Lz7/e;->a:Lz7/e;

    .line 292
    .line 293
    aput-object v25, v4, v6

    .line 294
    .line 295
    sget-object v6, Lz7/h;->a:Lz7/h;

    .line 296
    .line 297
    aput-object v6, v4, v7

    .line 298
    .line 299
    sget-object v6, Lz7/k;->a:Lz7/k;

    .line 300
    .line 301
    aput-object v6, v4, v8

    .line 302
    .line 303
    sget-object v6, Lz7/n;->a:Lz7/n;

    .line 304
    .line 305
    aput-object v6, v4, v9

    .line 306
    .line 307
    sget-object v6, Lz7/q;->a:Lz7/q;

    .line 308
    .line 309
    aput-object v6, v4, v10

    .line 310
    .line 311
    sget-object v6, Lz7/t;->a:Lz7/t;

    .line 312
    .line 313
    aput-object v6, v4, v11

    .line 314
    .line 315
    sget-object v6, Lz7/x;->a:Lz7/x;

    .line 316
    .line 317
    aput-object v6, v4, v12

    .line 318
    .line 319
    sget-object v6, Lz7/a0;->a:Lz7/a0;

    .line 320
    .line 321
    aput-object v6, v4, v13

    .line 322
    .line 323
    sget-object v6, Lz7/d0;->a:Lz7/d0;

    .line 324
    .line 325
    aput-object v6, v4, v14

    .line 326
    .line 327
    sget-object v6, Lz7/g0;->a:Lz7/g0;

    .line 328
    .line 329
    aput-object v6, v4, v15

    .line 330
    .line 331
    sget-object v6, Lz7/j0;->a:Lz7/j0;

    .line 332
    .line 333
    aput-object v6, v4, v2

    .line 334
    .line 335
    sget-object v2, Lz7/m0;->a:Lz7/m0;

    .line 336
    .line 337
    aput-object v2, v4, v3

    .line 338
    .line 339
    sget-object v2, Lz7/p0;->a:Lz7/p0;

    .line 340
    .line 341
    aput-object v2, v4, v18

    .line 342
    .line 343
    sget-object v2, Lz7/s0;->a:Lz7/s0;

    .line 344
    .line 345
    aput-object v2, v4, v16

    .line 346
    .line 347
    sget-object v2, Lz7/v0;->a:Lz7/v0;

    .line 348
    .line 349
    aput-object v2, v4, v19

    .line 350
    .line 351
    sget-object v2, Lz7/y0;->a:Lz7/y0;

    .line 352
    .line 353
    aput-object v2, v4, v20

    .line 354
    .line 355
    sget-object v2, Lz7/b1;->a:Lz7/b1;

    .line 356
    .line 357
    aput-object v2, v4, v21

    .line 358
    .line 359
    sget-object v2, Lz7/e1;->a:Lz7/e1;

    .line 360
    .line 361
    aput-object v2, v4, v22

    .line 362
    .line 363
    sget-object v2, Lz7/h1;->a:Lz7/h1;

    .line 364
    .line 365
    aput-object v2, v4, v23

    .line 366
    .line 367
    sget-object v2, Lz7/k1;->a:Lz7/k1;

    .line 368
    .line 369
    aput-object v2, v4, v24

    .line 370
    .line 371
    sget-object v2, Lz7/n1;->a:Lz7/n1;

    .line 372
    .line 373
    const/16 v3, 0x15

    .line 374
    .line 375
    aput-object v2, v4, v3

    .line 376
    .line 377
    const/4 v2, 0x0

    .line 378
    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    .line 379
    .line 380
    invoke-direct {v1, v5, v0, v4, v2}, Lkc/d;-><init>(Lm9/c;[Lm9/c;[Lkc/a;[Ljava/lang/annotation/Annotation;)V

    .line 381
    .line 382
    .line 383
    return-object v1

    .line 384
    :pswitch_4
    sget v0, Lz/y;->a:F

    .line 385
    .line 386
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 387
    .line 388
    return-object v0

    .line 389
    :pswitch_5
    sget v0, Lz/y;->a:F

    .line 390
    .line 391
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 392
    .line 393
    return-object v0

    .line 394
    :pswitch_6
    const/4 v2, 0x0

    .line 395
    new-instance v0, Lx/n1;

    .line 396
    .line 397
    invoke-direct {v0, v2}, Lx/n1;-><init>(I)V

    .line 398
    .line 399
    .line 400
    return-object v0

    .line 401
    :pswitch_7
    new-instance v0, Lx/b1;

    .line 402
    .line 403
    invoke-direct {v0}, Lx/b1;-><init>()V

    .line 404
    .line 405
    .line 406
    return-object v0

    .line 407
    :pswitch_8
    sget-object v0, Landroidx/compose/foundation/c;->a:Lf1/c0;

    .line 408
    .line 409
    sget-object v0, Lx/z;->a:Lx/z;

    .line 410
    .line 411
    return-object v0

    .line 412
    :pswitch_9
    sget-object v0, Lw0/x1;->b:Lw0/w1;

    .line 413
    .line 414
    return-object v0

    .line 415
    :pswitch_a
    sget-object v0, Lw0/d1;->a:Lf1/c0;

    .line 416
    .line 417
    const/4 v0, 0x0

    .line 418
    return-object v0

    .line 419
    :pswitch_b
    new-instance v0, Lw0/c1;

    .line 420
    .line 421
    const-wide/16 v1, 0x1

    .line 422
    .line 423
    invoke-direct {v0, v1, v2}, Lw0/c1;-><init>(J)V

    .line 424
    .line 425
    .line 426
    return-object v0

    .line 427
    :pswitch_c
    sget-object v0, Lac/g0;->a:Lhc/e;

    .line 428
    .line 429
    sget-object v0, Lhc/d;->c:Lhc/d;

    .line 430
    .line 431
    return-object v0

    .line 432
    :pswitch_d
    const/16 v16, 0xe

    .line 433
    .line 434
    new-instance v0, Lp1/u;

    .line 435
    .line 436
    new-instance v1, Ls7/d;

    .line 437
    .line 438
    const/16 v2, 0xe

    .line 439
    .line 440
    invoke-direct {v1, v2}, Ls7/d;-><init>(I)V

    .line 441
    .line 442
    .line 443
    invoke-direct {v0, v1}, Lp1/u;-><init>(Lf9/k;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0}, Lp1/u;->d()V

    .line 447
    .line 448
    .line 449
    return-object v0

    .line 450
    :pswitch_e
    sget-object v0, Lcom/muyetuge/carlifevehicle/application/MainApplication;->a:Lcom/muyetuge/carlifevehicle/application/MainApplication;

    .line 451
    .line 452
    invoke-static {}, Li2/c;->t()Landroid/content/Context;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    return-object v0

    .line 457
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
