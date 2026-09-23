.class public final Lp7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lr7/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u5c0f\u767d\u6761"

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ILf1/s;)V
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const v2, -0x140b78ed

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v2, v0, 0x1

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_1
    :goto_0
    sget-object v2, Lp7/b;->f:Ldc/l0;

    .line 28
    .line 29
    invoke-static {v2, v1}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lp7/b;

    .line 38
    .line 39
    iget-boolean v3, v3, Lp7/b;->a:Z

    .line 40
    .line 41
    if-eqz v3, :cond_b

    .line 42
    .line 43
    sget-object v3, Landroidx/compose/foundation/layout/c;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 44
    .line 45
    new-instance v4, Ld0/w0;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct {v4, v5}, Ld0/w0;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v4}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sget-object v4, Lr1/c;->a:Lr1/h;

    .line 56
    .line 57
    invoke-static {v4, v5}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-wide v7, v1, Lf1/s;->T:J

    .line 62
    .line 63
    const/16 v9, 0x20

    .line 64
    .line 65
    ushr-long v10, v7, v9

    .line 66
    .line 67
    xor-long/2addr v7, v10

    .line 68
    long-to-int v8, v7

    .line 69
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v1, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sget-object v10, Lq2/j;->d0:Lq2/i;

    .line 78
    .line 79
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    sget-object v10, Lq2/i;->b:Lq2/a0;

    .line 83
    .line 84
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 85
    .line 86
    .line 87
    iget-boolean v11, v1, Lf1/s;->S:Z

    .line 88
    .line 89
    if-eqz v11, :cond_2

    .line 90
    .line 91
    invoke-virtual {v1, v10}, Lf1/s;->k(Lf9/a;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 96
    .line 97
    .line 98
    :goto_1
    sget-object v11, Lq2/i;->e:Lq2/h;

    .line 99
    .line 100
    invoke-static {v1, v11, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget-object v6, Lq2/i;->d:Lq2/h;

    .line 104
    .line 105
    invoke-static {v1, v6, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object v7, Lq2/i;->f:Lq2/h;

    .line 109
    .line 110
    iget-boolean v12, v1, Lf1/s;->S:Z

    .line 111
    .line 112
    if-nez v12, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    invoke-static {v12, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-nez v12, :cond_4

    .line 127
    .line 128
    :cond_3
    invoke-static {v8, v1, v8, v7}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    sget-object v8, Lq2/i;->c:Lq2/h;

    .line 132
    .line 133
    invoke-static {v1, v8, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    sget-object v3, Lr1/c;->h:Lr1/h;

    .line 137
    .line 138
    sget-object v12, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    .line 139
    .line 140
    invoke-virtual {v12, v3}, Landroidx/compose/foundation/layout/b;->a(Lr1/d;)Lr1/p;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const v13, 0x6e3c21fe

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v13}, Lf1/s;->W(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    sget-object v15, Lf1/n;->a:Lf1/w0;

    .line 155
    .line 156
    if-ne v14, v15, :cond_5

    .line 157
    .line 158
    invoke-static {v1}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    :cond_5
    check-cast v14, Lb0/k;

    .line 163
    .line 164
    const/16 v16, 0x20

    .line 165
    .line 166
    invoke-static {v1, v5, v13}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    if-ne v9, v15, :cond_6

    .line 171
    .line 172
    new-instance v9, Lm7/e;

    .line 173
    .line 174
    const/16 v5, 0x11

    .line 175
    .line 176
    invoke-direct {v9, v5}, Lm7/e;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    check-cast v9, Lf9/a;

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    invoke-static {v1, v5, v13}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    if-ne v13, v15, :cond_7

    .line 190
    .line 191
    new-instance v13, Lm7/e;

    .line 192
    .line 193
    const/16 v15, 0x12

    .line 194
    .line 195
    invoke-direct {v13, v15}, Lm7/e;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    check-cast v13, Lf9/a;

    .line 202
    .line 203
    invoke-virtual {v1, v5}, Lf1/s;->p(Z)V

    .line 204
    .line 205
    .line 206
    invoke-static {v3, v14, v9, v13}, Landroidx/compose/foundation/a;->e(Lr1/p;Lb0/k;Lf9/a;Lf9/a;)Lr1/p;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-static {v4, v5}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    iget-wide v13, v1, Lf1/s;->T:J

    .line 215
    .line 216
    ushr-long v15, v13, v16

    .line 217
    .line 218
    xor-long/2addr v13, v15

    .line 219
    long-to-int v5, v13

    .line 220
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-static {v1, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v1}, Lf1/s;->a0()V

    .line 229
    .line 230
    .line 231
    iget-boolean v13, v1, Lf1/s;->S:Z

    .line 232
    .line 233
    if-eqz v13, :cond_8

    .line 234
    .line 235
    invoke-virtual {v1, v10}, Lf1/s;->k(Lf9/a;)V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_8
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 240
    .line 241
    .line 242
    :goto_2
    invoke-static {v1, v11, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v6, v9}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    iget-boolean v4, v1, Lf1/s;->S:Z

    .line 249
    .line 250
    if-nez v4, :cond_9

    .line 251
    .line 252
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-static {v4, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-nez v4, :cond_a

    .line 265
    .line 266
    :cond_9
    invoke-static {v5, v1, v5, v7}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 267
    .line 268
    .line 269
    :cond_a
    invoke-static {v1, v8, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    sget-object v3, Lr1/c;->e:Lr1/h;

    .line 273
    .line 274
    invoke-virtual {v12, v3}, Landroidx/compose/foundation/layout/b;->a(Lr1/d;)Lr1/p;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    const/16 v4, 0x32

    .line 279
    .line 280
    invoke-static {v4, v1}, Lg5/a;->B(ILf1/s;)F

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    const/4 v5, 0x2

    .line 285
    const/4 v6, 0x0

    .line 286
    invoke-static {v3, v4, v6, v5}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    const/16 v3, 0xa

    .line 291
    .line 292
    invoke-static {v3, v1}, Lg5/a;->B(ILf1/s;)F

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Lp7/b;

    .line 301
    .line 302
    iget v3, v3, Lp7/b;->d:I

    .line 303
    .line 304
    invoke-static {v3, v1}, Lg5/a;->B(ILf1/s;)F

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    const/4 v12, 0x5

    .line 309
    const/4 v8, 0x0

    .line 310
    const/4 v10, 0x0

    .line 311
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    sget-wide v4, Ly1/q;->c:J

    .line 316
    .line 317
    const/high16 v6, 0x3f000000    # 0.5f

    .line 318
    .line 319
    invoke-static {v6, v4, v5}, Ly1/q;->b(FJ)J

    .line 320
    .line 321
    .line 322
    move-result-wide v4

    .line 323
    const/4 v6, 0x3

    .line 324
    invoke-static {v6, v1}, Lg5/a;->B(ILf1/s;)F

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    invoke-static {v6}, Lk0/e;->a(F)Lk0/d;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Lp7/b;

    .line 341
    .line 342
    iget v4, v4, Lp7/b;->b:I

    .line 343
    .line 344
    invoke-static {v4, v1}, Lg5/a;->B(ILf1/s;)F

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Lp7/b;

    .line 357
    .line 358
    iget v2, v2, Lp7/b;->c:I

    .line 359
    .line 360
    invoke-static {v2, v1}, Lg5/a;->B(ILf1/s;)F

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    const/4 v5, 0x0

    .line 369
    invoke-static {v2, v1, v5}, Ld0/m;->a(Lr1/p;Lf1/s;I)V

    .line 370
    .line 371
    .line 372
    const/4 v2, 0x1

    .line 373
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v2}, Lf1/s;->p(Z)V

    .line 377
    .line 378
    .line 379
    :cond_b
    :goto_3
    invoke-virtual {v1}, Lf1/s;->r()Lf1/w1;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    if-eqz v1, :cond_c

    .line 384
    .line 385
    new-instance v2, La8/d;

    .line 386
    .line 387
    const/16 v3, 0x15

    .line 388
    .line 389
    move-object/from16 v4, p0

    .line 390
    .line 391
    invoke-direct {v2, v0, v3, v4}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    iput-object v2, v1, Lf1/w1;->d:Lf9/n;

    .line 395
    .line 396
    return-void

    .line 397
    :cond_c
    move-object/from16 v4, p0

    .line 398
    .line 399
    return-void
.end method

.method public final d(ZLf9/a;Lf1/s;I)V
    .locals 18

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v15, p3

    .line 4
    .line 5
    const-string v0, "onDismissRequest"

    .line 6
    .line 7
    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, -0x68907c65

    .line 11
    .line 12
    .line 13
    invoke-virtual {v15, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 14
    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    invoke-virtual {v15, v2}, Lf1/s;->g(Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int v0, p4, v0

    .line 28
    .line 29
    and-int/lit8 v1, v0, 0x13

    .line 30
    .line 31
    const/16 v4, 0x12

    .line 32
    .line 33
    if-ne v1, v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    sget-object v1, Lp7/b;->f:Ldc/l0;

    .line 47
    .line 48
    invoke-static {v1, v15}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const v4, 0x4c5de2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v15, v4}, Lf1/s;->W(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 63
    .line 64
    if-ne v4, v5, :cond_3

    .line 65
    .line 66
    new-instance v4, Lc8/g;

    .line 67
    .line 68
    const/16 v5, 0x14

    .line 69
    .line 70
    invoke-direct {v4, v3, v5}, Lc8/g;-><init>(Lf9/a;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    move-object v5, v4

    .line 77
    check-cast v5, Lf9/a;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-virtual {v15, v4}, Lf1/s;->p(Z)V

    .line 81
    .line 82
    .line 83
    new-instance v4, Le8/h;

    .line 84
    .line 85
    const/16 v6, 0xa

    .line 86
    .line 87
    invoke-direct {v4, v1, v6}, Le8/h;-><init>(Lf1/v2;I)V

    .line 88
    .line 89
    .line 90
    const v1, 0x7c5e1704

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    and-int/lit8 v16, v0, 0xe

    .line 98
    .line 99
    const/16 v17, 0x3fc

    .line 100
    .line 101
    const-wide/16 v6, 0x0

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v13, 0x0

    .line 109
    move v4, v2

    .line 110
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lf1/s;->r()Lf1/w1;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    if-eqz v6, :cond_4

    .line 118
    .line 119
    new-instance v0, Lo7/c;

    .line 120
    .line 121
    const/4 v5, 0x1

    .line 122
    move-object/from16 v1, p0

    .line 123
    .line 124
    move/from16 v2, p1

    .line 125
    .line 126
    move/from16 v4, p4

    .line 127
    .line 128
    invoke-direct/range {v0 .. v5}, Lo7/c;-><init>(Lr7/g;ZLf9/a;II)V

    .line 129
    .line 130
    .line 131
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 132
    .line 133
    :cond_4
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u5c4f\u5e55\u5e95\u90e8\u5c0f\u767d\u6761"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Gesture"

    .line 2
    .line 3
    return-object v0
.end method
