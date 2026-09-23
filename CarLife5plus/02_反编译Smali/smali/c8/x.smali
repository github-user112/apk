.class public final synthetic Lc8/x;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/k;


# direct methods
.method public synthetic constructor <init>(Lf9/k;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc8/x;->a:I

    iput-object p1, p0, Lc8/x;->b:Lf9/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lf9/k;Lz7/v1;I)V
    .locals 0

    .line 2
    iput p3, p0, Lc8/x;->a:I

    iput-object p1, p0, Lc8/x;->b:Lf9/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lc8/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 7
    .line 8
    check-cast p1, Lj8/k0;

    .line 9
    .line 10
    const-string v1, "it"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lz7/a2;

    .line 16
    .line 17
    const-string v2, "Theme"

    .line 18
    .line 19
    sget-object v3, Lz7/g2;->c:Lz7/f2;

    .line 20
    .line 21
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 22
    .line 23
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Lz7/f2;->a(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v4}, Lz7/f2;->a(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "\u4e92\u8054\u5207\u6362\u5230"

    .line 43
    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-instance v5, Lz7/j1;

    .line 49
    .line 50
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-direct {v5, p1}, Lz7/j1;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2, v3, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_0
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 67
    .line 68
    check-cast p1, Lj8/k0;

    .line 69
    .line 70
    const-string v1, "it"

    .line 71
    .line 72
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lz7/a2;

    .line 76
    .line 77
    const-string v2, "Message"

    .line 78
    .line 79
    sget-object v3, Lz7/t1;->c:Lz7/s1;

    .line 80
    .line 81
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 82
    .line 83
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v3, Lz7/t1;->e:Lz8/b;

    .line 91
    .line 92
    invoke-virtual {v3}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_1

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    move-object v6, v5

    .line 107
    check-cast v6, Lz7/t1;

    .line 108
    .line 109
    iget v6, v6, Lz7/t1;->b:I

    .line 110
    .line 111
    if-ne v6, v4, :cond_0

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/4 v5, 0x0

    .line 115
    :goto_0
    check-cast v5, Lz7/t1;

    .line 116
    .line 117
    if-eqz v5, :cond_2

    .line 118
    .line 119
    iget-object v3, v5, Lz7/t1;->a:Ljava/lang/String;

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    const-string v3, "\u672a\u77e5\u6309\u952e"

    .line 123
    .line 124
    :goto_1
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    const-string v5, "\u53d1\u9001\u6309\u952e\u6d88\u606f"

    .line 129
    .line 130
    invoke-static {v4, v5}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    new-instance v5, Lz7/u0;

    .line 135
    .line 136
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-direct {v5, p1}, Lz7/u0;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v2, v3, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 150
    .line 151
    return-object p1

    .line 152
    :pswitch_1
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 153
    .line 154
    check-cast p1, Lj8/k0;

    .line 155
    .line 156
    const-string v1, "it"

    .line 157
    .line 158
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lz7/a2;

    .line 162
    .line 163
    const-string v2, "ConnectType"

    .line 164
    .line 165
    const-string v3, "\u8fde\u63a5\u7c7b\u578b"

    .line 166
    .line 167
    sget-object v4, Lm7/g0;->c:Lm7/n;

    .line 168
    .line 169
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 170
    .line 171
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    sget-object v4, Lm7/g0;->e:Lz8/b;

    .line 179
    .line 180
    invoke-virtual {v4}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_4

    .line 189
    .line 190
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    move-object v7, v6

    .line 195
    check-cast v7, Lm7/g0;

    .line 196
    .line 197
    iget v7, v7, Lm7/g0;->b:I

    .line 198
    .line 199
    if-ne v7, v5, :cond_3

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_4
    const/4 v6, 0x0

    .line 203
    :goto_2
    check-cast v6, Lm7/g0;

    .line 204
    .line 205
    if-eqz v6, :cond_5

    .line 206
    .line 207
    iget-object v4, v6, Lm7/g0;->a:Ljava/lang/String;

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_5
    const-string v4, "\u672a\u77e5\u7c7b\u578b"

    .line 211
    .line 212
    :goto_3
    const-string v5, "\u8fde\u63a5\u7c7b\u578b\u5207\u6362\u5230"

    .line 213
    .line 214
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    new-instance v5, Lz7/c0;

    .line 219
    .line 220
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-direct {v5, p1}, Lz7/c0;-><init>(I)V

    .line 225
    .line 226
    .line 227
    invoke-direct {v1, v2, v3, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 234
    .line 235
    return-object p1

    .line 236
    :pswitch_2
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 237
    .line 238
    check-cast p1, Lj8/k0;

    .line 239
    .line 240
    const-string v1, "it"

    .line 241
    .line 242
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance v1, Lz7/a2;

    .line 246
    .line 247
    const-string v2, "AppSwitch"

    .line 248
    .line 249
    const-string v3, "\u5e94\u7528\u72b6\u6001"

    .line 250
    .line 251
    sget-object v4, Ly7/o;->c:Ly7/n;

    .line 252
    .line 253
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 254
    .line 255
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    sget-object v4, Ly7/o;->e:Lz8/b;

    .line 263
    .line 264
    invoke-virtual {v4}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_7

    .line 273
    .line 274
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    move-object v7, v6

    .line 279
    check-cast v7, Ly7/o;

    .line 280
    .line 281
    iget v7, v7, Ly7/o;->b:I

    .line 282
    .line 283
    if-ne v7, v5, :cond_6

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_7
    const/4 v6, 0x0

    .line 287
    :goto_4
    check-cast v6, Ly7/o;

    .line 288
    .line 289
    if-eqz v6, :cond_8

    .line 290
    .line 291
    iget-object v4, v6, Ly7/o;->a:Ljava/lang/String;

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_8
    const-string v4, "\u672a\u77e5\u72b6\u6001"

    .line 295
    .line 296
    :goto_5
    new-instance v5, Lz7/m;

    .line 297
    .line 298
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    invoke-direct {v5, p1}, Lz7/m;-><init>(I)V

    .line 303
    .line 304
    .line 305
    invoke-direct {v1, v2, v3, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 306
    .line 307
    .line 308
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 312
    .line 313
    return-object p1

    .line 314
    :pswitch_3
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 315
    .line 316
    check-cast p1, Ljava/lang/Long;

    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 319
    .line 320
    .line 321
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    return-object p1

    .line 326
    :pswitch_4
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 327
    .line 328
    check-cast p1, Lp1/j;

    .line 329
    .line 330
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    check-cast p1, Lp1/f;

    .line 335
    .line 336
    sget-object v0, Lp1/l;->c:Ljava/lang/Object;

    .line 337
    .line 338
    monitor-enter v0

    .line 339
    :try_start_0
    sget-object v1, Lp1/l;->d:Lp1/j;

    .line 340
    .line 341
    invoke-virtual {p1}, Lp1/f;->g()J

    .line 342
    .line 343
    .line 344
    move-result-wide v2

    .line 345
    invoke-virtual {v1, v2, v3}, Lp1/j;->l(J)Lp1/j;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    sput-object v1, Lp1/l;->d:Lp1/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .line 351
    monitor-exit v0

    .line 352
    return-object p1

    .line 353
    :catchall_0
    move-exception p1

    .line 354
    monitor-exit v0

    .line 355
    throw p1

    .line 356
    :pswitch_5
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 357
    .line 358
    check-cast p1, Ljava/util/List;

    .line 359
    .line 360
    const-string v1, "result"

    .line 361
    .line 362
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 369
    .line 370
    return-object p1

    .line 371
    :pswitch_6
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 372
    .line 373
    check-cast p1, Ljava/util/List;

    .line 374
    .line 375
    const-string v1, "result"

    .line 376
    .line 377
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 384
    .line 385
    return-object p1

    .line 386
    :pswitch_7
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 387
    .line 388
    check-cast p1, Ljava/lang/String;

    .line 389
    .line 390
    const-string v1, "newValue"

    .line 391
    .line 392
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 399
    .line 400
    return-object p1

    .line 401
    :pswitch_8
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 402
    .line 403
    check-cast p1, Ljava/lang/String;

    .line 404
    .line 405
    const-string v1, "newValue"

    .line 406
    .line 407
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 414
    .line 415
    return-object p1

    .line 416
    :pswitch_9
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 417
    .line 418
    check-cast p1, Ll5/k;

    .line 419
    .line 420
    const-string v1, "colorEnvelope"

    .line 421
    .line 422
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 429
    .line 430
    return-object p1

    .line 431
    :pswitch_a
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 432
    .line 433
    check-cast p1, Lj8/k0;

    .line 434
    .line 435
    const-string v1, "it"

    .line 436
    .line 437
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    new-instance v1, Lz7/a2;

    .line 441
    .line 442
    const-string v2, "System"

    .line 443
    .line 444
    const-string v3, "\u7cfb\u7edf\u4e3b\u9898"

    .line 445
    .line 446
    sget-object v4, Lz7/g2;->c:Lz7/f2;

    .line 447
    .line 448
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 449
    .line 450
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    invoke-static {v5}, Lz7/f2;->a(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    const-string v5, "\u7cfb\u7edf\u5207\u6362\u5230"

    .line 462
    .line 463
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    new-instance v5, Lz7/g1;

    .line 468
    .line 469
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    invoke-direct {v5, p1}, Lz7/g1;-><init>(I)V

    .line 474
    .line 475
    .line 476
    invoke-direct {v1, v2, v3, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 477
    .line 478
    .line 479
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 483
    .line 484
    return-object p1

    .line 485
    :pswitch_b
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 486
    .line 487
    check-cast p1, Lj8/k0;

    .line 488
    .line 489
    const-string v1, "it"

    .line 490
    .line 491
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    new-instance v1, Lz7/a2;

    .line 495
    .line 496
    const-string v2, "ConnectState"

    .line 497
    .line 498
    sget-object v3, Lc8/h0;->c:Lc8/i;

    .line 499
    .line 500
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 501
    .line 502
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    invoke-static {v4}, Lc8/i;->a(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 514
    .line 515
    .line 516
    move-result v4

    .line 517
    invoke-static {v4}, Lc8/i;->a(I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    new-instance v5, Lz7/z;

    .line 522
    .line 523
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 524
    .line 525
    .line 526
    move-result p1

    .line 527
    invoke-direct {v5, p1}, Lz7/z;-><init>(I)V

    .line 528
    .line 529
    .line 530
    invoke-direct {v1, v2, v3, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 531
    .line 532
    .line 533
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 537
    .line 538
    return-object p1

    .line 539
    :pswitch_c
    iget-object v0, p0, Lc8/x;->b:Lf9/k;

    .line 540
    .line 541
    check-cast p1, Lj8/k0;

    .line 542
    .line 543
    const-string v1, "it"

    .line 544
    .line 545
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    new-instance v1, Lz7/a2;

    .line 549
    .line 550
    const-string v2, "AppState"

    .line 551
    .line 552
    const-string v3, "\u5e94\u7528\u72b6\u6001"

    .line 553
    .line 554
    sget-object v4, Lc8/w;->c:Lc8/i;

    .line 555
    .line 556
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 557
    .line 558
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    sget-object v4, Lc8/w;->h:Lz8/b;

    .line 566
    .line 567
    invoke-virtual {v4}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    if-eqz v6, :cond_a

    .line 576
    .line 577
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    move-object v7, v6

    .line 582
    check-cast v7, Lc8/w;

    .line 583
    .line 584
    iget v7, v7, Lc8/w;->b:I

    .line 585
    .line 586
    if-ne v7, v5, :cond_9

    .line 587
    .line 588
    goto :goto_6

    .line 589
    :cond_a
    const/4 v6, 0x0

    .line 590
    :goto_6
    check-cast v6, Lc8/w;

    .line 591
    .line 592
    if-eqz v6, :cond_b

    .line 593
    .line 594
    iget-object v4, v6, Lc8/w;->a:Ljava/lang/String;

    .line 595
    .line 596
    goto :goto_7

    .line 597
    :cond_b
    const-string v4, "\u672a\u77e5\u72b6\u6001"

    .line 598
    .line 599
    :goto_7
    const-string v5, "\u5f53"

    .line 600
    .line 601
    const-string v6, "\u65f6"

    .line 602
    .line 603
    invoke-static {v5, v4, v6}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v4

    .line 607
    new-instance v5, Lz7/j;

    .line 608
    .line 609
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    invoke-direct {v5, p1}, Lz7/j;-><init>(I)V

    .line 614
    .line 615
    .line 616
    invoke-direct {v1, v2, v3, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 617
    .line 618
    .line 619
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 623
    .line 624
    return-object p1

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
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
