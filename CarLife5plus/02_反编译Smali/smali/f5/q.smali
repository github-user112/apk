.class public final Lf5/q;
.super Lf5/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final j:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public b:Lf5/o;

.field public c:Landroid/graphics/PorterDuffColorFilter;

.field public d:Landroid/graphics/ColorFilter;

.field public e:Z

.field public f:Z

.field public final g:[F

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    sput-object v0, Lf5/q;->j:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf5/q;->f:Z

    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, Lf5/q;->g:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lf5/q;->h:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf5/q;->i:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Lf5/o;

    .line 7
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 9
    sget-object v1, Lf5/q;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, v0, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 10
    new-instance v1, Lf5/n;

    invoke-direct {v1}, Lf5/n;-><init>()V

    iput-object v1, v0, Lf5/o;->b:Lf5/n;

    .line 11
    iput-object v0, p0, Lf5/q;->b:Lf5/o;

    return-void
.end method

.method public constructor <init>(Lf5/o;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lf5/q;->f:Z

    const/16 v0, 0x9

    .line 14
    new-array v0, v0, [F

    iput-object v0, p0, Lf5/q;->g:[F

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lf5/q;->h:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf5/q;->i:Landroid/graphics/Rect;

    .line 17
    iput-object p1, p0, Lf5/q;->b:Lf5/o;

    .line 18
    iget-object v0, p1, Lf5/o;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Lf5/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lf5/q;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lf5/h;->getState()[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Lf5/q;->i:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_d

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-gtz v3, :cond_1

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    iget-object v3, v0, Lf5/q;->d:Landroid/graphics/ColorFilter;

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v3, v0, Lf5/q;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 37
    .line 38
    :cond_2
    iget-object v4, v0, Lf5/q;->h:Landroid/graphics/Matrix;

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 41
    .line 42
    .line 43
    iget-object v5, v0, Lf5/q;->g:[F

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    aget v6, v5, v4

    .line 50
    .line 51
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x4

    .line 56
    aget v7, v5, v7

    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/4 v8, 0x1

    .line 63
    aget v9, v5, v8

    .line 64
    .line 65
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    const/4 v10, 0x3

    .line 70
    aget v5, v5, v10

    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const/high16 v10, 0x3f800000    # 1.0f

    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    cmpl-float v9, v9, v11

    .line 80
    .line 81
    if-nez v9, :cond_3

    .line 82
    .line 83
    cmpl-float v5, v5, v11

    .line 84
    .line 85
    if-eqz v5, :cond_4

    .line 86
    .line 87
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    .line 88
    .line 89
    const/high16 v7, 0x3f800000    # 1.0f

    .line 90
    .line 91
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    int-to-float v5, v5

    .line 96
    mul-float v5, v5, v6

    .line 97
    .line 98
    float-to-int v5, v5

    .line 99
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    int-to-float v6, v6

    .line 104
    mul-float v6, v6, v7

    .line 105
    .line 106
    float-to-int v6, v6

    .line 107
    const/16 v7, 0x800

    .line 108
    .line 109
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-lez v5, :cond_d

    .line 118
    .line 119
    if-gtz v6, :cond_5

    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    int-to-float v9, v9

    .line 130
    iget v12, v2, Landroid/graphics/Rect;->top:I

    .line 131
    .line 132
    int-to-float v12, v12

    .line 133
    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lf5/q;->isAutoMirrored()Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-eqz v9, :cond_6

    .line 141
    .line 142
    invoke-static {v0}, Lp9/p1;->w(Landroid/graphics/drawable/Drawable;)I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-ne v9, v8, :cond_6

    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    int-to-float v9, v9

    .line 153
    invoke-virtual {v1, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    .line 155
    .line 156
    const/high16 v9, -0x40800000    # -1.0f

    .line 157
    .line 158
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 159
    .line 160
    .line 161
    :cond_6
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 162
    .line 163
    .line 164
    iget-object v9, v0, Lf5/q;->b:Lf5/o;

    .line 165
    .line 166
    iget-object v10, v9, Lf5/o;->f:Landroid/graphics/Bitmap;

    .line 167
    .line 168
    if-eqz v10, :cond_7

    .line 169
    .line 170
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-ne v5, v10, :cond_7

    .line 175
    .line 176
    iget-object v10, v9, Lf5/o;->f:Landroid/graphics/Bitmap;

    .line 177
    .line 178
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-ne v6, v10, :cond_7

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_7
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 186
    .line 187
    invoke-static {v5, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    iput-object v10, v9, Lf5/o;->f:Landroid/graphics/Bitmap;

    .line 192
    .line 193
    iput-boolean v8, v9, Lf5/o;->k:Z

    .line 194
    .line 195
    :goto_0
    iget-boolean v9, v0, Lf5/q;->f:Z

    .line 196
    .line 197
    if-nez v9, :cond_8

    .line 198
    .line 199
    iget-object v9, v0, Lf5/q;->b:Lf5/o;

    .line 200
    .line 201
    iget-object v10, v9, Lf5/o;->f:Landroid/graphics/Bitmap;

    .line 202
    .line 203
    invoke-virtual {v10, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 204
    .line 205
    .line 206
    new-instance v15, Landroid/graphics/Canvas;

    .line 207
    .line 208
    iget-object v4, v9, Lf5/o;->f:Landroid/graphics/Bitmap;

    .line 209
    .line 210
    invoke-direct {v15, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .line 212
    .line 213
    iget-object v12, v9, Lf5/o;->b:Lf5/n;

    .line 214
    .line 215
    iget-object v13, v12, Lf5/n;->g:Lf5/k;

    .line 216
    .line 217
    sget-object v14, Lf5/n;->p:Landroid/graphics/Matrix;

    .line 218
    .line 219
    move/from16 v16, v5

    .line 220
    .line 221
    move/from16 v17, v6

    .line 222
    .line 223
    invoke-virtual/range {v12 .. v17}, Lf5/n;->a(Lf5/k;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_8
    move/from16 v16, v5

    .line 228
    .line 229
    move/from16 v17, v6

    .line 230
    .line 231
    iget-object v5, v0, Lf5/q;->b:Lf5/o;

    .line 232
    .line 233
    iget-boolean v6, v5, Lf5/o;->k:Z

    .line 234
    .line 235
    if-nez v6, :cond_9

    .line 236
    .line 237
    iget-object v6, v5, Lf5/o;->g:Landroid/content/res/ColorStateList;

    .line 238
    .line 239
    iget-object v9, v5, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 240
    .line 241
    if-ne v6, v9, :cond_9

    .line 242
    .line 243
    iget-object v6, v5, Lf5/o;->h:Landroid/graphics/PorterDuff$Mode;

    .line 244
    .line 245
    iget-object v9, v5, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 246
    .line 247
    if-ne v6, v9, :cond_9

    .line 248
    .line 249
    iget-boolean v6, v5, Lf5/o;->j:Z

    .line 250
    .line 251
    iget-boolean v9, v5, Lf5/o;->e:Z

    .line 252
    .line 253
    if-ne v6, v9, :cond_9

    .line 254
    .line 255
    iget v6, v5, Lf5/o;->i:I

    .line 256
    .line 257
    iget-object v5, v5, Lf5/o;->b:Lf5/n;

    .line 258
    .line 259
    invoke-virtual {v5}, Lf5/n;->getRootAlpha()I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-ne v6, v5, :cond_9

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_9
    iget-object v5, v0, Lf5/q;->b:Lf5/o;

    .line 267
    .line 268
    iget-object v6, v5, Lf5/o;->f:Landroid/graphics/Bitmap;

    .line 269
    .line 270
    invoke-virtual {v6, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 271
    .line 272
    .line 273
    new-instance v15, Landroid/graphics/Canvas;

    .line 274
    .line 275
    iget-object v6, v5, Lf5/o;->f:Landroid/graphics/Bitmap;

    .line 276
    .line 277
    invoke-direct {v15, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    .line 279
    .line 280
    iget-object v12, v5, Lf5/o;->b:Lf5/n;

    .line 281
    .line 282
    iget-object v13, v12, Lf5/n;->g:Lf5/k;

    .line 283
    .line 284
    sget-object v14, Lf5/n;->p:Landroid/graphics/Matrix;

    .line 285
    .line 286
    invoke-virtual/range {v12 .. v17}, Lf5/n;->a(Lf5/k;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 287
    .line 288
    .line 289
    iget-object v5, v0, Lf5/q;->b:Lf5/o;

    .line 290
    .line 291
    iget-object v6, v5, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 292
    .line 293
    iput-object v6, v5, Lf5/o;->g:Landroid/content/res/ColorStateList;

    .line 294
    .line 295
    iget-object v6, v5, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 296
    .line 297
    iput-object v6, v5, Lf5/o;->h:Landroid/graphics/PorterDuff$Mode;

    .line 298
    .line 299
    iget-object v6, v5, Lf5/o;->b:Lf5/n;

    .line 300
    .line 301
    invoke-virtual {v6}, Lf5/n;->getRootAlpha()I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    iput v6, v5, Lf5/o;->i:I

    .line 306
    .line 307
    iget-boolean v6, v5, Lf5/o;->e:Z

    .line 308
    .line 309
    iput-boolean v6, v5, Lf5/o;->j:Z

    .line 310
    .line 311
    iput-boolean v4, v5, Lf5/o;->k:Z

    .line 312
    .line 313
    :goto_1
    iget-object v4, v0, Lf5/q;->b:Lf5/o;

    .line 314
    .line 315
    iget-object v5, v4, Lf5/o;->b:Lf5/n;

    .line 316
    .line 317
    invoke-virtual {v5}, Lf5/n;->getRootAlpha()I

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    const/16 v6, 0xff

    .line 322
    .line 323
    const/4 v9, 0x0

    .line 324
    if-ge v5, v6, :cond_a

    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_a
    if-nez v3, :cond_b

    .line 328
    .line 329
    move-object v3, v9

    .line 330
    goto :goto_3

    .line 331
    :cond_b
    :goto_2
    iget-object v5, v4, Lf5/o;->l:Landroid/graphics/Paint;

    .line 332
    .line 333
    if-nez v5, :cond_c

    .line 334
    .line 335
    new-instance v5, Landroid/graphics/Paint;

    .line 336
    .line 337
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 338
    .line 339
    .line 340
    iput-object v5, v4, Lf5/o;->l:Landroid/graphics/Paint;

    .line 341
    .line 342
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 343
    .line 344
    .line 345
    :cond_c
    iget-object v5, v4, Lf5/o;->l:Landroid/graphics/Paint;

    .line 346
    .line 347
    iget-object v6, v4, Lf5/o;->b:Lf5/n;

    .line 348
    .line 349
    invoke-virtual {v6}, Lf5/n;->getRootAlpha()I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 354
    .line 355
    .line 356
    iget-object v5, v4, Lf5/o;->l:Landroid/graphics/Paint;

    .line 357
    .line 358
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 359
    .line 360
    .line 361
    iget-object v3, v4, Lf5/o;->l:Landroid/graphics/Paint;

    .line 362
    .line 363
    :goto_3
    iget-object v4, v4, Lf5/o;->f:Landroid/graphics/Bitmap;

    .line 364
    .line 365
    invoke-virtual {v1, v4, v9, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 369
    .line 370
    .line 371
    :cond_d
    :goto_4
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 11
    .line 12
    iget-object v0, v0, Lf5/o;->b:Lf5/n;

    .line 13
    .line 14
    invoke-virtual {v0}, Lf5/n;->getRootAlpha()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lf5/q;->b:Lf5/o;

    .line 15
    .line 16
    invoke-virtual {v1}, Lf5/o;->getChangingConfigurations()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    or-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lf5/q;->d:Landroid/graphics/ColorFilter;

    .line 11
    .line 12
    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lf5/p;

    .line 12
    .line 13
    iget-object v1, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lf5/p;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 24
    .line 25
    invoke-virtual {p0}, Lf5/q;->getChangingConfigurations()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lf5/o;->a:I

    .line 30
    .line 31
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 32
    .line 33
    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 11
    .line 12
    iget-object v0, v0, Lf5/o;->b:Lf5/n;

    .line 13
    .line 14
    iget v0, v0, Lf5/n;->i:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 11
    .line 12
    iget-object v0, v0, Lf5/o;->b:Lf5/n;

    .line 13
    .line 14
    iget v0, v0, Lf5/n;->h:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x3

    .line 11
    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lf5/q;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 4
    iget-object v5, v0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_0
    iget-object v5, v0, Lf5/q;->b:Lf5/o;

    .line 7
    new-instance v6, Lf5/n;

    invoke-direct {v6}, Lf5/n;-><init>()V

    .line 8
    iput-object v6, v5, Lf5/o;->b:Lf5/n;

    .line 9
    sget-object v6, Lf5/a;->a:[I

    invoke-static {v1, v4, v3, v6}, Lw3/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 10
    iget-object v7, v0, Lf5/q;->b:Lf5/o;

    .line 11
    iget-object v8, v7, Lf5/o;->b:Lf5/n;

    .line 12
    const-string v9, "tintMode"

    .line 13
    invoke-static {v2, v9}, Lw3/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x6

    if-nez v9, :cond_1

    const/4 v9, -0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v6, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 15
    :goto_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v13, 0x9

    const/4 v14, 0x3

    const/4 v15, 0x5

    if-eq v9, v14, :cond_3

    if-eq v9, v15, :cond_4

    if-eq v9, v13, :cond_2

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 16
    :pswitch_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 17
    :pswitch_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 18
    :pswitch_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 19
    :cond_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 20
    :cond_3
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 21
    :cond_4
    :goto_1
    iput-object v12, v7, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 22
    invoke-static {v6, v2, v4}, Lw3/b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 23
    iput-object v9, v7, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 24
    :cond_5
    iget-boolean v9, v7, Lf5/o;->e:Z

    .line 25
    const-string v12, "http://schemas.android.com/apk/res/android"

    const-string v11, "autoMirrored"

    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 26
    invoke-virtual {v6, v15, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 27
    :cond_6
    iput-boolean v9, v7, Lf5/o;->e:Z

    .line 28
    iget v7, v8, Lf5/n;->j:F

    .line 29
    const-string v9, "viewportWidth"

    invoke-interface {v2, v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x7

    if-eqz v9, :cond_7

    .line 30
    invoke-virtual {v6, v11, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 31
    :cond_7
    iput v7, v8, Lf5/n;->j:F

    .line 32
    iget v7, v8, Lf5/n;->k:F

    .line 33
    const-string v9, "viewportHeight"

    invoke-interface {v2, v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x8

    if-eqz v9, :cond_8

    .line 34
    invoke-virtual {v6, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 35
    :cond_8
    iput v7, v8, Lf5/n;->k:F

    .line 36
    iget v9, v8, Lf5/n;->j:F

    const/4 v11, 0x0

    cmpg-float v9, v9, v11

    if-lez v9, :cond_36

    cmpg-float v7, v7, v11

    if-lez v7, :cond_35

    .line 37
    iget v7, v8, Lf5/n;->h:F

    invoke-virtual {v6, v14, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Lf5/n;->h:F

    .line 38
    iget v7, v8, Lf5/n;->i:F

    const/4 v9, 0x2

    invoke-virtual {v6, v9, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Lf5/n;->i:F

    .line 39
    iget v13, v8, Lf5/n;->h:F

    cmpg-float v13, v13, v11

    if-lez v13, :cond_34

    cmpg-float v7, v7, v11

    if-lez v7, :cond_33

    .line 40
    invoke-virtual {v8}, Lf5/n;->getAlpha()F

    move-result v7

    .line 41
    const-string v13, "alpha"

    invoke-interface {v2, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x4

    if-eqz v13, :cond_9

    .line 42
    invoke-virtual {v6, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 43
    :cond_9
    invoke-virtual {v8, v7}, Lf5/n;->setAlpha(F)V

    const/4 v7, 0x0

    .line 44
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 45
    iput-object v13, v8, Lf5/n;->m:Ljava/lang/String;

    .line 46
    iget-object v10, v8, Lf5/n;->o:Ls/f;

    invoke-virtual {v10, v13, v8}, Ls/q0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_a
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-virtual {v0}, Lf5/q;->getChangingConfigurations()I

    move-result v6

    iput v6, v5, Lf5/o;->a:I

    const/4 v6, 0x1

    .line 49
    iput-boolean v6, v5, Lf5/o;->k:Z

    .line 50
    iget-object v8, v0, Lf5/q;->b:Lf5/o;

    .line 51
    iget-object v10, v8, Lf5/o;->b:Lf5/n;

    .line 52
    new-instance v13, Ljava/util/ArrayDeque;

    invoke-direct {v13}, Ljava/util/ArrayDeque;-><init>()V

    .line 53
    iget-object v15, v10, Lf5/n;->g:Lf5/k;

    iget-object v10, v10, Lf5/n;->o:Ls/f;

    invoke-virtual {v13, v15}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 54
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    .line 55
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    add-int/lit8 v7, v19, 0x1

    const/16 v19, 0x1

    :goto_2
    if-eq v15, v6, :cond_31

    .line 56
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ge v6, v7, :cond_b

    if-eq v15, v14, :cond_31

    .line 57
    :cond_b
    const-string v6, "group"

    if-ne v15, v9, :cond_2f

    .line 58
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 59
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    check-cast v14, Lf5/k;

    .line 60
    const-string v9, "path"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "fillType"

    move/from16 v22, v7

    const-string v7, "pathData"

    if-eqz v9, :cond_20

    .line 61
    new-instance v6, Lf5/j;

    .line 62
    invoke-direct {v6}, Lf5/m;-><init>()V

    const/4 v9, 0x0

    .line 63
    iput v9, v6, Lf5/j;->e:F

    const/high16 v15, 0x3f800000    # 1.0f

    .line 64
    iput v15, v6, Lf5/j;->g:F

    .line 65
    iput v15, v6, Lf5/j;->h:F

    .line 66
    iput v9, v6, Lf5/j;->i:F

    .line 67
    iput v15, v6, Lf5/j;->j:F

    .line 68
    iput v9, v6, Lf5/j;->k:F

    .line 69
    sget-object v15, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v15, v6, Lf5/j;->l:Landroid/graphics/Paint$Cap;

    .line 70
    sget-object v9, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v9, v6, Lf5/j;->m:Landroid/graphics/Paint$Join;

    move-object/from16 v19, v9

    const/high16 v9, 0x40800000    # 4.0f

    .line 71
    iput v9, v6, Lf5/j;->n:F

    .line 72
    sget-object v9, Lf5/a;->c:[I

    invoke-static {v1, v4, v3, v9}, Lw3/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 73
    invoke-interface {v2, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    move-object/from16 v23, v15

    const/4 v7, 0x0

    .line 74
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 75
    iput-object v15, v6, Lf5/m;->b:Ljava/lang/String;

    :cond_c
    const/4 v7, 0x2

    .line 76
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 77
    invoke-static {v15}, Lp9/l;->l(Ljava/lang/String;)[Lx3/d;

    move-result-object v7

    iput-object v7, v6, Lf5/m;->a:[Lx3/d;

    .line 78
    :cond_d
    const-string v7, "fillColor"

    const/4 v15, 0x1

    invoke-static {v9, v2, v4, v7, v15}, Lw3/b;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Le7/l;

    move-result-object v7

    iput-object v7, v6, Lf5/j;->f:Le7/l;

    .line 79
    iget v7, v6, Lf5/j;->h:F

    .line 80
    const-string v15, "fillAlpha"

    invoke-interface {v2, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_e

    const/16 v15, 0xc

    .line 81
    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 82
    :cond_e
    iput v7, v6, Lf5/j;->h:F

    .line 83
    const-string v7, "strokeLineCap"

    .line 84
    invoke-interface {v2, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    const/16 v7, 0x8

    const/4 v15, -0x1

    .line 85
    invoke-virtual {v9, v7, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v15, v18

    goto :goto_3

    :cond_f
    const/4 v15, -0x1

    .line 86
    :goto_3
    iget-object v7, v6, Lf5/j;->l:Landroid/graphics/Paint$Cap;

    if-eqz v15, :cond_12

    move-object/from16 v24, v7

    const/4 v7, 0x1

    if-eq v15, v7, :cond_11

    const/4 v7, 0x2

    if-eq v15, v7, :cond_10

    move-object/from16 v15, v24

    goto :goto_4

    .line 87
    :cond_10
    sget-object v15, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_4

    .line 88
    :cond_11
    sget-object v15, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_4

    :cond_12
    move-object/from16 v15, v23

    .line 89
    :goto_4
    iput-object v15, v6, Lf5/j;->l:Landroid/graphics/Paint$Cap;

    .line 90
    const-string v7, "strokeLineJoin"

    .line 91
    invoke-interface {v2, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    const/4 v7, -0x1

    const/16 v15, 0x9

    .line 92
    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v7, v16

    goto :goto_5

    :cond_13
    const/4 v7, -0x1

    .line 93
    :goto_5
    iget-object v15, v6, Lf5/j;->m:Landroid/graphics/Paint$Join;

    if-eqz v7, :cond_16

    move-object/from16 v23, v15

    const/4 v15, 0x1

    if-eq v7, v15, :cond_15

    const/4 v15, 0x2

    if-eq v7, v15, :cond_14

    move-object/from16 v7, v23

    goto :goto_6

    .line 94
    :cond_14
    sget-object v7, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_6

    .line 95
    :cond_15
    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_6

    :cond_16
    move-object/from16 v7, v19

    .line 96
    :goto_6
    iput-object v7, v6, Lf5/j;->m:Landroid/graphics/Paint$Join;

    .line 97
    iget v7, v6, Lf5/j;->n:F

    .line 98
    const-string v15, "strokeMiterLimit"

    invoke-interface {v2, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_17

    const/16 v15, 0xa

    .line 99
    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 100
    :cond_17
    iput v7, v6, Lf5/j;->n:F

    .line 101
    const-string v7, "strokeColor"

    const/4 v15, 0x3

    invoke-static {v9, v2, v4, v7, v15}, Lw3/b;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Le7/l;

    move-result-object v7

    iput-object v7, v6, Lf5/j;->d:Le7/l;

    .line 102
    iget v7, v6, Lf5/j;->g:F

    .line 103
    const-string v15, "strokeAlpha"

    invoke-interface {v2, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_18

    const/16 v15, 0xb

    .line 104
    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 105
    :cond_18
    iput v7, v6, Lf5/j;->g:F

    .line 106
    iget v7, v6, Lf5/j;->e:F

    .line 107
    const-string v15, "strokeWidth"

    invoke-interface {v2, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_19

    const/4 v15, 0x4

    .line 108
    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 109
    :cond_19
    iput v7, v6, Lf5/j;->e:F

    .line 110
    iget v7, v6, Lf5/j;->j:F

    .line 111
    const-string v15, "trimPathEnd"

    invoke-interface {v2, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1a

    const/4 v15, 0x6

    .line 112
    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 113
    :cond_1a
    iput v7, v6, Lf5/j;->j:F

    .line 114
    iget v7, v6, Lf5/j;->k:F

    .line 115
    const-string v15, "trimPathOffset"

    invoke-interface {v2, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1b

    const/4 v15, 0x7

    .line 116
    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 117
    :cond_1b
    iput v7, v6, Lf5/j;->k:F

    .line 118
    iget v7, v6, Lf5/j;->i:F

    .line 119
    const-string v15, "trimPathStart"

    invoke-interface {v2, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1c

    const/4 v15, 0x5

    .line 120
    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 121
    :cond_1c
    iput v7, v6, Lf5/j;->i:F

    .line 122
    iget v7, v6, Lf5/m;->c:I

    .line 123
    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1d

    const/16 v11, 0xd

    .line 124
    invoke-virtual {v9, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 125
    :cond_1d
    iput v7, v6, Lf5/m;->c:I

    .line 126
    :cond_1e
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    iget-object v7, v14, Lf5/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v6}, Lf5/m;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 129
    invoke-virtual {v6}, Lf5/m;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7, v6}, Ls/q0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1f
    iget v6, v8, Lf5/o;->a:I

    iput v6, v8, Lf5/o;->a:I

    const/4 v9, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x9

    const/16 v17, -0x1

    const/16 v18, 0x8

    const/16 v19, 0x0

    goto/16 :goto_c

    :cond_20
    const/16 v16, 0x9

    const/16 v17, -0x1

    const/16 v18, 0x8

    .line 131
    const-string v9, "clip-path"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 132
    new-instance v6, Lf5/i;

    .line 133
    invoke-direct {v6}, Lf5/m;-><init>()V

    .line 134
    invoke-interface {v2, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    .line 135
    sget-object v7, Lf5/a;->d:[I

    invoke-static {v1, v4, v3, v7}, Lw3/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v9, 0x0

    .line 136
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_21

    .line 137
    iput-object v15, v6, Lf5/m;->b:Ljava/lang/String;

    :cond_21
    const/4 v15, 0x1

    .line 138
    invoke-virtual {v7, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_22

    .line 139
    invoke-static {v9}, Lp9/l;->l(Ljava/lang/String;)[Lx3/d;

    move-result-object v9

    iput-object v9, v6, Lf5/m;->a:[Lx3/d;

    .line 140
    :cond_22
    invoke-static {v2, v11}, Lw3/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_23

    const/4 v11, 0x0

    goto :goto_7

    :cond_23
    const/4 v9, 0x0

    const/4 v15, 0x2

    .line 141
    invoke-virtual {v7, v15, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 142
    :goto_7
    iput v11, v6, Lf5/m;->c:I

    .line 143
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    :cond_24
    iget-object v7, v14, Lf5/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v6}, Lf5/m;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_25

    .line 146
    invoke-virtual {v6}, Lf5/m;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7, v6}, Ls/q0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_25
    iget v6, v8, Lf5/o;->a:I

    iput v6, v8, Lf5/o;->a:I

    :cond_26
    const/4 v9, 0x0

    const/4 v15, 0x1

    goto/16 :goto_c

    .line 148
    :cond_27
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 149
    new-instance v6, Lf5/k;

    invoke-direct {v6}, Lf5/k;-><init>()V

    .line 150
    sget-object v7, Lf5/a;->b:[I

    invoke-static {v1, v4, v3, v7}, Lw3/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 151
    iget v9, v6, Lf5/k;->c:F

    .line 152
    const-string v11, "rotation"

    invoke-static {v2, v11}, Lw3/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_28

    const/4 v11, 0x5

    goto :goto_8

    :cond_28
    const/4 v11, 0x5

    .line 153
    invoke-virtual {v7, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 154
    :goto_8
    iput v9, v6, Lf5/k;->c:F

    .line 155
    iget v9, v6, Lf5/k;->d:F

    const/4 v15, 0x1

    invoke-virtual {v7, v15, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, v6, Lf5/k;->d:F

    .line 156
    iget v9, v6, Lf5/k;->e:F

    const/4 v11, 0x2

    invoke-virtual {v7, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, v6, Lf5/k;->e:F

    .line 157
    iget v9, v6, Lf5/k;->f:F

    .line 158
    const-string v11, "scaleX"

    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_29

    const/4 v11, 0x3

    .line 159
    invoke-virtual {v7, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 160
    :cond_29
    iput v9, v6, Lf5/k;->f:F

    .line 161
    iget v9, v6, Lf5/k;->g:F

    .line 162
    const-string v11, "scaleY"

    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2a

    const/4 v11, 0x4

    .line 163
    invoke-virtual {v7, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    goto :goto_9

    :cond_2a
    const/4 v11, 0x4

    .line 164
    :goto_9
    iput v9, v6, Lf5/k;->g:F

    .line 165
    iget v9, v6, Lf5/k;->h:F

    .line 166
    const-string v11, "translateX"

    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2b

    const/4 v11, 0x6

    .line 167
    invoke-virtual {v7, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    goto :goto_a

    :cond_2b
    const/4 v11, 0x6

    .line 168
    :goto_a
    iput v9, v6, Lf5/k;->h:F

    .line 169
    iget v9, v6, Lf5/k;->i:F

    .line 170
    const-string v11, "translateY"

    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x7

    .line 171
    invoke-virtual {v7, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    goto :goto_b

    :cond_2c
    const/4 v11, 0x7

    .line 172
    :goto_b
    iput v9, v6, Lf5/k;->i:F

    const/4 v9, 0x0

    .line 173
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2d

    .line 174
    iput-object v11, v6, Lf5/k;->k:Ljava/lang/String;

    .line 175
    :cond_2d
    invoke-virtual {v6}, Lf5/k;->c()V

    .line 176
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    iget-object v7, v14, Lf5/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v13, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v6}, Lf5/k;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2e

    .line 180
    invoke-virtual {v6}, Lf5/k;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7, v6}, Ls/q0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_2e
    iget v6, v8, Lf5/o;->a:I

    iput v6, v8, Lf5/o;->a:I

    :goto_c
    const/4 v11, 0x3

    const/16 v20, 0x1

    goto :goto_d

    :cond_2f
    move/from16 v22, v7

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/16 v16, 0x9

    const/16 v17, -0x1

    const/16 v18, 0x8

    const/16 v20, 0x1

    if-ne v15, v11, :cond_30

    .line 182
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 184
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 185
    :cond_30
    :goto_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move/from16 v7, v22

    const/4 v6, 0x1

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v14, 0x3

    goto/16 :goto_2

    :cond_31
    if-nez v19, :cond_32

    .line 186
    iget-object v1, v5, Lf5/o;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v5, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lf5/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, v0, Lf5/q;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 187
    :cond_32
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "no path defined"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_33
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_34
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_35
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_36
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 11
    .line 12
    iget-boolean v0, v0, Lf5/o;->e:Z

    .line 13
    .line 14
    return v0
.end method

.method public final isStateful()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, v0, Lf5/o;->b:Lf5/n;

    .line 21
    .line 22
    iget-object v1, v0, Lf5/n;->n:Ljava/lang/Boolean;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Lf5/n;->g:Lf5/k;

    .line 27
    .line 28
    invoke-virtual {v1}, Lf5/k;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lf5/n;->n:Ljava/lang/Boolean;

    .line 37
    .line 38
    :cond_1
    iget-object v0, v0, Lf5/n;->n:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 47
    .line 48
    iget-object v0, v0, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    return v0

    .line 61
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 62
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lf5/q;->e:Z

    .line 10
    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-ne v0, p0, :cond_4

    .line 18
    .line 19
    new-instance v0, Lf5/o;

    .line 20
    .line 21
    iget-object v1, p0, Lf5/q;->b:Lf5/o;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-object v2, v0, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    sget-object v2, Lf5/q;->j:Landroid/graphics/PorterDuff$Mode;

    .line 30
    .line 31
    iput-object v2, v0, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget v2, v1, Lf5/o;->a:I

    .line 36
    .line 37
    iput v2, v0, Lf5/o;->a:I

    .line 38
    .line 39
    new-instance v2, Lf5/n;

    .line 40
    .line 41
    iget-object v3, v1, Lf5/o;->b:Lf5/n;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Lf5/n;-><init>(Lf5/n;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, v0, Lf5/o;->b:Lf5/n;

    .line 47
    .line 48
    iget-object v3, v1, Lf5/o;->b:Lf5/n;

    .line 49
    .line 50
    iget-object v3, v3, Lf5/n;->e:Landroid/graphics/Paint;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    new-instance v3, Landroid/graphics/Paint;

    .line 55
    .line 56
    iget-object v4, v1, Lf5/o;->b:Lf5/n;

    .line 57
    .line 58
    iget-object v4, v4, Lf5/n;->e:Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v2, Lf5/n;->e:Landroid/graphics/Paint;

    .line 64
    .line 65
    :cond_1
    iget-object v2, v1, Lf5/o;->b:Lf5/n;

    .line 66
    .line 67
    iget-object v2, v2, Lf5/n;->d:Landroid/graphics/Paint;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    iget-object v2, v0, Lf5/o;->b:Lf5/n;

    .line 72
    .line 73
    new-instance v3, Landroid/graphics/Paint;

    .line 74
    .line 75
    iget-object v4, v1, Lf5/o;->b:Lf5/n;

    .line 76
    .line 77
    iget-object v4, v4, Lf5/n;->d:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    iput-object v3, v2, Lf5/n;->d:Landroid/graphics/Paint;

    .line 83
    .line 84
    :cond_2
    iget-object v2, v1, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 85
    .line 86
    iput-object v2, v0, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    iget-object v2, v1, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 89
    .line 90
    iput-object v2, v0, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 91
    .line 92
    iget-boolean v1, v1, Lf5/o;->e:Z

    .line 93
    .line 94
    iput-boolean v1, v0, Lf5/o;->e:Z

    .line 95
    .line 96
    :cond_3
    iput-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lf5/q;->e:Z

    .line 100
    .line 101
    :cond_4
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 11
    .line 12
    iget-object v1, v0, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v3, v0, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v1, v3}, Lf5/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lf5/q;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 26
    .line 27
    invoke-virtual {p0}, Lf5/q;->invalidateSelf()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    iget-object v3, v0, Lf5/o;->b:Lf5/n;

    .line 34
    .line 35
    iget-object v4, v3, Lf5/n;->n:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    iget-object v4, v3, Lf5/n;->g:Lf5/k;

    .line 40
    .line 41
    invoke-virtual {v4}, Lf5/k;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v3, Lf5/n;->n:Ljava/lang/Boolean;

    .line 50
    .line 51
    :cond_2
    iget-object v3, v3, Lf5/n;->n:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-object v3, v0, Lf5/o;->b:Lf5/n;

    .line 60
    .line 61
    iget-object v3, v3, Lf5/n;->g:Lf5/k;

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Lf5/k;->b([I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-boolean v3, v0, Lf5/o;->k:Z

    .line 68
    .line 69
    or-int/2addr v3, p1

    .line 70
    iput-boolean v3, v0, Lf5/o;->k:Z

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Lf5/q;->invalidateSelf()V

    .line 75
    .line 76
    .line 77
    return v2

    .line 78
    :cond_3
    return v1
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 10
    .line 11
    iget-object v0, v0, Lf5/o;->b:Lf5/n;

    .line 12
    .line 13
    invoke-virtual {v0}, Lf5/n;->getRootAlpha()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v0, p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 20
    .line 21
    iget-object v0, v0, Lf5/o;->b:Lf5/n;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lf5/n;->setRootAlpha(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lf5/q;->invalidateSelf()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 10
    .line 11
    iput-boolean p1, v0, Lf5/o;->e:Z

    .line 12
    .line 13
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Lf5/q;->d:Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    invoke-virtual {p0}, Lf5/q;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Lp9/p1;->F(Landroid/graphics/drawable/Drawable;I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lf5/q;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 10
    .line 11
    iget-object v1, v0, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1

    .line 14
    .line 15
    iput-object p1, v0, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    iget-object v0, v0, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lf5/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lf5/q;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Lf5/q;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lf5/q;->b:Lf5/o;

    .line 10
    .line 11
    iget-object v1, v0, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1

    .line 14
    .line 15
    iput-object p1, v0, Lf5/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    iget-object v0, v0, Lf5/o;->c:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lf5/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lf5/q;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Lf5/q;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf5/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
