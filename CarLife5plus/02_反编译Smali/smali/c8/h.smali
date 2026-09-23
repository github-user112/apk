.class public final synthetic Lc8/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lf9/k;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ZLf9/k;I)V
    .locals 0

    .line 1
    const/16 p5, 0xc

    iput p5, p0, Lc8/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/h;->e:Ljava/lang/Object;

    iput-object p2, p0, Lc8/h;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lc8/h;->b:Z

    iput-object p4, p0, Lc8/h;->d:Lf9/k;

    return-void
.end method

.method public synthetic constructor <init>(Lz7/v1;ZLf9/a;Lf9/k;II)V
    .locals 0

    .line 2
    iput p6, p0, Lc8/h;->a:I

    iput-object p1, p0, Lc8/h;->e:Ljava/lang/Object;

    iput-boolean p2, p0, Lc8/h;->b:Z

    iput-object p3, p0, Lc8/h;->c:Ljava/lang/Object;

    iput-object p4, p0, Lc8/h;->d:Lf9/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lc8/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Ly7/f0;

    .line 10
    .line 11
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Lf9/a;

    .line 15
    .line 16
    move-object v5, p1

    .line 17
    check-cast v5, Lf1/s;

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x31

    .line 25
    .line 26
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 31
    .line 32
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 33
    .line 34
    invoke-virtual/range {v1 .. v6}, Ly7/f0;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 38
    .line 39
    return-object p1

    .line 40
    :pswitch_0
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    check-cast v1, Ly7/e0;

    .line 44
    .line 45
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v3, v0

    .line 48
    check-cast v3, Lf9/a;

    .line 49
    .line 50
    move-object v5, p1

    .line 51
    check-cast v5, Lf1/s;

    .line 52
    .line 53
    check-cast p2, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const/16 p1, 0x31

    .line 59
    .line 60
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 65
    .line 66
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 67
    .line 68
    invoke-virtual/range {v1 .. v6}, Ly7/e0;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 73
    .line 74
    move-object v1, v0

    .line 75
    check-cast v1, Ly7/d0;

    .line 76
    .line 77
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 78
    .line 79
    move-object v3, v0

    .line 80
    check-cast v3, Lf9/a;

    .line 81
    .line 82
    move-object v5, p1

    .line 83
    check-cast v5, Lf1/s;

    .line 84
    .line 85
    check-cast p2, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const/16 p1, 0x31

    .line 91
    .line 92
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 97
    .line 98
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 99
    .line 100
    invoke-virtual/range {v1 .. v6}, Ly7/d0;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 105
    .line 106
    move-object v1, v0

    .line 107
    check-cast v1, Ly7/a0;

    .line 108
    .line 109
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 110
    .line 111
    move-object v3, v0

    .line 112
    check-cast v3, Lf9/a;

    .line 113
    .line 114
    move-object v5, p1

    .line 115
    check-cast v5, Lf1/s;

    .line 116
    .line 117
    check-cast p2, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const/16 p1, 0x31

    .line 123
    .line 124
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 129
    .line 130
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 131
    .line 132
    invoke-virtual/range {v1 .. v6}, Ly7/a0;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v1, v0

    .line 139
    check-cast v1, Ly7/z;

    .line 140
    .line 141
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 142
    .line 143
    move-object v3, v0

    .line 144
    check-cast v3, Lf9/a;

    .line 145
    .line 146
    move-object v5, p1

    .line 147
    check-cast v5, Lf1/s;

    .line 148
    .line 149
    check-cast p2, Ljava/lang/Integer;

    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const/16 p1, 0x31

    .line 155
    .line 156
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 161
    .line 162
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 163
    .line 164
    invoke-virtual/range {v1 .. v6}, Ly7/z;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :pswitch_4
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 170
    .line 171
    move-object v1, v0

    .line 172
    check-cast v1, Ly7/x;

    .line 173
    .line 174
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 175
    .line 176
    move-object v3, v0

    .line 177
    check-cast v3, Lf9/a;

    .line 178
    .line 179
    move-object v5, p1

    .line 180
    check-cast v5, Lf1/s;

    .line 181
    .line 182
    check-cast p2, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    const/16 p1, 0x31

    .line 188
    .line 189
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 194
    .line 195
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 196
    .line 197
    invoke-virtual/range {v1 .. v6}, Ly7/x;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :pswitch_5
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 203
    .line 204
    move-object v1, v0

    .line 205
    check-cast v1, Ly7/v;

    .line 206
    .line 207
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 208
    .line 209
    move-object v3, v0

    .line 210
    check-cast v3, Lf9/a;

    .line 211
    .line 212
    move-object v5, p1

    .line 213
    check-cast v5, Lf1/s;

    .line 214
    .line 215
    check-cast p2, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    const/16 p1, 0x31

    .line 221
    .line 222
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 227
    .line 228
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 229
    .line 230
    invoke-virtual/range {v1 .. v6}, Ly7/v;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :pswitch_6
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 236
    .line 237
    move-object v1, v0

    .line 238
    check-cast v1, Ly7/u;

    .line 239
    .line 240
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 241
    .line 242
    move-object v3, v0

    .line 243
    check-cast v3, Lf9/a;

    .line 244
    .line 245
    move-object v5, p1

    .line 246
    check-cast v5, Lf1/s;

    .line 247
    .line 248
    check-cast p2, Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    const/16 p1, 0x31

    .line 254
    .line 255
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 260
    .line 261
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 262
    .line 263
    invoke-virtual/range {v1 .. v6}, Ly7/u;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :pswitch_7
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 269
    .line 270
    move-object v1, v0

    .line 271
    check-cast v1, Ly7/p;

    .line 272
    .line 273
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 274
    .line 275
    move-object v3, v0

    .line 276
    check-cast v3, Lf9/a;

    .line 277
    .line 278
    move-object v5, p1

    .line 279
    check-cast v5, Lf1/s;

    .line 280
    .line 281
    check-cast p2, Ljava/lang/Integer;

    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    const/16 p1, 0x31

    .line 287
    .line 288
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 293
    .line 294
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 295
    .line 296
    invoke-virtual/range {v1 .. v6}, Ly7/p;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :pswitch_8
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 302
    .line 303
    move-object v1, v0

    .line 304
    check-cast v1, Ly7/m;

    .line 305
    .line 306
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 307
    .line 308
    move-object v3, v0

    .line 309
    check-cast v3, Lf9/a;

    .line 310
    .line 311
    move-object v5, p1

    .line 312
    check-cast v5, Lf1/s;

    .line 313
    .line 314
    check-cast p2, Ljava/lang/Integer;

    .line 315
    .line 316
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    const/16 p1, 0x31

    .line 320
    .line 321
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 326
    .line 327
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 328
    .line 329
    invoke-virtual/range {v1 .. v6}, Ly7/m;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :pswitch_9
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 335
    .line 336
    move-object v1, v0

    .line 337
    check-cast v1, Ljava/util/List;

    .line 338
    .line 339
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 340
    .line 341
    move-object v2, v0

    .line 342
    check-cast v2, Ljava/lang/String;

    .line 343
    .line 344
    move-object v5, p1

    .line 345
    check-cast v5, Lf1/s;

    .line 346
    .line 347
    check-cast p2, Ljava/lang/Integer;

    .line 348
    .line 349
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    const/16 p1, 0xc07

    .line 353
    .line 354
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    iget-boolean v3, p0, Lc8/h;->b:Z

    .line 359
    .line 360
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 361
    .line 362
    invoke-static/range {v1 .. v6}, Lm9/e0;->D(Ljava/util/List;Ljava/lang/String;ZLf9/k;Lf1/s;I)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :pswitch_a
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 368
    .line 369
    move-object v1, v0

    .line 370
    check-cast v1, Lc8/j1;

    .line 371
    .line 372
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 373
    .line 374
    move-object v3, v0

    .line 375
    check-cast v3, Lf9/a;

    .line 376
    .line 377
    move-object v5, p1

    .line 378
    check-cast v5, Lf1/s;

    .line 379
    .line 380
    check-cast p2, Ljava/lang/Integer;

    .line 381
    .line 382
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    const/16 p1, 0x31

    .line 386
    .line 387
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 392
    .line 393
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 394
    .line 395
    invoke-virtual/range {v1 .. v6}, Lc8/j1;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :pswitch_b
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 401
    .line 402
    move-object v1, v0

    .line 403
    check-cast v1, Lc8/i1;

    .line 404
    .line 405
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 406
    .line 407
    move-object v3, v0

    .line 408
    check-cast v3, Lf9/a;

    .line 409
    .line 410
    move-object v5, p1

    .line 411
    check-cast v5, Lf1/s;

    .line 412
    .line 413
    check-cast p2, Ljava/lang/Integer;

    .line 414
    .line 415
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    const/16 p1, 0x31

    .line 419
    .line 420
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 425
    .line 426
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 427
    .line 428
    invoke-virtual/range {v1 .. v6}, Lc8/i1;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :pswitch_c
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 434
    .line 435
    move-object v1, v0

    .line 436
    check-cast v1, Lc8/h1;

    .line 437
    .line 438
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 439
    .line 440
    move-object v3, v0

    .line 441
    check-cast v3, Lf9/a;

    .line 442
    .line 443
    move-object v5, p1

    .line 444
    check-cast v5, Lf1/s;

    .line 445
    .line 446
    check-cast p2, Ljava/lang/Integer;

    .line 447
    .line 448
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    const/16 p1, 0x31

    .line 452
    .line 453
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 458
    .line 459
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 460
    .line 461
    invoke-virtual/range {v1 .. v6}, Lc8/h1;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :pswitch_d
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 467
    .line 468
    move-object v1, v0

    .line 469
    check-cast v1, Lc8/e1;

    .line 470
    .line 471
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 472
    .line 473
    move-object v3, v0

    .line 474
    check-cast v3, Lf9/a;

    .line 475
    .line 476
    move-object v5, p1

    .line 477
    check-cast v5, Lf1/s;

    .line 478
    .line 479
    check-cast p2, Ljava/lang/Integer;

    .line 480
    .line 481
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    .line 483
    .line 484
    const/16 p1, 0x31

    .line 485
    .line 486
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 487
    .line 488
    .line 489
    move-result v6

    .line 490
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 491
    .line 492
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 493
    .line 494
    invoke-virtual/range {v1 .. v6}, Lc8/e1;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_0

    .line 498
    .line 499
    :pswitch_e
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 500
    .line 501
    move-object v1, v0

    .line 502
    check-cast v1, Lc8/b1;

    .line 503
    .line 504
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 505
    .line 506
    move-object v3, v0

    .line 507
    check-cast v3, Lf9/a;

    .line 508
    .line 509
    move-object v5, p1

    .line 510
    check-cast v5, Lf1/s;

    .line 511
    .line 512
    check-cast p2, Ljava/lang/Integer;

    .line 513
    .line 514
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    const/16 p1, 0x31

    .line 518
    .line 519
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 524
    .line 525
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 526
    .line 527
    invoke-virtual/range {v1 .. v6}, Lc8/b1;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 528
    .line 529
    .line 530
    goto/16 :goto_0

    .line 531
    .line 532
    :pswitch_f
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 533
    .line 534
    move-object v1, v0

    .line 535
    check-cast v1, Lc8/x0;

    .line 536
    .line 537
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 538
    .line 539
    move-object v3, v0

    .line 540
    check-cast v3, Lf9/a;

    .line 541
    .line 542
    move-object v5, p1

    .line 543
    check-cast v5, Lf1/s;

    .line 544
    .line 545
    check-cast p2, Ljava/lang/Integer;

    .line 546
    .line 547
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    .line 549
    .line 550
    const/16 p1, 0x31

    .line 551
    .line 552
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 553
    .line 554
    .line 555
    move-result v6

    .line 556
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 557
    .line 558
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 559
    .line 560
    invoke-virtual/range {v1 .. v6}, Lc8/x0;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_0

    .line 564
    .line 565
    :pswitch_10
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 566
    .line 567
    move-object v1, v0

    .line 568
    check-cast v1, Lc8/p0;

    .line 569
    .line 570
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 571
    .line 572
    move-object v3, v0

    .line 573
    check-cast v3, Lf9/a;

    .line 574
    .line 575
    move-object v5, p1

    .line 576
    check-cast v5, Lf1/s;

    .line 577
    .line 578
    check-cast p2, Ljava/lang/Integer;

    .line 579
    .line 580
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    const/16 p1, 0x31

    .line 584
    .line 585
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 586
    .line 587
    .line 588
    move-result v6

    .line 589
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 590
    .line 591
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 592
    .line 593
    invoke-virtual/range {v1 .. v6}, Lc8/p0;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_0

    .line 597
    .line 598
    :pswitch_11
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 599
    .line 600
    move-object v1, v0

    .line 601
    check-cast v1, Lc8/l0;

    .line 602
    .line 603
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 604
    .line 605
    move-object v3, v0

    .line 606
    check-cast v3, Lf9/a;

    .line 607
    .line 608
    move-object v5, p1

    .line 609
    check-cast v5, Lf1/s;

    .line 610
    .line 611
    check-cast p2, Ljava/lang/Integer;

    .line 612
    .line 613
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    const/16 p1, 0x31

    .line 617
    .line 618
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 619
    .line 620
    .line 621
    move-result v6

    .line 622
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 623
    .line 624
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 625
    .line 626
    invoke-virtual/range {v1 .. v6}, Lc8/l0;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :pswitch_12
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 632
    .line 633
    move-object v1, v0

    .line 634
    check-cast v1, Lc8/g0;

    .line 635
    .line 636
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 637
    .line 638
    move-object v3, v0

    .line 639
    check-cast v3, Lf9/a;

    .line 640
    .line 641
    move-object v5, p1

    .line 642
    check-cast v5, Lf1/s;

    .line 643
    .line 644
    check-cast p2, Ljava/lang/Integer;

    .line 645
    .line 646
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    const/16 p1, 0x31

    .line 650
    .line 651
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 652
    .line 653
    .line 654
    move-result v6

    .line 655
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 656
    .line 657
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 658
    .line 659
    invoke-virtual/range {v1 .. v6}, Lc8/g0;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_0

    .line 663
    .line 664
    :pswitch_13
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 665
    .line 666
    move-object v1, v0

    .line 667
    check-cast v1, Lc8/a0;

    .line 668
    .line 669
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 670
    .line 671
    move-object v3, v0

    .line 672
    check-cast v3, Lf9/a;

    .line 673
    .line 674
    move-object v5, p1

    .line 675
    check-cast v5, Lf1/s;

    .line 676
    .line 677
    check-cast p2, Ljava/lang/Integer;

    .line 678
    .line 679
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    const/16 p1, 0x31

    .line 683
    .line 684
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 685
    .line 686
    .line 687
    move-result v6

    .line 688
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 689
    .line 690
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 691
    .line 692
    invoke-virtual/range {v1 .. v6}, Lc8/a0;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_0

    .line 696
    .line 697
    :pswitch_14
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 698
    .line 699
    move-object v1, v0

    .line 700
    check-cast v1, Lc8/z;

    .line 701
    .line 702
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 703
    .line 704
    move-object v3, v0

    .line 705
    check-cast v3, Lf9/a;

    .line 706
    .line 707
    move-object v5, p1

    .line 708
    check-cast v5, Lf1/s;

    .line 709
    .line 710
    check-cast p2, Ljava/lang/Integer;

    .line 711
    .line 712
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    const/16 p1, 0x31

    .line 716
    .line 717
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 718
    .line 719
    .line 720
    move-result v6

    .line 721
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 722
    .line 723
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 724
    .line 725
    invoke-virtual/range {v1 .. v6}, Lc8/z;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 726
    .line 727
    .line 728
    goto/16 :goto_0

    .line 729
    .line 730
    :pswitch_15
    iget-object v0, p0, Lc8/h;->e:Ljava/lang/Object;

    .line 731
    .line 732
    move-object v1, v0

    .line 733
    check-cast v1, Lc8/v;

    .line 734
    .line 735
    iget-object v0, p0, Lc8/h;->c:Ljava/lang/Object;

    .line 736
    .line 737
    move-object v3, v0

    .line 738
    check-cast v3, Lf9/a;

    .line 739
    .line 740
    move-object v5, p1

    .line 741
    check-cast v5, Lf1/s;

    .line 742
    .line 743
    check-cast p2, Ljava/lang/Integer;

    .line 744
    .line 745
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    const/16 p1, 0x31

    .line 749
    .line 750
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 751
    .line 752
    .line 753
    move-result v6

    .line 754
    iget-boolean v2, p0, Lc8/h;->b:Z

    .line 755
    .line 756
    iget-object v4, p0, Lc8/h;->d:Lf9/k;

    .line 757
    .line 758
    invoke-virtual/range {v1 .. v6}, Lc8/v;->c(ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_0

    .line 762
    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
