.class public abstract Landroidx/compose/ui/viewinterop/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static final a(ILf1/s;Lf9/k;Lr1/p;)V
    .locals 23

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    sget-object v3, Lq3/b;->e:Lq3/b;

    .line 8
    .line 9
    const v4, -0xabaf393

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v4}, Lf1/s;->Y(I)Lf1/s;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v4, v0, 0x6

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v4, 0x2

    .line 28
    :goto_0
    or-int/2addr v4, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v4, v0

    .line 31
    :goto_1
    and-int/lit8 v5, v0, 0x30

    .line 32
    .line 33
    const/16 v6, 0x20

    .line 34
    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    const/16 v5, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v5, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v4, v5

    .line 49
    :cond_3
    or-int/lit16 v4, v4, 0x180

    .line 50
    .line 51
    and-int/lit16 v5, v0, 0xc00

    .line 52
    .line 53
    if-nez v5, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    const/16 v5, 0x800

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v5, 0x400

    .line 65
    .line 66
    :goto_3
    or-int/2addr v4, v5

    .line 67
    :cond_5
    and-int/lit16 v5, v0, 0x6000

    .line 68
    .line 69
    if-nez v5, :cond_7

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_6

    .line 76
    .line 77
    const/16 v5, 0x4000

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_6
    const/16 v5, 0x2000

    .line 81
    .line 82
    :goto_4
    or-int/2addr v4, v5

    .line 83
    :cond_7
    and-int/lit16 v5, v4, 0x2493

    .line 84
    .line 85
    const/16 v7, 0x2492

    .line 86
    .line 87
    if-eq v5, v7, :cond_8

    .line 88
    .line 89
    const/4 v5, 0x1

    .line 90
    goto :goto_5

    .line 91
    :cond_8
    const/4 v5, 0x0

    .line 92
    :goto_5
    and-int/lit8 v7, v4, 0x1

    .line 93
    .line 94
    invoke-virtual {v1, v7, v5}, Lf1/s;->N(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_11

    .line 99
    .line 100
    iget-wide v10, v1, Lf1/s;->T:J

    .line 101
    .line 102
    ushr-long v5, v10, v6

    .line 103
    .line 104
    xor-long/2addr v5, v10

    .line 105
    long-to-int v6, v5

    .line 106
    sget-object v5, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesElement;->a:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesElement;

    .line 107
    .line 108
    invoke-interface {v2, v5}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    sget-object v7, Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;->a:Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;

    .line 113
    .line 114
    invoke-interface {v5, v7}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    sget-object v10, Landroidx/compose/ui/viewinterop/FocusTargetPropertiesElement;->a:Landroidx/compose/ui/viewinterop/FocusTargetPropertiesElement;

    .line 119
    .line 120
    invoke-interface {v5, v10}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v5, v7}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v1, v5}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    sget-object v7, Lr2/i1;->h:Lf1/w2;

    .line 133
    .line 134
    invoke-virtual {v1, v7}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    check-cast v7, Ln3/c;

    .line 139
    .line 140
    sget-object v10, Lr2/i1;->n:Lf1/w2;

    .line 141
    .line 142
    invoke-virtual {v1, v10}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    check-cast v10, Ln3/m;

    .line 147
    .line 148
    invoke-virtual {v1}, Lf1/s;->l()Lf1/q1;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    sget-object v12, Ls4/a;->a:Lf1/t1;

    .line 153
    .line 154
    invoke-virtual {v1, v12}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    check-cast v12, Landroidx/lifecycle/t;

    .line 159
    .line 160
    sget-object v13, Lb5/a;->a:Lf1/t1;

    .line 161
    .line 162
    invoke-virtual {v1, v13}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    check-cast v13, La5/g;

    .line 167
    .line 168
    const v14, 0x4e5e438f    # 9.3224237E8f

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v14}, Lf1/s;->W(I)V

    .line 172
    .line 173
    .line 174
    and-int/lit8 v4, v4, 0xe

    .line 175
    .line 176
    iget-wide v14, v1, Lf1/s;->T:J

    .line 177
    .line 178
    const/16 v16, 0x20

    .line 179
    .line 180
    ushr-long v16, v14, v16

    .line 181
    .line 182
    xor-long v14, v14, v16

    .line 183
    .line 184
    long-to-int v15, v14

    .line 185
    sget-object v14, Lr2/n0;->b:Lf1/w2;

    .line 186
    .line 187
    invoke-virtual {v1, v14}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    check-cast v14, Landroid/content/Context;

    .line 192
    .line 193
    invoke-static {v1}, Lf1/b;->u(Lf1/s;)Lf1/q;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    sget-object v9, Lo1/h;->a:Lf1/w2;

    .line 198
    .line 199
    invoke-virtual {v1, v9}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    check-cast v9, Lo1/f;

    .line 204
    .line 205
    move/from16 v16, v4

    .line 206
    .line 207
    sget-object v4, Lr2/n0;->f:Lf1/w2;

    .line 208
    .line 209
    invoke-virtual {v1, v4}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Landroid/view/View;

    .line 214
    .line 215
    invoke-virtual {v1, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v17

    .line 219
    and-int/lit8 v18, v16, 0xe

    .line 220
    .line 221
    move-object/from16 v19, v14

    .line 222
    .line 223
    xor-int/lit8 v14, v18, 0x6

    .line 224
    .line 225
    const/4 v0, 0x4

    .line 226
    if-le v14, v0, :cond_9

    .line 227
    .line 228
    invoke-virtual/range {p1 .. p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v14

    .line 232
    if-nez v14, :cond_a

    .line 233
    .line 234
    :cond_9
    and-int/lit8 v14, v16, 0x6

    .line 235
    .line 236
    if-ne v14, v0, :cond_b

    .line 237
    .line 238
    :cond_a
    const/4 v0, 0x1

    .line 239
    goto :goto_6

    .line 240
    :cond_b
    const/4 v0, 0x0

    .line 241
    :goto_6
    or-int v0, v17, v0

    .line 242
    .line 243
    invoke-virtual {v1, v8}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    or-int/2addr v0, v14

    .line 248
    invoke-virtual {v1, v9}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v14

    .line 252
    or-int/2addr v0, v14

    .line 253
    invoke-virtual {v1, v15}, Lf1/s;->d(I)Z

    .line 254
    .line 255
    .line 256
    move-result v14

    .line 257
    or-int/2addr v0, v14

    .line 258
    invoke-virtual {v1, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    or-int/2addr v0, v14

    .line 263
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    if-nez v0, :cond_c

    .line 268
    .line 269
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 270
    .line 271
    if-ne v14, v0, :cond_d

    .line 272
    .line 273
    :cond_c
    new-instance v16, Lq3/m;

    .line 274
    .line 275
    move-object/from16 v18, p2

    .line 276
    .line 277
    move-object/from16 v22, v4

    .line 278
    .line 279
    move-object/from16 v20, v9

    .line 280
    .line 281
    move/from16 v21, v15

    .line 282
    .line 283
    move-object/from16 v17, v19

    .line 284
    .line 285
    move-object/from16 v19, v8

    .line 286
    .line 287
    invoke-direct/range {v16 .. v22}, Lq3/m;-><init>(Landroid/content/Context;Lf9/k;Lf1/q;Lo1/f;ILandroid/view/View;)V

    .line 288
    .line 289
    .line 290
    move-object/from16 v14, v16

    .line 291
    .line 292
    invoke-virtual {v1, v14}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_d
    check-cast v14, Lf9/a;

    .line 296
    .line 297
    const/16 v0, 0x7d

    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    const/4 v8, 0x1

    .line 301
    invoke-virtual {v1, v0, v8, v4, v4}, Lf1/s;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iput-boolean v8, v1, Lf1/s;->r:Z

    .line 305
    .line 306
    iget-boolean v0, v1, Lf1/s;->S:Z

    .line 307
    .line 308
    if-eqz v0, :cond_e

    .line 309
    .line 310
    invoke-virtual {v1, v14}, Lf1/s;->k(Lf9/a;)V

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_e
    invoke-virtual {v1}, Lf1/s;->k0()V

    .line 315
    .line 316
    .line 317
    :goto_7
    sget-object v0, Lq2/j;->d0:Lq2/i;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 323
    .line 324
    invoke-static {v1, v0, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    sget-object v0, Lq3/k;->d:Lq3/k;

    .line 328
    .line 329
    invoke-static {v1, v0, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    sget-object v0, Lq3/k;->e:Lq3/k;

    .line 333
    .line 334
    invoke-static {v1, v0, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    sget-object v0, Lq3/k;->f:Lq3/k;

    .line 338
    .line 339
    invoke-static {v1, v0, v12}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    sget-object v0, Lq3/k;->g:Lq3/k;

    .line 343
    .line 344
    invoke-static {v1, v0, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    sget-object v0, Lq3/k;->h:Lq3/k;

    .line 348
    .line 349
    invoke-static {v1, v0, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 353
    .line 354
    iget-boolean v4, v1, Lf1/s;->S:Z

    .line 355
    .line 356
    if-nez v4, :cond_f

    .line 357
    .line 358
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-static {v4, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-nez v4, :cond_10

    .line 371
    .line 372
    :cond_f
    invoke-static {v6, v1, v6, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 373
    .line 374
    .line 375
    :cond_10
    sget-object v0, Lq3/k;->b:Lq3/k;

    .line 376
    .line 377
    invoke-static {v1, v0, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    sget-object v0, Lq3/k;->c:Lq3/k;

    .line 381
    .line 382
    invoke-static {v1, v0, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    const/4 v8, 0x1

    .line 386
    invoke-virtual {v1, v8}, Lf1/s;->p(Z)V

    .line 387
    .line 388
    .line 389
    const/4 v0, 0x0

    .line 390
    invoke-virtual {v1, v0}, Lf1/s;->p(Z)V

    .line 391
    .line 392
    .line 393
    goto :goto_8

    .line 394
    :cond_11
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 395
    .line 396
    .line 397
    :goto_8
    invoke-virtual {v1}, Lf1/s;->r()Lf1/w1;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    if-eqz v0, :cond_12

    .line 402
    .line 403
    new-instance v1, Lq3/l;

    .line 404
    .line 405
    move/from16 v3, p0

    .line 406
    .line 407
    move-object/from16 v4, p2

    .line 408
    .line 409
    invoke-direct {v1, v4, v2, v3}, Lq3/l;-><init>(Lf9/k;Lr1/p;I)V

    .line 410
    .line 411
    .line 412
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 413
    .line 414
    :cond_12
    return-void
.end method

.method public static final b(Lf9/k;Lr1/p;Lf9/k;Lf1/s;I)V
    .locals 7

    .line 1
    sget-object v0, Lq3/b;->e:Lq3/b;

    .line 2
    .line 3
    const v1, -0x6a521d79

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x2

    .line 18
    :goto_0
    or-int/2addr v1, p4

    .line 19
    or-int/lit16 v1, v1, 0x180

    .line 20
    .line 21
    and-int/lit16 v2, v1, 0x93

    .line 22
    .line 23
    const/16 v3, 0x92

    .line 24
    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    :goto_1
    and-int/lit8 v3, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {p3, v3, v2}, Lf1/s;->N(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    and-int/lit8 p2, v1, 0xe

    .line 39
    .line 40
    or-int/lit16 p2, p2, 0x6c30

    .line 41
    .line 42
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/viewinterop/a;->a(ILf1/s;Lf9/k;Lr1/p;)V

    .line 43
    .line 44
    .line 45
    move-object v4, v0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 48
    .line 49
    .line 50
    move-object v4, p2

    .line 51
    :goto_2
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    new-instance v1, Ld1/k;

    .line 58
    .line 59
    const/4 v6, 0x2

    .line 60
    move-object v2, p0

    .line 61
    move-object v3, p1

    .line 62
    move v5, p4

    .line 63
    invoke-direct/range {v1 .. v6}, Ld1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr8/e;II)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p2, Lf1/w1;->d:Lf9/n;

    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public static final c(Lq2/h0;)Lq3/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lq2/h0;->n:Lq3/q;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Required value was null."

    .line 7
    .line 8
    invoke-static {p0}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method
