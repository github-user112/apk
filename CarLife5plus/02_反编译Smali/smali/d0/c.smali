.class public abstract Ld0/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ld0/b;

.field public static final b:Ld0/b;

.field public static final c:Lp2/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld0/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ld0/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ld0/c;->a:Ld0/b;

    .line 8
    .line 9
    new-instance v0, Ld0/b;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Ld0/b;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Ld0/c;->b:Ld0/b;

    .line 16
    .line 17
    new-instance v0, Lb3/f0;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lp2/f;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lp2/f;-><init>(Lf9/a;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Ld0/c;->c:Lp2/f;

    .line 29
    .line 30
    return-void
.end method

.method public static final a(Lf1/s;Lr1/p;)V
    .locals 5

    .line 1
    sget-object v0, Ld0/l;->c:Ld0/l;

    .line 2
    .line 3
    iget-wide v1, p0, Lf1/s;->T:J

    .line 4
    .line 5
    const/16 v3, 0x20

    .line 6
    .line 7
    ushr-long v3, v1, v3

    .line 8
    .line 9
    xor-long/2addr v1, v3

    .line 10
    long-to-int v2, v1

    .line 11
    invoke-static {p0, p1}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lf1/s;->l()Lf1/q1;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v3, Lq2/j;->d0:Lq2/i;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v3, Lq2/i;->b:Lq2/a0;

    .line 25
    .line 26
    iget-object v4, p0, Lf1/s;->a:La2/b;

    .line 27
    .line 28
    invoke-virtual {p0}, Lf1/s;->a0()V

    .line 29
    .line 30
    .line 31
    iget-boolean v4, p0, Lf1/s;->S:Z

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Lf1/s;->k(Lf9/a;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lf1/s;->k0()V

    .line 40
    .line 41
    .line 42
    :goto_0
    sget-object v3, Lq2/i;->e:Lq2/h;

    .line 43
    .line 44
    invoke-static {p0, v3, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 48
    .line 49
    invoke-static {p0, v0, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 53
    .line 54
    invoke-static {p0, v0, p1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lq2/i;->f:Lq2/h;

    .line 58
    .line 59
    iget-boolean v0, p0, Lf1/s;->S:Z

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lf1/s;->K()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    :cond_1
    invoke-static {v2, p0, v2, p1}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Lf1/s;->p(Z)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static final b(Lo2/l0;)Ld0/k0;
    .locals 1

    .line 1
    invoke-interface {p0}, Lo2/l0;->x()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Ld0/k0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Ld0/k0;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static final c(Ld0/k0;)F
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget p0, p0, Ld0/k0;->a:F

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public static d(Ld0/j0;IIIIILo2/o0;Ljava/util/List;[Lo2/v0;I)Lo2/n0;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    move/from16 v5, p9

    .line 12
    .line 13
    int-to-long v6, v3

    .line 14
    new-array v8, v5, [I

    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    const/4 v14, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    :goto_0
    if-ge v11, v5, :cond_5

    .line 25
    .line 26
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v17

    .line 30
    move-object/from16 v9, v17

    .line 31
    .line 32
    check-cast v9, Lo2/l0;

    .line 33
    .line 34
    invoke-static {v9}, Ld0/c;->b(Lo2/l0;)Ld0/k0;

    .line 35
    .line 36
    .line 37
    move-result-object v17

    .line 38
    invoke-static/range {v17 .. v17}, Ld0/c;->c(Ld0/k0;)F

    .line 39
    .line 40
    .line 41
    move-result v17

    .line 42
    cmpl-float v18, v17, v16

    .line 43
    .line 44
    if-lez v18, :cond_0

    .line 45
    .line 46
    add-float v15, v15, v17

    .line 47
    .line 48
    add-int/lit8 v12, v12, 0x1

    .line 49
    .line 50
    move-wide/from16 v18, v6

    .line 51
    .line 52
    move/from16 v20, v11

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_0
    sub-int v14, v1, v13

    .line 56
    .line 57
    aget-object v17, p8, v11

    .line 58
    .line 59
    move-wide/from16 v18, v6

    .line 60
    .line 61
    if-nez v17, :cond_3

    .line 62
    .line 63
    const v6, 0x7fffffff

    .line 64
    .line 65
    .line 66
    if-ne v1, v6, :cond_1

    .line 67
    .line 68
    move/from16 v20, v11

    .line 69
    .line 70
    move/from16 v21, v12

    .line 71
    .line 72
    const v6, 0x7fffffff

    .line 73
    .line 74
    .line 75
    :goto_1
    const/4 v7, 0x0

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    move/from16 v20, v11

    .line 78
    .line 79
    move/from16 v21, v12

    .line 80
    .line 81
    if-gez v14, :cond_2

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move v6, v14

    .line 86
    goto :goto_1

    .line 87
    :goto_2
    invoke-interface {v0, v7, v6, v2, v7}, Ld0/j0;->d(IIIZ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v11

    .line 91
    invoke-interface {v9, v11, v12}, Lo2/l0;->u(J)Lo2/v0;

    .line 92
    .line 93
    .line 94
    move-result-object v17

    .line 95
    :goto_3
    move-object/from16 v6, v17

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_3
    move/from16 v20, v11

    .line 99
    .line 100
    move/from16 v21, v12

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_4
    invoke-interface {v0, v6}, Ld0/j0;->g(Lo2/v0;)I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    invoke-interface {v0, v6}, Ld0/j0;->b(Lo2/v0;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    aput v7, v8, v20

    .line 112
    .line 113
    sub-int v11, v14, v7

    .line 114
    .line 115
    if-gez v11, :cond_4

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    :cond_4
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    add-int/2addr v7, v14

    .line 123
    add-int/2addr v13, v7

    .line 124
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    aput-object v6, p8, v20

    .line 129
    .line 130
    move/from16 v12, v21

    .line 131
    .line 132
    :goto_5
    add-int/lit8 v11, v20, 0x1

    .line 133
    .line 134
    move-wide/from16 v6, v18

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_5
    move-wide/from16 v18, v6

    .line 138
    .line 139
    move/from16 v21, v12

    .line 140
    .line 141
    if-nez v21, :cond_6

    .line 142
    .line 143
    sub-int/2addr v13, v14

    .line 144
    const/4 v7, 0x0

    .line 145
    goto/16 :goto_f

    .line 146
    .line 147
    :cond_6
    const v6, 0x7fffffff

    .line 148
    .line 149
    .line 150
    if-eq v1, v6, :cond_7

    .line 151
    .line 152
    move v3, v1

    .line 153
    goto :goto_6

    .line 154
    :cond_7
    move/from16 v3, p1

    .line 155
    .line 156
    :goto_6
    const/4 v6, 0x1

    .line 157
    add-int/lit8 v12, v21, -0x1

    .line 158
    .line 159
    int-to-long v11, v12

    .line 160
    mul-long v11, v11, v18

    .line 161
    .line 162
    sub-int/2addr v3, v13

    .line 163
    int-to-long v6, v3

    .line 164
    sub-long/2addr v6, v11

    .line 165
    const-wide/16 v18, 0x0

    .line 166
    .line 167
    cmp-long v3, v6, v18

    .line 168
    .line 169
    if-gez v3, :cond_8

    .line 170
    .line 171
    move-wide/from16 v6, v18

    .line 172
    .line 173
    :cond_8
    long-to-float v3, v6

    .line 174
    div-float/2addr v3, v15

    .line 175
    const/4 v9, 0x0

    .line 176
    :goto_7
    if-ge v9, v5, :cond_9

    .line 177
    .line 178
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    check-cast v14, Lo2/l0;

    .line 183
    .line 184
    invoke-static {v14}, Ld0/c;->b(Lo2/l0;)Ld0/k0;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    invoke-static {v14}, Ld0/c;->c(Ld0/k0;)F

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    mul-float v14, v14, v3

    .line 193
    .line 194
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    int-to-long v14, v14

    .line 199
    sub-long/2addr v6, v14

    .line 200
    add-int/lit8 v9, v9, 0x1

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_9
    move v14, v10

    .line 204
    const/4 v9, 0x0

    .line 205
    const/4 v10, 0x0

    .line 206
    :goto_8
    if-ge v9, v5, :cond_f

    .line 207
    .line 208
    aget-object v15, p8, v9

    .line 209
    .line 210
    if-nez v15, :cond_e

    .line 211
    .line 212
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v15

    .line 216
    check-cast v15, Lo2/l0;

    .line 217
    .line 218
    invoke-static {v15}, Ld0/c;->b(Lo2/l0;)Ld0/k0;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v1}, Ld0/c;->c(Ld0/k0;)F

    .line 223
    .line 224
    .line 225
    move-result v17

    .line 226
    cmpl-float v18, v17, v16

    .line 227
    .line 228
    if-lez v18, :cond_a

    .line 229
    .line 230
    :goto_9
    move/from16 v18, v3

    .line 231
    .line 232
    goto :goto_a

    .line 233
    :cond_a
    const-string v18, "All weights <= 0 should have placeables"

    .line 234
    .line 235
    invoke-static/range {v18 .. v18}, Le0/a;->b(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_9

    .line 239
    :goto_a
    invoke-static {v6, v7}, Ljava/lang/Long;->signum(J)I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    move-wide/from16 v19, v6

    .line 244
    .line 245
    int-to-long v6, v3

    .line 246
    sub-long v6, v19, v6

    .line 247
    .line 248
    mul-float v17, v17, v18

    .line 249
    .line 250
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    .line 251
    .line 252
    .line 253
    move-result v17

    .line 254
    add-int v3, v17, v3

    .line 255
    .line 256
    const/4 v4, 0x0

    .line 257
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v1, :cond_b

    .line 262
    .line 263
    iget-boolean v1, v1, Ld0/k0;->b:Z

    .line 264
    .line 265
    goto :goto_b

    .line 266
    :cond_b
    const/4 v1, 0x1

    .line 267
    :goto_b
    if-eqz v1, :cond_c

    .line 268
    .line 269
    const v1, 0x7fffffff

    .line 270
    .line 271
    .line 272
    if-eq v3, v1, :cond_d

    .line 273
    .line 274
    move v4, v3

    .line 275
    :goto_c
    const/4 v1, 0x1

    .line 276
    goto :goto_d

    .line 277
    :cond_c
    const v1, 0x7fffffff

    .line 278
    .line 279
    .line 280
    :cond_d
    const/4 v4, 0x0

    .line 281
    goto :goto_c

    .line 282
    :goto_d
    invoke-interface {v0, v4, v3, v2, v1}, Ld0/j0;->d(IIIZ)J

    .line 283
    .line 284
    .line 285
    move-result-wide v3

    .line 286
    invoke-interface {v15, v3, v4}, Lo2/l0;->u(J)Lo2/v0;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-interface {v0, v3}, Ld0/j0;->g(Lo2/v0;)I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    invoke-interface {v0, v3}, Ld0/j0;->b(Lo2/v0;)I

    .line 295
    .line 296
    .line 297
    move-result v15

    .line 298
    aput v4, v8, v9

    .line 299
    .line 300
    add-int/2addr v10, v4

    .line 301
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    aput-object v3, p8, v9

    .line 306
    .line 307
    move v14, v4

    .line 308
    goto :goto_e

    .line 309
    :cond_e
    move/from16 v18, v3

    .line 310
    .line 311
    move-wide/from16 v19, v6

    .line 312
    .line 313
    const/4 v1, 0x1

    .line 314
    :goto_e
    add-int/lit8 v9, v9, 0x1

    .line 315
    .line 316
    move/from16 v1, p3

    .line 317
    .line 318
    move-object/from16 v4, p7

    .line 319
    .line 320
    move/from16 v3, v18

    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_f
    int-to-long v1, v10

    .line 324
    add-long/2addr v1, v11

    .line 325
    long-to-int v7, v1

    .line 326
    sub-int v1, p3, v13

    .line 327
    .line 328
    if-gez v7, :cond_10

    .line 329
    .line 330
    const/4 v7, 0x0

    .line 331
    :cond_10
    if-le v7, v1, :cond_11

    .line 332
    .line 333
    move v7, v1

    .line 334
    :cond_11
    move v10, v14

    .line 335
    :goto_f
    add-int/2addr v7, v13

    .line 336
    if-gez v7, :cond_12

    .line 337
    .line 338
    const/4 v7, 0x0

    .line 339
    :cond_12
    move/from16 v1, p1

    .line 340
    .line 341
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    move/from16 v1, p2

    .line 346
    .line 347
    const/4 v7, 0x0

    .line 348
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    new-array v3, v5, [I

    .line 357
    .line 358
    move-object/from16 v2, p6

    .line 359
    .line 360
    invoke-interface {v0, v4, v2, v8, v3}, Ld0/j0;->i(ILo2/o0;[I[I)V

    .line 361
    .line 362
    .line 363
    move v5, v1

    .line 364
    move-object/from16 v1, p8

    .line 365
    .line 366
    invoke-interface/range {v0 .. v5}, Ld0/j0;->e([Lo2/v0;Lo2/o0;[III)Lo2/n0;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    return-object v0
.end method

.method public static final e(Lx3/b;)Ld0/b0;
    .locals 4

    .line 1
    new-instance v0, Ld0/b0;

    .line 2
    .line 3
    iget v1, p0, Lx3/b;->a:I

    .line 4
    .line 5
    iget v2, p0, Lx3/b;->b:I

    .line 6
    .line 7
    iget v3, p0, Lx3/b;->c:I

    .line 8
    .line 9
    iget p0, p0, Lx3/b;->d:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Ld0/b0;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
