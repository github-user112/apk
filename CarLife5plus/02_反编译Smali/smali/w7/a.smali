.class public final synthetic Lw7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lw7/a;->a:I

    iput-object p3, p0, Lw7/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lw7/a;->a:I

    iput-object p2, p0, Lw7/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw7/a;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lw7/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v3, v1

    .line 11
    check-cast v3, Lz/l1;

    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    move-object/from16 v1, p2

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Float;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual {v3}, Lr1/o;->m0()Lac/w;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lj8/d;

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    invoke-direct/range {v2 .. v7}, Lj8/d;-><init>(Ljava/lang/Object;FFLw8/c;I)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-static {v1, v6, v2, v3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 42
    .line 43
    .line 44
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    return-object v1

    .line 47
    :pswitch_0
    iget-object v1, v0, Lw7/a;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lg9/u;

    .line 50
    .line 51
    move-object/from16 v2, p1

    .line 52
    .line 53
    check-cast v2, Lk2/w;

    .line 54
    .line 55
    move-object/from16 v3, p2

    .line 56
    .line 57
    check-cast v3, Ljava/lang/Float;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v2}, Lk2/w;->a()V

    .line 64
    .line 65
    .line 66
    iput v3, v1, Lg9/u;->a:F

    .line 67
    .line 68
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 69
    .line 70
    return-object v1

    .line 71
    :pswitch_1
    iget-object v1, v0, Lw7/a;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Ljava/util/List;

    .line 74
    .line 75
    move-object/from16 v4, p1

    .line 76
    .line 77
    check-cast v4, Ljava/lang/CharSequence;

    .line 78
    .line 79
    move-object/from16 v2, p2

    .line 80
    .line 81
    check-cast v2, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const-string v3, "$this$DelimitedRangesSequence"

    .line 88
    .line 89
    invoke-static {v4, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v6, 0x1

    .line 98
    const/4 v8, 0x0

    .line 99
    if-ne v3, v6, :cond_2

    .line 100
    .line 101
    invoke-static {v1}, Ls8/p;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/String;

    .line 106
    .line 107
    const/4 v3, 0x4

    .line 108
    invoke-static {v4, v1, v2, v5, v3}, Lxb/i;->P(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-gez v2, :cond_1

    .line 113
    .line 114
    :cond_0
    move-object v3, v8

    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    new-instance v3, Lr8/j;

    .line 122
    .line 123
    invoke-direct {v3, v2, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_2
    new-instance v3, Ll9/d;

    .line 129
    .line 130
    if-gez v2, :cond_3

    .line 131
    .line 132
    const/4 v2, 0x0

    .line 133
    :cond_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-direct {v3, v2, v5, v6}, Ll9/b;-><init>(III)V

    .line 138
    .line 139
    .line 140
    instance-of v5, v4, Ljava/lang/String;

    .line 141
    .line 142
    const/4 v14, 0x0

    .line 143
    iget v15, v3, Ll9/b;->c:I

    .line 144
    .line 145
    iget v3, v3, Ll9/b;->b:I

    .line 146
    .line 147
    if-eqz v5, :cond_9

    .line 148
    .line 149
    if-lez v15, :cond_4

    .line 150
    .line 151
    if-le v2, v3, :cond_5

    .line 152
    .line 153
    :cond_4
    if-gez v15, :cond_0

    .line 154
    .line 155
    if-gt v3, v2, :cond_0

    .line 156
    .line 157
    :cond_5
    move v10, v2

    .line 158
    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_7

    .line 167
    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    move-object v12, v5

    .line 173
    check-cast v12, Ljava/lang/String;

    .line 174
    .line 175
    move-object v13, v4

    .line 176
    check-cast v13, Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    const/4 v9, 0x0

    .line 183
    invoke-static/range {v9 .. v14}, Lxb/p;->z(IIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_6

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_7
    move-object v5, v8

    .line 191
    :goto_1
    check-cast v5, Ljava/lang/String;

    .line 192
    .line 193
    if-eqz v5, :cond_8

    .line 194
    .line 195
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    new-instance v3, Lr8/j;

    .line 200
    .line 201
    invoke-direct {v3, v1, v5}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_8
    if-eq v10, v3, :cond_0

    .line 206
    .line 207
    add-int/2addr v10, v15

    .line 208
    goto :goto_0

    .line 209
    :cond_9
    if-lez v15, :cond_a

    .line 210
    .line 211
    if-le v2, v3, :cond_b

    .line 212
    .line 213
    :cond_a
    if-gez v15, :cond_0

    .line 214
    .line 215
    if-gt v3, v2, :cond_0

    .line 216
    .line 217
    :cond_b
    move v5, v2

    .line 218
    :goto_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_d

    .line 227
    .line 228
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    move-object v2, v10

    .line 233
    check-cast v2, Ljava/lang/String;

    .line 234
    .line 235
    move v6, v3

    .line 236
    const/4 v3, 0x0

    .line 237
    move v7, v6

    .line 238
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    move v11, v7

    .line 243
    const/4 v7, 0x0

    .line 244
    invoke-static/range {v2 .. v7}, Lxb/i;->U(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    const/4 v14, 0x0

    .line 249
    if-eqz v2, :cond_c

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_c
    move v3, v11

    .line 253
    goto :goto_3

    .line 254
    :cond_d
    move v11, v3

    .line 255
    move-object v10, v8

    .line 256
    :goto_4
    check-cast v10, Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v10, :cond_e

    .line 259
    .line 260
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    new-instance v3, Lr8/j;

    .line 265
    .line 266
    invoke-direct {v3, v1, v10}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_e
    if-eq v5, v11, :cond_0

    .line 271
    .line 272
    add-int/2addr v5, v15

    .line 273
    move v3, v11

    .line 274
    goto :goto_2

    .line 275
    :goto_5
    if-eqz v3, :cond_f

    .line 276
    .line 277
    iget-object v1, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 278
    .line 279
    iget-object v2, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v2, Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    new-instance v8, Lr8/j;

    .line 292
    .line 293
    invoke-direct {v8, v1, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_f
    return-object v8

    .line 297
    :pswitch_2
    iget-object v1, v0, Lw7/a;->b:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v1, Lx7/g;

    .line 300
    .line 301
    move-object/from16 v2, p1

    .line 302
    .line 303
    check-cast v2, Lf1/s;

    .line 304
    .line 305
    move-object/from16 v3, p2

    .line 306
    .line 307
    check-cast v3, Ljava/lang/Integer;

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    const/4 v3, 0x1

    .line 313
    invoke-static {v3}, Lf1/b;->y(I)I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    invoke-virtual {v1, v3, v2}, Lx7/g;->i(ILf1/s;)V

    .line 318
    .line 319
    .line 320
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 321
    .line 322
    return-object v1

    .line 323
    :pswitch_3
    iget-object v1, v0, Lw7/a;->b:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v1, Lx7/f;

    .line 326
    .line 327
    move-object/from16 v2, p1

    .line 328
    .line 329
    check-cast v2, Lf1/s;

    .line 330
    .line 331
    move-object/from16 v3, p2

    .line 332
    .line 333
    check-cast v3, Ljava/lang/Integer;

    .line 334
    .line 335
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    const/4 v3, 0x7

    .line 339
    invoke-static {v3}, Lf1/b;->y(I)I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    invoke-virtual {v1, v3, v2}, Lx7/f;->a(ILf1/s;)V

    .line 344
    .line 345
    .line 346
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 347
    .line 348
    return-object v1

    .line 349
    :pswitch_4
    iget-object v1, v0, Lw7/a;->b:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v1, Lw7/d;

    .line 352
    .line 353
    move-object/from16 v2, p1

    .line 354
    .line 355
    check-cast v2, Lf1/s;

    .line 356
    .line 357
    move-object/from16 v3, p2

    .line 358
    .line 359
    check-cast v3, Ljava/lang/Integer;

    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    const/4 v3, 0x1

    .line 365
    invoke-static {v3}, Lf1/b;->y(I)I

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    invoke-virtual {v1, v3, v2}, Lw7/d;->b(ILf1/s;)V

    .line 370
    .line 371
    .line 372
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 373
    .line 374
    return-object v1

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
