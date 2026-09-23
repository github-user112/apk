.class public final Lu7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final b:Lu7/a;

.field public static final c:Lu7/a;

.field public static final d:Lu7/a;

.field public static final e:Lu7/a;

.field public static final f:Lu7/a;

.field public static final g:Lu7/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lu7/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu7/a;->b:Lu7/a;

    .line 8
    .line 9
    new-instance v0, Lu7/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lu7/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lu7/a;->c:Lu7/a;

    .line 16
    .line 17
    new-instance v0, Lu7/a;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lu7/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lu7/a;->d:Lu7/a;

    .line 24
    .line 25
    new-instance v0, Lu7/a;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lu7/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lu7/a;->e:Lu7/a;

    .line 32
    .line 33
    new-instance v0, Lu7/a;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Lu7/a;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lu7/a;->f:Lu7/a;

    .line 40
    .line 41
    new-instance v0, Lu7/a;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, Lu7/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lu7/a;->g:Lu7/a;

    .line 48
    .line 49
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu7/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu7/a;->a:I

    .line 4
    .line 5
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 6
    .line 7
    const v3, 0x6e3c21fe

    .line 8
    .line 9
    .line 10
    const/16 v4, 0x186

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x2

    .line 18
    const/4 v10, 0x3

    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object/from16 v15, p1

    .line 23
    .line 24
    check-cast v15, Lf1/s;

    .line 25
    .line 26
    move-object/from16 v1, p2

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    and-int/2addr v1, v10

    .line 35
    if-ne v1, v9, :cond_1

    .line 36
    .line 37
    invoke-virtual {v15}, Lf1/s;->z()Z

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
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    :goto_0
    const-string v1, "\u524d\u53f0\u901a\u77e5"

    .line 50
    .line 51
    const-string v2, "CarLife\u524d\u53f0\u901a\u77e5"

    .line 52
    .line 53
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    sget-object v1, Lw6/a;->a:Ls/s;

    .line 62
    .line 63
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ly6/a;

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    new-instance v3, Lz6/g;

    .line 75
    .line 76
    invoke-direct {v3, v8}, Ly6/a;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, v3}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    const/16 v16, 0xc06

    .line 87
    .line 88
    const/16 v17, 0x4

    .line 89
    .line 90
    sget-object v11, Lu7/h;->a:Lu7/h;

    .line 91
    .line 92
    const/4 v14, 0x0

    .line 93
    invoke-virtual/range {v11 .. v17}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 94
    .line 95
    .line 96
    const-string v2, "\u9ea6\u514b\u98ce"

    .line 97
    .line 98
    const-string v3, "\u8bed\u97f3\u52a9\u624b\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650"

    .line 99
    .line 100
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    const-string v2, "android.permission.RECORD_AUDIO"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ly6/a;

    .line 115
    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    new-instance v3, Lz6/h;

    .line 120
    .line 121
    const/16 v13, 0x17

    .line 122
    .line 123
    invoke-direct {v3, v2, v5, v13}, Lz6/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Lz6/h;->n()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2, v3}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :goto_2
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    const/16 v16, 0xc06

    .line 138
    .line 139
    const/16 v17, 0x4

    .line 140
    .line 141
    const/4 v14, 0x0

    .line 142
    invoke-virtual/range {v11 .. v17}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 143
    .line 144
    .line 145
    const-string v1, "\u9644\u8fd1\u8bbe\u5907"

    .line 146
    .line 147
    const-string v2, "\u626b\u63cf\u9644\u8fd1\u8bbe\u5907\u6743\u9650"

    .line 148
    .line 149
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v11, v1, v8, v15, v4}, Lu7/h;->g(Ljava/util/List;ZLf1/s;I)V

    .line 158
    .line 159
    .line 160
    const-string v1, "\u84dd\u7259\u76f8\u5173"

    .line 161
    .line 162
    const-string v2, "\u84dd\u7259(\u626b\u63cf|\u8fde\u63a5|\u5e7f\u64ad)\u6743\u9650"

    .line 163
    .line 164
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    invoke-static {}, Lw6/a;->f()Ly6/a;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {}, Lw6/a;->e()Ly6/a;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {}, Lw6/a;->d()Ly6/a;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    new-array v4, v10, [Ly6/a;

    .line 185
    .line 186
    aput-object v1, v4, v8

    .line 187
    .line 188
    aput-object v2, v4, v6

    .line 189
    .line 190
    aput-object v3, v4, v9

    .line 191
    .line 192
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    invoke-virtual/range {v11 .. v17}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 197
    .line 198
    .line 199
    const-string v1, "\u540e\u53f0\u5b9a\u4f4d"

    .line 200
    .line 201
    const-string v2, "\u65e0\u611f\u8fde\u63a5\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650,\u9009\u62e9\u59cb\u7ec8\u5141\u8bb8"

    .line 202
    .line 203
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-static {}, Lw6/a;->b()Ly6/a;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {}, Lw6/a;->a()Ly6/a;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    new-array v4, v10, [Ly6/a;

    .line 224
    .line 225
    aput-object v1, v4, v8

    .line 226
    .line 227
    aput-object v2, v4, v6

    .line 228
    .line 229
    aput-object v3, v4, v9

    .line 230
    .line 231
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    const/16 v16, 0xd86

    .line 236
    .line 237
    const/16 v17, 0x0

    .line 238
    .line 239
    invoke-virtual/range {v11 .. v17}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 240
    .line 241
    .line 242
    :goto_3
    return-object v7

    .line 243
    :pswitch_0
    move-object/from16 v22, p1

    .line 244
    .line 245
    check-cast v22, Lf1/s;

    .line 246
    .line 247
    move-object/from16 v1, p2

    .line 248
    .line 249
    check-cast v1, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    and-int/2addr v1, v10

    .line 256
    if-ne v1, v9, :cond_5

    .line 257
    .line 258
    invoke-virtual/range {v22 .. v22}, Lf1/s;->z()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_4

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lf1/s;->Q()V

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_5
    :goto_4
    const-string v1, "\u663e\u793a\u60ac\u6d6e\u7a97"

    .line 270
    .line 271
    const-string v2, "\u5b89\u535310+\u5f00\u673a\u81ea\u542f\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650"

    .line 272
    .line 273
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v19

    .line 281
    invoke-static {}, Lw6/a;->h()Ly6/a;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v20

    .line 289
    const/16 v23, 0xc06

    .line 290
    .line 291
    const/16 v24, 0x4

    .line 292
    .line 293
    sget-object v18, Lu7/h;->a:Lu7/h;

    .line 294
    .line 295
    const/16 v21, 0x0

    .line 296
    .line 297
    invoke-virtual/range {v18 .. v24}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 298
    .line 299
    .line 300
    const-string v1, "\u5ffd\u7565\u7535\u6c60\u4f18\u5316"

    .line 301
    .line 302
    const-string v2, "\u5b89\u535311+\u5f00\u673a\u81ea\u542f\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650"

    .line 303
    .line 304
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 309
    .line 310
    .line 311
    move-result-object v19

    .line 312
    sget-object v1, Lw6/a;->a:Ls/s;

    .line 313
    .line 314
    const-string v2, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    check-cast v3, Ly6/a;

    .line 321
    .line 322
    if-eqz v3, :cond_6

    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_6
    new-instance v3, La7/f;

    .line 326
    .line 327
    invoke-direct {v3, v6}, Ly6/a;-><init>(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v2, v3}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    :goto_5
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v20

    .line 337
    const/16 v23, 0xd86

    .line 338
    .line 339
    const/16 v24, 0x0

    .line 340
    .line 341
    const/16 v21, 0x0

    .line 342
    .line 343
    invoke-virtual/range {v18 .. v24}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 344
    .line 345
    .line 346
    :goto_6
    return-object v7

    .line 347
    :pswitch_1
    move-object/from16 v1, p1

    .line 348
    .line 349
    check-cast v1, Lf1/s;

    .line 350
    .line 351
    move-object/from16 v4, p2

    .line 352
    .line 353
    check-cast v4, Ljava/lang/Number;

    .line 354
    .line 355
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    and-int/2addr v4, v10

    .line 360
    if-ne v4, v9, :cond_8

    .line 361
    .line 362
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-nez v4, :cond_7

    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_7
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 370
    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_8
    :goto_7
    invoke-virtual {v1, v3}, Lf1/s;->W(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    if-ne v3, v2, :cond_9

    .line 381
    .line 382
    new-instance v3, Lm7/e;

    .line 383
    .line 384
    const/16 v2, 0x1c

    .line 385
    .line 386
    invoke-direct {v3, v2}, Lm7/e;-><init>(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    :cond_9
    check-cast v3, Lf9/a;

    .line 393
    .line 394
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 395
    .line 396
    .line 397
    const/16 v2, 0x36

    .line 398
    .line 399
    const-string v4, "\u9000\u51fa"

    .line 400
    .line 401
    invoke-static {v4, v3, v1, v2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 402
    .line 403
    .line 404
    :goto_8
    return-object v7

    .line 405
    :pswitch_2
    move-object/from16 v1, p1

    .line 406
    .line 407
    check-cast v1, Lf1/s;

    .line 408
    .line 409
    move-object/from16 v2, p2

    .line 410
    .line 411
    check-cast v2, Ljava/lang/Number;

    .line 412
    .line 413
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    and-int/2addr v2, v10

    .line 418
    if-ne v2, v9, :cond_b

    .line 419
    .line 420
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-nez v2, :cond_a

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :cond_a
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 428
    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_b
    :goto_9
    const-string v2, "\u6253\u5f00"

    .line 432
    .line 433
    const/4 v3, 0x6

    .line 434
    invoke-static {v2, v5, v1, v3, v9}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 435
    .line 436
    .line 437
    invoke-static {v8, v1}, Lg5/a;->d(ILf1/s;)V

    .line 438
    .line 439
    .line 440
    :goto_a
    return-object v7

    .line 441
    :pswitch_3
    move-object/from16 v15, p1

    .line 442
    .line 443
    check-cast v15, Lf1/s;

    .line 444
    .line 445
    move-object/from16 v1, p2

    .line 446
    .line 447
    check-cast v1, Ljava/lang/Number;

    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    and-int/2addr v1, v10

    .line 454
    if-ne v1, v9, :cond_d

    .line 455
    .line 456
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_c

    .line 461
    .line 462
    goto :goto_b

    .line 463
    :cond_c
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 464
    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_d
    :goto_b
    const-string v1, "\u65e0\u969c\u788d\u670d\u52a1"

    .line 468
    .line 469
    const-string v2, "\u5f00\u542f\u53ef\u5728\u8fde\u63a5USB\u540e\u81ea\u52a8\u70b9\u51fb\u786e\u5b9a"

    .line 470
    .line 471
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    sget-object v10, Lu7/h;->a:Lu7/h;

    .line 480
    .line 481
    invoke-virtual {v10, v1, v8, v15, v4}, Lu7/h;->a(Ljava/util/List;ZLf1/s;I)V

    .line 482
    .line 483
    .line 484
    const-string v1, "\u4fee\u6539\u5b89\u5168\u8bbe\u7f6e"

    .line 485
    .line 486
    const-string v2, "\u65e0\u969c\u788d\u4fdd\u6d3b\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650"

    .line 487
    .line 488
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 493
    .line 494
    .line 495
    move-result-object v11

    .line 496
    const/16 v16, 0x6db6

    .line 497
    .line 498
    const/16 v17, 0x0

    .line 499
    .line 500
    const-string v12, "android.permission.WRITE_SECURE_SETTINGS"

    .line 501
    .line 502
    const-string v13, "\u4fee\u6539\u5b89\u5168\u8bbe\u7f6e\u6743\u9650\u9700\u8981\u6267\u884c\u4e0b\u65b9Adb\u547d\u4ee4, \u6267\u884c\u5b8c\u6bd5\u540e\u9000\u51fa\u5e94\u7528\u91cd\u65b0\u6253\u5f00\u5373\u53ef, \u652f\u6301\u5b89\u53536.0+"

    .line 503
    .line 504
    const/4 v14, 0x0

    .line 505
    invoke-virtual/range {v10 .. v17}, Lu7/h;->e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLf1/s;II)V

    .line 506
    .line 507
    .line 508
    :goto_c
    return-object v7

    .line 509
    :pswitch_4
    move-object/from16 v22, p1

    .line 510
    .line 511
    check-cast v22, Lf1/s;

    .line 512
    .line 513
    move-object/from16 v1, p2

    .line 514
    .line 515
    check-cast v1, Ljava/lang/Number;

    .line 516
    .line 517
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    and-int/2addr v1, v10

    .line 522
    if-ne v1, v9, :cond_f

    .line 523
    .line 524
    invoke-virtual/range {v22 .. v22}, Lf1/s;->z()Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-nez v1, :cond_e

    .line 529
    .line 530
    goto :goto_d

    .line 531
    :cond_e
    invoke-virtual/range {v22 .. v22}, Lf1/s;->Q()V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_e

    .line 535
    .line 536
    :cond_f
    :goto_d
    const-string v1, "\u83b7\u53d6\u7cfb\u7edf\u65e5\u5fd7"

    .line 537
    .line 538
    const-string v4, "\u76d1\u542c\u7cfb\u7edf\u65e5\u5fd7\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650"

    .line 539
    .line 540
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 545
    .line 546
    .line 547
    move-result-object v19

    .line 548
    const/16 v24, 0x61b6

    .line 549
    .line 550
    const/16 v25, 0x8

    .line 551
    .line 552
    sget-object v18, Lu7/h;->a:Lu7/h;

    .line 553
    .line 554
    const-string v20, "android.permission.READ_LOGS"

    .line 555
    .line 556
    const-string v21, "\u83b7\u53d6\u7cfb\u7edf\u65e5\u5fd7\u6743\u9650\u9700\u8981\u6267\u884c\u4e0b\u65b9Adb\u547d\u4ee4, \u6267\u884c\u5b8c\u6bd5\u540e\u9000\u51fa\u5e94\u7528\u91cd\u65b0\u6253\u5f00\u5373\u53ef"

    .line 557
    .line 558
    move-object/from16 v23, v22

    .line 559
    .line 560
    const/16 v22, 0x0

    .line 561
    .line 562
    invoke-virtual/range {v18 .. v25}, Lu7/h;->e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLf1/s;II)V

    .line 563
    .line 564
    .line 565
    move-object/from16 v1, v23

    .line 566
    .line 567
    const-string v4, "\u5e94\u7528\u8be6\u60c5"

    .line 568
    .line 569
    const-string v5, "\u6253\u5f00\u5e94\u7528\u8be6\u60c5\u9875"

    .line 570
    .line 571
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 576
    .line 577
    .line 578
    move-result-object v19

    .line 579
    invoke-virtual {v1, v3}, Lf1/s;->W(I)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    if-ne v4, v2, :cond_10

    .line 587
    .line 588
    new-instance v4, Lm7/e;

    .line 589
    .line 590
    const/16 v5, 0x1a

    .line 591
    .line 592
    invoke-direct {v4, v5}, Lm7/e;-><init>(I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    :cond_10
    move-object/from16 v21, v4

    .line 599
    .line 600
    check-cast v21, Lf9/a;

    .line 601
    .line 602
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 603
    .line 604
    .line 605
    const/16 v23, 0xd86

    .line 606
    .line 607
    const/16 v24, 0x2

    .line 608
    .line 609
    const/16 v20, 0x0

    .line 610
    .line 611
    move-object/from16 v22, v1

    .line 612
    .line 613
    invoke-virtual/range {v18 .. v24}, Lu7/h;->b(Ljava/util/List;ZLf9/a;Lf1/s;II)V

    .line 614
    .line 615
    .line 616
    const-string v4, "\u7cfb\u7edf\u8bbe\u7f6e"

    .line 617
    .line 618
    const-string v5, "\u6253\u5f00\u7cfb\u7edf\u8bbe\u7f6e\u9875"

    .line 619
    .line 620
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 625
    .line 626
    .line 627
    move-result-object v19

    .line 628
    invoke-virtual {v1, v3}, Lf1/s;->W(I)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    if-ne v3, v2, :cond_11

    .line 636
    .line 637
    new-instance v3, Lm7/e;

    .line 638
    .line 639
    const/16 v2, 0x1b

    .line 640
    .line 641
    invoke-direct {v3, v2}, Lm7/e;-><init>(I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 645
    .line 646
    .line 647
    :cond_11
    move-object/from16 v21, v3

    .line 648
    .line 649
    check-cast v21, Lf9/a;

    .line 650
    .line 651
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 652
    .line 653
    .line 654
    const/16 v23, 0xdb6

    .line 655
    .line 656
    const/16 v24, 0x0

    .line 657
    .line 658
    const/16 v20, 0x0

    .line 659
    .line 660
    move-object/from16 v22, v1

    .line 661
    .line 662
    invoke-virtual/range {v18 .. v24}, Lu7/h;->b(Ljava/util/List;ZLf9/a;Lf1/s;II)V

    .line 663
    .line 664
    .line 665
    :goto_e
    return-object v7

    .line 666
    nop

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
