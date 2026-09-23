.class public final Lx/f0;
.super Lq2/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/o;


# instance fields
.field public final synthetic q:I

.field public final r:Lx/h;

.field public final s:Lx/b0;

.field public t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lk2/n0;Lx/h;Lx/b0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lx/f0;->q:I

    .line 1
    invoke-direct {p0}, Lq2/m;-><init>()V

    .line 2
    iput-object p2, p0, Lx/f0;->r:Lx/h;

    .line 3
    iput-object p3, p0, Lx/f0;->s:Lx/b0;

    .line 4
    invoke-virtual {p0, p1}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    return-void
.end method

.method public constructor <init>(Lk2/n0;Lx/h;Lx/b0;Ld0/h0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx/f0;->q:I

    .line 5
    invoke-direct {p0}, Lq2/m;-><init>()V

    .line 6
    iput-object p2, p0, Lx/f0;->r:Lx/h;

    .line 7
    iput-object p3, p0, Lx/f0;->s:Lx/b0;

    .line 8
    iput-object p4, p0, Lx/f0;->t:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, p1}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    return-void
.end method

.method public static D0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 23
    .line 24
    .line 25
    return p0
.end method

.method public static E0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 3

    .line 1
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p4, p0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6
    .line 7
    .line 8
    const/16 p0, 0x20

    .line 9
    .line 10
    shr-long v1, p1, p0

    .line 11
    .line 12
    long-to-int p0, v1

    .line 13
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-wide v1, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr p1, v1

    .line 23
    long-to-int p2, p1

    .line 24
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p4, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p4}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 36
    .line 37
    .line 38
    return p0
.end method

.method private final synthetic G0()V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic H0()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic F()V
    .locals 1

    .line 1
    iget v0, p0, Lx/f0;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public F0()Landroid/graphics/RenderNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lx/f0;->t:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/RenderNode;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lk2/n;->w()Landroid/graphics/RenderNode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lx/f0;->t:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final v(Lq2/j0;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lx/f0;->q:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lq2/j0;->a:La2/c;

    .line 11
    .line 12
    iget-object v3, v2, La2/c;->b:La2/b;

    .line 13
    .line 14
    invoke-virtual {v3}, La2/b;->J()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    iget-object v5, v1, Lx/f0;->r:Lx/h;

    .line 19
    .line 20
    invoke-virtual {v5, v3, v4}, Lx/h;->i(J)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v2, La2/c;->b:La2/b;

    .line 24
    .line 25
    invoke-virtual {v3}, La2/b;->z()Ly1/o;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, v5, Lx/h;->d:Lf1/k1;

    .line 34
    .line 35
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v4, v2, La2/c;->b:La2/b;

    .line 39
    .line 40
    invoke-virtual {v4}, La2/b;->J()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    invoke-static {v6, v7}, Lx1/e;->e(J)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Lq2/j0;->b()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1a

    .line 54
    .line 55
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    iget-object v7, v1, Lx/f0;->s:Lx/b0;

    .line 60
    .line 61
    if-nez v6, :cond_9

    .line 62
    .line 63
    iget-object v2, v7, Lx/b0;->d:Landroid/widget/EdgeEffect;

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v2, v7, Lx/b0;->e:Landroid/widget/EdgeEffect;

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v2, v7, Lx/b0;->f:Landroid/widget/EdgeEffect;

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object v2, v7, Lx/b0;->g:Landroid/widget/EdgeEffect;

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v2, v7, Lx/b0;->h:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 96
    .line 97
    .line 98
    :cond_5
    iget-object v2, v7, Lx/b0;->i:Landroid/widget/EdgeEffect;

    .line 99
    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget-object v2, v7, Lx/b0;->j:Landroid/widget/EdgeEffect;

    .line 106
    .line 107
    if-eqz v2, :cond_7

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 110
    .line 111
    .line 112
    :cond_7
    iget-object v2, v7, Lx/b0;->k:Landroid/widget/EdgeEffect;

    .line 113
    .line 114
    if-eqz v2, :cond_8

    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 117
    .line 118
    .line 119
    :cond_8
    invoke-virtual {v0}, Lq2/j0;->b()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_1a

    .line 123
    .line 124
    :cond_9
    sget v6, Lx/t;->a:F

    .line 125
    .line 126
    invoke-virtual {v0, v6}, Lq2/j0;->S(F)F

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    iget-object v8, v7, Lx/b0;->d:Landroid/widget/EdgeEffect;

    .line 131
    .line 132
    invoke-static {v8}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-nez v8, :cond_b

    .line 137
    .line 138
    iget-object v8, v7, Lx/b0;->h:Landroid/widget/EdgeEffect;

    .line 139
    .line 140
    invoke-static {v8}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-nez v8, :cond_b

    .line 145
    .line 146
    iget-object v8, v7, Lx/b0;->e:Landroid/widget/EdgeEffect;

    .line 147
    .line 148
    invoke-static {v8}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-nez v8, :cond_b

    .line 153
    .line 154
    iget-object v8, v7, Lx/b0;->i:Landroid/widget/EdgeEffect;

    .line 155
    .line 156
    invoke-static {v8}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_a

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_a
    const/4 v8, 0x0

    .line 164
    goto :goto_1

    .line 165
    :cond_b
    :goto_0
    const/4 v8, 0x1

    .line 166
    :goto_1
    iget-object v11, v7, Lx/b0;->f:Landroid/widget/EdgeEffect;

    .line 167
    .line 168
    invoke-static {v11}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-nez v11, :cond_d

    .line 173
    .line 174
    iget-object v11, v7, Lx/b0;->j:Landroid/widget/EdgeEffect;

    .line 175
    .line 176
    invoke-static {v11}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-nez v11, :cond_d

    .line 181
    .line 182
    iget-object v11, v7, Lx/b0;->g:Landroid/widget/EdgeEffect;

    .line 183
    .line 184
    invoke-static {v11}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    if-nez v11, :cond_d

    .line 189
    .line 190
    iget-object v11, v7, Lx/b0;->k:Landroid/widget/EdgeEffect;

    .line 191
    .line 192
    invoke-static {v11}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-eqz v11, :cond_c

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_c
    const/4 v11, 0x0

    .line 200
    goto :goto_3

    .line 201
    :cond_d
    :goto_2
    const/4 v11, 0x1

    .line 202
    :goto_3
    if-eqz v8, :cond_e

    .line 203
    .line 204
    if-eqz v11, :cond_e

    .line 205
    .line 206
    invoke-virtual {v1}, Lx/f0;->F0()Landroid/graphics/RenderNode;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 215
    .line 216
    .line 217
    move-result v14

    .line 218
    invoke-static {v12, v13, v14}, Lk2/n;->j(Landroid/graphics/RenderNode;II)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_e
    if-eqz v8, :cond_f

    .line 223
    .line 224
    invoke-virtual {v1}, Lx/f0;->F0()Landroid/graphics/RenderNode;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    invoke-static {v6}, Li9/a;->N(F)I

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    mul-int/lit8 v14, v14, 0x2

    .line 237
    .line 238
    add-int/2addr v14, v13

    .line 239
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    invoke-static {v12, v14, v13}, Lk2/n;->j(Landroid/graphics/RenderNode;II)V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_f
    if-eqz v11, :cond_35

    .line 248
    .line 249
    invoke-virtual {v1}, Lx/f0;->F0()Landroid/graphics/RenderNode;

    .line 250
    .line 251
    .line 252
    move-result-object v12

    .line 253
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 258
    .line 259
    .line 260
    move-result v14

    .line 261
    invoke-static {v6}, Li9/a;->N(F)I

    .line 262
    .line 263
    .line 264
    move-result v15

    .line 265
    mul-int/lit8 v15, v15, 0x2

    .line 266
    .line 267
    add-int/2addr v15, v14

    .line 268
    invoke-static {v12, v13, v15}, Lk2/n;->j(Landroid/graphics/RenderNode;II)V

    .line 269
    .line 270
    .line 271
    :goto_4
    invoke-virtual {v1}, Lx/f0;->F0()Landroid/graphics/RenderNode;

    .line 272
    .line 273
    .line 274
    move-result-object v12

    .line 275
    invoke-static {v12}, Lx/p1;->c(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    iget-object v13, v7, Lx/b0;->j:Landroid/widget/EdgeEffect;

    .line 280
    .line 281
    invoke-static {v13}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 282
    .line 283
    .line 284
    move-result v13

    .line 285
    const/high16 v14, 0x42b40000    # 90.0f

    .line 286
    .line 287
    sget-object v15, Lz/w0;->b:Lz/w0;

    .line 288
    .line 289
    if-eqz v13, :cond_11

    .line 290
    .line 291
    iget-object v13, v7, Lx/b0;->j:Landroid/widget/EdgeEffect;

    .line 292
    .line 293
    if-nez v13, :cond_10

    .line 294
    .line 295
    invoke-virtual {v7, v15}, Lx/b0;->a(Lz/w0;)Landroid/widget/EdgeEffect;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    iput-object v13, v7, Lx/b0;->j:Landroid/widget/EdgeEffect;

    .line 300
    .line 301
    :cond_10
    invoke-static {v14, v13, v12}, Lx/f0;->D0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 302
    .line 303
    .line 304
    invoke-virtual {v13}, Landroid/widget/EdgeEffect;->finish()V

    .line 305
    .line 306
    .line 307
    :cond_11
    iget-object v13, v7, Lx/b0;->f:Landroid/widget/EdgeEffect;

    .line 308
    .line 309
    invoke-static {v13}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 310
    .line 311
    .line 312
    move-result v13

    .line 313
    const/high16 v10, 0x43870000    # 270.0f

    .line 314
    .line 315
    const-wide v17, 0xffffffffL

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    const/16 v14, 0x1f

    .line 321
    .line 322
    if-eqz v13, :cond_16

    .line 323
    .line 324
    invoke-virtual {v7}, Lx/b0;->c()Landroid/widget/EdgeEffect;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    invoke-static {v10, v13, v12}, Lx/f0;->D0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 329
    .line 330
    .line 331
    move-result v19

    .line 332
    iget-object v10, v7, Lx/b0;->f:Landroid/widget/EdgeEffect;

    .line 333
    .line 334
    invoke-static {v10}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 335
    .line 336
    .line 337
    move-result v10

    .line 338
    if-eqz v10, :cond_15

    .line 339
    .line 340
    invoke-virtual {v5}, Lx/h;->c()J

    .line 341
    .line 342
    .line 343
    move-result-wide v20

    .line 344
    and-long v9, v20, v17

    .line 345
    .line 346
    long-to-int v10, v9

    .line 347
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    iget-object v10, v7, Lx/b0;->j:Landroid/widget/EdgeEffect;

    .line 352
    .line 353
    if-nez v10, :cond_12

    .line 354
    .line 355
    invoke-virtual {v7, v15}, Lx/b0;->a(Lz/w0;)Landroid/widget/EdgeEffect;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    iput-object v10, v7, Lx/b0;->j:Landroid/widget/EdgeEffect;

    .line 360
    .line 361
    :cond_12
    move-object/from16 v20, v4

    .line 362
    .line 363
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 364
    .line 365
    if-lt v4, v14, :cond_13

    .line 366
    .line 367
    invoke-static {v13}, Lx/k;->b(Landroid/widget/EdgeEffect;)F

    .line 368
    .line 369
    .line 370
    move-result v13

    .line 371
    :goto_5
    move-object/from16 v22, v5

    .line 372
    .line 373
    const/4 v14, 0x1

    .line 374
    goto :goto_6

    .line 375
    :cond_13
    const/4 v13, 0x0

    .line 376
    goto :goto_5

    .line 377
    :goto_6
    int-to-float v5, v14

    .line 378
    sub-float/2addr v5, v9

    .line 379
    const/16 v9, 0x1f

    .line 380
    .line 381
    if-lt v4, v9, :cond_14

    .line 382
    .line 383
    invoke-static {v10, v13, v5}, Lx/k;->c(Landroid/widget/EdgeEffect;FF)F

    .line 384
    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_14
    invoke-virtual {v10, v13, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 388
    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_15
    move-object/from16 v20, v4

    .line 392
    .line 393
    move-object/from16 v22, v5

    .line 394
    .line 395
    goto :goto_7

    .line 396
    :cond_16
    move-object/from16 v20, v4

    .line 397
    .line 398
    move-object/from16 v22, v5

    .line 399
    .line 400
    const/16 v19, 0x0

    .line 401
    .line 402
    :goto_7
    iget-object v4, v7, Lx/b0;->h:Landroid/widget/EdgeEffect;

    .line 403
    .line 404
    invoke-static {v4}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    const/high16 v5, 0x43340000    # 180.0f

    .line 409
    .line 410
    sget-object v9, Lz/w0;->a:Lz/w0;

    .line 411
    .line 412
    if-eqz v4, :cond_18

    .line 413
    .line 414
    iget-object v4, v7, Lx/b0;->h:Landroid/widget/EdgeEffect;

    .line 415
    .line 416
    if-nez v4, :cond_17

    .line 417
    .line 418
    invoke-virtual {v7, v9}, Lx/b0;->a(Lz/w0;)Landroid/widget/EdgeEffect;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    iput-object v4, v7, Lx/b0;->h:Landroid/widget/EdgeEffect;

    .line 423
    .line 424
    :cond_17
    invoke-static {v5, v4, v12}, Lx/f0;->D0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 425
    .line 426
    .line 427
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    .line 428
    .line 429
    .line 430
    :cond_18
    iget-object v4, v7, Lx/b0;->d:Landroid/widget/EdgeEffect;

    .line 431
    .line 432
    invoke-static {v4}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_1f

    .line 437
    .line 438
    invoke-virtual {v7}, Lx/b0;->e()Landroid/widget/EdgeEffect;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    const/4 v13, 0x0

    .line 443
    invoke-static {v13, v4, v12}, Lx/f0;->D0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 444
    .line 445
    .line 446
    move-result v14

    .line 447
    if-nez v14, :cond_1a

    .line 448
    .line 449
    if-eqz v19, :cond_19

    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_19
    const/4 v14, 0x0

    .line 453
    goto :goto_9

    .line 454
    :cond_1a
    :goto_8
    const/4 v14, 0x1

    .line 455
    :goto_9
    iget-object v13, v7, Lx/b0;->d:Landroid/widget/EdgeEffect;

    .line 456
    .line 457
    invoke-static {v13}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 458
    .line 459
    .line 460
    move-result v13

    .line 461
    if-eqz v13, :cond_1e

    .line 462
    .line 463
    invoke-virtual/range {v22 .. v22}, Lx/h;->c()J

    .line 464
    .line 465
    .line 466
    move-result-wide v23

    .line 467
    move v13, v11

    .line 468
    const/16 v25, 0x20

    .line 469
    .line 470
    shr-long v10, v23, v25

    .line 471
    .line 472
    long-to-int v11, v10

    .line 473
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 474
    .line 475
    .line 476
    move-result v10

    .line 477
    iget-object v11, v7, Lx/b0;->h:Landroid/widget/EdgeEffect;

    .line 478
    .line 479
    if-nez v11, :cond_1b

    .line 480
    .line 481
    invoke-virtual {v7, v9}, Lx/b0;->a(Lz/w0;)Landroid/widget/EdgeEffect;

    .line 482
    .line 483
    .line 484
    move-result-object v11

    .line 485
    iput-object v11, v7, Lx/b0;->h:Landroid/widget/EdgeEffect;

    .line 486
    .line 487
    :cond_1b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 488
    .line 489
    move-object/from16 v24, v4

    .line 490
    .line 491
    const/16 v4, 0x1f

    .line 492
    .line 493
    if-lt v5, v4, :cond_1c

    .line 494
    .line 495
    invoke-static/range {v24 .. v24}, Lx/k;->b(Landroid/widget/EdgeEffect;)F

    .line 496
    .line 497
    .line 498
    move-result v19

    .line 499
    move/from16 v24, v6

    .line 500
    .line 501
    move/from16 v6, v19

    .line 502
    .line 503
    goto :goto_a

    .line 504
    :cond_1c
    move/from16 v24, v6

    .line 505
    .line 506
    const/4 v6, 0x0

    .line 507
    :goto_a
    if-lt v5, v4, :cond_1d

    .line 508
    .line 509
    invoke-static {v11, v6, v10}, Lx/k;->c(Landroid/widget/EdgeEffect;FF)F

    .line 510
    .line 511
    .line 512
    goto :goto_b

    .line 513
    :cond_1d
    invoke-virtual {v11, v6, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 514
    .line 515
    .line 516
    goto :goto_b

    .line 517
    :cond_1e
    move/from16 v24, v6

    .line 518
    .line 519
    move v13, v11

    .line 520
    const/16 v25, 0x20

    .line 521
    .line 522
    :goto_b
    move/from16 v19, v14

    .line 523
    .line 524
    goto :goto_c

    .line 525
    :cond_1f
    move/from16 v24, v6

    .line 526
    .line 527
    move v13, v11

    .line 528
    const/16 v25, 0x20

    .line 529
    .line 530
    :goto_c
    iget-object v4, v7, Lx/b0;->k:Landroid/widget/EdgeEffect;

    .line 531
    .line 532
    invoke-static {v4}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    if-eqz v4, :cond_21

    .line 537
    .line 538
    iget-object v4, v7, Lx/b0;->k:Landroid/widget/EdgeEffect;

    .line 539
    .line 540
    if-nez v4, :cond_20

    .line 541
    .line 542
    invoke-virtual {v7, v15}, Lx/b0;->a(Lz/w0;)Landroid/widget/EdgeEffect;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    iput-object v4, v7, Lx/b0;->k:Landroid/widget/EdgeEffect;

    .line 547
    .line 548
    :cond_20
    const/high16 v5, 0x43870000    # 270.0f

    .line 549
    .line 550
    invoke-static {v5, v4, v12}, Lx/f0;->D0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 551
    .line 552
    .line 553
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    .line 554
    .line 555
    .line 556
    :cond_21
    iget-object v4, v7, Lx/b0;->g:Landroid/widget/EdgeEffect;

    .line 557
    .line 558
    invoke-static {v4}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    if-eqz v4, :cond_28

    .line 563
    .line 564
    invoke-virtual {v7}, Lx/b0;->d()Landroid/widget/EdgeEffect;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    const/high16 v5, 0x42b40000    # 90.0f

    .line 569
    .line 570
    invoke-static {v5, v4, v12}, Lx/f0;->D0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 571
    .line 572
    .line 573
    move-result v5

    .line 574
    if-nez v5, :cond_23

    .line 575
    .line 576
    if-eqz v19, :cond_22

    .line 577
    .line 578
    goto :goto_d

    .line 579
    :cond_22
    const/4 v14, 0x0

    .line 580
    goto :goto_e

    .line 581
    :cond_23
    :goto_d
    const/4 v14, 0x1

    .line 582
    :goto_e
    iget-object v5, v7, Lx/b0;->g:Landroid/widget/EdgeEffect;

    .line 583
    .line 584
    invoke-static {v5}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 585
    .line 586
    .line 587
    move-result v5

    .line 588
    if-eqz v5, :cond_27

    .line 589
    .line 590
    invoke-virtual/range {v22 .. v22}, Lx/h;->c()J

    .line 591
    .line 592
    .line 593
    move-result-wide v5

    .line 594
    and-long v5, v5, v17

    .line 595
    .line 596
    long-to-int v6, v5

    .line 597
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 598
    .line 599
    .line 600
    move-result v5

    .line 601
    iget-object v6, v7, Lx/b0;->k:Landroid/widget/EdgeEffect;

    .line 602
    .line 603
    if-nez v6, :cond_24

    .line 604
    .line 605
    invoke-virtual {v7, v15}, Lx/b0;->a(Lz/w0;)Landroid/widget/EdgeEffect;

    .line 606
    .line 607
    .line 608
    move-result-object v6

    .line 609
    iput-object v6, v7, Lx/b0;->k:Landroid/widget/EdgeEffect;

    .line 610
    .line 611
    :cond_24
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 612
    .line 613
    const/16 v11, 0x1f

    .line 614
    .line 615
    if-lt v10, v11, :cond_25

    .line 616
    .line 617
    invoke-static {v4}, Lx/k;->b(Landroid/widget/EdgeEffect;)F

    .line 618
    .line 619
    .line 620
    move-result v4

    .line 621
    goto :goto_f

    .line 622
    :cond_25
    const/4 v4, 0x0

    .line 623
    :goto_f
    if-lt v10, v11, :cond_26

    .line 624
    .line 625
    invoke-static {v6, v4, v5}, Lx/k;->c(Landroid/widget/EdgeEffect;FF)F

    .line 626
    .line 627
    .line 628
    goto :goto_10

    .line 629
    :cond_26
    invoke-virtual {v6, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 630
    .line 631
    .line 632
    :cond_27
    :goto_10
    move/from16 v19, v14

    .line 633
    .line 634
    :cond_28
    iget-object v4, v7, Lx/b0;->i:Landroid/widget/EdgeEffect;

    .line 635
    .line 636
    invoke-static {v4}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    if-eqz v4, :cond_2a

    .line 641
    .line 642
    iget-object v4, v7, Lx/b0;->i:Landroid/widget/EdgeEffect;

    .line 643
    .line 644
    if-nez v4, :cond_29

    .line 645
    .line 646
    invoke-virtual {v7, v9}, Lx/b0;->a(Lz/w0;)Landroid/widget/EdgeEffect;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    iput-object v4, v7, Lx/b0;->i:Landroid/widget/EdgeEffect;

    .line 651
    .line 652
    :cond_29
    const/4 v5, 0x0

    .line 653
    invoke-static {v5, v4, v12}, Lx/f0;->D0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 654
    .line 655
    .line 656
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->finish()V

    .line 657
    .line 658
    .line 659
    goto :goto_11

    .line 660
    :cond_2a
    const/4 v5, 0x0

    .line 661
    :goto_11
    iget-object v4, v7, Lx/b0;->e:Landroid/widget/EdgeEffect;

    .line 662
    .line 663
    invoke-static {v4}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 664
    .line 665
    .line 666
    move-result v4

    .line 667
    if-eqz v4, :cond_31

    .line 668
    .line 669
    invoke-virtual {v7}, Lx/b0;->b()Landroid/widget/EdgeEffect;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    const/high16 v6, 0x43340000    # 180.0f

    .line 674
    .line 675
    invoke-static {v6, v4, v12}, Lx/f0;->D0(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 676
    .line 677
    .line 678
    move-result v6

    .line 679
    if-nez v6, :cond_2c

    .line 680
    .line 681
    if-eqz v19, :cond_2b

    .line 682
    .line 683
    goto :goto_12

    .line 684
    :cond_2b
    const/4 v10, 0x0

    .line 685
    goto :goto_13

    .line 686
    :cond_2c
    :goto_12
    const/4 v10, 0x1

    .line 687
    :goto_13
    iget-object v6, v7, Lx/b0;->e:Landroid/widget/EdgeEffect;

    .line 688
    .line 689
    invoke-static {v6}, Lx/b0;->g(Landroid/widget/EdgeEffect;)Z

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    if-eqz v6, :cond_30

    .line 694
    .line 695
    invoke-virtual/range {v22 .. v22}, Lx/h;->c()J

    .line 696
    .line 697
    .line 698
    move-result-wide v14

    .line 699
    shr-long v14, v14, v25

    .line 700
    .line 701
    long-to-int v6, v14

    .line 702
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 703
    .line 704
    .line 705
    move-result v6

    .line 706
    iget-object v11, v7, Lx/b0;->i:Landroid/widget/EdgeEffect;

    .line 707
    .line 708
    if-nez v11, :cond_2d

    .line 709
    .line 710
    invoke-virtual {v7, v9}, Lx/b0;->a(Lz/w0;)Landroid/widget/EdgeEffect;

    .line 711
    .line 712
    .line 713
    move-result-object v11

    .line 714
    iput-object v11, v7, Lx/b0;->i:Landroid/widget/EdgeEffect;

    .line 715
    .line 716
    :cond_2d
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 717
    .line 718
    const/16 v9, 0x1f

    .line 719
    .line 720
    if-lt v7, v9, :cond_2e

    .line 721
    .line 722
    invoke-static {v4}, Lx/k;->b(Landroid/widget/EdgeEffect;)F

    .line 723
    .line 724
    .line 725
    move-result v4

    .line 726
    :goto_14
    const/4 v14, 0x1

    .line 727
    goto :goto_15

    .line 728
    :cond_2e
    const/4 v4, 0x0

    .line 729
    goto :goto_14

    .line 730
    :goto_15
    int-to-float v14, v14

    .line 731
    sub-float/2addr v14, v6

    .line 732
    if-lt v7, v9, :cond_2f

    .line 733
    .line 734
    invoke-static {v11, v4, v14}, Lx/k;->c(Landroid/widget/EdgeEffect;FF)F

    .line 735
    .line 736
    .line 737
    goto :goto_16

    .line 738
    :cond_2f
    invoke-virtual {v11, v4, v14}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 739
    .line 740
    .line 741
    :cond_30
    :goto_16
    move/from16 v19, v10

    .line 742
    .line 743
    :cond_31
    if-eqz v19, :cond_32

    .line 744
    .line 745
    invoke-virtual/range {v22 .. v22}, Lx/h;->d()V

    .line 746
    .line 747
    .line 748
    :cond_32
    if-eqz v13, :cond_33

    .line 749
    .line 750
    const/4 v13, 0x0

    .line 751
    goto :goto_17

    .line 752
    :cond_33
    move/from16 v13, v24

    .line 753
    .line 754
    :goto_17
    if-eqz v8, :cond_34

    .line 755
    .line 756
    const/4 v6, 0x0

    .line 757
    goto :goto_18

    .line 758
    :cond_34
    move/from16 v6, v24

    .line 759
    .line 760
    :goto_18
    invoke-virtual {v0}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 761
    .line 762
    .line 763
    move-result-object v4

    .line 764
    new-instance v5, Ly1/b;

    .line 765
    .line 766
    invoke-direct {v5}, Ly1/b;-><init>()V

    .line 767
    .line 768
    .line 769
    iput-object v12, v5, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 770
    .line 771
    invoke-virtual/range {v20 .. v20}, La2/b;->J()J

    .line 772
    .line 773
    .line 774
    move-result-wide v7

    .line 775
    iget-object v9, v2, La2/c;->b:La2/b;

    .line 776
    .line 777
    invoke-virtual {v9}, La2/b;->C()Ln3/c;

    .line 778
    .line 779
    .line 780
    move-result-object v9

    .line 781
    iget-object v10, v2, La2/c;->b:La2/b;

    .line 782
    .line 783
    invoke-virtual {v10}, La2/b;->H()Ln3/m;

    .line 784
    .line 785
    .line 786
    move-result-object v10

    .line 787
    iget-object v11, v2, La2/c;->b:La2/b;

    .line 788
    .line 789
    invoke-virtual {v11}, La2/b;->z()Ly1/o;

    .line 790
    .line 791
    .line 792
    move-result-object v11

    .line 793
    iget-object v12, v2, La2/c;->b:La2/b;

    .line 794
    .line 795
    invoke-virtual {v12}, La2/b;->J()J

    .line 796
    .line 797
    .line 798
    move-result-wide v14

    .line 799
    iget-object v12, v2, La2/c;->b:La2/b;

    .line 800
    .line 801
    iget-object v1, v12, La2/b;->c:Ljava/lang/Object;

    .line 802
    .line 803
    check-cast v1, Lb2/c;

    .line 804
    .line 805
    invoke-virtual {v12, v0}, La2/b;->a0(Ln3/c;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v12, v4}, La2/b;->b0(Ln3/m;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v12, v5}, La2/b;->Z(Ly1/o;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v12, v7, v8}, La2/b;->c0(J)V

    .line 815
    .line 816
    .line 817
    const/4 v4, 0x0

    .line 818
    iput-object v4, v12, La2/b;->c:Ljava/lang/Object;

    .line 819
    .line 820
    invoke-virtual {v5}, Ly1/b;->f()V

    .line 821
    .line 822
    .line 823
    :try_start_0
    iget-object v4, v2, La2/c;->b:La2/b;

    .line 824
    .line 825
    iget-object v4, v4, La2/b;->b:Ljava/lang/Object;

    .line 826
    .line 827
    check-cast v4, La2/d;

    .line 828
    .line 829
    invoke-virtual {v4, v13, v6}, La2/d;->y(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    .line 831
    .line 832
    :try_start_1
    invoke-virtual {v0}, Lq2/j0;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 833
    .line 834
    .line 835
    :try_start_2
    iget-object v0, v2, La2/c;->b:La2/b;

    .line 836
    .line 837
    iget-object v0, v0, La2/b;->b:Ljava/lang/Object;

    .line 838
    .line 839
    check-cast v0, La2/d;

    .line 840
    .line 841
    neg-float v4, v13

    .line 842
    neg-float v6, v6

    .line 843
    invoke-virtual {v0, v4, v6}, La2/d;->y(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 844
    .line 845
    .line 846
    invoke-virtual {v5}, Ly1/b;->n()V

    .line 847
    .line 848
    .line 849
    iget-object v0, v2, La2/c;->b:La2/b;

    .line 850
    .line 851
    invoke-virtual {v0, v9}, La2/b;->a0(Ln3/c;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0, v10}, La2/b;->b0(Ln3/m;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v0, v11}, La2/b;->Z(Ly1/o;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v0, v14, v15}, La2/b;->c0(J)V

    .line 861
    .line 862
    .line 863
    iput-object v1, v0, La2/b;->c:Ljava/lang/Object;

    .line 864
    .line 865
    invoke-virtual/range {p0 .. p0}, Lx/f0;->F0()Landroid/graphics/RenderNode;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-static {v0}, Lx/p1;->e(Landroid/graphics/RenderNode;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 873
    .line 874
    .line 875
    move-result v0

    .line 876
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 877
    .line 878
    .line 879
    invoke-virtual/range {p0 .. p0}, Lx/f0;->F0()Landroid/graphics/RenderNode;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    invoke-static {v3, v1}, Lx/p1;->d(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 887
    .line 888
    .line 889
    goto :goto_1a

    .line 890
    :catchall_0
    move-exception v0

    .line 891
    goto :goto_19

    .line 892
    :catchall_1
    move-exception v0

    .line 893
    :try_start_3
    iget-object v3, v2, La2/c;->b:La2/b;

    .line 894
    .line 895
    iget-object v3, v3, La2/b;->b:Ljava/lang/Object;

    .line 896
    .line 897
    check-cast v3, La2/d;

    .line 898
    .line 899
    neg-float v4, v13

    .line 900
    neg-float v6, v6

    .line 901
    invoke-virtual {v3, v4, v6}, La2/d;->y(FF)V

    .line 902
    .line 903
    .line 904
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 905
    :goto_19
    invoke-virtual {v5}, Ly1/b;->n()V

    .line 906
    .line 907
    .line 908
    iget-object v2, v2, La2/c;->b:La2/b;

    .line 909
    .line 910
    invoke-virtual {v2, v9}, La2/b;->a0(Ln3/c;)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v2, v10}, La2/b;->b0(Ln3/m;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v2, v11}, La2/b;->Z(Ly1/o;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v2, v14, v15}, La2/b;->c0(J)V

    .line 920
    .line 921
    .line 922
    iput-object v1, v2, La2/b;->c:Ljava/lang/Object;

    .line 923
    .line 924
    throw v0

    .line 925
    :cond_35
    invoke-virtual {v0}, Lq2/j0;->b()V

    .line 926
    .line 927
    .line 928
    :goto_1a
    return-void

    .line 929
    :pswitch_0
    iget-object v2, v1, Lx/f0;->t:Ljava/lang/Object;

    .line 930
    .line 931
    check-cast v2, Ld0/h0;

    .line 932
    .line 933
    iget-object v3, v0, Lq2/j0;->a:La2/c;

    .line 934
    .line 935
    iget-object v4, v3, La2/c;->b:La2/b;

    .line 936
    .line 937
    invoke-virtual {v4}, La2/b;->J()J

    .line 938
    .line 939
    .line 940
    move-result-wide v4

    .line 941
    iget-object v6, v1, Lx/f0;->r:Lx/h;

    .line 942
    .line 943
    invoke-virtual {v6, v4, v5}, Lx/h;->i(J)V

    .line 944
    .line 945
    .line 946
    iget-object v4, v3, La2/c;->b:La2/b;

    .line 947
    .line 948
    invoke-virtual {v4}, La2/b;->J()J

    .line 949
    .line 950
    .line 951
    move-result-wide v4

    .line 952
    invoke-static {v4, v5}, Lx1/e;->e(J)Z

    .line 953
    .line 954
    .line 955
    move-result v4

    .line 956
    if-eqz v4, :cond_36

    .line 957
    .line 958
    invoke-virtual {v0}, Lq2/j0;->b()V

    .line 959
    .line 960
    .line 961
    goto/16 :goto_20

    .line 962
    .line 963
    :cond_36
    invoke-virtual {v0}, Lq2/j0;->b()V

    .line 964
    .line 965
    .line 966
    iget-object v4, v6, Lx/h;->d:Lf1/k1;

    .line 967
    .line 968
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    iget-object v3, v3, La2/c;->b:La2/b;

    .line 972
    .line 973
    invoke-virtual {v3}, La2/b;->z()Ly1/o;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    invoke-static {v3}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 978
    .line 979
    .line 980
    move-result-object v3

    .line 981
    iget-object v4, v1, Lx/f0;->s:Lx/b0;

    .line 982
    .line 983
    iget-object v5, v4, Lx/b0;->f:Landroid/widget/EdgeEffect;

    .line 984
    .line 985
    invoke-static {v5}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 986
    .line 987
    .line 988
    move-result v5

    .line 989
    const/16 v7, 0x20

    .line 990
    .line 991
    const-wide v8, 0xffffffffL

    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    const/4 v10, 0x0

    .line 997
    if-eqz v5, :cond_37

    .line 998
    .line 999
    invoke-virtual {v4}, Lx/b0;->c()Landroid/widget/EdgeEffect;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v5

    .line 1003
    invoke-virtual {v0}, Lq2/j0;->g()J

    .line 1004
    .line 1005
    .line 1006
    move-result-wide v11

    .line 1007
    and-long/2addr v11, v8

    .line 1008
    long-to-int v12, v11

    .line 1009
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1010
    .line 1011
    .line 1012
    move-result v11

    .line 1013
    neg-float v11, v11

    .line 1014
    invoke-virtual {v0}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v12

    .line 1018
    invoke-virtual {v2, v12}, Ld0/h0;->a(Ln3/m;)F

    .line 1019
    .line 1020
    .line 1021
    move-result v12

    .line 1022
    invoke-virtual {v0, v12}, Lq2/j0;->S(F)F

    .line 1023
    .line 1024
    .line 1025
    move-result v12

    .line 1026
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1027
    .line 1028
    .line 1029
    move-result v11

    .line 1030
    int-to-long v13, v11

    .line 1031
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1032
    .line 1033
    .line 1034
    move-result v11

    .line 1035
    int-to-long v11, v11

    .line 1036
    shl-long/2addr v13, v7

    .line 1037
    and-long/2addr v11, v8

    .line 1038
    or-long/2addr v11, v13

    .line 1039
    const/high16 v13, 0x43870000    # 270.0f

    .line 1040
    .line 1041
    invoke-static {v13, v11, v12, v5, v3}, Lx/f0;->E0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v5

    .line 1045
    goto :goto_1b

    .line 1046
    :cond_37
    const/4 v5, 0x0

    .line 1047
    :goto_1b
    iget-object v11, v4, Lx/b0;->d:Landroid/widget/EdgeEffect;

    .line 1048
    .line 1049
    invoke-static {v11}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 1050
    .line 1051
    .line 1052
    move-result v11

    .line 1053
    const/4 v12, 0x0

    .line 1054
    const/4 v13, 0x1

    .line 1055
    if-eqz v11, :cond_3a

    .line 1056
    .line 1057
    invoke-virtual {v4}, Lx/b0;->e()Landroid/widget/EdgeEffect;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v11

    .line 1061
    iget v14, v2, Ld0/h0;->b:F

    .line 1062
    .line 1063
    invoke-virtual {v0, v14}, Lq2/j0;->S(F)F

    .line 1064
    .line 1065
    .line 1066
    move-result v14

    .line 1067
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1068
    .line 1069
    .line 1070
    move-result v15

    .line 1071
    move-wide/from16 v17, v8

    .line 1072
    .line 1073
    const/16 v16, 0x20

    .line 1074
    .line 1075
    int-to-long v7, v15

    .line 1076
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1077
    .line 1078
    .line 1079
    move-result v9

    .line 1080
    int-to-long v14, v9

    .line 1081
    shl-long v7, v7, v16

    .line 1082
    .line 1083
    and-long v14, v14, v17

    .line 1084
    .line 1085
    or-long/2addr v7, v14

    .line 1086
    invoke-static {v12, v7, v8, v11, v3}, Lx/f0;->E0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v7

    .line 1090
    if-nez v7, :cond_39

    .line 1091
    .line 1092
    if-eqz v5, :cond_38

    .line 1093
    .line 1094
    goto :goto_1c

    .line 1095
    :cond_38
    const/4 v5, 0x0

    .line 1096
    goto :goto_1d

    .line 1097
    :cond_39
    :goto_1c
    const/4 v5, 0x1

    .line 1098
    goto :goto_1d

    .line 1099
    :cond_3a
    move-wide/from16 v17, v8

    .line 1100
    .line 1101
    const/16 v16, 0x20

    .line 1102
    .line 1103
    :goto_1d
    iget-object v7, v4, Lx/b0;->g:Landroid/widget/EdgeEffect;

    .line 1104
    .line 1105
    invoke-static {v7}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v7

    .line 1109
    if-eqz v7, :cond_3d

    .line 1110
    .line 1111
    invoke-virtual {v4}, Lx/b0;->d()Landroid/widget/EdgeEffect;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v7

    .line 1115
    invoke-virtual {v0}, Lq2/j0;->g()J

    .line 1116
    .line 1117
    .line 1118
    move-result-wide v8

    .line 1119
    shr-long v8, v8, v16

    .line 1120
    .line 1121
    long-to-int v9, v8

    .line 1122
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1123
    .line 1124
    .line 1125
    move-result v8

    .line 1126
    invoke-static {v8}, Li9/a;->N(F)I

    .line 1127
    .line 1128
    .line 1129
    move-result v8

    .line 1130
    invoke-virtual {v0}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v9

    .line 1134
    invoke-virtual {v2, v9}, Ld0/h0;->b(Ln3/m;)F

    .line 1135
    .line 1136
    .line 1137
    move-result v9

    .line 1138
    int-to-float v8, v8

    .line 1139
    neg-float v8, v8

    .line 1140
    invoke-virtual {v0, v9}, Lq2/j0;->S(F)F

    .line 1141
    .line 1142
    .line 1143
    move-result v9

    .line 1144
    add-float/2addr v9, v8

    .line 1145
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1146
    .line 1147
    .line 1148
    move-result v8

    .line 1149
    int-to-long v11, v8

    .line 1150
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1151
    .line 1152
    .line 1153
    move-result v8

    .line 1154
    int-to-long v8, v8

    .line 1155
    shl-long v11, v11, v16

    .line 1156
    .line 1157
    and-long v8, v8, v17

    .line 1158
    .line 1159
    or-long/2addr v8, v11

    .line 1160
    const/high16 v11, 0x42b40000    # 90.0f

    .line 1161
    .line 1162
    invoke-static {v11, v8, v9, v7, v3}, Lx/f0;->E0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 1163
    .line 1164
    .line 1165
    move-result v7

    .line 1166
    if-nez v7, :cond_3c

    .line 1167
    .line 1168
    if-eqz v5, :cond_3b

    .line 1169
    .line 1170
    goto :goto_1e

    .line 1171
    :cond_3b
    const/4 v5, 0x0

    .line 1172
    goto :goto_1f

    .line 1173
    :cond_3c
    :goto_1e
    const/4 v5, 0x1

    .line 1174
    :cond_3d
    :goto_1f
    iget-object v7, v4, Lx/b0;->e:Landroid/widget/EdgeEffect;

    .line 1175
    .line 1176
    invoke-static {v7}, Lx/b0;->f(Landroid/widget/EdgeEffect;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v7

    .line 1180
    if-eqz v7, :cond_40

    .line 1181
    .line 1182
    invoke-virtual {v4}, Lx/b0;->b()Landroid/widget/EdgeEffect;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v4

    .line 1186
    iget v2, v2, Ld0/h0;->d:F

    .line 1187
    .line 1188
    invoke-virtual {v0, v2}, Lq2/j0;->S(F)F

    .line 1189
    .line 1190
    .line 1191
    move-result v2

    .line 1192
    invoke-virtual {v0}, Lq2/j0;->g()J

    .line 1193
    .line 1194
    .line 1195
    move-result-wide v7

    .line 1196
    shr-long v7, v7, v16

    .line 1197
    .line 1198
    long-to-int v8, v7

    .line 1199
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1200
    .line 1201
    .line 1202
    move-result v7

    .line 1203
    neg-float v7, v7

    .line 1204
    invoke-virtual {v0}, Lq2/j0;->g()J

    .line 1205
    .line 1206
    .line 1207
    move-result-wide v8

    .line 1208
    and-long v8, v8, v17

    .line 1209
    .line 1210
    long-to-int v0, v8

    .line 1211
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1212
    .line 1213
    .line 1214
    move-result v0

    .line 1215
    neg-float v0, v0

    .line 1216
    add-float/2addr v0, v2

    .line 1217
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1218
    .line 1219
    .line 1220
    move-result v2

    .line 1221
    int-to-long v7, v2

    .line 1222
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1223
    .line 1224
    .line 1225
    move-result v0

    .line 1226
    int-to-long v11, v0

    .line 1227
    shl-long v7, v7, v16

    .line 1228
    .line 1229
    and-long v11, v11, v17

    .line 1230
    .line 1231
    or-long/2addr v7, v11

    .line 1232
    const/high16 v0, 0x43340000    # 180.0f

    .line 1233
    .line 1234
    invoke-static {v0, v7, v8, v4, v3}, Lx/f0;->E0(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v0

    .line 1238
    if-nez v0, :cond_3e

    .line 1239
    .line 1240
    if-eqz v5, :cond_3f

    .line 1241
    .line 1242
    :cond_3e
    const/4 v10, 0x1

    .line 1243
    :cond_3f
    move v5, v10

    .line 1244
    :cond_40
    if-eqz v5, :cond_41

    .line 1245
    .line 1246
    invoke-virtual {v6}, Lx/h;->d()V

    .line 1247
    .line 1248
    .line 1249
    :cond_41
    :goto_20
    return-void

    .line 1250
    nop

    .line 1251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
