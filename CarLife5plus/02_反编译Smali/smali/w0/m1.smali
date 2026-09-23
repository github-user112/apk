.class public final Lw0/m1;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:Lw0/r1;


# direct methods
.method public synthetic constructor <init>(Lw0/r1;Lw8/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lw0/m1;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/m1;->g:Lw0/r1;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lw0/m1;->e:I

    .line 2
    .line 3
    check-cast p1, Lac/w;

    .line 4
    .line 5
    check-cast p2, Lw8/c;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lw0/m1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lw0/m1;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lw0/m1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lw0/m1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lw0/m1;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lw0/m1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 2

    .line 1
    iget p1, p0, Lw0/m1;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lw0/m1;

    .line 7
    .line 8
    iget-object v0, p0, Lw0/m1;->g:Lw0/r1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p1, v0, p2, v1}, Lw0/m1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lw0/m1;

    .line 16
    .line 17
    iget-object v0, p0, Lw0/m1;->g:Lw0/r1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v0, p2, v1}, Lw0/m1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 48

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw0/m1;->e:I

    .line 4
    .line 5
    sget-object v2, Ll0/i0;->a:Ll0/i0;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 10
    .line 11
    iget-object v5, v0, Lw0/m1;->g:Lw0/r1;

    .line 12
    .line 13
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget v1, v0, Lw0/m1;->f:I

    .line 20
    .line 21
    const/4 v8, 0x2

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-eq v1, v7, :cond_1

    .line 25
    .line 26
    if-ne v1, v8, :cond_0

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    move-object/from16 v1, p1

    .line 32
    .line 33
    goto/16 :goto_d

    .line 34
    .line 35
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :cond_1
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v3, p1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v5, Lw0/r1;->g:Lr2/d1;

    .line 51
    .line 52
    if-eqz v1, :cond_26

    .line 53
    .line 54
    iput v7, v0, Lw0/m1;->f:I

    .line 55
    .line 56
    check-cast v1, Lr2/g;

    .line 57
    .line 58
    iget-object v1, v1, Lr2/g;->a:Lr2/h;

    .line 59
    .line 60
    iget-object v1, v1, Lr2/h;->a:Landroid/content/ClipboardManager;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    new-instance v3, Lr2/c1;

    .line 69
    .line 70
    invoke-direct {v3, v1}, Lr2/c1;-><init>(Landroid/content/ClipData;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v3, 0x0

    .line 75
    :goto_0
    if-ne v3, v4, :cond_4

    .line 76
    .line 77
    goto/16 :goto_f

    .line 78
    .line 79
    :cond_4
    :goto_1
    check-cast v3, Lr2/c1;

    .line 80
    .line 81
    if-eqz v3, :cond_26

    .line 82
    .line 83
    iput v8, v0, Lw0/m1;->f:I

    .line 84
    .line 85
    iget-object v1, v3, Lr2/c1;->a:Landroid/content/ClipData;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_23

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_23

    .line 99
    .line 100
    instance-of v10, v1, Landroid/text/Spanned;

    .line 101
    .line 102
    if-nez v10, :cond_5

    .line 103
    .line 104
    new-instance v3, Lb3/g;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v3, v1}, Lb3/g;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v1, v3

    .line 114
    goto/16 :goto_c

    .line 115
    .line 116
    :cond_5
    move-object v10, v1

    .line 117
    check-cast v10, Landroid/text/Spanned;

    .line 118
    .line 119
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    const-class v12, Landroid/text/Annotation;

    .line 124
    .line 125
    invoke-interface {v10, v3, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    check-cast v11, [Landroid/text/Annotation;

    .line 130
    .line 131
    new-instance v12, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v13, "<this>"

    .line 137
    .line 138
    invoke-static {v11, v13}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    array-length v13, v11

    .line 142
    sub-int/2addr v13, v7

    .line 143
    if-ltz v13, :cond_21

    .line 144
    .line 145
    const/4 v15, 0x0

    .line 146
    :goto_2
    aget-object v9, v11, v15

    .line 147
    .line 148
    invoke-virtual {v9}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    const-string v8, "androidx.compose.text.SpanStyle"

    .line 153
    .line 154
    invoke-static {v14, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-nez v8, :cond_6

    .line 159
    .line 160
    move-object/from16 v17, v1

    .line 161
    .line 162
    move-object/from16 v18, v10

    .line 163
    .line 164
    const/16 v19, 0x0

    .line 165
    .line 166
    goto/16 :goto_b

    .line 167
    .line 168
    :cond_6
    invoke-interface {v10, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    invoke-interface {v10, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    new-instance v7, Lc0/a;

    .line 177
    .line 178
    invoke-virtual {v9}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 183
    .line 184
    .line 185
    move-object/from16 v17, v1

    .line 186
    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iput-object v1, v7, Lc0/a;->a:Landroid/os/Parcel;

    .line 192
    .line 193
    invoke-static {v9, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    move-object/from16 v18, v10

    .line 198
    .line 199
    array-length v10, v9

    .line 200
    invoke-virtual {v1, v9, v3, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v7, Lc0/a;->a:Landroid/os/Parcel;

    .line 207
    .line 208
    sget-wide v9, Ly1/q;->m:J

    .line 209
    .line 210
    sget-wide v19, Ln3/o;->c:J

    .line 211
    .line 212
    move-wide/from16 v22, v9

    .line 213
    .line 214
    move-wide/from16 v36, v22

    .line 215
    .line 216
    move-wide/from16 v24, v19

    .line 217
    .line 218
    move-wide/from16 v31, v24

    .line 219
    .line 220
    const/16 v26, 0x0

    .line 221
    .line 222
    const/16 v27, 0x0

    .line 223
    .line 224
    const/16 v28, 0x0

    .line 225
    .line 226
    const/16 v30, 0x0

    .line 227
    .line 228
    const/16 v33, 0x0

    .line 229
    .line 230
    const/16 v34, 0x0

    .line 231
    .line 232
    const/16 v38, 0x0

    .line 233
    .line 234
    const/16 v39, 0x0

    .line 235
    .line 236
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    const/4 v10, 0x1

    .line 241
    if-le v9, v10, :cond_1f

    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    const/16 v19, 0x0

    .line 248
    .line 249
    const/16 v3, 0x8

    .line 250
    .line 251
    if-ne v9, v10, :cond_7

    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-lt v9, v3, :cond_20

    .line 258
    .line 259
    invoke-virtual {v7}, Lc0/a;->a()J

    .line 260
    .line 261
    .line 262
    move-result-wide v22

    .line 263
    :goto_4
    const/4 v3, 0x0

    .line 264
    goto :goto_3

    .line 265
    :cond_7
    const/4 v10, 0x5

    .line 266
    const/4 v3, 0x2

    .line 267
    if-ne v9, v3, :cond_8

    .line 268
    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-lt v3, v10, :cond_20

    .line 274
    .line 275
    invoke-virtual {v7}, Lc0/a;->b()J

    .line 276
    .line 277
    .line 278
    move-result-wide v24

    .line 279
    goto :goto_4

    .line 280
    :cond_8
    const/4 v3, 0x3

    .line 281
    if-ne v9, v3, :cond_9

    .line 282
    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    const/4 v9, 0x4

    .line 288
    if-lt v3, v9, :cond_20

    .line 289
    .line 290
    new-instance v3, Lf3/k;

    .line 291
    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    invoke-direct {v3, v10}, Lf3/k;-><init>(I)V

    .line 297
    .line 298
    .line 299
    move-object/from16 v26, v3

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_9
    const/4 v3, 0x4

    .line 303
    if-ne v9, v3, :cond_c

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    const/4 v9, 0x1

    .line 310
    if-lt v3, v9, :cond_20

    .line 311
    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-nez v3, :cond_b

    .line 317
    .line 318
    :cond_a
    const/4 v3, 0x0

    .line 319
    goto :goto_5

    .line 320
    :cond_b
    if-ne v3, v9, :cond_a

    .line 321
    .line 322
    const/4 v3, 0x1

    .line 323
    :goto_5
    new-instance v10, Lf3/i;

    .line 324
    .line 325
    invoke-direct {v10, v3}, Lf3/i;-><init>(I)V

    .line 326
    .line 327
    .line 328
    move-object/from16 v27, v10

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_c
    const/4 v3, 0x1

    .line 332
    if-ne v9, v10, :cond_11

    .line 333
    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 335
    .line 336
    .line 337
    move-result v9

    .line 338
    if-lt v9, v3, :cond_20

    .line 339
    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    if-nez v9, :cond_e

    .line 345
    .line 346
    :cond_d
    const/4 v3, 0x0

    .line 347
    goto :goto_6

    .line 348
    :cond_e
    if-ne v9, v3, :cond_f

    .line 349
    .line 350
    const v3, 0xffff

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_f
    const/4 v3, 0x3

    .line 355
    if-ne v9, v3, :cond_10

    .line 356
    .line 357
    const/4 v3, 0x2

    .line 358
    goto :goto_6

    .line 359
    :cond_10
    const/4 v3, 0x2

    .line 360
    if-ne v9, v3, :cond_d

    .line 361
    .line 362
    const/4 v3, 0x1

    .line 363
    :goto_6
    new-instance v9, Lf3/j;

    .line 364
    .line 365
    invoke-direct {v9, v3}, Lf3/j;-><init>(I)V

    .line 366
    .line 367
    .line 368
    move-object/from16 v28, v9

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_11
    const/4 v3, 0x6

    .line 372
    if-ne v9, v3, :cond_12

    .line 373
    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v30

    .line 378
    goto :goto_4

    .line 379
    :cond_12
    const/4 v3, 0x7

    .line 380
    if-ne v9, v3, :cond_13

    .line 381
    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-lt v3, v10, :cond_20

    .line 387
    .line 388
    invoke-virtual {v7}, Lc0/a;->b()J

    .line 389
    .line 390
    .line 391
    move-result-wide v31

    .line 392
    goto/16 :goto_4

    .line 393
    .line 394
    :cond_13
    const/16 v3, 0x8

    .line 395
    .line 396
    if-ne v9, v3, :cond_14

    .line 397
    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    const/4 v9, 0x4

    .line 403
    if-lt v3, v9, :cond_20

    .line 404
    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    new-instance v9, Lm3/a;

    .line 410
    .line 411
    invoke-direct {v9, v3}, Lm3/a;-><init>(F)V

    .line 412
    .line 413
    .line 414
    move-object/from16 v33, v9

    .line 415
    .line 416
    goto/16 :goto_4

    .line 417
    .line 418
    :cond_14
    const/16 v10, 0x9

    .line 419
    .line 420
    if-ne v9, v10, :cond_15

    .line 421
    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    if-lt v9, v3, :cond_20

    .line 427
    .line 428
    new-instance v3, Lm3/p;

    .line 429
    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 431
    .line 432
    .line 433
    move-result v9

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 435
    .line 436
    .line 437
    move-result v10

    .line 438
    invoke-direct {v3, v9, v10}, Lm3/p;-><init>(FF)V

    .line 439
    .line 440
    .line 441
    move-object/from16 v34, v3

    .line 442
    .line 443
    goto/16 :goto_4

    .line 444
    .line 445
    :cond_15
    const/16 v10, 0xa

    .line 446
    .line 447
    if-ne v9, v10, :cond_16

    .line 448
    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    if-lt v9, v3, :cond_20

    .line 454
    .line 455
    invoke-virtual {v7}, Lc0/a;->a()J

    .line 456
    .line 457
    .line 458
    move-result-wide v36

    .line 459
    goto/16 :goto_4

    .line 460
    .line 461
    :cond_16
    const/16 v3, 0xb

    .line 462
    .line 463
    if-ne v9, v3, :cond_1e

    .line 464
    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    const/4 v9, 0x4

    .line 470
    if-lt v3, v9, :cond_20

    .line 471
    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    and-int/lit8 v9, v3, 0x2

    .line 477
    .line 478
    if-eqz v9, :cond_17

    .line 479
    .line 480
    const/4 v9, 0x1

    .line 481
    goto :goto_7

    .line 482
    :cond_17
    const/4 v9, 0x0

    .line 483
    :goto_7
    and-int/lit8 v3, v3, 0x1

    .line 484
    .line 485
    if-eqz v3, :cond_18

    .line 486
    .line 487
    const/4 v3, 0x1

    .line 488
    goto :goto_8

    .line 489
    :cond_18
    const/4 v3, 0x0

    .line 490
    :goto_8
    sget-object v10, Lm3/l;->d:Lm3/l;

    .line 491
    .line 492
    sget-object v20, Lm3/l;->c:Lm3/l;

    .line 493
    .line 494
    if-eqz v9, :cond_1a

    .line 495
    .line 496
    if-eqz v3, :cond_1a

    .line 497
    .line 498
    move-object/from16 v21, v1

    .line 499
    .line 500
    const/4 v1, 0x2

    .line 501
    new-array v3, v1, [Lm3/l;

    .line 502
    .line 503
    aput-object v10, v3, v19

    .line 504
    .line 505
    const/16 v16, 0x1

    .line 506
    .line 507
    aput-object v20, v3, v16

    .line 508
    .line 509
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object v9

    .line 517
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 518
    .line 519
    .line 520
    move-result v10

    .line 521
    const/4 v1, 0x0

    .line 522
    :goto_9
    if-ge v1, v10, :cond_19

    .line 523
    .line 524
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v20

    .line 528
    move/from16 v29, v1

    .line 529
    .line 530
    move-object/from16 v1, v20

    .line 531
    .line 532
    check-cast v1, Lm3/l;

    .line 533
    .line 534
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 535
    .line 536
    .line 537
    move-result v9

    .line 538
    iget v1, v1, Lm3/l;->a:I

    .line 539
    .line 540
    or-int/2addr v1, v9

    .line 541
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    .line 543
    .line 544
    move-result-object v9

    .line 545
    add-int/lit8 v1, v29, 0x1

    .line 546
    .line 547
    goto :goto_9

    .line 548
    :cond_19
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    new-instance v3, Lm3/l;

    .line 553
    .line 554
    invoke-direct {v3, v1}, Lm3/l;-><init>(I)V

    .line 555
    .line 556
    .line 557
    move-object/from16 v38, v3

    .line 558
    .line 559
    goto :goto_a

    .line 560
    :cond_1a
    move-object/from16 v21, v1

    .line 561
    .line 562
    if-eqz v9, :cond_1b

    .line 563
    .line 564
    move-object/from16 v38, v10

    .line 565
    .line 566
    goto :goto_a

    .line 567
    :cond_1b
    if-eqz v3, :cond_1c

    .line 568
    .line 569
    move-object/from16 v38, v20

    .line 570
    .line 571
    goto :goto_a

    .line 572
    :cond_1c
    sget-object v1, Lm3/l;->b:Lm3/l;

    .line 573
    .line 574
    move-object/from16 v38, v1

    .line 575
    .line 576
    :cond_1d
    :goto_a
    move-object/from16 v1, v21

    .line 577
    .line 578
    goto/16 :goto_4

    .line 579
    .line 580
    :cond_1e
    move-object/from16 v21, v1

    .line 581
    .line 582
    const/16 v1, 0xc

    .line 583
    .line 584
    if-ne v9, v1, :cond_1d

    .line 585
    .line 586
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->dataAvail()I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    const/16 v3, 0x14

    .line 591
    .line 592
    if-lt v1, v3, :cond_20

    .line 593
    .line 594
    new-instance v40, Ly1/k0;

    .line 595
    .line 596
    invoke-virtual {v7}, Lc0/a;->a()J

    .line 597
    .line 598
    .line 599
    move-result-wide v42

    .line 600
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->readFloat()F

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->readFloat()F

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 609
    .line 610
    .line 611
    move-result v1

    .line 612
    int-to-long v9, v1

    .line 613
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    move-wide/from16 v44, v9

    .line 618
    .line 619
    int-to-long v9, v1

    .line 620
    const/16 v1, 0x20

    .line 621
    .line 622
    shl-long v44, v44, v1

    .line 623
    .line 624
    const-wide v46, 0xffffffffL

    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    and-long v9, v9, v46

    .line 630
    .line 631
    or-long v44, v44, v9

    .line 632
    .line 633
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->readFloat()F

    .line 634
    .line 635
    .line 636
    move-result v41

    .line 637
    invoke-direct/range {v40 .. v45}, Ly1/k0;-><init>(FJJ)V

    .line 638
    .line 639
    .line 640
    move-object/from16 v1, v21

    .line 641
    .line 642
    move-object/from16 v39, v40

    .line 643
    .line 644
    goto/16 :goto_4

    .line 645
    .line 646
    :cond_1f
    const/16 v19, 0x0

    .line 647
    .line 648
    :cond_20
    new-instance v21, Lb3/e0;

    .line 649
    .line 650
    const v40, 0xc000

    .line 651
    .line 652
    .line 653
    const/16 v29, 0x0

    .line 654
    .line 655
    const/16 v35, 0x0

    .line 656
    .line 657
    invoke-direct/range {v21 .. v40}, Lb3/e0;-><init>(JJLf3/k;Lf3/i;Lf3/j;Lf3/n;Ljava/lang/String;JLm3/a;Lm3/p;Li3/b;JLm3/l;Ly1/k0;I)V

    .line 658
    .line 659
    .line 660
    move-object/from16 v1, v21

    .line 661
    .line 662
    new-instance v3, Lb3/e;

    .line 663
    .line 664
    invoke-direct {v3, v8, v14, v1}, Lb3/e;-><init>(IILjava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    :goto_b
    if-eq v15, v13, :cond_22

    .line 671
    .line 672
    add-int/lit8 v15, v15, 0x1

    .line 673
    .line 674
    move-object/from16 v1, v17

    .line 675
    .line 676
    move-object/from16 v10, v18

    .line 677
    .line 678
    const/4 v3, 0x0

    .line 679
    const/4 v7, 0x1

    .line 680
    const/4 v8, 0x2

    .line 681
    goto/16 :goto_2

    .line 682
    .line 683
    :cond_21
    move-object/from16 v17, v1

    .line 684
    .line 685
    :cond_22
    new-instance v1, Lb3/g;

    .line 686
    .line 687
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    const/4 v9, 0x4

    .line 692
    invoke-direct {v1, v3, v12, v9}, Lb3/g;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 693
    .line 694
    .line 695
    goto :goto_c

    .line 696
    :cond_23
    const/4 v1, 0x0

    .line 697
    :goto_c
    if-ne v1, v4, :cond_24

    .line 698
    .line 699
    goto :goto_f

    .line 700
    :cond_24
    :goto_d
    check-cast v1, Lb3/g;

    .line 701
    .line 702
    if-nez v1, :cond_25

    .line 703
    .line 704
    goto :goto_e

    .line 705
    :cond_25
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    iget-object v4, v4, Lg3/w;->a:Lb3/g;

    .line 714
    .line 715
    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 716
    .line 717
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 718
    .line 719
    .line 720
    move-result v4

    .line 721
    invoke-static {v3, v4}, Lg5/a;->N(Lg3/w;I)Lb3/g;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    new-instance v4, Lb3/d;

    .line 726
    .line 727
    invoke-direct {v4, v3}, Lb3/d;-><init>(Lb3/g;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v4, v1}, Lb3/d;->a(Lb3/g;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v4}, Lb3/d;->c()Lb3/g;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 738
    .line 739
    .line 740
    move-result-object v4

    .line 741
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 742
    .line 743
    .line 744
    move-result-object v7

    .line 745
    iget-object v7, v7, Lg3/w;->a:Lb3/g;

    .line 746
    .line 747
    iget-object v7, v7, Lb3/g;->b:Ljava/lang/String;

    .line 748
    .line 749
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 750
    .line 751
    .line 752
    move-result v7

    .line 753
    invoke-static {v4, v7}, Lg5/a;->M(Lg3/w;I)Lb3/g;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    new-instance v7, Lb3/d;

    .line 758
    .line 759
    invoke-direct {v7, v3}, Lb3/d;-><init>(Lb3/g;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v7, v4}, Lb3/d;->a(Lb3/g;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v7}, Lb3/d;->c()Lb3/g;

    .line 766
    .line 767
    .line 768
    move-result-object v3

    .line 769
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    iget-wide v7, v4, Lg3/w;->b:J

    .line 774
    .line 775
    invoke-static {v7, v8}, Lb3/n0;->f(J)I

    .line 776
    .line 777
    .line 778
    move-result v4

    .line 779
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 780
    .line 781
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    add-int/2addr v1, v4

    .line 786
    invoke-static {v1, v1}, Lb3/d0;->b(II)J

    .line 787
    .line 788
    .line 789
    move-result-wide v7

    .line 790
    invoke-static {v3, v7, v8}, Lw0/r1;->e(Lb3/g;J)Lg3/w;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    iget-object v3, v5, Lw0/r1;->c:Lf9/k;

    .line 795
    .line 796
    invoke-interface {v3, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    iget-wide v3, v1, Lg3/w;->b:J

    .line 800
    .line 801
    new-instance v1, Lb3/n0;

    .line 802
    .line 803
    invoke-direct {v1, v3, v4}, Lb3/n0;-><init>(J)V

    .line 804
    .line 805
    .line 806
    iput-object v1, v5, Lw0/r1;->v:Lb3/n0;

    .line 807
    .line 808
    invoke-virtual {v5, v2}, Lw0/r1;->p(Ll0/i0;)V

    .line 809
    .line 810
    .line 811
    iget-object v1, v5, Lw0/r1;->a:Ll0/r1;

    .line 812
    .line 813
    const/4 v9, 0x1

    .line 814
    iput-boolean v9, v1, Ll0/r1;->e:Z

    .line 815
    .line 816
    :cond_26
    :goto_e
    move-object v4, v6

    .line 817
    :goto_f
    return-object v4

    .line 818
    :pswitch_0
    const/4 v9, 0x1

    .line 819
    iget v1, v0, Lw0/m1;->f:I

    .line 820
    .line 821
    if-eqz v1, :cond_28

    .line 822
    .line 823
    if-ne v1, v9, :cond_27

    .line 824
    .line 825
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    goto :goto_11

    .line 829
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 830
    .line 831
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    throw v1

    .line 835
    :cond_28
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    iget-wide v7, v1, Lg3/w;->b:J

    .line 843
    .line 844
    invoke-static {v7, v8}, Lb3/n0;->c(J)Z

    .line 845
    .line 846
    .line 847
    move-result v1

    .line 848
    if-eqz v1, :cond_29

    .line 849
    .line 850
    :goto_10
    move-object v4, v6

    .line 851
    goto/16 :goto_12

    .line 852
    .line 853
    :cond_29
    iget-object v1, v5, Lw0/r1;->g:Lr2/d1;

    .line 854
    .line 855
    if-eqz v1, :cond_2a

    .line 856
    .line 857
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 858
    .line 859
    .line 860
    move-result-object v3

    .line 861
    invoke-static {v3}, Lg5/a;->J(Lg3/w;)Lb3/g;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    invoke-static {v3}, Lc0/d;->a(Lb3/g;)Lr2/c1;

    .line 866
    .line 867
    .line 868
    move-result-object v3

    .line 869
    const/4 v9, 0x1

    .line 870
    iput v9, v0, Lw0/m1;->f:I

    .line 871
    .line 872
    check-cast v1, Lr2/g;

    .line 873
    .line 874
    invoke-virtual {v1, v3}, Lr2/g;->a(Lr2/c1;)V

    .line 875
    .line 876
    .line 877
    if-ne v6, v4, :cond_2a

    .line 878
    .line 879
    goto :goto_12

    .line 880
    :cond_2a
    :goto_11
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    iget-object v3, v3, Lg3/w;->a:Lb3/g;

    .line 889
    .line 890
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    .line 891
    .line 892
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 893
    .line 894
    .line 895
    move-result v3

    .line 896
    invoke-static {v1, v3}, Lg5/a;->N(Lg3/w;I)Lb3/g;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 905
    .line 906
    .line 907
    move-result-object v4

    .line 908
    iget-object v4, v4, Lg3/w;->a:Lb3/g;

    .line 909
    .line 910
    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 911
    .line 912
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 913
    .line 914
    .line 915
    move-result v4

    .line 916
    invoke-static {v3, v4}, Lg5/a;->M(Lg3/w;I)Lb3/g;

    .line 917
    .line 918
    .line 919
    move-result-object v3

    .line 920
    new-instance v4, Lb3/d;

    .line 921
    .line 922
    invoke-direct {v4, v1}, Lb3/d;-><init>(Lb3/g;)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v4, v3}, Lb3/d;->a(Lb3/g;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v4}, Lb3/d;->c()Lb3/g;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    invoke-virtual {v5}, Lw0/r1;->m()Lg3/w;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    iget-wide v3, v3, Lg3/w;->b:J

    .line 937
    .line 938
    invoke-static {v3, v4}, Lb3/n0;->f(J)I

    .line 939
    .line 940
    .line 941
    move-result v3

    .line 942
    invoke-static {v3, v3}, Lb3/d0;->b(II)J

    .line 943
    .line 944
    .line 945
    move-result-wide v3

    .line 946
    invoke-static {v1, v3, v4}, Lw0/r1;->e(Lb3/g;J)Lg3/w;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    iget-object v3, v5, Lw0/r1;->c:Lf9/k;

    .line 951
    .line 952
    invoke-interface {v3, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    iget-wide v3, v1, Lg3/w;->b:J

    .line 956
    .line 957
    new-instance v1, Lb3/n0;

    .line 958
    .line 959
    invoke-direct {v1, v3, v4}, Lb3/n0;-><init>(J)V

    .line 960
    .line 961
    .line 962
    iput-object v1, v5, Lw0/r1;->v:Lb3/n0;

    .line 963
    .line 964
    invoke-virtual {v5, v2}, Lw0/r1;->p(Ll0/i0;)V

    .line 965
    .line 966
    .line 967
    iget-object v1, v5, Lw0/r1;->a:Ll0/r1;

    .line 968
    .line 969
    const/4 v9, 0x1

    .line 970
    iput-boolean v9, v1, Ll0/r1;->e:Z

    .line 971
    .line 972
    goto :goto_10

    .line 973
    :goto_12
    return-object v4

    .line 974
    nop

    .line 975
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
