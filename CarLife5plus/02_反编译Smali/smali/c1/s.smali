.class public final Lc1/s;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lf1/v2;

.field public final synthetic b:Lf1/v2;

.field public final synthetic c:Lf1/v2;

.field public final synthetic d:Lf1/v2;

.field public final synthetic e:Lf1/v2;

.field public final synthetic f:Lc1/p;


# direct methods
.method public constructor <init>(Lf1/v2;Lf1/v2;Lf1/v2;Lv/p0;Lv/p0;Lc1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/s;->a:Lf1/v2;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/s;->b:Lf1/v2;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/s;->c:Lf1/v2;

    .line 6
    .line 7
    iput-object p4, p0, Lc1/s;->d:Lf1/v2;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/s;->e:Lf1/v2;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/s;->f:Lc1/p;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, La2/g;

    .line 6
    .line 7
    sget v2, Lc1/v;->c:F

    .line 8
    .line 9
    invoke-interface {v1, v2}, Ln3/c;->S(F)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    float-to-double v2, v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    double-to-float v5, v2

    .line 19
    iget-object v2, v0, Lc1/s;->a:Lf1/v2;

    .line 20
    .line 21
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ly1/q;

    .line 26
    .line 27
    iget-wide v2, v2, Ly1/q;->a:J

    .line 28
    .line 29
    iget-object v4, v0, Lc1/s;->b:Lf1/v2;

    .line 30
    .line 31
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ly1/q;

    .line 36
    .line 37
    iget-wide v12, v4, Ly1/q;->a:J

    .line 38
    .line 39
    sget v4, Lc1/v;->d:F

    .line 40
    .line 41
    invoke-interface {v1, v4}, Ln3/c;->S(F)F

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    const/high16 v4, 0x40000000    # 2.0f

    .line 46
    .line 47
    div-float v15, v5, v4

    .line 48
    .line 49
    new-instance v4, La2/k;

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/16 v9, 0x1e

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-direct/range {v4 .. v9}, La2/k;-><init>(FFIII)V

    .line 57
    .line 58
    .line 59
    move-object/from16 v16, v4

    .line 60
    .line 61
    invoke-interface {v1}, La2/g;->g()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    invoke-static {v6, v7}, Lx1/e;->d(J)F

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-static {v2, v3, v12, v13}, Ly1/q;->c(JJ)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    sget-object v10, La2/j;->a:La2/j;

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    if-eqz v6, :cond_0

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    invoke-static {v4, v4}, Lp4/e;->b(FF)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-static {v14}, Lp4/o;->c(F)J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    const/16 v11, 0xe2

    .line 89
    .line 90
    move v12, v5

    .line 91
    const/4 v13, 0x0

    .line 92
    const-wide/16 v4, 0x0

    .line 93
    .line 94
    invoke-static/range {v1 .. v11}, La2/f;->z(La2/g;JJJJLa2/h;I)V

    .line 95
    .line 96
    .line 97
    move/from16 v17, v12

    .line 98
    .line 99
    const/4 v12, 0x0

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    move-wide/from16 v21, v2

    .line 102
    .line 103
    move v2, v5

    .line 104
    move-wide/from16 v5, v21

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    invoke-static {v2, v2}, Lp9/q;->d(FF)J

    .line 108
    .line 109
    .line 110
    move-result-wide v7

    .line 111
    const/4 v9, 0x2

    .line 112
    int-to-float v9, v9

    .line 113
    mul-float v9, v9, v2

    .line 114
    .line 115
    sub-float v9, v4, v9

    .line 116
    .line 117
    invoke-static {v9, v9}, Lp4/e;->b(FF)J

    .line 118
    .line 119
    .line 120
    move-result-wide v17

    .line 121
    sub-float v9, v14, v2

    .line 122
    .line 123
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    invoke-static {v9}, Lp4/o;->c(F)J

    .line 128
    .line 129
    .line 130
    move-result-wide v19

    .line 131
    const/16 v11, 0xe0

    .line 132
    .line 133
    move-wide/from16 v21, v17

    .line 134
    .line 135
    move/from16 v17, v2

    .line 136
    .line 137
    move/from16 v18, v4

    .line 138
    .line 139
    move-wide v2, v5

    .line 140
    move-wide v4, v7

    .line 141
    move-wide/from16 v6, v21

    .line 142
    .line 143
    move-wide/from16 v8, v19

    .line 144
    .line 145
    move-wide/from16 v19, v12

    .line 146
    .line 147
    const/4 v12, 0x0

    .line 148
    invoke-static/range {v1 .. v11}, La2/f;->z(La2/g;JJJJLa2/h;I)V

    .line 149
    .line 150
    .line 151
    invoke-static {v15, v15}, Lp9/q;->d(FF)J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    sub-float v2, v18, v17

    .line 156
    .line 157
    invoke-static {v2, v2}, Lp4/e;->b(FF)J

    .line 158
    .line 159
    .line 160
    move-result-wide v6

    .line 161
    sub-float/2addr v14, v15

    .line 162
    invoke-static {v14}, Lp4/o;->c(F)J

    .line 163
    .line 164
    .line 165
    move-result-wide v8

    .line 166
    move-object/from16 v10, v16

    .line 167
    .line 168
    move-wide/from16 v2, v19

    .line 169
    .line 170
    invoke-static/range {v1 .. v11}, La2/f;->z(La2/g;JJJJLa2/h;I)V

    .line 171
    .line 172
    .line 173
    :goto_0
    iget-object v2, v0, Lc1/s;->c:Lf1/v2;

    .line 174
    .line 175
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Ly1/q;

    .line 180
    .line 181
    iget-wide v2, v2, Ly1/q;->a:J

    .line 182
    .line 183
    iget-object v4, v0, Lc1/s;->d:Lf1/v2;

    .line 184
    .line 185
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    check-cast v4, Ljava/lang/Number;

    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    iget-object v4, v0, Lc1/s;->e:Lf1/v2;

    .line 196
    .line 197
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Ljava/lang/Number;

    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    new-instance v4, La2/k;

    .line 208
    .line 209
    const/4 v8, 0x0

    .line 210
    const/16 v9, 0x1a

    .line 211
    .line 212
    const/4 v6, 0x0

    .line 213
    const/4 v7, 0x2

    .line 214
    move/from16 v5, v17

    .line 215
    .line 216
    invoke-direct/range {v4 .. v9}, La2/k;-><init>(FFIII)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v1}, La2/g;->g()J

    .line 220
    .line 221
    .line 222
    move-result-wide v5

    .line 223
    invoke-static {v5, v6}, Lx1/e;->d(J)F

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    const v6, 0x3ecccccd    # 0.4f

    .line 228
    .line 229
    .line 230
    const/high16 v7, 0x3f000000    # 0.5f

    .line 231
    .line 232
    invoke-static {v6, v7, v11}, Lm9/e0;->p0(FFF)F

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    const v8, 0x3f333333    # 0.7f

    .line 237
    .line 238
    .line 239
    invoke-static {v8, v7, v11}, Lm9/e0;->p0(FFF)F

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    invoke-static {v7, v7, v11}, Lm9/e0;->p0(FFF)F

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    const v13, 0x3e99999a    # 0.3f

    .line 248
    .line 249
    .line 250
    invoke-static {v13, v7, v11}, Lm9/e0;->p0(FFF)F

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    iget-object v11, v0, Lc1/s;->f:Lc1/p;

    .line 255
    .line 256
    iget-object v13, v11, Lc1/p;->a:Ly1/h;

    .line 257
    .line 258
    invoke-virtual {v13}, Ly1/h;->c()V

    .line 259
    .line 260
    .line 261
    iget-object v13, v11, Lc1/p;->a:Ly1/h;

    .line 262
    .line 263
    const v14, 0x3e4ccccd    # 0.2f

    .line 264
    .line 265
    .line 266
    mul-float v14, v14, v5

    .line 267
    .line 268
    mul-float v9, v9, v5

    .line 269
    .line 270
    iget-object v15, v13, Ly1/h;->a:Landroid/graphics/Path;

    .line 271
    .line 272
    iget-object v12, v13, Ly1/h;->a:Landroid/graphics/Path;

    .line 273
    .line 274
    invoke-virtual {v15, v14, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 275
    .line 276
    .line 277
    mul-float v6, v6, v5

    .line 278
    .line 279
    mul-float v8, v8, v5

    .line 280
    .line 281
    invoke-virtual {v12, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    .line 283
    .line 284
    const v6, 0x3f4ccccd    # 0.8f

    .line 285
    .line 286
    .line 287
    mul-float v6, v6, v5

    .line 288
    .line 289
    mul-float v5, v5, v7

    .line 290
    .line 291
    invoke-virtual {v12, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    .line 293
    .line 294
    iget-object v5, v11, Lc1/p;->b:Ly1/i;

    .line 295
    .line 296
    iget-object v6, v5, Ly1/i;->a:Landroid/graphics/PathMeasure;

    .line 297
    .line 298
    if-eqz v13, :cond_1

    .line 299
    .line 300
    iget-object v7, v13, Ly1/h;->a:Landroid/graphics/Path;

    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_1
    const/4 v7, 0x0

    .line 304
    :goto_1
    const/4 v8, 0x0

    .line 305
    invoke-virtual {v6, v7, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 306
    .line 307
    .line 308
    iget-object v6, v11, Lc1/p;->c:Ly1/h;

    .line 309
    .line 310
    invoke-virtual {v6}, Ly1/h;->c()V

    .line 311
    .line 312
    .line 313
    iget-object v7, v5, Ly1/i;->a:Landroid/graphics/PathMeasure;

    .line 314
    .line 315
    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    mul-float v7, v7, v10

    .line 320
    .line 321
    const/4 v13, 0x0

    .line 322
    invoke-virtual {v5, v13, v7, v6}, Ly1/i;->a(FFLy1/h;)V

    .line 323
    .line 324
    .line 325
    iget-object v5, v11, Lc1/p;->c:Ly1/h;

    .line 326
    .line 327
    const/16 v6, 0x34

    .line 328
    .line 329
    move-object/from16 v21, v5

    .line 330
    .line 331
    move-object v5, v4

    .line 332
    move-wide v3, v2

    .line 333
    move-object/from16 v2, v21

    .line 334
    .line 335
    invoke-static/range {v1 .. v6}, La2/f;->v(La2/g;Ly1/e0;JLa2/k;I)V

    .line 336
    .line 337
    .line 338
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 339
    .line 340
    return-object v1
.end method
