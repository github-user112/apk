.class public final Lv7/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;


# instance fields
.field public final a:I

.field public final b:Lfc/c;

.field public c:Ll8/u;

.field public d:Ll8/w;

.field public final e:Ldc/l0;

.field public final f:Ldc/l0;

.field public final g:Ldc/l0;

.field public final h:Lv7/m;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lv7/g;->a:I

    .line 5
    .line 6
    sget-object p1, Lac/g0;->a:Lhc/e;

    .line 7
    .line 8
    sget-object p1, Lfc/m;->a:Lbc/d;

    .line 9
    .line 10
    invoke-static {p1}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lv7/g;->b:Lfc/c;

    .line 15
    .line 16
    sget-object p1, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 17
    .line 18
    invoke-static {p1}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lv7/g;->e:Ldc/l0;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lv7/g;->f:Ldc/l0;

    .line 34
    .line 35
    const-string p1, ""

    .line 36
    .line 37
    invoke-static {p1}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lv7/g;->g:Ldc/l0;

    .line 42
    .line 43
    sget-object p1, Lv7/m;->n:Ldc/l0;

    .line 44
    .line 45
    invoke-virtual {p1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lv7/m;

    .line 50
    .line 51
    iput-object p1, p0, Lv7/g;->h:Lv7/m;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a(ILf1/s;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    const v2, 0x42ade338

    .line 6
    .line 7
    .line 8
    invoke-virtual {v5, v2}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v5, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x2

    .line 21
    :goto_0
    or-int v2, p1, v2

    .line 22
    .line 23
    and-int/lit8 v2, v2, 0x3

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v5}, Lf1/s;->z()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v5}, Lf1/s;->Q()V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_2
    :goto_1
    sget-wide v2, Ly1/q;->l:J

    .line 40
    .line 41
    sget-object v4, Ly1/h0;->a:Ly1/g0;

    .line 42
    .line 43
    sget-object v6, Lr1/m;->a:Lr1/m;

    .line 44
    .line 45
    invoke-static {v6, v2, v3, v4}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Ld0/h;->c:Ld0/b;

    .line 50
    .line 51
    sget-object v4, Lr1/c;->m:Lr1/f;

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    invoke-static {v3, v4, v5, v8}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-wide v6, v5, Lf1/s;->T:J

    .line 59
    .line 60
    const/16 v4, 0x20

    .line 61
    .line 62
    ushr-long v9, v6, v4

    .line 63
    .line 64
    xor-long/2addr v6, v9

    .line 65
    long-to-int v4, v6

    .line 66
    invoke-virtual {v5}, Lf1/s;->l()Lf1/q1;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v5, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    sget-object v7, Lq2/j;->d0:Lq2/i;

    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v7, Lq2/i;->b:Lq2/a0;

    .line 80
    .line 81
    invoke-virtual {v5}, Lf1/s;->a0()V

    .line 82
    .line 83
    .line 84
    iget-boolean v9, v5, Lf1/s;->S:Z

    .line 85
    .line 86
    if-eqz v9, :cond_3

    .line 87
    .line 88
    invoke-virtual {v5, v7}, Lf1/s;->k(Lf9/a;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {v5}, Lf1/s;->k0()V

    .line 93
    .line 94
    .line 95
    :goto_2
    sget-object v7, Lq2/i;->e:Lq2/h;

    .line 96
    .line 97
    invoke-static {v5, v7, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object v3, Lq2/i;->d:Lq2/h;

    .line 101
    .line 102
    invoke-static {v5, v3, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v3, Lq2/i;->f:Lq2/h;

    .line 106
    .line 107
    iget-boolean v6, v5, Lf1/s;->S:Z

    .line 108
    .line 109
    if-nez v6, :cond_4

    .line 110
    .line 111
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-static {v6, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-nez v6, :cond_5

    .line 124
    .line 125
    :cond_4
    invoke-static {v4, v5, v4, v3}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    sget-object v3, Lq2/i;->c:Lq2/h;

    .line 129
    .line 130
    invoke-static {v5, v3, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, v0, Lv7/g;->e:Ldc/l0;

    .line 134
    .line 135
    invoke-static {v2, v5}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Lcom/google/protobuf/i;

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/google/protobuf/i;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_6

    .line 150
    .line 151
    sget-object v2, Lcom/google/protobuf/n0;->b:[B

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    new-array v4, v3, [B

    .line 155
    .line 156
    invoke-virtual {v2, v4, v3}, Lcom/google/protobuf/i;->j([BI)V

    .line 157
    .line 158
    .line 159
    move-object v2, v4

    .line 160
    :goto_3
    const v3, -0x749dcb99

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v3}, Lf1/s;->W(I)V

    .line 164
    .line 165
    .line 166
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    array-length v3, v2

    .line 170
    const/4 v9, 0x1

    .line 171
    if-nez v3, :cond_7

    .line 172
    .line 173
    const/4 v1, 0x0

    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    :cond_7
    array-length v3, v2

    .line 177
    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    new-instance v3, Ly1/f;

    .line 185
    .line 186
    invoke-direct {v3, v2}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    .line 188
    .line 189
    const/16 v2, 0xc8

    .line 190
    .line 191
    int-to-float v2, v2

    .line 192
    invoke-static {v2}, Landroidx/compose/foundation/layout/c;->h(F)Lr1/p;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    const/16 v6, 0x1b0

    .line 197
    .line 198
    const/16 v7, 0xf8

    .line 199
    .line 200
    move-object v2, v3

    .line 201
    const-string v3, "Turn Icon"

    .line 202
    .line 203
    invoke-static/range {v2 .. v7}, Lp9/q;->c(Ly1/f;Ljava/lang/String;Lr1/p;Lf1/s;II)V

    .line 204
    .line 205
    .line 206
    iget-object v2, v0, Lv7/g;->f:Ldc/l0;

    .line 207
    .line 208
    invoke-static {v2, v5}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Ljava/lang/Number;

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    const/16 v3, 0x3e8

    .line 223
    .line 224
    if-lt v2, v3, :cond_9

    .line 225
    .line 226
    int-to-double v2, v2

    .line 227
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    div-double/2addr v2, v6

    .line 233
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 234
    .line 235
    rem-double v6, v2, v6

    .line 236
    .line 237
    const-wide/16 v10, 0x0

    .line 238
    .line 239
    cmpg-double v4, v6, v10

    .line 240
    .line 241
    if-nez v4, :cond_8

    .line 242
    .line 243
    double-to-int v2, v2

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v2, "\u516c\u91cc"

    .line 253
    .line 254
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    goto :goto_4

    .line 262
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    new-array v3, v9, [Ljava/lang/Object;

    .line 271
    .line 272
    aput-object v2, v3, v8

    .line 273
    .line 274
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    const-string v3, "%.1f\u516c\u91cc"

    .line 279
    .line 280
    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    goto :goto_4

    .line 285
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v2, "\u7c73"

    .line 294
    .line 295
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    :goto_4
    const-string v3, " \u8fdb\u5165"

    .line 303
    .line 304
    invoke-static {v2, v3}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    const/16 v23, 0x32

    .line 309
    .line 310
    invoke-static/range {v23 .. v23}, Lc7/a;->H(I)J

    .line 311
    .line 312
    .line 313
    move-result-wide v6

    .line 314
    sget-wide v4, Ly1/q;->e:J

    .line 315
    .line 316
    const/16 v21, 0x0

    .line 317
    .line 318
    const v22, 0x1fff2

    .line 319
    .line 320
    .line 321
    const/4 v3, 0x0

    .line 322
    const/4 v10, 0x0

    .line 323
    const/4 v8, 0x0

    .line 324
    const/4 v11, 0x1

    .line 325
    const/4 v12, 0x0

    .line 326
    const-wide/16 v9, 0x0

    .line 327
    .line 328
    const/4 v13, 0x1

    .line 329
    const/4 v11, 0x0

    .line 330
    const/4 v14, 0x1

    .line 331
    const/4 v15, 0x0

    .line 332
    const-wide/16 v12, 0x0

    .line 333
    .line 334
    const/16 v16, 0x1

    .line 335
    .line 336
    const/4 v14, 0x0

    .line 337
    const/16 v17, 0x0

    .line 338
    .line 339
    const/4 v15, 0x0

    .line 340
    const/16 v18, 0x1

    .line 341
    .line 342
    const/16 v16, 0x0

    .line 343
    .line 344
    const/16 v19, 0x0

    .line 345
    .line 346
    const/16 v17, 0x0

    .line 347
    .line 348
    const/16 v20, 0x1

    .line 349
    .line 350
    const/16 v18, 0x0

    .line 351
    .line 352
    const/16 v24, 0x1

    .line 353
    .line 354
    const/16 v20, 0xd80

    .line 355
    .line 356
    move-object/from16 v19, p2

    .line 357
    .line 358
    const/4 v1, 0x0

    .line 359
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 360
    .line 361
    .line 362
    move-wide v2, v4

    .line 363
    move-object/from16 v5, v19

    .line 364
    .line 365
    iget-object v4, v0, Lv7/g;->g:Ldc/l0;

    .line 366
    .line 367
    invoke-static {v4, v5}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    check-cast v4, Ljava/lang/String;

    .line 376
    .line 377
    invoke-static/range {v23 .. v23}, Lc7/a;->H(I)J

    .line 378
    .line 379
    .line 380
    move-result-wide v6

    .line 381
    move-wide/from16 v25, v2

    .line 382
    .line 383
    move-object v2, v4

    .line 384
    move-wide/from16 v4, v25

    .line 385
    .line 386
    const/4 v3, 0x0

    .line 387
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 388
    .line 389
    .line 390
    move-object/from16 v5, v19

    .line 391
    .line 392
    :goto_5
    invoke-virtual {v5, v1}, Lf1/s;->p(Z)V

    .line 393
    .line 394
    .line 395
    const/4 v13, 0x1

    .line 396
    invoke-virtual {v5, v13}, Lf1/s;->p(Z)V

    .line 397
    .line 398
    .line 399
    :goto_6
    invoke-virtual {v5}, Lf1/s;->r()Lf1/w1;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    if-eqz v1, :cond_a

    .line 404
    .line 405
    new-instance v2, La8/d;

    .line 406
    .line 407
    const/16 v3, 0x1b

    .line 408
    .line 409
    move/from16 v4, p1

    .line 410
    .line 411
    invoke-direct {v2, v4, v3, v0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    iput-object v2, v1, Lf1/w1;->d:Lf9/n;

    .line 415
    .line 416
    :cond_a
    return-void
.end method

.method public final synthetic onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->a(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->b(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "\u3010\u526f\u5c4f\u3011\u8fde\u63a5\u65ad\u5f00\uff0c\u79fb\u9664 ContentView"

    .line 13
    .line 14
    aput-object v2, v0, v1

    .line 15
    .line 16
    const-string v2, "CarLife_Vehicle"

    .line 17
    .line 18
    invoke-virtual {p1, v2, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lv7/f;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, p0, v0, v1}, Lv7/f;-><init>(Lv7/g;Lw8/c;I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    iget-object v2, p0, Lv7/g;->b:Lfc/c;

    .line 29
    .line 30
    invoke-static {v2, v0, p1, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final synthetic onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->d(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionReattached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->e(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->f(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "message"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const v0, 0x10030

    .line 16
    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    new-instance p1, Lv7/f;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {p1, p0, v1, v0}, Lv7/f;-><init>(Lv7/g;Lw8/c;I)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    iget-object v2, p0, Lv7/g;->b:Lfc/c;

    .line 29
    .line 30
    invoke-static {v2, v1, p1, v0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    instance-of p2, p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object p1, v1

    .line 45
    :goto_0
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p2, p0, Lv7/g;->e:Ldc/l0;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getTurnIconData()Lcom/google/protobuf/i;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p2, v0}, Ldc/l0;->h(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRemainDistance()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget-object v0, p0, Lv7/g;->f:Ldc/l0;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, p2}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string p2, "getRoadName(...)"

    .line 77
    .line 78
    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lv7/g;->g:Ldc/l0;

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v1, p1}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    const/4 p1, 0x0

    .line 90
    return p1
.end method

.method public final synthetic onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/b;->b(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
