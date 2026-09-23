.class public final synthetic Lv7/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/Display;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/v2;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Display;Lf1/b1;Lf1/b1;Lf1/v2;I)V
    .locals 0

    .line 1
    iput p5, p0, Lv7/i;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv7/i;->b:Landroid/view/Display;

    .line 4
    .line 5
    iput-object p2, p0, Lv7/i;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, Lv7/i;->d:Lf1/b1;

    .line 8
    .line 9
    iput-object p4, p0, Lv7/i;->e:Lf1/v2;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lv7/i;->a:I

    .line 2
    .line 3
    check-cast p1, Lf1/i0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "$this$DisposableEffect"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lv7/i;->c:Lf1/b1;

    .line 14
    .line 15
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ll8/u;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ll8/u;->a()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lv7/i;->d:Lf1/b1;

    .line 27
    .line 28
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ll8/w;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ll8/w;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Ll8/w;->dismiss()V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-interface {v0, v3}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lv7/i;->e:Lf1/v2;

    .line 64
    .line 65
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lv7/m;

    .line 70
    .line 71
    iget v4, v4, Lv7/m;->c:I

    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Lv7/m;

    .line 80
    .line 81
    iget v4, v4, Lv7/m;->c:I

    .line 82
    .line 83
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 84
    .line 85
    :cond_3
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Lv7/m;

    .line 90
    .line 91
    iget v4, v4, Lv7/m;->d:I

    .line 92
    .line 93
    if-eqz v4, :cond_4

    .line 94
    .line 95
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Lv7/m;

    .line 100
    .line 101
    iget v4, v4, Lv7/m;->d:I

    .line 102
    .line 103
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 104
    .line 105
    :cond_4
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Lv7/m;

    .line 110
    .line 111
    iget v4, v4, Lv7/m;->e:I

    .line 112
    .line 113
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 114
    .line 115
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lv7/m;

    .line 120
    .line 121
    iget v4, v4, Lv7/m;->f:I

    .line 122
    .line 123
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 124
    .line 125
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lv7/m;

    .line 130
    .line 131
    iget v1, v1, Lv7/m;->b:I

    .line 132
    .line 133
    iget-object v5, p0, Lv7/i;->b:Landroid/view/Display;

    .line 134
    .line 135
    if-ne v1, v2, :cond_6

    .line 136
    .line 137
    if-eqz v5, :cond_5

    .line 138
    .line 139
    new-instance v4, Ll8/u;

    .line 140
    .line 141
    sget-object v8, Lv7/b;->g:Ln1/c;

    .line 142
    .line 143
    const/4 v9, 0x2

    .line 144
    const/4 v6, 0x0

    .line 145
    invoke-direct/range {v4 .. v9}, Ll8/u;-><init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V

    .line 146
    .line 147
    .line 148
    move-object v3, v4

    .line 149
    :cond_5
    invoke-interface {p1, v3}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Ll8/u;

    .line 157
    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    invoke-virtual {v1}, Ll8/u;->b()V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_6
    if-eqz v5, :cond_7

    .line 165
    .line 166
    new-instance v4, Ll8/w;

    .line 167
    .line 168
    sget-object v8, Lv7/b;->h:Ln1/c;

    .line 169
    .line 170
    const/4 v9, 0x2

    .line 171
    const/4 v6, 0x0

    .line 172
    invoke-direct/range {v4 .. v9}, Ll8/w;-><init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V

    .line 173
    .line 174
    .line 175
    move-object v3, v4

    .line 176
    :cond_7
    invoke-interface {v0, v3}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ll8/w;

    .line 184
    .line 185
    if-eqz v1, :cond_8

    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 188
    .line 189
    .line 190
    :cond_8
    :goto_0
    new-instance v1, Lv7/j;

    .line 191
    .line 192
    const/4 v2, 0x1

    .line 193
    invoke-direct {v1, p1, v0, v2}, Lv7/j;-><init>(Lf1/b1;Lf1/b1;I)V

    .line 194
    .line 195
    .line 196
    return-object v1

    .line 197
    :pswitch_0
    const-string v0, "$this$DisposableEffect"

    .line 198
    .line 199
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lv7/i;->c:Lf1/b1;

    .line 203
    .line 204
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Ll8/u;

    .line 209
    .line 210
    if-eqz v0, :cond_9

    .line 211
    .line 212
    invoke-virtual {v0}, Ll8/u;->a()V

    .line 213
    .line 214
    .line 215
    :cond_9
    iget-object v0, p0, Lv7/i;->d:Lf1/b1;

    .line 216
    .line 217
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Ll8/w;

    .line 222
    .line 223
    const/4 v2, 0x1

    .line 224
    const/4 v3, 0x0

    .line 225
    if-eqz v1, :cond_b

    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-ne v1, v2, :cond_b

    .line 232
    .line 233
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Ll8/w;

    .line 238
    .line 239
    if-eqz v1, :cond_a

    .line 240
    .line 241
    invoke-virtual {v1}, Ll8/w;->dismiss()V

    .line 242
    .line 243
    .line 244
    :cond_a
    invoke-interface {v0, v3}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_b
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 248
    .line 249
    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lv7/i;->e:Lf1/v2;

    .line 253
    .line 254
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    check-cast v4, Lv7/m;

    .line 259
    .line 260
    iget v4, v4, Lv7/m;->i:I

    .line 261
    .line 262
    if-eqz v4, :cond_c

    .line 263
    .line 264
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    check-cast v4, Lv7/m;

    .line 269
    .line 270
    iget v4, v4, Lv7/m;->i:I

    .line 271
    .line 272
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 273
    .line 274
    :cond_c
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    check-cast v4, Lv7/m;

    .line 279
    .line 280
    iget v4, v4, Lv7/m;->j:I

    .line 281
    .line 282
    if-eqz v4, :cond_d

    .line 283
    .line 284
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    check-cast v4, Lv7/m;

    .line 289
    .line 290
    iget v4, v4, Lv7/m;->j:I

    .line 291
    .line 292
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 293
    .line 294
    :cond_d
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    check-cast v4, Lv7/m;

    .line 299
    .line 300
    iget v4, v4, Lv7/m;->k:I

    .line 301
    .line 302
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 303
    .line 304
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    check-cast v4, Lv7/m;

    .line 309
    .line 310
    iget v4, v4, Lv7/m;->l:I

    .line 311
    .line 312
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 313
    .line 314
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Lv7/m;

    .line 319
    .line 320
    iget v1, v1, Lv7/m;->h:I

    .line 321
    .line 322
    iget-object v5, p0, Lv7/i;->b:Landroid/view/Display;

    .line 323
    .line 324
    if-ne v1, v2, :cond_f

    .line 325
    .line 326
    if-eqz v5, :cond_e

    .line 327
    .line 328
    new-instance v4, Ll8/u;

    .line 329
    .line 330
    sget-object v8, Lv7/b;->j:Ln1/c;

    .line 331
    .line 332
    const/4 v9, 0x2

    .line 333
    const/4 v6, 0x0

    .line 334
    invoke-direct/range {v4 .. v9}, Ll8/u;-><init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V

    .line 335
    .line 336
    .line 337
    move-object v3, v4

    .line 338
    :cond_e
    invoke-interface {p1, v3}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    check-cast v1, Ll8/u;

    .line 346
    .line 347
    if-eqz v1, :cond_11

    .line 348
    .line 349
    invoke-virtual {v1}, Ll8/u;->b()V

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_f
    if-eqz v5, :cond_10

    .line 354
    .line 355
    new-instance v4, Ll8/w;

    .line 356
    .line 357
    sget-object v8, Lv7/b;->k:Ln1/c;

    .line 358
    .line 359
    const/4 v9, 0x2

    .line 360
    const/4 v6, 0x0

    .line 361
    invoke-direct/range {v4 .. v9}, Ll8/w;-><init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V

    .line 362
    .line 363
    .line 364
    move-object v3, v4

    .line 365
    :cond_10
    invoke-interface {v0, v3}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    check-cast v1, Ll8/w;

    .line 373
    .line 374
    if-eqz v1, :cond_11

    .line 375
    .line 376
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 377
    .line 378
    .line 379
    :cond_11
    :goto_1
    new-instance v1, Lv7/j;

    .line 380
    .line 381
    const/4 v2, 0x0

    .line 382
    invoke-direct {v1, p1, v0, v2}, Lv7/j;-><init>(Lf1/b1;Lf1/b1;I)V

    .line 383
    .line 384
    .line 385
    return-object v1

    .line 386
    nop

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
