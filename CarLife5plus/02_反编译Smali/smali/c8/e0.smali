.class public final Lc8/e0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lc8/g0;

.field public final synthetic d:Lf1/h1;

.field public final synthetic e:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(ZLc8/g0;Lf1/h1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lc8/e0;->a:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lc8/e0;->b:Z

    .line 4
    .line 5
    iput-object p2, p0, Lc8/e0;->c:Lc8/g0;

    .line 6
    .line 7
    iput-object p3, p0, Lc8/e0;->d:Lf1/h1;

    .line 8
    .line 9
    iput-object p4, p0, Lc8/e0;->e:Lf1/b1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/e0;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Lf1/s;

    .line 16
    .line 17
    move-object/from16 v6, p2

    .line 18
    .line 19
    check-cast v6, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    and-int/2addr v4, v6

    .line 26
    if-ne v4, v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    new-instance v6, Lc8/e0;

    .line 40
    .line 41
    iget-object v10, v0, Lc8/e0;->e:Lf1/b1;

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    iget-boolean v7, v0, Lc8/e0;->b:Z

    .line 45
    .line 46
    iget-object v8, v0, Lc8/e0;->c:Lc8/g0;

    .line 47
    .line 48
    iget-object v9, v0, Lc8/e0;->d:Lf1/h1;

    .line 49
    .line 50
    invoke-direct/range {v6 .. v11}, Lc8/e0;-><init>(ZLc8/g0;Lf1/h1;Lf1/b1;I)V

    .line 51
    .line 52
    .line 53
    const v3, -0x38be9ac1

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v6, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/16 v4, 0x30

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-static {v6, v3, v1, v4, v5}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-object v2

    .line 67
    :pswitch_0
    move-object/from16 v13, p1

    .line 68
    .line 69
    check-cast v13, Lf1/s;

    .line 70
    .line 71
    move-object/from16 v1, p2

    .line 72
    .line 73
    check-cast v1, Ljava/lang/Number;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    and-int/2addr v1, v4

    .line 80
    if-ne v1, v3, :cond_3

    .line 81
    .line 82
    invoke-virtual {v13}, Lf1/s;->z()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v13}, Lf1/s;->Q()V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_3
    :goto_2
    new-instance v1, Lc8/d0;

    .line 95
    .line 96
    iget-object v6, v0, Lc8/e0;->d:Lf1/h1;

    .line 97
    .line 98
    const/4 v14, 0x0

    .line 99
    invoke-direct {v1, v6, v14}, Lc8/d0;-><init>(Lf1/h1;I)V

    .line 100
    .line 101
    .line 102
    const v7, -0x3cff450a

    .line 103
    .line 104
    .line 105
    invoke-static {v7, v1, v13}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    new-instance v1, Lc8/d0;

    .line 110
    .line 111
    invoke-direct {v1, v6, v5}, Lc8/d0;-><init>(Lf1/h1;I)V

    .line 112
    .line 113
    .line 114
    const v8, 0x3dc8a737

    .line 115
    .line 116
    .line 117
    invoke-static {v8, v1, v13}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    const/16 v12, 0x36

    .line 122
    .line 123
    move-object v11, v13

    .line 124
    const/16 v13, 0xc

    .line 125
    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v10, 0x0

    .line 128
    invoke-static/range {v7 .. v13}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 129
    .line 130
    .line 131
    sget v1, Lc8/g0;->h:I

    .line 132
    .line 133
    invoke-virtual {v6}, Lf1/h1;->f()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const v7, -0x38295a1

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11, v7, v1}, Lf1/s;->U(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    const-string v1, "\u89e6\u53d1\u6761\u4ef6"

    .line 148
    .line 149
    const-string v7, "\u9009\u62e9\u89e6\u53d1\u6761\u4ef6"

    .line 150
    .line 151
    filled-new-array {v1, v7}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    new-instance v15, Lj8/k0;

    .line 160
    .line 161
    invoke-virtual {v6}, Lf1/h1;->f()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const-string v8, "\u5c0f\u4e8e"

    .line 166
    .line 167
    const-string v9, "nit"

    .line 168
    .line 169
    invoke-static {v8, v9, v1}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v16

    .line 173
    new-instance v1, Lj8/l0;

    .line 174
    .line 175
    invoke-direct {v1, v5}, Lj8/l0;-><init>(Z)V

    .line 176
    .line 177
    .line 178
    const/16 v20, 0x0

    .line 179
    .line 180
    const/16 v21, 0x1c

    .line 181
    .line 182
    const/16 v18, 0x0

    .line 183
    .line 184
    const/16 v19, 0x0

    .line 185
    .line 186
    move-object/from16 v17, v1

    .line 187
    .line 188
    invoke-direct/range {v15 .. v21}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 189
    .line 190
    .line 191
    new-instance v16, Lj8/k0;

    .line 192
    .line 193
    invoke-virtual {v6}, Lf1/h1;->f()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    const-string v6, "\u5927\u4e8e"

    .line 198
    .line 199
    invoke-static {v6, v9, v1}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v17

    .line 203
    new-instance v1, Lj8/l0;

    .line 204
    .line 205
    invoke-direct {v1, v14}, Lj8/l0;-><init>(Z)V

    .line 206
    .line 207
    .line 208
    const/16 v21, 0x0

    .line 209
    .line 210
    const/16 v22, 0x1c

    .line 211
    .line 212
    move-object/from16 v18, v1

    .line 213
    .line 214
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 215
    .line 216
    .line 217
    new-array v1, v3, [Lj8/k0;

    .line 218
    .line 219
    aput-object v15, v1, v14

    .line 220
    .line 221
    aput-object v16, v1, v5

    .line 222
    .line 223
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    const v1, 0x4c5de2

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11, v1}, Lf1/s;->W(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 238
    .line 239
    if-ne v1, v3, :cond_4

    .line 240
    .line 241
    new-instance v1, La8/s0;

    .line 242
    .line 243
    iget-object v3, v0, Lc8/e0;->e:Lf1/b1;

    .line 244
    .line 245
    invoke-direct {v1, v3, v4}, La8/s0;-><init>(Lf1/b1;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_4
    move-object v12, v1

    .line 252
    check-cast v12, Lf9/k;

    .line 253
    .line 254
    invoke-virtual {v11, v14}, Lf1/s;->p(Z)V

    .line 255
    .line 256
    .line 257
    const/4 v1, 0x0

    .line 258
    const v14, 0x30006

    .line 259
    .line 260
    .line 261
    const/16 v15, 0x1c

    .line 262
    .line 263
    const/4 v9, 0x0

    .line 264
    const/4 v10, 0x0

    .line 265
    move-object v13, v11

    .line 266
    const/4 v11, 0x0

    .line 267
    invoke-static/range {v7 .. v15}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 268
    .line 269
    .line 270
    move-object v11, v13

    .line 271
    invoke-virtual {v11, v1}, Lf1/s;->p(Z)V

    .line 272
    .line 273
    .line 274
    iget-boolean v3, v0, Lc8/e0;->b:Z

    .line 275
    .line 276
    iget-object v4, v0, Lc8/e0;->c:Lc8/g0;

    .line 277
    .line 278
    if-eqz v3, :cond_5

    .line 279
    .line 280
    invoke-virtual {v4}, Lc8/g0;->d()V

    .line 281
    .line 282
    .line 283
    :cond_5
    iget-object v3, v4, Lc8/g0;->e:Ldc/l0;

    .line 284
    .line 285
    invoke-static {v3, v11}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v5, "\u5f53\u524d"

    .line 296
    .line 297
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v3, "nit \u82e5\u65e0\u53d8\u5316\u53ef\u80fd\u4e0d\u652f\u6301"

    .line 304
    .line 305
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-static {v3, v11, v1}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 317
    .line 318
    .line 319
    :goto_3
    return-object v2

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
