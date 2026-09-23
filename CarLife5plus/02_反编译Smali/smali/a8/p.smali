.class public final La8/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp1/p;


# direct methods
.method public synthetic constructor <init>(Lp1/p;I)V
    .locals 0

    .line 1
    iput p2, p0, La8/p;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8/p;->b:Lp1/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, La8/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/s;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    and-int/lit8 p2, p2, 0x3

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const p2, 0x4c5de2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 41
    .line 42
    if-ne p2, v0, :cond_2

    .line 43
    .line 44
    new-instance p2, La8/o;

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    iget-object v1, p0, La8/p;->b:Lp1/p;

    .line 48
    .line 49
    invoke-direct {p2, v1, v0}, La8/o;-><init>(Lp1/p;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    check-cast p2, Lf9/a;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Lf1/s;->p(Z)V

    .line 59
    .line 60
    .line 61
    const/16 v0, 0x36

    .line 62
    .line 63
    const-string v1, "\u91cd\u7f6e"

    .line 64
    .line 65
    invoke-static {v1, p2, p1, v0}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 66
    .line 67
    .line 68
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 69
    .line 70
    return-object p1

    .line 71
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 72
    .line 73
    check-cast p2, Ljava/lang/Number;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    and-int/lit8 p2, p2, 0x3

    .line 80
    .line 81
    const/4 v0, 0x2

    .line 82
    if-ne p2, v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    :goto_2
    new-instance p2, La8/p;

    .line 96
    .line 97
    iget-object v0, p0, La8/p;->b:Lp1/p;

    .line 98
    .line 99
    const/4 v1, 0x2

    .line 100
    invoke-direct {p2, v0, v1}, La8/p;-><init>(Lp1/p;I)V

    .line 101
    .line 102
    .line 103
    const v0, -0x167ecf01

    .line 104
    .line 105
    .line 106
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    const/16 v0, 0x30

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    const/4 v2, 0x1

    .line 114
    invoke-static {v1, p2, p1, v0, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 115
    .line 116
    .line 117
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 118
    .line 119
    return-object p1

    .line 120
    :pswitch_1
    check-cast p1, Lf1/s;

    .line 121
    .line 122
    check-cast p2, Ljava/lang/Number;

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    and-int/lit8 p2, p2, 0x3

    .line 129
    .line 130
    const/4 v0, 0x2

    .line 131
    if-ne p2, v0, :cond_6

    .line 132
    .line 133
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-nez p2, :cond_5

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_5
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_6
    :goto_4
    new-instance p2, La8/p;

    .line 145
    .line 146
    iget-object v0, p0, La8/p;->b:Lp1/p;

    .line 147
    .line 148
    const/4 v1, 0x1

    .line 149
    invoke-direct {p2, v0, v1}, La8/p;-><init>(Lp1/p;I)V

    .line 150
    .line 151
    .line 152
    const v0, -0x386dd284

    .line 153
    .line 154
    .line 155
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    const/16 v0, 0x30

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-static {v1, p2, p1, v0}, Lw0/y0;->b(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 163
    .line 164
    .line 165
    :goto_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 166
    .line 167
    return-object p1

    .line 168
    :pswitch_2
    move-object v5, p1

    .line 169
    check-cast v5, Lf1/s;

    .line 170
    .line 171
    check-cast p2, Ljava/lang/Number;

    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    and-int/lit8 p1, p1, 0x3

    .line 178
    .line 179
    const/4 p2, 0x2

    .line 180
    if-ne p1, p2, :cond_8

    .line 181
    .line 182
    invoke-virtual {v5}, Lf1/s;->z()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_7

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_7
    invoke-virtual {v5}, Lf1/s;->Q()V

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_8
    :goto_6
    const/4 p1, 0x0

    .line 194
    const/4 p2, 0x6

    .line 195
    invoke-static {p2, v5}, Lg5/a;->B(ILf1/s;)F

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    sget-object v0, Lr1/m;->a:Lr1/m;

    .line 200
    .line 201
    const/4 v1, 0x1

    .line 202
    invoke-static {v0, p1, p2, v1}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {v5}, Lp9/p1;->C(Lf1/s;)Lx/n1;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    const/4 v0, 0x0

    .line 211
    invoke-static {p1, p2, v0}, Lp9/p1;->D(Lr1/p;Lx/n1;Z)Lr1/p;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    const/16 p2, 0x3a98

    .line 216
    .line 217
    invoke-static {p2, v5}, Lg5/a;->B(ILf1/s;)F

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    const/16 v1, 0x12c

    .line 222
    .line 223
    invoke-static {v1, v5}, Lg5/a;->B(ILf1/s;)F

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-static {p1, v1, p2}, Landroidx/compose/foundation/layout/c;->c(Lr1/p;FF)Lr1/p;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    const p1, 0x4c5de2

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, p1}, Lf1/s;->W(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    sget-object p2, Lf1/n;->a:Lf1/w0;

    .line 242
    .line 243
    if-ne p1, p2, :cond_9

    .line 244
    .line 245
    new-instance p1, La8/q;

    .line 246
    .line 247
    const/4 p2, 0x0

    .line 248
    iget-object v1, p0, La8/p;->b:Lp1/p;

    .line 249
    .line 250
    invoke-direct {p1, p2, v1}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, p1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_9
    move-object v6, p1

    .line 257
    check-cast v6, Lf9/k;

    .line 258
    .line 259
    invoke-virtual {v5, v0}, Lf1/s;->p(Z)V

    .line 260
    .line 261
    .line 262
    const/high16 v0, 0x30000000

    .line 263
    .line 264
    const/16 v1, 0x1fe

    .line 265
    .line 266
    const/4 v2, 0x0

    .line 267
    const/4 v3, 0x0

    .line 268
    const/4 v4, 0x0

    .line 269
    const/4 v7, 0x0

    .line 270
    const/4 v9, 0x0

    .line 271
    const/4 v10, 0x0

    .line 272
    const/4 v11, 0x0

    .line 273
    invoke-static/range {v0 .. v11}, Lc7/a;->b(IILd0/g;Ld0/h0;Lf0/u;Lf1/s;Lf9/k;Lr1/f;Lr1/p;Lx/h;Lz/h;Z)V

    .line 274
    .line 275
    .line 276
    :goto_7
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 277
    .line 278
    return-object p1

    .line 279
    :pswitch_3
    check-cast p1, Lf1/s;

    .line 280
    .line 281
    check-cast p2, Ljava/lang/Number;

    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    and-int/lit8 p2, p2, 0x3

    .line 288
    .line 289
    const/4 v0, 0x2

    .line 290
    if-ne p2, v0, :cond_b

    .line 291
    .line 292
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-nez p2, :cond_a

    .line 297
    .line 298
    goto :goto_8

    .line 299
    :cond_a
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 300
    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_b
    :goto_8
    const p2, 0x4c5de2

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 314
    .line 315
    if-ne p2, v0, :cond_c

    .line 316
    .line 317
    new-instance p2, La8/o;

    .line 318
    .line 319
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, La8/p;->b:Lp1/p;

    .line 321
    .line 322
    invoke-direct {p2, v1, v0}, La8/o;-><init>(Lp1/p;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    :cond_c
    check-cast p2, Lf9/a;

    .line 329
    .line 330
    const/4 v0, 0x0

    .line 331
    invoke-virtual {p1, v0}, Lf1/s;->p(Z)V

    .line 332
    .line 333
    .line 334
    const/16 v0, 0x36

    .line 335
    .line 336
    const-string v1, "\u6e05\u7a7a"

    .line 337
    .line 338
    invoke-static {v1, p2, p1, v0}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 339
    .line 340
    .line 341
    :goto_9
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 342
    .line 343
    return-object p1

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
