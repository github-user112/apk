.class public final synthetic Lh0/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    .line 1
    iput p6, p0, Lh0/u;->a:I

    iput-object p1, p0, Lh0/u;->d:Ljava/lang/Object;

    iput-object p2, p0, Lh0/u;->b:Ljava/lang/Object;

    iput p3, p0, Lh0/u;->c:I

    iput-object p4, p0, Lh0/u;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p5, p0, Lh0/u;->a:I

    iput-object p1, p0, Lh0/u;->d:Ljava/lang/Object;

    iput-object p2, p0, Lh0/u;->b:Ljava/lang/Object;

    iput-object p3, p0, Lh0/u;->e:Ljava/lang/Object;

    iput p4, p0, Lh0/u;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lr1/p;Lf1/t1;Ln1/c;I)V
    .locals 1

    .line 3
    const/4 v0, 0x7

    iput v0, p0, Lh0/u;->a:I

    sget-object v0, Lq0/i;->a:Ln1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/u;->d:Ljava/lang/Object;

    iput-object p2, p0, Lh0/u;->b:Ljava/lang/Object;

    iput-object p3, p0, Lh0/u;->e:Ljava/lang/Object;

    iput p4, p0, Lh0/u;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lr1/p;Ly/c;Lf9/k;II)V
    .locals 0

    .line 4
    const/16 p4, 0x9

    iput p4, p0, Lh0/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/u;->d:Ljava/lang/Object;

    iput-object p2, p0, Lh0/u;->b:Ljava/lang/Object;

    iput-object p3, p0, Lh0/u;->e:Ljava/lang/Object;

    iput p5, p0, Lh0/u;->c:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lh0/u;->a:I

    .line 4
    .line 5
    iget v2, v0, Lh0/u;->c:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lh0/u;->e:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Lh0/u;->b:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 13
    .line 14
    iget-object v7, v0, Lh0/u;->d:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v7, Ly/c;

    .line 20
    .line 21
    check-cast v5, Lr1/p;

    .line 22
    .line 23
    check-cast v4, Ln1/c;

    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    check-cast v1, Lf1/s;

    .line 28
    .line 29
    move-object/from16 v8, p2

    .line 30
    .line 31
    check-cast v8, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    or-int/2addr v2, v3

    .line 37
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v7, v5, v4, v1, v2}, Ly/g;->a(Ly/c;Lr1/p;Ln1/c;Lf1/s;I)V

    .line 42
    .line 43
    .line 44
    return-object v6

    .line 45
    :pswitch_0
    move-object v8, v7

    .line 46
    check-cast v8, Lr1/p;

    .line 47
    .line 48
    move-object v9, v5

    .line 49
    check-cast v9, Ly/c;

    .line 50
    .line 51
    move-object v10, v4

    .line 52
    check-cast v10, Lf9/k;

    .line 53
    .line 54
    move-object/from16 v11, p1

    .line 55
    .line 56
    check-cast v11, Lf1/s;

    .line 57
    .line 58
    move-object/from16 v1, p2

    .line 59
    .line 60
    check-cast v1, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v3}, Lf1/b;->y(I)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    iget v13, v0, Lh0/u;->c:I

    .line 70
    .line 71
    invoke-static/range {v8 .. v13}, Ly/g;->b(Lr1/p;Ly/c;Lf9/k;Lf1/s;II)V

    .line 72
    .line 73
    .line 74
    return-object v6

    .line 75
    :pswitch_1
    check-cast v7, Lw0/q;

    .line 76
    .line 77
    check-cast v5, Lr1/d;

    .line 78
    .line 79
    check-cast v4, Ln1/c;

    .line 80
    .line 81
    move-object/from16 v1, p1

    .line 82
    .line 83
    check-cast v1, Lf1/s;

    .line 84
    .line 85
    move-object/from16 v8, p2

    .line 86
    .line 87
    check-cast v8, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    or-int/2addr v2, v3

    .line 93
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v7, v5, v4, v1, v2}, Lw0/y0;->a(Lw0/q;Lr1/d;Ln1/c;Lf1/s;I)V

    .line 98
    .line 99
    .line 100
    return-object v6

    .line 101
    :pswitch_2
    check-cast v7, Lr1/p;

    .line 102
    .line 103
    check-cast v5, Lf1/t1;

    .line 104
    .line 105
    sget-object v1, Lq0/i;->a:Ln1/c;

    .line 106
    .line 107
    check-cast v4, Ln1/c;

    .line 108
    .line 109
    move-object/from16 v1, p1

    .line 110
    .line 111
    check-cast v1, Lf1/s;

    .line 112
    .line 113
    move-object/from16 v8, p2

    .line 114
    .line 115
    check-cast v8, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    or-int/2addr v2, v3

    .line 121
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-static {v7, v5, v4, v1, v2}, Lp9/q;->e(Lr1/p;Lf1/t1;Ln1/c;Lf1/s;I)V

    .line 126
    .line 127
    .line 128
    return-object v6

    .line 129
    :pswitch_3
    check-cast v7, Ls0/b;

    .line 130
    .line 131
    check-cast v5, Ls0/e;

    .line 132
    .line 133
    check-cast v4, Lf9/a;

    .line 134
    .line 135
    move-object/from16 v1, p1

    .line 136
    .line 137
    check-cast v1, Lf1/s;

    .line 138
    .line 139
    move-object/from16 v8, p2

    .line 140
    .line 141
    check-cast v8, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    or-int/2addr v2, v3

    .line 147
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-static {v7, v5, v4, v1, v2}, Lq0/k;->c(Ls0/b;Ls0/e;Lf9/a;Lf1/s;I)V

    .line 152
    .line 153
    .line 154
    return-object v6

    .line 155
    :pswitch_4
    check-cast v7, Lo1/d;

    .line 156
    .line 157
    check-cast v4, Ln1/c;

    .line 158
    .line 159
    move-object/from16 v1, p1

    .line 160
    .line 161
    check-cast v1, Lf1/s;

    .line 162
    .line 163
    move-object/from16 v8, p2

    .line 164
    .line 165
    check-cast v8, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    or-int/2addr v2, v3

    .line 171
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {v7, v5, v4, v1, v2}, Lo1/d;->d(Ljava/lang/Object;Ln1/c;Lf1/s;I)V

    .line 176
    .line 177
    .line 178
    return-object v6

    .line 179
    :pswitch_5
    check-cast v7, Ln1/c;

    .line 180
    .line 181
    move-object/from16 v1, p1

    .line 182
    .line 183
    check-cast v1, Lf1/s;

    .line 184
    .line 185
    move-object/from16 v8, p2

    .line 186
    .line 187
    check-cast v8, Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    or-int/2addr v2, v3

    .line 197
    invoke-virtual {v7, v5, v4, v1, v2}, Ln1/c;->f(Ljava/lang/Object;Ljava/lang/Object;Lf1/s;I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    return-object v6

    .line 201
    :pswitch_6
    move-object v8, v7

    .line 202
    check-cast v8, Lm7/k;

    .line 203
    .line 204
    move-object v9, v5

    .line 205
    check-cast v9, Lr8/j;

    .line 206
    .line 207
    move-object v11, v4

    .line 208
    check-cast v11, Lf9/k;

    .line 209
    .line 210
    move-object/from16 v12, p1

    .line 211
    .line 212
    check-cast v12, Lf1/s;

    .line 213
    .line 214
    move-object/from16 v1, p2

    .line 215
    .line 216
    check-cast v1, Ljava/lang/Integer;

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    const/16 v1, 0x1181

    .line 222
    .line 223
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    iget v10, v0, Lh0/u;->c:I

    .line 228
    .line 229
    invoke-virtual/range {v8 .. v13}, Lm7/k;->b(Lr8/j;ILf9/k;Lf1/s;I)V

    .line 230
    .line 231
    .line 232
    return-object v6

    .line 233
    :pswitch_7
    move-object v14, v7

    .line 234
    check-cast v14, Ljava/lang/String;

    .line 235
    .line 236
    move-object v15, v5

    .line 237
    check-cast v15, Ll9/d;

    .line 238
    .line 239
    move-object/from16 v17, v4

    .line 240
    .line 241
    check-cast v17, Lf9/k;

    .line 242
    .line 243
    move-object/from16 v18, p1

    .line 244
    .line 245
    check-cast v18, Lf1/s;

    .line 246
    .line 247
    move-object/from16 v1, p2

    .line 248
    .line 249
    check-cast v1, Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    const/16 v1, 0xc07

    .line 255
    .line 256
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 257
    .line 258
    .line 259
    move-result v19

    .line 260
    iget v1, v0, Lh0/u;->c:I

    .line 261
    .line 262
    move/from16 v16, v1

    .line 263
    .line 264
    invoke-static/range {v14 .. v19}, Lm9/e0;->C(Ljava/lang/String;Ll9/d;ILf9/k;Lf1/s;I)V

    .line 265
    .line 266
    .line 267
    return-object v6

    .line 268
    :pswitch_8
    check-cast v7, Lh0/o0;

    .line 269
    .line 270
    check-cast v4, Ln1/c;

    .line 271
    .line 272
    move-object/from16 v1, p1

    .line 273
    .line 274
    check-cast v1, Lf1/s;

    .line 275
    .line 276
    move-object/from16 v8, p2

    .line 277
    .line 278
    check-cast v8, Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    or-int/2addr v2, v3

    .line 284
    invoke-static {v2}, Lf1/b;->y(I)I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    invoke-virtual {v7, v5, v4, v1, v2}, Lh0/o0;->d(Ljava/lang/Object;Ln1/c;Lf1/s;I)V

    .line 289
    .line 290
    .line 291
    return-object v6

    .line 292
    :pswitch_9
    move-object v8, v7

    .line 293
    check-cast v8, Lh0/v;

    .line 294
    .line 295
    move-object/from16 v12, p1

    .line 296
    .line 297
    check-cast v12, Lf1/s;

    .line 298
    .line 299
    move-object/from16 v1, p2

    .line 300
    .line 301
    check-cast v1, Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-static {v3}, Lf1/b;->y(I)I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    iget-object v9, v0, Lh0/u;->b:Ljava/lang/Object;

    .line 311
    .line 312
    iget v10, v0, Lh0/u;->c:I

    .line 313
    .line 314
    iget-object v11, v0, Lh0/u;->e:Ljava/lang/Object;

    .line 315
    .line 316
    invoke-static/range {v8 .. v13}, Lh0/z;->d(Lh0/v;Ljava/lang/Object;ILjava/lang/Object;Lf1/s;I)V

    .line 317
    .line 318
    .line 319
    return-object v6

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
