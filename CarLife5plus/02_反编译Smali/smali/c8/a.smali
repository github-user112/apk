.class public final Lc8/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final b:Lc8/a;

.field public static final c:Lc8/a;

.field public static final d:Lc8/a;

.field public static final e:Lc8/a;

.field public static final f:Lc8/a;

.field public static final g:Lc8/a;

.field public static final h:Lc8/a;

.field public static final i:Lc8/a;

.field public static final j:Lc8/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc8/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc8/a;->b:Lc8/a;

    .line 8
    .line 9
    new-instance v0, Lc8/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lc8/a;->c:Lc8/a;

    .line 16
    .line 17
    new-instance v0, Lc8/a;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lc8/a;->d:Lc8/a;

    .line 24
    .line 25
    new-instance v0, Lc8/a;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lc8/a;->e:Lc8/a;

    .line 32
    .line 33
    new-instance v0, Lc8/a;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lc8/a;->f:Lc8/a;

    .line 40
    .line 41
    new-instance v0, Lc8/a;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lc8/a;->g:Lc8/a;

    .line 48
    .line 49
    new-instance v0, Lc8/a;

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lc8/a;->h:Lc8/a;

    .line 56
    .line 57
    new-instance v0, Lc8/a;

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lc8/a;->i:Lc8/a;

    .line 64
    .line 65
    new-instance v0, Lc8/a;

    .line 66
    .line 67
    const/16 v1, 0x8

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lc8/a;->j:Lc8/a;

    .line 73
    .line 74
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc8/a;->a:I

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
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/a;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v19, p1

    .line 9
    .line 10
    check-cast v19, Lf1/s;

    .line 11
    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    and-int/lit8 v1, v1, 0x3

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual/range {v19 .. v19}, Lf1/s;->z()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual/range {v19 .. v19}, Lf1/s;->Q()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/16 v21, 0x0

    .line 37
    .line 38
    const v22, 0x1fffe

    .line 39
    .line 40
    .line 41
    const-string v2, "\u6309\u952e\u6620\u5c04"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const-wide/16 v9, 0x0

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    const-wide/16 v12, 0x0

    .line 53
    .line 54
    const/4 v14, 0x0

    .line 55
    const/4 v15, 0x0

    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const/16 v18, 0x0

    .line 61
    .line 62
    const/16 v20, 0x6

    .line 63
    .line 64
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 65
    .line 66
    .line 67
    :goto_1
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 68
    .line 69
    return-object v1

    .line 70
    :pswitch_0
    move-object/from16 v19, p1

    .line 71
    .line 72
    check-cast v19, Lf1/s;

    .line 73
    .line 74
    move-object/from16 v1, p2

    .line 75
    .line 76
    check-cast v1, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    and-int/lit8 v1, v1, 0x3

    .line 83
    .line 84
    const/4 v2, 0x2

    .line 85
    if-ne v1, v2, :cond_3

    .line 86
    .line 87
    invoke-virtual/range {v19 .. v19}, Lf1/s;->z()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lf1/s;->Q()V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    :goto_2
    const/16 v21, 0x0

    .line 99
    .line 100
    const v22, 0x1fffe

    .line 101
    .line 102
    .line 103
    const-string v2, "\u65e5\u5fd7\u76d1\u542c"

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    const-wide/16 v4, 0x0

    .line 107
    .line 108
    const-wide/16 v6, 0x0

    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const-wide/16 v9, 0x0

    .line 112
    .line 113
    const/4 v11, 0x0

    .line 114
    const-wide/16 v12, 0x0

    .line 115
    .line 116
    const/4 v14, 0x0

    .line 117
    const/4 v15, 0x0

    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    const/16 v17, 0x0

    .line 121
    .line 122
    const/16 v18, 0x0

    .line 123
    .line 124
    const/16 v20, 0x6

    .line 125
    .line 126
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 127
    .line 128
    .line 129
    :goto_3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 130
    .line 131
    return-object v1

    .line 132
    :pswitch_1
    move-object/from16 v19, p1

    .line 133
    .line 134
    check-cast v19, Lf1/s;

    .line 135
    .line 136
    move-object/from16 v1, p2

    .line 137
    .line 138
    check-cast v1, Ljava/lang/Number;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    and-int/lit8 v1, v1, 0x3

    .line 145
    .line 146
    const/4 v2, 0x2

    .line 147
    if-ne v1, v2, :cond_5

    .line 148
    .line 149
    invoke-virtual/range {v19 .. v19}, Lf1/s;->z()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_4

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lf1/s;->Q()V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_5
    :goto_4
    const/16 v21, 0x0

    .line 161
    .line 162
    const v22, 0x1fffe

    .line 163
    .line 164
    .line 165
    const-string v2, "\u5173\u952e\u5b57"

    .line 166
    .line 167
    const/4 v3, 0x0

    .line 168
    const-wide/16 v4, 0x0

    .line 169
    .line 170
    const-wide/16 v6, 0x0

    .line 171
    .line 172
    const/4 v8, 0x0

    .line 173
    const-wide/16 v9, 0x0

    .line 174
    .line 175
    const/4 v11, 0x0

    .line 176
    const-wide/16 v12, 0x0

    .line 177
    .line 178
    const/4 v14, 0x0

    .line 179
    const/4 v15, 0x0

    .line 180
    const/16 v16, 0x0

    .line 181
    .line 182
    const/16 v17, 0x0

    .line 183
    .line 184
    const/16 v18, 0x0

    .line 185
    .line 186
    const/16 v20, 0x6

    .line 187
    .line 188
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 189
    .line 190
    .line 191
    :goto_5
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 192
    .line 193
    return-object v1

    .line 194
    :pswitch_2
    move-object/from16 v19, p1

    .line 195
    .line 196
    check-cast v19, Lf1/s;

    .line 197
    .line 198
    move-object/from16 v1, p2

    .line 199
    .line 200
    check-cast v1, Ljava/lang/Number;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    and-int/lit8 v1, v1, 0x3

    .line 207
    .line 208
    const/4 v2, 0x2

    .line 209
    if-ne v1, v2, :cond_7

    .line 210
    .line 211
    invoke-virtual/range {v19 .. v19}, Lf1/s;->z()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_6

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lf1/s;->Q()V

    .line 219
    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_7
    :goto_6
    const/16 v21, 0x0

    .line 223
    .line 224
    const v22, 0x1fffe

    .line 225
    .line 226
    .line 227
    const-string v2, "\u6309\u952e\u6620\u5c04"

    .line 228
    .line 229
    const/4 v3, 0x0

    .line 230
    const-wide/16 v4, 0x0

    .line 231
    .line 232
    const-wide/16 v6, 0x0

    .line 233
    .line 234
    const/4 v8, 0x0

    .line 235
    const-wide/16 v9, 0x0

    .line 236
    .line 237
    const/4 v11, 0x0

    .line 238
    const-wide/16 v12, 0x0

    .line 239
    .line 240
    const/4 v14, 0x0

    .line 241
    const/4 v15, 0x0

    .line 242
    const/16 v16, 0x0

    .line 243
    .line 244
    const/16 v17, 0x0

    .line 245
    .line 246
    const/16 v18, 0x0

    .line 247
    .line 248
    const/16 v20, 0x6

    .line 249
    .line 250
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 251
    .line 252
    .line 253
    :goto_7
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 254
    .line 255
    return-object v1

    .line 256
    :pswitch_3
    move-object/from16 v6, p1

    .line 257
    .line 258
    check-cast v6, Lf1/s;

    .line 259
    .line 260
    move-object/from16 v1, p2

    .line 261
    .line 262
    check-cast v1, Ljava/lang/Number;

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    and-int/lit8 v1, v1, 0x3

    .line 269
    .line 270
    const/4 v2, 0x2

    .line 271
    if-ne v1, v2, :cond_9

    .line 272
    .line 273
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_8

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_8
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 281
    .line 282
    .line 283
    goto :goto_a

    .line 284
    :cond_9
    :goto_8
    const-string v1, "\u663e\u793a\u60ac\u6d6e\u7a97"

    .line 285
    .line 286
    const-string v2, "\u5b89\u535310+\u5f00\u673a\u81ea\u542f\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650"

    .line 287
    .line 288
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-static {}, Lw6/a;->h()Ly6/a;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    const/16 v7, 0xc06

    .line 305
    .line 306
    const/4 v8, 0x4

    .line 307
    sget-object v2, Lu7/h;->a:Lu7/h;

    .line 308
    .line 309
    const/4 v5, 0x0

    .line 310
    invoke-virtual/range {v2 .. v8}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 311
    .line 312
    .line 313
    const-string v1, "\u5ffd\u7565\u7535\u6c60\u4f18\u5316"

    .line 314
    .line 315
    const-string v3, "\u5b89\u535311+\u5f00\u673a\u81ea\u542f\u9700\u8981\u5f00\u542f\u6b64\u6743\u9650"

    .line 316
    .line 317
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    sget-object v1, Lw6/a;->a:Ls/s;

    .line 326
    .line 327
    const-string v4, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 328
    .line 329
    invoke-virtual {v1, v4}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    check-cast v5, Ly6/a;

    .line 334
    .line 335
    if-eqz v5, :cond_a

    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_a
    new-instance v5, La7/f;

    .line 339
    .line 340
    const/4 v7, 0x1

    .line 341
    invoke-direct {v5, v7}, Ly6/a;-><init>(I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v4, v5}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    :goto_9
    invoke-static {v5}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    const/16 v7, 0xd86

    .line 352
    .line 353
    const/4 v8, 0x0

    .line 354
    const/4 v5, 0x0

    .line 355
    invoke-virtual/range {v2 .. v8}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 356
    .line 357
    .line 358
    :goto_a
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 359
    .line 360
    return-object v1

    .line 361
    :pswitch_4
    move-object/from16 v1, p1

    .line 362
    .line 363
    check-cast v1, Lf1/s;

    .line 364
    .line 365
    move-object/from16 v2, p2

    .line 366
    .line 367
    check-cast v2, Ljava/lang/Number;

    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    and-int/lit8 v2, v2, 0x3

    .line 374
    .line 375
    const/4 v3, 0x2

    .line 376
    if-ne v2, v3, :cond_c

    .line 377
    .line 378
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-nez v2, :cond_b

    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_b
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 386
    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_c
    :goto_b
    sget-object v2, Lc8/c;->a:Ln1/c;

    .line 390
    .line 391
    const/16 v3, 0x30

    .line 392
    .line 393
    const/4 v4, 0x1

    .line 394
    const/4 v5, 0x0

    .line 395
    invoke-static {v5, v2, v1, v3, v4}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 396
    .line 397
    .line 398
    :goto_c
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 399
    .line 400
    return-object v1

    .line 401
    :pswitch_5
    move-object/from16 v1, p1

    .line 402
    .line 403
    check-cast v1, Lf1/s;

    .line 404
    .line 405
    move-object/from16 v2, p2

    .line 406
    .line 407
    check-cast v2, Ljava/lang/Number;

    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    and-int/lit8 v2, v2, 0x3

    .line 414
    .line 415
    const/4 v3, 0x2

    .line 416
    if-ne v2, v3, :cond_e

    .line 417
    .line 418
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-nez v2, :cond_d

    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_d
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 426
    .line 427
    .line 428
    goto :goto_e

    .line 429
    :cond_e
    :goto_d
    const/4 v2, 0x0

    .line 430
    const/4 v4, 0x6

    .line 431
    const-string v5, "\u67e5\u770b"

    .line 432
    .line 433
    invoke-static {v5, v2, v1, v4, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 434
    .line 435
    .line 436
    const/4 v2, 0x0

    .line 437
    invoke-static {v2, v1}, Lg5/a;->d(ILf1/s;)V

    .line 438
    .line 439
    .line 440
    :goto_e
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 441
    .line 442
    return-object v1

    .line 443
    :pswitch_6
    move-object/from16 v1, p1

    .line 444
    .line 445
    check-cast v1, Lf1/s;

    .line 446
    .line 447
    move-object/from16 v2, p2

    .line 448
    .line 449
    check-cast v2, Ljava/lang/Number;

    .line 450
    .line 451
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    and-int/lit8 v2, v2, 0x3

    .line 456
    .line 457
    const/4 v3, 0x2

    .line 458
    if-ne v2, v3, :cond_10

    .line 459
    .line 460
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-nez v2, :cond_f

    .line 465
    .line 466
    goto :goto_f

    .line 467
    :cond_f
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 468
    .line 469
    .line 470
    :cond_10
    :goto_f
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 471
    .line 472
    return-object v1

    .line 473
    :pswitch_7
    move-object/from16 v1, p1

    .line 474
    .line 475
    check-cast v1, Lf1/s;

    .line 476
    .line 477
    move-object/from16 v2, p2

    .line 478
    .line 479
    check-cast v2, Ljava/lang/Number;

    .line 480
    .line 481
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    and-int/lit8 v2, v2, 0x3

    .line 486
    .line 487
    const/4 v3, 0x2

    .line 488
    if-ne v2, v3, :cond_12

    .line 489
    .line 490
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-nez v2, :cond_11

    .line 495
    .line 496
    goto :goto_10

    .line 497
    :cond_11
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 498
    .line 499
    .line 500
    goto :goto_11

    .line 501
    :cond_12
    :goto_10
    const/4 v2, 0x0

    .line 502
    const/4 v4, 0x6

    .line 503
    const-string v5, "\u76d1\u542c\u4e2d..."

    .line 504
    .line 505
    invoke-static {v5, v2, v1, v4, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 506
    .line 507
    .line 508
    :goto_11
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 509
    .line 510
    return-object v1

    .line 511
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
