.class public abstract Ly2/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:[Ljava/util/Comparator;

.field public static final b:Ly2/q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/util/Comparator;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    sget-object v3, Ly2/e;->c:Ly2/e;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v3, Ly2/e;->b:Ly2/e;

    .line 13
    .line 14
    :goto_1
    new-instance v4, Llb/u;

    .line 15
    .line 16
    invoke-direct {v4, v3}, Llb/u;-><init>(Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Llb/u;

    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    invoke-direct {v3, v5, v4}, Llb/u;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    aput-object v3, v1, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sput-object v1, Ly2/v;->a:[Ljava/util/Comparator;

    .line 31
    .line 32
    sget-object v0, Ly2/q;->t:Ly2/q;

    .line 33
    .line 34
    sput-object v0, Ly2/v;->b:Ly2/q;

    .line 35
    .line 36
    return-void
.end method

.method public static final a(Ly2/m;Ljava/util/ArrayList;Lb2/a;Lb2/a;Ls/w;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly2/m;->d:Ly2/j;

    .line 2
    .line 3
    sget-object v1, Ly2/r;->m:Ly2/u;

    .line 4
    .line 5
    iget-object v0, v0, Ly2/j;->a:Ls/h0;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3, p0}, Lb2/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p2, p0}, Lb2/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    const/4 v1, 0x7

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget p1, p0, Ly2/m;->g:I

    .line 54
    .line 55
    invoke-static {v1, p0}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p0, p2, p3, v0}, Ly2/v;->b(Ly2/m;Lb2/a;Lb2/a;Ljava/util/List;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p4, p1, p0}, Ls/w;->h(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-static {v1, p0}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x0

    .line 76
    :goto_0
    if-ge v1, v0, :cond_4

    .line 77
    .line 78
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ly2/m;

    .line 83
    .line 84
    invoke-static {v2, p1, p2, p3, p4}, Ly2/v;->a(Ly2/m;Ljava/util/ArrayList;Lb2/a;Lb2/a;Ls/w;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    return-void
.end method

.method public static final b(Ly2/m;Lb2/a;Lb2/a;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    sget-object v1, Ls/l;->a:Ls/w;

    .line 4
    .line 5
    new-instance v1, Ls/w;

    .line 6
    .line 7
    invoke-direct {v1}, Ls/w;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    if-ge v5, v3, :cond_0

    .line 21
    .line 22
    move-object/from16 v6, p3

    .line 23
    .line 24
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    check-cast v7, Ly2/m;

    .line 29
    .line 30
    move-object/from16 v8, p1

    .line 31
    .line 32
    invoke-static {v7, v2, v8, v0, v1}, Ly2/v;->a(Ly2/m;Ljava/util/ArrayList;Lb2/a;Lb2/a;Ls/w;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object/from16 v5, p0

    .line 39
    .line 40
    iget-object v3, v5, Ly2/m;->c:Lq2/h0;

    .line 41
    .line 42
    iget-object v3, v3, Lq2/h0;->y:Ln3/m;

    .line 43
    .line 44
    sget-object v5, Ln3/m;->b:Ln3/m;

    .line 45
    .line 46
    if-ne v3, v5, :cond_1

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v3, 0x0

    .line 51
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const/4 v8, 0x2

    .line 58
    div-int/2addr v7, v8

    .line 59
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lp9/x1;->u(Ljava/util/List;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-ltz v7, :cond_7

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    :goto_2
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    check-cast v10, Ly2/m;

    .line 74
    .line 75
    if-eqz v9, :cond_5

    .line 76
    .line 77
    invoke-virtual {v10}, Ly2/m;->h()Lx1/c;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    iget v11, v11, Lx1/c;->b:F

    .line 82
    .line 83
    invoke-virtual {v10}, Ly2/m;->h()Lx1/c;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    iget v12, v12, Lx1/c;->d:F

    .line 88
    .line 89
    cmpl-float v13, v11, v12

    .line 90
    .line 91
    if-ltz v13, :cond_2

    .line 92
    .line 93
    const/4 v13, 0x1

    .line 94
    goto :goto_3

    .line 95
    :cond_2
    const/4 v13, 0x0

    .line 96
    :goto_3
    invoke-static {v5}, Lp9/x1;->u(Ljava/util/List;)I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    if-ltz v14, :cond_5

    .line 101
    .line 102
    const/4 v15, 0x0

    .line 103
    :goto_4
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v16

    .line 107
    const/16 v17, 0x0

    .line 108
    .line 109
    move-object/from16 v4, v16

    .line 110
    .line 111
    check-cast v4, Lr8/j;

    .line 112
    .line 113
    iget-object v4, v4, Lr8/j;->a:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v4, Lx1/c;

    .line 116
    .line 117
    iget v8, v4, Lx1/c;->b:F

    .line 118
    .line 119
    iget v6, v4, Lx1/c;->d:F

    .line 120
    .line 121
    cmpl-float v16, v8, v6

    .line 122
    .line 123
    if-ltz v16, :cond_3

    .line 124
    .line 125
    const/16 v16, 0x1

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_3
    const/16 v16, 0x0

    .line 129
    .line 130
    :goto_5
    if-nez v13, :cond_4

    .line 131
    .line 132
    if-nez v16, :cond_4

    .line 133
    .line 134
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    .line 139
    .line 140
    .line 141
    move-result v16

    .line 142
    cmpg-float v8, v8, v16

    .line 143
    .line 144
    if-gez v8, :cond_4

    .line 145
    .line 146
    new-instance v8, Lx1/c;

    .line 147
    .line 148
    iget v13, v4, Lx1/c;->a:F

    .line 149
    .line 150
    const/4 v14, 0x0

    .line 151
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    iget v14, v4, Lx1/c;->b:F

    .line 156
    .line 157
    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    iget v4, v4, Lx1/c;->c:F

    .line 162
    .line 163
    const/high16 v14, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 164
    .line 165
    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-direct {v8, v13, v11, v4, v6}, Lx1/c;-><init>(FFFF)V

    .line 174
    .line 175
    .line 176
    new-instance v4, Lr8/j;

    .line 177
    .line 178
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    check-cast v6, Lr8/j;

    .line 183
    .line 184
    iget-object v6, v6, Lr8/j;->b:Ljava/lang/Object;

    .line 185
    .line 186
    invoke-direct {v4, v8, v6}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v15, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Lr8/j;

    .line 197
    .line 198
    iget-object v4, v4, Lr8/j;->b:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v4, Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_4
    if-eq v15, v14, :cond_6

    .line 207
    .line 208
    add-int/lit8 v15, v15, 0x1

    .line 209
    .line 210
    const/4 v8, 0x2

    .line 211
    goto :goto_4

    .line 212
    :cond_5
    const/16 v17, 0x0

    .line 213
    .line 214
    :cond_6
    invoke-virtual {v10}, Ly2/m;->h()Lx1/c;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    new-instance v6, Lr8/j;

    .line 219
    .line 220
    const/4 v8, 0x1

    .line 221
    new-array v11, v8, [Ly2/m;

    .line 222
    .line 223
    aput-object v10, v11, v17

    .line 224
    .line 225
    invoke-static {v11}, Lp9/x1;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-direct {v6, v4, v8}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :goto_6
    if-eq v9, v7, :cond_8

    .line 236
    .line 237
    add-int/lit8 v9, v9, 0x1

    .line 238
    .line 239
    const/4 v8, 0x2

    .line 240
    goto/16 :goto_2

    .line 241
    .line 242
    :cond_7
    const/16 v17, 0x0

    .line 243
    .line 244
    :cond_8
    sget-object v2, Ly2/e;->d:Ly2/e;

    .line 245
    .line 246
    invoke-static {v5, v2}, Ls8/t;->T(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    .line 248
    .line 249
    new-instance v2, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .line 253
    .line 254
    sget-object v4, Ly2/v;->a:[Ljava/util/Comparator;

    .line 255
    .line 256
    const/4 v8, 0x1

    .line 257
    xor-int/2addr v3, v8

    .line 258
    aget-object v3, v4, v3

    .line 259
    .line 260
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    const/4 v6, 0x0

    .line 265
    :goto_7
    if-ge v6, v4, :cond_9

    .line 266
    .line 267
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    check-cast v7, Lr8/j;

    .line 272
    .line 273
    iget-object v8, v7, Lr8/j;->b:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v8, Ljava/util/List;

    .line 276
    .line 277
    invoke-static {v8, v3}, Ls8/t;->T(Ljava/util/List;Ljava/util/Comparator;)V

    .line 278
    .line 279
    .line 280
    iget-object v7, v7, Lr8/j;->b:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v7, Ljava/util/Collection;

    .line 283
    .line 284
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 285
    .line 286
    .line 287
    add-int/lit8 v6, v6, 0x1

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_9
    new-instance v3, Lu8/a;

    .line 291
    .line 292
    sget-object v4, Ly2/v;->b:Ly2/q;

    .line 293
    .line 294
    const/4 v5, 0x2

    .line 295
    invoke-direct {v3, v5, v4}, Lu8/a;-><init>(ILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    invoke-static {v2, v3}, Ls8/t;->T(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    .line 300
    .line 301
    const/4 v4, 0x0

    .line 302
    :goto_8
    invoke-static {v2}, Lp9/x1;->u(Ljava/util/List;)I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-gt v4, v3, :cond_c

    .line 307
    .line 308
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    check-cast v3, Ly2/m;

    .line 313
    .line 314
    iget v3, v3, Ly2/m;->g:I

    .line 315
    .line 316
    invoke-virtual {v1, v3}, Ls/k;->b(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    check-cast v3, Ljava/util/List;

    .line 321
    .line 322
    if-eqz v3, :cond_b

    .line 323
    .line 324
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-virtual {v0, v5}, Lb2/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    check-cast v5, Ljava/lang/Boolean;

    .line 333
    .line 334
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    if-nez v5, :cond_a

    .line 339
    .line 340
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 345
    .line 346
    :goto_9
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 347
    .line 348
    .line 349
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    add-int/2addr v4, v3

    .line 354
    goto :goto_8

    .line 355
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_c
    return-object v2
.end method
