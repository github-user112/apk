.class public final Lv/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv/f;


# instance fields
.field public final a:Lba/a;

.field public final b:Lv/w0;

.field public final c:Ljava/lang/Object;

.field public final d:Lv/p;

.field public final e:Lv/p;

.field public final f:Lv/p;

.field public final g:Ljava/lang/Object;

.field public final h:J


# direct methods
.method public constructor <init>(Lv/s;Lv/w0;Ljava/lang/Object;Lv/p;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    new-instance v4, Lba/a;

    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    iget-object v5, v5, Lv/s;->a:Lkb/a;

    .line 14
    .line 15
    const/16 v6, 0xf

    .line 16
    .line 17
    invoke-direct {v4, v6, v5}, Lba/a;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v4, v0, Lv/r;->a:Lba/a;

    .line 24
    .line 25
    iput-object v1, v0, Lv/r;->b:Lv/w0;

    .line 26
    .line 27
    iput-object v2, v0, Lv/r;->c:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v5, v1, Lv/w0;->a:Lf9/k;

    .line 30
    .line 31
    invoke-interface {v5, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lv/p;

    .line 36
    .line 37
    iput-object v2, v0, Lv/r;->d:Lv/p;

    .line 38
    .line 39
    invoke-static {v3}, Lv/d;->f(Lv/p;)Lv/p;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iput-object v5, v0, Lv/r;->e:Lv/p;

    .line 44
    .line 45
    iget-object v1, v1, Lv/w0;->b:Lf9/k;

    .line 46
    .line 47
    iget-object v5, v4, Lba/a;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Lv/p;

    .line 50
    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Lv/p;->c()Lv/p;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iput-object v5, v4, Lba/a;->e:Ljava/lang/Object;

    .line 58
    .line 59
    :cond_0
    iget-object v5, v4, Lba/a;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v5, Lv/p;

    .line 62
    .line 63
    const-string v7, "targetVector"

    .line 64
    .line 65
    if-eqz v5, :cond_8

    .line 66
    .line 67
    invoke-virtual {v5}, Lv/p;->b()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const/4 v9, 0x0

    .line 72
    :goto_0
    if-ge v9, v5, :cond_2

    .line 73
    .line 74
    iget-object v12, v4, Lba/a;->e:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v12, Lv/p;

    .line 77
    .line 78
    if-eqz v12, :cond_1

    .line 79
    .line 80
    iget-object v13, v4, Lba/a;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v13, Lkb/a;

    .line 83
    .line 84
    invoke-virtual {v2, v9}, Lv/p;->a(I)F

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    invoke-virtual {v3, v9}, Lv/p;->a(I)F

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    iget-object v13, v13, Lkb/a;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v13, Lu/e;

    .line 95
    .line 96
    invoke-virtual {v13, v15}, Lu/e;->b(F)D

    .line 97
    .line 98
    .line 99
    move-result-wide v16

    .line 100
    const/16 p1, 0x0

    .line 101
    .line 102
    sget v6, Lu/f;->a:F

    .line 103
    .line 104
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 105
    .line 106
    float-to-double v10, v6

    .line 107
    sub-double v18, v10, p2

    .line 108
    .line 109
    iget v6, v13, Lu/e;->a:F

    .line 110
    .line 111
    iget v13, v13, Lu/e;->b:F

    .line 112
    .line 113
    mul-float v6, v6, v13

    .line 114
    .line 115
    move/from16 v20, v9

    .line 116
    .line 117
    float-to-double v8, v6

    .line 118
    div-double v10, v10, v18

    .line 119
    .line 120
    mul-double v10, v10, v16

    .line 121
    .line 122
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    .line 123
    .line 124
    .line 125
    move-result-wide v10

    .line 126
    mul-double v10, v10, v8

    .line 127
    .line 128
    double-to-float v6, v10

    .line 129
    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    mul-float v8, v8, v6

    .line 134
    .line 135
    add-float/2addr v8, v14

    .line 136
    move/from16 v6, v20

    .line 137
    .line 138
    invoke-virtual {v12, v8, v6}, Lv/p;->e(FI)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v9, v6, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    const/16 p1, 0x0

    .line 145
    .line 146
    invoke-static {v7}, Lg9/l;->j(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_2
    const/16 p1, 0x0

    .line 151
    .line 152
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 153
    .line 154
    iget-object v2, v4, Lba/a;->e:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v2, Lv/p;

    .line 157
    .line 158
    if-eqz v2, :cond_7

    .line 159
    .line 160
    invoke-interface {v1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iput-object v1, v0, Lv/r;->g:Ljava/lang/Object;

    .line 165
    .line 166
    iget-object v1, v0, Lv/r;->a:Lba/a;

    .line 167
    .line 168
    iget-object v2, v0, Lv/r;->d:Lv/p;

    .line 169
    .line 170
    iget-object v4, v1, Lba/a;->d:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v4, Lv/p;

    .line 173
    .line 174
    if-nez v4, :cond_3

    .line 175
    .line 176
    invoke-virtual {v2}, Lv/p;->c()Lv/p;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iput-object v4, v1, Lba/a;->d:Ljava/lang/Object;

    .line 181
    .line 182
    :cond_3
    iget-object v4, v1, Lba/a;->d:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v4, Lv/p;

    .line 185
    .line 186
    if-eqz v4, :cond_6

    .line 187
    .line 188
    invoke-virtual {v4}, Lv/p;->b()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    const-wide/16 v5, 0x0

    .line 193
    .line 194
    const/4 v7, 0x0

    .line 195
    :goto_1
    if-ge v7, v4, :cond_4

    .line 196
    .line 197
    iget-object v8, v1, Lba/a;->b:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v8, Lkb/a;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v7}, Lv/p;->a(I)F

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    iget-object v8, v8, Lkb/a;->b:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v8, Lu/e;

    .line 211
    .line 212
    invoke-virtual {v8, v9}, Lu/e;->b(F)D

    .line 213
    .line 214
    .line 215
    move-result-wide v8

    .line 216
    sget v10, Lu/f;->a:F

    .line 217
    .line 218
    float-to-double v10, v10

    .line 219
    sub-double v10, v10, p2

    .line 220
    .line 221
    div-double/2addr v8, v10

    .line 222
    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    .line 223
    .line 224
    .line 225
    move-result-wide v8

    .line 226
    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    mul-double v8, v8, v10

    .line 232
    .line 233
    double-to-long v8, v8

    .line 234
    const-wide/32 v10, 0xf4240

    .line 235
    .line 236
    .line 237
    mul-long v8, v8, v10

    .line 238
    .line 239
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 240
    .line 241
    .line 242
    move-result-wide v5

    .line 243
    add-int/lit8 v7, v7, 0x1

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_4
    iput-wide v5, v0, Lv/r;->h:J

    .line 247
    .line 248
    iget-object v1, v0, Lv/r;->a:Lba/a;

    .line 249
    .line 250
    iget-object v2, v0, Lv/r;->d:Lv/p;

    .line 251
    .line 252
    invoke-virtual {v1, v5, v6, v2, v3}, Lba/a;->z(JLv/p;Lv/p;)Lv/p;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v1}, Lv/d;->f(Lv/p;)Lv/p;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iput-object v1, v0, Lv/r;->f:Lv/p;

    .line 261
    .line 262
    invoke-virtual {v1}, Lv/p;->b()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    const/4 v8, 0x0

    .line 267
    :goto_2
    if-ge v8, v1, :cond_5

    .line 268
    .line 269
    iget-object v2, v0, Lv/r;->f:Lv/p;

    .line 270
    .line 271
    invoke-virtual {v2, v8}, Lv/p;->a(I)F

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    iget-object v4, v0, Lv/r;->a:Lba/a;

    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object v4, v0, Lv/r;->a:Lba/a;

    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    const/high16 v5, -0x80000000

    .line 287
    .line 288
    invoke-static {v3, v5, v4}, Li9/a;->m(FFF)F

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    invoke-virtual {v2, v3, v8}, Lv/p;->e(FI)V

    .line 293
    .line 294
    .line 295
    add-int/lit8 v8, v8, 0x1

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_5
    return-void

    .line 299
    :cond_6
    const-string v1, "velocityVector"

    .line 300
    .line 301
    invoke-static {v1}, Lg9/l;->j(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p1

    .line 305
    :cond_7
    invoke-static {v7}, Lg9/l;->j(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p1

    .line 309
    :cond_8
    const/16 p1, 0x0

    .line 310
    .line 311
    invoke-static {v7}, Lg9/l;->j(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lv/r;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Lv/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/r;->b:Lv/w0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(J)Lv/p;
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lp9/v;->a(Lv/f;J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lv/r;->d:Lv/p;

    .line 8
    .line 9
    iget-object v1, p0, Lv/r;->e:Lv/p;

    .line 10
    .line 11
    iget-object v2, p0, Lv/r;->a:Lba/a;

    .line 12
    .line 13
    invoke-virtual {v2, p1, p2, v0, v1}, Lba/a;->z(JLv/p;Lv/p;)Lv/p;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object p1, p0, Lv/r;->f:Lv/p;

    .line 19
    .line 20
    return-object p1
.end method

.method public final synthetic e(J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp9/v;->a(Lv/f;J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f(J)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p2}, Lp9/v;->a(Lv/f;J)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_6

    .line 8
    .line 9
    iget-object v1, v0, Lv/r;->b:Lv/w0;

    .line 10
    .line 11
    iget-object v1, v1, Lv/w0;->b:Lf9/k;

    .line 12
    .line 13
    iget-object v2, v0, Lv/r;->a:Lba/a;

    .line 14
    .line 15
    iget-object v3, v2, Lba/a;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lv/p;

    .line 18
    .line 19
    iget-object v4, v0, Lv/r;->d:Lv/p;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Lv/p;->c()Lv/p;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, v2, Lba/a;->c:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_0
    iget-object v3, v2, Lba/a;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lv/p;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const-string v6, "valueVector"

    .line 35
    .line 36
    if-eqz v3, :cond_5

    .line 37
    .line 38
    invoke-virtual {v3}, Lv/p;->b()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v7, 0x0

    .line 43
    :goto_0
    if-ge v7, v3, :cond_3

    .line 44
    .line 45
    iget-object v8, v2, Lba/a;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v8, Lv/p;

    .line 48
    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    iget-object v9, v2, Lba/a;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v9, Lkb/a;

    .line 54
    .line 55
    invoke-virtual {v4, v7}, Lv/p;->a(I)F

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    iget-object v11, v0, Lv/r;->e:Lv/p;

    .line 60
    .line 61
    invoke-virtual {v11, v7}, Lv/p;->a(I)F

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    const-wide/32 v12, 0xf4240

    .line 66
    .line 67
    .line 68
    div-long v12, p1, v12

    .line 69
    .line 70
    iget-object v9, v9, Lkb/a;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v9, Lu/e;

    .line 73
    .line 74
    invoke-virtual {v9, v11}, Lu/e;->a(F)Lu/d;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    iget-wide v14, v9, Lu/d;->c:J

    .line 79
    .line 80
    const-wide/16 v16, 0x0

    .line 81
    .line 82
    cmp-long v11, v14, v16

    .line 83
    .line 84
    if-lez v11, :cond_1

    .line 85
    .line 86
    long-to-float v11, v12

    .line 87
    long-to-float v12, v14

    .line 88
    div-float/2addr v11, v12

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    .line 91
    .line 92
    :goto_1
    iget v12, v9, Lu/d;->b:F

    .line 93
    .line 94
    iget v9, v9, Lu/d;->a:F

    .line 95
    .line 96
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    mul-float v9, v9, v12

    .line 101
    .line 102
    invoke-static {v11}, Lu/b;->a(F)Lu/a;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    iget v11, v11, Lu/a;->a:F

    .line 107
    .line 108
    mul-float v9, v9, v11

    .line 109
    .line 110
    add-float/2addr v9, v10

    .line 111
    invoke-virtual {v8, v9, v7}, Lv/p;->e(FI)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-static {v6}, Lg9/l;->j(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v5

    .line 121
    :cond_3
    iget-object v2, v2, Lba/a;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Lv/p;

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    invoke-interface {v1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    return-object v1

    .line 132
    :cond_4
    invoke-static {v6}, Lg9/l;->j(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v5

    .line 136
    :cond_5
    invoke-static {v6}, Lg9/l;->j(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v5

    .line 140
    :cond_6
    iget-object v1, v0, Lv/r;->g:Ljava/lang/Object;

    .line 141
    .line 142
    return-object v1
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/r;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
