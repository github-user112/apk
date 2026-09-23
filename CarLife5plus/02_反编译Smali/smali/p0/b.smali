.class public final Lp0/b;
.super Ly8/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lw8/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lp0/b;->c:I

    .line 2
    .line 3
    iput-object p1, p0, Lp0/b;->f:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Ly8/h;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lp0/b;->c:I

    .line 2
    .line 3
    check-cast p1, Lk2/m0;

    .line 4
    .line 5
    check-cast p2, Lw8/c;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lp0/b;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lp0/b;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lp0/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lp0/b;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lp0/b;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lp0/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lp0/b;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lp0/b;

    .line 42
    .line 43
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lp0/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    iget v0, p0, Lp0/b;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lp0/b;

    .line 7
    .line 8
    iget-object v1, p0, Lp0/b;->f:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lx/h;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v0, v1, p2, v2}, Lp0/b;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Lp0/b;->e:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Lp0/b;

    .line 20
    .line 21
    iget-object v1, p0, Lp0/b;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lf9/k;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v0, v1, p2, v2}, Lp0/b;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, v0, Lp0/b;->e:Ljava/lang/Object;

    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_1
    new-instance v0, Lp0/b;

    .line 33
    .line 34
    iget-object v1, p0, Lp0/b;->f:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lf9/k;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, v1, p2, v2}, Lp0/b;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lp0/b;->e:Ljava/lang/Object;

    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lp0/b;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp0/b;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx/h;

    .line 9
    .line 10
    iget v1, p0, Lp0/b;->d:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x1

    .line 14
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lk2/m0;

    .line 25
    .line 26
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    iget-object v1, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lk2/m0;

    .line 41
    .line 42
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v1, p1

    .line 52
    check-cast v1, Lk2/m0;

    .line 53
    .line 54
    iput-object v1, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 55
    .line 56
    iput v3, p0, Lp0/b;->d:I

    .line 57
    .line 58
    invoke-static {v1, p0, v2}, Lz/d2;->c(Lk2/m0;Ly8/h;I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v4, :cond_3

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_3
    :goto_0
    check-cast p1, Lk2/w;

    .line 67
    .line 68
    iget-wide v5, p1, Lk2/w;->a:J

    .line 69
    .line 70
    iput-wide v5, v0, Lx/h;->h:J

    .line 71
    .line 72
    iget-wide v5, p1, Lk2/w;->c:J

    .line 73
    .line 74
    iput-wide v5, v0, Lx/h;->b:J

    .line 75
    .line 76
    :cond_4
    iput-object v1, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 77
    .line 78
    iput v2, p0, Lp0/b;->d:I

    .line 79
    .line 80
    invoke-static {v1, p0}, La2/f;->r(Lk2/m0;Ly8/a;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v4, :cond_5

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_5
    :goto_1
    check-cast p1, Lk2/o;

    .line 88
    .line 89
    iget-object p1, p1, Lk2/o;->a:Ljava/lang/Object;

    .line 90
    .line 91
    new-instance v3, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    :goto_2
    if-ge v7, v5, :cond_7

    .line 107
    .line 108
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    move-object v9, v8

    .line 113
    check-cast v9, Lk2/w;

    .line 114
    .line 115
    iget-boolean v9, v9, Lk2/w;->d:Z

    .line 116
    .line 117
    if-eqz v9, :cond_6

    .line 118
    .line 119
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    :goto_3
    if-ge v6, p1, :cond_9

    .line 130
    .line 131
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    move-object v7, v5

    .line 136
    check-cast v7, Lk2/w;

    .line 137
    .line 138
    iget-wide v7, v7, Lk2/w;->a:J

    .line 139
    .line 140
    iget-wide v9, v0, Lx/h;->h:J

    .line 141
    .line 142
    invoke-static {v7, v8, v9, v10}, Lk2/v;->d(JJ)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_8

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_9
    const/4 v5, 0x0

    .line 153
    :goto_4
    check-cast v5, Lk2/w;

    .line 154
    .line 155
    if-nez v5, :cond_a

    .line 156
    .line 157
    invoke-static {v3}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    move-object v5, p1

    .line 162
    check-cast v5, Lk2/w;

    .line 163
    .line 164
    :cond_a
    if-eqz v5, :cond_b

    .line 165
    .line 166
    iget-wide v6, v5, Lk2/w;->a:J

    .line 167
    .line 168
    iput-wide v6, v0, Lx/h;->h:J

    .line 169
    .line 170
    iget-wide v5, v5, Lk2/w;->c:J

    .line 171
    .line 172
    iput-wide v5, v0, Lx/h;->b:J

    .line 173
    .line 174
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_4

    .line 179
    .line 180
    const-wide/16 v1, -0x1

    .line 181
    .line 182
    iput-wide v1, v0, Lx/h;->h:J

    .line 183
    .line 184
    sget-object v4, Lr8/z;->a:Lr8/z;

    .line 185
    .line 186
    :goto_5
    return-object v4

    .line 187
    :pswitch_0
    iget v0, p0, Lp0/b;->d:I

    .line 188
    .line 189
    const/4 v1, 0x1

    .line 190
    if-eqz v0, :cond_d

    .line 191
    .line 192
    if-ne v0, v1, :cond_c

    .line 193
    .line 194
    iget-object v0, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Lk2/m0;

    .line 197
    .line 198
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 203
    .line 204
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 205
    .line 206
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_d
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p1, Lk2/m0;

    .line 216
    .line 217
    move-object v0, p1

    .line 218
    :goto_6
    iput-object v0, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 219
    .line 220
    iput v1, p0, Lp0/b;->d:I

    .line 221
    .line 222
    sget-object p1, Lk2/p;->a:Lk2/p;

    .line 223
    .line 224
    invoke-virtual {v0, p1, p0}, Lk2/m0;->b(Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    sget-object v2, Lx8/a;->a:Lx8/a;

    .line 229
    .line 230
    if-ne p1, v2, :cond_e

    .line 231
    .line 232
    return-object v2

    .line 233
    :cond_e
    :goto_7
    check-cast p1, Lk2/o;

    .line 234
    .line 235
    iget-object v2, p0, Lp0/b;->f:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v2, Lf9/k;

    .line 238
    .line 239
    invoke-static {p1}, Lw0/y0;->v(Lk2/o;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    xor-int/2addr p1, v1

    .line 244
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-interface {v2, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :pswitch_1
    iget v0, p0, Lp0/b;->d:I

    .line 253
    .line 254
    const/4 v1, 0x2

    .line 255
    const/4 v2, 0x1

    .line 256
    sget-object v3, Lx8/a;->a:Lx8/a;

    .line 257
    .line 258
    if-eqz v0, :cond_11

    .line 259
    .line 260
    if-eq v0, v2, :cond_10

    .line 261
    .line 262
    if-ne v0, v1, :cond_f

    .line 263
    .line 264
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    goto :goto_9

    .line 268
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 269
    .line 270
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 271
    .line 272
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p1

    .line 276
    :cond_10
    iget-object v0, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Lk2/m0;

    .line 279
    .line 280
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_11
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 288
    .line 289
    move-object v0, p1

    .line 290
    check-cast v0, Lk2/m0;

    .line 291
    .line 292
    iput-object v0, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 293
    .line 294
    iput v2, p0, Lp0/b;->d:I

    .line 295
    .line 296
    invoke-static {v0, p0}, Lg5/a;->u(Lk2/m0;Ly8/a;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    if-ne p1, v3, :cond_12

    .line 301
    .line 302
    goto :goto_a

    .line 303
    :cond_12
    :goto_8
    check-cast p1, Lk2/w;

    .line 304
    .line 305
    invoke-virtual {p1}, Lk2/w;->a()V

    .line 306
    .line 307
    .line 308
    iget-object v2, p0, Lp0/b;->f:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v2, Lf9/k;

    .line 311
    .line 312
    iget-wide v4, p1, Lk2/w;->c:J

    .line 313
    .line 314
    new-instance p1, Lx1/b;

    .line 315
    .line 316
    invoke-direct {p1, v4, v5}, Lx1/b;-><init>(J)V

    .line 317
    .line 318
    .line 319
    invoke-interface {v2, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    const/4 p1, 0x0

    .line 323
    iput-object p1, p0, Lp0/b;->e:Ljava/lang/Object;

    .line 324
    .line 325
    iput v1, p0, Lp0/b;->d:I

    .line 326
    .line 327
    sget-object p1, Lk2/p;->b:Lk2/p;

    .line 328
    .line 329
    invoke-static {v0, p1, p0}, Lz/d2;->i(Lk2/m0;Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    if-ne p1, v3, :cond_13

    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_13
    :goto_9
    check-cast p1, Lk2/w;

    .line 337
    .line 338
    if-eqz p1, :cond_14

    .line 339
    .line 340
    invoke-virtual {p1}, Lk2/w;->a()V

    .line 341
    .line 342
    .line 343
    :cond_14
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 344
    .line 345
    :goto_a
    return-object v3

    .line 346
    nop

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
