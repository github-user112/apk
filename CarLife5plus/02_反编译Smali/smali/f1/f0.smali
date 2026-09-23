.class public final Lf1/f0;
.super Lp1/a0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/v2;


# instance fields
.field public final b:Lf9/a;

.field public final c:Lf1/p2;

.field public d:Lf1/e0;


# direct methods
.method public constructor <init>(Lf1/p2;Lf9/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp1/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lf1/f0;->b:Lf9/a;

    .line 5
    .line 6
    iput-object p1, p0, Lf1/f0;->c:Lf1/p2;

    .line 7
    .line 8
    new-instance p1, Lf1/e0;

    .line 9
    .line 10
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lp1/f;->g()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-direct {p1, v0, v1}, Lf1/e0;-><init>(J)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lf1/f0;->d:Lf1/e0;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final b()Lp1/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/f0;->d:Lf1/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Lf1/e0;Lp1/f;ZLf9/a;)Lf1/e0;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    invoke-virtual {v6, v1, v0}, Lf1/e0;->c(Lf1/f0;Lp1/f;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_9

    .line 12
    .line 13
    if-eqz p3, :cond_8

    .line 14
    .line 15
    invoke-static {}, Lf1/b;->m()Lh1/e;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 20
    .line 21
    iget v4, v2, Lh1/e;->c:I

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_0
    if-ge v5, v4, :cond_0

    .line 25
    .line 26
    aget-object v8, v3, v5

    .line 27
    .line 28
    check-cast v8, Lf1/r;

    .line 29
    .line 30
    invoke-virtual {v8}, Lf1/r;->b()V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_0
    iget-object v3, v6, Lf1/e0;->e:Ls/c0;

    .line 37
    .line 38
    sget-object v4, Lf1/q2;->a:La2/b;

    .line 39
    .line 40
    invoke-virtual {v4}, La2/b;->y()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ln1/d;

    .line 45
    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    new-instance v5, Ln1/d;

    .line 49
    .line 50
    invoke-direct {v5}, Ln1/d;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, La2/b;->Y(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_1
    :goto_1
    iget v4, v5, Ln1/d;->a:I

    .line 61
    .line 62
    iget-object v8, v3, Ls/c0;->b:[Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v9, v3, Ls/c0;->c:[I

    .line 65
    .line 66
    iget-object v3, v3, Ls/c0;->a:[J

    .line 67
    .line 68
    array-length v10, v3

    .line 69
    add-int/lit8 v10, v10, -0x2

    .line 70
    .line 71
    if-ltz v10, :cond_6

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    :goto_2
    aget-wide v12, v3, v11

    .line 75
    .line 76
    not-long v14, v12

    .line 77
    const/16 v16, 0x7

    .line 78
    .line 79
    shl-long v14, v14, v16

    .line 80
    .line 81
    and-long/2addr v14, v12

    .line 82
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    and-long v14, v14, v16

    .line 88
    .line 89
    cmp-long v18, v14, v16

    .line 90
    .line 91
    if-eqz v18, :cond_5

    .line 92
    .line 93
    sub-int v14, v11, v10

    .line 94
    .line 95
    not-int v14, v14

    .line 96
    ushr-int/lit8 v14, v14, 0x1f

    .line 97
    .line 98
    const/16 v15, 0x8

    .line 99
    .line 100
    rsub-int/lit8 v14, v14, 0x8

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    :goto_3
    if-ge v7, v14, :cond_4

    .line 104
    .line 105
    const-wide/16 v17, 0xff

    .line 106
    .line 107
    and-long v17, v12, v17

    .line 108
    .line 109
    const-wide/16 v19, 0x80

    .line 110
    .line 111
    cmp-long v21, v17, v19

    .line 112
    .line 113
    if-gez v21, :cond_2

    .line 114
    .line 115
    shl-int/lit8 v17, v11, 0x3

    .line 116
    .line 117
    add-int v17, v17, v7

    .line 118
    .line 119
    aget-object v18, v8, v17

    .line 120
    .line 121
    aget v17, v9, v17

    .line 122
    .line 123
    const/16 p3, 0x8

    .line 124
    .line 125
    move-object/from16 v15, v18

    .line 126
    .line 127
    check-cast v15, Lp1/z;

    .line 128
    .line 129
    add-int v0, v4, v17

    .line 130
    .line 131
    iput v0, v5, Ln1/d;->a:I

    .line 132
    .line 133
    invoke-virtual/range {p2 .. p2}, Lp1/f;->e()Lf9/k;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    invoke-interface {v0, v15}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_2
    const/16 p3, 0x8

    .line 144
    .line 145
    :cond_3
    :goto_4
    shr-long v12, v12, p3

    .line 146
    .line 147
    add-int/lit8 v7, v7, 0x1

    .line 148
    .line 149
    move-object/from16 v0, p2

    .line 150
    .line 151
    const/16 v15, 0x8

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    const/16 v0, 0x8

    .line 155
    .line 156
    if-ne v14, v0, :cond_6

    .line 157
    .line 158
    :cond_5
    if-eq v11, v10, :cond_6

    .line 159
    .line 160
    add-int/lit8 v11, v11, 0x1

    .line 161
    .line 162
    move-object/from16 v0, p2

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    iput v4, v5, Ln1/d;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    iget-object v0, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 168
    .line 169
    iget v2, v2, Lh1/e;->c:I

    .line 170
    .line 171
    const/4 v7, 0x0

    .line 172
    :goto_5
    if-ge v7, v2, :cond_8

    .line 173
    .line 174
    aget-object v3, v0, v7

    .line 175
    .line 176
    check-cast v3, Lf1/r;

    .line 177
    .line 178
    invoke-virtual {v3}, Lf1/r;->a()V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v7, v7, 0x1

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :goto_6
    iget-object v3, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 185
    .line 186
    iget v2, v2, Lh1/e;->c:I

    .line 187
    .line 188
    const/4 v7, 0x0

    .line 189
    :goto_7
    if-ge v7, v2, :cond_7

    .line 190
    .line 191
    aget-object v4, v3, v7

    .line 192
    .line 193
    check-cast v4, Lf1/r;

    .line 194
    .line 195
    invoke-virtual {v4}, Lf1/r;->a()V

    .line 196
    .line 197
    .line 198
    add-int/lit8 v7, v7, 0x1

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_7
    throw v0

    .line 202
    :cond_8
    return-object v6

    .line 203
    :cond_9
    new-instance v3, Ls/c0;

    .line 204
    .line 205
    invoke-direct {v3}, Ls/c0;-><init>()V

    .line 206
    .line 207
    .line 208
    sget-object v0, Lf1/q2;->a:La2/b;

    .line 209
    .line 210
    invoke-virtual {v0}, La2/b;->y()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Ln1/d;

    .line 215
    .line 216
    if-nez v2, :cond_a

    .line 217
    .line 218
    new-instance v2, Ln1/d;

    .line 219
    .line 220
    invoke-direct {v2}, Ln1/d;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v2}, La2/b;->Y(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_a
    iget v4, v2, Ln1/d;->a:I

    .line 227
    .line 228
    invoke-static {}, Lf1/b;->m()Lh1/e;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    iget-object v0, v7, Lh1/e;->a:[Ljava/lang/Object;

    .line 233
    .line 234
    iget v5, v7, Lh1/e;->c:I

    .line 235
    .line 236
    const/4 v8, 0x0

    .line 237
    :goto_8
    if-ge v8, v5, :cond_b

    .line 238
    .line 239
    aget-object v9, v0, v8

    .line 240
    .line 241
    check-cast v9, Lf1/r;

    .line 242
    .line 243
    invoke-virtual {v9}, Lf1/r;->b()V

    .line 244
    .line 245
    .line 246
    add-int/lit8 v8, v8, 0x1

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_b
    add-int/lit8 v0, v4, 0x1

    .line 250
    .line 251
    :try_start_1
    iput v0, v2, Ln1/d;->a:I

    .line 252
    .line 253
    new-instance v0, Ld0/m0;

    .line 254
    .line 255
    const/4 v5, 0x1

    .line 256
    invoke-direct/range {v0 .. v5}, Ld0/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 257
    .line 258
    .line 259
    move-object/from16 v5, p4

    .line 260
    .line 261
    invoke-static {v5, v0}, Ln6/a;->m(Lf9/a;Lf9/k;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iput v4, v2, Ln1/d;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 266
    .line 267
    iget-object v2, v7, Lh1/e;->a:[Ljava/lang/Object;

    .line 268
    .line 269
    iget v4, v7, Lh1/e;->c:I

    .line 270
    .line 271
    const/4 v7, 0x0

    .line 272
    :goto_9
    if-ge v7, v4, :cond_c

    .line 273
    .line 274
    aget-object v5, v2, v7

    .line 275
    .line 276
    check-cast v5, Lf1/r;

    .line 277
    .line 278
    invoke-virtual {v5}, Lf1/r;->a()V

    .line 279
    .line 280
    .line 281
    add-int/lit8 v7, v7, 0x1

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_c
    sget-object v2, Lp1/l;->c:Ljava/lang/Object;

    .line 285
    .line 286
    monitor-enter v2

    .line 287
    :try_start_2
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    iget-object v5, v6, Lf1/e0;->f:Ljava/lang/Object;

    .line 292
    .line 293
    sget-object v7, Lf1/e0;->h:Ljava/lang/Object;

    .line 294
    .line 295
    if-eq v5, v7, :cond_d

    .line 296
    .line 297
    iget-object v7, v1, Lf1/f0;->c:Lf1/p2;

    .line 298
    .line 299
    if-eqz v7, :cond_d

    .line 300
    .line 301
    invoke-interface {v7, v0, v5}, Lf1/p2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    const/4 v7, 0x1

    .line 306
    if-ne v5, v7, :cond_d

    .line 307
    .line 308
    iput-object v3, v6, Lf1/e0;->e:Ls/c0;

    .line 309
    .line 310
    invoke-virtual {v6, v1, v4}, Lf1/e0;->d(Lf1/f0;Lp1/f;)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    iput v0, v6, Lf1/e0;->g:I

    .line 315
    .line 316
    move-object v5, v6

    .line 317
    goto :goto_a

    .line 318
    :catchall_1
    move-exception v0

    .line 319
    goto :goto_b

    .line 320
    :cond_d
    iget-object v5, v1, Lf1/f0;->d:Lf1/e0;

    .line 321
    .line 322
    invoke-static {v5, v1, v4}, Lp1/l;->n(Lp1/b0;Lf1/f0;Lp1/f;)Lp1/b0;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    check-cast v5, Lf1/e0;

    .line 327
    .line 328
    iput-object v3, v5, Lf1/e0;->e:Ls/c0;

    .line 329
    .line 330
    invoke-virtual {v5, v1, v4}, Lf1/e0;->d(Lf1/f0;Lp1/f;)I

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    iput v3, v5, Lf1/e0;->g:I

    .line 335
    .line 336
    iput-object v0, v5, Lf1/e0;->f:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    .line 338
    :goto_a
    monitor-exit v2

    .line 339
    sget-object v0, Lf1/q2;->a:La2/b;

    .line 340
    .line 341
    invoke-virtual {v0}, La2/b;->y()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Ln1/d;

    .line 346
    .line 347
    if-eqz v0, :cond_e

    .line 348
    .line 349
    iget v0, v0, Ln1/d;->a:I

    .line 350
    .line 351
    if-nez v0, :cond_e

    .line 352
    .line 353
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lp1/f;->m()V

    .line 358
    .line 359
    .line 360
    monitor-enter v2

    .line 361
    :try_start_3
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lp1/f;->g()J

    .line 366
    .line 367
    .line 368
    move-result-wide v3

    .line 369
    iput-wide v3, v5, Lf1/e0;->c:J

    .line 370
    .line 371
    invoke-virtual {v0}, Lp1/f;->h()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    iput v0, v5, Lf1/e0;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 376
    .line 377
    monitor-exit v2

    .line 378
    return-object v5

    .line 379
    :catchall_2
    move-exception v0

    .line 380
    monitor-exit v2

    .line 381
    throw v0

    .line 382
    :cond_e
    return-object v5

    .line 383
    :goto_b
    monitor-exit v2

    .line 384
    throw v0

    .line 385
    :catchall_3
    move-exception v0

    .line 386
    iget-object v2, v7, Lh1/e;->a:[Ljava/lang/Object;

    .line 387
    .line 388
    iget v3, v7, Lh1/e;->c:I

    .line 389
    .line 390
    const/4 v7, 0x0

    .line 391
    :goto_c
    if-ge v7, v3, :cond_f

    .line 392
    .line 393
    aget-object v4, v2, v7

    .line 394
    .line 395
    check-cast v4, Lf1/r;

    .line 396
    .line 397
    invoke-virtual {v4}, Lf1/r;->a()V

    .line 398
    .line 399
    .line 400
    add-int/lit8 v7, v7, 0x1

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_f
    throw v0
.end method

.method public final g()Lf1/e0;
    .locals 4

    .line 1
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lf1/f0;->d:Lf1/e0;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lp1/l;->j(Lp1/b0;Lp1/f;)Lp1/b0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lf1/e0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object v3, p0, Lf1/f0;->b:Lf9/a;

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0, v2, v3}, Lf1/f0;->f(Lf1/e0;Lp1/f;ZLf9/a;)Lf1/e0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lp1/f;->e()Lf9/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lf1/f0;->d:Lf1/e0;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lp1/l;->j(Lp1/b0;Lp1/f;)Lp1/b0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lf1/e0;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    iget-object v3, p0, Lf1/f0;->b:Lf9/a;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0, v2, v3}, Lf1/f0;->f(Lf1/e0;Lp1/f;ZLf9/a;)Lf1/e0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lf1/e0;->f:Ljava/lang/Object;

    .line 34
    .line 35
    return-object v0
.end method

.method public final j(Lp1/b0;)V
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/e0;

    .line 7
    .line 8
    iput-object p1, p0, Lf1/f0;->d:Lf1/e0;

    .line 9
    .line 10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/f0;->d:Lf1/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lp1/l;->i(Lp1/b0;)Lp1/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf1/e0;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "DerivedState(value="

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lf1/f0;->d:Lf1/e0;

    .line 17
    .line 18
    invoke-static {v1}, Lp1/l;->i(Lp1/b0;)Lp1/b0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lf1/e0;

    .line 23
    .line 24
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, p0, v2}, Lf1/e0;->c(Lf1/f0;Lp1/f;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v1, v1, Lf1/e0;->f:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v1, "<Not calculated>"

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ")@"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
