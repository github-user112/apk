.class public final Lb1/a;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb1/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lb1/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lb1/a;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lz2/a;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v0, Lz2/a;->g:Lcom/baidu/carlife/sdk/internal/a;

    .line 14
    .line 15
    const-string v2, "OnPositionedDispatch"

    .line 16
    .line 17
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v0}, Lz2/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 27
    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :pswitch_0
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lw1/s;

    .line 37
    .line 38
    invoke-virtual {v0}, Lw1/s;->B0()Lw1/m;

    .line 39
    .line 40
    .line 41
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_1
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lr3/v;

    .line 47
    .line 48
    invoke-static {v0}, Lr3/v;->h(Lr3/v;)Lo2/w;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-interface {v2}, Lo2/w;->isAttached()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move-object v2, v3

    .line 63
    :goto_0
    if-eqz v2, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lr3/v;->getPopupContentSize-bOM6tXw()Ln3/l;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :pswitch_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 80
    .line 81
    return-object v0

    .line 82
    :pswitch_3
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lr2/p0;

    .line 85
    .line 86
    iget-object v0, v0, Lr2/p0;->c:Lac/w;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-static {v0, v2}, Lac/z;->d(Lac/w;Ljava/util/concurrent/CancellationException;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_4
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lf9/k;

    .line 98
    .line 99
    sget-object v2, Lq2/h1;->J:Ly1/i0;

    .line 100
    .line 101
    invoke-interface {v0, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iget-object v0, v2, Ly1/i0;->k:Ly1/l0;

    .line 105
    .line 106
    iget-wide v3, v2, Ly1/i0;->m:J

    .line 107
    .line 108
    iget-object v5, v2, Ly1/i0;->o:Ln3/m;

    .line 109
    .line 110
    iget-object v6, v2, Ly1/i0;->n:Ln3/c;

    .line 111
    .line 112
    invoke-interface {v0, v3, v4, v5, v6}, Ly1/l0;->a(JLn3/m;Ln3/c;)Ly1/h0;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, v2, Ly1/i0;->q:Ly1/h0;

    .line 117
    .line 118
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 119
    .line 120
    return-object v0

    .line 121
    :pswitch_5
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Lq2/h0;

    .line 124
    .line 125
    iget-object v0, v0, Lq2/h0;->F:Lq2/l0;

    .line 126
    .line 127
    iget-object v2, v0, Lq2/l0;->p:Lq2/y0;

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    iput-boolean v3, v2, Lq2/y0;->y:Z

    .line 131
    .line 132
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 133
    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    iput-boolean v3, v0, Lq2/u0;->s:Z

    .line 137
    .line 138
    :cond_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 139
    .line 140
    return-object v0

    .line 141
    :pswitch_6
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Lp2/c;

    .line 144
    .line 145
    iget-object v2, v0, Lp2/c;->c:Lh1/e;

    .line 146
    .line 147
    iget-object v3, v0, Lp2/c;->b:Lh1/e;

    .line 148
    .line 149
    iget-object v4, v0, Lp2/c;->e:Lh1/e;

    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    iput-boolean v5, v0, Lp2/c;->f:Z

    .line 153
    .line 154
    new-instance v6, Ljava/util/HashSet;

    .line 155
    .line 156
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v0, v0, Lp2/c;->d:Lh1/e;

    .line 160
    .line 161
    iget-object v7, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 162
    .line 163
    iget v8, v0, Lh1/e;->c:I

    .line 164
    .line 165
    const/4 v9, 0x0

    .line 166
    :goto_2
    if-ge v9, v8, :cond_4

    .line 167
    .line 168
    aget-object v10, v7, v9

    .line 169
    .line 170
    check-cast v10, Lq2/h0;

    .line 171
    .line 172
    iget-object v11, v4, Lh1/e;->a:[Ljava/lang/Object;

    .line 173
    .line 174
    aget-object v11, v11, v9

    .line 175
    .line 176
    check-cast v11, Lp2/f;

    .line 177
    .line 178
    iget-object v10, v10, Lq2/h0;->E:Lq2/d1;

    .line 179
    .line 180
    iget-object v10, v10, Lq2/d1;->f:Lr1/o;

    .line 181
    .line 182
    iget-boolean v12, v10, Lr1/o;->n:Z

    .line 183
    .line 184
    if-eqz v12, :cond_3

    .line 185
    .line 186
    invoke-static {v10, v11, v6}, Lp2/c;->b(Lr1/o;Lp2/f;Ljava/util/HashSet;)V

    .line 187
    .line 188
    .line 189
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_4
    invoke-virtual {v0}, Lh1/e;->h()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Lh1/e;->h()V

    .line 196
    .line 197
    .line 198
    iget-object v0, v3, Lh1/e;->a:[Ljava/lang/Object;

    .line 199
    .line 200
    iget v4, v3, Lh1/e;->c:I

    .line 201
    .line 202
    :goto_3
    if-ge v5, v4, :cond_6

    .line 203
    .line 204
    aget-object v7, v0, v5

    .line 205
    .line 206
    check-cast v7, Lq2/c;

    .line 207
    .line 208
    iget-object v8, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 209
    .line 210
    aget-object v8, v8, v5

    .line 211
    .line 212
    check-cast v8, Lp2/f;

    .line 213
    .line 214
    iget-boolean v9, v7, Lr1/o;->n:Z

    .line 215
    .line 216
    if-eqz v9, :cond_5

    .line 217
    .line 218
    invoke-static {v7, v8, v6}, Lp2/c;->b(Lr1/o;Lp2/f;Ljava/util/HashSet;)V

    .line 219
    .line 220
    .line 221
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_6
    invoke-virtual {v3}, Lh1/e;->h()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Lh1/e;->h()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_7

    .line 239
    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Lq2/c;

    .line 245
    .line 246
    invoke-virtual {v2}, Lq2/c;->C0()V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_7
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 251
    .line 252
    return-object v0

    .line 253
    :pswitch_7
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Lo2/h1;

    .line 256
    .line 257
    invoke-virtual {v0}, Lo2/h1;->a()Lo2/i0;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iget-object v2, v0, Lo2/i0;->a:Lq2/h0;

    .line 262
    .line 263
    invoke-virtual {v2}, Lq2/h0;->p()Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Lh1/b;

    .line 268
    .line 269
    iget-object v3, v3, Lh1/b;->b:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v3, Lh1/e;

    .line 272
    .line 273
    iget v3, v3, Lh1/e;->c:I

    .line 274
    .line 275
    iget v4, v0, Lo2/i0;->n:I

    .line 276
    .line 277
    if-eq v4, v3, :cond_d

    .line 278
    .line 279
    iget-object v0, v0, Lo2/i0;->f:Ls/h0;

    .line 280
    .line 281
    iget-object v3, v0, Ls/h0;->c:[Ljava/lang/Object;

    .line 282
    .line 283
    iget-object v0, v0, Ls/h0;->a:[J

    .line 284
    .line 285
    array-length v4, v0

    .line 286
    add-int/lit8 v4, v4, -0x2

    .line 287
    .line 288
    const/4 v5, 0x7

    .line 289
    const/4 v6, 0x0

    .line 290
    if-ltz v4, :cond_b

    .line 291
    .line 292
    const/4 v7, 0x0

    .line 293
    :goto_5
    aget-wide v8, v0, v7

    .line 294
    .line 295
    not-long v10, v8

    .line 296
    shl-long/2addr v10, v5

    .line 297
    and-long/2addr v10, v8

    .line 298
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    and-long/2addr v10, v12

    .line 304
    cmp-long v14, v10, v12

    .line 305
    .line 306
    if-eqz v14, :cond_a

    .line 307
    .line 308
    sub-int v10, v7, v4

    .line 309
    .line 310
    not-int v10, v10

    .line 311
    ushr-int/lit8 v10, v10, 0x1f

    .line 312
    .line 313
    const/16 v11, 0x8

    .line 314
    .line 315
    rsub-int/lit8 v10, v10, 0x8

    .line 316
    .line 317
    const/4 v12, 0x0

    .line 318
    :goto_6
    if-ge v12, v10, :cond_9

    .line 319
    .line 320
    const-wide/16 v13, 0xff

    .line 321
    .line 322
    and-long/2addr v13, v8

    .line 323
    const-wide/16 v15, 0x80

    .line 324
    .line 325
    cmp-long v17, v13, v15

    .line 326
    .line 327
    if-gez v17, :cond_8

    .line 328
    .line 329
    shl-int/lit8 v13, v7, 0x3

    .line 330
    .line 331
    add-int/2addr v13, v12

    .line 332
    aget-object v13, v3, v13

    .line 333
    .line 334
    check-cast v13, Lo2/b0;

    .line 335
    .line 336
    const/4 v14, 0x1

    .line 337
    iput-boolean v14, v13, Lo2/b0;->d:Z

    .line 338
    .line 339
    :cond_8
    shr-long/2addr v8, v11

    .line 340
    add-int/lit8 v12, v12, 0x1

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_9
    if-ne v10, v11, :cond_b

    .line 344
    .line 345
    :cond_a
    if-eq v7, v4, :cond_b

    .line 346
    .line 347
    add-int/lit8 v7, v7, 0x1

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_b
    iget-object v0, v2, Lq2/h0;->g:Lq2/h0;

    .line 351
    .line 352
    if-eqz v0, :cond_c

    .line 353
    .line 354
    iget-object v0, v2, Lq2/h0;->F:Lq2/l0;

    .line 355
    .line 356
    iget-boolean v0, v0, Lq2/l0;->e:Z

    .line 357
    .line 358
    if-nez v0, :cond_d

    .line 359
    .line 360
    invoke-static {v2, v6, v5}, Lq2/h0;->T(Lq2/h0;ZI)V

    .line 361
    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_c
    invoke-virtual {v2}, Lq2/h0;->r()Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_d

    .line 369
    .line 370
    invoke-static {v2, v6, v5}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 371
    .line 372
    .line 373
    :cond_d
    :goto_7
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 374
    .line 375
    return-object v0

    .line 376
    :pswitch_8
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v0, Lo2/b0;

    .line 379
    .line 380
    iget-object v2, v0, Lo2/b0;->g:Lf1/k1;

    .line 381
    .line 382
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    check-cast v2, Ljava/lang/Boolean;

    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-nez v2, :cond_e

    .line 393
    .line 394
    iget-object v0, v0, Lo2/b0;->c:Lf1/y;

    .line 395
    .line 396
    if-eqz v0, :cond_e

    .line 397
    .line 398
    invoke-virtual {v0}, Lf1/y;->l()V

    .line 399
    .line 400
    .line 401
    :cond_e
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 402
    .line 403
    return-object v0

    .line 404
    :pswitch_9
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v0, Lj2/g;

    .line 407
    .line 408
    invoke-virtual {v0}, Lj2/g;->A0()Lac/w;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    return-object v0

    .line 413
    :pswitch_a
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v0, Lj2/d;

    .line 416
    .line 417
    iget-object v0, v0, Lj2/d;->d:Lac/w;

    .line 418
    .line 419
    return-object v0

    .line 420
    :pswitch_b
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    .line 421
    .line 422
    iget-object v2, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v2, Lg3/z;

    .line 425
    .line 426
    iget-object v2, v2, Lg3/z;->a:Landroid/view/View;

    .line 427
    .line 428
    const/4 v3, 0x0

    .line 429
    invoke-direct {v0, v2, v3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 430
    .line 431
    .line 432
    return-object v0

    .line 433
    :pswitch_c
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v0, La2/b;

    .line 436
    .line 437
    iget-object v0, v0, La2/b;->b:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v0, Landroid/view/View;

    .line 440
    .line 441
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    const-string v2, "input_method"

    .line 446
    .line 447
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    const-string v2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 452
    .line 453
    invoke-static {v0, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 457
    .line 458
    return-object v0

    .line 459
    :pswitch_d
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v0, Le2/k0;

    .line 462
    .line 463
    iget v2, v0, Le2/k0;->k:I

    .line 464
    .line 465
    iget-object v0, v0, Le2/k0;->h:Lf1/h1;

    .line 466
    .line 467
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-ne v2, v3, :cond_f

    .line 472
    .line 473
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    add-int/lit8 v2, v2, 0x1

    .line 478
    .line 479
    invoke-virtual {v0, v2}, Lf1/h1;->g(I)V

    .line 480
    .line 481
    .line 482
    :cond_f
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 483
    .line 484
    return-object v0

    .line 485
    :pswitch_e
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v0, Lc1/i2;

    .line 488
    .line 489
    iget-object v2, v0, Lc1/i2;->k:Lf1/k1;

    .line 490
    .line 491
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    check-cast v2, Ljava/lang/Boolean;

    .line 496
    .line 497
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-nez v2, :cond_10

    .line 502
    .line 503
    iget-object v0, v0, Lc1/i2;->b:Lf9/a;

    .line 504
    .line 505
    if-eqz v0, :cond_10

    .line 506
    .line 507
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    :cond_10
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 511
    .line 512
    return-object v0

    .line 513
    :pswitch_f
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v0, Lf1/b1;

    .line 516
    .line 517
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Lb1/g;

    .line 522
    .line 523
    return-object v0

    .line 524
    :pswitch_10
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v0, Lb1/c;

    .line 527
    .line 528
    invoke-static {v0}, Lq2/f;->l(Lq2/o;)V

    .line 529
    .line 530
    .line 531
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 532
    .line 533
    return-object v0

    .line 534
    :pswitch_11
    iget-object v0, v1, Lb1/a;->b:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v0, Lb1/b;

    .line 537
    .line 538
    iget-object v0, v0, Lb1/b;->j:Lf1/k1;

    .line 539
    .line 540
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    check-cast v2, Ljava/lang/Boolean;

    .line 545
    .line 546
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    xor-int/lit8 v2, v2, 0x1

    .line 551
    .line 552
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-virtual {v0, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 560
    .line 561
    return-object v0

    .line 562
    nop

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
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
