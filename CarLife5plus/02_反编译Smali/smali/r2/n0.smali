.class public abstract Lr2/n0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/c0;

.field public static final b:Lf1/w2;

.field public static final c:Lf1/c0;

.field public static final d:Lf1/w2;

.field public static final e:Lf1/w2;

.field public static final f:Lf1/w2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lr2/k0;->b:Lr2/k0;

    .line 2
    .line 3
    new-instance v1, Lf1/c0;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lf1/c0;-><init>(Lf9/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lr2/n0;->a:Lf1/c0;

    .line 9
    .line 10
    sget-object v0, Lr2/k0;->c:Lr2/k0;

    .line 11
    .line 12
    new-instance v1, Lf1/w2;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lr2/n0;->b:Lf1/w2;

    .line 18
    .line 19
    sget-object v0, Lr2/n;->e:Lr2/n;

    .line 20
    .line 21
    new-instance v1, Lf1/c0;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lf1/c0;-><init>(Lf9/k;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lr2/n0;->c:Lf1/c0;

    .line 27
    .line 28
    sget-object v0, Lr2/k0;->d:Lr2/k0;

    .line 29
    .line 30
    new-instance v1, Lf1/w2;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lr2/n0;->d:Lf1/w2;

    .line 36
    .line 37
    sget-object v0, Lr2/k0;->e:Lr2/k0;

    .line 38
    .line 39
    new-instance v1, Lf1/w2;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lr2/n0;->e:Lf1/w2;

    .line 45
    .line 46
    sget-object v0, Lr2/k0;->f:Lr2/k0;

    .line 47
    .line 48
    new-instance v1, Lf1/w2;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 51
    .line 52
    .line 53
    sput-object v1, Lr2/n0;->f:Lf1/w2;

    .line 54
    .line 55
    return-void
.end method

.method public static final a(Lr2/u;Lf9/n;Lf1/s;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const v4, -0x1f032317

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v4}, Lf1/s;->Y(I)Lf1/s;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v4, 0x2

    .line 24
    :goto_0
    or-int/2addr v4, v3

    .line 25
    invoke-virtual {v2, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz v7, :cond_1

    .line 30
    .line 31
    const/16 v7, 0x20

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v7, 0x10

    .line 35
    .line 36
    :goto_1
    or-int/2addr v4, v7

    .line 37
    and-int/lit8 v7, v4, 0x13

    .line 38
    .line 39
    const/16 v8, 0x12

    .line 40
    .line 41
    const/4 v10, 0x1

    .line 42
    if-eq v7, v8, :cond_2

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 v7, 0x0

    .line 47
    :goto_2
    and-int/2addr v4, v10

    .line 48
    invoke-virtual {v2, v4, v7}, Lf1/s;->N(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1a

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 63
    .line 64
    if-ne v8, v11, :cond_3

    .line 65
    .line 66
    new-instance v8, Landroid/content/res/Configuration;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    invoke-direct {v8, v12}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v8}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v2, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    check-cast v8, Lf1/b1;

    .line 87
    .line 88
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    const/16 v13, 0x8

    .line 93
    .line 94
    if-ne v12, v11, :cond_4

    .line 95
    .line 96
    new-instance v12, Lb2/a;

    .line 97
    .line 98
    invoke-direct {v12, v13, v8}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    check-cast v12, Lf9/k;

    .line 105
    .line 106
    invoke-virtual {v0, v12}, Lr2/u;->setConfigurationChangeObserver(Lf9/k;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    if-ne v12, v11, :cond_5

    .line 114
    .line 115
    new-instance v12, Lr2/u0;

    .line 116
    .line 117
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    check-cast v12, Lr2/u0;

    .line 124
    .line 125
    invoke-virtual {v0}, Lr2/u;->getViewTreeOwners()Lr2/l;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    if-eqz v14, :cond_19

    .line 130
    .line 131
    iget-object v15, v14, Lr2/l;->b:La5/g;

    .line 132
    .line 133
    const/16 v16, 0x4

    .line 134
    .line 135
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    const/16 v17, 0x0

    .line 140
    .line 141
    if-ne v5, v11, :cond_a

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    const/16 v18, 0x8

    .line 148
    .line 149
    const-string v13, "null cannot be cast to non-null type android.view.View"

    .line 150
    .line 151
    invoke-static {v5, v13}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    check-cast v5, Landroid/view/View;

    .line 155
    .line 156
    const v13, 0x7f08004c

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    const/16 v19, 0x5

    .line 164
    .line 165
    instance-of v7, v13, Ljava/lang/String;

    .line 166
    .line 167
    const/16 v20, 0x0

    .line 168
    .line 169
    if-eqz v7, :cond_6

    .line 170
    .line 171
    check-cast v13, Ljava/lang/String;

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    move-object/from16 v13, v20

    .line 175
    .line 176
    :goto_3
    if-nez v13, :cond_7

    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-class v7, Lo1/f;

    .line 192
    .line 193
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const/16 v7, 0x3a

    .line 201
    .line 202
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-interface {v15}, La5/g;->d()Landroid/support/v4/media/session/t;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    invoke-virtual {v7, v5}, Landroid/support/v4/media/session/t;->L0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    if-eqz v13, :cond_9

    .line 221
    .line 222
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 223
    .line 224
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v13}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 228
    .line 229
    .line 230
    move-result-object v20

    .line 231
    check-cast v20, Ljava/lang/Iterable;

    .line 232
    .line 233
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v20

    .line 237
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v22

    .line 241
    if-eqz v22, :cond_8

    .line 242
    .line 243
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v22

    .line 247
    move-object/from16 v10, v22

    .line 248
    .line 249
    check-cast v10, Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v13, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    move-object/from16 v24, v8

    .line 256
    .line 257
    const-string v8, "null cannot be cast to non-null type java.util.ArrayList<kotlin.Any?>"

    .line 258
    .line 259
    invoke-static {v9, v8}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-object/from16 v8, v24

    .line 266
    .line 267
    const/4 v10, 0x1

    .line 268
    goto :goto_4

    .line 269
    :cond_8
    :goto_5
    move-object/from16 v24, v8

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_9
    move-object/from16 v6, v20

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :goto_6
    sget-object v8, Lr2/n;->f:Lr2/n;

    .line 276
    .line 277
    sget-object v9, Lo1/h;->a:Lf1/w2;

    .line 278
    .line 279
    new-instance v9, Lo1/g;

    .line 280
    .line 281
    invoke-direct {v9, v6, v8}, Lo1/g;-><init>(Ljava/util/Map;Lf9/k;)V

    .line 282
    .line 283
    .line 284
    :try_start_0
    new-instance v6, Lc/f;

    .line 285
    .line 286
    const/4 v8, 0x3

    .line 287
    invoke-direct {v6, v8, v9}, Lc/f;-><init>(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v5, v6}, Landroid/support/v4/media/session/t;->h1(Ljava/lang/String;La5/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    .line 293
    const/4 v6, 0x1

    .line 294
    goto :goto_7

    .line 295
    :catch_0
    const/4 v6, 0x0

    .line 296
    :goto_7
    new-instance v8, Lr2/l1;

    .line 297
    .line 298
    new-instance v10, Lr2/m1;

    .line 299
    .line 300
    invoke-direct {v10, v6, v7, v5}, Lr2/m1;-><init>(ZLandroid/support/v4/media/session/t;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-direct {v8, v9, v10}, Lr2/l1;-><init>(Lo1/g;Lr2/m1;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    move-object v5, v8

    .line 310
    goto :goto_8

    .line 311
    :cond_a
    move-object/from16 v24, v8

    .line 312
    .line 313
    const/16 v18, 0x8

    .line 314
    .line 315
    const/16 v19, 0x5

    .line 316
    .line 317
    :goto_8
    check-cast v5, Lr2/l1;

    .line 318
    .line 319
    invoke-virtual {v2, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    const/16 v8, 0x9

    .line 328
    .line 329
    if-nez v6, :cond_b

    .line 330
    .line 331
    if-ne v7, v11, :cond_c

    .line 332
    .line 333
    :cond_b
    new-instance v7, Lb2/a;

    .line 334
    .line 335
    invoke-direct {v7, v8, v5}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    :cond_c
    check-cast v7, Lf9/k;

    .line 342
    .line 343
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 344
    .line 345
    invoke-static {v6, v7, v2}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    const/4 v7, 0x7

    .line 353
    if-ne v6, v11, :cond_e

    .line 354
    .line 355
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 356
    .line 357
    const/16 v9, 0x1f

    .line 358
    .line 359
    if-lt v6, v9, :cond_d

    .line 360
    .line 361
    invoke-static {v4}, Li7/a;->o(Landroid/content/Context;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    check-cast v6, Landroid/os/Vibrator;

    .line 366
    .line 367
    const/4 v9, 0x2

    .line 368
    const/4 v10, 0x1

    .line 369
    filled-new-array {v10, v7, v9}, [I

    .line 370
    .line 371
    .line 372
    move-result-object v13

    .line 373
    invoke-static {v6, v13}, Le4/o1;->h(Landroid/os/Vibrator;[I)Z

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    if-eqz v6, :cond_d

    .line 378
    .line 379
    new-instance v6, Lg2/b;

    .line 380
    .line 381
    invoke-virtual {v0}, Lr2/u;->getView()Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    invoke-direct {v6, v9, v10}, Lg2/b;-><init>(Landroid/view/View;I)V

    .line 386
    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_d
    new-instance v6, Lr2/y1;

    .line 390
    .line 391
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 392
    .line 393
    .line 394
    :goto_9
    invoke-virtual {v2, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    :cond_e
    check-cast v6, Lg2/a;

    .line 398
    .line 399
    invoke-interface/range {v24 .. v24}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    check-cast v9, Landroid/content/res/Configuration;

    .line 404
    .line 405
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v10

    .line 409
    if-ne v10, v11, :cond_f

    .line 410
    .line 411
    new-instance v10, Lw2/c;

    .line 412
    .line 413
    invoke-direct {v10}, Lw2/c;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    :cond_f
    check-cast v10, Lw2/c;

    .line 420
    .line 421
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v13

    .line 425
    if-ne v13, v11, :cond_11

    .line 426
    .line 427
    new-instance v13, Landroid/content/res/Configuration;

    .line 428
    .line 429
    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    .line 430
    .line 431
    .line 432
    if-eqz v9, :cond_10

    .line 433
    .line 434
    invoke-virtual {v13, v9}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 435
    .line 436
    .line 437
    :cond_10
    invoke-virtual {v2, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    :cond_11
    check-cast v13, Landroid/content/res/Configuration;

    .line 441
    .line 442
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    if-ne v9, v11, :cond_12

    .line 447
    .line 448
    new-instance v9, Lr2/l0;

    .line 449
    .line 450
    invoke-direct {v9, v13, v10}, Lr2/l0;-><init>(Landroid/content/res/Configuration;Lw2/c;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    :cond_12
    check-cast v9, Lr2/l0;

    .line 457
    .line 458
    invoke-virtual {v2, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v13

    .line 462
    const/16 v20, 0x9

    .line 463
    .line 464
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    const/4 v7, 0x6

    .line 469
    if-nez v13, :cond_13

    .line 470
    .line 471
    if-ne v8, v11, :cond_14

    .line 472
    .line 473
    :cond_13
    new-instance v8, Lc1/a1;

    .line 474
    .line 475
    invoke-direct {v8, v7, v4, v9}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    :cond_14
    check-cast v8, Lf9/k;

    .line 482
    .line 483
    invoke-static {v10, v8, v2}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v8

    .line 490
    if-ne v8, v11, :cond_15

    .line 491
    .line 492
    new-instance v8, Lw2/d;

    .line 493
    .line 494
    invoke-direct {v8}, Lw2/d;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    :cond_15
    check-cast v8, Lw2/d;

    .line 501
    .line 502
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v9

    .line 506
    if-ne v9, v11, :cond_16

    .line 507
    .line 508
    new-instance v9, Lr2/m0;

    .line 509
    .line 510
    invoke-direct {v9, v8}, Lr2/m0;-><init>(Lw2/d;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    :cond_16
    check-cast v9, Lr2/m0;

    .line 517
    .line 518
    invoke-virtual {v2, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v13

    .line 522
    const/16 v26, 0x6

    .line 523
    .line 524
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    if-nez v13, :cond_17

    .line 529
    .line 530
    if-ne v7, v11, :cond_18

    .line 531
    .line 532
    :cond_17
    new-instance v7, Lc1/a1;

    .line 533
    .line 534
    const/4 v11, 0x7

    .line 535
    invoke-direct {v7, v11, v4, v9}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    :cond_18
    check-cast v7, Lf9/k;

    .line 542
    .line 543
    invoke-static {v8, v7, v2}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 544
    .line 545
    .line 546
    sget-object v7, Lr2/i1;->v:Lf1/c0;

    .line 547
    .line 548
    invoke-virtual {v2, v7}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    check-cast v9, Ljava/lang/Boolean;

    .line 553
    .line 554
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 555
    .line 556
    .line 557
    move-result v9

    .line 558
    invoke-virtual {v0}, Lr2/u;->getScrollCaptureInProgress$ui_release()Z

    .line 559
    .line 560
    .line 561
    move-result v11

    .line 562
    or-int/2addr v9, v11

    .line 563
    invoke-interface/range {v24 .. v24}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v11

    .line 567
    check-cast v11, Landroid/content/res/Configuration;

    .line 568
    .line 569
    sget-object v13, Lr2/n0;->a:Lf1/c0;

    .line 570
    .line 571
    invoke-virtual {v13, v11}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 572
    .line 573
    .line 574
    move-result-object v11

    .line 575
    sget-object v13, Lr2/n0;->b:Lf1/w2;

    .line 576
    .line 577
    invoke-virtual {v13, v4}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    sget-object v13, Ls4/a;->a:Lf1/t1;

    .line 582
    .line 583
    iget-object v14, v14, Lr2/l;->a:Landroidx/lifecycle/t;

    .line 584
    .line 585
    invoke-virtual {v13, v14}, Lf1/t1;->a(Ljava/lang/Object;)Lf1/u1;

    .line 586
    .line 587
    .line 588
    move-result-object v13

    .line 589
    sget-object v14, Lb5/a;->a:Lf1/t1;

    .line 590
    .line 591
    invoke-virtual {v14, v15}, Lf1/t1;->a(Ljava/lang/Object;)Lf1/u1;

    .line 592
    .line 593
    .line 594
    move-result-object v14

    .line 595
    sget-object v15, Lo1/h;->a:Lf1/w2;

    .line 596
    .line 597
    invoke-virtual {v15, v5}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    sget-object v15, Lr2/n0;->f:Lf1/w2;

    .line 602
    .line 603
    move-object/from16 v24, v4

    .line 604
    .line 605
    invoke-virtual {v0}, Lr2/u;->getView()Landroid/view/View;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    invoke-virtual {v15, v4}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 610
    .line 611
    .line 612
    move-result-object v4

    .line 613
    sget-object v15, Lr2/n0;->d:Lf1/w2;

    .line 614
    .line 615
    invoke-virtual {v15, v10}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 616
    .line 617
    .line 618
    move-result-object v10

    .line 619
    sget-object v15, Lr2/n0;->e:Lf1/w2;

    .line 620
    .line 621
    invoke-virtual {v15, v8}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 622
    .line 623
    .line 624
    move-result-object v8

    .line 625
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 626
    .line 627
    .line 628
    move-result-object v9

    .line 629
    invoke-virtual {v7, v9}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 630
    .line 631
    .line 632
    move-result-object v7

    .line 633
    sget-object v9, Lr2/i1;->l:Lf1/w2;

    .line 634
    .line 635
    invoke-virtual {v9, v6}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    const/16 v9, 0xa

    .line 640
    .line 641
    new-array v9, v9, [Lf1/u1;

    .line 642
    .line 643
    aput-object v11, v9, v17

    .line 644
    .line 645
    const/16 v23, 0x1

    .line 646
    .line 647
    aput-object v24, v9, v23

    .line 648
    .line 649
    const/16 v21, 0x2

    .line 650
    .line 651
    aput-object v13, v9, v21

    .line 652
    .line 653
    const/4 v11, 0x3

    .line 654
    aput-object v14, v9, v11

    .line 655
    .line 656
    aput-object v5, v9, v16

    .line 657
    .line 658
    aput-object v4, v9, v19

    .line 659
    .line 660
    aput-object v10, v9, v26

    .line 661
    .line 662
    const/16 v25, 0x7

    .line 663
    .line 664
    aput-object v8, v9, v25

    .line 665
    .line 666
    aput-object v7, v9, v18

    .line 667
    .line 668
    aput-object v6, v9, v20

    .line 669
    .line 670
    new-instance v4, Ld1/k;

    .line 671
    .line 672
    invoke-direct {v4, v0, v12, v1, v11}, Ld1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;I)V

    .line 673
    .line 674
    .line 675
    const v5, 0x3f2ad1a9

    .line 676
    .line 677
    .line 678
    invoke-static {v5, v4, v2}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    const/16 v5, 0x38

    .line 683
    .line 684
    invoke-static {v9, v4, v2, v5}, Lf1/b;->b([Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 685
    .line 686
    .line 687
    goto :goto_a

    .line 688
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 689
    .line 690
    const-string v1, "Called when the ViewTreeOwnersAvailability is not yet in Available state"

    .line 691
    .line 692
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    throw v0

    .line 696
    :cond_1a
    const/16 v19, 0x5

    .line 697
    .line 698
    invoke-virtual {v2}, Lf1/s;->Q()V

    .line 699
    .line 700
    .line 701
    :goto_a
    invoke-virtual {v2}, Lf1/s;->r()Lf1/w1;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    if-eqz v2, :cond_1b

    .line 706
    .line 707
    new-instance v4, Lc1/h;

    .line 708
    .line 709
    const/4 v5, 0x5

    .line 710
    invoke-direct {v4, v0, v1, v3, v5}, Lc1/h;-><init>(Ljava/lang/Object;Lf9/n;II)V

    .line 711
    .line 712
    .line 713
    iput-object v4, v2, Lf1/w1;->d:Lf9/n;

    .line 714
    .line 715
    :cond_1b
    return-void
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "CompositionLocal "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, " not present"

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method
