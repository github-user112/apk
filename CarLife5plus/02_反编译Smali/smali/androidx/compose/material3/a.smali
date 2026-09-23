.class public abstract Landroidx/compose/material3/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:Lv/e0;

.field public static final g:Lv/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Le1/n;->b:F

    .line 2
    .line 3
    sput v0, Landroidx/compose/material3/a;->a:F

    .line 4
    .line 5
    sget v1, Le1/n;->g:F

    .line 6
    .line 7
    sput v1, Landroidx/compose/material3/a;->b:F

    .line 8
    .line 9
    sget v1, Le1/n;->f:F

    .line 10
    .line 11
    sput v1, Landroidx/compose/material3/a;->c:F

    .line 12
    .line 13
    sget v1, Le1/n;->d:F

    .line 14
    .line 15
    sput v1, Landroidx/compose/material3/a;->d:F

    .line 16
    .line 17
    sub-float/2addr v1, v0

    .line 18
    const/4 v0, 0x2

    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr v1, v0

    .line 21
    sput v1, Landroidx/compose/material3/a;->e:F

    .line 22
    .line 23
    new-instance v0, Lv/e0;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Lv/e0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/compose/material3/a;->f:Lv/e0;

    .line 30
    .line 31
    new-instance v0, Lv/v0;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x6

    .line 35
    const/16 v3, 0x64

    .line 36
    .line 37
    invoke-direct {v0, v3, v1, v2}, Lv/v0;-><init>(ILv/t;I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Landroidx/compose/material3/a;->g:Lv/v0;

    .line 41
    .line 42
    return-void
.end method

.method public static final a(ZLf9/k;Lr1/p;ZLc1/n2;Lf1/s;I)V
    .locals 45

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    const v0, 0x5e33f474

    .line 6
    .line 7
    .line 8
    invoke-virtual {v6, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    move/from16 v1, p0

    .line 12
    .line 13
    invoke-virtual {v6, v1}, Lf1/s;->g(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int v0, p6, v0

    .line 23
    .line 24
    and-int/lit8 v3, p6, 0x30

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v6, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/16 v3, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v3, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v3

    .line 40
    :cond_2
    const v3, 0x196d80

    .line 41
    .line 42
    .line 43
    or-int/2addr v0, v3

    .line 44
    const v3, 0x92493

    .line 45
    .line 46
    .line 47
    and-int/2addr v3, v0

    .line 48
    const v4, 0x92492

    .line 49
    .line 50
    .line 51
    if-ne v3, v4, :cond_4

    .line 52
    .line 53
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 61
    .line 62
    .line 63
    move-object/from16 v3, p2

    .line 64
    .line 65
    move/from16 v4, p3

    .line 66
    .line 67
    move-object/from16 v5, p4

    .line 68
    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :cond_4
    :goto_2
    invoke-virtual {v6}, Lf1/s;->S()V

    .line 72
    .line 73
    .line 74
    and-int/lit8 v3, p6, 0x1

    .line 75
    .line 76
    sget-object v4, Lr1/m;->a:Lr1/m;

    .line 77
    .line 78
    const v5, -0x70001

    .line 79
    .line 80
    .line 81
    if-eqz v3, :cond_6

    .line 82
    .line 83
    invoke-virtual {v6}, Lf1/s;->x()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_5
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 91
    .line 92
    .line 93
    and-int/2addr v0, v5

    .line 94
    move-object/from16 v8, p2

    .line 95
    .line 96
    move/from16 v3, p3

    .line 97
    .line 98
    move-object/from16 v11, p4

    .line 99
    .line 100
    :goto_3
    move v6, v0

    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :cond_6
    :goto_4
    sget-object v3, Lc1/y;->a:Lf1/w2;

    .line 104
    .line 105
    invoke-virtual {v6, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lc1/w;

    .line 110
    .line 111
    iget-object v8, v3, Lc1/w;->O:Lc1/n2;

    .line 112
    .line 113
    iget-wide v9, v3, Lc1/w;->p:J

    .line 114
    .line 115
    if-nez v8, :cond_7

    .line 116
    .line 117
    new-instance v11, Lc1/n2;

    .line 118
    .line 119
    sget v8, Le1/n;->a:F

    .line 120
    .line 121
    const/16 v8, 0xa

    .line 122
    .line 123
    invoke-static {v3, v8}, Lc1/y;->c(Lc1/w;I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v12

    .line 127
    const/16 v8, 0x1a

    .line 128
    .line 129
    invoke-static {v3, v8}, Lc1/y;->c(Lc1/w;I)J

    .line 130
    .line 131
    .line 132
    move-result-wide v14

    .line 133
    sget-wide v16, Ly1/q;->l:J

    .line 134
    .line 135
    const/16 v8, 0xb

    .line 136
    .line 137
    invoke-static {v3, v8}, Lc1/y;->c(Lc1/w;I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v18

    .line 141
    const/16 v8, 0x18

    .line 142
    .line 143
    invoke-static {v3, v8}, Lc1/y;->c(Lc1/w;I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v20

    .line 147
    const v44, -0x70001

    .line 148
    .line 149
    .line 150
    const/16 v5, 0x27

    .line 151
    .line 152
    invoke-static {v3, v5}, Lc1/y;->c(Lc1/w;I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v22

    .line 156
    invoke-static {v3, v8}, Lc1/y;->c(Lc1/w;I)J

    .line 157
    .line 158
    .line 159
    move-result-wide v24

    .line 160
    invoke-static {v3, v5}, Lc1/y;->c(Lc1/w;I)J

    .line 161
    .line 162
    .line 163
    move-result-wide v26

    .line 164
    const/16 v8, 0x23

    .line 165
    .line 166
    invoke-static {v3, v8}, Lc1/y;->c(Lc1/w;I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v7

    .line 170
    const/high16 v5, 0x3f800000    # 1.0f

    .line 171
    .line 172
    invoke-static {v5, v7, v8}, Ly1/q;->b(FJ)J

    .line 173
    .line 174
    .line 175
    move-result-wide v7

    .line 176
    invoke-static {v7, v8, v9, v10}, Ly1/h0;->k(JJ)J

    .line 177
    .line 178
    .line 179
    move-result-wide v28

    .line 180
    const/16 v5, 0x12

    .line 181
    .line 182
    invoke-static {v3, v5}, Lc1/y;->c(Lc1/w;I)J

    .line 183
    .line 184
    .line 185
    move-result-wide v7

    .line 186
    const v5, 0x3df5c28f    # 0.12f

    .line 187
    .line 188
    .line 189
    invoke-static {v5, v7, v8}, Ly1/q;->b(FJ)J

    .line 190
    .line 191
    .line 192
    move-result-wide v7

    .line 193
    invoke-static {v7, v8, v9, v10}, Ly1/h0;->k(JJ)J

    .line 194
    .line 195
    .line 196
    move-result-wide v30

    .line 197
    const/16 v7, 0x12

    .line 198
    .line 199
    invoke-static {v3, v7}, Lc1/y;->c(Lc1/w;I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v5

    .line 203
    const v8, 0x3ec28f5c    # 0.38f

    .line 204
    .line 205
    .line 206
    invoke-static {v8, v5, v6}, Ly1/q;->b(FJ)J

    .line 207
    .line 208
    .line 209
    move-result-wide v5

    .line 210
    invoke-static {v5, v6, v9, v10}, Ly1/h0;->k(JJ)J

    .line 211
    .line 212
    .line 213
    move-result-wide v34

    .line 214
    invoke-static {v3, v7}, Lc1/y;->c(Lc1/w;I)J

    .line 215
    .line 216
    .line 217
    move-result-wide v5

    .line 218
    invoke-static {v8, v5, v6}, Ly1/q;->b(FJ)J

    .line 219
    .line 220
    .line 221
    move-result-wide v5

    .line 222
    invoke-static {v5, v6, v9, v10}, Ly1/h0;->k(JJ)J

    .line 223
    .line 224
    .line 225
    move-result-wide v36

    .line 226
    const/16 v5, 0x27

    .line 227
    .line 228
    invoke-static {v3, v5}, Lc1/y;->c(Lc1/w;I)J

    .line 229
    .line 230
    .line 231
    move-result-wide v7

    .line 232
    const v6, 0x3df5c28f    # 0.12f

    .line 233
    .line 234
    .line 235
    invoke-static {v6, v7, v8}, Ly1/q;->b(FJ)J

    .line 236
    .line 237
    .line 238
    move-result-wide v7

    .line 239
    invoke-static {v7, v8, v9, v10}, Ly1/h0;->k(JJ)J

    .line 240
    .line 241
    .line 242
    move-result-wide v38

    .line 243
    const/16 v7, 0x12

    .line 244
    .line 245
    invoke-static {v3, v7}, Lc1/y;->c(Lc1/w;I)J

    .line 246
    .line 247
    .line 248
    move-result-wide v7

    .line 249
    invoke-static {v6, v7, v8}, Ly1/q;->b(FJ)J

    .line 250
    .line 251
    .line 252
    move-result-wide v6

    .line 253
    invoke-static {v6, v7, v9, v10}, Ly1/h0;->k(JJ)J

    .line 254
    .line 255
    .line 256
    move-result-wide v40

    .line 257
    invoke-static {v3, v5}, Lc1/y;->c(Lc1/w;I)J

    .line 258
    .line 259
    .line 260
    move-result-wide v5

    .line 261
    const v7, 0x3ec28f5c    # 0.38f

    .line 262
    .line 263
    .line 264
    invoke-static {v7, v5, v6}, Ly1/q;->b(FJ)J

    .line 265
    .line 266
    .line 267
    move-result-wide v5

    .line 268
    invoke-static {v5, v6, v9, v10}, Ly1/h0;->k(JJ)J

    .line 269
    .line 270
    .line 271
    move-result-wide v42

    .line 272
    move-wide/from16 v32, v16

    .line 273
    .line 274
    invoke-direct/range {v11 .. v43}, Lc1/n2;-><init>(JJJJJJJJJJJJJJJJ)V

    .line 275
    .line 276
    .line 277
    iput-object v11, v3, Lc1/w;->O:Lc1/n2;

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_7
    const v44, -0x70001

    .line 281
    .line 282
    .line 283
    move-object v11, v8

    .line 284
    :goto_5
    and-int v0, v0, v44

    .line 285
    .line 286
    const/4 v3, 0x1

    .line 287
    move-object v8, v4

    .line 288
    goto/16 :goto_3

    .line 289
    .line 290
    :goto_6
    invoke-virtual/range {p5 .. p5}, Lf1/s;->q()V

    .line 291
    .line 292
    .line 293
    const v0, 0x2eb3c1f3

    .line 294
    .line 295
    .line 296
    move-object/from16 v7, p5

    .line 297
    .line 298
    invoke-virtual {v7, v0}, Lf1/s;->W(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 306
    .line 307
    if-ne v0, v5, :cond_8

    .line 308
    .line 309
    invoke-static {v7}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    :cond_8
    check-cast v0, Lb0/k;

    .line 314
    .line 315
    const/4 v5, 0x0

    .line 316
    invoke-virtual {v7, v5}, Lf1/s;->p(Z)V

    .line 317
    .line 318
    .line 319
    if-eqz v2, :cond_9

    .line 320
    .line 321
    sget-object v4, Lc1/l0;->a:Lf1/w2;

    .line 322
    .line 323
    move-object v4, v0

    .line 324
    sget-object v0, Landroidx/compose/material3/MinimumInteractiveModifier;->a:Landroidx/compose/material3/MinimumInteractiveModifier;

    .line 325
    .line 326
    move-object v2, v4

    .line 327
    new-instance v4, Ly2/g;

    .line 328
    .line 329
    const/4 v9, 0x2

    .line 330
    invoke-direct {v4, v9}, Ly2/g;-><init>(I)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v5, p1

    .line 334
    .line 335
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/selection/b;->a(Lr1/p;ZLb0/k;ZLy2/g;Lf9/k;)Lr1/p;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    move-object v0, v2

    .line 340
    :goto_7
    move v2, v3

    .line 341
    goto :goto_8

    .line 342
    :cond_9
    const/4 v9, 0x2

    .line 343
    goto :goto_7

    .line 344
    :goto_8
    invoke-interface {v8, v4}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/c;->n(Lr1/p;I)Lr1/p;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    sget v3, Landroidx/compose/material3/a;->c:F

    .line 353
    .line 354
    sget v4, Landroidx/compose/material3/a;->d:F

    .line 355
    .line 356
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/layout/c;->f(Lr1/p;FF)Lr1/p;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    sget v3, Le1/n;->a:F

    .line 361
    .line 362
    const/4 v3, 0x5

    .line 363
    invoke-static {v3, v7}, Lc1/l1;->a(ILf1/s;)Ly1/l0;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    shl-int/lit8 v3, v6, 0x3

    .line 368
    .line 369
    and-int/lit8 v3, v3, 0x70

    .line 370
    .line 371
    or-int/lit16 v3, v3, 0x6180

    .line 372
    .line 373
    move-object v4, v0

    .line 374
    move-object v0, v1

    .line 375
    move-object v6, v7

    .line 376
    move/from16 v1, p0

    .line 377
    .line 378
    move v7, v3

    .line 379
    move-object v3, v11

    .line 380
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/a;->b(Lr1/p;ZZLc1/n2;Lb0/k;Ly1/l0;Lf1/s;I)V

    .line 381
    .line 382
    .line 383
    move v4, v2

    .line 384
    move-object v5, v3

    .line 385
    move-object v3, v8

    .line 386
    :goto_9
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    if-eqz v7, :cond_a

    .line 391
    .line 392
    new-instance v0, Lc1/o2;

    .line 393
    .line 394
    move/from16 v1, p0

    .line 395
    .line 396
    move-object/from16 v2, p1

    .line 397
    .line 398
    move/from16 v6, p6

    .line 399
    .line 400
    invoke-direct/range {v0 .. v6}, Lc1/o2;-><init>(ZLf9/k;Lr1/p;ZLc1/n2;I)V

    .line 401
    .line 402
    .line 403
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 404
    .line 405
    :cond_a
    return-void
.end method

.method public static final b(Lr1/p;ZZLc1/n2;Lb0/k;Ly1/l0;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move-object/from16 v0, p6

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    const v8, -0x5f0405ca

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v8}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v8, v7, 0x6

    .line 24
    .line 25
    if-nez v8, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_0

    .line 32
    .line 33
    const/4 v8, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v8, 0x2

    .line 36
    :goto_0
    or-int/2addr v8, v7

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v8, v7

    .line 39
    :goto_1
    and-int/lit8 v11, v7, 0x30

    .line 40
    .line 41
    if-nez v11, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lf1/s;->g(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    if-eqz v11, :cond_2

    .line 48
    .line 49
    const/16 v11, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v11, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v8, v11

    .line 55
    :cond_3
    and-int/lit16 v11, v7, 0x180

    .line 56
    .line 57
    if-nez v11, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lf1/s;->g(Z)Z

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    if-eqz v11, :cond_4

    .line 64
    .line 65
    const/16 v11, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v11, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v8, v11

    .line 71
    :cond_5
    and-int/lit16 v11, v7, 0xc00

    .line 72
    .line 73
    if-nez v11, :cond_7

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_6

    .line 80
    .line 81
    const/16 v11, 0x800

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    const/16 v11, 0x400

    .line 85
    .line 86
    :goto_4
    or-int/2addr v8, v11

    .line 87
    :cond_7
    and-int/lit16 v11, v7, 0x6000

    .line 88
    .line 89
    if-nez v11, :cond_9

    .line 90
    .line 91
    const/4 v11, 0x0

    .line 92
    invoke-virtual {v0, v11}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-eqz v11, :cond_8

    .line 97
    .line 98
    const/16 v11, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v11, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v8, v11

    .line 104
    :cond_9
    const/high16 v11, 0x30000

    .line 105
    .line 106
    and-int/2addr v11, v7

    .line 107
    if-nez v11, :cond_b

    .line 108
    .line 109
    invoke-virtual {v0, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_a

    .line 114
    .line 115
    const/high16 v11, 0x20000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_a
    const/high16 v11, 0x10000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v8, v11

    .line 121
    :cond_b
    const/high16 v11, 0x180000

    .line 122
    .line 123
    and-int/2addr v11, v7

    .line 124
    if-nez v11, :cond_d

    .line 125
    .line 126
    invoke-virtual {v0, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-eqz v11, :cond_c

    .line 131
    .line 132
    const/high16 v11, 0x100000

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_c
    const/high16 v11, 0x80000

    .line 136
    .line 137
    :goto_7
    or-int/2addr v8, v11

    .line 138
    :cond_d
    const v11, 0x92493

    .line 139
    .line 140
    .line 141
    and-int/2addr v8, v11

    .line 142
    const v11, 0x92492

    .line 143
    .line 144
    .line 145
    if-ne v8, v11, :cond_f

    .line 146
    .line 147
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-nez v8, :cond_e

    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_e
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_e

    .line 158
    .line 159
    :cond_f
    :goto_8
    if-eqz v3, :cond_11

    .line 160
    .line 161
    if-eqz v2, :cond_10

    .line 162
    .line 163
    iget-wide v11, v4, Lc1/n2;->b:J

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_10
    iget-wide v11, v4, Lc1/n2;->f:J

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_11
    if-eqz v2, :cond_12

    .line 170
    .line 171
    iget-wide v11, v4, Lc1/n2;->j:J

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_12
    iget-wide v11, v4, Lc1/n2;->n:J

    .line 175
    .line 176
    :goto_9
    if-eqz v3, :cond_14

    .line 177
    .line 178
    if-eqz v2, :cond_13

    .line 179
    .line 180
    iget-wide v13, v4, Lc1/n2;->a:J

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_13
    iget-wide v13, v4, Lc1/n2;->e:J

    .line 184
    .line 185
    goto :goto_a

    .line 186
    :cond_14
    if-eqz v2, :cond_15

    .line 187
    .line 188
    iget-wide v13, v4, Lc1/n2;->i:J

    .line 189
    .line 190
    goto :goto_a

    .line 191
    :cond_15
    iget-wide v13, v4, Lc1/n2;->m:J

    .line 192
    .line 193
    :goto_a
    sget v8, Le1/n;->a:F

    .line 194
    .line 195
    const/4 v8, 0x5

    .line 196
    invoke-static {v8, v0}, Lc1/l1;->a(ILf1/s;)Ly1/l0;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    sget v15, Le1/n;->e:F

    .line 201
    .line 202
    if-eqz v3, :cond_17

    .line 203
    .line 204
    if-eqz v2, :cond_16

    .line 205
    .line 206
    iget-wide v9, v4, Lc1/n2;->c:J

    .line 207
    .line 208
    goto :goto_b

    .line 209
    :cond_16
    iget-wide v9, v4, Lc1/n2;->g:J

    .line 210
    .line 211
    goto :goto_b

    .line 212
    :cond_17
    if-eqz v2, :cond_18

    .line 213
    .line 214
    iget-wide v9, v4, Lc1/n2;->k:J

    .line 215
    .line 216
    goto :goto_b

    .line 217
    :cond_18
    iget-wide v9, v4, Lc1/n2;->o:J

    .line 218
    .line 219
    :goto_b
    new-instance v3, Ly1/n0;

    .line 220
    .line 221
    invoke-direct {v3, v9, v10}, Ly1/n0;-><init>(J)V

    .line 222
    .line 223
    .line 224
    new-instance v9, Landroidx/compose/foundation/BorderModifierNodeElement;

    .line 225
    .line 226
    invoke-direct {v9, v15, v3, v8}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLy1/n0;Ly1/l0;)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v1, v9}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-static {v3, v11, v12, v8}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    sget-object v8, Lr1/c;->a:Lr1/h;

    .line 238
    .line 239
    const/4 v9, 0x0

    .line 240
    invoke-static {v8, v9}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    invoke-static {v0, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    sget-object v12, Lq2/j;->d0:Lq2/i;

    .line 257
    .line 258
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    sget-object v12, Lq2/i;->b:Lq2/a0;

    .line 262
    .line 263
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 264
    .line 265
    .line 266
    iget-boolean v15, v0, Lf1/s;->S:Z

    .line 267
    .line 268
    if-eqz v15, :cond_19

    .line 269
    .line 270
    invoke-virtual {v0, v12}, Lf1/s;->k(Lf9/a;)V

    .line 271
    .line 272
    .line 273
    goto :goto_c

    .line 274
    :cond_19
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 275
    .line 276
    .line 277
    :goto_c
    sget-object v15, Lq2/i;->e:Lq2/h;

    .line 278
    .line 279
    invoke-static {v0, v15, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    sget-object v8, Lq2/i;->d:Lq2/h;

    .line 283
    .line 284
    invoke-static {v0, v8, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    sget-object v11, Lq2/i;->f:Lq2/h;

    .line 288
    .line 289
    iget-boolean v9, v0, Lf1/s;->S:Z

    .line 290
    .line 291
    if-nez v9, :cond_1a

    .line 292
    .line 293
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-static {v9, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_1b

    .line 306
    .line 307
    :cond_1a
    invoke-static {v10, v0, v10, v11}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 308
    .line 309
    .line 310
    :cond_1b
    sget-object v1, Lq2/i;->c:Lq2/h;

    .line 311
    .line 312
    invoke-static {v0, v1, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    sget-object v3, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    .line 316
    .line 317
    sget-object v9, Lr1/c;->d:Lr1/h;

    .line 318
    .line 319
    invoke-virtual {v3, v9}, Landroidx/compose/foundation/layout/b;->a(Lr1/d;)Lr1/p;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    new-instance v9, Landroidx/compose/material3/ThumbElement;

    .line 324
    .line 325
    invoke-direct {v9, v5, v2}, Landroidx/compose/material3/ThumbElement;-><init>(Lb0/k;Z)V

    .line 326
    .line 327
    .line 328
    check-cast v3, Lq2/z0;

    .line 329
    .line 330
    invoke-static {v3, v9}, Lp9/v;->f(Lr1/p;Lr1/p;)Lr1/p;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    sget v9, Le1/n;->c:F

    .line 335
    .line 336
    const/4 v10, 0x2

    .line 337
    int-to-float v10, v10

    .line 338
    div-float/2addr v9, v10

    .line 339
    const/16 v10, 0x36

    .line 340
    .line 341
    const/4 v2, 0x4

    .line 342
    invoke-static {v9, v0, v10, v2}, Lc1/h1;->a(FLf1/s;II)Lx/n0;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-static {v3, v5, v2}, Landroidx/compose/foundation/c;->a(Lr1/p;Lb0/k;Lx/n0;)Lr1/p;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-static {v2, v13, v14, v6}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    sget-object v3, Lr1/c;->e:Lr1/h;

    .line 355
    .line 356
    const/4 v9, 0x0

    .line 357
    invoke-static {v3, v9}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    .line 366
    .line 367
    .line 368
    move-result-object v10

    .line 369
    invoke-static {v0, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 374
    .line 375
    .line 376
    iget-boolean v13, v0, Lf1/s;->S:Z

    .line 377
    .line 378
    if-eqz v13, :cond_1c

    .line 379
    .line 380
    invoke-virtual {v0, v12}, Lf1/s;->k(Lf9/a;)V

    .line 381
    .line 382
    .line 383
    goto :goto_d

    .line 384
    :cond_1c
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 385
    .line 386
    .line 387
    :goto_d
    invoke-static {v0, v15, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    invoke-static {v0, v8, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    iget-boolean v3, v0, Lf1/s;->S:Z

    .line 394
    .line 395
    if-nez v3, :cond_1d

    .line 396
    .line 397
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    invoke-static {v3, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-nez v3, :cond_1e

    .line 410
    .line 411
    :cond_1d
    invoke-static {v9, v0, v9, v11}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 412
    .line 413
    .line 414
    :cond_1e
    invoke-static {v0, v1, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    const v1, 0x4558f502

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v1}, Lf1/s;->W(I)V

    .line 421
    .line 422
    .line 423
    const/4 v9, 0x0

    .line 424
    invoke-virtual {v0, v9}, Lf1/s;->p(Z)V

    .line 425
    .line 426
    .line 427
    const/4 v1, 0x1

    .line 428
    invoke-virtual {v0, v1}, Lf1/s;->p(Z)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v1}, Lf1/s;->p(Z)V

    .line 432
    .line 433
    .line 434
    :goto_e
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    if-eqz v8, :cond_1f

    .line 439
    .line 440
    new-instance v0, Lc1/p2;

    .line 441
    .line 442
    move-object/from16 v1, p0

    .line 443
    .line 444
    move/from16 v2, p1

    .line 445
    .line 446
    move/from16 v3, p2

    .line 447
    .line 448
    invoke-direct/range {v0 .. v7}, Lc1/p2;-><init>(Lr1/p;ZZLc1/n2;Lb0/k;Ly1/l0;I)V

    .line 449
    .line 450
    .line 451
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 452
    .line 453
    :cond_1f
    return-void
.end method
