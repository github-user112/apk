.class public final Lu7/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lu7/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu7/g;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lu7/g;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu7/g;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Lf1/s;

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    and-int/lit8 v2, v2, 0x3

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    new-instance v2, La8/b0;

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    iget-object v4, v0, Lu7/g;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, La8/b0;-><init>(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const v3, 0x7e0d5efb

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x0

    .line 52
    const/16 v5, 0x30

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-static {v3, v2, v1, v5, v6}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x10

    .line 59
    .line 60
    invoke-static {v2, v1}, Lg5/a;->B(ILf1/s;)F

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    sget-object v7, Lr1/m;->a:Lr1/m;

    .line 65
    .line 66
    invoke-static {v7, v2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lu7/g;

    .line 74
    .line 75
    iget-object v7, v0, Lu7/g;->c:Ljava/lang/String;

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    invoke-direct {v2, v7, v4, v8}, Lu7/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const v4, 0x70021564

    .line 82
    .line 83
    .line 84
    invoke-static {v4, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v3, v2, v1, v5, v6}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 89
    .line 90
    .line 91
    :goto_1
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 92
    .line 93
    return-object v1

    .line 94
    :pswitch_0
    move-object/from16 v1, p1

    .line 95
    .line 96
    check-cast v1, Lf1/s;

    .line 97
    .line 98
    move-object/from16 v2, p2

    .line 99
    .line 100
    check-cast v2, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    and-int/lit8 v2, v2, 0x3

    .line 107
    .line 108
    const/4 v3, 0x2

    .line 109
    if-ne v2, v3, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_2

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    :goto_2
    new-instance v2, Lu7/g;

    .line 123
    .line 124
    iget-object v3, v0, Lu7/g;->c:Ljava/lang/String;

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    iget-object v5, v0, Lu7/g;->b:Ljava/lang/String;

    .line 128
    .line 129
    invoke-direct {v2, v5, v3, v4}, Lu7/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    const v3, 0x529c10e1

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const/16 v3, 0x30

    .line 140
    .line 141
    const/4 v4, 0x0

    .line 142
    invoke-static {v4, v2, v1, v3}, Lw0/y0;->b(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 143
    .line 144
    .line 145
    :goto_3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 146
    .line 147
    return-object v1

    .line 148
    :pswitch_1
    move-object/from16 v1, p1

    .line 149
    .line 150
    check-cast v1, Lf1/s;

    .line 151
    .line 152
    move-object/from16 v2, p2

    .line 153
    .line 154
    check-cast v2, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    const/4 v3, 0x3

    .line 161
    and-int/2addr v2, v3

    .line 162
    const/4 v4, 0x2

    .line 163
    if-ne v2, v4, :cond_5

    .line 164
    .line 165
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-nez v2, :cond_4

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_4
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_6

    .line 176
    .line 177
    :cond_5
    :goto_4
    sget-object v2, Ld0/h;->d:Ld0/d;

    .line 178
    .line 179
    sget-object v4, Lr1/c;->n:Lr1/f;

    .line 180
    .line 181
    const/16 v5, 0x10

    .line 182
    .line 183
    invoke-static {v5, v1}, Lg5/a;->B(ILf1/s;)F

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    sget-object v6, Lr1/m;->a:Lr1/m;

    .line 188
    .line 189
    const/4 v7, 0x0

    .line 190
    const/4 v8, 0x1

    .line 191
    invoke-static {v6, v7, v5, v8}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    const/16 v7, 0x36

    .line 196
    .line 197
    invoke-static {v2, v4, v1, v7}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iget-wide v9, v1, Lf1/s;->T:J

    .line 202
    .line 203
    const/16 v4, 0x20

    .line 204
    .line 205
    ushr-long v11, v9, v4

    .line 206
    .line 207
    xor-long/2addr v9, v11

    .line 208
    long-to-int v4, v9

    .line 209
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-static {v1, v5}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    sget-object v9, Lq2/j;->d0:Lq2/i;

    .line 218
    .line 219
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    sget-object v9, Lq2/i;->b:Lq2/a0;

    .line 223
    .line 224
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 225
    .line 226
    .line 227
    iget-boolean v10, v1, Lf1/s;->S:Z

    .line 228
    .line 229
    if-eqz v10, :cond_6

    .line 230
    .line 231
    invoke-virtual {v1, v9}, Lf1/s;->k(Lf9/a;)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_6
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 236
    .line 237
    .line 238
    :goto_5
    sget-object v9, Lq2/i;->e:Lq2/h;

    .line 239
    .line 240
    invoke-static {v1, v9, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    sget-object v2, Lq2/i;->d:Lq2/h;

    .line 244
    .line 245
    invoke-static {v1, v2, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    sget-object v2, Lq2/i;->f:Lq2/h;

    .line 249
    .line 250
    iget-boolean v7, v1, Lf1/s;->S:Z

    .line 251
    .line 252
    if-nez v7, :cond_7

    .line 253
    .line 254
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    invoke-static {v7, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    if-nez v7, :cond_8

    .line 267
    .line 268
    :cond_7
    invoke-static {v4, v1, v4, v2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 269
    .line 270
    .line 271
    :cond_8
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 272
    .line 273
    invoke-static {v1, v2, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    const-string v2, " (\u626b\u7801\u590d\u5236)"

    .line 277
    .line 278
    iget-object v4, v0, Lu7/g;->b:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    const/16 v4, 0x14

    .line 285
    .line 286
    invoke-static {v4, v1}, Lg5/a;->B(ILf1/s;)F

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    const-wide v9, 0x100000000L

    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    invoke-static {v5, v9, v10}, Lc7/a;->M(FJ)J

    .line 296
    .line 297
    .line 298
    move-result-wide v11

    .line 299
    const/16 v5, 0x18

    .line 300
    .line 301
    invoke-static {v5, v1}, Lg5/a;->B(ILf1/s;)F

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    invoke-static {v5, v9, v10}, Lc7/a;->M(FJ)J

    .line 306
    .line 307
    .line 308
    move-result-wide v13

    .line 309
    sget-object v5, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 310
    .line 311
    move-wide/from16 v28, v11

    .line 312
    .line 313
    move-object v12, v6

    .line 314
    move-wide/from16 v6, v28

    .line 315
    .line 316
    new-instance v11, Lm3/k;

    .line 317
    .line 318
    invoke-direct {v11, v3}, Lm3/k;-><init>(I)V

    .line 319
    .line 320
    .line 321
    const/16 v21, 0x0

    .line 322
    .line 323
    const v22, 0x1f9f4

    .line 324
    .line 325
    .line 326
    move-object v3, v5

    .line 327
    const/16 v15, 0x14

    .line 328
    .line 329
    const/16 v16, 0x3

    .line 330
    .line 331
    const-wide/16 v4, 0x0

    .line 332
    .line 333
    const/16 v17, 0x1

    .line 334
    .line 335
    const/4 v8, 0x0

    .line 336
    move-wide/from16 v18, v9

    .line 337
    .line 338
    const-wide/16 v9, 0x0

    .line 339
    .line 340
    move-object/from16 v20, v12

    .line 341
    .line 342
    move-wide v12, v13

    .line 343
    const/4 v14, 0x0

    .line 344
    const/16 v23, 0x14

    .line 345
    .line 346
    const/4 v15, 0x0

    .line 347
    const/16 v24, 0x3

    .line 348
    .line 349
    const/16 v16, 0x0

    .line 350
    .line 351
    const/16 v25, 0x1

    .line 352
    .line 353
    const/16 v17, 0x0

    .line 354
    .line 355
    move-wide/from16 v26, v18

    .line 356
    .line 357
    const/16 v18, 0x0

    .line 358
    .line 359
    move-object/from16 v19, v20

    .line 360
    .line 361
    const/16 v20, 0x30

    .line 362
    .line 363
    move-object/from16 v28, v19

    .line 364
    .line 365
    move-object/from16 v19, v1

    .line 366
    .line 367
    move-object/from16 v1, v28

    .line 368
    .line 369
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 370
    .line 371
    .line 372
    move-object/from16 v2, v19

    .line 373
    .line 374
    const/16 v4, 0x8

    .line 375
    .line 376
    invoke-static {v4, v2}, Lg5/a;->B(ILf1/s;)F

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v2, v1}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 385
    .line 386
    .line 387
    const/16 v15, 0x14

    .line 388
    .line 389
    invoke-static {v15, v2}, Lg5/a;->B(ILf1/s;)F

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    const-wide v4, 0x100000000L

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    invoke-static {v1, v4, v5}, Lc7/a;->M(FJ)J

    .line 399
    .line 400
    .line 401
    move-result-wide v6

    .line 402
    new-instance v11, Lm3/k;

    .line 403
    .line 404
    const/4 v1, 0x3

    .line 405
    invoke-direct {v11, v1}, Lm3/k;-><init>(I)V

    .line 406
    .line 407
    .line 408
    const v22, 0x1fdf4

    .line 409
    .line 410
    .line 411
    iget-object v2, v0, Lu7/g;->c:Ljava/lang/String;

    .line 412
    .line 413
    const-wide/16 v4, 0x0

    .line 414
    .line 415
    const-wide/16 v12, 0x0

    .line 416
    .line 417
    const/4 v15, 0x0

    .line 418
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 419
    .line 420
    .line 421
    move-object/from16 v2, v19

    .line 422
    .line 423
    const/4 v1, 0x1

    .line 424
    invoke-virtual {v2, v1}, Lf1/s;->p(Z)V

    .line 425
    .line 426
    .line 427
    :goto_6
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 428
    .line 429
    return-object v1

    .line 430
    nop

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
