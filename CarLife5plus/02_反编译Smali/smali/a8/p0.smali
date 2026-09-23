.class public final La8/p0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/a;


# direct methods
.method public synthetic constructor <init>(Lf9/a;I)V
    .locals 0

    .line 1
    iput p2, p0, La8/p0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8/p0;->b:Lf9/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, La8/p0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/s;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    and-int/lit8 p2, p2, 0x3

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const p2, 0x4c5de2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 49
    .line 50
    if-ne v1, v0, :cond_3

    .line 51
    .line 52
    :cond_2
    new-instance v1, Ly7/w;

    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    invoke-direct {v1, p2, v0}, Ly7/w;-><init>(Lf9/a;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    check-cast v1, Lf9/a;

    .line 62
    .line 63
    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 65
    .line 66
    .line 67
    const/4 p2, 0x6

    .line 68
    const-string v0, "\u5173\u95ed"

    .line 69
    .line 70
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 71
    .line 72
    .line 73
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 77
    .line 78
    check-cast p2, Ljava/lang/Number;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    and-int/lit8 p2, p2, 0x3

    .line 85
    .line 86
    const/4 v0, 0x2

    .line 87
    if-ne p2, v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-nez p2, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    :goto_2
    const p2, 0x4c5de2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 119
    .line 120
    if-ne v1, v0, :cond_7

    .line 121
    .line 122
    :cond_6
    new-instance v1, Ly7/w;

    .line 123
    .line 124
    const/4 v0, 0x3

    .line 125
    invoke-direct {v1, p2, v0}, Ly7/w;-><init>(Lf9/a;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_7
    check-cast v1, Lf9/a;

    .line 132
    .line 133
    const/4 p2, 0x0

    .line 134
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 135
    .line 136
    .line 137
    const/4 p2, 0x6

    .line 138
    const-string v0, "\u5173\u95ed"

    .line 139
    .line 140
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 141
    .line 142
    .line 143
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 144
    .line 145
    return-object p1

    .line 146
    :pswitch_1
    check-cast p1, Lf1/s;

    .line 147
    .line 148
    check-cast p2, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    and-int/lit8 p2, p2, 0x3

    .line 155
    .line 156
    const/4 v0, 0x2

    .line 157
    if-ne p2, v0, :cond_9

    .line 158
    .line 159
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-nez p2, :cond_8

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_8
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_9
    :goto_4
    const p2, 0x4c5de2

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 174
    .line 175
    .line 176
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-nez v0, :cond_a

    .line 187
    .line 188
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 189
    .line 190
    if-ne v1, v0, :cond_b

    .line 191
    .line 192
    :cond_a
    new-instance v1, Ly7/w;

    .line 193
    .line 194
    const/4 v0, 0x1

    .line 195
    invoke-direct {v1, p2, v0}, Ly7/w;-><init>(Lf9/a;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_b
    check-cast v1, Lf9/a;

    .line 202
    .line 203
    const/4 p2, 0x0

    .line 204
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 205
    .line 206
    .line 207
    const/4 p2, 0x6

    .line 208
    const-string v0, "\u5173\u95ed"

    .line 209
    .line 210
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 211
    .line 212
    .line 213
    :goto_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 214
    .line 215
    return-object p1

    .line 216
    :pswitch_2
    check-cast p1, Lf1/s;

    .line 217
    .line 218
    check-cast p2, Ljava/lang/Number;

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    and-int/lit8 p2, p2, 0x3

    .line 225
    .line 226
    const/4 v0, 0x2

    .line 227
    if-ne p2, v0, :cond_d

    .line 228
    .line 229
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-nez p2, :cond_c

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_c
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 237
    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_d
    :goto_6
    const p2, 0x4c5de2

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 244
    .line 245
    .line 246
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 247
    .line 248
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    if-nez v0, :cond_e

    .line 257
    .line 258
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 259
    .line 260
    if-ne v1, v0, :cond_f

    .line 261
    .line 262
    :cond_e
    new-instance v1, Ly7/w;

    .line 263
    .line 264
    const/4 v0, 0x0

    .line 265
    invoke-direct {v1, p2, v0}, Ly7/w;-><init>(Lf9/a;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_f
    check-cast v1, Lf9/a;

    .line 272
    .line 273
    const/4 p2, 0x0

    .line 274
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 275
    .line 276
    .line 277
    const/4 p2, 0x6

    .line 278
    const-string v0, "\u5173\u95ed"

    .line 279
    .line 280
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 281
    .line 282
    .line 283
    :goto_7
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 284
    .line 285
    return-object p1

    .line 286
    :pswitch_3
    check-cast p1, Lf1/s;

    .line 287
    .line 288
    check-cast p2, Ljava/lang/Number;

    .line 289
    .line 290
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    and-int/lit8 p2, p2, 0x3

    .line 295
    .line 296
    const/4 v0, 0x2

    .line 297
    if-ne p2, v0, :cond_11

    .line 298
    .line 299
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-nez p2, :cond_10

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_10
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_11
    :goto_8
    const p2, 0x4c5de2

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 314
    .line 315
    .line 316
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 317
    .line 318
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    if-nez v0, :cond_12

    .line 327
    .line 328
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 329
    .line 330
    if-ne v1, v0, :cond_13

    .line 331
    .line 332
    :cond_12
    new-instance v1, Lc8/g;

    .line 333
    .line 334
    const/16 v0, 0x1c

    .line 335
    .line 336
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_13
    check-cast v1, Lf9/a;

    .line 343
    .line 344
    const/4 p2, 0x0

    .line 345
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 346
    .line 347
    .line 348
    const/4 p2, 0x6

    .line 349
    const-string v0, "\u5173\u95ed"

    .line 350
    .line 351
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 352
    .line 353
    .line 354
    :goto_9
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 355
    .line 356
    return-object p1

    .line 357
    :pswitch_4
    check-cast p1, Lf1/s;

    .line 358
    .line 359
    check-cast p2, Ljava/lang/Number;

    .line 360
    .line 361
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 362
    .line 363
    .line 364
    move-result p2

    .line 365
    and-int/lit8 p2, p2, 0x3

    .line 366
    .line 367
    const/4 v0, 0x2

    .line 368
    if-ne p2, v0, :cond_15

    .line 369
    .line 370
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 371
    .line 372
    .line 373
    move-result p2

    .line 374
    if-nez p2, :cond_14

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :cond_14
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 378
    .line 379
    .line 380
    goto :goto_b

    .line 381
    :cond_15
    :goto_a
    const p2, 0x4c5de2

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 385
    .line 386
    .line 387
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 388
    .line 389
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    if-nez v0, :cond_16

    .line 398
    .line 399
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 400
    .line 401
    if-ne v1, v0, :cond_17

    .line 402
    .line 403
    :cond_16
    new-instance v1, Lc8/g;

    .line 404
    .line 405
    const/16 v0, 0x1a

    .line 406
    .line 407
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    :cond_17
    check-cast v1, Lf9/a;

    .line 414
    .line 415
    const/4 p2, 0x0

    .line 416
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 417
    .line 418
    .line 419
    const/4 p2, 0x6

    .line 420
    const-string v0, "\u5173\u95ed"

    .line 421
    .line 422
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 423
    .line 424
    .line 425
    :goto_b
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 426
    .line 427
    return-object p1

    .line 428
    :pswitch_5
    check-cast p1, Lf1/s;

    .line 429
    .line 430
    check-cast p2, Ljava/lang/Number;

    .line 431
    .line 432
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 433
    .line 434
    .line 435
    move-result p2

    .line 436
    and-int/lit8 p2, p2, 0x3

    .line 437
    .line 438
    const/4 v0, 0x2

    .line 439
    if-ne p2, v0, :cond_19

    .line 440
    .line 441
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 442
    .line 443
    .line 444
    move-result p2

    .line 445
    if-nez p2, :cond_18

    .line 446
    .line 447
    goto :goto_c

    .line 448
    :cond_18
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 449
    .line 450
    .line 451
    goto :goto_d

    .line 452
    :cond_19
    :goto_c
    const p2, 0x4c5de2

    .line 453
    .line 454
    .line 455
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 456
    .line 457
    .line 458
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 459
    .line 460
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    if-nez v0, :cond_1a

    .line 469
    .line 470
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 471
    .line 472
    if-ne v1, v0, :cond_1b

    .line 473
    .line 474
    :cond_1a
    new-instance v1, Lc8/g;

    .line 475
    .line 476
    const/16 v0, 0x18

    .line 477
    .line 478
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    :cond_1b
    check-cast v1, Lf9/a;

    .line 485
    .line 486
    const/4 p2, 0x0

    .line 487
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 488
    .line 489
    .line 490
    const/4 p2, 0x6

    .line 491
    const-string v0, "\u53d6\u6d88"

    .line 492
    .line 493
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 494
    .line 495
    .line 496
    :goto_d
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 497
    .line 498
    return-object p1

    .line 499
    :pswitch_6
    check-cast p1, Lf1/s;

    .line 500
    .line 501
    check-cast p2, Ljava/lang/Number;

    .line 502
    .line 503
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 504
    .line 505
    .line 506
    move-result p2

    .line 507
    and-int/lit8 p2, p2, 0x3

    .line 508
    .line 509
    const/4 v0, 0x2

    .line 510
    if-ne p2, v0, :cond_1d

    .line 511
    .line 512
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 513
    .line 514
    .line 515
    move-result p2

    .line 516
    if-nez p2, :cond_1c

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_1c
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 520
    .line 521
    .line 522
    goto :goto_f

    .line 523
    :cond_1d
    :goto_e
    const p2, 0x4c5de2

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 527
    .line 528
    .line 529
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 530
    .line 531
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    if-nez v0, :cond_1e

    .line 540
    .line 541
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 542
    .line 543
    if-ne v1, v0, :cond_1f

    .line 544
    .line 545
    :cond_1e
    new-instance v1, Lc8/g;

    .line 546
    .line 547
    const/16 v0, 0x12

    .line 548
    .line 549
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    :cond_1f
    check-cast v1, Lf9/a;

    .line 556
    .line 557
    const/4 p2, 0x0

    .line 558
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 559
    .line 560
    .line 561
    const/4 p2, 0x6

    .line 562
    const-string v0, "\u5173\u95ed"

    .line 563
    .line 564
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 565
    .line 566
    .line 567
    :goto_f
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 568
    .line 569
    return-object p1

    .line 570
    :pswitch_7
    check-cast p1, Lf1/s;

    .line 571
    .line 572
    check-cast p2, Ljava/lang/Number;

    .line 573
    .line 574
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 575
    .line 576
    .line 577
    move-result p2

    .line 578
    and-int/lit8 p2, p2, 0x3

    .line 579
    .line 580
    const/4 v0, 0x2

    .line 581
    if-ne p2, v0, :cond_21

    .line 582
    .line 583
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 584
    .line 585
    .line 586
    move-result p2

    .line 587
    if-nez p2, :cond_20

    .line 588
    .line 589
    goto :goto_10

    .line 590
    :cond_20
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 591
    .line 592
    .line 593
    goto :goto_11

    .line 594
    :cond_21
    :goto_10
    const p2, 0x4c5de2

    .line 595
    .line 596
    .line 597
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 598
    .line 599
    .line 600
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 601
    .line 602
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    if-nez v0, :cond_22

    .line 611
    .line 612
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 613
    .line 614
    if-ne v1, v0, :cond_23

    .line 615
    .line 616
    :cond_22
    new-instance v1, Lc8/g;

    .line 617
    .line 618
    const/16 v0, 0xb

    .line 619
    .line 620
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    :cond_23
    check-cast v1, Lf9/a;

    .line 627
    .line 628
    const/4 p2, 0x0

    .line 629
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 630
    .line 631
    .line 632
    const/4 p2, 0x6

    .line 633
    const-string v0, "\u5173\u95ed"

    .line 634
    .line 635
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 636
    .line 637
    .line 638
    :goto_11
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 639
    .line 640
    return-object p1

    .line 641
    :pswitch_8
    check-cast p1, Lf1/s;

    .line 642
    .line 643
    check-cast p2, Ljava/lang/Number;

    .line 644
    .line 645
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 646
    .line 647
    .line 648
    move-result p2

    .line 649
    and-int/lit8 p2, p2, 0x3

    .line 650
    .line 651
    const/4 v0, 0x2

    .line 652
    if-ne p2, v0, :cond_25

    .line 653
    .line 654
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 655
    .line 656
    .line 657
    move-result p2

    .line 658
    if-nez p2, :cond_24

    .line 659
    .line 660
    goto :goto_12

    .line 661
    :cond_24
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 662
    .line 663
    .line 664
    goto :goto_13

    .line 665
    :cond_25
    :goto_12
    const p2, 0x4c5de2

    .line 666
    .line 667
    .line 668
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 669
    .line 670
    .line 671
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 672
    .line 673
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    if-nez v0, :cond_26

    .line 682
    .line 683
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 684
    .line 685
    if-ne v1, v0, :cond_27

    .line 686
    .line 687
    :cond_26
    new-instance v1, Lc8/g;

    .line 688
    .line 689
    const/16 v0, 0x9

    .line 690
    .line 691
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    :cond_27
    check-cast v1, Lf9/a;

    .line 698
    .line 699
    const/4 p2, 0x0

    .line 700
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 701
    .line 702
    .line 703
    const/4 p2, 0x6

    .line 704
    const-string v0, "\u5173\u95ed"

    .line 705
    .line 706
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 707
    .line 708
    .line 709
    :goto_13
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 710
    .line 711
    return-object p1

    .line 712
    :pswitch_9
    check-cast p1, Lf1/s;

    .line 713
    .line 714
    check-cast p2, Ljava/lang/Number;

    .line 715
    .line 716
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 717
    .line 718
    .line 719
    move-result p2

    .line 720
    and-int/lit8 p2, p2, 0x3

    .line 721
    .line 722
    const/4 v0, 0x2

    .line 723
    if-ne p2, v0, :cond_29

    .line 724
    .line 725
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 726
    .line 727
    .line 728
    move-result p2

    .line 729
    if-nez p2, :cond_28

    .line 730
    .line 731
    goto :goto_14

    .line 732
    :cond_28
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 733
    .line 734
    .line 735
    goto :goto_15

    .line 736
    :cond_29
    :goto_14
    const p2, 0x4c5de2

    .line 737
    .line 738
    .line 739
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 740
    .line 741
    .line 742
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 743
    .line 744
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v0

    .line 748
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    if-nez v0, :cond_2a

    .line 753
    .line 754
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 755
    .line 756
    if-ne v1, v0, :cond_2b

    .line 757
    .line 758
    :cond_2a
    new-instance v1, Lc8/g;

    .line 759
    .line 760
    const/16 v0, 0x8

    .line 761
    .line 762
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 766
    .line 767
    .line 768
    :cond_2b
    check-cast v1, Lf9/a;

    .line 769
    .line 770
    const/4 p2, 0x0

    .line 771
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 772
    .line 773
    .line 774
    const/4 p2, 0x6

    .line 775
    const-string v0, "\u5173\u95ed"

    .line 776
    .line 777
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 778
    .line 779
    .line 780
    :goto_15
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 781
    .line 782
    return-object p1

    .line 783
    :pswitch_a
    check-cast p1, Lf1/s;

    .line 784
    .line 785
    check-cast p2, Ljava/lang/Number;

    .line 786
    .line 787
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 788
    .line 789
    .line 790
    move-result p2

    .line 791
    and-int/lit8 p2, p2, 0x3

    .line 792
    .line 793
    const/4 v0, 0x2

    .line 794
    if-ne p2, v0, :cond_2d

    .line 795
    .line 796
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 797
    .line 798
    .line 799
    move-result p2

    .line 800
    if-nez p2, :cond_2c

    .line 801
    .line 802
    goto :goto_16

    .line 803
    :cond_2c
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 804
    .line 805
    .line 806
    goto :goto_17

    .line 807
    :cond_2d
    :goto_16
    const p2, 0x4c5de2

    .line 808
    .line 809
    .line 810
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 811
    .line 812
    .line 813
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 814
    .line 815
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    move-result v0

    .line 819
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    if-nez v0, :cond_2e

    .line 824
    .line 825
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 826
    .line 827
    if-ne v1, v0, :cond_2f

    .line 828
    .line 829
    :cond_2e
    new-instance v1, Lc8/g;

    .line 830
    .line 831
    const/4 v0, 0x7

    .line 832
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 836
    .line 837
    .line 838
    :cond_2f
    check-cast v1, Lf9/a;

    .line 839
    .line 840
    const/4 p2, 0x0

    .line 841
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 842
    .line 843
    .line 844
    const/4 p2, 0x6

    .line 845
    const-string v0, "\u5173\u95ed"

    .line 846
    .line 847
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 848
    .line 849
    .line 850
    :goto_17
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 851
    .line 852
    return-object p1

    .line 853
    :pswitch_b
    check-cast p1, Lf1/s;

    .line 854
    .line 855
    check-cast p2, Ljava/lang/Number;

    .line 856
    .line 857
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 858
    .line 859
    .line 860
    move-result p2

    .line 861
    and-int/lit8 p2, p2, 0x3

    .line 862
    .line 863
    const/4 v0, 0x2

    .line 864
    if-ne p2, v0, :cond_31

    .line 865
    .line 866
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 867
    .line 868
    .line 869
    move-result p2

    .line 870
    if-nez p2, :cond_30

    .line 871
    .line 872
    goto :goto_18

    .line 873
    :cond_30
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 874
    .line 875
    .line 876
    goto :goto_19

    .line 877
    :cond_31
    :goto_18
    const p2, 0x4c5de2

    .line 878
    .line 879
    .line 880
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 881
    .line 882
    .line 883
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 884
    .line 885
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    if-nez v0, :cond_32

    .line 894
    .line 895
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 896
    .line 897
    if-ne v1, v0, :cond_33

    .line 898
    .line 899
    :cond_32
    new-instance v1, Lc8/g;

    .line 900
    .line 901
    const/4 v0, 0x6

    .line 902
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 906
    .line 907
    .line 908
    :cond_33
    check-cast v1, Lf9/a;

    .line 909
    .line 910
    const/4 p2, 0x0

    .line 911
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 912
    .line 913
    .line 914
    const/4 p2, 0x6

    .line 915
    const-string v0, "\u5173\u95ed"

    .line 916
    .line 917
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 918
    .line 919
    .line 920
    :goto_19
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 921
    .line 922
    return-object p1

    .line 923
    :pswitch_c
    check-cast p1, Lf1/s;

    .line 924
    .line 925
    check-cast p2, Ljava/lang/Number;

    .line 926
    .line 927
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 928
    .line 929
    .line 930
    move-result p2

    .line 931
    and-int/lit8 p2, p2, 0x3

    .line 932
    .line 933
    const/4 v0, 0x2

    .line 934
    if-ne p2, v0, :cond_35

    .line 935
    .line 936
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 937
    .line 938
    .line 939
    move-result p2

    .line 940
    if-nez p2, :cond_34

    .line 941
    .line 942
    goto :goto_1a

    .line 943
    :cond_34
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 944
    .line 945
    .line 946
    goto :goto_1b

    .line 947
    :cond_35
    :goto_1a
    const p2, 0x4c5de2

    .line 948
    .line 949
    .line 950
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 951
    .line 952
    .line 953
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 954
    .line 955
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 956
    .line 957
    .line 958
    move-result v0

    .line 959
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v1

    .line 963
    if-nez v0, :cond_36

    .line 964
    .line 965
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 966
    .line 967
    if-ne v1, v0, :cond_37

    .line 968
    .line 969
    :cond_36
    new-instance v1, Lc8/g;

    .line 970
    .line 971
    const/4 v0, 0x5

    .line 972
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 976
    .line 977
    .line 978
    :cond_37
    check-cast v1, Lf9/a;

    .line 979
    .line 980
    const/4 p2, 0x0

    .line 981
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 982
    .line 983
    .line 984
    const/4 p2, 0x6

    .line 985
    const-string v0, "\u5173\u95ed"

    .line 986
    .line 987
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 988
    .line 989
    .line 990
    :goto_1b
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 991
    .line 992
    return-object p1

    .line 993
    :pswitch_d
    check-cast p1, Lf1/s;

    .line 994
    .line 995
    check-cast p2, Ljava/lang/Number;

    .line 996
    .line 997
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 998
    .line 999
    .line 1000
    move-result p2

    .line 1001
    and-int/lit8 p2, p2, 0x3

    .line 1002
    .line 1003
    const/4 v0, 0x2

    .line 1004
    if-ne p2, v0, :cond_39

    .line 1005
    .line 1006
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 1007
    .line 1008
    .line 1009
    move-result p2

    .line 1010
    if-nez p2, :cond_38

    .line 1011
    .line 1012
    goto :goto_1c

    .line 1013
    :cond_38
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_1d

    .line 1017
    :cond_39
    :goto_1c
    const p2, 0x4c5de2

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 1021
    .line 1022
    .line 1023
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 1024
    .line 1025
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v0

    .line 1029
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    if-nez v0, :cond_3a

    .line 1034
    .line 1035
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 1036
    .line 1037
    if-ne v1, v0, :cond_3b

    .line 1038
    .line 1039
    :cond_3a
    new-instance v1, Lc8/g;

    .line 1040
    .line 1041
    const/4 v0, 0x3

    .line 1042
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1046
    .line 1047
    .line 1048
    :cond_3b
    check-cast v1, Lf9/a;

    .line 1049
    .line 1050
    const/4 p2, 0x0

    .line 1051
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 1052
    .line 1053
    .line 1054
    const/4 p2, 0x6

    .line 1055
    const-string v0, "\u5173\u95ed"

    .line 1056
    .line 1057
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 1058
    .line 1059
    .line 1060
    :goto_1d
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 1061
    .line 1062
    return-object p1

    .line 1063
    :pswitch_e
    check-cast p1, Lf1/s;

    .line 1064
    .line 1065
    check-cast p2, Ljava/lang/Number;

    .line 1066
    .line 1067
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 1068
    .line 1069
    .line 1070
    move-result p2

    .line 1071
    and-int/lit8 p2, p2, 0x3

    .line 1072
    .line 1073
    const/4 v0, 0x2

    .line 1074
    if-ne p2, v0, :cond_3d

    .line 1075
    .line 1076
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 1077
    .line 1078
    .line 1079
    move-result p2

    .line 1080
    if-nez p2, :cond_3c

    .line 1081
    .line 1082
    goto :goto_1e

    .line 1083
    :cond_3c
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 1084
    .line 1085
    .line 1086
    goto :goto_1f

    .line 1087
    :cond_3d
    :goto_1e
    const p2, 0x4c5de2

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 1091
    .line 1092
    .line 1093
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 1094
    .line 1095
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v0

    .line 1099
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v1

    .line 1103
    if-nez v0, :cond_3e

    .line 1104
    .line 1105
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 1106
    .line 1107
    if-ne v1, v0, :cond_3f

    .line 1108
    .line 1109
    :cond_3e
    new-instance v1, Lc8/g;

    .line 1110
    .line 1111
    const/4 v0, 0x2

    .line 1112
    invoke-direct {v1, p2, v0}, Lc8/g;-><init>(Lf9/a;I)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1116
    .line 1117
    .line 1118
    :cond_3f
    check-cast v1, Lf9/a;

    .line 1119
    .line 1120
    const/4 p2, 0x0

    .line 1121
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 1122
    .line 1123
    .line 1124
    const/4 p2, 0x6

    .line 1125
    const-string v0, "\u5173\u95ed"

    .line 1126
    .line 1127
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 1128
    .line 1129
    .line 1130
    :goto_1f
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 1131
    .line 1132
    return-object p1

    .line 1133
    :pswitch_f
    check-cast p1, Lf1/s;

    .line 1134
    .line 1135
    check-cast p2, Ljava/lang/Number;

    .line 1136
    .line 1137
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 1138
    .line 1139
    .line 1140
    move-result p2

    .line 1141
    and-int/lit8 p2, p2, 0x3

    .line 1142
    .line 1143
    const/4 v0, 0x2

    .line 1144
    if-ne p2, v0, :cond_41

    .line 1145
    .line 1146
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 1147
    .line 1148
    .line 1149
    move-result p2

    .line 1150
    if-nez p2, :cond_40

    .line 1151
    .line 1152
    goto :goto_20

    .line 1153
    :cond_40
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 1154
    .line 1155
    .line 1156
    goto :goto_21

    .line 1157
    :cond_41
    :goto_20
    iget-object p2, p0, La8/p0;->b:Lf9/a;

    .line 1158
    .line 1159
    const/4 v0, 0x6

    .line 1160
    const-string v1, "\u5173\u95ed"

    .line 1161
    .line 1162
    invoke-static {v1, p2, p1, v0}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 1163
    .line 1164
    .line 1165
    :goto_21
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 1166
    .line 1167
    return-object p1

    .line 1168
    nop

    .line 1169
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
