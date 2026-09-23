.class public final Lz/a2;
.super Ly8/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lk2/w;

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lac/w;

.field public final synthetic i:Lf9/o;

.field public final synthetic j:Lf9/k;

.field public final synthetic k:Lf9/k;

.field public final synthetic l:Lf9/k;

.field public final synthetic m:Lz/z0;


# direct methods
.method public constructor <init>(Lac/w;Lf9/o;Lf9/k;Lf9/k;Lf9/k;Lz/z0;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/a2;->h:Lac/w;

    .line 2
    .line 3
    iput-object p2, p0, Lz/a2;->i:Lf9/o;

    .line 4
    .line 5
    iput-object p3, p0, Lz/a2;->j:Lf9/k;

    .line 6
    .line 7
    iput-object p4, p0, Lz/a2;->k:Lf9/k;

    .line 8
    .line 9
    iput-object p5, p0, Lz/a2;->l:Lf9/k;

    .line 10
    .line 11
    iput-object p6, p0, Lz/a2;->m:Lz/z0;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Ly8/h;-><init>(ILw8/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lk2/m0;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lz/a2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lz/a2;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lz/a2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 8

    .line 1
    new-instance v0, Lz/a2;

    .line 2
    .line 3
    iget-object v5, p0, Lz/a2;->l:Lf9/k;

    .line 4
    .line 5
    iget-object v6, p0, Lz/a2;->m:Lz/z0;

    .line 6
    .line 7
    iget-object v1, p0, Lz/a2;->h:Lac/w;

    .line 8
    .line 9
    iget-object v2, p0, Lz/a2;->i:Lf9/o;

    .line 10
    .line 11
    iget-object v3, p0, Lz/a2;->j:Lf9/k;

    .line 12
    .line 13
    iget-object v4, p0, Lz/a2;->k:Lf9/k;

    .line 14
    .line 15
    move-object v7, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Lz/a2;-><init>(Lac/w;Lf9/o;Lf9/k;Lf9/k;Lf9/k;Lz/z0;Lw8/c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 20
    .line 21
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lz/a2;->f:I

    .line 4
    .line 5
    const/4 v6, 0x2

    .line 6
    const/4 v7, 0x3

    .line 7
    sget-object v8, Lk2/p;->b:Lk2/p;

    .line 8
    .line 9
    iget-object v9, v0, Lz/a2;->h:Lac/w;

    .line 10
    .line 11
    iget-object v10, v0, Lz/a2;->k:Lf9/k;

    .line 12
    .line 13
    sget-object v11, Lz/n0;->a:Lz/n0;

    .line 14
    .line 15
    iget-object v13, v0, Lz/a2;->i:Lf9/o;

    .line 16
    .line 17
    iget-object v12, v0, Lz/a2;->l:Lf9/k;

    .line 18
    .line 19
    sget-object v18, Lr8/z;->a:Lr8/z;

    .line 20
    .line 21
    iget-object v14, v0, Lz/a2;->j:Lf9/k;

    .line 22
    .line 23
    const/4 v15, 0x1

    .line 24
    move-object/from16 v16, v14

    .line 25
    .line 26
    iget-object v14, v0, Lz/a2;->m:Lz/z0;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    sget-object v3, Lx8/a;->a:Lx8/a;

    .line 30
    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :pswitch_0
    iget-object v1, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lac/v0;

    .line 45
    .line 46
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object v12, v2

    .line 50
    goto/16 :goto_c

    .line 51
    .line 52
    :pswitch_1
    iget-object v1, v0, Lz/a2;->e:Lk2/w;

    .line 53
    .line 54
    iget-object v5, v0, Lz/a2;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Lk2/w;

    .line 57
    .line 58
    iget-object v6, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v6, Lac/v0;

    .line 61
    .line 62
    iget-object v7, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v7, Lk2/m0;

    .line 65
    .line 66
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object v4, v12

    .line 70
    move-object v12, v2

    .line 71
    move-object v2, v4

    .line 72
    move-object v8, v7

    .line 73
    move-object/from16 v19, v10

    .line 74
    .line 75
    move-object/from16 v20, v11

    .line 76
    .line 77
    move-object/from16 v4, v16

    .line 78
    .line 79
    move-object/from16 v7, p1

    .line 80
    .line 81
    goto/16 :goto_a

    .line 82
    .line 83
    :pswitch_2
    iget-object v1, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Lk2/w;

    .line 86
    .line 87
    iget-object v3, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v3, Lac/v0;

    .line 90
    .line 91
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object v4, v12

    .line 95
    move-object v12, v2

    .line 96
    move-object v2, v4

    .line 97
    move-object/from16 v4, p1

    .line 98
    .line 99
    move-object/from16 v19, v10

    .line 100
    .line 101
    goto/16 :goto_9

    .line 102
    .line 103
    :pswitch_3
    iget-object v1, v0, Lz/a2;->d:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Lac/v0;

    .line 106
    .line 107
    iget-object v5, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v5, Lk2/w;

    .line 110
    .line 111
    iget-object v6, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v6, Lk2/m0;

    .line 114
    .line 115
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    move-object v4, v12

    .line 119
    move-object v12, v2

    .line 120
    move-object v2, v4

    .line 121
    move-object/from16 v7, p1

    .line 122
    .line 123
    move-object/from16 v19, v10

    .line 124
    .line 125
    move-object/from16 v20, v11

    .line 126
    .line 127
    move-object v15, v14

    .line 128
    move-object/from16 v4, v16

    .line 129
    .line 130
    move-object v14, v13

    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :pswitch_4
    iget-object v1, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v1, Lac/v0;

    .line 136
    .line 137
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    move-object v12, v2

    .line 141
    move-object/from16 v21, v14

    .line 142
    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :pswitch_5
    iget-object v1, v0, Lz/a2;->d:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v1, Lac/v0;

    .line 148
    .line 149
    iget-object v4, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v4, Lk2/w;

    .line 152
    .line 153
    iget-object v5, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v5, Lk2/m0;

    .line 156
    .line 157
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    move-object v15, v12

    .line 161
    move-object v12, v2

    .line 162
    move-object v2, v15

    .line 163
    move-object v15, v4

    .line 164
    move-object/from16 v21, v14

    .line 165
    .line 166
    move-object/from16 v4, v16

    .line 167
    .line 168
    move-object v14, v13

    .line 169
    move-object/from16 v13, p1

    .line 170
    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    :pswitch_6
    iget-object v1, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v1, Lac/v0;

    .line 176
    .line 177
    iget-object v4, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v4, Lk2/m0;

    .line 180
    .line 181
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    move-object v5, v12

    .line 185
    move-object v12, v2

    .line 186
    move-object v2, v5

    .line 187
    move-object/from16 v6, p1

    .line 188
    .line 189
    move-object v5, v4

    .line 190
    move-object/from16 v21, v14

    .line 191
    .line 192
    move-object/from16 v4, v16

    .line 193
    .line 194
    move-object v14, v13

    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :pswitch_7
    iget-object v1, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v1, Lk2/m0;

    .line 200
    .line 201
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    move-object/from16 v4, p1

    .line 205
    .line 206
    :cond_0
    move-object v5, v1

    .line 207
    goto :goto_0

    .line 208
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v1, Lk2/m0;

    .line 214
    .line 215
    iput-object v1, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 216
    .line 217
    iput v15, v0, Lz/a2;->f:I

    .line 218
    .line 219
    invoke-static {v1, v0, v7}, Lz/d2;->c(Lk2/m0;Ly8/h;I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    if-ne v4, v3, :cond_0

    .line 224
    .line 225
    goto/16 :goto_b

    .line 226
    .line 227
    :goto_0
    check-cast v4, Lk2/w;

    .line 228
    .line 229
    invoke-virtual {v4}, Lk2/w;->a()V

    .line 230
    .line 231
    .line 232
    sget-object v1, Lz/d2;->a:Lz/g0;

    .line 233
    .line 234
    new-instance v1, Lz/y1;

    .line 235
    .line 236
    invoke-direct {v1, v14, v2, v15}, Lz/y1;-><init>(Lz/z0;Lw8/c;I)V

    .line 237
    .line 238
    .line 239
    invoke-static {v9, v2, v1, v15}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    sget-object v2, Lz/d2;->a:Lz/g0;

    .line 244
    .line 245
    if-eq v13, v2, :cond_1

    .line 246
    .line 247
    move-object v2, v12

    .line 248
    new-instance v12, Lz/z1;

    .line 249
    .line 250
    move-object/from16 v20, v16

    .line 251
    .line 252
    const/16 v16, 0x0

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    move-object v15, v4

    .line 257
    move-object/from16 v4, v20

    .line 258
    .line 259
    invoke-direct/range {v12 .. v17}, Lz/z1;-><init>(Lf9/o;Lz/z0;Lk2/w;Lw8/c;I)V

    .line 260
    .line 261
    .line 262
    move-object/from16 v21, v14

    .line 263
    .line 264
    move-object v14, v13

    .line 265
    move-object v13, v12

    .line 266
    move-object/from16 v12, v16

    .line 267
    .line 268
    invoke-static {v9, v1, v13}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 269
    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_1
    move-object v15, v4

    .line 273
    move-object v2, v12

    .line 274
    move-object/from16 v21, v14

    .line 275
    .line 276
    move-object/from16 v4, v16

    .line 277
    .line 278
    const/4 v12, 0x0

    .line 279
    move-object v14, v13

    .line 280
    :goto_1
    if-nez v4, :cond_3

    .line 281
    .line 282
    iput-object v5, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 283
    .line 284
    iput-object v1, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 285
    .line 286
    iput v6, v0, Lz/a2;->f:I

    .line 287
    .line 288
    invoke-static {v5, v8, v0}, Lz/d2;->i(Lk2/m0;Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    if-ne v6, v3, :cond_2

    .line 293
    .line 294
    goto/16 :goto_b

    .line 295
    .line 296
    :cond_2
    :goto_2
    check-cast v6, Lk2/w;

    .line 297
    .line 298
    move-object/from16 v15, v21

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_3
    iput-object v5, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 302
    .line 303
    iput-object v15, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 304
    .line 305
    iput-object v1, v0, Lz/a2;->d:Ljava/lang/Object;

    .line 306
    .line 307
    iput v7, v0, Lz/a2;->f:I

    .line 308
    .line 309
    invoke-static {v5, v8, v0}, Lz/d2;->h(Lk2/m0;Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    if-ne v13, v3, :cond_4

    .line 314
    .line 315
    goto/16 :goto_b

    .line 316
    .line 317
    :cond_4
    :goto_3
    check-cast v13, Lz/o0;

    .line 318
    .line 319
    invoke-static {v13, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v16

    .line 323
    if-eqz v16, :cond_6

    .line 324
    .line 325
    iget-wide v7, v15, Lk2/w;->c:J

    .line 326
    .line 327
    new-instance v2, Lx1/b;

    .line 328
    .line 329
    invoke-direct {v2, v7, v8}, Lx1/b;-><init>(J)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v4, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    iput-object v1, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 336
    .line 337
    iput-object v12, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 338
    .line 339
    iput-object v12, v0, Lz/a2;->d:Ljava/lang/Object;

    .line 340
    .line 341
    const/4 v2, 0x4

    .line 342
    iput v2, v0, Lz/a2;->f:I

    .line 343
    .line 344
    invoke-static {v5, v0}, Lz/d2;->a(Lk2/m0;Ly8/a;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    if-ne v2, v3, :cond_5

    .line 349
    .line 350
    goto/16 :goto_b

    .line 351
    .line 352
    :cond_5
    :goto_4
    new-instance v2, Lz/x1;

    .line 353
    .line 354
    move-object/from16 v15, v21

    .line 355
    .line 356
    invoke-direct {v2, v15, v12, v6}, Lz/x1;-><init>(Lz/z0;Lw8/c;I)V

    .line 357
    .line 358
    .line 359
    invoke-static {v9, v1, v2}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 360
    .line 361
    .line 362
    return-object v18

    .line 363
    :cond_6
    move-object/from16 v15, v21

    .line 364
    .line 365
    instance-of v6, v13, Lz/m0;

    .line 366
    .line 367
    if-eqz v6, :cond_7

    .line 368
    .line 369
    check-cast v13, Lz/m0;

    .line 370
    .line 371
    iget-object v6, v13, Lz/m0;->a:Lk2/w;

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_7
    instance-of v6, v13, Lz/l0;

    .line 375
    .line 376
    if-eqz v6, :cond_16

    .line 377
    .line 378
    move-object v6, v12

    .line 379
    :goto_5
    if-nez v6, :cond_8

    .line 380
    .line 381
    new-instance v13, Lz/x1;

    .line 382
    .line 383
    invoke-direct {v13, v15, v12, v7}, Lz/x1;-><init>(Lz/z0;Lw8/c;I)V

    .line 384
    .line 385
    .line 386
    invoke-static {v9, v1, v13}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    goto :goto_6

    .line 391
    :cond_8
    invoke-virtual {v6}, Lk2/w;->a()V

    .line 392
    .line 393
    .line 394
    new-instance v7, Lz/x1;

    .line 395
    .line 396
    const/4 v13, 0x4

    .line 397
    invoke-direct {v7, v15, v12, v13}, Lz/x1;-><init>(Lz/z0;Lw8/c;I)V

    .line 398
    .line 399
    .line 400
    invoke-static {v9, v1, v7}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    :goto_6
    if-eqz v6, :cond_15

    .line 405
    .line 406
    if-nez v10, :cond_9

    .line 407
    .line 408
    iget-wide v3, v6, Lk2/w;->c:J

    .line 409
    .line 410
    new-instance v1, Lx1/b;

    .line 411
    .line 412
    invoke-direct {v1, v3, v4}, Lx1/b;-><init>(J)V

    .line 413
    .line 414
    .line 415
    invoke-interface {v2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    return-object v18

    .line 419
    :cond_9
    iput-object v5, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 420
    .line 421
    iput-object v6, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 422
    .line 423
    iput-object v1, v0, Lz/a2;->d:Ljava/lang/Object;

    .line 424
    .line 425
    const/4 v7, 0x5

    .line 426
    iput v7, v0, Lz/a2;->f:I

    .line 427
    .line 428
    invoke-virtual {v5}, Lk2/m0;->d()Lr2/q2;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    move-object/from16 v19, v10

    .line 433
    .line 434
    move-object/from16 v20, v11

    .line 435
    .line 436
    invoke-interface {v7}, Lr2/q2;->a()J

    .line 437
    .line 438
    .line 439
    move-result-wide v10

    .line 440
    new-instance v7, Lz/v1;

    .line 441
    .line 442
    invoke-direct {v7, v6, v12}, Lz/v1;-><init>(Lk2/w;Lw8/c;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5, v10, v11, v7, v0}, Lk2/m0;->h(JLz/v1;Ly8/a;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    if-ne v7, v3, :cond_a

    .line 450
    .line 451
    goto/16 :goto_b

    .line 452
    .line 453
    :cond_a
    move-object/from16 v22, v6

    .line 454
    .line 455
    move-object v6, v5

    .line 456
    move-object/from16 v5, v22

    .line 457
    .line 458
    :goto_7
    check-cast v7, Lk2/w;

    .line 459
    .line 460
    if-nez v7, :cond_b

    .line 461
    .line 462
    iget-wide v3, v5, Lk2/w;->c:J

    .line 463
    .line 464
    new-instance v1, Lx1/b;

    .line 465
    .line 466
    invoke-direct {v1, v3, v4}, Lx1/b;-><init>(J)V

    .line 467
    .line 468
    .line 469
    invoke-interface {v2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    return-object v18

    .line 473
    :cond_b
    sget-object v10, Lz/d2;->a:Lz/g0;

    .line 474
    .line 475
    new-instance v10, Lb0/g;

    .line 476
    .line 477
    const/16 v11, 0x1b

    .line 478
    .line 479
    invoke-direct {v10, v1, v15, v12, v11}, Lb0/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 480
    .line 481
    .line 482
    const/4 v1, 0x1

    .line 483
    invoke-static {v9, v12, v10, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    sget-object v10, Lz/d2;->a:Lz/g0;

    .line 488
    .line 489
    if-eq v14, v10, :cond_c

    .line 490
    .line 491
    move-object/from16 v16, v12

    .line 492
    .line 493
    new-instance v12, Lz/z1;

    .line 494
    .line 495
    const/16 v17, 0x1

    .line 496
    .line 497
    move-object v13, v14

    .line 498
    move-object v14, v15

    .line 499
    move-object v15, v7

    .line 500
    invoke-direct/range {v12 .. v17}, Lz/z1;-><init>(Lf9/o;Lz/z0;Lk2/w;Lw8/c;I)V

    .line 501
    .line 502
    .line 503
    move-object v7, v12

    .line 504
    move-object/from16 v12, v16

    .line 505
    .line 506
    invoke-static {v9, v1, v7}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 507
    .line 508
    .line 509
    goto :goto_8

    .line 510
    :cond_c
    move-object v14, v15

    .line 511
    move-object v15, v7

    .line 512
    :goto_8
    if-nez v4, :cond_e

    .line 513
    .line 514
    iput-object v1, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 515
    .line 516
    iput-object v5, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 517
    .line 518
    iput-object v12, v0, Lz/a2;->d:Ljava/lang/Object;

    .line 519
    .line 520
    const/4 v4, 0x6

    .line 521
    iput v4, v0, Lz/a2;->f:I

    .line 522
    .line 523
    invoke-static {v6, v8, v0}, Lz/d2;->i(Lk2/m0;Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    if-ne v4, v3, :cond_d

    .line 528
    .line 529
    goto :goto_b

    .line 530
    :cond_d
    move-object v3, v1

    .line 531
    move-object v1, v5

    .line 532
    :goto_9
    check-cast v4, Lk2/w;

    .line 533
    .line 534
    goto :goto_d

    .line 535
    :cond_e
    iput-object v6, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 536
    .line 537
    iput-object v1, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 538
    .line 539
    iput-object v5, v0, Lz/a2;->d:Ljava/lang/Object;

    .line 540
    .line 541
    iput-object v15, v0, Lz/a2;->e:Lk2/w;

    .line 542
    .line 543
    const/4 v7, 0x7

    .line 544
    iput v7, v0, Lz/a2;->f:I

    .line 545
    .line 546
    invoke-static {v6, v8, v0}, Lz/d2;->h(Lk2/m0;Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    if-ne v7, v3, :cond_f

    .line 551
    .line 552
    goto :goto_b

    .line 553
    :cond_f
    move-object v8, v6

    .line 554
    move-object v6, v1

    .line 555
    move-object v1, v15

    .line 556
    :goto_a
    check-cast v7, Lz/o0;

    .line 557
    .line 558
    move-object/from16 v10, v20

    .line 559
    .line 560
    invoke-static {v7, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v10

    .line 564
    if-eqz v10, :cond_11

    .line 565
    .line 566
    iget-wide v1, v1, Lk2/w;->c:J

    .line 567
    .line 568
    new-instance v5, Lx1/b;

    .line 569
    .line 570
    invoke-direct {v5, v1, v2}, Lx1/b;-><init>(J)V

    .line 571
    .line 572
    .line 573
    invoke-interface {v4, v5}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    iput-object v6, v0, Lz/a2;->g:Ljava/lang/Object;

    .line 577
    .line 578
    iput-object v12, v0, Lz/a2;->c:Ljava/lang/Object;

    .line 579
    .line 580
    iput-object v12, v0, Lz/a2;->d:Ljava/lang/Object;

    .line 581
    .line 582
    iput-object v12, v0, Lz/a2;->e:Lk2/w;

    .line 583
    .line 584
    const/16 v1, 0x8

    .line 585
    .line 586
    iput v1, v0, Lz/a2;->f:I

    .line 587
    .line 588
    invoke-static {v8, v0}, Lz/d2;->a(Lk2/m0;Ly8/a;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    if-ne v1, v3, :cond_10

    .line 593
    .line 594
    :goto_b
    return-object v3

    .line 595
    :cond_10
    move-object v1, v6

    .line 596
    :goto_c
    new-instance v2, Lz/x1;

    .line 597
    .line 598
    const/4 v7, 0x7

    .line 599
    invoke-direct {v2, v14, v12, v7}, Lz/x1;-><init>(Lz/z0;Lw8/c;I)V

    .line 600
    .line 601
    .line 602
    invoke-static {v9, v1, v2}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 603
    .line 604
    .line 605
    return-object v18

    .line 606
    :cond_11
    instance-of v1, v7, Lz/m0;

    .line 607
    .line 608
    if-eqz v1, :cond_12

    .line 609
    .line 610
    check-cast v7, Lz/m0;

    .line 611
    .line 612
    iget-object v1, v7, Lz/m0;->a:Lk2/w;

    .line 613
    .line 614
    move-object v4, v1

    .line 615
    move-object v1, v5

    .line 616
    move-object v3, v6

    .line 617
    goto :goto_d

    .line 618
    :cond_12
    instance-of v1, v7, Lz/l0;

    .line 619
    .line 620
    if-eqz v1, :cond_14

    .line 621
    .line 622
    move-object v1, v5

    .line 623
    move-object v3, v6

    .line 624
    move-object v4, v12

    .line 625
    :goto_d
    if-eqz v4, :cond_13

    .line 626
    .line 627
    invoke-virtual {v4}, Lk2/w;->a()V

    .line 628
    .line 629
    .line 630
    new-instance v1, Lz/x1;

    .line 631
    .line 632
    const/4 v7, 0x5

    .line 633
    invoke-direct {v1, v14, v12, v7}, Lz/x1;-><init>(Lz/z0;Lw8/c;I)V

    .line 634
    .line 635
    .line 636
    invoke-static {v9, v3, v1}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 637
    .line 638
    .line 639
    iget-wide v1, v4, Lk2/w;->c:J

    .line 640
    .line 641
    new-instance v3, Lx1/b;

    .line 642
    .line 643
    invoke-direct {v3, v1, v2}, Lx1/b;-><init>(J)V

    .line 644
    .line 645
    .line 646
    move-object/from16 v1, v19

    .line 647
    .line 648
    invoke-interface {v1, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    return-object v18

    .line 652
    :cond_13
    new-instance v4, Lz/x1;

    .line 653
    .line 654
    const/4 v5, 0x6

    .line 655
    invoke-direct {v4, v14, v12, v5}, Lz/x1;-><init>(Lz/z0;Lw8/c;I)V

    .line 656
    .line 657
    .line 658
    invoke-static {v9, v3, v4}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 659
    .line 660
    .line 661
    iget-wide v3, v1, Lk2/w;->c:J

    .line 662
    .line 663
    new-instance v1, Lx1/b;

    .line 664
    .line 665
    invoke-direct {v1, v3, v4}, Lx1/b;-><init>(J)V

    .line 666
    .line 667
    .line 668
    invoke-interface {v2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    return-object v18

    .line 672
    :cond_14
    new-instance v1, Lac/p;

    .line 673
    .line 674
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 675
    .line 676
    .line 677
    throw v1

    .line 678
    :cond_15
    return-object v18

    .line 679
    :cond_16
    new-instance v1, Lac/p;

    .line 680
    .line 681
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 682
    .line 683
    .line 684
    throw v1

    .line 685
    :pswitch_data_0
    .packed-switch 0x0
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
