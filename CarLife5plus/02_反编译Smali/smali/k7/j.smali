.class public final Lk7/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lk7/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk7/j;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lk7/j;->a:Lk7/j;

    .line 7
    .line 8
    return-void
.end method

.method public static final b(Lf1/b1;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lr8/j;ZLf9/o;Lf1/s;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v11, p5

    .line 4
    .line 5
    iget-object v0, v1, Lr8/j;->a:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v2, "callback"

    .line 8
    .line 9
    move-object/from16 v9, p4

    .line 10
    .line 11
    invoke-static {v9, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, -0x6a7e0631

    .line 15
    .line 16
    .line 17
    invoke-virtual {v11, v2}, Lf1/s;->Y(I)Lf1/s;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/16 v2, 0x20

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v2, 0x10

    .line 30
    .line 31
    :goto_0
    or-int v2, p6, v2

    .line 32
    .line 33
    or-int/lit16 v2, v2, 0x180

    .line 34
    .line 35
    and-int/lit16 v2, v2, 0x493

    .line 36
    .line 37
    const/16 v3, 0x492

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 49
    .line 50
    .line 51
    move/from16 v4, p3

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_2
    :goto_1
    const v2, 0x6e3c21fe

    .line 56
    .line 57
    .line 58
    invoke-virtual {v11, v2}, Lf1/s;->W(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/4 v10, 0x0

    .line 66
    sget-object v12, Lf1/n;->a:Lf1/w0;

    .line 67
    .line 68
    if-ne v3, v12, :cond_3

    .line 69
    .line 70
    sget-object v3, Ll8/d;->a:Lr8/o;

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, "_VERSION"

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v3, v10}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v11, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    move-object v13, v3

    .line 105
    check-cast v13, Lf1/b1;

    .line 106
    .line 107
    invoke-static {v11, v10, v2}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-ne v3, v12, :cond_4

    .line 112
    .line 113
    sget-object v3, Ll8/d;->a:Lr8/o;

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, "_FOCUS"

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    const/4 v4, 0x1

    .line 133
    invoke-static {v3, v4}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v11, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    move-object v14, v3

    .line 149
    check-cast v14, Lf1/b1;

    .line 150
    .line 151
    invoke-static {v11, v10, v2}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-ne v3, v12, :cond_5

    .line 156
    .line 157
    sget-object v3, Ll8/d;->a:Lr8/o;

    .line 158
    .line 159
    check-cast v0, Ljava/lang/String;

    .line 160
    .line 161
    iget-object v3, v1, Lr8/j;->b:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v3, Ljava/lang/Number;

    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-static {v3, v0}, Ll8/d;->b(ILjava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    new-instance v3, Lf1/h1;

    .line 174
    .line 175
    invoke-direct {v3, v0}, Lf1/h1;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    move-object v0, v3

    .line 182
    check-cast v0, Lf1/h1;

    .line 183
    .line 184
    invoke-static {v11, v10, v2}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-ne v2, v12, :cond_6

    .line 189
    .line 190
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 191
    .line 192
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v11, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    move-object v15, v2

    .line 200
    check-cast v15, Lf1/b1;

    .line 201
    .line 202
    invoke-virtual {v11, v10}, Lf1/s;->p(Z)V

    .line 203
    .line 204
    .line 205
    sget-object v2, Lk7/k;->n:Ldc/l0;

    .line 206
    .line 207
    invoke-static {v2, v11}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 208
    .line 209
    .line 210
    new-instance v2, La8/j;

    .line 211
    .line 212
    const/16 v3, 0xc

    .line 213
    .line 214
    move-object/from16 v4, p1

    .line 215
    .line 216
    invoke-direct {v2, v3, v4}, La8/j;-><init>(ILjava/util/List;)V

    .line 217
    .line 218
    .line 219
    const v3, 0x7a97c86

    .line 220
    .line 221
    .line 222
    invoke-static {v3, v2, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    new-instance v3, Lk7/c;

    .line 227
    .line 228
    invoke-direct {v3, v13, v0, v10}, Lk7/c;-><init>(Lf1/b1;Lf1/h1;I)V

    .line 229
    .line 230
    .line 231
    const v5, -0x224a9c39

    .line 232
    .line 233
    .line 234
    invoke-static {v5, v3, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    const v5, 0x4c5de2

    .line 239
    .line 240
    .line 241
    invoke-virtual {v11, v5}, Lf1/s;->W(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    if-ne v6, v12, :cond_7

    .line 249
    .line 250
    new-instance v6, Lj8/h;

    .line 251
    .line 252
    const/4 v7, 0x7

    .line 253
    invoke-direct {v6, v15, v7}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :cond_7
    check-cast v6, Lf9/a;

    .line 260
    .line 261
    invoke-virtual {v11, v10}, Lf1/s;->p(Z)V

    .line 262
    .line 263
    .line 264
    const/16 v7, 0xdb6

    .line 265
    .line 266
    const/4 v8, 0x0

    .line 267
    const/4 v4, 0x1

    .line 268
    move-object v5, v6

    .line 269
    move-object v6, v11

    .line 270
    const v11, 0x4c5de2

    .line 271
    .line 272
    .line 273
    invoke-static/range {v2 .. v8}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 274
    .line 275
    .line 276
    move-object v7, v6

    .line 277
    const/16 v16, 0x1

    .line 278
    .line 279
    invoke-static {v13}, Lk7/j;->b(Lf1/b1;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    const v4, -0x6815fd56

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7, v4}, Lf1/s;->W(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    if-ne v4, v12, :cond_8

    .line 306
    .line 307
    new-instance v4, Lj8/n;

    .line 308
    .line 309
    const/4 v5, 0x0

    .line 310
    invoke-direct {v4, v15, v13, v0, v5}, Lj8/n;-><init>(Lf1/b1;Lf1/b1;Lf1/h1;Lw8/c;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :cond_8
    check-cast v4, Lf9/n;

    .line 317
    .line 318
    invoke-virtual {v7, v10}, Lf1/s;->p(Z)V

    .line 319
    .line 320
    .line 321
    invoke-static {v2, v3, v4, v7}, Lf1/b;->g(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;Lf1/s;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    check-cast v2, Ljava/lang/Boolean;

    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    invoke-virtual {v7, v11}, Lf1/s;->W(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-ne v2, v12, :cond_9

    .line 342
    .line 343
    new-instance v2, Lj8/h;

    .line 344
    .line 345
    const/16 v3, 0x8

    .line 346
    .line 347
    invoke-direct {v2, v15, v3}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :cond_9
    move-object v11, v2

    .line 354
    check-cast v11, Lf9/a;

    .line 355
    .line 356
    invoke-virtual {v7, v10}, Lf1/s;->p(Z)V

    .line 357
    .line 358
    .line 359
    move-object v6, v0

    .line 360
    new-instance v0, Lk7/f;

    .line 361
    .line 362
    move-object/from16 v3, p1

    .line 363
    .line 364
    move-object v2, v9

    .line 365
    move-object v5, v13

    .line 366
    move-object v4, v14

    .line 367
    invoke-direct/range {v0 .. v6}, Lk7/f;-><init>(Lr8/j;Lf9/o;Ljava/util/List;Lf1/b1;Lf1/b1;Lf1/h1;)V

    .line 368
    .line 369
    .line 370
    const v1, 0x6d4d73c6

    .line 371
    .line 372
    .line 373
    invoke-static {v1, v0, v7}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    const/16 v12, 0x30

    .line 378
    .line 379
    const/16 v13, 0x3fc

    .line 380
    .line 381
    const-wide/16 v2, 0x0

    .line 382
    .line 383
    const/4 v4, 0x0

    .line 384
    const/4 v5, 0x0

    .line 385
    const/4 v6, 0x0

    .line 386
    const/4 v7, 0x0

    .line 387
    move v0, v8

    .line 388
    const/4 v8, 0x0

    .line 389
    const/4 v9, 0x0

    .line 390
    move-object v1, v11

    .line 391
    move-object/from16 v11, p5

    .line 392
    .line 393
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 394
    .line 395
    .line 396
    const/4 v4, 0x1

    .line 397
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    if-eqz v7, :cond_a

    .line 402
    .line 403
    new-instance v0, Lk7/b;

    .line 404
    .line 405
    move-object/from16 v1, p0

    .line 406
    .line 407
    move-object/from16 v2, p1

    .line 408
    .line 409
    move-object/from16 v3, p2

    .line 410
    .line 411
    move-object/from16 v5, p4

    .line 412
    .line 413
    move/from16 v6, p6

    .line 414
    .line 415
    invoke-direct/range {v0 .. v6}, Lk7/b;-><init>(Lk7/j;Ljava/util/List;Lr8/j;ZLf9/o;I)V

    .line 416
    .line 417
    .line 418
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 419
    .line 420
    :cond_a
    return-void
.end method

.method public final c(Ljava/util/List;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    const v0, 0x6f0b36fa

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v14, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string v0, "\u97f3\u9891\u8bbe\u7f6e"

    .line 33
    .line 34
    const-string v1, "CarLife\u97f3\u9891\u76f8\u5173\u8bbe\u7f6e"

    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    sget-object v0, Ld/c;->a:Lf1/c0;

    .line 45
    .line 46
    invoke-virtual {v4, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v7, v0

    .line 51
    check-cast v7, Landroid/app/Activity;

    .line 52
    .line 53
    sget-object v0, Lk7/k;->n:Ldc/l0;

    .line 54
    .line 55
    invoke-static {v0, v4}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const v0, 0x6e3c21fe

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v9, Lf1/n;->a:Lf1/w0;

    .line 70
    .line 71
    if-ne v0, v9, :cond_2

    .line 72
    .line 73
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    move-object v10, v0

    .line 83
    check-cast v10, Lf1/b1;

    .line 84
    .line 85
    const/4 v11, 0x0

    .line 86
    invoke-virtual {v4, v11}, Lf1/s;->p(Z)V

    .line 87
    .line 88
    .line 89
    new-instance v0, La8/j;

    .line 90
    .line 91
    const/16 v1, 0xd

    .line 92
    .line 93
    invoke-direct {v0, v1, v15}, La8/j;-><init>(ILjava/util/List;)V

    .line 94
    .line 95
    .line 96
    const v1, -0x55997c0f

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget-object v1, Lk7/m;->a:Ln1/c;

    .line 104
    .line 105
    const v12, 0x4c5de2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v12}, Lf1/s;->W(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-ne v2, v9, :cond_3

    .line 116
    .line 117
    new-instance v2, Lj8/h;

    .line 118
    .line 119
    const/4 v3, 0x5

    .line 120
    invoke-direct {v2, v10, v3}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    move-object v3, v2

    .line 127
    check-cast v3, Lf9/a;

    .line 128
    .line 129
    invoke-virtual {v4, v11}, Lf1/s;->p(Z)V

    .line 130
    .line 131
    .line 132
    const/16 v5, 0xc36

    .line 133
    .line 134
    const/4 v6, 0x4

    .line 135
    const/4 v2, 0x0

    .line 136
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {v4, v12}, Lf1/s;->W(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-ne v1, v9, :cond_4

    .line 157
    .line 158
    new-instance v1, Lj8/h;

    .line 159
    .line 160
    const/4 v2, 0x6

    .line 161
    invoke-direct {v1, v10, v2}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    check-cast v1, Lf9/a;

    .line 168
    .line 169
    invoke-virtual {v4, v11}, Lf1/s;->p(Z)V

    .line 170
    .line 171
    .line 172
    new-instance v2, Lk7/i;

    .line 173
    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-direct {v2, v7, v8, v3}, Lk7/i;-><init>(Landroid/app/Activity;Lf1/v2;I)V

    .line 176
    .line 177
    .line 178
    const v3, -0x5ca954cf

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v2, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    const/16 v12, 0x30

    .line 186
    .line 187
    const/16 v13, 0x3fc

    .line 188
    .line 189
    const-wide/16 v2, 0x0

    .line 190
    .line 191
    const/4 v4, 0x0

    .line 192
    const/4 v5, 0x0

    .line 193
    const/4 v6, 0x0

    .line 194
    const/4 v7, 0x0

    .line 195
    const/4 v8, 0x0

    .line 196
    const/4 v9, 0x0

    .line 197
    move-object/from16 v11, p2

    .line 198
    .line 199
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 200
    .line 201
    .line 202
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-eqz v0, :cond_5

    .line 207
    .line 208
    new-instance v1, La8/w;

    .line 209
    .line 210
    const/16 v2, 0x9

    .line 211
    .line 212
    move-object/from16 v3, p0

    .line 213
    .line 214
    invoke-direct {v1, v14, v2, v3, v15}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 218
    .line 219
    return-void

    .line 220
    :cond_5
    move-object/from16 v3, p0

    .line 221
    .line 222
    return-void
.end method
