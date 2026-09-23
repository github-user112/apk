.class public final Ly7/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/n;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/h1;


# direct methods
.method public synthetic constructor <init>(Lf9/n;Ljava/lang/String;Lf1/b1;Lf1/h1;I)V
    .locals 0

    .line 1
    iput p5, p0, Ly7/r;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly7/r;->b:Lf9/n;

    .line 4
    .line 5
    iput-object p2, p0, Ly7/r;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Ly7/r;->d:Lf1/b1;

    .line 8
    .line 9
    iput-object p4, p0, Ly7/r;->e:Lf1/h1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ly7/r;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 8
    .line 9
    const v4, -0x48fade91

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v15, p1

    .line 19
    .line 20
    check-cast v15, Lf1/s;

    .line 21
    .line 22
    move-object/from16 v1, p2

    .line 23
    .line 24
    check-cast v1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    and-int/lit8 v1, v1, 0x3

    .line 31
    .line 32
    if-ne v1, v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_1
    :goto_0
    new-instance v8, Ly7/r;

    .line 47
    .line 48
    const/4 v13, 0x0

    .line 49
    iget-object v9, v0, Ly7/r;->b:Lf9/n;

    .line 50
    .line 51
    iget-object v10, v0, Ly7/r;->c:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v11, v0, Ly7/r;->d:Lf1/b1;

    .line 54
    .line 55
    iget-object v12, v0, Ly7/r;->e:Lf1/h1;

    .line 56
    .line 57
    invoke-direct/range {v8 .. v13}, Ly7/r;-><init>(Lf9/n;Ljava/lang/String;Lf1/b1;Lf1/h1;I)V

    .line 58
    .line 59
    .line 60
    const v1, 0x69f14773

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v8, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/16 v8, 0x30

    .line 68
    .line 69
    const/4 v13, 0x0

    .line 70
    invoke-static {v13, v1, v15, v8, v6}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 71
    .line 72
    .line 73
    const/16 v1, 0x10

    .line 74
    .line 75
    invoke-static {v1, v15}, Lg5/a;->B(ILf1/s;)F

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    sget-object v8, Lr1/m;->a:Lr1/m;

    .line 80
    .line 81
    invoke-static {v8, v1}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v15, v1}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x15

    .line 89
    .line 90
    invoke-static {v6, v1}, Li9/a;->Z(II)Ll9/d;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v8, Ljava/util/ArrayList;

    .line 95
    .line 96
    const/16 v6, 0xa

    .line 97
    .line 98
    invoke-static {v1, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ll9/b;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :goto_1
    move-object v6, v1

    .line 110
    check-cast v6, Ll9/c;

    .line 111
    .line 112
    iget-boolean v13, v6, Ll9/c;->c:Z

    .line 113
    .line 114
    if-eqz v13, :cond_2

    .line 115
    .line 116
    invoke-virtual {v6}, Ll9/c;->nextInt()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    new-instance v16, Lj8/k0;

    .line 121
    .line 122
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v17

    .line 126
    new-instance v13, Lj8/m0;

    .line 127
    .line 128
    invoke-direct {v13, v6}, Lj8/m0;-><init>(I)V

    .line 129
    .line 130
    .line 131
    const/16 v21, 0x0

    .line 132
    .line 133
    const/16 v22, 0x1c

    .line 134
    .line 135
    const/16 v19, 0x0

    .line 136
    .line 137
    const/16 v20, 0x0

    .line 138
    .line 139
    move-object/from16 v18, v13

    .line 140
    .line 141
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 142
    .line 143
    .line 144
    move-object/from16 v6, v16

    .line 145
    .line 146
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    new-instance v16, Lj8/k0;

    .line 151
    .line 152
    invoke-virtual {v12}, Lf1/h1;->f()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v17

    .line 160
    new-instance v1, Lj8/m0;

    .line 161
    .line 162
    invoke-virtual {v12}, Lf1/h1;->f()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    invoke-direct {v1, v6}, Lj8/m0;-><init>(I)V

    .line 167
    .line 168
    .line 169
    const/16 v21, 0x0

    .line 170
    .line 171
    const/16 v22, 0x1c

    .line 172
    .line 173
    const/16 v19, 0x0

    .line 174
    .line 175
    const/16 v20, 0x0

    .line 176
    .line 177
    move-object/from16 v18, v1

    .line 178
    .line 179
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 180
    .line 181
    .line 182
    sget-object v1, Lr2/n0;->a:Lf1/c0;

    .line 183
    .line 184
    invoke-virtual {v15, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Landroid/content/res/Configuration;

    .line 189
    .line 190
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 191
    .line 192
    if-ne v1, v5, :cond_3

    .line 193
    .line 194
    const/4 v1, 0x5

    .line 195
    goto :goto_2

    .line 196
    :cond_3
    const/4 v1, 0x4

    .line 197
    :goto_2
    invoke-virtual {v15, v4}, Lf1/s;->W(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v15, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-virtual {v15, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    or-int/2addr v4, v5

    .line 209
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    if-nez v4, :cond_4

    .line 214
    .line 215
    if-ne v5, v3, :cond_5

    .line 216
    .line 217
    :cond_4
    new-instance v5, Ly7/q;

    .line 218
    .line 219
    invoke-direct {v5, v9, v10, v12, v11}, Ly7/q;-><init>(Lf9/n;Ljava/lang/String;Lf1/h1;Lf1/b1;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_5
    move-object v14, v5

    .line 226
    check-cast v14, Lf9/k;

    .line 227
    .line 228
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 229
    .line 230
    .line 231
    move-object/from16 v9, v16

    .line 232
    .line 233
    const/16 v16, 0x0

    .line 234
    .line 235
    const/16 v17, 0x38

    .line 236
    .line 237
    const/4 v11, 0x0

    .line 238
    const/4 v12, 0x0

    .line 239
    const/4 v13, 0x0

    .line 240
    move v10, v1

    .line 241
    invoke-static/range {v8 .. v17}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 242
    .line 243
    .line 244
    :goto_3
    return-object v2

    .line 245
    :pswitch_0
    move-object/from16 v1, p1

    .line 246
    .line 247
    check-cast v1, Lf1/s;

    .line 248
    .line 249
    move-object/from16 v8, p2

    .line 250
    .line 251
    check-cast v8, Ljava/lang/Number;

    .line 252
    .line 253
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    and-int/lit8 v8, v8, 0x3

    .line 258
    .line 259
    if-ne v8, v5, :cond_7

    .line 260
    .line 261
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    if-nez v8, :cond_6

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_6
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_7
    :goto_4
    const-string v8, "\u97f3\u9891\u901a\u9053"

    .line 273
    .line 274
    const-string v9, "\u9009\u62e9\u97f3\u9891\u901a\u9053\u7248\u672c"

    .line 275
    .line 276
    filled-new-array {v8, v9}, [Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    invoke-static {v8}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v18

    .line 284
    new-instance v8, Lj8/k0;

    .line 285
    .line 286
    new-instance v10, Lj8/l0;

    .line 287
    .line 288
    invoke-direct {v10, v7}, Lj8/l0;-><init>(Z)V

    .line 289
    .line 290
    .line 291
    const/4 v13, 0x0

    .line 292
    const/16 v14, 0x1c

    .line 293
    .line 294
    const-string v9, "\u65b0\u7248"

    .line 295
    .line 296
    const/4 v11, 0x0

    .line 297
    const/4 v12, 0x0

    .line 298
    invoke-direct/range {v8 .. v14}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 299
    .line 300
    .line 301
    new-instance v9, Lj8/k0;

    .line 302
    .line 303
    new-instance v11, Lj8/l0;

    .line 304
    .line 305
    invoke-direct {v11, v6}, Lj8/l0;-><init>(Z)V

    .line 306
    .line 307
    .line 308
    const/4 v14, 0x0

    .line 309
    const/16 v15, 0x1c

    .line 310
    .line 311
    const-string v10, "\u65e7\u7248"

    .line 312
    .line 313
    invoke-direct/range {v9 .. v15}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 314
    .line 315
    .line 316
    new-array v5, v5, [Lj8/k0;

    .line 317
    .line 318
    aput-object v8, v5, v7

    .line 319
    .line 320
    aput-object v9, v5, v6

    .line 321
    .line 322
    invoke-static {v5}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v19

    .line 326
    sget-boolean v5, Lk7/k;->l:Z

    .line 327
    .line 328
    xor-int/lit8 v21, v5, 0x1

    .line 329
    .line 330
    invoke-virtual {v1, v4}, Lf1/s;->W(I)V

    .line 331
    .line 332
    .line 333
    iget-object v4, v0, Ly7/r;->b:Lf9/n;

    .line 334
    .line 335
    invoke-virtual {v1, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    iget-object v6, v0, Ly7/r;->c:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v1, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    or-int/2addr v5, v8

    .line 346
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    if-nez v5, :cond_8

    .line 351
    .line 352
    if-ne v8, v3, :cond_9

    .line 353
    .line 354
    :cond_8
    new-instance v8, Ly7/q;

    .line 355
    .line 356
    iget-object v3, v0, Ly7/r;->d:Lf1/b1;

    .line 357
    .line 358
    iget-object v5, v0, Ly7/r;->e:Lf1/h1;

    .line 359
    .line 360
    invoke-direct {v8, v4, v6, v3, v5}, Ly7/q;-><init>(Lf9/n;Ljava/lang/String;Lf1/b1;Lf1/h1;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :cond_9
    move-object/from16 v24, v8

    .line 367
    .line 368
    check-cast v24, Lf9/k;

    .line 369
    .line 370
    invoke-virtual {v1, v7}, Lf1/s;->p(Z)V

    .line 371
    .line 372
    .line 373
    const/16 v26, 0x6006

    .line 374
    .line 375
    const/16 v27, 0x24

    .line 376
    .line 377
    const/16 v20, 0x0

    .line 378
    .line 379
    const/16 v22, 0x0

    .line 380
    .line 381
    const/16 v23, 0x0

    .line 382
    .line 383
    move-object/from16 v25, v1

    .line 384
    .line 385
    invoke-static/range {v18 .. v27}, Li9/a;->c(Ljava/util/List;Ljava/util/List;Lj8/o0;ZZLjava/lang/String;Lf9/k;Lf1/s;II)V

    .line 386
    .line 387
    .line 388
    :goto_5
    return-object v2

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
