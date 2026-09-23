.class public final synthetic Ll0/w;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/r1;


# direct methods
.method public synthetic constructor <init>(Lw0/r1;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll0/w;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll0/w;->b:Lw0/r1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ll0/w;->a:I

    .line 4
    .line 5
    iget-object v2, v0, Ll0/w;->b:Lw0/r1;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Lo2/w;

    .line 13
    .line 14
    iget-object v3, v2, Lw0/r1;->d:Ll0/s0;

    .line 15
    .line 16
    if-eqz v3, :cond_7

    .line 17
    .line 18
    iget-boolean v5, v3, Ll0/s0;->p:Z

    .line 19
    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-eqz v3, :cond_7

    .line 25
    .line 26
    iget-object v5, v2, Lw0/r1;->b:Lg3/q;

    .line 27
    .line 28
    invoke-virtual {v2}, Lw0/r1;->m()Lg3/w;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    iget-wide v6, v6, Lg3/w;->b:J

    .line 33
    .line 34
    sget v8, Lb3/n0;->c:I

    .line 35
    .line 36
    const/16 v8, 0x20

    .line 37
    .line 38
    shr-long/2addr v6, v8

    .line 39
    long-to-int v7, v6

    .line 40
    invoke-interface {v5, v7}, Lg3/q;->b(I)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v6, v2, Lw0/r1;->b:Lg3/q;

    .line 45
    .line 46
    invoke-virtual {v2}, Lw0/r1;->m()Lg3/w;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget-wide v9, v7, Lg3/w;->b:J

    .line 51
    .line 52
    const-wide v11, 0xffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long/2addr v9, v11

    .line 58
    long-to-int v7, v9

    .line 59
    invoke-interface {v6, v7}, Lg3/q;->b(I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    iget-object v7, v2, Lw0/r1;->d:Ll0/s0;

    .line 64
    .line 65
    const-wide/16 v9, 0x0

    .line 66
    .line 67
    if-eqz v7, :cond_1

    .line 68
    .line 69
    invoke-virtual {v7}, Ll0/s0;->c()Lo2/w;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    if-eqz v7, :cond_1

    .line 74
    .line 75
    const/4 v13, 0x1

    .line 76
    invoke-virtual {v2, v13}, Lw0/r1;->k(Z)J

    .line 77
    .line 78
    .line 79
    move-result-wide v13

    .line 80
    invoke-interface {v7, v13, v14}, Lo2/w;->F(J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v13

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move-wide v13, v9

    .line 86
    :goto_1
    iget-object v7, v2, Lw0/r1;->d:Ll0/s0;

    .line 87
    .line 88
    if-eqz v7, :cond_2

    .line 89
    .line 90
    invoke-virtual {v7}, Ll0/s0;->c()Lo2/w;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    if-eqz v7, :cond_2

    .line 95
    .line 96
    const/4 v9, 0x0

    .line 97
    invoke-virtual {v2, v9}, Lw0/r1;->k(Z)J

    .line 98
    .line 99
    .line 100
    move-result-wide v9

    .line 101
    invoke-interface {v7, v9, v10}, Lo2/w;->F(J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v9

    .line 105
    :cond_2
    iget-object v7, v2, Lw0/r1;->d:Ll0/s0;

    .line 106
    .line 107
    const/4 v15, 0x0

    .line 108
    if-eqz v7, :cond_4

    .line 109
    .line 110
    invoke-virtual {v7}, Ll0/s0;->c()Lo2/w;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    if-eqz v7, :cond_4

    .line 115
    .line 116
    invoke-virtual {v3}, Ll0/s0;->d()Ll0/q1;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    iget-object v4, v4, Ll0/q1;->a:Lb3/l0;

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Lb3/l0;->c(I)Lx1/c;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    iget v4, v4, Lx1/c;->b:F

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    const/4 v4, 0x0

    .line 132
    :goto_2
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    move-wide/from16 v17, v9

    .line 137
    .line 138
    const/16 v16, 0x20

    .line 139
    .line 140
    int-to-long v8, v5

    .line 141
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    int-to-long v4, v4

    .line 146
    shl-long v8, v8, v16

    .line 147
    .line 148
    and-long/2addr v4, v11

    .line 149
    or-long/2addr v4, v8

    .line 150
    invoke-interface {v7, v4, v5}, Lo2/w;->F(J)J

    .line 151
    .line 152
    .line 153
    move-result-wide v4

    .line 154
    and-long/2addr v4, v11

    .line 155
    long-to-int v5, v4

    .line 156
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    move-wide/from16 v17, v9

    .line 162
    .line 163
    const/16 v16, 0x20

    .line 164
    .line 165
    const/4 v4, 0x0

    .line 166
    :goto_3
    iget-object v5, v2, Lw0/r1;->d:Ll0/s0;

    .line 167
    .line 168
    if-eqz v5, :cond_6

    .line 169
    .line 170
    invoke-virtual {v5}, Ll0/s0;->c()Lo2/w;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    if-eqz v5, :cond_6

    .line 175
    .line 176
    invoke-virtual {v3}, Ll0/s0;->d()Ll0/q1;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    if-eqz v7, :cond_5

    .line 181
    .line 182
    iget-object v7, v7, Ll0/q1;->a:Lb3/l0;

    .line 183
    .line 184
    invoke-virtual {v7, v6}, Lb3/l0;->c(I)Lx1/c;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    iget v6, v6, Lx1/c;->b:F

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_5
    const/4 v6, 0x0

    .line 192
    :goto_4
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    int-to-long v7, v7

    .line 197
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    int-to-long v9, v6

    .line 202
    shl-long v6, v7, v16

    .line 203
    .line 204
    and-long/2addr v9, v11

    .line 205
    or-long/2addr v6, v9

    .line 206
    invoke-interface {v5, v6, v7}, Lo2/w;->F(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v5

    .line 210
    and-long/2addr v5, v11

    .line 211
    long-to-int v6, v5

    .line 212
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 213
    .line 214
    .line 215
    move-result v15

    .line 216
    :cond_6
    shr-long v5, v13, v16

    .line 217
    .line 218
    long-to-int v6, v5

    .line 219
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    shr-long v7, v17, v16

    .line 224
    .line 225
    long-to-int v8, v7

    .line 226
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    and-long v7, v13, v11

    .line 251
    .line 252
    long-to-int v8, v7

    .line 253
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    and-long v8, v17, v11

    .line 258
    .line 259
    long-to-int v9, v8

    .line 260
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    const/16 v8, 0x19

    .line 269
    .line 270
    int-to-float v8, v8

    .line 271
    iget-object v3, v3, Ll0/s0;->a:Ll0/y0;

    .line 272
    .line 273
    iget-object v3, v3, Ll0/y0;->g:Ln3/c;

    .line 274
    .line 275
    invoke-interface {v3}, Ln3/c;->a()F

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    mul-float v3, v3, v8

    .line 280
    .line 281
    add-float/2addr v3, v7

    .line 282
    new-instance v7, Lx1/c;

    .line 283
    .line 284
    invoke-direct {v7, v5, v4, v6, v3}, Lx1/c;-><init>(FFFF)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_7
    sget-object v7, Lx1/c;->e:Lx1/c;

    .line 289
    .line 290
    :goto_5
    iget-object v2, v2, Lw0/r1;->d:Ll0/s0;

    .line 291
    .line 292
    if-eqz v2, :cond_8

    .line 293
    .line 294
    invoke-virtual {v2}, Ll0/s0;->c()Lo2/w;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    goto :goto_6

    .line 299
    :cond_8
    const/4 v4, 0x0

    .line 300
    :goto_6
    if-eqz v4, :cond_9

    .line 301
    .line 302
    invoke-static {v7, v4, v1}, Landroidx/compose/foundation/text/contextmenu/modifier/a;->d(Lx1/c;Lo2/w;Lo2/w;)Lx1/c;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    return-object v1

    .line 307
    :cond_9
    const-string v1, "Required value was null."

    .line 308
    .line 309
    invoke-static {v1}, Lc0/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 310
    .line 311
    .line 312
    new-instance v1, Lac/p;

    .line 313
    .line 314
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 315
    .line 316
    .line 317
    throw v1

    .line 318
    :pswitch_0
    move-object/from16 v1, p1

    .line 319
    .line 320
    check-cast v1, Lx1/b;

    .line 321
    .line 322
    invoke-virtual {v2}, Lw0/r1;->q()V

    .line 323
    .line 324
    .line 325
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 326
    .line 327
    return-object v1

    .line 328
    :pswitch_1
    move-object/from16 v1, p1

    .line 329
    .line 330
    check-cast v1, Lf1/i0;

    .line 331
    .line 332
    new-instance v1, Lc8/p;

    .line 333
    .line 334
    const/4 v3, 0x5

    .line 335
    invoke-direct {v1, v3, v2}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    return-object v1

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
