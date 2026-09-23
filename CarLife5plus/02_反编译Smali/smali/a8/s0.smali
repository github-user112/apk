.class public final synthetic La8/s0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;I)V
    .locals 0

    .line 1
    iput p2, p0, La8/s0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8/s0;->b:Lf1/b1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, La8/s0;->a:I

    .line 2
    .line 3
    const-string v1, "newValue"

    .line 4
    .line 5
    const-string v2, "it"

    .line 6
    .line 7
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 8
    .line 9
    iget-object v4, p0, La8/s0;->b:Lf1/b1;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lj8/k0;

    .line 15
    .line 16
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 20
    .line 21
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget v0, Ly7/u;->c:I

    .line 39
    .line 40
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :pswitch_1
    check-cast p1, Lj8/k0;

    .line 45
    .line 46
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 50
    .line 51
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object v3

    .line 63
    :pswitch_2
    check-cast p1, Lj8/k0;

    .line 64
    .line 65
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 69
    .line 70
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v3

    .line 82
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :pswitch_4
    check-cast p1, Lw0/z;

    .line 92
    .line 93
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-object v3

    .line 97
    :pswitch_5
    check-cast p1, Lo2/w;

    .line 98
    .line 99
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-object v3

    .line 103
    :pswitch_6
    check-cast p1, Ln3/l;

    .line 104
    .line 105
    iget-wide v0, p1, Ln3/l;->a:J

    .line 106
    .line 107
    new-instance p1, Ln3/l;

    .line 108
    .line 109
    invoke-direct {p1, v0, v1}, Ln3/l;-><init>(J)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-object v3

    .line 116
    :pswitch_7
    check-cast p1, Lo2/w;

    .line 117
    .line 118
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object v3

    .line 122
    :pswitch_8
    check-cast p1, Lo2/w;

    .line 123
    .line 124
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return-object v3

    .line 128
    :pswitch_9
    check-cast p1, Lx1/b;

    .line 129
    .line 130
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lf9/k;

    .line 135
    .line 136
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    return-object v3

    .line 140
    :pswitch_a
    check-cast p1, Ll5/k;

    .line 141
    .line 142
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p1, Ll5/k;->b:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v1, "#"

    .line 150
    .line 151
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-object v3

    .line 165
    :pswitch_b
    check-cast p1, Ljava/lang/Boolean;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    sget-object p1, Ld8/j;->a:Ld8/j;

    .line 171
    .line 172
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    xor-int/lit8 p1, p1, 0x1

    .line 183
    .line 184
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    sget-object p1, Ll8/d;->a:Lr8/o;

    .line 192
    .line 193
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    const-string v0, "TEST_LOGS_SAVE"

    .line 204
    .line 205
    invoke-static {v0, p1}, Ll8/d;->e(Ljava/lang/String;Z)V

    .line 206
    .line 207
    .line 208
    return-object v3

    .line 209
    :pswitch_c
    check-cast p1, Lj8/k0;

    .line 210
    .line 211
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 215
    .line 216
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    sget v0, Lc8/j1;->f:I

    .line 221
    .line 222
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    return-object v3

    .line 230
    :pswitch_d
    check-cast p1, Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget v0, Lc8/j1;->f:I

    .line 236
    .line 237
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    return-object v3

    .line 241
    :pswitch_e
    check-cast p1, Ljava/lang/String;

    .line 242
    .line 243
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sget v0, Lc8/j1;->f:I

    .line 247
    .line 248
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    return-object v3

    .line 252
    :pswitch_f
    check-cast p1, Lj8/k0;

    .line 253
    .line 254
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 258
    .line 259
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    sget v0, Lc8/h1;->f:I

    .line 264
    .line 265
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    return-object v3

    .line 273
    :pswitch_10
    check-cast p1, Lj8/k0;

    .line 274
    .line 275
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 279
    .line 280
    invoke-interface {p1}, Lj8/o0;->b()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    sget v0, Lc8/h1;->f:I

    .line 285
    .line 286
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    return-object v3

    .line 290
    :pswitch_11
    check-cast p1, Lj8/k0;

    .line 291
    .line 292
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 296
    .line 297
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    return-object v3

    .line 309
    :pswitch_12
    check-cast p1, Ljava/lang/String;

    .line 310
    .line 311
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    sget v0, Lc8/b1;->e:I

    .line 315
    .line 316
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    return-object v3

    .line 320
    :pswitch_13
    check-cast p1, Lj8/k0;

    .line 321
    .line 322
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 326
    .line 327
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    return-object v3

    .line 339
    :pswitch_14
    check-cast p1, Ljava/lang/String;

    .line 340
    .line 341
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    return-object v3

    .line 348
    :pswitch_15
    check-cast p1, Ljava/lang/String;

    .line 349
    .line 350
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    return-object v3

    .line 357
    :pswitch_16
    check-cast p1, Lj8/k0;

    .line 358
    .line 359
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 363
    .line 364
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    return-object v3

    .line 376
    :pswitch_17
    check-cast p1, Ljava/lang/String;

    .line 377
    .line 378
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    return-object v3

    .line 385
    :pswitch_18
    check-cast p1, Lw1/r;

    .line 386
    .line 387
    const-string v0, "focusState"

    .line 388
    .line 389
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1}, Lw1/r;->b()Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    return-object v3

    .line 404
    :pswitch_19
    check-cast p1, Lj8/k0;

    .line 405
    .line 406
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 410
    .line 411
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    sget v0, Lc8/g0;->h:I

    .line 416
    .line 417
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    return-object v3

    .line 425
    :pswitch_1a
    check-cast p1, Ljava/util/List;

    .line 426
    .line 427
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    return-object v3

    .line 434
    :pswitch_1b
    check-cast p1, Ljava/util/List;

    .line 435
    .line 436
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    return-object v3

    .line 443
    :pswitch_1c
    check-cast p1, Ljava/lang/String;

    .line 444
    .line 445
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    return-object v3

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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
