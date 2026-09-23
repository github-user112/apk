.class public final Lc8/p0;
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
    iput-object v0, p0, Lc8/p0;->a:Lz7/u1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u7269\u7406\u6309\u952e"

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
    const v0, -0x29d7ec13

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
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int v0, p5, v0

    .line 35
    .line 36
    invoke-virtual {v15, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const/16 v1, 0x100

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v1, 0x80

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v1

    .line 48
    move-object/from16 v1, p0

    .line 49
    .line 50
    invoke-virtual {v15, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    const/16 v5, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v5, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v0, v5

    .line 62
    and-int/lit16 v5, v0, 0x493

    .line 63
    .line 64
    const/16 v6, 0x492

    .line 65
    .line 66
    if-ne v5, v6, :cond_4

    .line 67
    .line 68
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_4
    :goto_3
    const v5, 0x6e3c21fe

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 91
    .line 92
    if-ne v6, v7, :cond_5

    .line 93
    .line 94
    const-string v6, ""

    .line 95
    .line 96
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v15, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    move-object v10, v6

    .line 104
    check-cast v10, Lf1/b1;

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-static {v15, v6, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-ne v8, v7, :cond_6

    .line 112
    .line 113
    new-instance v8, Lf1/h1;

    .line 114
    .line 115
    invoke-direct {v8, v6}, Lf1/h1;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    move-object v12, v8

    .line 122
    check-cast v12, Lf1/h1;

    .line 123
    .line 124
    invoke-static {v15, v6, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    if-ne v8, v7, :cond_7

    .line 129
    .line 130
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-static {v8}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v15, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    move-object v13, v8

    .line 140
    check-cast v13, Lf1/b1;

    .line 141
    .line 142
    invoke-static {v15, v6, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    if-ne v8, v7, :cond_8

    .line 147
    .line 148
    new-instance v8, Lw1/o;

    .line 149
    .line 150
    invoke-direct {v8}, Lw1/o;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_8
    move-object v11, v8

    .line 157
    check-cast v11, Lw1/o;

    .line 158
    .line 159
    invoke-static {v15, v6, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    if-ne v5, v7, :cond_9

    .line 164
    .line 165
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 166
    .line 167
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_9
    move-object v14, v5

    .line 175
    check-cast v14, Lf1/b1;

    .line 176
    .line 177
    invoke-virtual {v15, v6}, Lf1/s;->p(Z)V

    .line 178
    .line 179
    .line 180
    new-instance v5, La8/p0;

    .line 181
    .line 182
    const/4 v6, 0x3

    .line 183
    invoke-direct {v5, v3, v6}, La8/p0;-><init>(Lf9/a;I)V

    .line 184
    .line 185
    .line 186
    const v6, -0x380977da

    .line 187
    .line 188
    .line 189
    invoke-static {v6, v5, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 190
    .line 191
    .line 192
    move-result-object v16

    .line 193
    new-instance v4, La8/r0;

    .line 194
    .line 195
    move-object/from16 v5, p3

    .line 196
    .line 197
    move-object v6, v1

    .line 198
    move-object v7, v10

    .line 199
    move-object v8, v12

    .line 200
    move-object v9, v13

    .line 201
    invoke-direct/range {v4 .. v9}, La8/r0;-><init>(Lf9/k;Lc8/p0;Lf1/b1;Lf1/h1;Lf1/b1;)V

    .line 202
    .line 203
    .line 204
    const v1, -0x160bcf9c

    .line 205
    .line 206
    .line 207
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    new-instance v8, Lc8/o0;

    .line 212
    .line 213
    move-object v5, v14

    .line 214
    const/4 v14, 0x1

    .line 215
    move-object v9, v11

    .line 216
    move-object v11, v5

    .line 217
    invoke-direct/range {v8 .. v14}, Lc8/o0;-><init>(Lw1/o;Lf1/b1;Lf1/b1;Lf1/h1;Lf1/b1;I)V

    .line 218
    .line 219
    .line 220
    const v4, -0x29702e2a

    .line 221
    .line 222
    .line 223
    invoke-static {v4, v8, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    and-int/lit8 v0, v0, 0xe

    .line 228
    .line 229
    const/high16 v4, 0x30c00000

    .line 230
    .line 231
    or-int/2addr v0, v4

    .line 232
    const/16 v17, 0x17e

    .line 233
    .line 234
    const/4 v5, 0x0

    .line 235
    const-wide/16 v6, 0x0

    .line 236
    .line 237
    const/4 v8, 0x0

    .line 238
    const/4 v9, 0x0

    .line 239
    const/4 v10, 0x0

    .line 240
    const/4 v12, 0x0

    .line 241
    move-object v13, v1

    .line 242
    move v4, v2

    .line 243
    move-object/from16 v11, v16

    .line 244
    .line 245
    move/from16 v16, v0

    .line 246
    .line 247
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 248
    .line 249
    .line 250
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    if-eqz v7, :cond_a

    .line 255
    .line 256
    new-instance v0, Lc8/h;

    .line 257
    .line 258
    const/4 v6, 0x5

    .line 259
    move-object/from16 v1, p0

    .line 260
    .line 261
    move/from16 v2, p1

    .line 262
    .line 263
    move-object/from16 v4, p3

    .line 264
    .line 265
    move/from16 v5, p5

    .line 266
    .line 267
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 268
    .line 269
    .line 270
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 271
    .line 272
    :cond_a
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "KeyBoard"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/p0;->a:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method
