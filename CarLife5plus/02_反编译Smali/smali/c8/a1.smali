.class public final Lc8/a1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc8/b1;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/h1;


# direct methods
.method public synthetic constructor <init>(Lc8/b1;Lf1/b1;Lf1/h1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lc8/a1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/a1;->b:Lc8/b1;

    .line 4
    .line 5
    iput-object p2, p0, Lc8/a1;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, Lc8/a1;->d:Lf1/h1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/a1;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    iget-object v3, v0, Lc8/a1;->d:Lf1/h1;

    .line 8
    .line 9
    iget-object v4, v0, Lc8/a1;->c:Lf1/b1;

    .line 10
    .line 11
    iget-object v5, v0, Lc8/a1;->b:Lc8/b1;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x3

    .line 17
    const/4 v10, 0x2

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Lf1/s;

    .line 24
    .line 25
    move-object/from16 v11, p2

    .line 26
    .line 27
    check-cast v11, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    and-int/2addr v9, v11

    .line 34
    if-ne v9, v10, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-nez v9, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    new-instance v9, Lc8/a1;

    .line 48
    .line 49
    invoke-direct {v9, v5, v4, v3, v7}, Lc8/a1;-><init>(Lc8/b1;Lf1/b1;Lf1/h1;I)V

    .line 50
    .line 51
    .line 52
    const v3, -0x65764755

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v9, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v4, 0x30

    .line 60
    .line 61
    invoke-static {v6, v3, v1, v4, v8}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-object v2

    .line 65
    :pswitch_0
    move-object/from16 v15, p1

    .line 66
    .line 67
    check-cast v15, Lf1/s;

    .line 68
    .line 69
    move-object/from16 v1, p2

    .line 70
    .line 71
    check-cast v1, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    and-int/2addr v1, v9

    .line 78
    if-ne v1, v10, :cond_3

    .line 79
    .line 80
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_3
    :goto_2
    new-instance v1, Lc8/z0;

    .line 93
    .line 94
    invoke-direct {v1, v5, v4}, Lc8/z0;-><init>(Lc8/b1;Lf1/b1;)V

    .line 95
    .line 96
    .line 97
    const v5, 0x4c5de2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v15, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    sget-object v13, Lf1/n;->a:Lf1/w0;

    .line 112
    .line 113
    if-nez v11, :cond_4

    .line 114
    .line 115
    if-ne v12, v13, :cond_5

    .line 116
    .line 117
    :cond_4
    new-instance v12, La8/k0;

    .line 118
    .line 119
    invoke-direct {v12, v1, v6, v9}, La8/k0;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v15, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    check-cast v12, Lf9/n;

    .line 126
    .line 127
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 128
    .line 129
    .line 130
    invoke-static {v15, v12, v2}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    if-nez v6, :cond_6

    .line 145
    .line 146
    if-ne v11, v13, :cond_7

    .line 147
    .line 148
    :cond_6
    new-instance v11, La8/q;

    .line 149
    .line 150
    invoke-direct {v11, v10, v1}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    check-cast v11, Lf9/k;

    .line 157
    .line 158
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v11, v15}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 162
    .line 163
    .line 164
    sget-object v16, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 165
    .line 166
    const/4 v1, 0x4

    .line 167
    int-to-float v1, v1

    .line 168
    const/16 v19, 0x0

    .line 169
    .line 170
    const/16 v21, 0x5

    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    move/from16 v20, v1

    .line 175
    .line 176
    move/from16 v18, v1

    .line 177
    .line 178
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    sget v6, Lc8/b1;->e:I

    .line 183
    .line 184
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    move-object v11, v6

    .line 189
    check-cast v11, Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    if-ne v6, v13, :cond_8

    .line 199
    .line 200
    new-instance v6, La8/s0;

    .line 201
    .line 202
    const/16 v12, 0xa

    .line 203
    .line 204
    invoke-direct {v6, v4, v12}, La8/s0;-><init>(Lf1/b1;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v15, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    move-object v12, v6

    .line 211
    check-cast v12, Lf9/k;

    .line 212
    .line 213
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 214
    .line 215
    .line 216
    sget-object v16, Lc8/f;->a:Ln1/c;

    .line 217
    .line 218
    const/high16 v28, 0xc00000

    .line 219
    .line 220
    const v29, 0x7dffb8

    .line 221
    .line 222
    .line 223
    const/4 v14, 0x0

    .line 224
    move-object/from16 v26, v15

    .line 225
    .line 226
    const/4 v15, 0x0

    .line 227
    const/16 v17, 0x0

    .line 228
    .line 229
    const/16 v18, 0x0

    .line 230
    .line 231
    const/16 v19, 0x0

    .line 232
    .line 233
    const/16 v20, 0x0

    .line 234
    .line 235
    const/16 v21, 0x1

    .line 236
    .line 237
    const/16 v22, 0x0

    .line 238
    .line 239
    const/16 v23, 0x0

    .line 240
    .line 241
    const/16 v24, 0x0

    .line 242
    .line 243
    const/16 v25, 0x0

    .line 244
    .line 245
    const v27, 0x1801b0

    .line 246
    .line 247
    .line 248
    move-object/from16 v30, v13

    .line 249
    .line 250
    move-object v13, v1

    .line 251
    move-object/from16 v1, v30

    .line 252
    .line 253
    invoke-static/range {v11 .. v29}, Lc1/b1;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V

    .line 254
    .line 255
    .line 256
    move-object/from16 v15, v26

    .line 257
    .line 258
    const-string v4, "\u6309\u952e\u52a8\u4f5c"

    .line 259
    .line 260
    const-string v6, "\u9009\u62e9\u6309\u952e\u52a8\u4f5c"

    .line 261
    .line 262
    filled-new-array {v4, v6}, [Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    new-instance v16, Lj8/k0;

    .line 271
    .line 272
    new-instance v6, Lj8/m0;

    .line 273
    .line 274
    invoke-direct {v6, v7}, Lj8/m0;-><init>(I)V

    .line 275
    .line 276
    .line 277
    const/16 v21, 0x0

    .line 278
    .line 279
    const/16 v22, 0x1c

    .line 280
    .line 281
    const-string v17, "\u5355\u51fb"

    .line 282
    .line 283
    move-object/from16 v18, v6

    .line 284
    .line 285
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 286
    .line 287
    .line 288
    new-instance v17, Lj8/k0;

    .line 289
    .line 290
    new-instance v6, Lj8/m0;

    .line 291
    .line 292
    invoke-direct {v6, v8}, Lj8/m0;-><init>(I)V

    .line 293
    .line 294
    .line 295
    const/16 v22, 0x0

    .line 296
    .line 297
    const/16 v23, 0x1c

    .line 298
    .line 299
    const-string v18, "\u53cc\u51fb"

    .line 300
    .line 301
    move-object/from16 v19, v6

    .line 302
    .line 303
    invoke-direct/range {v17 .. v23}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 304
    .line 305
    .line 306
    new-instance v18, Lj8/k0;

    .line 307
    .line 308
    new-instance v6, Lj8/m0;

    .line 309
    .line 310
    invoke-direct {v6, v10}, Lj8/m0;-><init>(I)V

    .line 311
    .line 312
    .line 313
    const/16 v23, 0x0

    .line 314
    .line 315
    const/16 v24, 0x1c

    .line 316
    .line 317
    const-string v19, "\u957f\u6309"

    .line 318
    .line 319
    move-object/from16 v20, v6

    .line 320
    .line 321
    invoke-direct/range {v18 .. v24}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 322
    .line 323
    .line 324
    new-array v6, v9, [Lj8/k0;

    .line 325
    .line 326
    aput-object v16, v6, v7

    .line 327
    .line 328
    aput-object v17, v6, v8

    .line 329
    .line 330
    aput-object v18, v6, v10

    .line 331
    .line 332
    invoke-static {v6}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    if-ne v5, v1, :cond_9

    .line 344
    .line 345
    new-instance v5, Lc8/c0;

    .line 346
    .line 347
    invoke-direct {v5, v3, v10}, Lc8/c0;-><init>(Lf1/h1;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :cond_9
    move-object v14, v5

    .line 354
    check-cast v14, Lf9/k;

    .line 355
    .line 356
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 357
    .line 358
    .line 359
    const v16, 0x36006

    .line 360
    .line 361
    .line 362
    const/16 v17, 0xc

    .line 363
    .line 364
    const/4 v11, 0x0

    .line 365
    const/4 v12, 0x0

    .line 366
    const/4 v13, 0x0

    .line 367
    move-object v9, v4

    .line 368
    move-object v10, v6

    .line 369
    invoke-static/range {v9 .. v17}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 370
    .line 371
    .line 372
    :goto_3
    return-object v2

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
