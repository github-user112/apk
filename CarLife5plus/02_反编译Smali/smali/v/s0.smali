.class public final Lv/s0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Landroid/support/v4/media/session/t;

.field public final b:Lf1/k1;

.field public final c:Lf1/k1;

.field public final d:Lf1/i1;

.field public final e:Lf1/i1;

.field public final f:Lf1/k1;

.field public final g:Lp1/p;

.field public final h:Lp1/p;

.field public final i:Lf1/k1;


# direct methods
.method public constructor <init>(Ljava/lang/Enum;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/support/v4/media/session/t;-><init>(Ljava/lang/Enum;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv/s0;->a:Landroid/support/v4/media/session/t;

    .line 10
    .line 11
    invoke-virtual {p0}, Lv/s0;->c()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lv/s0;->b:Lf1/k1;

    .line 20
    .line 21
    new-instance p1, Lv/o0;

    .line 22
    .line 23
    invoke-virtual {p0}, Lv/s0;->c()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lv/s0;->c()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {p1, v0, v1}, Lv/o0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lv/s0;->c:Lf1/k1;

    .line 39
    .line 40
    new-instance p1, Lf1/i1;

    .line 41
    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    invoke-direct {p1, v0, v1}, Lf1/i1;-><init>(J)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lv/s0;->d:Lf1/i1;

    .line 48
    .line 49
    new-instance p1, Lf1/i1;

    .line 50
    .line 51
    const-wide/high16 v0, -0x8000000000000000L

    .line 52
    .line 53
    invoke-direct {p1, v0, v1}, Lf1/i1;-><init>(J)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lv/s0;->e:Lf1/i1;

    .line 57
    .line 58
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lv/s0;->f:Lf1/k1;

    .line 65
    .line 66
    new-instance v0, Lp1/p;

    .line 67
    .line 68
    invoke-direct {v0}, Lp1/p;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lv/s0;->g:Lp1/p;

    .line 72
    .line 73
    new-instance v0, Lp1/p;

    .line 74
    .line 75
    invoke-direct {v0}, Lp1/p;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lv/s0;->h:Lp1/p;

    .line 79
    .line 80
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lv/s0;->i:Lf1/k1;

    .line 85
    .line 86
    new-instance p1, Lv/n0;

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-direct {p1, p0, v0}, Lv/n0;-><init>(Lv/s0;I)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Enum;Lf1/s;I)V
    .locals 10

    .line 1
    const v0, -0x59064cff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    and-int/lit8 v0, p3, 0x8

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v0, 0x2

    .line 29
    :goto_1
    or-int/2addr v0, p3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v0, p3

    .line 32
    :goto_2
    and-int/lit8 v1, p3, 0x30

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {p2, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const/16 v1, 0x20

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    const/16 v1, 0x10

    .line 48
    .line 49
    :goto_3
    or-int/2addr v0, v1

    .line 50
    :cond_4
    and-int/lit8 v1, v0, 0x13

    .line 51
    .line 52
    const/16 v3, 0x12

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    const/4 v5, 0x0

    .line 56
    if-eq v1, v3, :cond_5

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    goto :goto_4

    .line 60
    :cond_5
    const/4 v1, 0x0

    .line 61
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 62
    .line 63
    invoke-virtual {p2, v3, v1}, Lf1/s;->N(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_13

    .line 68
    .line 69
    iget-object v1, p0, Lv/s0;->i:Lf1/k1;

    .line 70
    .line 71
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_12

    .line 82
    .line 83
    const v1, 0x1bc87041

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lv/s0;->b:Lf1/k1;

    .line 90
    .line 91
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v3, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_9

    .line 100
    .line 101
    new-instance v3, Lv/o0;

    .line 102
    .line 103
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-direct {v3, v6, p1}, Lv/o0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v6, p0, Lv/s0;->c:Lf1/k1;

    .line 111
    .line 112
    invoke-virtual {v6, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lv/s0;->c()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v3, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-nez v3, :cond_6

    .line 128
    .line 129
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iget-object v6, p0, Lv/s0;->a:Landroid/support/v4/media/session/t;

    .line 134
    .line 135
    iget-object v6, v6, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v6, Lf1/k1;

    .line 138
    .line 139
    invoke-virtual {v6, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    invoke-virtual {v1, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lv/s0;->e:Lf1/i1;

    .line 146
    .line 147
    iget-object v3, v1, Lf1/i1;->b:Lf1/n2;

    .line 148
    .line 149
    invoke-static {v3, v1}, Lp1/l;->u(Lp1/b0;Lp1/z;)Lp1/b0;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lf1/n2;

    .line 154
    .line 155
    iget-wide v6, v1, Lf1/n2;->c:J

    .line 156
    .line 157
    const-wide/high16 v8, -0x8000000000000000L

    .line 158
    .line 159
    cmp-long v1, v6, v8

    .line 160
    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    const/4 v1, 0x1

    .line 164
    goto :goto_5

    .line 165
    :cond_7
    const/4 v1, 0x0

    .line 166
    :goto_5
    if-nez v1, :cond_8

    .line 167
    .line 168
    iget-object v1, p0, Lv/s0;->f:Lf1/k1;

    .line 169
    .line 170
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {v1, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_8
    iget-object v1, p0, Lv/s0;->g:Lp1/p;

    .line 176
    .line 177
    invoke-virtual {v1}, Lp1/p;->size()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    const/4 v6, 0x0

    .line 182
    :goto_6
    if-ge v6, v3, :cond_9

    .line 183
    .line 184
    invoke-virtual {v1, v6}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    check-cast v7, Lv/p0;

    .line 189
    .line 190
    const/high16 v8, -0x40000000    # -2.0f

    .line 191
    .line 192
    iget-object v7, v7, Lv/p0;->f:Lf1/g1;

    .line 193
    .line 194
    invoke-virtual {v7, v8}, Lf1/g1;->g(F)V

    .line 195
    .line 196
    .line 197
    add-int/lit8 v6, v6, 0x1

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_9
    and-int/lit8 v0, v0, 0x70

    .line 201
    .line 202
    if-ne v0, v2, :cond_a

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_7

    .line 206
    :cond_a
    const/4 v1, 0x0

    .line 207
    :goto_7
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    sget-object v6, Lf1/n;->a:Lf1/w0;

    .line 212
    .line 213
    if-nez v1, :cond_b

    .line 214
    .line 215
    if-ne v3, v6, :cond_c

    .line 216
    .line 217
    :cond_b
    new-instance v1, Lv/n0;

    .line 218
    .line 219
    const/4 v3, 0x0

    .line 220
    invoke-direct {v1, p0, v3}, Lv/n0;-><init>(Lv/s0;I)V

    .line 221
    .line 222
    .line 223
    invoke-static {v1}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {p2, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_c
    check-cast v3, Lf1/v2;

    .line 231
    .line 232
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_11

    .line 243
    .line 244
    const v1, 0x1bceaa74    # 3.4189994E-22f

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    if-ne v1, v6, :cond_d

    .line 255
    .line 256
    invoke-static {p2}, Lf1/b;->l(Lf1/s;)Lac/w;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {p2, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_d
    check-cast v1, Lac/w;

    .line 264
    .line 265
    invoke-virtual {p2, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-ne v0, v2, :cond_e

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_e
    const/4 v4, 0x0

    .line 273
    :goto_8
    or-int v0, v3, v4

    .line 274
    .line 275
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    if-nez v0, :cond_f

    .line 280
    .line 281
    if-ne v2, v6, :cond_10

    .line 282
    .line 283
    :cond_f
    new-instance v2, La8/v;

    .line 284
    .line 285
    const/16 v0, 0x11

    .line 286
    .line 287
    invoke-direct {v2, v0, v1, p0}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_10
    check-cast v2, Lf9/k;

    .line 294
    .line 295
    invoke-static {v1, p0, v2, p2}, Lf1/b;->d(Ljava/lang/Object;Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 299
    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_11
    const v0, 0x1be1a041

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 309
    .line 310
    .line 311
    :goto_9
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 312
    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_12
    const v0, 0x1be1c701

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2, v5}, Lf1/s;->p(Z)V

    .line 322
    .line 323
    .line 324
    goto :goto_a

    .line 325
    :cond_13
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 326
    .line 327
    .line 328
    :goto_a
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    if-eqz p2, :cond_14

    .line 333
    .line 334
    new-instance v0, La8/g;

    .line 335
    .line 336
    const/16 v1, 0x9

    .line 337
    .line 338
    invoke-direct {v0, p3, v1, p0, p1}, La8/g;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 342
    .line 343
    :cond_14
    return-void
.end method

.method public final b()J
    .locals 8

    .line 1
    iget-object v0, p0, Lv/s0;->g:Lp1/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp1/p;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    :goto_0
    if-ge v5, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    check-cast v6, Lv/p0;

    .line 18
    .line 19
    iget-object v6, v6, Lv/p0;->j:Lf1/i1;

    .line 20
    .line 21
    iget-object v7, v6, Lf1/i1;->b:Lf1/n2;

    .line 22
    .line 23
    invoke-static {v7, v6}, Lp1/l;->u(Lp1/b0;Lp1/z;)Lp1/b0;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Lf1/n2;

    .line 28
    .line 29
    iget-wide v6, v6, Lf1/n2;->c:J

    .line 30
    .line 31
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lv/s0;->h:Lp1/p;

    .line 39
    .line 40
    invoke-virtual {v0}, Lp1/p;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :goto_1
    if-ge v4, v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lv/s0;

    .line 51
    .line 52
    invoke-virtual {v5}, Lv/s0;->b()J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    return-wide v2
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/s0;->a:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lf1/k1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lv/s0;->d:Lf1/i1;

    .line 2
    .line 3
    iget-object v1, v0, Lf1/i1;->b:Lf1/n2;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lp1/l;->u(Lp1/b0;Lp1/z;)Lp1/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lf1/n2;

    .line 10
    .line 11
    iget-wide v0, v0, Lf1/n2;->c:J

    .line 12
    .line 13
    return-wide v0
.end method

.method public final e()Lv/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/s0;->c:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv/o0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f(JZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lv/s0;->e:Lf1/i1;

    .line 2
    .line 3
    iget-object v1, v0, Lf1/i1;->b:Lf1/n2;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lp1/l;->u(Lp1/b0;Lp1/z;)Lp1/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lf1/n2;

    .line 10
    .line 11
    iget-wide v1, v1, Lf1/n2;->c:J

    .line 12
    .line 13
    const-wide/high16 v3, -0x8000000000000000L

    .line 14
    .line 15
    iget-object v5, p0, Lv/s0;->a:Landroid/support/v4/media/session/t;

    .line 16
    .line 17
    cmp-long v6, v1, v3

    .line 18
    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lf1/i1;->f(J)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v5, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lf1/k1;

    .line 27
    .line 28
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, v5, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lf1/k1;

    .line 37
    .line 38
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, v5, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lf1/k1;

    .line 53
    .line 54
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lv/s0;->f:Lf1/k1;

    .line 60
    .line 61
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lv/s0;->g:Lp1/p;

    .line 67
    .line 68
    invoke-virtual {v0}, Lp1/p;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v3, 0x1

    .line 74
    const/4 v4, 0x0

    .line 75
    :goto_1
    if-ge v4, v1, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lv/p0;

    .line 82
    .line 83
    iget-object v6, v5, Lv/p0;->e:Lf1/k1;

    .line 84
    .line 85
    iget-object v7, v5, Lv/p0;->e:Lf1/k1;

    .line 86
    .line 87
    invoke-virtual {v6}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_3

    .line 98
    .line 99
    if-eqz p3, :cond_2

    .line 100
    .line 101
    invoke-virtual {v5}, Lv/p0;->b()Lv/m0;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v6}, Lv/m0;->b()J

    .line 106
    .line 107
    .line 108
    move-result-wide v8

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move-wide v8, p1

    .line 111
    :goto_2
    invoke-virtual {v5}, Lv/p0;->b()Lv/m0;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v6, v8, v9}, Lv/m0;->f(J)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    iget-object v10, v5, Lv/p0;->h:Lf1/k1;

    .line 120
    .line 121
    invoke-virtual {v10, v6}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Lv/p0;->b()Lv/m0;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6, v8, v9}, Lv/m0;->d(J)Lv/p;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    iput-object v6, v5, Lv/p0;->i:Lv/p;

    .line 133
    .line 134
    invoke-virtual {v5}, Lv/p0;->b()Lv/m0;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {v5, v8, v9}, Lp9/v;->a(Lv/f;J)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_3

    .line 146
    .line 147
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v7, v5}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    invoke-virtual {v7}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_4

    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_5
    iget-object v0, p0, Lv/s0;->h:Lp1/p;

    .line 169
    .line 170
    invoke-virtual {v0}, Lp1/p;->size()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    const/4 v4, 0x0

    .line 175
    :goto_3
    if-ge v4, v1, :cond_8

    .line 176
    .line 177
    invoke-virtual {v0, v4}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Lv/s0;

    .line 182
    .line 183
    iget-object v6, v5, Lv/s0;->b:Lf1/k1;

    .line 184
    .line 185
    invoke-virtual {v6}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v5}, Lv/s0;->c()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-static {v6, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-nez v6, :cond_6

    .line 198
    .line 199
    invoke-virtual {v5, p1, p2, p3}, Lv/s0;->f(JZ)V

    .line 200
    .line 201
    .line 202
    :cond_6
    iget-object v6, v5, Lv/s0;->b:Lf1/k1;

    .line 203
    .line 204
    invoke-virtual {v6}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v5}, Lv/s0;->c()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-static {v6, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_7

    .line 217
    .line 218
    const/4 v3, 0x0

    .line 219
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_8
    if-eqz v3, :cond_9

    .line 223
    .line 224
    invoke-virtual {p0}, Lv/s0;->g()V

    .line 225
    .line 226
    .line 227
    :cond_9
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    iget-object v2, p0, Lv/s0;->e:Lf1/i1;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Lf1/i1;->f(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lv/s0;->a:Landroid/support/v4/media/session/t;

    .line 9
    .line 10
    invoke-static {v0}, Lp9/v;->y(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lv/s0;->b:Lf1/k1;

    .line 17
    .line 18
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lf1/k1;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    iget-object v3, p0, Lv/s0;->d:Lf1/i1;

    .line 32
    .line 33
    invoke-virtual {v3, v1, v2}, Lf1/i1;->f(J)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lf1/k1;

    .line 39
    .line 40
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lv/s0;->h:Lp1/p;

    .line 46
    .line 47
    invoke-virtual {v0}, Lp1/p;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    if-ge v2, v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lv/s0;

    .line 59
    .line 60
    invoke-virtual {v3}, Lv/s0;->g()V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lv/s0;->g:Lp1/p;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "Transition animation values: "

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lv/p0;

    .line 17
    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", "

    .line 30
    .line 31
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object v2
.end method
