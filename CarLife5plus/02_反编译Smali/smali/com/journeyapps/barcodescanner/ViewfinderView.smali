.class public Lcom/journeyapps/barcodescanner/ViewfinderView;
.super Landroid/view/View;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final l:[I


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:I

.field public final c:I

.field public final d:I

.field public e:Z

.field public f:I

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:Ld7/f;

.field public j:Landroid/graphics/Rect;

.field public k:Ld7/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/journeyapps/barcodescanner/ViewfinderView;->l:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lq5/g;->b:[I

    .line 21
    .line 22
    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const v1, 0x7f050065

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x4

    .line 34
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->b:I

    .line 39
    .line 40
    const v1, 0x7f050061

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 48
    .line 49
    .line 50
    const v1, 0x7f050064

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->c:I

    .line 63
    .line 64
    const v1, 0x7f050060

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->d:I

    .line 77
    .line 78
    const/4 p1, 0x3

    .line 79
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->e:Z

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    .line 87
    .line 88
    iput v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->f:I

    .line 89
    .line 90
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    const/16 p2, 0x14

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->g:Ljava/util/ArrayList;

    .line 98
    .line 99
    new-instance p1, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->h:Ljava/util/ArrayList;

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->i:Ld7/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ld7/f;->getFramingRect()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->i:Ld7/f;

    .line 11
    .line 12
    invoke-virtual {v1}, Ld7/f;->getPreviewSize()Ld7/v;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->j:Landroid/graphics/Rect;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->k:Ld7/v;

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->j:Landroid/graphics/Rect;

    .line 25
    .line 26
    if-eqz v0, :cond_8

    .line 27
    .line 28
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->k:Ld7/v;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->b:I

    .line 43
    .line 44
    iget-object v10, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    int-to-float v8, v2

    .line 50
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    int-to-float v9, v2

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    move-object v5, p1

    .line 56
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 57
    .line 58
    .line 59
    move p1, v8

    .line 60
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    int-to-float v7, v2

    .line 63
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    int-to-float v8, v2

    .line 66
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    int-to-float v9, v2

    .line 71
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    int-to-float v6, v2

    .line 79
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 80
    .line 81
    int-to-float v7, v2

    .line 82
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 83
    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    int-to-float v9, v2

    .line 87
    move v8, p1

    .line 88
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 89
    .line 90
    .line 91
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 92
    .line 93
    add-int/lit8 p1, p1, 0x1

    .line 94
    .line 95
    int-to-float v7, p1

    .line 96
    int-to-float v9, v3

    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    iget-boolean p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->e:Z

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    iget p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->c:I

    .line 106
    .line 107
    invoke-virtual {v10, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    .line 109
    .line 110
    sget-object p1, Lcom/journeyapps/barcodescanner/ViewfinderView;->l:[I

    .line 111
    .line 112
    iget v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->f:I

    .line 113
    .line 114
    aget p1, p1, v2

    .line 115
    .line 116
    invoke-virtual {v10, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    .line 118
    .line 119
    iget p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->f:I

    .line 120
    .line 121
    add-int/lit8 p1, p1, 0x1

    .line 122
    .line 123
    rem-int/lit8 p1, p1, 0x8

    .line 124
    .line 125
    iput p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->f:I

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    div-int/lit8 p1, p1, 0x2

    .line 132
    .line 133
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    add-int/2addr p1, v2

    .line 136
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 137
    .line 138
    add-int/lit8 v2, v2, 0x2

    .line 139
    .line 140
    int-to-float v6, v2

    .line 141
    add-int/lit8 v2, p1, -0x1

    .line 142
    .line 143
    int-to-float v7, v2

    .line 144
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 145
    .line 146
    add-int/lit8 v2, v2, -0x1

    .line 147
    .line 148
    int-to-float v8, v2

    .line 149
    add-int/lit8 p1, p1, 0x2

    .line 150
    .line 151
    int-to-float v9, p1

    .line 152
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    int-to-float p1, p1

    .line 160
    iget v2, v1, Ld7/v;->a:I

    .line 161
    .line 162
    int-to-float v2, v2

    .line 163
    div-float/2addr p1, v2

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    int-to-float v2, v2

    .line 169
    iget v1, v1, Ld7/v;->b:I

    .line 170
    .line 171
    int-to-float v1, v1

    .line 172
    div-float/2addr v2, v1

    .line 173
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->h:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    iget v3, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->d:I

    .line 180
    .line 181
    if-nez v1, :cond_5

    .line 182
    .line 183
    const/16 v1, 0x50

    .line 184
    .line 185
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->h:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_4

    .line 202
    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Lm5/o;

    .line 208
    .line 209
    iget v6, v4, Lm5/o;->a:F

    .line 210
    .line 211
    mul-float v6, v6, p1

    .line 212
    .line 213
    float-to-int v6, v6

    .line 214
    int-to-float v6, v6

    .line 215
    iget v4, v4, Lm5/o;->b:F

    .line 216
    .line 217
    mul-float v4, v4, v2

    .line 218
    .line 219
    float-to-int v4, v4

    .line 220
    int-to-float v4, v4

    .line 221
    const/high16 v7, 0x40400000    # 3.0f

    .line 222
    .line 223
    invoke-virtual {v5, v6, v4, v7, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->h:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 230
    .line 231
    .line 232
    :cond_5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->g:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_7

    .line 239
    .line 240
    const/16 v1, 0xa0

    .line 241
    .line 242
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    .line 247
    .line 248
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->g:Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_6

    .line 259
    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Lm5/o;

    .line 265
    .line 266
    iget v4, v3, Lm5/o;->a:F

    .line 267
    .line 268
    mul-float v4, v4, p1

    .line 269
    .line 270
    float-to-int v4, v4

    .line 271
    int-to-float v4, v4

    .line 272
    iget v3, v3, Lm5/o;->b:F

    .line 273
    .line 274
    mul-float v3, v3, v2

    .line 275
    .line 276
    float-to-int v3, v3

    .line 277
    int-to-float v3, v3

    .line 278
    const/high16 v6, 0x40c00000    # 6.0f

    .line 279
    .line 280
    invoke-virtual {v5, v4, v3, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_6
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->g:Ljava/util/ArrayList;

    .line 285
    .line 286
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->h:Ljava/util/ArrayList;

    .line 287
    .line 288
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->g:Ljava/util/ArrayList;

    .line 289
    .line 290
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->h:Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 293
    .line 294
    .line 295
    :cond_7
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 296
    .line 297
    add-int/lit8 v4, p1, -0x6

    .line 298
    .line 299
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 300
    .line 301
    add-int/lit8 v5, p1, -0x6

    .line 302
    .line 303
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 304
    .line 305
    add-int/lit8 v6, p1, 0x6

    .line 306
    .line 307
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 308
    .line 309
    add-int/lit8 v7, p1, 0x6

    .line 310
    .line 311
    const-wide/16 v2, 0x50

    .line 312
    .line 313
    move-object v1, p0

    .line 314
    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 315
    .line 316
    .line 317
    :cond_8
    :goto_3
    return-void
.end method

.method public setCameraPreview(Ld7/f;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->i:Ld7/f;

    .line 2
    .line 3
    new-instance v0, Ld7/e;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, v1, p0}, Ld7/e;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Ld7/f;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setLaserVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaskColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->b:I

    .line 2
    .line 3
    return-void
.end method
