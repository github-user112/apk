.class public final Lm7/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lm7/k;

.field public static final b:Ll8/p;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lm7/k;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm7/k;->a:Lm7/k;

    .line 7
    .line 8
    new-instance v0, Ll8/p;

    .line 9
    .line 10
    const-string v1, "cover"

    .line 11
    .line 12
    const-string v2, ".jpg,.jpeg,.png,.webp"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ll8/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lm7/k;->b:Ll8/p;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    sput v0, Lm7/k;->c:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(ZLf9/a;Ljava/lang/String;Lf9/n;Lf1/s;I)V
    .locals 21

    .line 1
    move-object/from16 v2, p2

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    move-object/from16 v7, p5

    .line 8
    .line 9
    move/from16 v8, p6

    .line 10
    .line 11
    const-string v0, "currentKey"

    .line 12
    .line 13
    invoke-static {v6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "callback"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, -0x7a11d011

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v0, v8, 0x6

    .line 28
    .line 29
    move/from16 v9, p1

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v7, v9}, Lf1/s;->g(Z)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x2

    .line 42
    :goto_0
    or-int/2addr v0, v8

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v0, v8

    .line 45
    :goto_1
    and-int/lit8 v4, v8, 0x30

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    invoke-virtual {v7, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    const/16 v4, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v4, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v0, v4

    .line 61
    :cond_3
    and-int/lit16 v4, v8, 0x180

    .line 62
    .line 63
    if-nez v4, :cond_5

    .line 64
    .line 65
    invoke-virtual {v7, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    const/16 v4, 0x100

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/16 v4, 0x80

    .line 75
    .line 76
    :goto_3
    or-int/2addr v0, v4

    .line 77
    :cond_5
    and-int/lit16 v4, v8, 0xc00

    .line 78
    .line 79
    if-nez v4, :cond_7

    .line 80
    .line 81
    invoke-virtual {v7, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_6

    .line 86
    .line 87
    const/16 v4, 0x800

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    const/16 v4, 0x400

    .line 91
    .line 92
    :goto_4
    or-int/2addr v0, v4

    .line 93
    :cond_7
    move v10, v0

    .line 94
    and-int/lit16 v0, v10, 0x493

    .line 95
    .line 96
    const/16 v4, 0x492

    .line 97
    .line 98
    if-ne v0, v4, :cond_9

    .line 99
    .line 100
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_8

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_8
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :cond_9
    :goto_5
    const v0, 0x6e3c21fe

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v0}, Lf1/s;->W(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 123
    .line 124
    if-ne v4, v11, :cond_a

    .line 125
    .line 126
    sget-object v4, Lm7/k;->b:Ll8/p;

    .line 127
    .line 128
    invoke-virtual {v4}, Ll8/p;->i()[Ljava/io/File;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v4}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v7, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_a
    check-cast v4, Lf1/b1;

    .line 140
    .line 141
    const/4 v12, 0x0

    .line 142
    invoke-static {v7, v12, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-ne v0, v11, :cond_b

    .line 147
    .line 148
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 149
    .line 150
    const-string v0, ""

    .line 151
    .line 152
    invoke-static {v6, v0}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v7, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_b
    check-cast v0, Lf1/b1;

    .line 164
    .line 165
    invoke-virtual {v7, v12}, Lf1/s;->p(Z)V

    .line 166
    .line 167
    .line 168
    sget-object v13, Ll8/p;->l:Ldc/l0;

    .line 169
    .line 170
    invoke-static {v13, v7}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    check-cast v14, Ljava/lang/String;

    .line 179
    .line 180
    const v15, -0x615d173a

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v15}, Lf1/s;->W(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    const/16 v5, 0x9

    .line 195
    .line 196
    if-nez v15, :cond_c

    .line 197
    .line 198
    if-ne v3, v11, :cond_d

    .line 199
    .line 200
    :cond_c
    new-instance v3, Lb8/m;

    .line 201
    .line 202
    const/4 v15, 0x0

    .line 203
    invoke-direct {v3, v13, v4, v15, v5}, Lb8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_d
    check-cast v3, Lf9/n;

    .line 210
    .line 211
    invoke-virtual {v7, v12}, Lf1/s;->p(Z)V

    .line 212
    .line 213
    .line 214
    invoke-static {v7, v3, v14}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    const v3, 0x4c5de2

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v3}, Lf1/s;->W(I)V

    .line 221
    .line 222
    .line 223
    and-int/lit8 v3, v10, 0x70

    .line 224
    .line 225
    const/16 v13, 0x20

    .line 226
    .line 227
    if-ne v3, v13, :cond_e

    .line 228
    .line 229
    const/4 v3, 0x1

    .line 230
    goto :goto_6

    .line 231
    :cond_e
    const/4 v3, 0x0

    .line 232
    :goto_6
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v13

    .line 236
    if-nez v3, :cond_f

    .line 237
    .line 238
    if-ne v13, v11, :cond_10

    .line 239
    .line 240
    :cond_f
    new-instance v13, Lc8/g;

    .line 241
    .line 242
    const/16 v3, 0x11

    .line 243
    .line 244
    invoke-direct {v13, v2, v3}, Lc8/g;-><init>(Lf9/a;I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_10
    check-cast v13, Lf9/a;

    .line 251
    .line 252
    invoke-virtual {v7, v12}, Lf1/s;->p(Z)V

    .line 253
    .line 254
    .line 255
    new-instance v3, La8/p0;

    .line 256
    .line 257
    invoke-direct {v3, v2, v5}, La8/p0;-><init>(Lf9/a;I)V

    .line 258
    .line 259
    .line 260
    const v5, 0x3f0e5e68

    .line 261
    .line 262
    .line 263
    invoke-static {v5, v3, v7}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    new-instance v3, La8/m0;

    .line 268
    .line 269
    const/4 v5, 0x2

    .line 270
    invoke-direct {v3, v1, v2, v0, v5}, La8/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 271
    .line 272
    .line 273
    const v5, 0x27a1ae47

    .line 274
    .line 275
    .line 276
    invoke-static {v5, v3, v7}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 277
    .line 278
    .line 279
    move-result-object v15

    .line 280
    new-instance v3, Lc8/s;

    .line 281
    .line 282
    const/16 v5, 0xa

    .line 283
    .line 284
    invoke-direct {v3, v5, v1, v0}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    const v5, 0x1034fe26

    .line 288
    .line 289
    .line 290
    invoke-static {v5, v3, v7}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 291
    .line 292
    .line 293
    move-result-object v16

    .line 294
    move-object v3, v4

    .line 295
    move-object v4, v0

    .line 296
    new-instance v0, Lc8/m;

    .line 297
    .line 298
    const/4 v5, 0x5

    .line 299
    invoke-direct/range {v0 .. v5}, Lc8/m;-><init>(Ljava/lang/Object;Lr8/e;Lf1/b1;Lf1/b1;I)V

    .line 300
    .line 301
    .line 302
    const v1, -0x231abe8

    .line 303
    .line 304
    .line 305
    invoke-static {v1, v0, v7}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 306
    .line 307
    .line 308
    move-result-object v17

    .line 309
    and-int/lit8 v0, v10, 0xe

    .line 310
    .line 311
    const/high16 v1, 0x36c00000

    .line 312
    .line 313
    or-int v19, v0, v1

    .line 314
    .line 315
    const/16 v20, 0x7c

    .line 316
    .line 317
    const-wide/16 v9, 0x0

    .line 318
    .line 319
    const/4 v11, 0x0

    .line 320
    const/4 v12, 0x0

    .line 321
    move-object v8, v13

    .line 322
    const/4 v13, 0x0

    .line 323
    move-object/from16 v18, v7

    .line 324
    .line 325
    move/from16 v7, p1

    .line 326
    .line 327
    invoke-static/range {v7 .. v20}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 328
    .line 329
    .line 330
    :goto_7
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    if-eqz v7, :cond_11

    .line 335
    .line 336
    new-instance v0, La8/u;

    .line 337
    .line 338
    move-object/from16 v1, p0

    .line 339
    .line 340
    move/from16 v2, p1

    .line 341
    .line 342
    move-object/from16 v3, p2

    .line 343
    .line 344
    move-object/from16 v5, p4

    .line 345
    .line 346
    move-object v4, v6

    .line 347
    move/from16 v6, p6

    .line 348
    .line 349
    invoke-direct/range {v0 .. v6}, La8/u;-><init>(Lm7/k;ZLf9/a;Ljava/lang/String;Lf9/n;I)V

    .line 350
    .line 351
    .line 352
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 353
    .line 354
    :cond_11
    return-void
.end method

.method public final b(Lr8/j;ILf9/k;Lf1/s;I)V
    .locals 23

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    const-string v0, "callback"

    .line 10
    .line 11
    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0x59c70426

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    :goto_0
    or-int v0, p5, v0

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Lf1/s;->d(I)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/16 v14, 0x20

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    const/16 v5, 0x20

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v5, 0x10

    .line 43
    .line 44
    :goto_1
    or-int/2addr v0, v5

    .line 45
    move-object/from16 v15, p0

    .line 46
    .line 47
    invoke-virtual {v4, v15}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    const/16 v5, 0x800

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v5, 0x400

    .line 57
    .line 58
    :goto_2
    or-int/2addr v0, v5

    .line 59
    and-int/lit16 v5, v0, 0x493

    .line 60
    .line 61
    const/16 v6, 0x492

    .line 62
    .line 63
    if-ne v5, v6, :cond_4

    .line 64
    .line 65
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 73
    .line 74
    .line 75
    move-object v8, v2

    .line 76
    move-object v9, v3

    .line 77
    goto/16 :goto_b

    .line 78
    .line 79
    :cond_4
    :goto_3
    const v5, 0x6e3c21fe

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v5}, Lf1/s;->W(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const/4 v7, 0x0

    .line 90
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 91
    .line 92
    if-ne v6, v8, :cond_5

    .line 93
    .line 94
    invoke-static {v7}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v4, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    check-cast v6, Lf1/b1;

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    invoke-static {v4, v9, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    if-ne v10, v8, :cond_6

    .line 109
    .line 110
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-static {v10}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-virtual {v4, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    check-cast v10, Lf1/b1;

    .line 120
    .line 121
    invoke-static {v4, v9, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    if-ne v11, v8, :cond_7

    .line 126
    .line 127
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-static {v11}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v4, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_7
    check-cast v11, Lf1/b1;

    .line 137
    .line 138
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 139
    .line 140
    .line 141
    const/16 v7, 0xc

    .line 142
    .line 143
    invoke-static {v7, v4}, Lg5/a;->B(ILf1/s;)F

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-static {v7}, Lk0/e;->a(F)Lk0/d;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    sget-object v17, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Lf1/s;->W(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    if-ne v5, v8, :cond_8

    .line 161
    .line 162
    invoke-static {v4}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    :cond_8
    move-object/from16 v18, v5

    .line 167
    .line 168
    check-cast v18, Lb0/k;

    .line 169
    .line 170
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 171
    .line 172
    .line 173
    const v5, -0x48fade91

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v5}, Lf1/s;->W(I)V

    .line 177
    .line 178
    .line 179
    and-int/lit8 v13, v0, 0x70

    .line 180
    .line 181
    if-ne v13, v14, :cond_9

    .line 182
    .line 183
    const/16 v19, 0x1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    const/16 v19, 0x0

    .line 187
    .line 188
    :goto_4
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    if-nez v19, :cond_a

    .line 193
    .line 194
    if-ne v5, v8, :cond_b

    .line 195
    .line 196
    :cond_a
    new-instance v5, Lm7/h;

    .line 197
    .line 198
    invoke-direct {v5, v1, v10, v11, v6}, Lm7/h;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_b
    move-object/from16 v21, v5

    .line 205
    .line 206
    check-cast v21, Lf9/a;

    .line 207
    .line 208
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 209
    .line 210
    .line 211
    const/16 v22, 0x1c

    .line 212
    .line 213
    const/16 v19, 0x0

    .line 214
    .line 215
    const/16 v20, 0x0

    .line 216
    .line 217
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    new-instance v9, Lm7/i;

    .line 222
    .line 223
    invoke-direct {v9, v2, v1}, Lm7/i;-><init>(Lr8/j;I)V

    .line 224
    .line 225
    .line 226
    const v14, 0x215647a8

    .line 227
    .line 228
    .line 229
    invoke-static {v14, v9, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    move-object v14, v10

    .line 234
    const/high16 v10, 0x30000

    .line 235
    .line 236
    move-object/from16 v19, v11

    .line 237
    .line 238
    const/16 v11, 0x1c

    .line 239
    .line 240
    move-object/from16 v20, v6

    .line 241
    .line 242
    const/4 v6, 0x0

    .line 243
    move-object v4, v5

    .line 244
    move-object v5, v7

    .line 245
    const/4 v7, 0x0

    .line 246
    move-object v12, v8

    .line 247
    move-object v8, v9

    .line 248
    move-object/from16 v16, v14

    .line 249
    .line 250
    const/4 v14, 0x0

    .line 251
    move-object/from16 v9, p4

    .line 252
    .line 253
    invoke-static/range {v4 .. v11}, Lc1/g1;->b(Lr1/p;Ly1/l0;Lc1/l;Lc1/m;Ln1/c;Lf1/s;II)V

    .line 254
    .line 255
    .line 256
    invoke-interface/range {v16 .. v16}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Ljava/lang/Boolean;

    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    const v6, 0x4c5de2

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9, v6}, Lf1/s;->W(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    if-ne v5, v12, :cond_c

    .line 276
    .line 277
    new-instance v5, Ld8/i;

    .line 278
    .line 279
    move-object/from16 v10, v16

    .line 280
    .line 281
    const/4 v7, 0x1

    .line 282
    invoke-direct {v5, v10, v14, v7}, Ld8/i;-><init>(Lf1/b1;Lw8/c;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_c
    move-object/from16 v10, v16

    .line 290
    .line 291
    const/4 v7, 0x1

    .line 292
    :goto_5
    check-cast v5, Lf9/n;

    .line 293
    .line 294
    const/4 v8, 0x0

    .line 295
    invoke-virtual {v9, v8}, Lf1/s;->p(Z)V

    .line 296
    .line 297
    .line 298
    invoke-static {v9, v5, v4}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Ljava/lang/Boolean;

    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    invoke-virtual {v9, v6}, Lf1/s;->W(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    if-ne v4, v12, :cond_d

    .line 319
    .line 320
    new-instance v4, Lj8/h;

    .line 321
    .line 322
    const/16 v5, 0xa

    .line 323
    .line 324
    invoke-direct {v4, v10, v5}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v9, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_d
    move-object v11, v4

    .line 331
    check-cast v11, Lf9/a;

    .line 332
    .line 333
    const/4 v4, 0x0

    .line 334
    invoke-virtual {v9, v4}, Lf1/s;->p(Z)V

    .line 335
    .line 336
    .line 337
    const v4, -0x48fade91

    .line 338
    .line 339
    .line 340
    invoke-virtual {v9, v4}, Lf1/s;->W(I)V

    .line 341
    .line 342
    .line 343
    const/16 v4, 0x20

    .line 344
    .line 345
    if-ne v13, v4, :cond_e

    .line 346
    .line 347
    const/4 v4, 0x1

    .line 348
    goto :goto_6

    .line 349
    :cond_e
    const/4 v4, 0x0

    .line 350
    :goto_6
    and-int/lit8 v13, v0, 0xe

    .line 351
    .line 352
    const/4 v5, 0x4

    .line 353
    if-ne v13, v5, :cond_f

    .line 354
    .line 355
    const/4 v5, 0x1

    .line 356
    goto :goto_7

    .line 357
    :cond_f
    const/4 v5, 0x0

    .line 358
    :goto_7
    or-int/2addr v4, v5

    .line 359
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    if-nez v4, :cond_10

    .line 364
    .line 365
    if-ne v5, v12, :cond_11

    .line 366
    .line 367
    :cond_10
    move v4, v0

    .line 368
    goto :goto_8

    .line 369
    :cond_11
    move v14, v0

    .line 370
    goto :goto_9

    .line 371
    :goto_8
    new-instance v0, Ld0/r;

    .line 372
    .line 373
    move v14, v4

    .line 374
    move-object/from16 v5, v19

    .line 375
    .line 376
    move-object/from16 v4, v20

    .line 377
    .line 378
    invoke-direct/range {v0 .. v5}, Ld0/r;-><init>(ILr8/j;Lf9/k;Lf1/b1;Lf1/b1;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v9, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    move-object v5, v0

    .line 385
    :goto_9
    move-object v3, v5

    .line 386
    check-cast v3, Lf9/k;

    .line 387
    .line 388
    const/4 v4, 0x0

    .line 389
    invoke-virtual {v9, v4}, Lf1/s;->p(Z)V

    .line 390
    .line 391
    .line 392
    sget-object v0, Ll8/p;->l:Ldc/l0;

    .line 393
    .line 394
    const/16 v5, 0x230

    .line 395
    .line 396
    sget-object v2, Lm7/k;->b:Ll8/p;

    .line 397
    .line 398
    move v0, v8

    .line 399
    move-object v4, v9

    .line 400
    move-object v1, v11

    .line 401
    move-object/from16 v11, v19

    .line 402
    .line 403
    move-object/from16 v8, p1

    .line 404
    .line 405
    move-object/from16 v9, p3

    .line 406
    .line 407
    invoke-static/range {v0 .. v5}, Lj8/p;->b(ZLf9/a;Ll8/p;Lf9/k;Lf1/s;I)V

    .line 408
    .line 409
    .line 410
    invoke-interface {v11}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Ljava/lang/Boolean;

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    invoke-virtual {v4, v6}, Lf1/s;->W(I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    if-ne v0, v12, :cond_12

    .line 428
    .line 429
    new-instance v0, Lj8/h;

    .line 430
    .line 431
    const/16 v2, 0xb

    .line 432
    .line 433
    invoke-direct {v0, v11, v2}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :cond_12
    move-object v2, v0

    .line 440
    check-cast v2, Lf9/a;

    .line 441
    .line 442
    const/4 v0, 0x0

    .line 443
    invoke-virtual {v4, v0}, Lf1/s;->p(Z)V

    .line 444
    .line 445
    .line 446
    iget-object v0, v8, Lr8/j;->a:Ljava/lang/Object;

    .line 447
    .line 448
    move-object v3, v0

    .line 449
    check-cast v3, Ljava/lang/String;

    .line 450
    .line 451
    const v0, -0x6815fd56

    .line 452
    .line 453
    .line 454
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 455
    .line 456
    .line 457
    const/4 v5, 0x4

    .line 458
    if-ne v13, v5, :cond_13

    .line 459
    .line 460
    goto :goto_a

    .line 461
    :cond_13
    const/4 v7, 0x0

    .line 462
    :goto_a
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    if-nez v7, :cond_14

    .line 467
    .line 468
    if-ne v0, v12, :cond_15

    .line 469
    .line 470
    :cond_14
    new-instance v0, Ll0/p;

    .line 471
    .line 472
    const/4 v5, 0x2

    .line 473
    invoke-direct {v0, v8, v9, v10, v5}, Ll0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    :cond_15
    check-cast v0, Lf9/n;

    .line 480
    .line 481
    const/4 v5, 0x0

    .line 482
    invoke-virtual {v4, v5}, Lf1/s;->p(Z)V

    .line 483
    .line 484
    .line 485
    shl-int/lit8 v5, v14, 0x3

    .line 486
    .line 487
    const v6, 0xe000

    .line 488
    .line 489
    .line 490
    and-int/2addr v5, v6

    .line 491
    const v6, 0x8030

    .line 492
    .line 493
    .line 494
    or-int/2addr v6, v5

    .line 495
    move-object v5, v4

    .line 496
    move-object v4, v0

    .line 497
    move-object v0, v15

    .line 498
    invoke-virtual/range {v0 .. v6}, Lm7/k;->a(ZLf9/a;Ljava/lang/String;Lf9/n;Lf1/s;I)V

    .line 499
    .line 500
    .line 501
    :goto_b
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 502
    .line 503
    .line 504
    move-result-object v7

    .line 505
    if-eqz v7, :cond_16

    .line 506
    .line 507
    new-instance v0, Lh0/u;

    .line 508
    .line 509
    const/4 v6, 0x3

    .line 510
    move-object/from16 v1, p0

    .line 511
    .line 512
    move/from16 v3, p2

    .line 513
    .line 514
    move/from16 v5, p5

    .line 515
    .line 516
    move-object v2, v8

    .line 517
    move-object v4, v9

    .line 518
    invoke-direct/range {v0 .. v6}, Lh0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    .line 520
    .line 521
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 522
    .line 523
    :cond_16
    return-void
.end method

.method public final c(Ljava/util/List;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    const v0, -0x213e9e2f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v14, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string v0, "\u5c01\u9762\u56fe\u8bbe\u7f6e"

    .line 33
    .line 34
    const-string v1, "\u8fde\u63a5\u8fdb\u5ea6\u56fe\u7247\u8bbe\u7f6e(\u5206\u8fa8\u7387\u63a8\u8350: 840x488)"

    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    const v0, 0x6e3c21fe

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 55
    .line 56
    if-ne v0, v7, :cond_2

    .line 57
    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    move-object v8, v0

    .line 68
    check-cast v8, Lf1/b1;

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lm7/z;->n:Ldc/l0;

    .line 75
    .line 76
    invoke-static {v0, v4}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    new-instance v0, La8/j;

    .line 81
    .line 82
    const/16 v1, 0xe

    .line 83
    .line 84
    invoke-direct {v0, v1, v15}, La8/j;-><init>(ILjava/util/List;)V

    .line 85
    .line 86
    .line 87
    const v1, -0x7e97ad06

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Lm7/b;->a:Ln1/c;

    .line 95
    .line 96
    const v11, 0x4c5de2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-ne v2, v7, :cond_3

    .line 107
    .line 108
    new-instance v2, Lj8/h;

    .line 109
    .line 110
    const/16 v3, 0xc

    .line 111
    .line 112
    invoke-direct {v2, v8, v3}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    move-object v3, v2

    .line 119
    check-cast v3, Lf9/a;

    .line 120
    .line 121
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 122
    .line 123
    .line 124
    const/16 v5, 0xc36

    .line 125
    .line 126
    const/4 v6, 0x4

    .line 127
    const/4 v2, 0x0

    .line 128
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v8}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-ne v1, v7, :cond_4

    .line 149
    .line 150
    new-instance v1, Lj8/h;

    .line 151
    .line 152
    const/16 v2, 0xd

    .line 153
    .line 154
    invoke-direct {v1, v8, v2}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    check-cast v1, Lf9/a;

    .line 161
    .line 162
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Le8/h;

    .line 166
    .line 167
    const/4 v3, 0x5

    .line 168
    invoke-direct {v2, v10, v3}, Le8/h;-><init>(Lf1/v2;I)V

    .line 169
    .line 170
    .line 171
    const v3, 0x2c9303ba

    .line 172
    .line 173
    .line 174
    invoke-static {v3, v2, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    const/16 v12, 0x30

    .line 179
    .line 180
    const/16 v13, 0x3fc

    .line 181
    .line 182
    const-wide/16 v2, 0x0

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    const/4 v6, 0x0

    .line 187
    const/4 v7, 0x0

    .line 188
    const/4 v8, 0x0

    .line 189
    const/4 v9, 0x0

    .line 190
    move-object/from16 v11, p2

    .line 191
    .line 192
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 193
    .line 194
    .line 195
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_5

    .line 200
    .line 201
    new-instance v1, La8/g;

    .line 202
    .line 203
    const/4 v2, 0x7

    .line 204
    move-object/from16 v3, p0

    .line 205
    .line 206
    invoke-direct {v1, v14, v2, v3, v15}, La8/g;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 210
    .line 211
    return-void

    .line 212
    :cond_5
    move-object/from16 v3, p0

    .line 213
    .line 214
    return-void
.end method
