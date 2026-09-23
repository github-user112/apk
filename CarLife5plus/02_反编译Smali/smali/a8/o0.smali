.class public final La8/o0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp1/p;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lp1/p;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p3, p0, La8/o0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8/o0;->b:Lp1/p;

    .line 4
    .line 5
    iput-object p2, p0, La8/o0;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, La8/o0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v7, p1

    .line 7
    check-cast v7, Lf1/s;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 p1, p1, 0x3

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const p1, -0x615d173a

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, p1}, Lf1/s;->W(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object p2, Lf1/n;->a:Lf1/w0;

    .line 42
    .line 43
    if-ne p1, p2, :cond_2

    .line 44
    .line 45
    new-instance p1, La8/l0;

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    iget-object v0, p0, La8/o0;->b:Lp1/p;

    .line 49
    .line 50
    iget-object v1, p0, La8/o0;->c:Lf1/b1;

    .line 51
    .line 52
    invoke-direct {p1, v0, v1, p2}, La8/l0;-><init>(Lp1/p;Lf1/b1;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, p1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    move-object v6, p1

    .line 59
    check-cast v6, Lf9/a;

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {v7, p1}, Lf1/s;->p(Z)V

    .line 63
    .line 64
    .line 65
    const/16 v8, 0xc06

    .line 66
    .line 67
    const/4 v9, 0x6

    .line 68
    const-string v1, "\u4fdd\u5b58"

    .line 69
    .line 70
    const-wide/16 v2, 0x0

    .line 71
    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    invoke-static/range {v1 .. v9}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 75
    .line 76
    .line 77
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 78
    .line 79
    return-object p1

    .line 80
    :pswitch_0
    move-object v4, p1

    .line 81
    check-cast v4, Lf1/s;

    .line 82
    .line 83
    check-cast p2, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    and-int/lit8 p1, p1, 0x3

    .line 90
    .line 91
    const/4 p2, 0x2

    .line 92
    if-ne p1, p2, :cond_4

    .line 93
    .line 94
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :cond_4
    :goto_2
    iget-object p1, p0, La8/o0;->b:Lp1/p;

    .line 107
    .line 108
    invoke-virtual {p1}, Lp1/p;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 113
    .line 114
    const/4 v9, 0x0

    .line 115
    if-eqz p2, :cond_6

    .line 116
    .line 117
    const p2, -0x3096970a

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, p2}, Lf1/s;->W(I)V

    .line 121
    .line 122
    .line 123
    sget-object v0, La8/c;->b:Ln1/c;

    .line 124
    .line 125
    sget-object v1, La8/c;->c:Ln1/c;

    .line 126
    .line 127
    const p2, 0x4c5de2

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, p2}, Lf1/s;->W(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-ne p2, v8, :cond_5

    .line 138
    .line 139
    new-instance p2, La8/o;

    .line 140
    .line 141
    const/4 v2, 0x1

    .line 142
    invoke-direct {p2, p1, v2}, La8/o;-><init>(Lp1/p;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    move-object v3, p2

    .line 149
    check-cast v3, Lf9/a;

    .line 150
    .line 151
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 152
    .line 153
    .line 154
    const/16 v5, 0xdb6

    .line 155
    .line 156
    const/4 v6, 0x0

    .line 157
    const/4 v2, 0x0

    .line 158
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_6
    const p2, -0x308fcf29

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, p2}, Lf1/s;->W(I)V

    .line 170
    .line 171
    .line 172
    new-instance p2, Ls8/d0;

    .line 173
    .line 174
    invoke-direct {p2, p1}, Ls8/d0;-><init>(Ljava/util/List;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Ls8/d0;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    const/4 v0, 0x0

    .line 182
    :goto_3
    move-object v1, p2

    .line 183
    check-cast v1, Lp1/c0;

    .line 184
    .line 185
    iget-object v1, v1, Lp1/c0;->b:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v1, Ljava/util/ListIterator;

    .line 188
    .line 189
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_f

    .line 194
    .line 195
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    add-int/lit8 v10, v0, 0x1

    .line 200
    .line 201
    if-ltz v0, :cond_e

    .line 202
    .line 203
    check-cast v1, Lz7/b2;

    .line 204
    .line 205
    iget v2, v1, Lz7/b2;->a:I

    .line 206
    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const v3, 0x6341ca0b

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v3, v2}, Lf1/s;->U(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-static {p1}, Lp9/x1;->u(Ljava/util/List;)I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-ne v0, v2, :cond_7

    .line 222
    .line 223
    const/4 v0, 0x1

    .line 224
    const/4 v2, 0x1

    .line 225
    goto :goto_4

    .line 226
    :cond_7
    const/4 v2, 0x0

    .line 227
    :goto_4
    const v0, -0x615d173a

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    if-nez v3, :cond_8

    .line 242
    .line 243
    if-ne v5, v8, :cond_9

    .line 244
    .line 245
    :cond_8
    new-instance v5, La8/v;

    .line 246
    .line 247
    const/4 v3, 0x1

    .line 248
    const/4 v6, 0x0

    .line 249
    invoke-direct {v5, v3, v1, p1, v6}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_9
    move-object v3, v5

    .line 256
    check-cast v3, Lf9/k;

    .line 257
    .line 258
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    if-nez v5, :cond_a

    .line 273
    .line 274
    if-ne v6, v8, :cond_b

    .line 275
    .line 276
    :cond_a
    new-instance v6, La8/n0;

    .line 277
    .line 278
    const/4 v5, 0x0

    .line 279
    invoke-direct {v6, v5, v1, p1}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :cond_b
    check-cast v6, Lf9/a;

    .line 286
    .line 287
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    if-nez v0, :cond_c

    .line 302
    .line 303
    if-ne v5, v8, :cond_d

    .line 304
    .line 305
    :cond_c
    new-instance v5, La8/n0;

    .line 306
    .line 307
    const/4 v0, 0x1

    .line 308
    iget-object v7, p0, La8/o0;->c:Lf1/b1;

    .line 309
    .line 310
    invoke-direct {v5, v0, v1, v7}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :cond_d
    check-cast v5, Lf9/a;

    .line 317
    .line 318
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 319
    .line 320
    .line 321
    const/high16 v7, 0x30000

    .line 322
    .line 323
    sget-object v0, La8/w0;->a:La8/w0;

    .line 324
    .line 325
    move-object v11, v6

    .line 326
    move-object v6, v4

    .line 327
    move-object v4, v11

    .line 328
    invoke-virtual/range {v0 .. v7}, La8/w0;->e(Lz7/b2;ZLf9/k;Lf9/a;Lf9/a;Lf1/s;I)V

    .line 329
    .line 330
    .line 331
    move-object v4, v6

    .line 332
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 333
    .line 334
    .line 335
    move v0, v10

    .line 336
    goto/16 :goto_3

    .line 337
    .line 338
    :cond_e
    invoke-static {}, Lp9/x1;->L()V

    .line 339
    .line 340
    .line 341
    const/4 p1, 0x0

    .line 342
    throw p1

    .line 343
    :cond_f
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 344
    .line 345
    .line 346
    :goto_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 347
    .line 348
    return-object p1

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
