.class public final Lz/v;
.super Ly8/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lr8/e;

.field public final synthetic i:Lr8/e;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lac/w;Lf9/o;Lf9/k;Lz/z0;Lw8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz/v;->c:I

    .line 1
    iput-object p1, p0, Lz/v;->g:Ljava/lang/Object;

    check-cast p2, Ly8/i;

    iput-object p2, p0, Lz/v;->h:Lr8/e;

    iput-object p3, p0, Lz/v;->i:Lr8/e;

    iput-object p4, p0, Lz/v;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ly8/h;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lx7/h;Ll0/p;Lu7/i;Lu7/i;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz/v;->c:I

    .line 2
    iput-object p1, p0, Lz/v;->g:Ljava/lang/Object;

    iput-object p2, p0, Lz/v;->h:Lr8/e;

    iput-object p3, p0, Lz/v;->i:Lr8/e;

    iput-object p4, p0, Lz/v;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ly8/h;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lz/v;->c:I

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
    invoke-virtual {p0, p1, p2}, Lz/v;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lz/v;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lz/v;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lz/v;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lz/v;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lz/v;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 8

    .line 1
    iget v0, p0, Lz/v;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lz/v;

    .line 7
    .line 8
    iget-object v0, p0, Lz/v;->g:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Lac/w;

    .line 12
    .line 13
    iget-object v0, p0, Lz/v;->h:Lr8/e;

    .line 14
    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Ly8/i;

    .line 17
    .line 18
    iget-object v0, p0, Lz/v;->i:Lr8/e;

    .line 19
    .line 20
    move-object v4, v0

    .line 21
    check-cast v4, Lf9/k;

    .line 22
    .line 23
    iget-object v0, p0, Lz/v;->j:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v5, v0

    .line 26
    check-cast v5, Lz/z0;

    .line 27
    .line 28
    move-object v6, p2

    .line 29
    invoke-direct/range {v1 .. v6}, Lz/v;-><init>(Lac/w;Lf9/o;Lf9/k;Lz/z0;Lw8/c;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v1, Lz/v;->e:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_0
    move-object v6, p2

    .line 36
    new-instance v2, Lz/v;

    .line 37
    .line 38
    iget-object p2, p0, Lz/v;->g:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v3, p2

    .line 41
    check-cast v3, Lx7/h;

    .line 42
    .line 43
    iget-object p2, p0, Lz/v;->h:Lr8/e;

    .line 44
    .line 45
    move-object v4, p2

    .line 46
    check-cast v4, Ll0/p;

    .line 47
    .line 48
    iget-object p2, p0, Lz/v;->i:Lr8/e;

    .line 49
    .line 50
    move-object v5, p2

    .line 51
    check-cast v5, Lu7/i;

    .line 52
    .line 53
    iget-object p2, p0, Lz/v;->j:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Lu7/i;

    .line 56
    .line 57
    move-object v7, v6

    .line 58
    move-object v6, p2

    .line 59
    invoke-direct/range {v2 .. v7}, Lz/v;-><init>(Lx7/h;Ll0/p;Lu7/i;Lu7/i;Lw8/c;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, v2, Lz/v;->e:Ljava/lang/Object;

    .line 63
    .line 64
    return-object v2

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lz/v;->c:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Lz/v;->h:Lr8/e;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    sget-object v5, Lx8/a;->a:Lx8/a;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lz/v;->g:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lac/w;

    .line 21
    .line 22
    iget-object v9, p0, Lz/v;->j:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v9, Lz/z0;

    .line 25
    .line 26
    iget v10, p0, Lz/v;->d:I

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    if-eqz v10, :cond_2

    .line 30
    .line 31
    if-eq v10, v8, :cond_1

    .line 32
    .line 33
    if-ne v10, v7, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lz/v;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lac/v0;

    .line 38
    .line 39
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object v10, v2

    .line 43
    move-object v2, p1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    iget-object v3, p0, Lz/v;->f:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lac/j1;

    .line 54
    .line 55
    iget-object v4, p0, Lz/v;->e:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lk2/m0;

    .line 58
    .line 59
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object v10, v3

    .line 63
    move-object v3, p1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lz/v;->e:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, Lk2/m0;

    .line 71
    .line 72
    sget-object v10, Lz/d2;->a:Lz/g0;

    .line 73
    .line 74
    new-instance v10, Lz/y1;

    .line 75
    .line 76
    invoke-direct {v10, v9, v6, v11}, Lz/y1;-><init>(Lz/z0;Lw8/c;I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v6, v10, v8}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    iput-object v4, p0, Lz/v;->e:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object v10, p0, Lz/v;->f:Ljava/lang/Object;

    .line 86
    .line 87
    iput v8, p0, Lz/v;->d:I

    .line 88
    .line 89
    invoke-static {v4, p0, v3}, Lz/d2;->c(Lk2/m0;Ly8/h;I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-ne v3, v5, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    :goto_0
    check-cast v3, Lk2/w;

    .line 97
    .line 98
    invoke-virtual {v3}, Lk2/w;->a()V

    .line 99
    .line 100
    .line 101
    check-cast v2, Ly8/i;

    .line 102
    .line 103
    sget-object v12, Lz/d2;->a:Lz/g0;

    .line 104
    .line 105
    if-eq v2, v12, :cond_4

    .line 106
    .line 107
    new-instance v12, Lb1/f;

    .line 108
    .line 109
    invoke-direct {v12, v2, v9, v3, v6}, Lb1/f;-><init>(Lf9/o;Lz/z0;Lk2/w;Lw8/c;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v10, v12}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 113
    .line 114
    .line 115
    :cond_4
    iput-object v10, p0, Lz/v;->e:Ljava/lang/Object;

    .line 116
    .line 117
    iput-object v6, p0, Lz/v;->f:Ljava/lang/Object;

    .line 118
    .line 119
    iput v7, p0, Lz/v;->d:I

    .line 120
    .line 121
    sget-object v2, Lk2/p;->b:Lk2/p;

    .line 122
    .line 123
    invoke-static {v4, v2, p0}, Lz/d2;->i(Lk2/m0;Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-ne v2, v5, :cond_5

    .line 128
    .line 129
    :goto_1
    move-object v1, v5

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    :goto_2
    check-cast v2, Lk2/w;

    .line 132
    .line 133
    if-nez v2, :cond_6

    .line 134
    .line 135
    new-instance v2, Lz/x1;

    .line 136
    .line 137
    invoke-direct {v2, v9, v6, v11}, Lz/x1;-><init>(Lz/z0;Lw8/c;I)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v10, v2}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    invoke-virtual {v2}, Lk2/w;->a()V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lz/x1;

    .line 148
    .line 149
    invoke-direct {v3, v9, v6, v8}, Lz/x1;-><init>(Lz/z0;Lw8/c;I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v10, v3}, Lz/d2;->g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lz/v;->i:Lr8/e;

    .line 156
    .line 157
    check-cast v0, Lf9/k;

    .line 158
    .line 159
    iget-wide v2, v2, Lk2/w;->c:J

    .line 160
    .line 161
    new-instance v4, Lx1/b;

    .line 162
    .line 163
    invoke-direct {v4, v2, v3}, Lx1/b;-><init>(J)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v0, v4}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :goto_3
    return-object v1

    .line 170
    :pswitch_0
    check-cast v2, Ll0/p;

    .line 171
    .line 172
    iget v0, p0, Lz/v;->d:I

    .line 173
    .line 174
    if-eqz v0, :cond_b

    .line 175
    .line 176
    if-eq v0, v8, :cond_9

    .line 177
    .line 178
    if-eq v0, v7, :cond_8

    .line 179
    .line 180
    if-ne v0, v3, :cond_7

    .line 181
    .line 182
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    move-object v0, p1

    .line 186
    goto/16 :goto_7

    .line 187
    .line 188
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_8
    iget-object v0, p0, Lz/v;->f:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Lg9/u;

    .line 197
    .line 198
    iget-object v4, p0, Lz/v;->e:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v4, Lk2/m0;

    .line 201
    .line 202
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    move-object v8, v4

    .line 206
    move-object v4, p1

    .line 207
    goto :goto_5

    .line 208
    :cond_9
    iget-object v0, p0, Lz/v;->e:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v0, Lk2/m0;

    .line 211
    .line 212
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    move-object v4, p1

    .line 216
    :cond_a
    move-object v8, v0

    .line 217
    goto :goto_4

    .line 218
    :cond_b
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lz/v;->e:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Lk2/m0;

    .line 224
    .line 225
    iput-object v0, p0, Lz/v;->e:Ljava/lang/Object;

    .line 226
    .line 227
    iput v8, p0, Lz/v;->d:I

    .line 228
    .line 229
    invoke-static {v0, p0, v7}, Lz/d2;->c(Lk2/m0;Ly8/h;I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    if-ne v4, v5, :cond_a

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :goto_4
    check-cast v4, Lk2/w;

    .line 237
    .line 238
    new-instance v0, Lg9/u;

    .line 239
    .line 240
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 241
    .line 242
    .line 243
    iget-wide v9, v4, Lk2/w;->a:J

    .line 244
    .line 245
    iget v11, v4, Lk2/w;->i:I

    .line 246
    .line 247
    new-instance v12, Lw7/a;

    .line 248
    .line 249
    const/4 v4, 0x4

    .line 250
    invoke-direct {v12, v4, v0}, Lw7/a;-><init>(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iput-object v8, p0, Lz/v;->e:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v0, p0, Lz/v;->f:Ljava/lang/Object;

    .line 256
    .line 257
    iput v7, p0, Lz/v;->d:I

    .line 258
    .line 259
    move-object v13, p0

    .line 260
    invoke-static/range {v8 .. v13}, Lz/y;->c(Lk2/m0;JILw7/a;Ly8/a;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    if-ne v4, v5, :cond_c

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_c
    :goto_5
    check-cast v4, Lk2/w;

    .line 268
    .line 269
    if-eqz v4, :cond_f

    .line 270
    .line 271
    sget v7, Lz/y;->a:F

    .line 272
    .line 273
    iget v0, v0, Lg9/u;->a:F

    .line 274
    .line 275
    new-instance v7, Ljava/lang/Float;

    .line 276
    .line 277
    invoke-direct {v7, v0}, Ljava/lang/Float;-><init>(F)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v4, v7}, Ll0/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    iget-wide v9, v4, Lk2/w;->a:J

    .line 284
    .line 285
    new-instance v0, Ls0/d;

    .line 286
    .line 287
    const/16 v4, 0x8

    .line 288
    .line 289
    invoke-direct {v0, v4, v2}, Ls0/d;-><init>(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    iput-object v6, p0, Lz/v;->e:Ljava/lang/Object;

    .line 293
    .line 294
    iput-object v6, p0, Lz/v;->f:Ljava/lang/Object;

    .line 295
    .line 296
    iput v3, p0, Lz/v;->d:I

    .line 297
    .line 298
    invoke-static {v8, v9, v10, v0, p0}, Lz/y;->g(Lk2/m0;JLs0/d;Ly8/a;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-ne v0, v5, :cond_d

    .line 303
    .line 304
    :goto_6
    move-object v1, v5

    .line 305
    goto :goto_8

    .line 306
    :cond_d
    :goto_7
    check-cast v0, Ljava/lang/Boolean;

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_e

    .line 313
    .line 314
    sget v0, Lz/y;->a:F

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_e
    sget v0, Lz/y;->a:F

    .line 318
    .line 319
    :cond_f
    :goto_8
    return-object v1

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
