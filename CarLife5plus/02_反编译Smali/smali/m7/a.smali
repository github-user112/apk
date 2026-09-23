.class public final Lm7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final b:Lm7/a;

.field public static final c:Lm7/a;

.field public static final d:Lm7/a;

.field public static final e:Lm7/a;

.field public static final f:Lm7/a;

.field public static final g:Lm7/a;

.field public static final h:Lm7/a;

.field public static final i:Lm7/a;

.field public static final j:Lm7/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lm7/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lm7/a;->b:Lm7/a;

    .line 8
    .line 9
    new-instance v0, Lm7/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lm7/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lm7/a;->c:Lm7/a;

    .line 16
    .line 17
    new-instance v0, Lm7/a;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lm7/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lm7/a;->d:Lm7/a;

    .line 24
    .line 25
    new-instance v0, Lm7/a;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lm7/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lm7/a;->e:Lm7/a;

    .line 32
    .line 33
    new-instance v0, Lm7/a;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Lm7/a;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lm7/a;->f:Lm7/a;

    .line 40
    .line 41
    new-instance v0, Lm7/a;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, Lm7/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lm7/a;->g:Lm7/a;

    .line 48
    .line 49
    new-instance v0, Lm7/a;

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    invoke-direct {v0, v1}, Lm7/a;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lm7/a;->h:Lm7/a;

    .line 56
    .line 57
    new-instance v0, Lm7/a;

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-direct {v0, v1}, Lm7/a;-><init>(I)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lm7/a;->i:Lm7/a;

    .line 64
    .line 65
    new-instance v0, Lm7/a;

    .line 66
    .line 67
    const/16 v1, 0x8

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lm7/a;-><init>(I)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lm7/a;->j:Lm7/a;

    .line 73
    .line 74
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lm7/a;->a:I

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
    .locals 48

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lm7/a;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "\u8bbe\u7f6e"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x6

    .line 10
    const/4 v6, 0x0

    .line 11
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    const/4 v8, 0x2

    .line 14
    const/4 v9, 0x3

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p1

    .line 19
    .line 20
    check-cast v1, Lf1/s;

    .line 21
    .line 22
    move-object/from16 v2, p2

    .line 23
    .line 24
    check-cast v2, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    and-int/2addr v2, v9

    .line 31
    if-ne v2, v8, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-static {v3, v6, v1, v5, v8}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 45
    .line 46
    .line 47
    invoke-static {v4, v1}, Lg5/a;->d(ILf1/s;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-object v7

    .line 51
    :pswitch_0
    move-object/from16 v1, p1

    .line 52
    .line 53
    check-cast v1, Lf1/s;

    .line 54
    .line 55
    move-object/from16 v2, p2

    .line 56
    .line 57
    check-cast v2, Ljava/lang/Number;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    and-int/2addr v2, v9

    .line 64
    if-ne v2, v8, :cond_3

    .line 65
    .line 66
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_2
    return-object v7

    .line 77
    :pswitch_1
    move-object/from16 v1, p1

    .line 78
    .line 79
    check-cast v1, Lf1/s;

    .line 80
    .line 81
    move-object/from16 v2, p2

    .line 82
    .line 83
    check-cast v2, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    and-int/2addr v2, v9

    .line 90
    if-ne v2, v8, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_4

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    :goto_3
    const-string v2, "\u8bf7\u9009\u62e9\u8981\u5ffd\u7565\u7684USB\u8bbe\u5907"

    .line 104
    .line 105
    invoke-static {v2, v6, v1, v5, v8}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 106
    .line 107
    .line 108
    :goto_4
    return-object v7

    .line 109
    :pswitch_2
    move-object/from16 v1, p1

    .line 110
    .line 111
    check-cast v1, Lf1/s;

    .line 112
    .line 113
    move-object/from16 v2, p2

    .line 114
    .line 115
    check-cast v2, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    and-int/2addr v2, v9

    .line 122
    if-ne v2, v8, :cond_7

    .line 123
    .line 124
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_6

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_6
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_7
    :goto_5
    invoke-static {v3, v6, v1, v5, v8}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 136
    .line 137
    .line 138
    invoke-static {v4, v1}, Lg5/a;->d(ILf1/s;)V

    .line 139
    .line 140
    .line 141
    :goto_6
    return-object v7

    .line 142
    :pswitch_3
    move-object/from16 v15, p1

    .line 143
    .line 144
    check-cast v15, Lf1/s;

    .line 145
    .line 146
    move-object/from16 v1, p2

    .line 147
    .line 148
    check-cast v1, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    and-int/2addr v1, v9

    .line 155
    if-ne v1, v8, :cond_9

    .line 156
    .line 157
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_8

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_8
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :cond_9
    :goto_7
    sget-object v1, Lm7/n;->b:Lm7/n;

    .line 170
    .line 171
    const-string v3, "USB\u8bbe\u5907\u5ffd\u7565"

    .line 172
    .line 173
    const-string v6, "USB\u8bbe\u5907\u5ffd\u7565\u8bbe\u7f6e"

    .line 174
    .line 175
    filled-new-array {v3, v6}, [Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const/16 v6, 0x36

    .line 184
    .line 185
    invoke-virtual {v1, v3, v15, v6}, Lm7/n;->h(Ljava/util/List;Lf1/s;I)V

    .line 186
    .line 187
    .line 188
    const-string v1, "USB\u4f20\u8f93\u5305\u5927\u5c0f"

    .line 189
    .line 190
    const-string v3, "\u8bbe\u7f6e\u6bcf\u4e2a\u6570\u636e\u5305\u7684\u5927\u5c0f"

    .line 191
    .line 192
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v16, Lj8/k0;

    .line 201
    .line 202
    new-instance v3, Lj8/m0;

    .line 203
    .line 204
    const/16 v6, 0x1000

    .line 205
    .line 206
    invoke-direct {v3, v6}, Lj8/m0;-><init>(I)V

    .line 207
    .line 208
    .line 209
    const/16 v21, 0x0

    .line 210
    .line 211
    const/16 v22, 0x1c

    .line 212
    .line 213
    const-string v17, "\u7a33\u5b9a\u4f18\u5148-4KB"

    .line 214
    .line 215
    const/16 v19, 0x0

    .line 216
    .line 217
    const/16 v20, 0x0

    .line 218
    .line 219
    move-object/from16 v18, v3

    .line 220
    .line 221
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 222
    .line 223
    .line 224
    new-instance v17, Lj8/k0;

    .line 225
    .line 226
    new-instance v3, Lj8/m0;

    .line 227
    .line 228
    const/16 v6, 0x2000

    .line 229
    .line 230
    invoke-direct {v3, v6}, Lj8/m0;-><init>(I)V

    .line 231
    .line 232
    .line 233
    const/16 v22, 0x0

    .line 234
    .line 235
    const/16 v23, 0x1c

    .line 236
    .line 237
    const-string v18, "\u517c\u5bb9\u6a21\u5f0f-8KB"

    .line 238
    .line 239
    move-object/from16 v19, v3

    .line 240
    .line 241
    invoke-direct/range {v17 .. v23}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 242
    .line 243
    .line 244
    new-instance v18, Lj8/k0;

    .line 245
    .line 246
    new-instance v3, Lj8/m0;

    .line 247
    .line 248
    const/16 v6, 0x3000

    .line 249
    .line 250
    invoke-direct {v3, v6}, Lj8/m0;-><init>(I)V

    .line 251
    .line 252
    .line 253
    const/16 v23, 0x0

    .line 254
    .line 255
    const/16 v24, 0x1c

    .line 256
    .line 257
    const-string v19, "\u6807\u51c6\u4f20\u8f93-12KB"

    .line 258
    .line 259
    move-object/from16 v20, v3

    .line 260
    .line 261
    invoke-direct/range {v18 .. v24}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 262
    .line 263
    .line 264
    new-instance v19, Lj8/k0;

    .line 265
    .line 266
    new-instance v3, Lj8/m0;

    .line 267
    .line 268
    const/16 v6, 0x3800

    .line 269
    .line 270
    invoke-direct {v3, v6}, Lj8/m0;-><init>(I)V

    .line 271
    .line 272
    .line 273
    const/16 v24, 0x0

    .line 274
    .line 275
    const/16 v25, 0x1c

    .line 276
    .line 277
    const-string v20, "\u9ad8\u6027\u80fd-14KB"

    .line 278
    .line 279
    move-object/from16 v21, v3

    .line 280
    .line 281
    invoke-direct/range {v19 .. v25}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 282
    .line 283
    .line 284
    new-instance v20, Lj8/k0;

    .line 285
    .line 286
    new-instance v3, Lj8/m0;

    .line 287
    .line 288
    const/16 v6, 0x4000

    .line 289
    .line 290
    invoke-direct {v3, v6}, Lj8/m0;-><init>(I)V

    .line 291
    .line 292
    .line 293
    const/16 v25, 0x0

    .line 294
    .line 295
    const/16 v26, 0x1c

    .line 296
    .line 297
    const-string v21, "\u9ad8\u901f\u4f18\u9009-16KB"

    .line 298
    .line 299
    move-object/from16 v22, v3

    .line 300
    .line 301
    invoke-direct/range {v20 .. v26}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 302
    .line 303
    .line 304
    new-instance v21, Lj8/k0;

    .line 305
    .line 306
    new-instance v3, Lj8/m0;

    .line 307
    .line 308
    const/16 v10, 0x5000

    .line 309
    .line 310
    invoke-direct {v3, v10}, Lj8/m0;-><init>(I)V

    .line 311
    .line 312
    .line 313
    const/16 v26, 0x0

    .line 314
    .line 315
    const/16 v27, 0x1c

    .line 316
    .line 317
    const-string v22, "\u6781\u901f\u6a21\u5f0f-20KB"

    .line 318
    .line 319
    move-object/from16 v23, v3

    .line 320
    .line 321
    invoke-direct/range {v21 .. v27}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 322
    .line 323
    .line 324
    new-array v3, v5, [Lj8/k0;

    .line 325
    .line 326
    aput-object v16, v3, v4

    .line 327
    .line 328
    aput-object v17, v3, v2

    .line 329
    .line 330
    aput-object v18, v3, v8

    .line 331
    .line 332
    aput-object v19, v3, v9

    .line 333
    .line 334
    const/4 v2, 0x4

    .line 335
    aput-object v20, v3, v2

    .line 336
    .line 337
    const/4 v2, 0x5

    .line 338
    aput-object v21, v3, v2

    .line 339
    .line 340
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    new-instance v2, Lj8/m0;

    .line 345
    .line 346
    invoke-direct {v2, v6}, Lj8/m0;-><init>(I)V

    .line 347
    .line 348
    .line 349
    new-instance v11, Lr8/j;

    .line 350
    .line 351
    const-string v3, "USB_MTU"

    .line 352
    .line 353
    invoke-direct {v11, v3, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    const/16 v16, 0x6046

    .line 357
    .line 358
    const/16 v17, 0x28

    .line 359
    .line 360
    const/4 v12, 0x0

    .line 361
    const/4 v13, 0x0

    .line 362
    const/4 v14, 0x0

    .line 363
    move-object v9, v1

    .line 364
    invoke-static/range {v9 .. v17}, Li9/a;->e(Ljava/util/List;Ljava/util/List;Lr8/j;ZZLf9/k;Lf1/s;II)V

    .line 365
    .line 366
    .line 367
    :goto_8
    return-object v7

    .line 368
    :pswitch_4
    move-object/from16 v1, p1

    .line 369
    .line 370
    check-cast v1, Lf1/s;

    .line 371
    .line 372
    move-object/from16 v2, p2

    .line 373
    .line 374
    check-cast v2, Ljava/lang/Number;

    .line 375
    .line 376
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    and-int/2addr v2, v9

    .line 381
    if-ne v2, v8, :cond_b

    .line 382
    .line 383
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-nez v2, :cond_a

    .line 388
    .line 389
    goto :goto_9

    .line 390
    :cond_a
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 391
    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_b
    :goto_9
    const v2, 0x6e3c21fe

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 405
    .line 406
    if-ne v2, v3, :cond_c

    .line 407
    .line 408
    new-instance v2, Lb3/f0;

    .line 409
    .line 410
    const/16 v3, 0x1d

    .line 411
    .line 412
    invoke-direct {v2, v3}, Lb3/f0;-><init>(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    :cond_c
    move-object/from16 v23, v2

    .line 419
    .line 420
    check-cast v23, Lf9/a;

    .line 421
    .line 422
    invoke-virtual {v1, v4}, Lf1/s;->p(Z)V

    .line 423
    .line 424
    .line 425
    const/16 v25, 0xc06

    .line 426
    .line 427
    const/16 v26, 0x6

    .line 428
    .line 429
    const-string v18, "\u9000\u51fa"

    .line 430
    .line 431
    const-wide/16 v19, 0x0

    .line 432
    .line 433
    const-wide/16 v21, 0x0

    .line 434
    .line 435
    move-object/from16 v24, v1

    .line 436
    .line 437
    invoke-static/range {v18 .. v26}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 438
    .line 439
    .line 440
    :goto_a
    return-object v7

    .line 441
    :pswitch_5
    move-object/from16 v1, p1

    .line 442
    .line 443
    check-cast v1, Lf1/s;

    .line 444
    .line 445
    move-object/from16 v2, p2

    .line 446
    .line 447
    check-cast v2, Ljava/lang/Number;

    .line 448
    .line 449
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    and-int/2addr v2, v9

    .line 454
    if-ne v2, v8, :cond_e

    .line 455
    .line 456
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-nez v2, :cond_d

    .line 461
    .line 462
    goto :goto_b

    .line 463
    :cond_d
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 464
    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_e
    :goto_b
    const/16 v2, 0x16

    .line 468
    .line 469
    invoke-static {v2, v1}, Lg5/a;->B(ILf1/s;)F

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    const-wide v3, 0x100000000L

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    invoke-static {v2, v3, v4}, Lc7/a;->M(FJ)J

    .line 479
    .line 480
    .line 481
    move-result-wide v31

    .line 482
    const/16 v2, 0x50

    .line 483
    .line 484
    invoke-static {v2, v1}, Lg5/a;->B(ILf1/s;)F

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    invoke-static {v2, v3, v4}, Lc7/a;->M(FJ)J

    .line 489
    .line 490
    .line 491
    move-result-wide v37

    .line 492
    sget-object v28, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 493
    .line 494
    new-instance v2, Lm3/k;

    .line 495
    .line 496
    invoke-direct {v2, v9}, Lm3/k;-><init>(I)V

    .line 497
    .line 498
    .line 499
    const/16 v46, 0x0

    .line 500
    .line 501
    const v47, 0x1f9f4

    .line 502
    .line 503
    .line 504
    const-string v27, "\u786e\u5b9a\u9000\u51fa\u5e94\u7528\u5417\uff1f"

    .line 505
    .line 506
    const-wide/16 v29, 0x0

    .line 507
    .line 508
    const/16 v33, 0x0

    .line 509
    .line 510
    const-wide/16 v34, 0x0

    .line 511
    .line 512
    const/16 v39, 0x0

    .line 513
    .line 514
    const/16 v40, 0x0

    .line 515
    .line 516
    const/16 v41, 0x0

    .line 517
    .line 518
    const/16 v42, 0x0

    .line 519
    .line 520
    const/16 v43, 0x0

    .line 521
    .line 522
    const/16 v45, 0x36

    .line 523
    .line 524
    move-object/from16 v44, v1

    .line 525
    .line 526
    move-object/from16 v36, v2

    .line 527
    .line 528
    invoke-static/range {v27 .. v47}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 529
    .line 530
    .line 531
    :goto_c
    return-object v7

    .line 532
    :pswitch_6
    move-object/from16 v1, p1

    .line 533
    .line 534
    check-cast v1, Lf1/s;

    .line 535
    .line 536
    move-object/from16 v3, p2

    .line 537
    .line 538
    check-cast v3, Ljava/lang/Number;

    .line 539
    .line 540
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    and-int/2addr v3, v9

    .line 545
    if-ne v3, v8, :cond_10

    .line 546
    .line 547
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    if-nez v3, :cond_f

    .line 552
    .line 553
    goto :goto_d

    .line 554
    :cond_f
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 555
    .line 556
    .line 557
    goto :goto_e

    .line 558
    :cond_10
    :goto_d
    sget-object v3, Lm7/c;->b:Ln1/c;

    .line 559
    .line 560
    const/16 v4, 0x30

    .line 561
    .line 562
    invoke-static {v6, v3, v1, v4, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 563
    .line 564
    .line 565
    :goto_e
    return-object v7

    .line 566
    :pswitch_7
    move-object/from16 v1, p1

    .line 567
    .line 568
    check-cast v1, Lf1/s;

    .line 569
    .line 570
    move-object/from16 v2, p2

    .line 571
    .line 572
    check-cast v2, Ljava/lang/Number;

    .line 573
    .line 574
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    and-int/2addr v2, v9

    .line 579
    if-ne v2, v8, :cond_12

    .line 580
    .line 581
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    if-nez v2, :cond_11

    .line 586
    .line 587
    goto :goto_f

    .line 588
    :cond_11
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 589
    .line 590
    .line 591
    goto :goto_10

    .line 592
    :cond_12
    :goto_f
    invoke-static {v3, v6, v1, v5, v8}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 593
    .line 594
    .line 595
    invoke-static {v4, v1}, Lg5/a;->d(ILf1/s;)V

    .line 596
    .line 597
    .line 598
    :goto_10
    return-object v7

    .line 599
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
