.class public final Lc1/n;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/n;->a:I

    iput-object p2, p0, Lc1/n;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lr2/a;II)V
    .locals 0

    .line 2
    iput p3, p0, Lc1/n;->a:I

    iput-object p1, p0, Lc1/n;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lc1/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    check-cast p2, Ly2/m;

    .line 13
    .line 14
    iget-object v0, p0, Lc1/n;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lt1/c;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lt1/c;->p(ILy2/m;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 25
    .line 26
    check-cast p2, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lc1/n;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p2, Lr3/v;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Lf1/b;->y(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2, v0, p1}, Lr3/v;->a(ILf1/s;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_1
    check-cast p1, Lf1/s;

    .line 47
    .line 48
    check-cast p2, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lc1/n;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Lr3/r;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-static {v0}, Lf1/b;->y(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p2, v0, p1}, Lr3/r;->a(ILf1/s;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_2
    check-cast p1, Lf1/s;

    .line 69
    .line 70
    check-cast p2, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    and-int/lit8 v0, p2, 0x3

    .line 77
    .line 78
    const/4 v1, 0x2

    .line 79
    const/4 v2, 0x1

    .line 80
    const/4 v3, 0x0

    .line 81
    if-eq v0, v1, :cond_0

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    and-int/2addr p2, v2

    .line 87
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 98
    .line 99
    if-ne p2, v0, :cond_1

    .line 100
    .line 101
    sget-object p2, Lr3/d;->b:Lr3/d;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    check-cast p2, Lf9/k;

    .line 107
    .line 108
    new-instance v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 109
    .line 110
    invoke-direct {v0, p2, v3}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lf9/k;Z)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lc1/n;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p2, Lf1/b1;

    .line 116
    .line 117
    invoke-interface {p2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lf9/n;

    .line 122
    .line 123
    invoke-static {v0, p2, p1, v3}, Lp9/q;->h(Lr1/p;Lf9/n;Lf1/s;I)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 128
    .line 129
    .line 130
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 131
    .line 132
    return-object p1

    .line 133
    :pswitch_3
    check-cast p1, Lf1/s;

    .line 134
    .line 135
    check-cast p2, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lc1/n;->b:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p2, Lr2/h1;

    .line 143
    .line 144
    const/4 v0, 0x1

    .line 145
    invoke-static {v0}, Lf1/b;->y(I)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {p2, v0, p1}, Lr2/h1;->a(ILf1/s;)V

    .line 150
    .line 151
    .line 152
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 153
    .line 154
    return-object p1

    .line 155
    :pswitch_4
    check-cast p1, Lf1/s;

    .line 156
    .line 157
    check-cast p2, Ljava/lang/Number;

    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    and-int/lit8 v0, p2, 0x3

    .line 164
    .line 165
    const/4 v1, 0x2

    .line 166
    const/4 v2, 0x0

    .line 167
    const/4 v3, 0x1

    .line 168
    if-eq v0, v1, :cond_3

    .line 169
    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_2

    .line 172
    :cond_3
    const/4 v0, 0x0

    .line 173
    :goto_2
    and-int/2addr p2, v3

    .line 174
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_4

    .line 179
    .line 180
    iget-object p2, p0, Lc1/n;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p2, Lr2/a;

    .line 183
    .line 184
    invoke-virtual {p2, v2, p1}, Lr2/a;->a(ILf1/s;)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_4
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 189
    .line 190
    .line 191
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 192
    .line 193
    return-object p1

    .line 194
    :pswitch_5
    check-cast p1, Lr1/p;

    .line 195
    .line 196
    check-cast p2, Lr1/n;

    .line 197
    .line 198
    iget-object v0, p0, Lc1/n;->b:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Lf1/s;

    .line 201
    .line 202
    instance-of v1, p2, Lr1/k;

    .line 203
    .line 204
    if-eqz v1, :cond_5

    .line 205
    .line 206
    check-cast p2, Lr1/k;

    .line 207
    .line 208
    iget-object p2, p2, Lr1/k;->a:Lf9/o;

    .line 209
    .line 210
    const/4 v1, 0x3

    .line 211
    invoke-static {v1, p2}, Lg9/b0;->d(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    const/4 v1, 0x0

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    sget-object v2, Lr1/m;->a:Lr1/m;

    .line 220
    .line 221
    invoke-interface {p2, v2, v0, v1}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    check-cast p2, Lr1/p;

    .line 226
    .line 227
    invoke-static {v0, p2}, Lr1/a;->b(Lf1/s;Lr1/p;)Lr1/p;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    :cond_5
    invoke-interface {p1, p2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    return-object p1

    .line 236
    :pswitch_6
    check-cast p1, Lf1/s;

    .line 237
    .line 238
    check-cast p2, Ljava/lang/Number;

    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    and-int/lit8 p2, p2, 0x3

    .line 245
    .line 246
    const/4 v0, 0x2

    .line 247
    if-ne p2, v0, :cond_7

    .line 248
    .line 249
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 250
    .line 251
    .line 252
    move-result p2

    .line 253
    if-nez p2, :cond_6

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_6
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_7
    :goto_4
    iget-object p2, p0, Lc1/n;->b:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast p2, Ln1/c;

    .line 263
    .line 264
    sget-object v0, Ld0/h;->c:Ld0/b;

    .line 265
    .line 266
    sget-object v1, Lr1/c;->m:Lr1/f;

    .line 267
    .line 268
    const/4 v2, 0x0

    .line 269
    invoke-static {v0, v1, p1, v2}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {p1}, Lf1/b;->p(Lf1/s;)I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    sget-object v3, Lr1/m;->a:Lr1/m;

    .line 282
    .line 283
    invoke-static {p1, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    sget-object v4, Lq2/j;->d0:Lq2/i;

    .line 288
    .line 289
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    sget-object v4, Lq2/i;->b:Lq2/a0;

    .line 293
    .line 294
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 295
    .line 296
    .line 297
    iget-boolean v5, p1, Lf1/s;->S:Z

    .line 298
    .line 299
    if-eqz v5, :cond_8

    .line 300
    .line 301
    invoke-virtual {p1, v4}, Lf1/s;->k(Lf9/a;)V

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_8
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 306
    .line 307
    .line 308
    :goto_5
    sget-object v4, Lq2/i;->e:Lq2/h;

    .line 309
    .line 310
    invoke-static {p1, v4, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 314
    .line 315
    invoke-static {p1, v0, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 319
    .line 320
    iget-boolean v2, p1, Lf1/s;->S:Z

    .line 321
    .line 322
    if-nez v2, :cond_9

    .line 323
    .line 324
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-static {v2, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-nez v2, :cond_a

    .line 337
    .line 338
    :cond_9
    invoke-static {v1, p1, v1, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 339
    .line 340
    .line 341
    :cond_a
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 342
    .line 343
    invoke-static {p1, v0, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    const/4 v0, 0x6

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    sget-object v1, Ld0/t;->a:Ld0/t;

    .line 352
    .line 353
    invoke-virtual {p2, v1, p1, v0}, Ln1/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    const/4 p2, 0x1

    .line 357
    invoke-virtual {p1, p2}, Lf1/s;->p(Z)V

    .line 358
    .line 359
    .line 360
    :goto_6
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 361
    .line 362
    return-object p1

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
