.class public final Lf1/t2;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lr2/b3;Lcc/h;Landroid/content/Context;Lw8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf1/t2;->e:I

    .line 1
    iput-object p1, p0, Lf1/t2;->i:Ljava/lang/Object;

    iput-object p2, p0, Lf1/t2;->j:Ljava/lang/Object;

    iput-object p3, p0, Lf1/t2;->k:Ljava/lang/Object;

    iput-object p4, p0, Lf1/t2;->l:Ljava/lang/Object;

    iput-object p5, p0, Lf1/t2;->m:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lf9/a;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf1/t2;->e:I

    .line 2
    iput-object p1, p0, Lf1/t2;->m:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lf1/t2;->e:I

    .line 2
    .line 3
    check-cast p1, Ldc/e;

    .line 4
    .line 5
    check-cast p2, Lw8/c;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lf1/t2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lf1/t2;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lf1/t2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lf1/t2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lf1/t2;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lf1/t2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 8

    .line 1
    iget v0, p0, Lf1/t2;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lf1/t2;

    .line 7
    .line 8
    iget-object v0, p0, Lf1/t2;->i:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Landroid/content/ContentResolver;

    .line 12
    .line 13
    iget-object v0, p0, Lf1/t2;->j:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Landroid/net/Uri;

    .line 17
    .line 18
    iget-object v0, p0, Lf1/t2;->k:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v4, v0

    .line 21
    check-cast v4, Lr2/b3;

    .line 22
    .line 23
    iget-object v0, p0, Lf1/t2;->l:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v5, v0

    .line 26
    check-cast v5, Lcc/h;

    .line 27
    .line 28
    iget-object v0, p0, Lf1/t2;->m:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v6, v0

    .line 31
    check-cast v6, Landroid/content/Context;

    .line 32
    .line 33
    move-object v7, p2

    .line 34
    invoke-direct/range {v1 .. v7}, Lf1/t2;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lr2/b3;Lcc/h;Landroid/content/Context;Lw8/c;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 38
    .line 39
    return-object v1

    .line 40
    :pswitch_0
    move-object v7, p2

    .line 41
    new-instance p2, Lf1/t2;

    .line 42
    .line 43
    iget-object v0, p0, Lf1/t2;->m:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lf9/a;

    .line 46
    .line 47
    invoke-direct {p2, v0, v7}, Lf1/t2;-><init>(Lf9/a;Lw8/c;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p2, Lf1/t2;->l:Ljava/lang/Object;

    .line 51
    .line 52
    return-object p2

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lf1/t2;->e:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lf1/t2;->k:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Lr2/b3;

    .line 12
    .line 13
    iget-object v0, v1, Lf1/t2;->i:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Landroid/content/ContentResolver;

    .line 17
    .line 18
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 19
    .line 20
    iget v4, v1, Lf1/t2;->f:I

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x1

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    if-eq v4, v6, :cond_1

    .line 27
    .line 28
    if-ne v4, v5, :cond_0

    .line 29
    .line 30
    iget-object v4, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Lcc/c;

    .line 33
    .line 34
    iget-object v7, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v7, Ldc/e;

    .line 37
    .line 38
    :try_start_0
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    move-object v8, v4

    .line 42
    move-object v4, v7

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    iget-object v4, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lcc/c;

    .line 58
    .line 59
    iget-object v7, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Ldc/e;

    .line 62
    .line 63
    :try_start_1
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    move-object v8, v7

    .line 67
    move-object/from16 v7, p1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v4, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Ldc/e;

    .line 76
    .line 77
    iget-object v7, v1, Lf1/t2;->j:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v7, Landroid/net/Uri;

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    invoke-virtual {v3, v7, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    .line 84
    .line 85
    :try_start_2
    iget-object v7, v1, Lf1/t2;->l:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v7, Lcc/h;

    .line 88
    .line 89
    new-instance v8, Lcc/c;

    .line 90
    .line 91
    invoke-direct {v8, v7}, Lcc/c;-><init>(Lcc/h;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iput-object v4, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object v8, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 97
    .line 98
    iput v6, v1, Lf1/t2;->f:I

    .line 99
    .line 100
    invoke-virtual {v8, v1}, Lcc/c;->b(Ly8/c;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    if-ne v7, v0, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move-object/from16 v24, v8

    .line 108
    .line 109
    move-object v8, v4

    .line 110
    move-object/from16 v4, v24

    .line 111
    .line 112
    :goto_1
    check-cast v7, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_5

    .line 119
    .line 120
    invoke-virtual {v4}, Lcc/c;->c()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    iget-object v7, v1, Lf1/t2;->m:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v7, Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const-string v9, "animator_duration_scale"

    .line 132
    .line 133
    const/high16 v10, 0x3f800000    # 1.0f

    .line 134
    .line 135
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    new-instance v9, Ljava/lang/Float;

    .line 140
    .line 141
    invoke-direct {v9, v7}, Ljava/lang/Float;-><init>(F)V

    .line 142
    .line 143
    .line 144
    iput-object v8, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v4, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 147
    .line 148
    iput v5, v1, Lf1/t2;->f:I

    .line 149
    .line 150
    invoke-interface {v8, v9, v1}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    if-ne v7, v0, :cond_4

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    move-object/from16 v24, v8

    .line 158
    .line 159
    move-object v8, v4

    .line 160
    move-object/from16 v4, v24

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_5
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 167
    .line 168
    :goto_2
    return-object v0

    .line 169
    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :pswitch_0
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 174
    .line 175
    iget v2, v1, Lf1/t2;->f:I

    .line 176
    .line 177
    const/4 v3, 0x3

    .line 178
    const/4 v4, 0x2

    .line 179
    const/4 v5, 0x1

    .line 180
    if-eqz v2, :cond_9

    .line 181
    .line 182
    if-eq v2, v5, :cond_8

    .line 183
    .line 184
    if-eq v2, v4, :cond_7

    .line 185
    .line 186
    if-ne v2, v3, :cond_6

    .line 187
    .line 188
    iget-object v2, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 189
    .line 190
    iget-object v6, v1, Lf1/t2;->k:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v6, Lg4/e;

    .line 193
    .line 194
    iget-object v7, v1, Lf1/t2;->j:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v7, Lcc/l;

    .line 197
    .line 198
    iget-object v8, v1, Lf1/t2;->i:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v8, Lf9/k;

    .line 201
    .line 202
    iget-object v9, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v9, Ls/i0;

    .line 205
    .line 206
    iget-object v10, v1, Lf1/t2;->l:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v10, Ldc/e;

    .line 209
    .line 210
    :try_start_3
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    .line 212
    .line 213
    goto/16 :goto_d

    .line 214
    .line 215
    :catchall_1
    move-exception v0

    .line 216
    goto/16 :goto_10

    .line 217
    .line 218
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 219
    .line 220
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 221
    .line 222
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :cond_7
    iget-object v2, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 227
    .line 228
    iget-object v6, v1, Lf1/t2;->k:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v6, Lg4/e;

    .line 231
    .line 232
    iget-object v7, v1, Lf1/t2;->j:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v7, Lcc/l;

    .line 235
    .line 236
    iget-object v8, v1, Lf1/t2;->i:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v8, Lf9/k;

    .line 239
    .line 240
    iget-object v9, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v9, Ls/i0;

    .line 243
    .line 244
    iget-object v10, v1, Lf1/t2;->l:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v10, Ldc/e;

    .line 247
    .line 248
    :try_start_4
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    .line 250
    .line 251
    move-object/from16 v11, p1

    .line 252
    .line 253
    goto/16 :goto_5

    .line 254
    .line 255
    :cond_8
    iget-object v2, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 256
    .line 257
    iget-object v6, v1, Lf1/t2;->k:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v6, Lg4/e;

    .line 260
    .line 261
    iget-object v7, v1, Lf1/t2;->j:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v7, Lcc/l;

    .line 264
    .line 265
    iget-object v8, v1, Lf1/t2;->i:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v8, Lf9/k;

    .line 268
    .line 269
    iget-object v9, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v9, Ls/i0;

    .line 272
    .line 273
    iget-object v10, v1, Lf1/t2;->l:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v10, Ldc/e;

    .line 276
    .line 277
    :try_start_5
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_9
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v1, Lf1/t2;->l:Ljava/lang/Object;

    .line 285
    .line 286
    move-object v10, v2

    .line 287
    check-cast v10, Ldc/e;

    .line 288
    .line 289
    new-instance v9, Ls/i0;

    .line 290
    .line 291
    invoke-direct {v9}, Ls/i0;-><init>()V

    .line 292
    .line 293
    .line 294
    new-instance v8, La8/q;

    .line 295
    .line 296
    const/16 v2, 0x8

    .line 297
    .line 298
    invoke-direct {v8, v2, v9}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    const v2, 0x7fffffff

    .line 302
    .line 303
    .line 304
    const/4 v6, 0x6

    .line 305
    const/4 v7, 0x0

    .line 306
    invoke-static {v2, v6, v7}, Li2/c;->a(IILcc/a;)Lcc/h;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    new-instance v2, La8/d;

    .line 311
    .line 312
    const/16 v6, 0xc

    .line 313
    .line 314
    invoke-direct {v2, v6, v7}, La8/d;-><init>(ILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    sget-object v6, Lp1/l;->a:Lm7/j;

    .line 318
    .line 319
    invoke-static {v6}, Lp1/l;->f(Lf9/k;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    sget-object v6, Lp1/l;->c:Ljava/lang/Object;

    .line 323
    .line 324
    monitor-enter v6

    .line 325
    :try_start_6
    sget-object v11, Lp1/l;->h:Ljava/lang/Object;

    .line 326
    .line 327
    invoke-static {v11, v2}, Ls8/p;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    sput-object v11, Lp1/l;->h:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 332
    .line 333
    monitor-exit v6

    .line 334
    new-instance v6, Lg4/e;

    .line 335
    .line 336
    invoke-direct {v6, v2}, Lg4/e;-><init>(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    :try_start_7
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v2, v8}, Lp1/f;->u(Lf9/k;)Lp1/f;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    iget-object v11, v1, Lf1/t2;->m:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v11, Lf9/a;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 350
    .line 351
    :try_start_8
    invoke-virtual {v2}, Lp1/f;->j()Lp1/f;

    .line 352
    .line 353
    .line 354
    move-result-object v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 355
    :try_start_9
    invoke-interface {v11}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 359
    :try_start_a
    invoke-static {v12}, Lp1/f;->q(Lp1/f;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 360
    .line 361
    .line 362
    :try_start_b
    invoke-virtual {v2}, Lp1/f;->c()V

    .line 363
    .line 364
    .line 365
    iput-object v10, v1, Lf1/t2;->l:Ljava/lang/Object;

    .line 366
    .line 367
    iput-object v9, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 368
    .line 369
    iput-object v8, v1, Lf1/t2;->i:Ljava/lang/Object;

    .line 370
    .line 371
    iput-object v7, v1, Lf1/t2;->j:Ljava/lang/Object;

    .line 372
    .line 373
    iput-object v6, v1, Lf1/t2;->k:Ljava/lang/Object;

    .line 374
    .line 375
    iput-object v11, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 376
    .line 377
    iput v5, v1, Lf1/t2;->f:I

    .line 378
    .line 379
    invoke-interface {v10, v11, v1}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    if-ne v2, v0, :cond_a

    .line 384
    .line 385
    goto/16 :goto_c

    .line 386
    .line 387
    :cond_a
    move-object v2, v11

    .line 388
    :goto_4
    iput-object v10, v1, Lf1/t2;->l:Ljava/lang/Object;

    .line 389
    .line 390
    iput-object v9, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 391
    .line 392
    iput-object v8, v1, Lf1/t2;->i:Ljava/lang/Object;

    .line 393
    .line 394
    iput-object v7, v1, Lf1/t2;->j:Ljava/lang/Object;

    .line 395
    .line 396
    iput-object v6, v1, Lf1/t2;->k:Ljava/lang/Object;

    .line 397
    .line 398
    iput-object v2, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 399
    .line 400
    iput v4, v1, Lf1/t2;->f:I

    .line 401
    .line 402
    invoke-interface {v7, v1}, Lcc/w;->t(Lw8/c;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v11

    .line 406
    if-ne v11, v0, :cond_b

    .line 407
    .line 408
    goto/16 :goto_c

    .line 409
    .line 410
    :cond_b
    :goto_5
    check-cast v11, Ljava/util/Set;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 411
    .line 412
    const/4 v13, 0x0

    .line 413
    :goto_6
    if-nez v13, :cond_12

    .line 414
    .line 415
    :try_start_c
    iget-object v13, v9, Ls/i0;->b:[Ljava/lang/Object;

    .line 416
    .line 417
    iget-object v14, v9, Ls/i0;->a:[J

    .line 418
    .line 419
    array-length v15, v14

    .line 420
    sub-int/2addr v15, v4

    .line 421
    if-ltz v15, :cond_10

    .line 422
    .line 423
    move-object/from16 v16, v13

    .line 424
    .line 425
    const/4 v4, 0x0

    .line 426
    :goto_7
    aget-wide v12, v14, v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 427
    .line 428
    move-object/from16 v17, v6

    .line 429
    .line 430
    not-long v5, v12

    .line 431
    const/16 v18, 0x7

    .line 432
    .line 433
    shl-long v5, v5, v18

    .line 434
    .line 435
    and-long/2addr v5, v12

    .line 436
    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    and-long v5, v5, v18

    .line 442
    .line 443
    cmp-long v20, v5, v18

    .line 444
    .line 445
    if-eqz v20, :cond_f

    .line 446
    .line 447
    sub-int v5, v4, v15

    .line 448
    .line 449
    not-int v5, v5

    .line 450
    ushr-int/lit8 v5, v5, 0x1f

    .line 451
    .line 452
    const/16 v6, 0x8

    .line 453
    .line 454
    rsub-int/lit8 v5, v5, 0x8

    .line 455
    .line 456
    const/4 v3, 0x0

    .line 457
    :goto_8
    if-ge v3, v5, :cond_e

    .line 458
    .line 459
    const-wide/16 v19, 0xff

    .line 460
    .line 461
    and-long v19, v12, v19

    .line 462
    .line 463
    const-wide/16 v21, 0x80

    .line 464
    .line 465
    cmp-long v23, v19, v21

    .line 466
    .line 467
    if-gez v23, :cond_c

    .line 468
    .line 469
    shl-int/lit8 v19, v4, 0x3

    .line 470
    .line 471
    add-int v19, v19, v3

    .line 472
    .line 473
    const/16 v20, 0x8

    .line 474
    .line 475
    :try_start_d
    aget-object v6, v16, v19

    .line 476
    .line 477
    invoke-interface {v11, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    if-eqz v6, :cond_d

    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_c
    const/16 v20, 0x8

    .line 485
    .line 486
    :cond_d
    shr-long v12, v12, v20

    .line 487
    .line 488
    add-int/lit8 v3, v3, 0x1

    .line 489
    .line 490
    const/16 v6, 0x8

    .line 491
    .line 492
    goto :goto_8

    .line 493
    :cond_e
    const/16 v3, 0x8

    .line 494
    .line 495
    if-ne v5, v3, :cond_11

    .line 496
    .line 497
    :cond_f
    if-eq v4, v15, :cond_11

    .line 498
    .line 499
    add-int/lit8 v4, v4, 0x1

    .line 500
    .line 501
    move-object/from16 v6, v17

    .line 502
    .line 503
    const/4 v3, 0x3

    .line 504
    const/4 v5, 0x1

    .line 505
    goto :goto_7

    .line 506
    :cond_10
    move-object/from16 v17, v6

    .line 507
    .line 508
    :cond_11
    const/4 v13, 0x0

    .line 509
    goto :goto_b

    .line 510
    :catchall_2
    move-exception v0

    .line 511
    move-object/from16 v17, v6

    .line 512
    .line 513
    :goto_9
    move-object/from16 v6, v17

    .line 514
    .line 515
    goto/16 :goto_10

    .line 516
    .line 517
    :cond_12
    move-object/from16 v17, v6

    .line 518
    .line 519
    :goto_a
    const/4 v13, 0x1

    .line 520
    :goto_b
    invoke-interface {v7}, Lcc/w;->j()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-static {v3}, Lcc/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    move-object v11, v3

    .line 529
    check-cast v11, Ljava/util/Set;

    .line 530
    .line 531
    if-nez v11, :cond_15

    .line 532
    .line 533
    if-eqz v13, :cond_14

    .line 534
    .line 535
    invoke-virtual {v9}, Ls/i0;->b()V

    .line 536
    .line 537
    .line 538
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    invoke-virtual {v3, v8}, Lp1/f;->u(Lf9/k;)Lp1/f;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    iget-object v4, v1, Lf1/t2;->m:Ljava/lang/Object;

    .line 547
    .line 548
    check-cast v4, Lf9/a;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 549
    .line 550
    :try_start_e
    invoke-virtual {v3}, Lp1/f;->j()Lp1/f;

    .line 551
    .line 552
    .line 553
    move-result-object v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 554
    :try_start_f
    invoke-interface {v4}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 558
    :try_start_10
    invoke-static {v5}, Lp1/f;->q(Lp1/f;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 559
    .line 560
    .line 561
    :try_start_11
    invoke-virtual {v3}, Lp1/f;->c()V

    .line 562
    .line 563
    .line 564
    invoke-static {v4, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    if-nez v3, :cond_14

    .line 569
    .line 570
    iput-object v10, v1, Lf1/t2;->l:Ljava/lang/Object;

    .line 571
    .line 572
    iput-object v9, v1, Lf1/t2;->h:Ljava/lang/Object;

    .line 573
    .line 574
    iput-object v8, v1, Lf1/t2;->i:Ljava/lang/Object;

    .line 575
    .line 576
    iput-object v7, v1, Lf1/t2;->j:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 577
    .line 578
    move-object/from16 v6, v17

    .line 579
    .line 580
    :try_start_12
    iput-object v6, v1, Lf1/t2;->k:Ljava/lang/Object;

    .line 581
    .line 582
    iput-object v4, v1, Lf1/t2;->g:Ljava/lang/Object;

    .line 583
    .line 584
    const/4 v3, 0x3

    .line 585
    iput v3, v1, Lf1/t2;->f:I

    .line 586
    .line 587
    invoke-interface {v10, v4, v1}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 591
    if-ne v2, v0, :cond_13

    .line 592
    .line 593
    :goto_c
    return-object v0

    .line 594
    :cond_13
    move-object v2, v4

    .line 595
    :goto_d
    const/4 v4, 0x2

    .line 596
    const/4 v5, 0x1

    .line 597
    goto/16 :goto_4

    .line 598
    .line 599
    :catchall_3
    move-exception v0

    .line 600
    goto :goto_9

    .line 601
    :cond_14
    move-object/from16 v6, v17

    .line 602
    .line 603
    const/4 v3, 0x3

    .line 604
    goto :goto_d

    .line 605
    :catchall_4
    move-exception v0

    .line 606
    move-object/from16 v6, v17

    .line 607
    .line 608
    goto :goto_e

    .line 609
    :catchall_5
    move-exception v0

    .line 610
    move-object/from16 v6, v17

    .line 611
    .line 612
    :try_start_13
    invoke-static {v5}, Lp1/f;->q(Lp1/f;)V

    .line 613
    .line 614
    .line 615
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 616
    :catchall_6
    move-exception v0

    .line 617
    :goto_e
    :try_start_14
    invoke-virtual {v3}, Lp1/f;->c()V

    .line 618
    .line 619
    .line 620
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 621
    :cond_15
    move-object/from16 v6, v17

    .line 622
    .line 623
    const/4 v3, 0x3

    .line 624
    const/4 v4, 0x2

    .line 625
    const/4 v5, 0x1

    .line 626
    goto/16 :goto_6

    .line 627
    .line 628
    :catchall_7
    move-exception v0

    .line 629
    goto :goto_f

    .line 630
    :catchall_8
    move-exception v0

    .line 631
    :try_start_15
    invoke-static {v12}, Lp1/f;->q(Lp1/f;)V

    .line 632
    .line 633
    .line 634
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 635
    :goto_f
    :try_start_16
    invoke-virtual {v2}, Lp1/f;->c()V

    .line 636
    .line 637
    .line 638
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 639
    :goto_10
    invoke-virtual {v6}, Lg4/e;->a()V

    .line 640
    .line 641
    .line 642
    throw v0

    .line 643
    :catchall_9
    move-exception v0

    .line 644
    monitor-exit v6

    .line 645
    throw v0

    .line 646
    nop

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
