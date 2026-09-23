.class public final Lc1/a1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/a1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lc1/a1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/a1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lc1/a1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lr2/s0;

    .line 6
    .line 7
    iget-object v0, p0, Lc1/a1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lr2/t0;

    .line 10
    .line 11
    iget-object v1, p1, Lr2/s0;->e:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object p1, p1, Lr2/s0;->g:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit v1

    .line 20
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 21
    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v1

    .line 25
    throw p1
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lc1/a1;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    check-cast v0, Lo2/u0;

    .line 11
    .line 12
    iget-object v2, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lo2/v0;

    .line 15
    .line 16
    iget-object v3, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Ly1/m0;

    .line 19
    .line 20
    iget-object v3, v3, Ly1/m0;->A:Lb2/a;

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lo2/u0;->k(Lo2/u0;Lo2/v0;Lf9/k;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_0
    move-object/from16 v0, p1

    .line 29
    .line 30
    check-cast v0, Lo2/u0;

    .line 31
    .line 32
    iget-object v2, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lo2/v0;

    .line 35
    .line 36
    iget-object v3, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Ly1/l;

    .line 39
    .line 40
    iget-object v3, v3, Ly1/l;->o:Lf9/k;

    .line 41
    .line 42
    invoke-static {v0, v2, v3}, Lo2/u0;->k(Lo2/u0;Lo2/v0;Lf9/k;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_1
    move-object/from16 v0, p1

    .line 49
    .line 50
    check-cast v0, Lf1/i0;

    .line 51
    .line 52
    iget-object v0, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lr3/v;

    .line 55
    .line 56
    iget-object v2, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Lr3/y;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lr3/v;->setPositionProvider(Lr3/y;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lr3/v;->m()V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lr3/i;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_2
    move-object/from16 v0, p1

    .line 73
    .line 74
    check-cast v0, Lr2/l;

    .line 75
    .line 76
    iget-object v2, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Lf9/n;

    .line 79
    .line 80
    iget-object v3, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lr2/f3;

    .line 83
    .line 84
    iget-boolean v4, v3, Lr2/f3;->c:Z

    .line 85
    .line 86
    if-nez v4, :cond_1

    .line 87
    .line 88
    iget-object v0, v0, Lr2/l;->a:Landroidx/lifecycle/t;

    .line 89
    .line 90
    invoke-interface {v0}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v2, v3, Lr2/f3;->e:Lf9/n;

    .line 95
    .line 96
    iget-object v4, v3, Lr2/f3;->d:Landroidx/lifecycle/v;

    .line 97
    .line 98
    if-nez v4, :cond_0

    .line 99
    .line 100
    iput-object v0, v3, Lr2/f3;->d:Landroidx/lifecycle/v;

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/o;

    .line 107
    .line 108
    sget-object v4, Landroidx/lifecycle/o;->c:Landroidx/lifecycle/o;

    .line 109
    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-ltz v0, :cond_1

    .line 115
    .line 116
    iget-object v0, v3, Lr2/f3;->b:Lf1/y;

    .line 117
    .line 118
    new-instance v4, Lr2/e3;

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    invoke-direct {v4, v3, v2, v5}, Lr2/e3;-><init>(Lr2/f3;Lf9/n;I)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Ln1/c;

    .line 125
    .line 126
    const v3, 0x4f523a4f

    .line 127
    .line 128
    .line 129
    invoke-direct {v2, v4, v3, v5}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Lf1/y;->B(Lf9/n;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 136
    .line 137
    return-object v0

    .line 138
    :pswitch_3
    move-object/from16 v0, p1

    .line 139
    .line 140
    check-cast v0, Landroid/view/View;

    .line 141
    .line 142
    iget-object v2, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v2, Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getNextFocusForwardId()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    new-instance v4, Lr2/r;

    .line 151
    .line 152
    const/4 v5, 0x1

    .line 153
    invoke-direct {v4, v3, v5}, Lr2/r;-><init>(II)V

    .line 154
    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    move-object v5, v3

    .line 158
    :goto_1
    invoke-static {v0, v4, v5}, Lr2/j0;->j(Landroid/view/View;Lf9/k;Landroid/view/View;)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-nez v5, :cond_4

    .line 163
    .line 164
    if-ne v0, v2, :cond_2

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    if-eqz v5, :cond_5

    .line 172
    .line 173
    instance-of v6, v5, Landroid/view/View;

    .line 174
    .line 175
    if-nez v6, :cond_3

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_3
    check-cast v5, Landroid/view/View;

    .line 179
    .line 180
    move-object/from16 v18, v5

    .line 181
    .line 182
    move-object v5, v0

    .line 183
    move-object/from16 v0, v18

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    :goto_2
    move-object v3, v5

    .line 187
    :cond_5
    :goto_3
    iget-object v0, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Landroid/view/View;

    .line 190
    .line 191
    if-ne v3, v0, :cond_6

    .line 192
    .line 193
    const/4 v0, 0x1

    .line 194
    goto :goto_4

    .line 195
    :cond_6
    const/4 v0, 0x0

    .line 196
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    return-object v0

    .line 201
    :pswitch_4
    move-object/from16 v0, p1

    .line 202
    .line 203
    check-cast v0, Ljava/lang/Throwable;

    .line 204
    .line 205
    iget-object v0, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Lf1/m1;

    .line 208
    .line 209
    iget-object v0, v0, Lf1/m1;->b:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v0, Landroid/view/Choreographer;

    .line 212
    .line 213
    iget-object v2, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v2, Lr2/t0;

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 218
    .line 219
    .line 220
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 221
    .line 222
    return-object v0

    .line 223
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lc1/a1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    return-object v0

    .line 228
    :pswitch_6
    move-object/from16 v0, p1

    .line 229
    .line 230
    check-cast v0, Ljava/lang/Throwable;

    .line 231
    .line 232
    iget-object v0, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Lr2/u1;

    .line 235
    .line 236
    iget-object v2, v0, Lr2/u1;->c:Ljava/lang/Object;

    .line 237
    .line 238
    monitor-enter v2

    .line 239
    const/4 v3, 0x1

    .line 240
    :try_start_0
    iput-boolean v3, v0, Lr2/u1;->e:Z

    .line 241
    .line 242
    iget-object v3, v0, Lr2/u1;->d:Lh1/e;

    .line 243
    .line 244
    iget-object v4, v3, Lh1/e;->a:[Ljava/lang/Object;

    .line 245
    .line 246
    iget v3, v3, Lh1/e;->c:I

    .line 247
    .line 248
    const/4 v5, 0x0

    .line 249
    :goto_5
    const/4 v6, 0x0

    .line 250
    if-ge v5, v3, :cond_8

    .line 251
    .line 252
    aget-object v7, v4, v5

    .line 253
    .line 254
    check-cast v7, Lq2/e2;

    .line 255
    .line 256
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    check-cast v7, Lg3/l;

    .line 261
    .line 262
    if-eqz v7, :cond_7

    .line 263
    .line 264
    iget-object v8, v7, Lg3/l;->b:Lu0/p;

    .line 265
    .line 266
    if-eqz v8, :cond_7

    .line 267
    .line 268
    invoke-virtual {v7, v8}, Lg3/l;->a(Lu0/p;)V

    .line 269
    .line 270
    .line 271
    iput-object v6, v7, Lg3/l;->b:Lu0/p;

    .line 272
    .line 273
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    goto :goto_6

    .line 278
    :cond_8
    iget-object v0, v0, Lr2/u1;->d:Lh1/e;

    .line 279
    .line 280
    invoke-virtual {v0}, Lh1/e;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .line 282
    .line 283
    monitor-exit v2

    .line 284
    iget-object v0, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Lr2/p0;

    .line 287
    .line 288
    iget-object v0, v0, Lr2/p0;->b:Lg3/x;

    .line 289
    .line 290
    iget-object v2, v0, Lg3/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 291
    .line 292
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v0, Lg3/x;->a:Lg3/r;

    .line 296
    .line 297
    invoke-interface {v0}, Lg3/r;->d()V

    .line 298
    .line 299
    .line 300
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 301
    .line 302
    return-object v0

    .line 303
    :goto_6
    monitor-exit v2

    .line 304
    throw v0

    .line 305
    :pswitch_7
    move-object/from16 v0, p1

    .line 306
    .line 307
    check-cast v0, Lac/w;

    .line 308
    .line 309
    new-instance v0, Lr2/u1;

    .line 310
    .line 311
    iget-object v2, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v2, Lu0/o;

    .line 314
    .line 315
    new-instance v3, Lb1/a;

    .line 316
    .line 317
    iget-object v4, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v4, Lr2/p0;

    .line 320
    .line 321
    const/16 v5, 0xe

    .line 322
    .line 323
    invoke-direct {v3, v5, v4}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-direct {v0, v2, v3}, Lr2/u1;-><init>(Lu0/o;Lb1/a;)V

    .line 327
    .line 328
    .line 329
    return-object v0

    .line 330
    :pswitch_8
    move-object/from16 v0, p1

    .line 331
    .line 332
    check-cast v0, Lf1/i0;

    .line 333
    .line 334
    iget-object v0, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Landroid/content/Context;

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    iget-object v3, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v3, Lr2/m0;

    .line 345
    .line 346
    invoke-virtual {v2, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 347
    .line 348
    .line 349
    new-instance v2, Ld0/u0;

    .line 350
    .line 351
    const/4 v4, 0x5

    .line 352
    invoke-direct {v2, v4, v0, v3}, Ld0/u0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    return-object v2

    .line 356
    :pswitch_9
    move-object/from16 v0, p1

    .line 357
    .line 358
    check-cast v0, Lf1/i0;

    .line 359
    .line 360
    iget-object v0, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v0, Landroid/content/Context;

    .line 363
    .line 364
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    iget-object v3, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v3, Lr2/l0;

    .line 371
    .line 372
    invoke-virtual {v2, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 373
    .line 374
    .line 375
    new-instance v2, Ld0/u0;

    .line 376
    .line 377
    const/4 v4, 0x4

    .line 378
    invoke-direct {v2, v4, v0, v3}, Ld0/u0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    return-object v2

    .line 382
    :pswitch_a
    move-object/from16 v0, p1

    .line 383
    .line 384
    check-cast v0, Lr1/p;

    .line 385
    .line 386
    iget-object v2, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v2, Lq2/h0;

    .line 389
    .line 390
    iget-object v3, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v3, Lr1/p;

    .line 393
    .line 394
    invoke-interface {v0, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v2, v0}, Lq2/h0;->d0(Lr1/p;)V

    .line 399
    .line 400
    .line 401
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 402
    .line 403
    return-object v0

    .line 404
    :pswitch_b
    move-object/from16 v2, p1

    .line 405
    .line 406
    check-cast v2, Lq2/m0;

    .line 407
    .line 408
    iget-object v0, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v0, Lo2/b1;

    .line 411
    .line 412
    iget-object v3, v0, Lo2/b1;->o:Lo2/q;

    .line 413
    .line 414
    iget-object v3, v3, Lo2/q;->g:Lf1/h1;

    .line 415
    .line 416
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-lez v3, :cond_c

    .line 421
    .line 422
    const/4 v3, 0x1

    .line 423
    iput-boolean v3, v2, Lq2/m0;->a:Z

    .line 424
    .line 425
    iget-object v3, v2, Lq2/m0;->d:Lq2/p0;

    .line 426
    .line 427
    invoke-virtual {v3}, Lq2/p0;->l0()Lo2/w;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    iget-wide v5, v2, Lq2/m0;->b:J

    .line 432
    .line 433
    const-wide v7, 0x7fffffff7fffffffL

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    invoke-static {v5, v6, v7, v8}, Ln3/j;->a(JJ)Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-eqz v5, :cond_9

    .line 443
    .line 444
    const-wide/16 v5, 0x0

    .line 445
    .line 446
    invoke-interface {v4, v5, v6}, Lo2/w;->s(J)J

    .line 447
    .line 448
    .line 449
    move-result-wide v5

    .line 450
    invoke-static {v5, v6}, Li9/a;->M(J)J

    .line 451
    .line 452
    .line 453
    move-result-wide v5

    .line 454
    iput-wide v5, v2, Lq2/m0;->b:J

    .line 455
    .line 456
    invoke-interface {v4}, Lo2/w;->k()J

    .line 457
    .line 458
    .line 459
    move-result-wide v5

    .line 460
    iput-wide v5, v2, Lq2/m0;->c:J

    .line 461
    .line 462
    :cond_9
    invoke-virtual {v3}, Lq2/p0;->n0()Lq2/h0;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    iget-object v3, v3, Lq2/h0;->F:Lq2/l0;

    .line 467
    .line 468
    invoke-virtual {v3}, Lq2/l0;->b()V

    .line 469
    .line 470
    .line 471
    invoke-interface {v4}, Lo2/w;->k()J

    .line 472
    .line 473
    .line 474
    move-result-wide v3

    .line 475
    iget-object v5, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v5, Lo2/q;

    .line 478
    .line 479
    iget-object v8, v5, Lo2/q;->f:Ls/h0;

    .line 480
    .line 481
    const/16 v5, 0x20

    .line 482
    .line 483
    shr-long v5, v3, v5

    .line 484
    .line 485
    long-to-int v6, v5

    .line 486
    const-wide v9, 0xffffffffL

    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    and-long/2addr v3, v9

    .line 492
    long-to-int v7, v3

    .line 493
    sget-object v9, Landroidx/compose/ui/layout/b;->b:[Lo2/m1;

    .line 494
    .line 495
    array-length v10, v9

    .line 496
    const/4 v11, 0x0

    .line 497
    const/4 v12, 0x0

    .line 498
    :goto_7
    if-ge v12, v10, :cond_b

    .line 499
    .line 500
    aget-object v3, v9, v12

    .line 501
    .line 502
    invoke-virtual {v8, v3}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    move-object v13, v4

    .line 510
    check-cast v13, Lo2/o1;

    .line 511
    .line 512
    move-object v14, v3

    .line 513
    check-cast v14, Lo2/n1;

    .line 514
    .line 515
    iget-object v3, v14, Lo2/n1;->c:Lo2/p;

    .line 516
    .line 517
    iget-wide v4, v13, Lo2/o1;->h:J

    .line 518
    .line 519
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/layout/b;->a(Lq2/m0;Lo2/p;JII)V

    .line 520
    .line 521
    .line 522
    iget-object v3, v13, Lo2/o1;->b:Lf1/k1;

    .line 523
    .line 524
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    check-cast v3, Ljava/lang/Boolean;

    .line 529
    .line 530
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    if-eqz v3, :cond_a

    .line 535
    .line 536
    iget-object v3, v13, Lo2/o1;->f:Lo2/p;

    .line 537
    .line 538
    iget-wide v4, v13, Lo2/o1;->j:J

    .line 539
    .line 540
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/layout/b;->a(Lq2/m0;Lo2/p;JII)V

    .line 541
    .line 542
    .line 543
    iget-object v3, v13, Lo2/o1;->g:Lo2/p;

    .line 544
    .line 545
    iget-wide v4, v13, Lo2/o1;->k:J

    .line 546
    .line 547
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/layout/b;->a(Lq2/m0;Lo2/p;JII)V

    .line 548
    .line 549
    .line 550
    :cond_a
    iget-object v3, v14, Lo2/n1;->d:Lo2/p;

    .line 551
    .line 552
    iget-wide v4, v13, Lo2/o1;->i:J

    .line 553
    .line 554
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/layout/b;->a(Lq2/m0;Lo2/p;JII)V

    .line 555
    .line 556
    .line 557
    add-int/lit8 v12, v12, 0x1

    .line 558
    .line 559
    goto :goto_7

    .line 560
    :cond_b
    iget-object v3, v0, Lo2/b1;->o:Lo2/q;

    .line 561
    .line 562
    iget-object v3, v3, Lo2/q;->h:Ls/d0;

    .line 563
    .line 564
    invoke-virtual {v3}, Ls/d0;->h()Z

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    if-eqz v3, :cond_c

    .line 569
    .line 570
    iget-object v3, v0, Lo2/b1;->o:Lo2/q;

    .line 571
    .line 572
    iget-object v3, v3, Lo2/q;->h:Ls/d0;

    .line 573
    .line 574
    iget-object v4, v3, Ls/d0;->a:[Ljava/lang/Object;

    .line 575
    .line 576
    iget v3, v3, Ls/d0;->b:I

    .line 577
    .line 578
    :goto_8
    if-ge v11, v3, :cond_c

    .line 579
    .line 580
    aget-object v5, v4, v11

    .line 581
    .line 582
    check-cast v5, Lf1/b1;

    .line 583
    .line 584
    iget-object v6, v0, Lo2/b1;->o:Lo2/q;

    .line 585
    .line 586
    iget-object v6, v6, Lo2/q;->i:Lp1/p;

    .line 587
    .line 588
    invoke-virtual {v6, v11}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    check-cast v6, Lo2/p;

    .line 593
    .line 594
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    check-cast v5, Landroid/graphics/Rect;

    .line 599
    .line 600
    invoke-virtual {v6}, Lo2/p;->b()Lo2/o;

    .line 601
    .line 602
    .line 603
    move-result-object v7

    .line 604
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 605
    .line 606
    int-to-float v8, v8

    .line 607
    invoke-virtual {v2, v7, v8}, Lq2/m0;->b(Lo2/o;F)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v6}, Lo2/p;->d()Lo2/o;

    .line 611
    .line 612
    .line 613
    move-result-object v7

    .line 614
    iget v8, v5, Landroid/graphics/Rect;->top:I

    .line 615
    .line 616
    int-to-float v8, v8

    .line 617
    invoke-virtual {v2, v7, v8}, Lq2/m0;->b(Lo2/o;F)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v6}, Lo2/p;->c()Lo2/o;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 625
    .line 626
    int-to-float v8, v8

    .line 627
    invoke-virtual {v2, v7, v8}, Lq2/m0;->b(Lo2/o;F)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v6}, Lo2/p;->a()Lo2/o;

    .line 631
    .line 632
    .line 633
    move-result-object v6

    .line 634
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 635
    .line 636
    int-to-float v5, v5

    .line 637
    invoke-virtual {v2, v6, v5}, Lq2/m0;->b(Lo2/o;F)V

    .line 638
    .line 639
    .line 640
    add-int/lit8 v11, v11, 0x1

    .line 641
    .line 642
    goto :goto_8

    .line 643
    :cond_c
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 644
    .line 645
    return-object v0

    .line 646
    :pswitch_c
    const-string v0, "onTouchEvent"

    .line 647
    .line 648
    move-object/from16 v2, p1

    .line 649
    .line 650
    check-cast v2, Landroid/view/MotionEvent;

    .line 651
    .line 652
    iget-object v3, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast v3, Lk2/d0;

    .line 655
    .line 656
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    const/4 v5, 0x0

    .line 661
    if-nez v4, :cond_f

    .line 662
    .line 663
    iget-object v4, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast v4, Lba/a;

    .line 666
    .line 667
    iget-object v3, v3, Lk2/d0;->a:Lk2/e0;

    .line 668
    .line 669
    if-eqz v3, :cond_e

    .line 670
    .line 671
    invoke-virtual {v3, v2}, Lk2/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    check-cast v0, Ljava/lang/Boolean;

    .line 676
    .line 677
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-eqz v0, :cond_d

    .line 682
    .line 683
    sget-object v0, Lk2/b0;->b:Lk2/b0;

    .line 684
    .line 685
    goto :goto_9

    .line 686
    :cond_d
    sget-object v0, Lk2/b0;->c:Lk2/b0;

    .line 687
    .line 688
    :goto_9
    iput-object v0, v4, Lba/a;->c:Ljava/lang/Object;

    .line 689
    .line 690
    goto :goto_a

    .line 691
    :cond_e
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    throw v5

    .line 695
    :cond_f
    iget-object v3, v3, Lk2/d0;->a:Lk2/e0;

    .line 696
    .line 697
    if-eqz v3, :cond_10

    .line 698
    .line 699
    invoke-virtual {v3, v2}, Lk2/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    :goto_a
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 703
    .line 704
    return-object v0

    .line 705
    :cond_10
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw v5

    .line 709
    :pswitch_d
    move-object/from16 v0, p1

    .line 710
    .line 711
    check-cast v0, Lv1/c;

    .line 712
    .line 713
    iget-object v2, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v2, Ly1/l0;

    .line 716
    .line 717
    iget-object v3, v0, Lv1/c;->a:Lv1/a;

    .line 718
    .line 719
    invoke-interface {v3}, Lv1/a;->g()J

    .line 720
    .line 721
    .line 722
    move-result-wide v3

    .line 723
    iget-object v5, v0, Lv1/c;->a:Lv1/a;

    .line 724
    .line 725
    invoke-interface {v5}, Lv1/a;->getLayoutDirection()Ln3/m;

    .line 726
    .line 727
    .line 728
    move-result-object v5

    .line 729
    invoke-interface {v2, v3, v4, v5, v0}, Ly1/l0;->a(JLn3/m;Ln3/c;)Ly1/h0;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    new-instance v3, Lc1/a1;

    .line 734
    .line 735
    iget-object v4, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 736
    .line 737
    check-cast v4, Lc1/r2;

    .line 738
    .line 739
    const/4 v5, 0x1

    .line 740
    invoke-direct {v3, v5, v2, v4}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 741
    .line 742
    .line 743
    new-instance v2, Lb2/a;

    .line 744
    .line 745
    const/16 v4, 0x13

    .line 746
    .line 747
    invoke-direct {v2, v4, v3}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0, v2}, Lv1/c;->b(Lf9/k;)Lv/a1;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    return-object v0

    .line 755
    :pswitch_e
    move-object/from16 v0, p1

    .line 756
    .line 757
    check-cast v0, La2/g;

    .line 758
    .line 759
    iget-object v2, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 760
    .line 761
    check-cast v2, Ly1/h0;

    .line 762
    .line 763
    iget-object v3, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 764
    .line 765
    check-cast v3, Lc1/r2;

    .line 766
    .line 767
    invoke-virtual {v3}, Lc1/r2;->a()J

    .line 768
    .line 769
    .line 770
    move-result-wide v3

    .line 771
    invoke-static {v0, v2, v3, v4}, Ly1/h0;->m(La2/g;Ly1/h0;J)V

    .line 772
    .line 773
    .line 774
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 775
    .line 776
    return-object v0

    .line 777
    :pswitch_f
    move-object/from16 v0, p1

    .line 778
    .line 779
    check-cast v0, Lq2/j0;

    .line 780
    .line 781
    iget-object v2, v1, Lc1/a1;->b:Ljava/lang/Object;

    .line 782
    .line 783
    check-cast v2, Ld1/j;

    .line 784
    .line 785
    invoke-virtual {v2}, Ld1/j;->get()Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    check-cast v2, Lx1/e;

    .line 790
    .line 791
    iget-wide v2, v2, Lx1/e;->a:J

    .line 792
    .line 793
    invoke-static {v2, v3}, Lx1/e;->d(J)F

    .line 794
    .line 795
    .line 796
    move-result v4

    .line 797
    const/4 v5, 0x0

    .line 798
    cmpl-float v6, v4, v5

    .line 799
    .line 800
    if-lez v6, :cond_15

    .line 801
    .line 802
    sget v6, Lc1/b1;->a:F

    .line 803
    .line 804
    invoke-virtual {v0, v6}, Lq2/j0;->S(F)F

    .line 805
    .line 806
    .line 807
    move-result v6

    .line 808
    iget-object v7, v0, Lq2/j0;->a:La2/c;

    .line 809
    .line 810
    iget-object v8, v1, Lc1/a1;->c:Ljava/lang/Object;

    .line 811
    .line 812
    check-cast v8, Ld0/h0;

    .line 813
    .line 814
    invoke-virtual {v0}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 815
    .line 816
    .line 817
    move-result-object v9

    .line 818
    invoke-virtual {v8, v9}, Ld0/h0;->a(Ln3/m;)F

    .line 819
    .line 820
    .line 821
    move-result v8

    .line 822
    invoke-virtual {v0, v8}, Lq2/j0;->S(F)F

    .line 823
    .line 824
    .line 825
    move-result v8

    .line 826
    sub-float/2addr v8, v6

    .line 827
    add-float/2addr v4, v8

    .line 828
    const/4 v9, 0x2

    .line 829
    int-to-float v9, v9

    .line 830
    mul-float v6, v6, v9

    .line 831
    .line 832
    add-float/2addr v6, v4

    .line 833
    invoke-virtual {v0}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    sget-object v10, Lc1/z0;->a:[I

    .line 838
    .line 839
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 840
    .line 841
    .line 842
    move-result v4

    .line 843
    aget v4, v10, v4

    .line 844
    .line 845
    const/4 v11, 0x1

    .line 846
    if-ne v4, v11, :cond_11

    .line 847
    .line 848
    iget-object v4, v7, La2/c;->b:La2/b;

    .line 849
    .line 850
    invoke-virtual {v4}, La2/b;->J()J

    .line 851
    .line 852
    .line 853
    move-result-wide v12

    .line 854
    invoke-static {v12, v13}, Lx1/e;->d(J)F

    .line 855
    .line 856
    .line 857
    move-result v4

    .line 858
    sub-float/2addr v4, v6

    .line 859
    :goto_b
    move v13, v4

    .line 860
    goto :goto_c

    .line 861
    :cond_11
    cmpg-float v4, v8, v5

    .line 862
    .line 863
    if-gez v4, :cond_12

    .line 864
    .line 865
    const/4 v4, 0x0

    .line 866
    goto :goto_b

    .line 867
    :cond_12
    move v4, v8

    .line 868
    goto :goto_b

    .line 869
    :goto_c
    invoke-virtual {v0}, Lq2/j0;->getLayoutDirection()Ln3/m;

    .line 870
    .line 871
    .line 872
    move-result-object v4

    .line 873
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 874
    .line 875
    .line 876
    move-result v4

    .line 877
    aget v4, v10, v4

    .line 878
    .line 879
    if-ne v4, v11, :cond_14

    .line 880
    .line 881
    iget-object v4, v7, La2/c;->b:La2/b;

    .line 882
    .line 883
    invoke-virtual {v4}, La2/b;->J()J

    .line 884
    .line 885
    .line 886
    move-result-wide v10

    .line 887
    invoke-static {v10, v11}, Lx1/e;->d(J)F

    .line 888
    .line 889
    .line 890
    move-result v4

    .line 891
    cmpg-float v6, v8, v5

    .line 892
    .line 893
    if-gez v6, :cond_13

    .line 894
    .line 895
    goto :goto_d

    .line 896
    :cond_13
    move v5, v8

    .line 897
    :goto_d
    sub-float v6, v4, v5

    .line 898
    .line 899
    :cond_14
    move v15, v6

    .line 900
    invoke-static {v2, v3}, Lx1/e;->b(J)F

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    neg-float v3, v2

    .line 905
    div-float v14, v3, v9

    .line 906
    .line 907
    div-float v16, v2, v9

    .line 908
    .line 909
    iget-object v2, v7, La2/c;->b:La2/b;

    .line 910
    .line 911
    invoke-virtual {v2}, La2/b;->J()J

    .line 912
    .line 913
    .line 914
    move-result-wide v3

    .line 915
    invoke-virtual {v2}, La2/b;->z()Ly1/o;

    .line 916
    .line 917
    .line 918
    move-result-object v5

    .line 919
    invoke-interface {v5}, Ly1/o;->f()V

    .line 920
    .line 921
    .line 922
    :try_start_1
    iget-object v5, v2, La2/b;->b:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast v5, La2/d;

    .line 925
    .line 926
    iget-object v5, v5, La2/d;->b:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v5, La2/b;

    .line 929
    .line 930
    invoke-virtual {v5}, La2/b;->z()Ly1/o;

    .line 931
    .line 932
    .line 933
    move-result-object v12

    .line 934
    const/16 v17, 0x0

    .line 935
    .line 936
    invoke-interface/range {v12 .. v17}, Ly1/o;->k(FFFFI)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v0}, Lq2/j0;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 940
    .line 941
    .line 942
    invoke-static {v2, v3, v4}, Lp9/v;->w(La2/b;J)V

    .line 943
    .line 944
    .line 945
    goto :goto_e

    .line 946
    :catchall_1
    move-exception v0

    .line 947
    invoke-static {v2, v3, v4}, Lp9/v;->w(La2/b;J)V

    .line 948
    .line 949
    .line 950
    throw v0

    .line 951
    :cond_15
    invoke-virtual {v0}, Lq2/j0;->b()V

    .line 952
    .line 953
    .line 954
    :goto_e
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 955
    .line 956
    return-object v0

    .line 957
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
