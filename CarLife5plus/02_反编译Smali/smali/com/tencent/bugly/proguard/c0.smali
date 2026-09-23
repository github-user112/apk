.class public final Lcom/tencent/bugly/proguard/c0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/bugly/proguard/c0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/bugly/proguard/c0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/tencent/bugly/proguard/c0;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, v0, Lcom/tencent/bugly/proguard/c0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v1, v4

    .line 13
    check-cast v1, Lr2/u;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    iget-object v6, v1, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 19
    .line 20
    if-eqz v6, :cond_3

    .line 21
    .line 22
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v5, 0x3

    .line 27
    if-ne v1, v5, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    :cond_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const/16 v3, 0xa

    .line 37
    .line 38
    if-eq v1, v3, :cond_3

    .line 39
    .line 40
    if-eq v1, v2, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-eq v1, v2, :cond_3

    .line 44
    .line 45
    :goto_0
    const/4 v2, 0x7

    .line 46
    if-eq v1, v2, :cond_2

    .line 47
    .line 48
    const/16 v3, 0x9

    .line 49
    .line 50
    if-eq v1, v3, :cond_2

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    const/4 v7, 0x2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v7, 0x7

    .line 56
    :goto_1
    move-object v5, v4

    .line 57
    check-cast v5, Lr2/u;

    .line 58
    .line 59
    iget-wide v8, v5, Lr2/u;->A0:J

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    invoke-virtual/range {v5 .. v10}, Lr2/u;->N(Landroid/view/MotionEvent;IJZ)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void

    .line 66
    :pswitch_0
    check-cast v4, Lp4/x;

    .line 67
    .line 68
    invoke-virtual {v4, v2}, Lp4/x;->w(Z)Z

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_1
    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    .line 73
    .line 74
    iget-object v1, v4, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->t:Lp/k;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {v1}, Lp/k;->l()Z

    .line 83
    .line 84
    .line 85
    :cond_4
    return-void

    .line 86
    :pswitch_2
    check-cast v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 87
    .line 88
    iget-boolean v1, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Z

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v2, "input_method"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 103
    .line 104
    invoke-virtual {v1, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 105
    .line 106
    .line 107
    iput-boolean v3, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Z

    .line 108
    .line 109
    :cond_5
    return-void

    .line 110
    :pswitch_3
    check-cast v4, Lp/r1;

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    iput-object v1, v4, Lp/r1;->l:Lcom/tencent/bugly/proguard/c0;

    .line 114
    .line 115
    invoke-virtual {v4}, Lp/r1;->drawableStateChanged()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_4
    check-cast v4, Ll/e;

    .line 120
    .line 121
    invoke-virtual {v4, v2}, Ll/f;->a(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_5
    check-cast v4, Li4/e;

    .line 129
    .line 130
    iget-object v1, v4, Li4/e;->c:Lp/r1;

    .line 131
    .line 132
    iget-object v2, v4, Li4/e;->a:Li4/a;

    .line 133
    .line 134
    iget-boolean v5, v4, Li4/e;->o:Z

    .line 135
    .line 136
    if-nez v5, :cond_6

    .line 137
    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_6
    iget-boolean v5, v4, Li4/e;->m:Z

    .line 141
    .line 142
    if-eqz v5, :cond_7

    .line 143
    .line 144
    iput-boolean v3, v4, Li4/e;->m:Z

    .line 145
    .line 146
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v5

    .line 150
    iput-wide v5, v2, Li4/a;->e:J

    .line 151
    .line 152
    const-wide/16 v7, -0x1

    .line 153
    .line 154
    iput-wide v7, v2, Li4/a;->g:J

    .line 155
    .line 156
    iput-wide v5, v2, Li4/a;->f:J

    .line 157
    .line 158
    const/high16 v5, 0x3f000000    # 0.5f

    .line 159
    .line 160
    iput v5, v2, Li4/a;->h:F

    .line 161
    .line 162
    :cond_7
    iget-wide v5, v2, Li4/a;->g:J

    .line 163
    .line 164
    const-wide/16 v7, 0x0

    .line 165
    .line 166
    cmp-long v9, v5, v7

    .line 167
    .line 168
    if-lez v9, :cond_8

    .line 169
    .line 170
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    iget-wide v9, v2, Li4/a;->g:J

    .line 175
    .line 176
    iget v11, v2, Li4/a;->i:I

    .line 177
    .line 178
    int-to-long v11, v11

    .line 179
    add-long/2addr v9, v11

    .line 180
    cmp-long v11, v5, v9

    .line 181
    .line 182
    if-lez v11, :cond_8

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    invoke-virtual {v4}, Li4/e;->e()Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-nez v5, :cond_9

    .line 190
    .line 191
    :goto_2
    iput-boolean v3, v4, Li4/e;->o:Z

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_9
    iget-boolean v5, v4, Li4/e;->n:Z

    .line 195
    .line 196
    if-eqz v5, :cond_a

    .line 197
    .line 198
    iput-boolean v3, v4, Li4/e;->n:Z

    .line 199
    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 201
    .line 202
    .line 203
    move-result-wide v9

    .line 204
    const/4 v15, 0x0

    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    const/4 v13, 0x3

    .line 208
    const/4 v14, 0x0

    .line 209
    move-wide v11, v9

    .line 210
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v1, v3}, Lp/r1;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 218
    .line 219
    .line 220
    :cond_a
    iget-wide v5, v2, Li4/a;->f:J

    .line 221
    .line 222
    cmp-long v3, v5, v7

    .line 223
    .line 224
    if-eqz v3, :cond_b

    .line 225
    .line 226
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 227
    .line 228
    .line 229
    move-result-wide v5

    .line 230
    invoke-virtual {v2, v5, v6}, Li4/a;->a(J)F

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    const/high16 v7, -0x3f800000    # -4.0f

    .line 235
    .line 236
    mul-float v7, v7, v3

    .line 237
    .line 238
    mul-float v7, v7, v3

    .line 239
    .line 240
    const/high16 v8, 0x40800000    # 4.0f

    .line 241
    .line 242
    mul-float v3, v3, v8

    .line 243
    .line 244
    add-float/2addr v3, v7

    .line 245
    iget-wide v7, v2, Li4/a;->f:J

    .line 246
    .line 247
    sub-long v7, v5, v7

    .line 248
    .line 249
    iput-wide v5, v2, Li4/a;->f:J

    .line 250
    .line 251
    long-to-float v5, v7

    .line 252
    mul-float v5, v5, v3

    .line 253
    .line 254
    iget v2, v2, Li4/a;->d:F

    .line 255
    .line 256
    mul-float v5, v5, v2

    .line 257
    .line 258
    float-to-int v2, v5

    .line 259
    iget-object v3, v4, Li4/e;->q:Lp/r1;

    .line 260
    .line 261
    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 262
    .line 263
    .line 264
    sget-object v2, Le4/k0;->a:Ljava/util/WeakHashMap;

    .line 265
    .line 266
    invoke-virtual {v1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 267
    .line 268
    .line 269
    :goto_3
    return-void

    .line 270
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 271
    .line 272
    const-string v2, "Cannot compute scroll delta before calling start()"

    .line 273
    .line 274
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v1

    .line 278
    :pswitch_6
    check-cast v4, Lcom/tencent/bugly/proguard/au;

    .line 279
    .line 280
    invoke-static {v4}, Lcom/tencent/bugly/proguard/au;->a(Lcom/tencent/bugly/proguard/au;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :pswitch_7
    check-cast v4, Ljava/util/List;

    .line 285
    .line 286
    invoke-static {v4}, Lcom/tencent/bugly/proguard/ag;->c(Ljava/util/List;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
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
