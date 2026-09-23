.class public abstract Lv/u0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu7/i;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lu7/i;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lr8/i;->b:Lr8/i;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final a(Lv/s0;Lv/p0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lf1/s;I)V
    .locals 9

    .line 1
    const v0, 0x33ae021d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p5, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p6

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p6

    .line 23
    :goto_1
    and-int/lit8 v1, p6, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p5, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit16 v1, p6, 0x180

    .line 40
    .line 41
    if-nez v1, :cond_6

    .line 42
    .line 43
    and-int/lit16 v1, p6, 0x200

    .line 44
    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p5, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {p5, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :goto_3
    if-eqz v1, :cond_5

    .line 57
    .line 58
    const/16 v1, 0x100

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_5
    const/16 v1, 0x80

    .line 62
    .line 63
    :goto_4
    or-int/2addr v0, v1

    .line 64
    :cond_6
    and-int/lit16 v1, p6, 0xc00

    .line 65
    .line 66
    if-nez v1, :cond_9

    .line 67
    .line 68
    and-int/lit16 v1, p6, 0x1000

    .line 69
    .line 70
    if-nez v1, :cond_7

    .line 71
    .line 72
    invoke-virtual {p5, p3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_5

    .line 77
    :cond_7
    invoke-virtual {p5, p3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_5
    if-eqz v1, :cond_8

    .line 82
    .line 83
    const/16 v1, 0x800

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_8
    const/16 v1, 0x400

    .line 87
    .line 88
    :goto_6
    or-int/2addr v0, v1

    .line 89
    :cond_9
    and-int/lit16 v1, p6, 0x6000

    .line 90
    .line 91
    if-nez v1, :cond_c

    .line 92
    .line 93
    const v1, 0x8000

    .line 94
    .line 95
    .line 96
    and-int/2addr v1, p6

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    invoke-virtual {p5, p4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    goto :goto_7

    .line 104
    :cond_a
    invoke-virtual {p5, p4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :goto_7
    if-eqz v1, :cond_b

    .line 109
    .line 110
    const/16 v1, 0x4000

    .line 111
    .line 112
    goto :goto_8

    .line 113
    :cond_b
    const/16 v1, 0x2000

    .line 114
    .line 115
    :goto_8
    or-int/2addr v0, v1

    .line 116
    :cond_c
    and-int/lit16 v1, v0, 0x2493

    .line 117
    .line 118
    const/16 v2, 0x2492

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    const/4 v4, 0x1

    .line 122
    if-eq v1, v2, :cond_d

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    goto :goto_9

    .line 126
    :cond_d
    const/4 v1, 0x0

    .line 127
    :goto_9
    and-int/2addr v0, v4

    .line 128
    invoke-virtual {p5, v0, v1}, Lf1/s;->N(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_16

    .line 133
    .line 134
    iget-object v0, p0, Lv/s0;->i:Lf1/k1;

    .line 135
    .line 136
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_f

    .line 147
    .line 148
    iget-object v0, p1, Lv/p0;->b:Lf1/k1;

    .line 149
    .line 150
    invoke-virtual {v0, p3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p1, Lv/p0;->c:Lf1/k1;

    .line 154
    .line 155
    invoke-virtual {v0, p4}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lv/p0;->b()Lv/m0;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v0, v0, Lv/m0;->d:Ljava/lang/Object;

    .line 163
    .line 164
    invoke-static {v0, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_e

    .line 169
    .line 170
    invoke-virtual {p1}, Lv/p0;->b()Lv/m0;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v0, v0, Lv/m0;->c:Ljava/lang/Object;

    .line 175
    .line 176
    invoke-static {v0, p3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_e

    .line 181
    .line 182
    goto/16 :goto_d

    .line 183
    .line 184
    :cond_e
    invoke-virtual {p1, p2, v3}, Lv/p0;->c(Ljava/lang/Object;Z)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_d

    .line 188
    .line 189
    :cond_f
    iget-boolean v0, p1, Lv/p0;->g:Z

    .line 190
    .line 191
    iget-object v1, p1, Lv/p0;->e:Lf1/k1;

    .line 192
    .line 193
    iget-object v2, p1, Lv/p0;->b:Lf1/k1;

    .line 194
    .line 195
    iget-object v5, p1, Lv/p0;->h:Lf1/k1;

    .line 196
    .line 197
    iget-object v6, p1, Lv/p0;->f:Lf1/g1;

    .line 198
    .line 199
    if-eqz v0, :cond_10

    .line 200
    .line 201
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_10

    .line 207
    .line 208
    goto/16 :goto_d

    .line 209
    .line 210
    :cond_10
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v0, p3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    const/high16 v7, -0x40800000    # -1.0f

    .line 219
    .line 220
    if-eqz v0, :cond_11

    .line 221
    .line 222
    invoke-virtual {v6}, Lf1/g1;->f()F

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    cmpg-float v0, v0, v7

    .line 227
    .line 228
    if-nez v0, :cond_11

    .line 229
    .line 230
    goto/16 :goto_d

    .line 231
    .line 232
    :cond_11
    invoke-virtual {v2, p3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p1, Lv/p0;->c:Lf1/k1;

    .line 236
    .line 237
    invoke-virtual {v0, p4}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Lf1/g1;->f()F

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    const/high16 v2, -0x3fc00000    # -3.0f

    .line 245
    .line 246
    cmpg-float v0, v0, v2

    .line 247
    .line 248
    if-nez v0, :cond_12

    .line 249
    .line 250
    move-object v0, p3

    .line 251
    goto :goto_a

    .line 252
    :cond_12
    invoke-virtual {v5}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    :goto_a
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    check-cast v8, Ljava/lang/Boolean;

    .line 261
    .line 262
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    xor-int/2addr v8, v4

    .line 267
    invoke-virtual {p1, v0, v8}, Lv/p0;->c(Ljava/lang/Object;Z)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6}, Lf1/g1;->f()F

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    cmpg-float v0, v0, v2

    .line 275
    .line 276
    if-nez v0, :cond_13

    .line 277
    .line 278
    goto :goto_b

    .line 279
    :cond_13
    const/4 v4, 0x0

    .line 280
    :goto_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v1, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6}, Lf1/g1;->f()F

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    const/4 v1, 0x0

    .line 292
    cmpl-float v0, v0, v1

    .line 293
    .line 294
    if-ltz v0, :cond_14

    .line 295
    .line 296
    invoke-virtual {p1}, Lv/p0;->b()Lv/m0;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lv/m0;->b()J

    .line 301
    .line 302
    .line 303
    move-result-wide v0

    .line 304
    invoke-virtual {p1}, Lv/p0;->b()Lv/m0;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    long-to-float v0, v0

    .line 309
    invoke-virtual {v6}, Lf1/g1;->f()F

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    mul-float v1, v1, v0

    .line 314
    .line 315
    float-to-long v0, v1

    .line 316
    invoke-virtual {v2, v0, v1}, Lv/m0;->f(J)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v5, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    goto :goto_c

    .line 324
    :cond_14
    invoke-virtual {v6}, Lf1/g1;->f()F

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    cmpg-float v0, v0, v2

    .line 329
    .line 330
    if-nez v0, :cond_15

    .line 331
    .line 332
    invoke-virtual {v5, p3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    :cond_15
    :goto_c
    iput-boolean v3, p1, Lv/p0;->g:Z

    .line 336
    .line 337
    invoke-virtual {v6, v7}, Lf1/g1;->g(F)V

    .line 338
    .line 339
    .line 340
    goto :goto_d

    .line 341
    :cond_16
    invoke-virtual {p5}, Lf1/s;->Q()V

    .line 342
    .line 343
    .line 344
    :goto_d
    invoke-virtual {p5}, Lf1/s;->r()Lf1/w1;

    .line 345
    .line 346
    .line 347
    move-result-object p5

    .line 348
    if-eqz p5, :cond_17

    .line 349
    .line 350
    new-instance v0, Lv/t0;

    .line 351
    .line 352
    const/4 v7, 0x0

    .line 353
    move-object v1, p0

    .line 354
    move-object v2, p1

    .line 355
    move-object v3, p2

    .line 356
    move-object v4, p3

    .line 357
    move-object v5, p4

    .line 358
    move v6, p6

    .line 359
    invoke-direct/range {v0 .. v7}, Lv/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 360
    .line 361
    .line 362
    iput-object v0, p5, Lf1/w1;->d:Lf9/n;

    .line 363
    .line 364
    :cond_17
    return-void
.end method

.method public static final b(Lv/s0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lv/w0;Lf1/s;I)Lv/p0;
    .locals 5

    .line 1
    invoke-virtual {p5, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p6

    .line 5
    invoke-virtual {p5}, Lf1/s;->K()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 10
    .line 11
    if-nez p6, :cond_0

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 16
    .line 17
    .line 18
    move-result-object p6

    .line 19
    if-eqz p6, :cond_1

    .line 20
    .line 21
    invoke-virtual {p6}, Lp1/f;->e()Lf9/k;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    move-object v2, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    invoke-static {p6}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :try_start_0
    new-instance v0, Lv/p0;

    .line 34
    .line 35
    iget-object v4, p4, Lv/w0;->a:Lf9/k;

    .line 36
    .line 37
    invoke-interface {v4, p2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lv/p;

    .line 42
    .line 43
    invoke-virtual {v4}, Lv/p;->d()V

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, p1, v4, p4}, Lv/p0;-><init>(Lv/s0;Ljava/lang/Object;Lv/p;Lv/w0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-static {p6, v3, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p5, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    check-cast v0, Lv/p0;

    .line 56
    .line 57
    const/4 p6, 0x0

    .line 58
    move-object p4, p3

    .line 59
    move-object p3, p2

    .line 60
    move-object p2, p1

    .line 61
    move-object p1, v0

    .line 62
    invoke-static/range {p0 .. p6}, Lv/u0;->a(Lv/s0;Lv/p0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lf1/s;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p5, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p5, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    or-int/2addr p2, p3

    .line 74
    invoke-virtual {p5}, Lf1/s;->K()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    if-nez p2, :cond_3

    .line 79
    .line 80
    if-ne p3, v1, :cond_4

    .line 81
    .line 82
    :cond_3
    new-instance p3, La8/v;

    .line 83
    .line 84
    const/16 p2, 0x12

    .line 85
    .line 86
    invoke-direct {p3, p2, p0, p1}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p5, p3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    check-cast p3, Lf9/k;

    .line 93
    .line 94
    invoke-static {p1, p3, p5}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    move-object p0, v0

    .line 100
    invoke-static {p6, v3, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method public static final c(Ljava/lang/Enum;Lf1/s;II)Lv/s0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 6
    .line 7
    if-ne p3, v0, :cond_0

    .line 8
    .line 9
    new-instance p3, Lv/s0;

    .line 10
    .line 11
    invoke-direct {p3, p0}, Lv/s0;-><init>(Ljava/lang/Enum;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    check-cast p3, Lv/s0;

    .line 18
    .line 19
    and-int/lit8 v1, p2, 0x8

    .line 20
    .line 21
    or-int/lit8 v1, v1, 0x30

    .line 22
    .line 23
    and-int/lit8 p2, p2, 0xe

    .line 24
    .line 25
    or-int/2addr p2, v1

    .line 26
    invoke-virtual {p3, p0, p1, p2}, Lv/s0;->a(Ljava/lang/Enum;Lf1/s;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-ne p0, v0, :cond_1

    .line 34
    .line 35
    new-instance p0, Ls0/d;

    .line 36
    .line 37
    const/4 p2, 0x5

    .line 38
    invoke-direct {p0, p2, p3}, Ls0/d;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    check-cast p0, Lf9/k;

    .line 45
    .line 46
    invoke-static {p3, p0, p1}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 47
    .line 48
    .line 49
    return-object p3
.end method
