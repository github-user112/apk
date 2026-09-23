.class public final Lz/e0;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:Lg9/x;

.field public g:Lg9/x;

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lz/f0;


# direct methods
.method public constructor <init>(Lg9/x;Lz/f0;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz/e0;->e:I

    .line 1
    iput-object p1, p0, Lz/e0;->g:Lg9/x;

    iput-object p2, p0, Lz/e0;->j:Lz/f0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lz/f0;Lw8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz/e0;->e:I

    .line 2
    iput-object p1, p0, Lz/e0;->j:Lz/f0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lz/e0;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lac/w;

    .line 7
    .line 8
    check-cast p2, Lw8/c;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lz/e0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lz/e0;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lz/e0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, Lf9/k;

    .line 24
    .line 25
    check-cast p2, Lw8/c;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lz/e0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lz/e0;

    .line 32
    .line 33
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lz/e0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    iget v0, p0, Lz/e0;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lz/e0;

    .line 7
    .line 8
    iget-object v1, p0, Lz/e0;->j:Lz/f0;

    .line 9
    .line 10
    invoke-direct {v0, v1, p2}, Lz/e0;-><init>(Lz/f0;Lw8/c;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lz/e0;->i:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lz/e0;

    .line 17
    .line 18
    iget-object v1, p0, Lz/e0;->g:Lg9/x;

    .line 19
    .line 20
    iget-object v2, p0, Lz/e0;->j:Lz/f0;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2, p2}, Lz/e0;-><init>(Lg9/x;Lz/f0;Lw8/c;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, v0, Lz/e0;->i:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lz/e0;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lz/e0;->h:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lz/e0;->j:Lz/f0;

    .line 10
    .line 11
    sget-object v3, Lx8/a;->a:Lx8/a;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_1

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :pswitch_0
    iget-object v0, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lac/w;

    .line 27
    .line 28
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :pswitch_1
    iget-object v0, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lac/w;

    .line 35
    .line 36
    :goto_0
    :try_start_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    nop

    .line 41
    goto/16 :goto_7

    .line 42
    .line 43
    :pswitch_2
    iget-object v0, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lac/w;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :goto_1
    move-object v5, v0

    .line 49
    goto :goto_2

    .line 50
    :pswitch_3
    iget-object v0, p0, Lz/e0;->f:Lg9/x;

    .line 51
    .line 52
    iget-object v4, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v4, Lac/w;

    .line 55
    .line 56
    :try_start_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    .line 59
    :cond_1
    move-object v5, v4

    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :catch_1
    nop

    .line 63
    move-object v0, v4

    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :pswitch_4
    iget-object v0, p0, Lz/e0;->f:Lg9/x;

    .line 67
    .line 68
    iget-object v4, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, Lac/w;

    .line 71
    .line 72
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_5

    .line 76
    :pswitch_5
    iget-object v0, p0, Lz/e0;->g:Lg9/x;

    .line 77
    .line 78
    iget-object v4, p0, Lz/e0;->f:Lg9/x;

    .line 79
    .line 80
    iget-object v5, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v5, Lac/w;

    .line 83
    .line 84
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :pswitch_6
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lac/w;

    .line 94
    .line 95
    move-object v5, p1

    .line 96
    :cond_2
    :goto_2
    invoke-static {v5}, Lac/z;->p(Lac/w;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    new-instance v0, Lg9/x;

    .line 103
    .line 104
    invoke-direct {v0}, Lg9/x;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object p1, v2, Lz/f0;->u:Lcc/h;

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    iput-object v5, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v0, p0, Lz/e0;->f:Lg9/x;

    .line 114
    .line 115
    iput-object v0, p0, Lz/e0;->g:Lg9/x;

    .line 116
    .line 117
    const/4 v4, 0x1

    .line 118
    iput v4, p0, Lz/e0;->h:I

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Lcc/h;->t(Lw8/c;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ne p1, v3, :cond_3

    .line 125
    .line 126
    goto/16 :goto_8

    .line 127
    .line 128
    :cond_3
    move-object v4, v0

    .line 129
    :goto_3
    check-cast p1, Lz/o;

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_4
    move-object v4, v0

    .line 133
    move-object p1, v1

    .line 134
    :goto_4
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 135
    .line 136
    iget-object p1, v4, Lg9/x;->b:Ljava/lang/Object;

    .line 137
    .line 138
    instance-of v0, p1, Lz/m;

    .line 139
    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    check-cast p1, Lz/m;

    .line 143
    .line 144
    iput-object v5, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v4, p0, Lz/e0;->f:Lg9/x;

    .line 147
    .line 148
    iput-object v1, p0, Lz/e0;->g:Lg9/x;

    .line 149
    .line 150
    const/4 v0, 0x2

    .line 151
    iput v0, p0, Lz/e0;->h:I

    .line 152
    .line 153
    invoke-static {v2, p1, p0}, Lz/f0;->E0(Lz/f0;Lz/m;Ly8/c;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-ne p1, v3, :cond_5

    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_5
    move-object v0, v4

    .line 161
    move-object v4, v5

    .line 162
    :goto_5
    :try_start_2
    new-instance p1, Lz/e0;

    .line 163
    .line 164
    invoke-direct {p1, v0, v2, v1}, Lz/e0;-><init>(Lg9/x;Lz/f0;Lw8/c;)V

    .line 165
    .line 166
    .line 167
    iput-object v4, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 168
    .line 169
    iput-object v0, p0, Lz/e0;->f:Lg9/x;

    .line 170
    .line 171
    const/4 v5, 0x3

    .line 172
    iput v5, p0, Lz/e0;->h:I

    .line 173
    .line 174
    invoke-virtual {v2, p1, p0}, Lz/f0;->H0(Lz/e0;Lz/e0;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    if-ne p1, v3, :cond_1

    .line 179
    .line 180
    goto :goto_8

    .line 181
    :goto_6
    :try_start_3
    iget-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 182
    .line 183
    instance-of v0, p1, Lz/n;

    .line 184
    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    check-cast p1, Lz/n;

    .line 188
    .line 189
    iput-object v5, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 190
    .line 191
    iput-object v1, p0, Lz/e0;->f:Lg9/x;

    .line 192
    .line 193
    const/4 v0, 0x4

    .line 194
    iput v0, p0, Lz/e0;->h:I

    .line 195
    .line 196
    invoke-static {v2, p1, p0}, Lz/f0;->F0(Lz/f0;Lz/n;Ly8/c;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    if-ne p1, v3, :cond_2

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :catch_2
    nop

    .line 204
    move-object v0, v5

    .line 205
    goto :goto_7

    .line 206
    :cond_6
    instance-of p1, p1, Lz/k;

    .line 207
    .line 208
    if-eqz p1, :cond_2

    .line 209
    .line 210
    iput-object v5, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v1, p0, Lz/e0;->f:Lg9/x;

    .line 213
    .line 214
    const/4 p1, 0x5

    .line 215
    iput p1, p0, Lz/e0;->h:I

    .line 216
    .line 217
    invoke-static {v2, p0}, Lz/f0;->D0(Lz/f0;Ly8/c;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 221
    if-ne p1, v3, :cond_2

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :goto_7
    iput-object v0, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 225
    .line 226
    iput-object v1, p0, Lz/e0;->f:Lg9/x;

    .line 227
    .line 228
    const/4 p1, 0x6

    .line 229
    iput p1, p0, Lz/e0;->h:I

    .line 230
    .line 231
    invoke-static {v2, p0}, Lz/f0;->D0(Lz/f0;Ly8/c;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    if-ne p1, v3, :cond_0

    .line 236
    .line 237
    goto :goto_8

    .line 238
    :cond_7
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 239
    .line 240
    :goto_8
    return-object v3

    .line 241
    :pswitch_7
    iget-object v0, p0, Lz/e0;->g:Lg9/x;

    .line 242
    .line 243
    iget v1, p0, Lz/e0;->h:I

    .line 244
    .line 245
    const/4 v2, 0x1

    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    if-ne v1, v2, :cond_8

    .line 249
    .line 250
    iget-object v1, p0, Lz/e0;->f:Lg9/x;

    .line 251
    .line 252
    iget-object v3, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v3, Lf9/k;

    .line 255
    .line 256
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto :goto_b

    .line 260
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 261
    .line 262
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 263
    .line 264
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :cond_9
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast p1, Lf9/k;

    .line 274
    .line 275
    move-object v3, p1

    .line 276
    :goto_9
    iget-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 277
    .line 278
    instance-of v1, p1, Lz/n;

    .line 279
    .line 280
    if-nez v1, :cond_e

    .line 281
    .line 282
    instance-of v1, p1, Lz/k;

    .line 283
    .line 284
    if-nez v1, :cond_e

    .line 285
    .line 286
    instance-of v1, p1, Lz/l;

    .line 287
    .line 288
    const/4 v4, 0x0

    .line 289
    if-eqz v1, :cond_a

    .line 290
    .line 291
    check-cast p1, Lz/l;

    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_a
    move-object p1, v4

    .line 295
    :goto_a
    if-eqz p1, :cond_b

    .line 296
    .line 297
    invoke-interface {v3, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    :cond_b
    iget-object p1, p0, Lz/e0;->j:Lz/f0;

    .line 301
    .line 302
    iget-object p1, p1, Lz/f0;->u:Lcc/h;

    .line 303
    .line 304
    if-eqz p1, :cond_d

    .line 305
    .line 306
    iput-object v3, p0, Lz/e0;->i:Ljava/lang/Object;

    .line 307
    .line 308
    iput-object v0, p0, Lz/e0;->f:Lg9/x;

    .line 309
    .line 310
    iput v2, p0, Lz/e0;->h:I

    .line 311
    .line 312
    invoke-virtual {p1, p0}, Lcc/h;->t(Lw8/c;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 317
    .line 318
    if-ne p1, v1, :cond_c

    .line 319
    .line 320
    goto :goto_d

    .line 321
    :cond_c
    move-object v1, v0

    .line 322
    :goto_b
    move-object v4, p1

    .line 323
    check-cast v4, Lz/o;

    .line 324
    .line 325
    goto :goto_c

    .line 326
    :cond_d
    move-object v1, v0

    .line 327
    :goto_c
    iput-object v4, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_e
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 331
    .line 332
    :goto_d
    return-object v1

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :pswitch_data_1
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
