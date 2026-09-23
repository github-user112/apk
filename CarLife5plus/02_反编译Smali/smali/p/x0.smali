.class public final Lp/x0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lp/t2;

.field public c:Lp/t2;

.field public d:Lp/t2;

.field public e:Lp/t2;

.field public f:Lp/t2;

.field public g:Lp/t2;

.field public h:Lp/t2;

.field public final i:Lp/g1;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lp/x0;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lp/x0;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Lp/x0;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Lp/g1;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lp/g1;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lp/x0;->i:Lp/g1;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Lp/t;I)Lp/t2;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lp/t;->a:Lp/m2;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Lp/m2;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lp/t2;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Lp/t2;->d:Z

    .line 18
    .line 19
    iput-object p0, p1, Lp/t2;->a:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lp/t2;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lp/x0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Lp/t;->d(Landroid/graphics/drawable/Drawable;Lp/t2;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lp/x0;->b:Lp/t2;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lp/x0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lp/x0;->c:Lp/t2;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lp/x0;->d:Lp/t2;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lp/x0;->e:Lp/t2;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Lp/x0;->b:Lp/t2;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Lp/x0;->a(Landroid/graphics/drawable/Drawable;Lp/t2;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Lp/x0;->c:Lp/t2;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Lp/x0;->a(Landroid/graphics/drawable/Drawable;Lp/t2;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Lp/x0;->d:Lp/t2;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Lp/x0;->a(Landroid/graphics/drawable/Drawable;Lp/t2;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Lp/x0;->e:Lp/t2;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Lp/x0;->a(Landroid/graphics/drawable/Drawable;Lp/t2;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lp/x0;->f:Lp/t2;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lp/x0;->g:Lp/t2;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    :goto_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 70
    .line 71
    iget-object v3, p0, Lp/x0;->f:Lp/t2;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3}, Lp/x0;->a(Landroid/graphics/drawable/Drawable;Lp/t2;)V

    .line 74
    .line 75
    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Lp/x0;->g:Lp/t2;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Lp/x0;->a(Landroid/graphics/drawable/Drawable;Lp/t2;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/x0;->h:Lp/t2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lp/t2;->a:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/x0;->h:Lp/t2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lp/t2;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v6, p2

    .line 6
    .line 7
    iget-object v1, v0, Lp/x0;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v7

    .line 13
    invoke-static {}, Lp/t;->a()Lp/t;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    sget-object v3, Li/a;->h:[I

    .line 18
    .line 19
    invoke-static {v7, v4, v3, v6}, La2/b;->P(Landroid/content/Context;Landroid/util/AttributeSet;[II)La2/b;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v5, v9, La2/b;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v5, Landroid/content/res/TypedArray;

    .line 30
    .line 31
    invoke-static/range {v1 .. v6}, Le4/k0;->i(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 32
    .line 33
    .line 34
    move-object v10, v1

    .line 35
    iget-object v1, v9, La2/b;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroid/content/res/TypedArray;

    .line 38
    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, -0x1

    .line 41
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v13, 0x3

    .line 46
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v7, v8, v3}, Lp/x0;->c(Landroid/content/Context;Lp/t;I)Lp/t2;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iput-object v3, v0, Lp/x0;->b:Lp/t2;

    .line 61
    .line 62
    :cond_0
    const/4 v14, 0x1

    .line 63
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-virtual {v1, v14, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v7, v8, v3}, Lp/x0;->c(Landroid/content/Context;Lp/t;I)Lp/t2;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iput-object v3, v0, Lp/x0;->c:Lp/t2;

    .line 78
    .line 79
    :cond_1
    const/4 v15, 0x4

    .line 80
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {v1, v15, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-static {v7, v8, v3}, Lp/x0;->c(Landroid/content/Context;Lp/t;I)Lp/t2;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iput-object v3, v0, Lp/x0;->d:Lp/t2;

    .line 95
    .line 96
    :cond_2
    const/4 v3, 0x2

    .line 97
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-static {v7, v8, v5}, Lp/x0;->c(Landroid/content/Context;Lp/t;I)Lp/t2;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iput-object v5, v0, Lp/x0;->e:Lp/t2;

    .line 112
    .line 113
    :cond_3
    const/4 v5, 0x5

    .line 114
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 115
    .line 116
    .line 117
    move-result v16

    .line 118
    if-eqz v16, :cond_4

    .line 119
    .line 120
    invoke-virtual {v1, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-static {v7, v8, v3}, Lp/x0;->c(Landroid/content/Context;Lp/t;I)Lp/t2;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iput-object v3, v0, Lp/x0;->f:Lp/t2;

    .line 129
    .line 130
    :cond_4
    const/4 v3, 0x6

    .line 131
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 132
    .line 133
    .line 134
    move-result v17

    .line 135
    if-eqz v17, :cond_5

    .line 136
    .line 137
    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-static {v7, v8, v1}, Lp/x0;->c(Landroid/content/Context;Lp/t;I)Lp/t2;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iput-object v1, v0, Lp/x0;->g:Lp/t2;

    .line 146
    .line 147
    :cond_5
    invoke-virtual {v9}, La2/b;->W()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 155
    .line 156
    const/16 v3, 0x17

    .line 157
    .line 158
    sget-object v14, Li/a;->v:[I

    .line 159
    .line 160
    const/16 v9, 0xe

    .line 161
    .line 162
    if-eq v2, v12, :cond_d

    .line 163
    .line 164
    new-instance v5, La2/b;

    .line 165
    .line 166
    invoke-virtual {v7, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-direct {v5, v7, v2}, La2/b;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 171
    .line 172
    .line 173
    if-nez v1, :cond_6

    .line 174
    .line 175
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 176
    .line 177
    .line 178
    move-result v23

    .line 179
    if-eqz v23, :cond_6

    .line 180
    .line 181
    invoke-virtual {v2, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 182
    .line 183
    .line 184
    move-result v23

    .line 185
    move/from16 v24, v23

    .line 186
    .line 187
    const/16 v23, 0x1

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_6
    const/16 v23, 0x0

    .line 191
    .line 192
    const/16 v24, 0x0

    .line 193
    .line 194
    :goto_0
    invoke-virtual {v0, v7, v5}, Lp/x0;->m(Landroid/content/Context;La2/b;)V

    .line 195
    .line 196
    .line 197
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 198
    .line 199
    if-ge v12, v3, :cond_a

    .line 200
    .line 201
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 202
    .line 203
    .line 204
    move-result v25

    .line 205
    if-eqz v25, :cond_7

    .line 206
    .line 207
    invoke-virtual {v5, v13}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 208
    .line 209
    .line 210
    move-result-object v25

    .line 211
    goto :goto_1

    .line 212
    :cond_7
    const/16 v25, 0x0

    .line 213
    .line 214
    :goto_1
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 215
    .line 216
    .line 217
    move-result v26

    .line 218
    if-eqz v26, :cond_8

    .line 219
    .line 220
    invoke-virtual {v5, v15}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 221
    .line 222
    .line 223
    move-result-object v26

    .line 224
    :goto_2
    const/4 v15, 0x5

    .line 225
    goto :goto_3

    .line 226
    :cond_8
    const/16 v26, 0x0

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :goto_3
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 230
    .line 231
    .line 232
    move-result v20

    .line 233
    if-eqz v20, :cond_9

    .line 234
    .line 235
    invoke-virtual {v5, v15}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 236
    .line 237
    .line 238
    move-result-object v27

    .line 239
    const/16 v15, 0xf

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_9
    const/16 v15, 0xf

    .line 243
    .line 244
    :goto_4
    const/16 v27, 0x0

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_a
    const/16 v15, 0xf

    .line 248
    .line 249
    const/16 v25, 0x0

    .line 250
    .line 251
    const/16 v26, 0x0

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :goto_5
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 255
    .line 256
    .line 257
    move-result v22

    .line 258
    if-eqz v22, :cond_b

    .line 259
    .line 260
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v28

    .line 264
    :goto_6
    const/16 v15, 0x1a

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_b
    const/16 v28, 0x0

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :goto_7
    if-lt v12, v15, :cond_c

    .line 271
    .line 272
    const/16 v12, 0xd

    .line 273
    .line 274
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 275
    .line 276
    .line 277
    move-result v15

    .line 278
    if-eqz v15, :cond_c

    .line 279
    .line 280
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    goto :goto_8

    .line 285
    :cond_c
    const/4 v2, 0x0

    .line 286
    :goto_8
    invoke-virtual {v5}, La2/b;->W()V

    .line 287
    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_d
    const/4 v2, 0x0

    .line 291
    const/16 v23, 0x0

    .line 292
    .line 293
    const/16 v24, 0x0

    .line 294
    .line 295
    const/16 v25, 0x0

    .line 296
    .line 297
    const/16 v26, 0x0

    .line 298
    .line 299
    const/16 v27, 0x0

    .line 300
    .line 301
    const/16 v28, 0x0

    .line 302
    .line 303
    :goto_9
    new-instance v5, La2/b;

    .line 304
    .line 305
    invoke-virtual {v7, v4, v14, v6, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 306
    .line 307
    .line 308
    move-result-object v12

    .line 309
    invoke-direct {v5, v7, v12}, La2/b;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 310
    .line 311
    .line 312
    if-nez v1, :cond_e

    .line 313
    .line 314
    invoke-virtual {v12, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 315
    .line 316
    .line 317
    move-result v14

    .line 318
    if-eqz v14, :cond_e

    .line 319
    .line 320
    invoke-virtual {v12, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 321
    .line 322
    .line 323
    move-result v24

    .line 324
    const/16 v23, 0x1

    .line 325
    .line 326
    :cond_e
    move/from16 v9, v24

    .line 327
    .line 328
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 329
    .line 330
    if-ge v14, v3, :cond_11

    .line 331
    .line 332
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_f

    .line 337
    .line 338
    invoke-virtual {v5, v13}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 339
    .line 340
    .line 341
    move-result-object v25

    .line 342
    :cond_f
    const/4 v3, 0x4

    .line 343
    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 344
    .line 345
    .line 346
    move-result v15

    .line 347
    if-eqz v15, :cond_10

    .line 348
    .line 349
    invoke-virtual {v5, v3}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 350
    .line 351
    .line 352
    move-result-object v26

    .line 353
    :cond_10
    const/4 v15, 0x5

    .line 354
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eqz v3, :cond_11

    .line 359
    .line 360
    invoke-virtual {v5, v15}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 361
    .line 362
    .line 363
    move-result-object v27

    .line 364
    :cond_11
    move-object/from16 v3, v25

    .line 365
    .line 366
    move-object/from16 v15, v26

    .line 367
    .line 368
    move-object/from16 v13, v27

    .line 369
    .line 370
    const/16 v11, 0xf

    .line 371
    .line 372
    invoke-virtual {v12, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 373
    .line 374
    .line 375
    move-result v25

    .line 376
    if-eqz v25, :cond_12

    .line 377
    .line 378
    invoke-virtual {v12, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v28

    .line 382
    :cond_12
    move/from16 v19, v1

    .line 383
    .line 384
    move-object/from16 v11, v28

    .line 385
    .line 386
    const/16 v1, 0x1a

    .line 387
    .line 388
    if-lt v14, v1, :cond_13

    .line 389
    .line 390
    const/16 v1, 0xd

    .line 391
    .line 392
    invoke-virtual {v12, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 393
    .line 394
    .line 395
    move-result v21

    .line 396
    if-eqz v21, :cond_14

    .line 397
    .line 398
    invoke-virtual {v12, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    goto :goto_a

    .line 403
    :cond_13
    const/16 v1, 0xd

    .line 404
    .line 405
    :cond_14
    :goto_a
    const/16 v1, 0x1c

    .line 406
    .line 407
    if-lt v14, v1, :cond_15

    .line 408
    .line 409
    const/4 v1, 0x0

    .line 410
    invoke-virtual {v12, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 411
    .line 412
    .line 413
    move-result v24

    .line 414
    if-eqz v24, :cond_15

    .line 415
    .line 416
    move-object/from16 v26, v8

    .line 417
    .line 418
    const/4 v8, -0x1

    .line 419
    invoke-virtual {v12, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 420
    .line 421
    .line 422
    move-result v12

    .line 423
    if-nez v12, :cond_16

    .line 424
    .line 425
    const/4 v8, 0x0

    .line 426
    invoke-virtual {v10, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 427
    .line 428
    .line 429
    goto :goto_b

    .line 430
    :cond_15
    move-object/from16 v26, v8

    .line 431
    .line 432
    :cond_16
    :goto_b
    invoke-virtual {v0, v7, v5}, Lp/x0;->m(Landroid/content/Context;La2/b;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5}, La2/b;->W()V

    .line 436
    .line 437
    .line 438
    if-eqz v3, :cond_17

    .line 439
    .line 440
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 441
    .line 442
    .line 443
    :cond_17
    if-eqz v15, :cond_18

    .line 444
    .line 445
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 446
    .line 447
    .line 448
    :cond_18
    if-eqz v13, :cond_19

    .line 449
    .line 450
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 451
    .line 452
    .line 453
    :cond_19
    if-nez v19, :cond_1a

    .line 454
    .line 455
    if-eqz v23, :cond_1a

    .line 456
    .line 457
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 458
    .line 459
    .line 460
    :cond_1a
    iget-object v1, v0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 461
    .line 462
    if-eqz v1, :cond_1c

    .line 463
    .line 464
    iget v3, v0, Lp/x0;->k:I

    .line 465
    .line 466
    const/4 v8, -0x1

    .line 467
    if-ne v3, v8, :cond_1b

    .line 468
    .line 469
    iget v3, v0, Lp/x0;->j:I

    .line 470
    .line 471
    invoke-virtual {v10, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 472
    .line 473
    .line 474
    goto :goto_c

    .line 475
    :cond_1b
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 476
    .line 477
    .line 478
    :cond_1c
    :goto_c
    if-eqz v2, :cond_1d

    .line 479
    .line 480
    invoke-static {v10, v2}, Lp/v0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 481
    .line 482
    .line 483
    :cond_1d
    const/16 v8, 0x18

    .line 484
    .line 485
    if-eqz v11, :cond_1e

    .line 486
    .line 487
    if-lt v14, v8, :cond_1f

    .line 488
    .line 489
    invoke-static {v11}, Lp/u0;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-static {v10, v1}, Lp/u0;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 494
    .line 495
    .line 496
    :cond_1e
    const/4 v9, 0x0

    .line 497
    goto :goto_d

    .line 498
    :cond_1f
    const-string v1, ","

    .line 499
    .line 500
    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    const/4 v9, 0x0

    .line 505
    aget-object v1, v1, v9

    .line 506
    .line 507
    invoke-static {v1}, Lp/t0;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 512
    .line 513
    .line 514
    :goto_d
    iget-object v11, v0, Lp/x0;->i:Lp/g1;

    .line 515
    .line 516
    iget-object v12, v11, Lp/g1;->j:Landroid/content/Context;

    .line 517
    .line 518
    sget-object v3, Li/a;->i:[I

    .line 519
    .line 520
    invoke-virtual {v12, v4, v3, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    iget-object v1, v11, Lp/g1;->i:Landroid/widget/TextView;

    .line 525
    .line 526
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    const/4 v8, 0x5

    .line 531
    const/16 v13, 0xd

    .line 532
    .line 533
    const/4 v14, 0x6

    .line 534
    const/4 v15, 0x2

    .line 535
    invoke-static/range {v1 .. v6}, Le4/k0;->i(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-eqz v1, :cond_20

    .line 543
    .line 544
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    iput v1, v11, Lp/g1;->a:I

    .line 549
    .line 550
    :cond_20
    const/4 v1, 0x4

    .line 551
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    const/high16 v6, -0x40800000    # -1.0f

    .line 556
    .line 557
    if-eqz v2, :cond_21

    .line 558
    .line 559
    invoke-virtual {v5, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    goto :goto_e

    .line 564
    :cond_21
    const/high16 v1, -0x40800000    # -1.0f

    .line 565
    .line 566
    :goto_e
    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    if-eqz v2, :cond_22

    .line 571
    .line 572
    invoke-virtual {v5, v15, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    :goto_f
    const/4 v9, 0x1

    .line 577
    goto :goto_10

    .line 578
    :cond_22
    const/high16 v2, -0x40800000    # -1.0f

    .line 579
    .line 580
    goto :goto_f

    .line 581
    :goto_10
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 582
    .line 583
    .line 584
    move-result v17

    .line 585
    if-eqz v17, :cond_23

    .line 586
    .line 587
    invoke-virtual {v5, v9, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 588
    .line 589
    .line 590
    move-result v17

    .line 591
    :goto_11
    const/4 v9, 0x3

    .line 592
    goto :goto_12

    .line 593
    :cond_23
    const/high16 v17, -0x40800000    # -1.0f

    .line 594
    .line 595
    goto :goto_11

    .line 596
    :goto_12
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 597
    .line 598
    .line 599
    move-result v19

    .line 600
    const/high16 p2, -0x40800000    # -1.0f

    .line 601
    .line 602
    if-eqz v19, :cond_26

    .line 603
    .line 604
    const/4 v6, 0x0

    .line 605
    invoke-virtual {v5, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 606
    .line 607
    .line 608
    move-result v8

    .line 609
    if-lez v8, :cond_26

    .line 610
    .line 611
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 612
    .line 613
    .line 614
    move-result-object v6

    .line 615
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    .line 620
    .line 621
    .line 622
    move-result v8

    .line 623
    new-array v9, v8, [I

    .line 624
    .line 625
    if-lez v8, :cond_25

    .line 626
    .line 627
    const/4 v14, 0x0

    .line 628
    :goto_13
    if-ge v14, v8, :cond_24

    .line 629
    .line 630
    const/4 v13, -0x1

    .line 631
    invoke-virtual {v6, v14, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 632
    .line 633
    .line 634
    move-result v23

    .line 635
    aput v23, v9, v14

    .line 636
    .line 637
    add-int/lit8 v14, v14, 0x1

    .line 638
    .line 639
    const/16 v13, 0xd

    .line 640
    .line 641
    goto :goto_13

    .line 642
    :cond_24
    invoke-static {v9}, Lp/g1;->b([I)[I

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    iput-object v8, v11, Lp/g1;->f:[I

    .line 647
    .line 648
    invoke-virtual {v11}, Lp/g1;->i()Z

    .line 649
    .line 650
    .line 651
    :cond_25
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 652
    .line 653
    .line 654
    :cond_26
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v11}, Lp/g1;->j()Z

    .line 658
    .line 659
    .line 660
    move-result v5

    .line 661
    if-eqz v5, :cond_2b

    .line 662
    .line 663
    iget v5, v11, Lp/g1;->a:I

    .line 664
    .line 665
    const/4 v9, 0x1

    .line 666
    if-ne v5, v9, :cond_2c

    .line 667
    .line 668
    iget-boolean v5, v11, Lp/g1;->g:Z

    .line 669
    .line 670
    if-nez v5, :cond_2a

    .line 671
    .line 672
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 673
    .line 674
    .line 675
    move-result-object v5

    .line 676
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 677
    .line 678
    .line 679
    move-result-object v5

    .line 680
    cmpl-float v6, v2, p2

    .line 681
    .line 682
    if-nez v6, :cond_27

    .line 683
    .line 684
    const/high16 v2, 0x41400000    # 12.0f

    .line 685
    .line 686
    invoke-static {v15, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    :cond_27
    cmpl-float v6, v17, p2

    .line 691
    .line 692
    if-nez v6, :cond_28

    .line 693
    .line 694
    const/high16 v6, 0x42e00000    # 112.0f

    .line 695
    .line 696
    invoke-static {v15, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 697
    .line 698
    .line 699
    move-result v17

    .line 700
    :cond_28
    move/from16 v5, v17

    .line 701
    .line 702
    cmpl-float v6, v1, p2

    .line 703
    .line 704
    if-nez v6, :cond_29

    .line 705
    .line 706
    const/high16 v1, 0x3f800000    # 1.0f

    .line 707
    .line 708
    :cond_29
    invoke-virtual {v11, v2, v5, v1}, Lp/g1;->k(FFF)V

    .line 709
    .line 710
    .line 711
    :cond_2a
    invoke-virtual {v11}, Lp/g1;->h()Z

    .line 712
    .line 713
    .line 714
    goto :goto_14

    .line 715
    :cond_2b
    const/4 v1, 0x0

    .line 716
    iput v1, v11, Lp/g1;->a:I

    .line 717
    .line 718
    :cond_2c
    :goto_14
    sget-boolean v1, Lp/l3;->c:Z

    .line 719
    .line 720
    if-eqz v1, :cond_2e

    .line 721
    .line 722
    iget v1, v11, Lp/g1;->a:I

    .line 723
    .line 724
    if-eqz v1, :cond_2e

    .line 725
    .line 726
    iget-object v1, v11, Lp/g1;->f:[I

    .line 727
    .line 728
    array-length v2, v1

    .line 729
    if-lez v2, :cond_2e

    .line 730
    .line 731
    invoke-static {v10}, Lp/v0;->a(Landroid/widget/TextView;)I

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    int-to-float v2, v2

    .line 736
    cmpl-float v2, v2, p2

    .line 737
    .line 738
    if-eqz v2, :cond_2d

    .line 739
    .line 740
    iget v1, v11, Lp/g1;->d:F

    .line 741
    .line 742
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    iget v2, v11, Lp/g1;->e:F

    .line 747
    .line 748
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 749
    .line 750
    .line 751
    move-result v2

    .line 752
    iget v5, v11, Lp/g1;->c:F

    .line 753
    .line 754
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 755
    .line 756
    .line 757
    move-result v5

    .line 758
    const/4 v6, 0x0

    .line 759
    invoke-static {v10, v1, v2, v5, v6}, Lp/v0;->b(Landroid/widget/TextView;IIII)V

    .line 760
    .line 761
    .line 762
    goto :goto_15

    .line 763
    :cond_2d
    const/4 v6, 0x0

    .line 764
    invoke-static {v10, v1, v6}, Lp/v0;->c(Landroid/widget/TextView;[II)V

    .line 765
    .line 766
    .line 767
    :cond_2e
    :goto_15
    invoke-virtual {v7, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    const/16 v2, 0x8

    .line 772
    .line 773
    const/4 v8, -0x1

    .line 774
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    move-object/from16 v3, v26

    .line 779
    .line 780
    if-eq v2, v8, :cond_2f

    .line 781
    .line 782
    invoke-virtual {v3, v7, v2}, Lp/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 783
    .line 784
    .line 785
    move-result-object v5

    .line 786
    :goto_16
    const/16 v13, 0xd

    .line 787
    .line 788
    goto :goto_17

    .line 789
    :cond_2f
    const/4 v5, 0x0

    .line 790
    goto :goto_16

    .line 791
    :goto_17
    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 792
    .line 793
    .line 794
    move-result v2

    .line 795
    if-eq v2, v8, :cond_30

    .line 796
    .line 797
    invoke-virtual {v3, v7, v2}, Lp/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 798
    .line 799
    .line 800
    move-result-object v2

    .line 801
    goto :goto_18

    .line 802
    :cond_30
    const/4 v2, 0x0

    .line 803
    :goto_18
    const/16 v4, 0x9

    .line 804
    .line 805
    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 806
    .line 807
    .line 808
    move-result v4

    .line 809
    if-eq v4, v8, :cond_31

    .line 810
    .line 811
    invoke-virtual {v3, v7, v4}, Lp/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 812
    .line 813
    .line 814
    move-result-object v4

    .line 815
    :goto_19
    const/4 v14, 0x6

    .line 816
    goto :goto_1a

    .line 817
    :cond_31
    const/4 v4, 0x0

    .line 818
    goto :goto_19

    .line 819
    :goto_1a
    invoke-virtual {v1, v14, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 820
    .line 821
    .line 822
    move-result v6

    .line 823
    if-eq v6, v8, :cond_32

    .line 824
    .line 825
    invoke-virtual {v3, v7, v6}, Lp/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 826
    .line 827
    .line 828
    move-result-object v6

    .line 829
    goto :goto_1b

    .line 830
    :cond_32
    const/4 v6, 0x0

    .line 831
    :goto_1b
    const/16 v9, 0xa

    .line 832
    .line 833
    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 834
    .line 835
    .line 836
    move-result v9

    .line 837
    if-eq v9, v8, :cond_33

    .line 838
    .line 839
    invoke-virtual {v3, v7, v9}, Lp/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 840
    .line 841
    .line 842
    move-result-object v9

    .line 843
    goto :goto_1c

    .line 844
    :cond_33
    const/4 v9, 0x0

    .line 845
    :goto_1c
    const/4 v11, 0x7

    .line 846
    invoke-virtual {v1, v11, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 847
    .line 848
    .line 849
    move-result v11

    .line 850
    if-eq v11, v8, :cond_34

    .line 851
    .line 852
    invoke-virtual {v3, v7, v11}, Lp/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 853
    .line 854
    .line 855
    move-result-object v3

    .line 856
    goto :goto_1d

    .line 857
    :cond_34
    const/4 v3, 0x0

    .line 858
    :goto_1d
    if-nez v9, :cond_3f

    .line 859
    .line 860
    if-eqz v3, :cond_35

    .line 861
    .line 862
    goto :goto_25

    .line 863
    :cond_35
    if-nez v5, :cond_36

    .line 864
    .line 865
    if-nez v2, :cond_36

    .line 866
    .line 867
    if-nez v4, :cond_36

    .line 868
    .line 869
    if-eqz v6, :cond_44

    .line 870
    .line 871
    :cond_36
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    const/16 v24, 0x0

    .line 876
    .line 877
    aget-object v8, v3, v24

    .line 878
    .line 879
    if-nez v8, :cond_37

    .line 880
    .line 881
    aget-object v9, v3, v15

    .line 882
    .line 883
    if-eqz v9, :cond_38

    .line 884
    .line 885
    :cond_37
    const/16 v22, 0x3

    .line 886
    .line 887
    goto :goto_22

    .line 888
    :cond_38
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 889
    .line 890
    .line 891
    move-result-object v3

    .line 892
    if-eqz v5, :cond_39

    .line 893
    .line 894
    goto :goto_1e

    .line 895
    :cond_39
    aget-object v5, v3, v24

    .line 896
    .line 897
    :goto_1e
    if-eqz v2, :cond_3a

    .line 898
    .line 899
    goto :goto_1f

    .line 900
    :cond_3a
    const/16 v18, 0x1

    .line 901
    .line 902
    aget-object v2, v3, v18

    .line 903
    .line 904
    :goto_1f
    if-eqz v4, :cond_3b

    .line 905
    .line 906
    goto :goto_20

    .line 907
    :cond_3b
    aget-object v4, v3, v15

    .line 908
    .line 909
    :goto_20
    if-eqz v6, :cond_3c

    .line 910
    .line 911
    goto :goto_21

    .line 912
    :cond_3c
    const/16 v22, 0x3

    .line 913
    .line 914
    aget-object v6, v3, v22

    .line 915
    .line 916
    :goto_21
    invoke-virtual {v10, v5, v2, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 917
    .line 918
    .line 919
    goto :goto_2a

    .line 920
    :goto_22
    if-eqz v2, :cond_3d

    .line 921
    .line 922
    goto :goto_23

    .line 923
    :cond_3d
    const/16 v18, 0x1

    .line 924
    .line 925
    aget-object v2, v3, v18

    .line 926
    .line 927
    :goto_23
    if-eqz v6, :cond_3e

    .line 928
    .line 929
    goto :goto_24

    .line 930
    :cond_3e
    aget-object v6, v3, v22

    .line 931
    .line 932
    :goto_24
    aget-object v3, v3, v15

    .line 933
    .line 934
    invoke-virtual {v10, v8, v2, v3, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 935
    .line 936
    .line 937
    goto :goto_2a

    .line 938
    :cond_3f
    :goto_25
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    if-eqz v9, :cond_40

    .line 943
    .line 944
    goto :goto_26

    .line 945
    :cond_40
    const/16 v24, 0x0

    .line 946
    .line 947
    aget-object v9, v4, v24

    .line 948
    .line 949
    :goto_26
    if-eqz v2, :cond_41

    .line 950
    .line 951
    goto :goto_27

    .line 952
    :cond_41
    const/16 v18, 0x1

    .line 953
    .line 954
    aget-object v2, v4, v18

    .line 955
    .line 956
    :goto_27
    if-eqz v3, :cond_42

    .line 957
    .line 958
    goto :goto_28

    .line 959
    :cond_42
    aget-object v3, v4, v15

    .line 960
    .line 961
    :goto_28
    if-eqz v6, :cond_43

    .line 962
    .line 963
    goto :goto_29

    .line 964
    :cond_43
    const/16 v22, 0x3

    .line 965
    .line 966
    aget-object v6, v4, v22

    .line 967
    .line 968
    :goto_29
    invoke-virtual {v10, v9, v2, v3, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 969
    .line 970
    .line 971
    :cond_44
    :goto_2a
    const/16 v2, 0xb

    .line 972
    .line 973
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 974
    .line 975
    .line 976
    move-result v3

    .line 977
    if-eqz v3, :cond_47

    .line 978
    .line 979
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 980
    .line 981
    .line 982
    move-result v3

    .line 983
    if-eqz v3, :cond_45

    .line 984
    .line 985
    const/4 v6, 0x0

    .line 986
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    if-eqz v3, :cond_45

    .line 991
    .line 992
    invoke-static {v7, v3}, Lm9/e0;->e0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    if-eqz v3, :cond_45

    .line 997
    .line 998
    goto :goto_2b

    .line 999
    :cond_45
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v3

    .line 1003
    :goto_2b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1004
    .line 1005
    const/16 v4, 0x18

    .line 1006
    .line 1007
    if-lt v2, v4, :cond_46

    .line 1008
    .line 1009
    invoke-static {v10, v3}, Li4/b;->j(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 1010
    .line 1011
    .line 1012
    goto :goto_2c

    .line 1013
    :cond_46
    instance-of v2, v10, Li4/l;

    .line 1014
    .line 1015
    if-eqz v2, :cond_47

    .line 1016
    .line 1017
    move-object v2, v10

    .line 1018
    check-cast v2, Li4/l;

    .line 1019
    .line 1020
    invoke-interface {v2, v3}, Li4/l;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    .line 1021
    .line 1022
    .line 1023
    :cond_47
    :goto_2c
    const/16 v2, 0xc

    .line 1024
    .line 1025
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v3

    .line 1029
    if-eqz v3, :cond_49

    .line 1030
    .line 1031
    const/4 v8, -0x1

    .line 1032
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1033
    .line 1034
    .line 1035
    move-result v2

    .line 1036
    const/4 v3, 0x0

    .line 1037
    invoke-static {v2, v3}, Lp/l1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1042
    .line 1043
    const/16 v4, 0x18

    .line 1044
    .line 1045
    if-lt v3, v4, :cond_48

    .line 1046
    .line 1047
    invoke-static {v10, v2}, Li4/b;->k(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 1048
    .line 1049
    .line 1050
    goto :goto_2d

    .line 1051
    :cond_48
    instance-of v3, v10, Li4/l;

    .line 1052
    .line 1053
    if-eqz v3, :cond_49

    .line 1054
    .line 1055
    move-object v3, v10

    .line 1056
    check-cast v3, Li4/l;

    .line 1057
    .line 1058
    invoke-interface {v3, v2}, Li4/l;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1059
    .line 1060
    .line 1061
    :cond_49
    :goto_2d
    const/4 v8, -0x1

    .line 1062
    const/16 v15, 0xf

    .line 1063
    .line 1064
    invoke-virtual {v1, v15, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1065
    .line 1066
    .line 1067
    move-result v2

    .line 1068
    const/16 v3, 0x12

    .line 1069
    .line 1070
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1071
    .line 1072
    .line 1073
    move-result v3

    .line 1074
    const/16 v4, 0x13

    .line 1075
    .line 1076
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v5

    .line 1080
    if-eqz v5, :cond_4b

    .line 1081
    .line 1082
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v5

    .line 1086
    if-eqz v5, :cond_4a

    .line 1087
    .line 1088
    iget v6, v5, Landroid/util/TypedValue;->type:I

    .line 1089
    .line 1090
    const/4 v15, 0x5

    .line 1091
    if-ne v6, v15, :cond_4a

    .line 1092
    .line 1093
    iget v4, v5, Landroid/util/TypedValue;->data:I

    .line 1094
    .line 1095
    and-int/lit8 v8, v4, 0xf

    .line 1096
    .line 1097
    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 1098
    .line 1099
    .line 1100
    move-result v4

    .line 1101
    move v5, v8

    .line 1102
    const/4 v8, -0x1

    .line 1103
    goto :goto_2f

    .line 1104
    :cond_4a
    const/4 v8, -0x1

    .line 1105
    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1106
    .line 1107
    .line 1108
    move-result v4

    .line 1109
    int-to-float v4, v4

    .line 1110
    :goto_2e
    const/4 v5, -0x1

    .line 1111
    goto :goto_2f

    .line 1112
    :cond_4b
    const/4 v8, -0x1

    .line 1113
    const/high16 v4, -0x40800000    # -1.0f

    .line 1114
    .line 1115
    goto :goto_2e

    .line 1116
    :goto_2f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1117
    .line 1118
    .line 1119
    if-eq v2, v8, :cond_4c

    .line 1120
    .line 1121
    invoke-static {v10, v2}, Li9/a;->Q(Landroid/widget/TextView;I)V

    .line 1122
    .line 1123
    .line 1124
    :cond_4c
    if-eq v3, v8, :cond_4d

    .line 1125
    .line 1126
    invoke-static {v10, v3}, Li9/a;->R(Landroid/widget/TextView;I)V

    .line 1127
    .line 1128
    .line 1129
    :cond_4d
    cmpl-float v1, v4, p2

    .line 1130
    .line 1131
    if-eqz v1, :cond_50

    .line 1132
    .line 1133
    if-ne v5, v8, :cond_4e

    .line 1134
    .line 1135
    float-to-int v1, v4

    .line 1136
    invoke-static {v10, v1}, Li9/a;->S(Landroid/widget/TextView;I)V

    .line 1137
    .line 1138
    .line 1139
    return-void

    .line 1140
    :cond_4e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1141
    .line 1142
    const/16 v2, 0x22

    .line 1143
    .line 1144
    if-lt v1, v2, :cond_4f

    .line 1145
    .line 1146
    invoke-static {v10, v5, v4}, Lc/a;->l(Landroid/widget/TextView;IF)V

    .line 1147
    .line 1148
    .line 1149
    return-void

    .line 1150
    :cond_4f
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v1

    .line 1154
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 1159
    .line 1160
    .line 1161
    move-result v1

    .line 1162
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1163
    .line 1164
    .line 1165
    move-result v1

    .line 1166
    invoke-static {v10, v1}, Li9/a;->S(Landroid/widget/TextView;I)V

    .line 1167
    .line 1168
    .line 1169
    :cond_50
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 6

    .line 1
    new-instance v0, La2/b;

    .line 2
    .line 3
    sget-object v1, Li/a;->v:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, p1, p2}, La2/b;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0xe

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    iget-object v4, p0, Lp/x0;->a:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v2, 0x17

    .line 33
    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v2}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 v2, 0x5

    .line 53
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v2}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    const/4 v2, 0x4

    .line 69
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v2}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    const/4 v2, -0x1

    .line 91
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p0, p1, v0}, Lp/x0;->m(Landroid/content/Context;La2/b;)V

    .line 102
    .line 103
    .line 104
    const/16 p1, 0x1a

    .line 105
    .line 106
    if-lt v1, p1, :cond_5

    .line 107
    .line 108
    const/16 p1, 0xd

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-static {v4, p1}, Lp/v0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v0}, La2/b;->W()V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    iget p2, p0, Lp/x0;->j:I

    .line 133
    .line 134
    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return-void
.end method

.method public final h(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp/x0;->i:Lp/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/g1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lp/g1;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Lp/g1;->k(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lp/g1;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lp/g1;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final i([II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lp/x0;->i:Lp/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/g1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_3

    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v4, v0, Lp/g1;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v3}, Lp/g1;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Lp/g1;->f:[I

    .line 55
    .line 56
    invoke-virtual {v0}, Lp/g1;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "None of the preset sizes is valid: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_3
    iput-boolean v2, v0, Lp/g1;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0}, Lp/g1;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Lp/g1;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final j(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp/x0;->i:Lp/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/g1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Lp/g1;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v1, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/high16 v3, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1, v2}, Lp/g1;->k(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lp/g1;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lp/g1;->a()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Unknown auto-size text type: "

    .line 55
    .line 56
    invoke-static {p1, v1}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Lp/g1;->a:I

    .line 66
    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v1, v0, Lp/g1;->d:F

    .line 70
    .line 71
    iput v1, v0, Lp/g1;->e:F

    .line 72
    .line 73
    iput v1, v0, Lp/g1;->c:F

    .line 74
    .line 75
    new-array v1, p1, [I

    .line 76
    .line 77
    iput-object v1, v0, Lp/g1;->f:[I

    .line 78
    .line 79
    iput-boolean p1, v0, Lp/g1;->b:Z

    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/x0;->h:Lp/t2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lp/t2;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lp/x0;->h:Lp/t2;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lp/x0;->h:Lp/t2;

    .line 13
    .line 14
    iput-object p1, v0, Lp/t2;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lp/t2;->d:Z

    .line 22
    .line 23
    iput-object v0, p0, Lp/x0;->b:Lp/t2;

    .line 24
    .line 25
    iput-object v0, p0, Lp/x0;->c:Lp/t2;

    .line 26
    .line 27
    iput-object v0, p0, Lp/x0;->d:Lp/t2;

    .line 28
    .line 29
    iput-object v0, p0, Lp/x0;->e:Lp/t2;

    .line 30
    .line 31
    iput-object v0, p0, Lp/x0;->f:Lp/t2;

    .line 32
    .line 33
    iput-object v0, p0, Lp/x0;->g:Lp/t2;

    .line 34
    .line 35
    return-void
.end method

.method public final l(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/x0;->h:Lp/t2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lp/t2;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lp/x0;->h:Lp/t2;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lp/x0;->h:Lp/t2;

    .line 13
    .line 14
    iput-object p1, v0, Lp/t2;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lp/t2;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Lp/x0;->b:Lp/t2;

    .line 24
    .line 25
    iput-object v0, p0, Lp/x0;->c:Lp/t2;

    .line 26
    .line 27
    iput-object v0, p0, Lp/x0;->d:Lp/t2;

    .line 28
    .line 29
    iput-object v0, p0, Lp/x0;->e:Lp/t2;

    .line 30
    .line 31
    iput-object v0, p0, Lp/x0;->f:Lp/t2;

    .line 32
    .line 33
    iput-object v0, p0, Lp/x0;->g:Lp/t2;

    .line 34
    .line 35
    return-void
.end method

.method public final m(Landroid/content/Context;La2/b;)V
    .locals 11

    .line 1
    iget v0, p0, Lp/x0;->j:I

    .line 2
    .line 3
    iget-object v1, p2, La2/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/res/TypedArray;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lp/x0;->j:I

    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    const/16 v4, 0x1c

    .line 18
    .line 19
    if-lt v0, v4, :cond_0

    .line 20
    .line 21
    const/16 v5, 0xb

    .line 22
    .line 23
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput v5, p0, Lp/x0;->k:I

    .line 28
    .line 29
    if-eq v5, v3, :cond_0

    .line 30
    .line 31
    iget v5, p0, Lp/x0;->j:I

    .line 32
    .line 33
    and-int/2addr v5, v2

    .line 34
    iput v5, p0, Lp/x0;->j:I

    .line 35
    .line 36
    :cond_0
    const/16 v5, 0xa

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/16 v7, 0xc

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x1

    .line 46
    if-nez v6, :cond_5

    .line 47
    .line 48
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_e

    .line 60
    .line 61
    iput-boolean v8, p0, Lp/x0;->m:Z

    .line 62
    .line 63
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v9, :cond_4

    .line 68
    .line 69
    if-eq p1, v2, :cond_3

    .line 70
    .line 71
    const/4 p2, 0x3

    .line 72
    if-eq p1, p2, :cond_2

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 77
    .line 78
    iput-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 82
    .line 83
    iput-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 87
    .line 88
    iput-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    :goto_0
    const/4 v6, 0x0

    .line 92
    iput-object v6, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 93
    .line 94
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    const/16 v5, 0xc

    .line 101
    .line 102
    :cond_6
    iget v6, p0, Lp/x0;->k:I

    .line 103
    .line 104
    iget v7, p0, Lp/x0;->j:I

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_b

    .line 111
    .line 112
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 113
    .line 114
    iget-object v10, p0, Lp/x0;->a:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    new-instance v10, Ld3/e;

    .line 120
    .line 121
    invoke-direct {v10, p0, v6, v7, p1}, Ld3/e;-><init>(Lp/x0;IILjava/lang/ref/WeakReference;)V

    .line 122
    .line 123
    .line 124
    :try_start_0
    iget p1, p0, Lp/x0;->j:I

    .line 125
    .line 126
    invoke-virtual {p2, v5, p1, v10}, La2/b;->F(IILd3/e;)Landroid/graphics/Typeface;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    if-lt v0, v4, :cond_8

    .line 133
    .line 134
    iget p2, p0, Lp/x0;->k:I

    .line 135
    .line 136
    if-eq p2, v3, :cond_8

    .line 137
    .line 138
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget p2, p0, Lp/x0;->k:I

    .line 143
    .line 144
    iget v0, p0, Lp/x0;->j:I

    .line 145
    .line 146
    and-int/2addr v0, v2

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    const/4 v0, 0x1

    .line 150
    goto :goto_1

    .line 151
    :cond_7
    const/4 v0, 0x0

    .line 152
    :goto_1
    invoke-static {p1, p2, v0}, Lp/w0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catch_0
    nop

    .line 160
    goto :goto_4

    .line 161
    :cond_8
    iput-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 162
    .line 163
    :cond_9
    :goto_2
    iget-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 164
    .line 165
    if-nez p1, :cond_a

    .line 166
    .line 167
    const/4 p1, 0x1

    .line 168
    goto :goto_3

    .line 169
    :cond_a
    const/4 p1, 0x0

    .line 170
    :goto_3
    iput-boolean p1, p0, Lp/x0;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    :cond_b
    :goto_4
    iget-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 173
    .line 174
    if-nez p1, :cond_e

    .line 175
    .line 176
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_e

    .line 181
    .line 182
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 183
    .line 184
    if-lt p2, v4, :cond_d

    .line 185
    .line 186
    iget p2, p0, Lp/x0;->k:I

    .line 187
    .line 188
    if-eq p2, v3, :cond_d

    .line 189
    .line 190
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iget p2, p0, Lp/x0;->k:I

    .line 195
    .line 196
    iget v0, p0, Lp/x0;->j:I

    .line 197
    .line 198
    and-int/2addr v0, v2

    .line 199
    if-eqz v0, :cond_c

    .line 200
    .line 201
    const/4 v8, 0x1

    .line 202
    :cond_c
    invoke-static {p1, p2, v8}, Lp/w0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iput-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_d
    iget p2, p0, Lp/x0;->j:I

    .line 210
    .line 211
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iput-object p1, p0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 216
    .line 217
    :cond_e
    :goto_5
    return-void
.end method
