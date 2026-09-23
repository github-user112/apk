.class public final Ldc/h;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Ldc/h;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Ldc/h;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ldc/h;->h:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ldc/h;->e:I

    .line 2
    .line 3
    check-cast p1, Lw8/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ldc/h;

    .line 9
    .line 10
    iget-object v1, p0, Ldc/h;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ls0/c;

    .line 13
    .line 14
    iget-object v2, p0, Ldc/h;->h:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ls0/b;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-direct {v0, v1, v2, p1, v3}, Ldc/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ldc/h;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_0
    new-instance v0, Ldc/h;

    .line 30
    .line 31
    iget-object v1, p0, Ldc/h;->g:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lq0/f;

    .line 34
    .line 35
    iget-object v2, p0, Ldc/h;->h:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Ls0/e;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-direct {v0, v1, v2, p1, v3}, Ldc/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ldc/h;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :pswitch_1
    new-instance v0, Ldc/h;

    .line 51
    .line 52
    iget-object v1, p0, Ldc/h;->g:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Ldc/e;

    .line 55
    .line 56
    iget-object v2, p0, Ldc/h;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Lg9/x;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-direct {v0, v1, v2, p1, v3}, Ldc/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ldc/h;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Ldc/h;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ldc/h;->h:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ls0/b;

    .line 9
    .line 10
    iget-object v1, p0, Ldc/h;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ls0/c;

    .line 13
    .line 14
    iget-object v1, v1, Ls0/c;->c:Lf1/k1;

    .line 15
    .line 16
    iget v2, p0, Ldc/h;->f:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    sget-object v4, Lr8/z;->a:Lr8/z;

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    if-ne v2, v5, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_3

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :try_start_1
    invoke-virtual {v1, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput v5, p0, Ldc/h;->f:I

    .line 47
    .line 48
    iget-object p1, v0, Ls0/b;->b:Lcc/h;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lcc/h;->t(Lw8/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 55
    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object p1, v4

    .line 60
    :goto_0
    if-ne p1, v0, :cond_3

    .line 61
    .line 62
    move-object v4, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    return-object v4

    .line 68
    :goto_3
    invoke-virtual {v1, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :pswitch_0
    iget-object v0, p0, Ldc/h;->g:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lq0/f;

    .line 75
    .line 76
    iget-object v1, v0, Lq0/f;->e:Lp1/u;

    .line 77
    .line 78
    iget-object v2, v0, Lq0/f;->a:Landroid/view/View;

    .line 79
    .line 80
    iget v3, p0, Ldc/h;->f:I

    .line 81
    .line 82
    sget-object v4, Lr8/z;->a:Lr8/z;

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x1

    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    if-ne v3, v6, :cond_4

    .line 89
    .line 90
    :try_start_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    .line 92
    .line 93
    goto/16 :goto_9

    .line 94
    .line 95
    :catchall_1
    move-exception p1

    .line 96
    goto/16 :goto_b

    .line 97
    .line 98
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_5
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lq0/e;

    .line 110
    .line 111
    invoke-direct {p1}, Lq0/e;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Ldc/h;->h:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Ls0/e;

    .line 117
    .line 118
    new-instance v7, Lq0/d;

    .line 119
    .line 120
    new-instance v8, Lq0/b;

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    invoke-direct {v8, v0, v3, v9}, Lq0/b;-><init>(Lq0/f;Ls0/e;I)V

    .line 124
    .line 125
    .line 126
    new-instance v9, Lq0/b;

    .line 127
    .line 128
    const/4 v10, 0x1

    .line 129
    invoke-direct {v9, v0, v3, v10}, Lq0/b;-><init>(Lq0/f;Ls0/e;I)V

    .line 130
    .line 131
    .line 132
    invoke-direct {v7, p1, v8, v9, v2}, Lq0/d;-><init>(Lq0/e;Lq0/b;Lq0/b;Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    iget-object v3, v0, Lq0/f;->b:Lf9/k;

    .line 136
    .line 137
    if-eqz v3, :cond_7

    .line 138
    .line 139
    invoke-interface {v3, v7}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lq0/d;

    .line 144
    .line 145
    if-nez v3, :cond_6

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    move-object v7, v3

    .line 149
    :cond_7
    :goto_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    if-eqz v8, :cond_8

    .line 158
    .line 159
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    goto :goto_5

    .line 164
    :cond_8
    move-object v8, v5

    .line 165
    :goto_5
    if-eq v3, v8, :cond_a

    .line 166
    .line 167
    iget-object v3, v0, Lq0/f;->i:Lb8/a;

    .line 168
    .line 169
    if-nez v3, :cond_9

    .line 170
    .line 171
    new-instance v3, Lb8/a;

    .line 172
    .line 173
    const/4 v8, 0x2

    .line 174
    invoke-direct {v3, v0, v7, p1, v8}, Lb8/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 175
    .line 176
    .line 177
    iput-object v3, v0, Lq0/f;->i:Lb8/a;

    .line 178
    .line 179
    :cond_9
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    const/16 v8, 0x17

    .line 186
    .line 187
    if-lt v3, v8, :cond_b

    .line 188
    .line 189
    new-instance v3, Lq0/l;

    .line 190
    .line 191
    invoke-direct {v3, v7}, Lq0/l;-><init>(Lq0/d;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v2, v3}, Li7/a;->k(Landroid/view/View;Lq0/l;)Landroid/view/ActionMode;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    goto :goto_6

    .line 199
    :cond_b
    new-instance v3, Lq0/n;

    .line 200
    .line 201
    invoke-direct {v3, v7}, Lq0/n;-><init>(Lq0/d;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    :goto_6
    if-nez v3, :cond_c

    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_c
    iput-object v3, v0, Lq0/f;->h:Landroid/view/ActionMode;

    .line 212
    .line 213
    :goto_7
    :try_start_3
    iput v6, p0, Ldc/h;->f:I

    .line 214
    .line 215
    iget-object p1, p1, Lq0/e;->a:Lcc/h;

    .line 216
    .line 217
    invoke-virtual {p1, p0}, Lcc/h;->t(Lw8/c;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    sget-object v3, Lx8/a;->a:Lx8/a;

    .line 222
    .line 223
    if-ne p1, v3, :cond_d

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_d
    move-object p1, v4

    .line 227
    :goto_8
    if-ne p1, v3, :cond_e

    .line 228
    .line 229
    move-object v4, v3

    .line 230
    goto :goto_a

    .line 231
    :cond_e
    :goto_9
    invoke-virtual {v1}, Lp1/u;->a()V

    .line 232
    .line 233
    .line 234
    iget-object p1, v0, Lq0/f;->h:Landroid/view/ActionMode;

    .line 235
    .line 236
    if-eqz p1, :cond_f

    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 239
    .line 240
    .line 241
    :cond_f
    iget-object p1, v0, Lq0/f;->i:Lb8/a;

    .line 242
    .line 243
    if-eqz p1, :cond_10

    .line 244
    .line 245
    invoke-virtual {v2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 246
    .line 247
    .line 248
    :cond_10
    iput-object v5, v0, Lq0/f;->h:Landroid/view/ActionMode;

    .line 249
    .line 250
    :goto_a
    return-object v4

    .line 251
    :goto_b
    invoke-virtual {v1}, Lp1/u;->a()V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lq0/f;->h:Landroid/view/ActionMode;

    .line 255
    .line 256
    if-eqz v1, :cond_11

    .line 257
    .line 258
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 259
    .line 260
    .line 261
    :cond_11
    iget-object v1, v0, Lq0/f;->i:Lb8/a;

    .line 262
    .line 263
    if-eqz v1, :cond_12

    .line 264
    .line 265
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 266
    .line 267
    .line 268
    :cond_12
    iput-object v5, v0, Lq0/f;->h:Landroid/view/ActionMode;

    .line 269
    .line 270
    throw p1

    .line 271
    :pswitch_1
    iget-object v0, p0, Ldc/h;->h:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v0, Lg9/x;

    .line 274
    .line 275
    iget v1, p0, Ldc/h;->f:I

    .line 276
    .line 277
    const/4 v2, 0x0

    .line 278
    const/4 v3, 0x1

    .line 279
    if-eqz v1, :cond_14

    .line 280
    .line 281
    if-ne v1, v3, :cond_13

    .line 282
    .line 283
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    goto :goto_c

    .line 287
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 288
    .line 289
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 290
    .line 291
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw p1

    .line 295
    :cond_14
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    iget-object p1, p0, Ldc/h;->g:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast p1, Ldc/e;

    .line 301
    .line 302
    sget-object v1, Lec/c;->b:Lfc/s;

    .line 303
    .line 304
    iget-object v4, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 305
    .line 306
    if-ne v4, v1, :cond_15

    .line 307
    .line 308
    move-object v4, v2

    .line 309
    :cond_15
    iput v3, p0, Ldc/h;->f:I

    .line 310
    .line 311
    invoke-interface {p1, v4, p0}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 316
    .line 317
    if-ne p1, v1, :cond_16

    .line 318
    .line 319
    goto :goto_d

    .line 320
    :cond_16
    :goto_c
    iput-object v2, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 321
    .line 322
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 323
    .line 324
    :goto_d
    return-object v1

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
