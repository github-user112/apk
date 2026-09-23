.class public final Lj/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Le4/n;
.implements Lp/i1;
.implements Lo/x;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj/b0;


# direct methods
.method public synthetic constructor <init>(Lj/b0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj/s;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj/s;->b:Lj/b0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public I(Lo/m;)Z
    .locals 2

    .line 1
    iget v0, p0, Lj/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lo/m;->k()Lo/m;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lj/s;->b:Lj/b0;

    .line 13
    .line 14
    iget-boolean v1, v0, Lj/b0;->F:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Lj/b0;->l:Landroid/view/Window;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-boolean v0, v0, Lj/b0;->Q:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/16 v0, 0x6c

    .line 31
    .line 32
    invoke-interface {v1, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :pswitch_0
    iget-object v0, p0, Lj/s;->b:Lj/b0;

    .line 38
    .line 39
    iget-object v0, v0, Lj/b0;->l:Landroid/view/Window;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const/16 v1, 0x6c

    .line 48
    .line 49
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lo/m;Z)V
    .locals 9

    .line 1
    iget v0, p0, Lj/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lo/m;->k()Lo/m;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-eqz v3, :cond_1

    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :cond_1
    iget-object v4, p0, Lj/s;->b:Lj/b0;

    .line 21
    .line 22
    iget-object v5, v4, Lj/b0;->L:[Lj/a0;

    .line 23
    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    array-length v6, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v6, 0x0

    .line 29
    :goto_1
    if-ge v1, v6, :cond_4

    .line 30
    .line 31
    aget-object v7, v5, v1

    .line 32
    .line 33
    if-eqz v7, :cond_3

    .line 34
    .line 35
    iget-object v8, v7, Lj/a0;->h:Lo/m;

    .line 36
    .line 37
    if-ne v8, p1, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    const/4 v7, 0x0

    .line 44
    :goto_2
    if-eqz v7, :cond_6

    .line 45
    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    iget p1, v7, Lj/a0;->a:I

    .line 49
    .line 50
    invoke-virtual {v4, p1, v7, v0}, Lj/b0;->n(ILj/a0;Lo/m;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v7, v2}, Lj/b0;->q(Lj/a0;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {v4, v7, p2}, Lj/b0;->q(Lj/a0;Z)V

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_3
    return-void

    .line 61
    :pswitch_0
    iget-object p2, p0, Lj/s;->b:Lj/b0;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lj/b0;->p(Lo/m;)V

    .line 64
    .line 65
    .line 66
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroid/view/View;Le4/r1;)Le4/r1;
    .locals 20

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    iget-object v3, v2, Le4/r1;->a:Le4/n1;

    .line 6
    .line 7
    invoke-virtual {v3}, Le4/n1;->l()Lx3/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v4, v0, Lx3/b;->b:I

    .line 12
    .line 13
    move-object/from16 v5, p0

    .line 14
    .line 15
    iget-object v6, v5, Lj/s;->b:Lj/b0;

    .line 16
    .line 17
    iget-object v7, v6, Lj/b0;->k:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v3}, Le4/n1;->l()Lx3/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v8, v0, Lx3/b;->b:I

    .line 24
    .line 25
    iget-object v0, v6, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 26
    .line 27
    const/16 v9, 0x1d

    .line 28
    .line 29
    if-eqz v0, :cond_14

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    .line 37
    if-eqz v0, :cond_14

    .line 38
    .line 39
    iget-object v0, v6, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v12, v0

    .line 46
    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    .line 48
    iget-object v0, v6, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_12

    .line 55
    .line 56
    iget-object v0, v6, Lj/b0;->h0:Landroid/graphics/Rect;

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    new-instance v0, Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, v6, Lj/b0;->h0:Landroid/graphics/Rect;

    .line 66
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, v6, Lj/b0;->i0:Landroid/graphics/Rect;

    .line 73
    .line 74
    :cond_0
    iget-object v14, v6, Lj/b0;->h0:Landroid/graphics/Rect;

    .line 75
    .line 76
    iget-object v0, v6, Lj/b0;->i0:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {v3}, Le4/n1;->l()Lx3/b;

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    iget v15, v15, Lx3/b;->a:I

    .line 83
    .line 84
    const/16 v16, 0x0

    .line 85
    .line 86
    invoke-virtual {v3}, Le4/n1;->l()Lx3/b;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    iget v11, v11, Lx3/b;->b:I

    .line 91
    .line 92
    invoke-virtual {v3}, Le4/n1;->l()Lx3/b;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    iget v10, v10, Lx3/b;->c:I

    .line 97
    .line 98
    const/16 v17, 0x1

    .line 99
    .line 100
    invoke-virtual {v3}, Le4/n1;->l()Lx3/b;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    iget v13, v13, Lx3/b;->d:I

    .line 105
    .line 106
    invoke-virtual {v14, v15, v11, v10, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    .line 108
    .line 109
    iget-object v10, v6, Lj/b0;->A:Landroid/view/ViewGroup;

    .line 110
    .line 111
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    .line 113
    if-lt v11, v9, :cond_1

    .line 114
    .line 115
    sget-boolean v11, Lp/l3;->a:Z

    .line 116
    .line 117
    invoke-static {v10, v14, v0}, Lp/k3;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_1
    sget-boolean v11, Lp/l3;->a:Z

    .line 122
    .line 123
    const/4 v13, 0x2

    .line 124
    const-string v15, "ViewUtils"

    .line 125
    .line 126
    if-nez v11, :cond_2

    .line 127
    .line 128
    sput-boolean v17, Lp/l3;->a:Z

    .line 129
    .line 130
    :try_start_0
    const-class v11, Landroid/view/View;

    .line 131
    .line 132
    const-string v9, "computeFitSystemWindows"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    move-object/from16 v18, v0

    .line 135
    .line 136
    :try_start_1
    new-array v0, v13, [Ljava/lang/Class;

    .line 137
    .line 138
    const-class v19, Landroid/graphics/Rect;

    .line 139
    .line 140
    aput-object v19, v0, v16

    .line 141
    .line 142
    aput-object v19, v0, v17

    .line 143
    .line 144
    invoke-virtual {v11, v9, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sput-object v0, Lp/l3;->b:Ljava/lang/reflect/Method;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_3

    .line 155
    .line 156
    sget-object v0, Lp/l3;->b:Ljava/lang/reflect/Method;

    .line 157
    .line 158
    const/4 v9, 0x1

    .line 159
    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-object/from16 v18, v0

    .line 164
    .line 165
    :catch_1
    const-string v0, "Could not find method computeFitSystemWindows. Oh well."

    .line 166
    .line 167
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_2
    move-object/from16 v18, v0

    .line 172
    .line 173
    :cond_3
    :goto_0
    sget-object v0, Lp/l3;->b:Ljava/lang/reflect/Method;

    .line 174
    .line 175
    if-eqz v0, :cond_4

    .line 176
    .line 177
    :try_start_2
    new-array v9, v13, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object v14, v9, v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 180
    .line 181
    const/16 v17, 0x1

    .line 182
    .line 183
    :try_start_3
    aput-object v18, v9, v17

    .line 184
    .line 185
    invoke-virtual {v0, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catch_2
    move-exception v0

    .line 190
    goto :goto_1

    .line 191
    :catch_3
    move-exception v0

    .line 192
    const/16 v17, 0x1

    .line 193
    .line 194
    :goto_1
    const-string v9, "Could not invoke computeFitSystemWindows"

    .line 195
    .line 196
    invoke-static {v15, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    const/16 v17, 0x1

    .line 201
    .line 202
    :goto_2
    iget v0, v14, Landroid/graphics/Rect;->top:I

    .line 203
    .line 204
    iget v9, v14, Landroid/graphics/Rect;->left:I

    .line 205
    .line 206
    iget v10, v14, Landroid/graphics/Rect;->right:I

    .line 207
    .line 208
    iget-object v11, v6, Lj/b0;->A:Landroid/view/ViewGroup;

    .line 209
    .line 210
    invoke-static {v11}, Le4/k0;->f(Landroid/view/View;)Le4/r1;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    if-nez v11, :cond_5

    .line 215
    .line 216
    const/4 v13, 0x0

    .line 217
    goto :goto_3

    .line 218
    :cond_5
    iget-object v13, v11, Le4/r1;->a:Le4/n1;

    .line 219
    .line 220
    invoke-virtual {v13}, Le4/n1;->l()Lx3/b;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    iget v13, v13, Lx3/b;->a:I

    .line 225
    .line 226
    :goto_3
    if-nez v11, :cond_6

    .line 227
    .line 228
    const/4 v11, 0x0

    .line 229
    goto :goto_4

    .line 230
    :cond_6
    iget-object v11, v11, Le4/r1;->a:Le4/n1;

    .line 231
    .line 232
    invoke-virtual {v11}, Le4/n1;->l()Lx3/b;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    iget v11, v11, Lx3/b;->c:I

    .line 237
    .line 238
    :goto_4
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 239
    .line 240
    if-ne v14, v0, :cond_8

    .line 241
    .line 242
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 243
    .line 244
    if-ne v14, v9, :cond_8

    .line 245
    .line 246
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 247
    .line 248
    if-eq v14, v10, :cond_7

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_7
    const/4 v9, 0x0

    .line 252
    goto :goto_6

    .line 253
    :cond_8
    :goto_5
    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 254
    .line 255
    iput v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 256
    .line 257
    iput v10, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 258
    .line 259
    const/4 v9, 0x1

    .line 260
    :goto_6
    if-lez v0, :cond_9

    .line 261
    .line 262
    iget-object v0, v6, Lj/b0;->C:Landroid/view/View;

    .line 263
    .line 264
    if-nez v0, :cond_9

    .line 265
    .line 266
    new-instance v0, Landroid/view/View;

    .line 267
    .line 268
    invoke-direct {v0, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    iput-object v0, v6, Lj/b0;->C:Landroid/view/View;

    .line 272
    .line 273
    const/16 v10, 0x8

    .line 274
    .line 275
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 279
    .line 280
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 281
    .line 282
    const/16 v15, 0x33

    .line 283
    .line 284
    const/4 v10, -0x1

    .line 285
    invoke-direct {v0, v10, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 286
    .line 287
    .line 288
    iput v13, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 289
    .line 290
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 291
    .line 292
    iget-object v11, v6, Lj/b0;->A:Landroid/view/ViewGroup;

    .line 293
    .line 294
    iget-object v13, v6, Lj/b0;->C:Landroid/view/View;

    .line 295
    .line 296
    invoke-virtual {v11, v13, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_9
    iget-object v0, v6, Lj/b0;->C:Landroid/view/View;

    .line 301
    .line 302
    if-eqz v0, :cond_b

    .line 303
    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 309
    .line 310
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 311
    .line 312
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 313
    .line 314
    if-ne v10, v14, :cond_a

    .line 315
    .line 316
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 317
    .line 318
    if-ne v10, v13, :cond_a

    .line 319
    .line 320
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 321
    .line 322
    if-eq v10, v11, :cond_b

    .line 323
    .line 324
    :cond_a
    iput v14, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 325
    .line 326
    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 327
    .line 328
    iput v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 329
    .line 330
    iget-object v10, v6, Lj/b0;->C:Landroid/view/View;

    .line 331
    .line 332
    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .line 334
    .line 335
    :cond_b
    :goto_7
    iget-object v0, v6, Lj/b0;->C:Landroid/view/View;

    .line 336
    .line 337
    if-eqz v0, :cond_c

    .line 338
    .line 339
    const/4 v13, 0x1

    .line 340
    goto :goto_8

    .line 341
    :cond_c
    const/4 v13, 0x0

    .line 342
    :goto_8
    if-eqz v13, :cond_10

    .line 343
    .line 344
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_10

    .line 349
    .line 350
    iget-object v0, v6, Lj/b0;->C:Landroid/view/View;

    .line 351
    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 353
    .line 354
    .line 355
    move-result v10

    .line 356
    and-int/lit16 v10, v10, 0x2000

    .line 357
    .line 358
    const/16 v11, 0x17

    .line 359
    .line 360
    if-eqz v10, :cond_e

    .line 361
    .line 362
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 363
    .line 364
    const v14, 0x7f050006

    .line 365
    .line 366
    .line 367
    if-lt v10, v11, :cond_d

    .line 368
    .line 369
    invoke-static {v7, v14}, Li4/b;->c(Landroid/content/Context;I)I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    goto :goto_9

    .line 374
    :cond_d
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getColor(I)I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    goto :goto_9

    .line 383
    :cond_e
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 384
    .line 385
    const v14, 0x7f050005

    .line 386
    .line 387
    .line 388
    if-lt v10, v11, :cond_f

    .line 389
    .line 390
    invoke-static {v7, v14}, Li4/b;->c(Landroid/content/Context;I)I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    goto :goto_9

    .line 395
    :cond_f
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getColor(I)I

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    :goto_9
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 404
    .line 405
    .line 406
    :cond_10
    iget-boolean v0, v6, Lj/b0;->H:Z

    .line 407
    .line 408
    if-nez v0, :cond_11

    .line 409
    .line 410
    if-eqz v13, :cond_11

    .line 411
    .line 412
    const/4 v8, 0x0

    .line 413
    :cond_11
    move/from16 v17, v9

    .line 414
    .line 415
    move v0, v13

    .line 416
    const/4 v13, 0x0

    .line 417
    goto :goto_a

    .line 418
    :cond_12
    const/16 v16, 0x0

    .line 419
    .line 420
    const/16 v17, 0x1

    .line 421
    .line 422
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 423
    .line 424
    const/4 v13, 0x0

    .line 425
    if-eqz v0, :cond_13

    .line 426
    .line 427
    iput v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 428
    .line 429
    const/4 v0, 0x0

    .line 430
    goto :goto_a

    .line 431
    :cond_13
    const/4 v0, 0x0

    .line 432
    const/16 v17, 0x0

    .line 433
    .line 434
    :goto_a
    if-eqz v17, :cond_15

    .line 435
    .line 436
    iget-object v7, v6, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 437
    .line 438
    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    .line 440
    .line 441
    goto :goto_b

    .line 442
    :cond_14
    const/4 v13, 0x0

    .line 443
    const/4 v0, 0x0

    .line 444
    :cond_15
    :goto_b
    iget-object v6, v6, Lj/b0;->C:Landroid/view/View;

    .line 445
    .line 446
    if-eqz v6, :cond_17

    .line 447
    .line 448
    if-eqz v0, :cond_16

    .line 449
    .line 450
    const/4 v10, 0x0

    .line 451
    goto :goto_c

    .line 452
    :cond_16
    const/16 v10, 0x8

    .line 453
    .line 454
    :goto_c
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    :cond_17
    if-eq v4, v8, :cond_1b

    .line 458
    .line 459
    invoke-virtual {v3}, Le4/n1;->l()Lx3/b;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    iget v0, v0, Lx3/b;->a:I

    .line 464
    .line 465
    invoke-virtual {v3}, Le4/n1;->l()Lx3/b;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    iget v4, v4, Lx3/b;->c:I

    .line 470
    .line 471
    invoke-virtual {v3}, Le4/n1;->l()Lx3/b;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    iget v3, v3, Lx3/b;->d:I

    .line 476
    .line 477
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 478
    .line 479
    const/16 v7, 0x22

    .line 480
    .line 481
    if-lt v6, v7, :cond_18

    .line 482
    .line 483
    new-instance v6, Le4/f1;

    .line 484
    .line 485
    invoke-direct {v6, v2}, Le4/f1;-><init>(Le4/r1;)V

    .line 486
    .line 487
    .line 488
    goto :goto_d

    .line 489
    :cond_18
    const/16 v7, 0x1e

    .line 490
    .line 491
    if-lt v6, v7, :cond_19

    .line 492
    .line 493
    new-instance v6, Le4/e1;

    .line 494
    .line 495
    invoke-direct {v6, v2}, Le4/e1;-><init>(Le4/r1;)V

    .line 496
    .line 497
    .line 498
    goto :goto_d

    .line 499
    :cond_19
    const/16 v7, 0x1d

    .line 500
    .line 501
    if-lt v6, v7, :cond_1a

    .line 502
    .line 503
    new-instance v6, Le4/d1;

    .line 504
    .line 505
    invoke-direct {v6, v2}, Le4/d1;-><init>(Le4/r1;)V

    .line 506
    .line 507
    .line 508
    goto :goto_d

    .line 509
    :cond_1a
    new-instance v6, Le4/c1;

    .line 510
    .line 511
    invoke-direct {v6, v2}, Le4/c1;-><init>(Le4/r1;)V

    .line 512
    .line 513
    .line 514
    :goto_d
    invoke-static {v0, v8, v4, v3}, Lx3/b;->b(IIII)Lx3/b;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v6, v0}, Le4/g1;->g(Lx3/b;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v6}, Le4/g1;->b()Le4/r1;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    goto :goto_e

    .line 526
    :cond_1b
    move-object v0, v2

    .line 527
    :goto_e
    sget-object v2, Le4/k0;->a:Ljava/util/WeakHashMap;

    .line 528
    .line 529
    invoke-virtual {v0}, Le4/r1;->b()Landroid/view/WindowInsets;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    if-eqz v2, :cond_1c

    .line 534
    .line 535
    invoke-static {v1, v2}, Le4/b0;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-virtual {v3, v2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    if-nez v2, :cond_1c

    .line 544
    .line 545
    invoke-static {v1, v3}, Le4/r1;->c(Landroid/view/View;Landroid/view/WindowInsets;)Le4/r1;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    :cond_1c
    return-object v0
.end method
