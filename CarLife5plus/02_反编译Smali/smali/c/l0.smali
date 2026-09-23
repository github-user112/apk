.class public final synthetic Lc/l0;
.super Lg9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iput p8, p0, Lc/l0;->i:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lg9/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc/l0;->i:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lx/c0;

    .line 11
    .line 12
    iget-object v1, v1, Lx/c0;->v:Lw1/s;

    .line 13
    .line 14
    invoke-static {v1}, Lp9/v;->z(Lw1/s;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    return-object v1

    .line 23
    :pswitch_0
    iget-object v1, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lw1/g;

    .line 26
    .line 27
    iget-object v2, v1, Lw1/g;->c:Ls/i0;

    .line 28
    .line 29
    iget-object v3, v1, Lw1/g;->d:Ls/i0;

    .line 30
    .line 31
    iget-object v4, v1, Lw1/g;->a:Lw1/j;

    .line 32
    .line 33
    iget-object v5, v4, Lw1/j;->h:Lw1/s;

    .line 34
    .line 35
    sget-object v6, Lw1/r;->d:Lw1/r;

    .line 36
    .line 37
    if-nez v5, :cond_3

    .line 38
    .line 39
    iget-object v5, v3, Ls/i0;->b:[Ljava/lang/Object;

    .line 40
    .line 41
    const-wide/16 v16, 0x80

    .line 42
    .line 43
    iget-object v7, v3, Ls/i0;->a:[J

    .line 44
    .line 45
    array-length v8, v7

    .line 46
    add-int/lit8 v8, v8, -0x2

    .line 47
    .line 48
    if-ltz v8, :cond_10

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    const-wide/16 v18, 0xff

    .line 52
    .line 53
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    :goto_0
    const/4 v10, 0x7

    .line 59
    aget-wide v11, v7, v9

    .line 60
    .line 61
    const/16 v13, 0x8

    .line 62
    .line 63
    not-long v14, v11

    .line 64
    shl-long/2addr v14, v10

    .line 65
    and-long/2addr v14, v11

    .line 66
    and-long v14, v14, v20

    .line 67
    .line 68
    cmp-long v22, v14, v20

    .line 69
    .line 70
    if-eqz v22, :cond_2

    .line 71
    .line 72
    sub-int v14, v9, v8

    .line 73
    .line 74
    not-int v14, v14

    .line 75
    ushr-int/lit8 v14, v14, 0x1f

    .line 76
    .line 77
    rsub-int/lit8 v14, v14, 0x8

    .line 78
    .line 79
    const/4 v15, 0x0

    .line 80
    :goto_1
    if-ge v15, v14, :cond_1

    .line 81
    .line 82
    and-long v22, v11, v18

    .line 83
    .line 84
    cmp-long v24, v22, v16

    .line 85
    .line 86
    if-gez v24, :cond_0

    .line 87
    .line 88
    shl-int/lit8 v22, v9, 0x3

    .line 89
    .line 90
    add-int v22, v22, v15

    .line 91
    .line 92
    aget-object v22, v5, v22

    .line 93
    .line 94
    const/16 v23, 0x7

    .line 95
    .line 96
    move-object/from16 v10, v22

    .line 97
    .line 98
    check-cast v10, Lw1/e;

    .line 99
    .line 100
    invoke-interface {v10, v6}, Lw1/e;->p(Lw1/r;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_0
    const/16 v23, 0x7

    .line 105
    .line 106
    :goto_2
    shr-long/2addr v11, v13

    .line 107
    add-int/lit8 v15, v15, 0x1

    .line 108
    .line 109
    const/4 v10, 0x7

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    const/16 v23, 0x7

    .line 112
    .line 113
    if-ne v14, v13, :cond_10

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_2
    const/16 v23, 0x7

    .line 117
    .line 118
    :goto_3
    if-eq v9, v8, :cond_10

    .line 119
    .line 120
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    const-wide/16 v16, 0x80

    .line 124
    .line 125
    const-wide/16 v18, 0xff

    .line 126
    .line 127
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    const/16 v23, 0x7

    .line 133
    .line 134
    iget-boolean v7, v5, Lr1/o;->n:Z

    .line 135
    .line 136
    if-eqz v7, :cond_10

    .line 137
    .line 138
    invoke-virtual {v2, v5}, Ls/i0;->c(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_4

    .line 143
    .line 144
    invoke-virtual {v5}, Lw1/s;->D0()V

    .line 145
    .line 146
    .line 147
    :cond_4
    invoke-virtual {v5}, Lw1/s;->C0()Lw1/r;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    iget-object v8, v5, Lr1/o;->a:Lr1/o;

    .line 152
    .line 153
    iget-boolean v8, v8, Lr1/o;->n:Z

    .line 154
    .line 155
    if-nez v8, :cond_5

    .line 156
    .line 157
    const-string v8, "visitAncestors called on an unattached node"

    .line 158
    .line 159
    invoke-static {v8}, Ln2/a;->b(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_5
    iget-object v8, v5, Lr1/o;->a:Lr1/o;

    .line 163
    .line 164
    invoke-static {v5}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    const/4 v9, 0x0

    .line 169
    :goto_4
    if-eqz v5, :cond_c

    .line 170
    .line 171
    iget-object v10, v5, Lq2/h0;->E:Lq2/d1;

    .line 172
    .line 173
    iget-object v10, v10, Lq2/d1;->f:Lr1/o;

    .line 174
    .line 175
    iget v10, v10, Lr1/o;->d:I

    .line 176
    .line 177
    and-int/lit16 v10, v10, 0x1400

    .line 178
    .line 179
    if-eqz v10, :cond_a

    .line 180
    .line 181
    :goto_5
    if-eqz v8, :cond_a

    .line 182
    .line 183
    iget v10, v8, Lr1/o;->c:I

    .line 184
    .line 185
    and-int/lit16 v11, v10, 0x1400

    .line 186
    .line 187
    if-eqz v11, :cond_9

    .line 188
    .line 189
    and-int/lit16 v10, v10, 0x400

    .line 190
    .line 191
    if-eqz v10, :cond_6

    .line 192
    .line 193
    add-int/lit8 v9, v9, 0x1

    .line 194
    .line 195
    :cond_6
    instance-of v10, v8, Lw1/e;

    .line 196
    .line 197
    if-eqz v10, :cond_9

    .line 198
    .line 199
    invoke-virtual {v3, v8}, Ls/i0;->c(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-nez v10, :cond_7

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_7
    const/4 v10, 0x1

    .line 207
    if-gt v9, v10, :cond_8

    .line 208
    .line 209
    move-object v10, v8

    .line 210
    check-cast v10, Lw1/e;

    .line 211
    .line 212
    invoke-interface {v10, v7}, Lw1/e;->p(Lw1/r;)V

    .line 213
    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_8
    move-object v10, v8

    .line 217
    check-cast v10, Lw1/e;

    .line 218
    .line 219
    sget-object v11, Lw1/r;->b:Lw1/r;

    .line 220
    .line 221
    invoke-interface {v10, v11}, Lw1/e;->p(Lw1/r;)V

    .line 222
    .line 223
    .line 224
    :goto_6
    invoke-virtual {v3, v8}, Ls/i0;->l(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    :cond_9
    :goto_7
    iget-object v8, v8, Lr1/o;->e:Lr1/o;

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_a
    invoke-virtual {v5}, Lq2/h0;->v()Lq2/h0;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    if-eqz v5, :cond_b

    .line 235
    .line 236
    iget-object v8, v5, Lq2/h0;->E:Lq2/d1;

    .line 237
    .line 238
    if-eqz v8, :cond_b

    .line 239
    .line 240
    iget-object v8, v8, Lq2/d1;->e:Lq2/a2;

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_b
    const/4 v8, 0x0

    .line 244
    goto :goto_4

    .line 245
    :cond_c
    iget-object v5, v3, Ls/i0;->b:[Ljava/lang/Object;

    .line 246
    .line 247
    iget-object v7, v3, Ls/i0;->a:[J

    .line 248
    .line 249
    array-length v8, v7

    .line 250
    add-int/lit8 v8, v8, -0x2

    .line 251
    .line 252
    if-ltz v8, :cond_10

    .line 253
    .line 254
    const/4 v9, 0x0

    .line 255
    :goto_8
    aget-wide v10, v7, v9

    .line 256
    .line 257
    not-long v14, v10

    .line 258
    shl-long v14, v14, v23

    .line 259
    .line 260
    and-long/2addr v14, v10

    .line 261
    and-long v14, v14, v20

    .line 262
    .line 263
    cmp-long v12, v14, v20

    .line 264
    .line 265
    if-eqz v12, :cond_f

    .line 266
    .line 267
    sub-int v12, v9, v8

    .line 268
    .line 269
    not-int v12, v12

    .line 270
    ushr-int/lit8 v12, v12, 0x1f

    .line 271
    .line 272
    const/16 v13, 0x8

    .line 273
    .line 274
    rsub-int/lit8 v14, v12, 0x8

    .line 275
    .line 276
    const/4 v12, 0x0

    .line 277
    :goto_9
    if-ge v12, v14, :cond_e

    .line 278
    .line 279
    and-long v24, v10, v18

    .line 280
    .line 281
    cmp-long v15, v24, v16

    .line 282
    .line 283
    if-gez v15, :cond_d

    .line 284
    .line 285
    shl-int/lit8 v15, v9, 0x3

    .line 286
    .line 287
    add-int/2addr v15, v12

    .line 288
    aget-object v15, v5, v15

    .line 289
    .line 290
    check-cast v15, Lw1/e;

    .line 291
    .line 292
    invoke-interface {v15, v6}, Lw1/e;->p(Lw1/r;)V

    .line 293
    .line 294
    .line 295
    :cond_d
    const/16 v13, 0x8

    .line 296
    .line 297
    shr-long/2addr v10, v13

    .line 298
    add-int/lit8 v12, v12, 0x1

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_e
    const/16 v13, 0x8

    .line 302
    .line 303
    if-ne v14, v13, :cond_10

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_f
    const/16 v13, 0x8

    .line 307
    .line 308
    :goto_a
    if-eq v9, v8, :cond_10

    .line 309
    .line 310
    add-int/lit8 v9, v9, 0x1

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_10
    iget-object v5, v4, Lw1/j;->h:Lw1/s;

    .line 314
    .line 315
    if-eqz v5, :cond_11

    .line 316
    .line 317
    iget-object v5, v4, Lw1/j;->c:Lw1/s;

    .line 318
    .line 319
    invoke-virtual {v5}, Lw1/s;->C0()Lw1/r;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    if-ne v5, v6, :cond_12

    .line 324
    .line 325
    :cond_11
    invoke-virtual {v4}, Lw1/j;->c()V

    .line 326
    .line 327
    .line 328
    :cond_12
    invoke-virtual {v2}, Ls/i0;->b()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3}, Ls/i0;->b()V

    .line 332
    .line 333
    .line 334
    const/4 v2, 0x0

    .line 335
    iput-boolean v2, v1, Lw1/g;->e:Z

    .line 336
    .line 337
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 338
    .line 339
    return-object v1

    .line 340
    :pswitch_1
    iget-object v1, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v1, Landroid/view/View;

    .line 343
    .line 344
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 345
    .line 346
    const/16 v3, 0x1e

    .line 347
    .line 348
    if-lt v2, v3, :cond_13

    .line 349
    .line 350
    invoke-static {v1}, Le4/h;->e(Landroid/view/View;)V

    .line 351
    .line 352
    .line 353
    :cond_13
    const/16 v3, 0x1d

    .line 354
    .line 355
    if-lt v2, v3, :cond_15

    .line 356
    .line 357
    invoke-static {v1}, Lu2/a;->a(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    if-nez v2, :cond_14

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_14
    new-instance v3, Landroid/support/v4/media/session/t;

    .line 365
    .line 366
    const/16 v4, 0x19

    .line 367
    .line 368
    invoke-direct {v3, v4, v2, v1}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    goto :goto_c

    .line 372
    :cond_15
    :goto_b
    const/4 v3, 0x0

    .line 373
    :goto_c
    return-object v3

    .line 374
    :pswitch_2
    iget-object v1, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v1, Ls0/e;

    .line 377
    .line 378
    invoke-interface {v1}, Ls0/e;->I()Lo0/c;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    return-object v1

    .line 383
    :pswitch_3
    iget-object v1, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v1, Lc/m0;

    .line 386
    .line 387
    invoke-virtual {v1}, Lc/m0;->e()V

    .line 388
    .line 389
    .line 390
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 391
    .line 392
    return-object v1

    .line 393
    :pswitch_4
    iget-object v1, v0, Lg9/d;->b:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v1, Lc/m0;

    .line 396
    .line 397
    invoke-virtual {v1}, Lc/m0;->e()V

    .line 398
    .line 399
    .line 400
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 401
    .line 402
    return-object v1

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
