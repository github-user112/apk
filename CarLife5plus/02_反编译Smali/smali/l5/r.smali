.class public abstract Ll5/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ld7/q;

.field public static final b:Ld7/q;

.field public static final c:Ly1/o0;

.field public static final d:Ly1/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Ld7/q;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ll5/r;->a:Ld7/q;

    .line 14
    .line 15
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v0, Ld7/q;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Ll5/r;->b:Ld7/q;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-wide v3, Ly1/q;->f:J

    .line 34
    .line 35
    new-instance v1, Ly1/q;

    .line 36
    .line 37
    invoke-direct {v1, v3, v4}, Ly1/q;-><init>(J)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Lr8/j;

    .line 41
    .line 42
    invoke-direct {v5, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const v1, 0x3e29fbe7    # 0.166f

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-wide v6, Ly1/q;->k:J

    .line 53
    .line 54
    new-instance v8, Ly1/q;

    .line 55
    .line 56
    invoke-direct {v8, v6, v7}, Ly1/q;-><init>(J)V

    .line 57
    .line 58
    .line 59
    new-instance v6, Lr8/j;

    .line 60
    .line 61
    invoke-direct {v6, v1, v8}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const v1, 0x3eaa7efa    # 0.333f

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-wide v7, Ly1/q;->h:J

    .line 72
    .line 73
    new-instance v9, Ly1/q;

    .line 74
    .line 75
    invoke-direct {v9, v7, v8}, Ly1/q;-><init>(J)V

    .line 76
    .line 77
    .line 78
    new-instance v7, Lr8/j;

    .line 79
    .line 80
    invoke-direct {v7, v1, v9}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const v1, 0x3eff7cee    # 0.499f

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    sget-wide v8, Ly1/q;->j:J

    .line 91
    .line 92
    new-instance v10, Ly1/q;

    .line 93
    .line 94
    invoke-direct {v10, v8, v9}, Ly1/q;-><init>(J)V

    .line 95
    .line 96
    .line 97
    new-instance v8, Lr8/j;

    .line 98
    .line 99
    invoke-direct {v8, v1, v10}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const v1, 0x3f2a7efa    # 0.666f

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    sget-wide v9, Ly1/q;->g:J

    .line 110
    .line 111
    new-instance v11, Ly1/q;

    .line 112
    .line 113
    invoke-direct {v11, v9, v10}, Ly1/q;-><init>(J)V

    .line 114
    .line 115
    .line 116
    new-instance v9, Lr8/j;

    .line 117
    .line 118
    invoke-direct {v9, v1, v11}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const v1, 0x3f553f7d    # 0.833f

    .line 122
    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-wide v10, Ly1/q;->i:J

    .line 129
    .line 130
    new-instance v12, Ly1/q;

    .line 131
    .line 132
    invoke-direct {v12, v10, v11}, Ly1/q;-><init>(J)V

    .line 133
    .line 134
    .line 135
    new-instance v10, Lr8/j;

    .line 136
    .line 137
    invoke-direct {v10, v1, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const v1, 0x3f7fbe77    # 0.999f

    .line 141
    .line 142
    .line 143
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v11, Ly1/q;

    .line 148
    .line 149
    invoke-direct {v11, v3, v4}, Ly1/q;-><init>(J)V

    .line 150
    .line 151
    .line 152
    new-instance v3, Lr8/j;

    .line 153
    .line 154
    invoke-direct {v3, v1, v11}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const/4 v1, 0x7

    .line 158
    new-array v4, v1, [Lr8/j;

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    aput-object v5, v4, v11

    .line 162
    .line 163
    aput-object v6, v4, v2

    .line 164
    .line 165
    const/4 v5, 0x2

    .line 166
    aput-object v7, v4, v5

    .line 167
    .line 168
    const/4 v6, 0x3

    .line 169
    aput-object v8, v4, v6

    .line 170
    .line 171
    const/4 v6, 0x4

    .line 172
    aput-object v9, v4, v6

    .line 173
    .line 174
    const/4 v6, 0x5

    .line 175
    aput-object v10, v4, v6

    .line 176
    .line 177
    const/4 v6, 0x6

    .line 178
    aput-object v3, v4, v6

    .line 179
    .line 180
    new-instance v3, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .line 184
    .line 185
    const/4 v6, 0x0

    .line 186
    :goto_0
    if-ge v6, v1, :cond_0

    .line 187
    .line 188
    aget-object v7, v4, v6

    .line 189
    .line 190
    iget-object v7, v7, Lr8/j;->b:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v7, Ly1/q;

    .line 193
    .line 194
    iget-wide v7, v7, Ly1/q;->a:J

    .line 195
    .line 196
    new-instance v9, Ly1/q;

    .line 197
    .line 198
    invoke-direct {v9, v7, v8}, Ly1/q;-><init>(J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    add-int/lit8 v6, v6, 0x1

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .line 211
    .line 212
    const/4 v7, 0x0

    .line 213
    :goto_1
    if-ge v7, v1, :cond_1

    .line 214
    .line 215
    aget-object v8, v4, v7

    .line 216
    .line 217
    iget-object v8, v8, Lr8/j;->a:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v8, Ljava/lang/Number;

    .line 220
    .line 221
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    add-int/lit8 v7, v7, 0x1

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_1
    new-instance v1, Ly1/o0;

    .line 236
    .line 237
    invoke-direct {v1, v3, v6}, Ly1/o0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 238
    .line 239
    .line 240
    sput-object v1, Ll5/r;->c:Ly1/o0;

    .line 241
    .line 242
    const-wide v3, 0xffffffffL

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    invoke-static {v3, v4}, Ly1/h0;->d(J)J

    .line 248
    .line 249
    .line 250
    move-result-wide v3

    .line 251
    new-instance v1, Ly1/q;

    .line 252
    .line 253
    invoke-direct {v1, v3, v4}, Ly1/q;-><init>(J)V

    .line 254
    .line 255
    .line 256
    new-instance v3, Lr8/j;

    .line 257
    .line 258
    invoke-direct {v3, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    const/high16 v0, 0x3f800000    # 1.0f

    .line 262
    .line 263
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const v1, 0xffffff

    .line 268
    .line 269
    .line 270
    invoke-static {v1}, Ly1/h0;->c(I)J

    .line 271
    .line 272
    .line 273
    move-result-wide v6

    .line 274
    new-instance v1, Ly1/q;

    .line 275
    .line 276
    invoke-direct {v1, v6, v7}, Ly1/q;-><init>(J)V

    .line 277
    .line 278
    .line 279
    new-instance v4, Lr8/j;

    .line 280
    .line 281
    invoke-direct {v4, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    new-array v0, v5, [Lr8/j;

    .line 285
    .line 286
    aput-object v3, v0, v11

    .line 287
    .line 288
    aput-object v4, v0, v2

    .line 289
    .line 290
    new-instance v1, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .line 294
    .line 295
    const/4 v2, 0x0

    .line 296
    :goto_2
    if-ge v2, v5, :cond_2

    .line 297
    .line 298
    aget-object v3, v0, v2

    .line 299
    .line 300
    iget-object v3, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v3, Ly1/q;

    .line 303
    .line 304
    iget-wide v3, v3, Ly1/q;->a:J

    .line 305
    .line 306
    new-instance v6, Ly1/q;

    .line 307
    .line 308
    invoke-direct {v6, v3, v4}, Ly1/q;-><init>(J)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    add-int/lit8 v2, v2, 0x1

    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .line 321
    .line 322
    :goto_3
    if-ge v11, v5, :cond_3

    .line 323
    .line 324
    aget-object v3, v0, v11

    .line 325
    .line 326
    iget-object v3, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v3, Ljava/lang/Number;

    .line 329
    .line 330
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    add-int/lit8 v11, v11, 0x1

    .line 342
    .line 343
    goto :goto_3

    .line 344
    :cond_3
    new-instance v0, Ly1/f0;

    .line 345
    .line 346
    invoke-direct {v0, v1, v2}, Ly1/f0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 347
    .line 348
    .line 349
    sput-object v0, Ll5/r;->d:Ly1/f0;

    .line 350
    .line 351
    return-void
.end method
