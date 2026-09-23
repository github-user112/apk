.class public final Lk7/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lf1/v2;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lf1/v2;I)V
    .locals 0

    .line 1
    iput p3, p0, Lk7/i;->a:I

    iput-object p1, p0, Lk7/i;->b:Landroid/app/Activity;

    iput-object p2, p0, Lk7/i;->c:Lf1/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lf1/b1;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lk7/i;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/i;->c:Lf1/v2;

    iput-object p2, p0, Lk7/i;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lk7/i;->a:I

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
    new-instance p2, Le8/h;

    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    iget-object v1, p0, Lk7/i;->c:Lf1/v2;

    .line 34
    .line 35
    invoke-direct {p2, v1, v0}, Le8/h;-><init>(Lf1/v2;I)V

    .line 36
    .line 37
    .line 38
    const v0, 0x22cc2e1d

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const/16 v0, 0x30

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-static {v2, p2, p1, v0, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Lk7/i;

    .line 53
    .line 54
    iget-object v0, p0, Lk7/i;->b:Landroid/app/Activity;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {p2, v0, v1, v2}, Lk7/i;-><init>(Landroid/app/Activity;Lf1/v2;I)V

    .line 58
    .line 59
    .line 60
    const v0, 0x29fc87d4

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v0, "WLAN\u76f4\u8fde\u8bbe\u7f6e"

    .line 68
    .line 69
    const/16 v1, 0x36

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-static {v0, p2, p1, v1, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 73
    .line 74
    .line 75
    const-string p2, "USB\u8fde\u63a5\u8bbe\u7f6e"

    .line 76
    .line 77
    sget-object v0, Lm7/d;->b:Ln1/c;

    .line 78
    .line 79
    invoke-static {p2, v0, p1, v1, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 80
    .line 81
    .line 82
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 83
    .line 84
    return-object p1

    .line 85
    :pswitch_0
    move-object v4, p1

    .line 86
    check-cast v4, Lf1/s;

    .line 87
    .line 88
    check-cast p2, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    and-int/lit8 p1, p1, 0x3

    .line 95
    .line 96
    const/4 p2, 0x2

    .line 97
    if-ne p1, p2, :cond_3

    .line 98
    .line 99
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :cond_3
    :goto_2
    const-string p1, "WLAN\u76f4\u8fdeBLE\u5e7f\u64ad"

    .line 112
    .line 113
    const-string p2, "WLAN\u76f4\u8fde\u4f4e\u529f\u8017\u84dd\u7259\u5e7f\u64ad\u8fde\u63a5"

    .line 114
    .line 115
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const p1, 0x4c5de2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, p1}, Lf1/s;->W(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lk7/i;->b:Landroid/app/Activity;

    .line 130
    .line 131
    invoke-virtual {v4, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 140
    .line 141
    if-nez p2, :cond_4

    .line 142
    .line 143
    if-ne v1, v8, :cond_5

    .line 144
    .line 145
    :cond_4
    new-instance v1, Lm7/u;

    .line 146
    .line 147
    const/4 p2, 0x0

    .line 148
    invoke-direct {v1, p1, p2}, Lm7/u;-><init>(Landroid/app/Activity;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    check-cast v1, Lf9/k;

    .line 155
    .line 156
    const/4 p1, 0x0

    .line 157
    invoke-virtual {v4, p1}, Lf1/s;->p(Z)V

    .line 158
    .line 159
    .line 160
    const/16 v6, 0x36

    .line 161
    .line 162
    const/16 v7, 0xc

    .line 163
    .line 164
    move-object v5, v4

    .line 165
    move-object v4, v1

    .line 166
    const-string v1, "CONNECT_OPEN_BLE"

    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    const/4 v3, 0x0

    .line 170
    invoke-static/range {v0 .. v7}, Lc7/a;->d(Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 171
    .line 172
    .line 173
    move-object v4, v5

    .line 174
    const/4 p2, 0x6

    .line 175
    invoke-static {p2, v4}, Lg5/a;->B(ILf1/s;)F

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    sget-object v6, Lr1/m;->a:Lr1/m;

    .line 180
    .line 181
    invoke-static {v6, p2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-static {v4, p2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 186
    .line 187
    .line 188
    sget-object v0, Lm7/n;->b:Lm7/n;

    .line 189
    .line 190
    iget-object p2, p0, Lk7/i;->c:Lf1/v2;

    .line 191
    .line 192
    invoke-interface {p2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Lm7/z;

    .line 197
    .line 198
    iget-object v1, v1, Lm7/z;->d:Ljava/lang/String;

    .line 199
    .line 200
    move-object v2, v1

    .line 201
    new-instance v1, Lr8/j;

    .line 202
    .line 203
    const-string v3, "\u8f66\u673a\u7aefWiFi\u76f4\u8fde\u540d\u79f0"

    .line 204
    .line 205
    invoke-direct {v1, v3, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    const v7, 0x6e3c21fe

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v7}, Lf1/s;->W(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    if-ne v2, v8, :cond_6

    .line 219
    .line 220
    new-instance v2, Lm7/j;

    .line 221
    .line 222
    const/4 v3, 0x5

    .line 223
    invoke-direct {v2, v3}, Lm7/j;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_6
    check-cast v2, Lf9/k;

    .line 230
    .line 231
    invoke-static {v4, p1, v7}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-ne v3, v8, :cond_7

    .line 236
    .line 237
    new-instance v3, Lm7/j;

    .line 238
    .line 239
    const/4 v5, 0x6

    .line 240
    invoke-direct {v3, v5}, Lm7/j;-><init>(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :cond_7
    check-cast v3, Lf9/k;

    .line 247
    .line 248
    invoke-virtual {v4, p1}, Lf1/s;->p(Z)V

    .line 249
    .line 250
    .line 251
    const/16 v5, 0xdb0

    .line 252
    .line 253
    invoke-virtual/range {v0 .. v5}, Lm7/n;->e(Lr8/j;Lf9/k;Lf9/k;Lf1/s;I)V

    .line 254
    .line 255
    .line 256
    invoke-interface {p2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    check-cast p2, Lm7/z;

    .line 261
    .line 262
    iget-object p2, p2, Lm7/z;->e:Ljava/lang/String;

    .line 263
    .line 264
    new-instance v1, Lr8/j;

    .line 265
    .line 266
    const-string v2, "\u624b\u673a\u7aef\u84dd\u7259\u540d\u79f0"

    .line 267
    .line 268
    invoke-direct {v1, v2, p2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v7}, Lf1/s;->W(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    if-ne p2, v8, :cond_8

    .line 279
    .line 280
    new-instance p2, Lm7/j;

    .line 281
    .line 282
    const/4 v2, 0x7

    .line 283
    invoke-direct {p2, v2}, Lm7/j;-><init>(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_8
    move-object v2, p2

    .line 290
    check-cast v2, Lf9/k;

    .line 291
    .line 292
    invoke-static {v4, p1, v7}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    if-ne p2, v8, :cond_9

    .line 297
    .line 298
    new-instance p2, Lm7/j;

    .line 299
    .line 300
    const/16 v3, 0x8

    .line 301
    .line 302
    invoke-direct {p2, v3}, Lm7/j;-><init>(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :cond_9
    move-object v3, p2

    .line 309
    check-cast v3, Lf9/k;

    .line 310
    .line 311
    invoke-virtual {v4, p1}, Lf1/s;->p(Z)V

    .line 312
    .line 313
    .line 314
    const/16 v5, 0xdb0

    .line 315
    .line 316
    invoke-virtual/range {v0 .. v5}, Lm7/n;->e(Lr8/j;Lf9/k;Lf9/k;Lf1/s;I)V

    .line 317
    .line 318
    .line 319
    const/4 p1, 0x4

    .line 320
    invoke-static {p1, v4}, Lg5/a;->B(ILf1/s;)F

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    invoke-static {v6, p1}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-static {v4, p1}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 329
    .line 330
    .line 331
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 332
    .line 333
    return-object p1

    .line 334
    :pswitch_1
    check-cast p1, Lf1/s;

    .line 335
    .line 336
    check-cast p2, Ljava/lang/Number;

    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 339
    .line 340
    .line 341
    move-result p2

    .line 342
    and-int/lit8 p2, p2, 0x3

    .line 343
    .line 344
    const/4 v0, 0x2

    .line 345
    if-ne p2, v0, :cond_b

    .line 346
    .line 347
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 348
    .line 349
    .line 350
    move-result p2

    .line 351
    if-nez p2, :cond_a

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_a
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 355
    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_b
    :goto_4
    new-instance p2, La8/c0;

    .line 359
    .line 360
    iget-object v0, p0, Lk7/i;->b:Landroid/app/Activity;

    .line 361
    .line 362
    const/4 v1, 0x3

    .line 363
    invoke-direct {p2, v1, v0}, La8/c0;-><init>(ILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    const v0, 0x22f700e8

    .line 367
    .line 368
    .line 369
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    const/16 v0, 0x30

    .line 374
    .line 375
    const/4 v1, 0x0

    .line 376
    const/4 v2, 0x1

    .line 377
    invoke-static {v1, p2, p1, v0, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 378
    .line 379
    .line 380
    new-instance p2, Le8/h;

    .line 381
    .line 382
    const/4 v0, 0x3

    .line 383
    iget-object v1, p0, Lk7/i;->c:Lf1/v2;

    .line 384
    .line 385
    invoke-direct {p2, v1, v0}, Le8/h;-><init>(Lf1/v2;I)V

    .line 386
    .line 387
    .line 388
    const v0, -0x4970c82f

    .line 389
    .line 390
    .line 391
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    const-string v0, "\u97f3\u9891\u901a\u9053\u8bbe\u7f6e"

    .line 396
    .line 397
    const/16 v2, 0x36

    .line 398
    .line 399
    const/4 v3, 0x0

    .line 400
    invoke-static {v0, p2, p1, v2, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 401
    .line 402
    .line 403
    new-instance p2, Le8/h;

    .line 404
    .line 405
    const/4 v0, 0x4

    .line 406
    invoke-direct {p2, v1, v0}, Le8/h;-><init>(Lf1/v2;I)V

    .line 407
    .line 408
    .line 409
    const v0, -0x5dffc750

    .line 410
    .line 411
    .line 412
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 413
    .line 414
    .line 415
    move-result-object p2

    .line 416
    const-string v0, "\u5a92\u4f53\u8bbe\u7f6e"

    .line 417
    .line 418
    invoke-static {v0, p2, p1, v2, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 419
    .line 420
    .line 421
    :goto_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 422
    .line 423
    return-object p1

    .line 424
    nop

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
