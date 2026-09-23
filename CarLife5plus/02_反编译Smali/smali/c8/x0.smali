.class public final Lc8/x0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;


# instance fields
.field public final a:Lz7/u1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lz7/u1;->a:Lz7/u1;

    .line 5
    .line 6
    iput-object v0, p0, Lc8/x0;->a:Lz7/u1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lc8/k0;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v3, v2}, Lc8/k0;-><init>(ILw8/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u7cfb\u7edf\u65e5\u5fd7"

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ZLf9/a;Lf9/k;Lf1/s;I)V
    .locals 18

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v15, p4

    .line 6
    .line 7
    const-string v0, "onDismissRequest"

    .line 8
    .line 9
    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "onConfigured"

    .line 13
    .line 14
    invoke-static {v4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, -0x17a5856b

    .line 18
    .line 19
    .line 20
    invoke-virtual {v15, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    move/from16 v2, p1

    .line 24
    .line 25
    invoke-virtual {v15, v2}, Lf1/s;->g(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x4

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x2

    .line 35
    :goto_0
    or-int v0, p5, v0

    .line 36
    .line 37
    invoke-virtual {v15, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    const/16 v5, 0x100

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v5, 0x80

    .line 47
    .line 48
    :goto_1
    or-int/2addr v0, v5

    .line 49
    move-object/from16 v12, p0

    .line 50
    .line 51
    invoke-virtual {v15, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    const/16 v5, 0x800

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v5, 0x400

    .line 61
    .line 62
    :goto_2
    or-int/2addr v0, v5

    .line 63
    and-int/lit16 v5, v0, 0x493

    .line 64
    .line 65
    const/16 v6, 0x492

    .line 66
    .line 67
    if-ne v5, v6, :cond_4

    .line 68
    .line 69
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_4
    :goto_3
    const v5, 0x6e3c21fe

    .line 82
    .line 83
    .line 84
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 92
    .line 93
    if-ne v6, v7, :cond_5

    .line 94
    .line 95
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v15, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    move-object v9, v6

    .line 105
    check-cast v9, Lf1/b1;

    .line 106
    .line 107
    const/4 v13, 0x0

    .line 108
    invoke-static {v15, v13, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-ne v6, v7, :cond_6

    .line 113
    .line 114
    const-string v6, "keycode"

    .line 115
    .line 116
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v15, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    move-object v8, v6

    .line 124
    check-cast v8, Lf1/b1;

    .line 125
    .line 126
    invoke-static {v15, v13, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    if-ne v6, v7, :cond_7

    .line 131
    .line 132
    const-string v6, ""

    .line 133
    .line 134
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v15, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    move-object v10, v6

    .line 142
    check-cast v10, Lf1/b1;

    .line 143
    .line 144
    invoke-static {v15, v13, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    if-ne v5, v7, :cond_8

    .line 149
    .line 150
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_8
    move-object v14, v5

    .line 160
    check-cast v14, Lf1/b1;

    .line 161
    .line 162
    invoke-virtual {v15, v13}, Lf1/s;->p(Z)V

    .line 163
    .line 164
    .line 165
    new-instance v5, Ll8/r;

    .line 166
    .line 167
    invoke-direct {v5}, Ll8/r;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    const v11, -0x48fade91

    .line 175
    .line 176
    .line 177
    invoke-virtual {v15, v11}, Lf1/s;->W(I)V

    .line 178
    .line 179
    .line 180
    and-int/lit8 v0, v0, 0xe

    .line 181
    .line 182
    if-ne v0, v1, :cond_9

    .line 183
    .line 184
    const/4 v1, 0x1

    .line 185
    goto :goto_4

    .line 186
    :cond_9
    const/4 v1, 0x0

    .line 187
    :goto_4
    invoke-virtual {v15, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    or-int/2addr v1, v11

    .line 192
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    if-nez v1, :cond_a

    .line 197
    .line 198
    if-ne v11, v7, :cond_b

    .line 199
    .line 200
    :cond_a
    move-object v7, v5

    .line 201
    goto :goto_5

    .line 202
    :cond_b
    move-object v1, v6

    .line 203
    goto :goto_6

    .line 204
    :goto_5
    new-instance v5, Lc8/q0;

    .line 205
    .line 206
    const/4 v11, 0x0

    .line 207
    move-object v1, v6

    .line 208
    move v6, v2

    .line 209
    invoke-direct/range {v5 .. v11}, Lc8/q0;-><init>(ZLl8/r;Lf1/b1;Lf1/b1;Lf1/b1;Lw8/c;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    move-object v11, v5

    .line 216
    :goto_6
    check-cast v11, Lf9/n;

    .line 217
    .line 218
    invoke-virtual {v15, v13}, Lf1/s;->p(Z)V

    .line 219
    .line 220
    .line 221
    invoke-static {v15, v11, v1}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    new-instance v1, La8/p0;

    .line 225
    .line 226
    const/4 v2, 0x4

    .line 227
    invoke-direct {v1, v3, v2}, La8/p0;-><init>(Lf9/a;I)V

    .line 228
    .line 229
    .line 230
    const v2, -0x5e8556f2

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v1, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v4, La8/r0;

    .line 238
    .line 239
    move-object v7, v10

    .line 240
    const/4 v10, 0x2

    .line 241
    move-object/from16 v5, p3

    .line 242
    .line 243
    move-object v6, v12

    .line 244
    invoke-direct/range {v4 .. v10}, La8/r0;-><init>(Lf9/k;Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 245
    .line 246
    .line 247
    move-object v10, v7

    .line 248
    const v2, 0x72a148cc

    .line 249
    .line 250
    .line 251
    invoke-static {v2, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    move-object v6, v8

    .line 256
    new-instance v8, Lc8/u0;

    .line 257
    .line 258
    const/4 v13, 0x1

    .line 259
    move-object v12, v9

    .line 260
    move-object v9, v10

    .line 261
    move-object v11, v14

    .line 262
    move-object v10, v6

    .line 263
    invoke-direct/range {v8 .. v13}, Lc8/u0;-><init>(Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 264
    .line 265
    .line 266
    const v4, 0x603a9ebe

    .line 267
    .line 268
    .line 269
    invoke-static {v4, v8, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 270
    .line 271
    .line 272
    move-result-object v14

    .line 273
    const/high16 v4, 0x30c00000

    .line 274
    .line 275
    or-int v16, v0, v4

    .line 276
    .line 277
    const/16 v17, 0x17e

    .line 278
    .line 279
    const/4 v5, 0x0

    .line 280
    const-wide/16 v6, 0x0

    .line 281
    .line 282
    const/4 v8, 0x0

    .line 283
    const/4 v9, 0x0

    .line 284
    const/4 v10, 0x0

    .line 285
    const/4 v12, 0x0

    .line 286
    move/from16 v4, p1

    .line 287
    .line 288
    move-object v11, v1

    .line 289
    move-object v13, v2

    .line 290
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 291
    .line 292
    .line 293
    :goto_7
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    if-eqz v7, :cond_c

    .line 298
    .line 299
    new-instance v0, Lc8/h;

    .line 300
    .line 301
    const/4 v6, 0x6

    .line 302
    move-object/from16 v1, p0

    .line 303
    .line 304
    move/from16 v2, p1

    .line 305
    .line 306
    move-object/from16 v4, p3

    .line 307
    .line 308
    move/from16 v5, p5

    .line 309
    .line 310
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 311
    .line 312
    .line 313
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 314
    .line 315
    :cond_c
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "LogLine"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/x0;->a:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method
