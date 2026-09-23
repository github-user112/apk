.class public final Lj8/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/p;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:F

.field public final synthetic c:Lf9/k;

.field public final synthetic d:Lf1/v2;


# direct methods
.method public constructor <init>(Ljava/util/List;FLf9/k;Lf1/v2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/z;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lj8/z;->b:F

    .line 7
    .line 8
    iput-object p3, p0, Lj8/z;->c:Lf9/k;

    .line 9
    .line 10
    iput-object p4, p0, Lj8/z;->d:Lf1/v2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lf0/c;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    check-cast v3, Lf1/s;

    .line 18
    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    check-cast v4, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    and-int/lit8 v5, v4, 0x6

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x2

    .line 41
    :goto_0
    or-int/2addr v1, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v1, v4

    .line 44
    :goto_1
    and-int/lit8 v4, v4, 0x30

    .line 45
    .line 46
    const/16 v5, 0x20

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Lf1/s;->d(I)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    const/16 v4, 0x20

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v4, 0x10

    .line 60
    .line 61
    :goto_2
    or-int/2addr v1, v4

    .line 62
    :cond_3
    and-int/lit16 v4, v1, 0x93

    .line 63
    .line 64
    const/16 v7, 0x92

    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    const/4 v9, 0x0

    .line 68
    if-eq v4, v7, :cond_4

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const/4 v4, 0x0

    .line 73
    :goto_3
    and-int/2addr v1, v8

    .line 74
    invoke-virtual {v3, v1, v4}, Lf1/s;->N(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_d

    .line 79
    .line 80
    iget-object v1, v0, Lj8/z;->a:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const v2, -0x353753c

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2}, Lf1/s;->W(I)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v0, Lj8/z;->d:Lf1/v2;

    .line 99
    .line 100
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/lang/Number;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ne v1, v2, :cond_5

    .line 111
    .line 112
    const/4 v2, 0x1

    .line 113
    goto :goto_4

    .line 114
    :cond_5
    const/4 v2, 0x0

    .line 115
    :goto_4
    sget-object v4, Lr1/c;->e:Lr1/h;

    .line 116
    .line 117
    sget-object v7, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 118
    .line 119
    iget v10, v0, Lj8/z;->b:F

    .line 120
    .line 121
    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    const v10, -0x615d173a

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v10}, Lf1/s;->W(I)V

    .line 129
    .line 130
    .line 131
    iget-object v10, v0, Lj8/z;->c:Lf9/k;

    .line 132
    .line 133
    invoke-virtual {v3, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-virtual {v3, v1}, Lf1/s;->d(I)Z

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    or-int/2addr v11, v12

    .line 142
    invoke-virtual {v3}, Lf1/s;->K()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    if-nez v11, :cond_6

    .line 147
    .line 148
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 149
    .line 150
    if-ne v12, v11, :cond_7

    .line 151
    .line 152
    :cond_6
    new-instance v12, Lj8/y;

    .line 153
    .line 154
    const/4 v11, 0x0

    .line 155
    invoke-direct {v12, v1, v11, v10}, Lj8/y;-><init>(IILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_7
    check-cast v12, Lf9/a;

    .line 162
    .line 163
    invoke-virtual {v3, v9}, Lf1/s;->p(Z)V

    .line 164
    .line 165
    .line 166
    const/16 v10, 0xf

    .line 167
    .line 168
    const/4 v11, 0x0

    .line 169
    invoke-static {v7, v11, v12, v10}, Landroidx/compose/foundation/a;->d(Lr1/p;Ljava/lang/String;Lf9/a;I)Lr1/p;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-static {v4, v9}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    iget-wide v10, v3, Lf1/s;->T:J

    .line 178
    .line 179
    ushr-long v12, v10, v5

    .line 180
    .line 181
    xor-long/2addr v10, v12

    .line 182
    long-to-int v5, v10

    .line 183
    invoke-virtual {v3}, Lf1/s;->l()Lf1/q1;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-static {v3, v7}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    sget-object v11, Lq2/j;->d0:Lq2/i;

    .line 192
    .line 193
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    sget-object v11, Lq2/i;->b:Lq2/a0;

    .line 197
    .line 198
    invoke-virtual {v3}, Lf1/s;->a0()V

    .line 199
    .line 200
    .line 201
    iget-boolean v12, v3, Lf1/s;->S:Z

    .line 202
    .line 203
    if-eqz v12, :cond_8

    .line 204
    .line 205
    invoke-virtual {v3, v11}, Lf1/s;->k(Lf9/a;)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_8
    invoke-virtual {v3}, Lf1/s;->k0()V

    .line 210
    .line 211
    .line 212
    :goto_5
    sget-object v11, Lq2/i;->e:Lq2/h;

    .line 213
    .line 214
    invoke-static {v3, v11, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    sget-object v4, Lq2/i;->d:Lq2/h;

    .line 218
    .line 219
    invoke-static {v3, v4, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 223
    .line 224
    iget-boolean v10, v3, Lf1/s;->S:Z

    .line 225
    .line 226
    if-nez v10, :cond_9

    .line 227
    .line 228
    invoke-virtual {v3}, Lf1/s;->K()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    invoke-static {v10, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    if-nez v10, :cond_a

    .line 241
    .line 242
    :cond_9
    invoke-static {v5, v3, v5, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 243
    .line 244
    .line 245
    :cond_a
    sget-object v4, Lq2/i;->c:Lq2/h;

    .line 246
    .line 247
    invoke-static {v3, v4, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-static {v6, v1}, Lxb/i;->T(ILjava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const/16 v4, 0x1e

    .line 259
    .line 260
    invoke-static {v4}, Lc7/a;->H(I)J

    .line 261
    .line 262
    .line 263
    move-result-wide v4

    .line 264
    if-eqz v2, :cond_b

    .line 265
    .line 266
    sget-object v6, Lf3/k;->e:Lf3/k;

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_b
    sget-object v6, Lf3/k;->c:Lf3/k;

    .line 270
    .line 271
    :goto_6
    const v7, -0x4feeeafe

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v7}, Lf1/s;->W(I)V

    .line 275
    .line 276
    .line 277
    if-eqz v2, :cond_c

    .line 278
    .line 279
    sget-object v2, Lc1/y;->a:Lf1/w2;

    .line 280
    .line 281
    invoke-virtual {v3, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    check-cast v2, Lc1/w;

    .line 286
    .line 287
    iget-wide v10, v2, Lc1/w;->a:J

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_c
    sget-wide v10, Ly1/q;->c:J

    .line 291
    .line 292
    :goto_7
    invoke-virtual {v3, v9}, Lf1/s;->p(Z)V

    .line 293
    .line 294
    .line 295
    const/16 v22, 0x0

    .line 296
    .line 297
    const v23, 0x1ffd2

    .line 298
    .line 299
    .line 300
    move-wide v7, v4

    .line 301
    const/4 v2, 0x1

    .line 302
    const/4 v4, 0x0

    .line 303
    move-object v9, v6

    .line 304
    move-wide v5, v10

    .line 305
    const/4 v12, 0x0

    .line 306
    const-wide/16 v10, 0x0

    .line 307
    .line 308
    const/4 v13, 0x0

    .line 309
    const/4 v12, 0x0

    .line 310
    const/4 v15, 0x0

    .line 311
    const-wide/16 v13, 0x0

    .line 312
    .line 313
    const/16 v16, 0x0

    .line 314
    .line 315
    const/4 v15, 0x0

    .line 316
    const/16 v17, 0x0

    .line 317
    .line 318
    const/16 v16, 0x0

    .line 319
    .line 320
    const/16 v18, 0x0

    .line 321
    .line 322
    const/16 v17, 0x0

    .line 323
    .line 324
    const/16 v19, 0x0

    .line 325
    .line 326
    const/16 v18, 0x0

    .line 327
    .line 328
    const/16 v20, 0x0

    .line 329
    .line 330
    const/16 v19, 0x0

    .line 331
    .line 332
    const/16 v21, 0xc00

    .line 333
    .line 334
    move-object/from16 v20, v3

    .line 335
    .line 336
    move-object v3, v1

    .line 337
    const/4 v1, 0x0

    .line 338
    invoke-static/range {v3 .. v23}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v3, v20

    .line 342
    .line 343
    invoke-virtual {v3, v2}, Lf1/s;->p(Z)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3, v1}, Lf1/s;->p(Z)V

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_d
    invoke-virtual {v3}, Lf1/s;->Q()V

    .line 351
    .line 352
    .line 353
    :goto_8
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 354
    .line 355
    return-object v1
.end method
