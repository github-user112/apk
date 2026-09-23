.class public final Lm7/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:Lr8/j;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lr8/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm7/i;->a:Lr8/j;

    .line 5
    .line 6
    iput p2, p0, Lm7/i;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

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
    move-object/from16 v5, p2

    .line 8
    .line 9
    check-cast v5, Lf1/s;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "$this$Card"

    .line 20
    .line 21
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    and-int/lit8 v1, v2, 0x11

    .line 25
    .line 26
    const/16 v11, 0x10

    .line 27
    .line 28
    if-ne v1, v11, :cond_1

    .line 29
    .line 30
    invoke-virtual {v5}, Lf1/s;->z()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v5}, Lf1/s;->Q()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_8

    .line 41
    .line 42
    :cond_1
    :goto_0
    sget-object v1, Lr1/c;->k:Lr1/g;

    .line 43
    .line 44
    sget-object v2, Ld0/h;->e:Ld0/d;

    .line 45
    .line 46
    sget-object v3, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 47
    .line 48
    invoke-static {v11, v5}, Lg5/a;->B(ILf1/s;)F

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/a;->h(Lr1/p;F)Lr1/p;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/16 v4, 0x36

    .line 57
    .line 58
    invoke-static {v2, v1, v5, v4}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-wide v6, v5, Lf1/s;->T:J

    .line 63
    .line 64
    const/16 v12, 0x20

    .line 65
    .line 66
    ushr-long v8, v6, v12

    .line 67
    .line 68
    xor-long/2addr v6, v8

    .line 69
    long-to-int v2, v6

    .line 70
    invoke-virtual {v5}, Lf1/s;->l()Lf1/q1;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v5, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-object v13, Lq2/i;->b:Lq2/a0;

    .line 84
    .line 85
    invoke-virtual {v5}, Lf1/s;->a0()V

    .line 86
    .line 87
    .line 88
    iget-boolean v6, v5, Lf1/s;->S:Z

    .line 89
    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    invoke-virtual {v5, v13}, Lf1/s;->k(Lf9/a;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v5}, Lf1/s;->k0()V

    .line 97
    .line 98
    .line 99
    :goto_1
    sget-object v14, Lq2/i;->e:Lq2/h;

    .line 100
    .line 101
    invoke-static {v5, v14, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object v1, Lq2/i;->d:Lq2/h;

    .line 105
    .line 106
    invoke-static {v5, v1, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v15, Lq2/i;->f:Lq2/h;

    .line 110
    .line 111
    iget-boolean v4, v5, Lf1/s;->S:Z

    .line 112
    .line 113
    if-nez v4, :cond_3

    .line 114
    .line 115
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v4, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_4

    .line 128
    .line 129
    :cond_3
    invoke-static {v2, v5, v2, v15}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    sget-object v8, Lq2/i;->c:Lq2/h;

    .line 133
    .line 134
    invoke-static {v5, v8, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const/16 v2, 0x78

    .line 138
    .line 139
    int-to-float v2, v2

    .line 140
    sget-object v9, Lr1/m;->a:Lr1/m;

    .line 141
    .line 142
    invoke-static {v9, v2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const v3, 0x3fdc53ef    # 1.7213115f

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const/16 v3, 0xc

    .line 154
    .line 155
    invoke-static {v3, v5}, Lg5/a;->B(ILf1/s;)F

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-static {v3}, Lk0/e;->a(F)Lk0/d;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v2, v3}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    iget-object v2, v0, Lm7/i;->a:Lr8/j;

    .line 168
    .line 169
    iget-object v2, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 170
    .line 171
    move-object v3, v2

    .line 172
    check-cast v3, Ljava/lang/String;

    .line 173
    .line 174
    const v6, 0x4c5de2

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v6}, Lf1/s;->W(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    const/4 v10, 0x0

    .line 189
    if-nez v6, :cond_5

    .line 190
    .line 191
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 192
    .line 193
    if-ne v7, v6, :cond_7

    .line 194
    .line 195
    :cond_5
    check-cast v2, Ljava/lang/CharSequence;

    .line 196
    .line 197
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-lez v2, :cond_6

    .line 202
    .line 203
    new-instance v2, Ljava/io/File;

    .line 204
    .line 205
    sget-object v6, Lm7/k;->b:Ll8/p;

    .line 206
    .line 207
    iget-object v6, v6, Ll8/p;->k:Ljava/io/File;

    .line 208
    .line 209
    invoke-direct {v2, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_6

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-eqz v2, :cond_6

    .line 227
    .line 228
    new-instance v3, Ly1/f;

    .line 229
    .line 230
    invoke-direct {v3, v2}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .line 232
    .line 233
    move-object v7, v3

    .line 234
    goto :goto_2

    .line 235
    :cond_6
    move-object v7, v10

    .line 236
    :goto_2
    invoke-virtual {v5, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    :cond_7
    move-object v2, v7

    .line 240
    check-cast v2, Ly1/f;

    .line 241
    .line 242
    const/4 v3, 0x0

    .line 243
    invoke-virtual {v5, v3}, Lf1/s;->p(Z)V

    .line 244
    .line 245
    .line 246
    if-eqz v2, :cond_8

    .line 247
    .line 248
    const v6, 0x7445433

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v6}, Lf1/s;->W(I)V

    .line 252
    .line 253
    .line 254
    const/16 v6, 0x6030

    .line 255
    .line 256
    const/16 v7, 0xe8

    .line 257
    .line 258
    const/16 v16, 0x0

    .line 259
    .line 260
    const/4 v3, 0x0

    .line 261
    const/16 p1, 0x20

    .line 262
    .line 263
    const/4 v12, 0x0

    .line 264
    invoke-static/range {v2 .. v7}, Lp9/q;->c(Ly1/f;Ljava/lang/String;Lr1/p;Lf1/s;II)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v12}, Lf1/s;->p(Z)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v22, v8

    .line 271
    .line 272
    move-object/from16 v16, v9

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_8
    const/16 p1, 0x20

    .line 276
    .line 277
    const/4 v12, 0x0

    .line 278
    const v2, 0x7487860

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5, v2}, Lf1/s;->W(I)V

    .line 282
    .line 283
    .line 284
    iget v2, v0, Lm7/i;->b:I

    .line 285
    .line 286
    invoke-static {v2, v5}, Lp9/p1;->B(ILf1/s;)Ld2/b;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    move-object/from16 v16, v9

    .line 291
    .line 292
    const/16 v9, 0x6030

    .line 293
    .line 294
    move-object v3, v10

    .line 295
    const/16 v10, 0x68

    .line 296
    .line 297
    move-object v6, v3

    .line 298
    const/4 v3, 0x0

    .line 299
    move-object v7, v8

    .line 300
    move-object v8, v5

    .line 301
    const/4 v5, 0x0

    .line 302
    move-object/from16 v17, v6

    .line 303
    .line 304
    sget-object v6, Lo2/j;->a:Lo2/i;

    .line 305
    .line 306
    move-object/from16 v18, v7

    .line 307
    .line 308
    const/4 v7, 0x0

    .line 309
    move-object/from16 v22, v18

    .line 310
    .line 311
    invoke-static/range {v2 .. v10}, Lp9/q;->b(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FLf1/s;II)V

    .line 312
    .line 313
    .line 314
    move-object v5, v8

    .line 315
    invoke-virtual {v5, v12}, Lf1/s;->p(Z)V

    .line 316
    .line 317
    .line 318
    :goto_3
    invoke-static {v11, v5}, Lg5/a;->B(ILf1/s;)F

    .line 319
    .line 320
    .line 321
    move-result v17

    .line 322
    const/16 v20, 0x0

    .line 323
    .line 324
    const/16 v21, 0xe

    .line 325
    .line 326
    const/16 v18, 0x0

    .line 327
    .line 328
    const/16 v19, 0x0

    .line 329
    .line 330
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    sget-object v3, Ld0/h;->a:Ld0/b;

    .line 335
    .line 336
    sget-object v4, Lr1/c;->j:Lr1/g;

    .line 337
    .line 338
    invoke-static {v3, v4, v5, v12}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    iget-wide v6, v5, Lf1/s;->T:J

    .line 343
    .line 344
    ushr-long v8, v6, p1

    .line 345
    .line 346
    xor-long/2addr v6, v8

    .line 347
    long-to-int v4, v6

    .line 348
    invoke-virtual {v5}, Lf1/s;->l()Lf1/q1;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-static {v5, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v5}, Lf1/s;->a0()V

    .line 357
    .line 358
    .line 359
    iget-boolean v7, v5, Lf1/s;->S:Z

    .line 360
    .line 361
    if-eqz v7, :cond_9

    .line 362
    .line 363
    invoke-virtual {v5, v13}, Lf1/s;->k(Lf9/a;)V

    .line 364
    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_9
    invoke-virtual {v5}, Lf1/s;->k0()V

    .line 368
    .line 369
    .line 370
    :goto_4
    invoke-static {v5, v14, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v5, v1, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    iget-boolean v1, v5, Lf1/s;->S:Z

    .line 377
    .line 378
    if-nez v1, :cond_b

    .line 379
    .line 380
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-nez v1, :cond_a

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_a
    :goto_5
    move-object/from16 v7, v22

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_b
    :goto_6
    invoke-static {v4, v5, v4, v15}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :goto_7
    invoke-static {v5, v7, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    const-string v1, "\u9009\u62e9"

    .line 406
    .line 407
    const/4 v2, 0x6

    .line 408
    const/4 v3, 0x2

    .line 409
    const/4 v6, 0x0

    .line 410
    invoke-static {v1, v6, v5, v2, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 411
    .line 412
    .line 413
    invoke-static {v12, v5}, Lg5/a;->d(ILf1/s;)V

    .line 414
    .line 415
    .line 416
    const/4 v1, 0x1

    .line 417
    invoke-virtual {v5, v1}, Lf1/s;->p(Z)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v5, v1}, Lf1/s;->p(Z)V

    .line 421
    .line 422
    .line 423
    :goto_8
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 424
    .line 425
    return-object v1
.end method
