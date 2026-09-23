.class public final Lv7/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/v2;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lf1/v2;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv7/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv7/k;->b:Lf1/v2;

    .line 4
    .line 5
    iput-object p2, p0, Lv7/k;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final a(Landroid/hardware/display/DisplayManager;I)Lr8/j;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "getDisplays(...)"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    array-length v0, p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    aget-object v2, p0, v1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v3, p1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    :goto_1
    if-eqz v2, :cond_3

    .line 28
    .line 29
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 p1, 0x17

    .line 32
    .line 33
    if-lt p0, p1, :cond_2

    .line 34
    .line 35
    invoke-static {v2}, Ls1/g;->c(Landroid/view/Display;)Landroid/view/Display$Mode;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ls1/g;->a(Landroid/view/Display$Mode;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v2}, Ls1/g;->c(Landroid/view/Display;)Landroid/view/Display$Mode;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Ls1/g;->l(Landroid/view/Display$Mode;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v0, Lr8/j;

    .line 60
    .line 61
    invoke-direct {v0, p0, p1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v0, Lr8/j;

    .line 82
    .line 83
    invoke-direct {v0, p0, p1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_3
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public static final d(Landroid/hardware/display/DisplayManager;I)Lr8/j;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "getDisplays(...)"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    array-length v0, p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    aget-object v2, p0, v1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v3, p1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    :goto_1
    if-eqz v2, :cond_3

    .line 28
    .line 29
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 p1, 0x17

    .line 32
    .line 33
    if-lt p0, p1, :cond_2

    .line 34
    .line 35
    invoke-static {v2}, Ls1/g;->c(Landroid/view/Display;)Landroid/view/Display$Mode;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ls1/g;->a(Landroid/view/Display$Mode;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v2}, Ls1/g;->c(Landroid/view/Display;)Landroid/view/Display$Mode;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Ls1/g;->l(Landroid/view/Display$Mode;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v0, Lr8/j;

    .line 60
    .line 61
    invoke-direct {v0, p0, p1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v0, Lr8/j;

    .line 82
    .line 83
    invoke-direct {v0, p0, p1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_3
    invoke-static {}, Ll8/g;->g()Lr8/j;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv7/k;->a:I

    .line 4
    .line 5
    const-string v2, "\u9009\u62e9\u6295\u5c4f\u7c7b\u578b"

    .line 6
    .line 7
    const-string v3, "\u7c7b\u578b"

    .line 8
    .line 9
    const-string v5, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    .line 10
    .line 11
    const-string v6, "display"

    .line 12
    .line 13
    const-string v8, "px"

    .line 14
    .line 15
    const-string v10, "getDisplays(...)"

    .line 16
    .line 17
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 18
    .line 19
    const/16 v12, 0x30

    .line 20
    .line 21
    iget-object v13, v0, Lv7/k;->b:Lf1/v2;

    .line 22
    .line 23
    sget-object v16, Lr8/z;->a:Lr8/z;

    .line 24
    .line 25
    const/16 v17, 0x5

    .line 26
    .line 27
    iget-object v14, v0, Lv7/k;->c:Ljava/util/List;

    .line 28
    .line 29
    const/16 v18, 0x4

    .line 30
    .line 31
    const/4 v15, 0x0

    .line 32
    const/16 v19, 0x3

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    const/16 v20, 0x0

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    packed-switch v1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    check-cast v1, Lf1/s;

    .line 44
    .line 45
    move-object/from16 v2, p2

    .line 46
    .line 47
    check-cast v2, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    and-int/lit8 v2, v2, 0x3

    .line 54
    .line 55
    if-ne v2, v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    new-instance v2, Lv7/k;

    .line 69
    .line 70
    invoke-direct {v2, v13, v14, v4}, Lv7/k;-><init>(Lf1/v2;Ljava/util/List;I)V

    .line 71
    .line 72
    .line 73
    const v3, -0xfadabfc

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v15, v2, v1, v12, v9}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-object v16

    .line 84
    :pswitch_0
    move-object/from16 v1, p1

    .line 85
    .line 86
    check-cast v1, Lf1/s;

    .line 87
    .line 88
    move-object/from16 v12, p2

    .line 89
    .line 90
    check-cast v12, Ljava/lang/Number;

    .line 91
    .line 92
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    and-int/lit8 v12, v12, 0x3

    .line 101
    .line 102
    if-ne v12, v4, :cond_3

    .line 103
    .line 104
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    if-nez v12, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_3
    :goto_2
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-virtual {v12, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-static {v6, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 128
    .line 129
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v5, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    array-length v12, v5

    .line 137
    move-object/from16 v21, v15

    .line 138
    .line 139
    const/4 v15, 0x0

    .line 140
    const/16 v28, 0x2

    .line 141
    .line 142
    :goto_3
    iget-object v4, v0, Lv7/k;->b:Lf1/v2;

    .line 143
    .line 144
    if-ge v15, v12, :cond_5

    .line 145
    .line 146
    aget-object v22, v5, v15

    .line 147
    .line 148
    const/16 v29, 0x1

    .line 149
    .line 150
    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getDisplayId()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v23

    .line 158
    move-object/from16 v7, v23

    .line 159
    .line 160
    check-cast v7, Lv7/m;

    .line 161
    .line 162
    iget v7, v7, Lv7/m;->a:I

    .line 163
    .line 164
    if-ne v9, v7, :cond_4

    .line 165
    .line 166
    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getDisplayId()I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_4

    .line 171
    .line 172
    move-object/from16 v5, v22

    .line 173
    .line 174
    :goto_4
    const v7, 0x6e3c21fe

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 179
    .line 180
    const/4 v9, 0x1

    .line 181
    goto :goto_3

    .line 182
    :cond_5
    const/16 v29, 0x1

    .line 183
    .line 184
    move-object/from16 v5, v21

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :goto_5
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    if-ne v9, v11, :cond_6

    .line 195
    .line 196
    invoke-static/range {v21 .. v21}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-virtual {v1, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_6
    move-object/from16 v24, v9

    .line 204
    .line 205
    check-cast v24, Lf1/b1;

    .line 206
    .line 207
    const/4 v9, 0x0

    .line 208
    invoke-static {v1, v9, v7}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    if-ne v12, v11, :cond_7

    .line 213
    .line 214
    invoke-static/range {v21 .. v21}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-virtual {v1, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_7
    move-object/from16 v25, v12

    .line 222
    .line 223
    check-cast v25, Lf1/b1;

    .line 224
    .line 225
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    check-cast v7, Lv7/m;

    .line 233
    .line 234
    iget v7, v7, Lv7/m;->b:I

    .line 235
    .line 236
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    check-cast v9, Lv7/m;

    .line 245
    .line 246
    iget v9, v9, Lv7/m;->c:I

    .line 247
    .line 248
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    check-cast v12, Lv7/m;

    .line 257
    .line 258
    iget v12, v12, Lv7/m;->d:I

    .line 259
    .line 260
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v15

    .line 268
    check-cast v15, Lv7/m;

    .line 269
    .line 270
    iget v15, v15, Lv7/m;->e:I

    .line 271
    .line 272
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v21

    .line 280
    move-object/from16 p1, v7

    .line 281
    .line 282
    move-object/from16 v7, v21

    .line 283
    .line 284
    check-cast v7, Lv7/m;

    .line 285
    .line 286
    iget v7, v7, Lv7/m;->f:I

    .line 287
    .line 288
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    move-object/from16 p2, v7

    .line 293
    .line 294
    move-object/from16 v21, v9

    .line 295
    .line 296
    const/4 v7, 0x6

    .line 297
    new-array v9, v7, [Ljava/lang/Object;

    .line 298
    .line 299
    const/16 v20, 0x0

    .line 300
    .line 301
    aput-object v5, v9, v20

    .line 302
    .line 303
    aput-object p1, v9, v29

    .line 304
    .line 305
    aput-object v21, v9, v28

    .line 306
    .line 307
    aput-object v12, v9, v19

    .line 308
    .line 309
    aput-object v15, v9, v18

    .line 310
    .line 311
    aput-object p2, v9, v17

    .line 312
    .line 313
    const v7, -0x48fade91

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    invoke-virtual {v1, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    or-int/2addr v7, v12

    .line 328
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v12

    .line 332
    if-nez v7, :cond_8

    .line 333
    .line 334
    if-ne v12, v11, :cond_9

    .line 335
    .line 336
    :cond_8
    new-instance v22, Lv7/i;

    .line 337
    .line 338
    const/16 v27, 0x1

    .line 339
    .line 340
    move-object/from16 v26, v4

    .line 341
    .line 342
    move-object/from16 v23, v5

    .line 343
    .line 344
    invoke-direct/range {v22 .. v27}, Lv7/i;-><init>(Landroid/view/Display;Lf1/b1;Lf1/b1;Lf1/v2;I)V

    .line 345
    .line 346
    .line 347
    move-object/from16 v12, v22

    .line 348
    .line 349
    invoke-virtual {v1, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    :cond_9
    check-cast v12, Lf9/k;

    .line 353
    .line 354
    const/4 v5, 0x0

    .line 355
    invoke-virtual {v1, v5}, Lf1/s;->p(Z)V

    .line 356
    .line 357
    .line 358
    invoke-static {v9, v12, v1}, Lf1/b;->e([Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 359
    .line 360
    .line 361
    sget-object v5, Ld/c;->a:Lf1/c0;

    .line 362
    .line 363
    invoke-virtual {v1, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    check-cast v5, Landroid/app/Activity;

    .line 368
    .line 369
    invoke-static {v14}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    new-instance v9, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object v21

    .line 396
    new-instance v30, Lj8/k0;

    .line 397
    .line 398
    new-instance v2, Lj8/m0;

    .line 399
    .line 400
    const/4 v9, 0x0

    .line 401
    invoke-direct {v2, v9}, Lj8/m0;-><init>(I)V

    .line 402
    .line 403
    .line 404
    const/16 v35, 0x0

    .line 405
    .line 406
    const/16 v36, 0x1c

    .line 407
    .line 408
    const-string v31, "\u666e\u901a"

    .line 409
    .line 410
    const/16 v33, 0x0

    .line 411
    .line 412
    const/16 v34, 0x0

    .line 413
    .line 414
    move-object/from16 v32, v2

    .line 415
    .line 416
    invoke-direct/range {v30 .. v36}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 417
    .line 418
    .line 419
    new-instance v2, Lj8/m0;

    .line 420
    .line 421
    const/4 v3, 0x1

    .line 422
    invoke-direct {v2, v3}, Lj8/m0;-><init>(I)V

    .line 423
    .line 424
    .line 425
    const v3, 0x4c5de2

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v3}, Lf1/s;->W(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    if-nez v3, :cond_b

    .line 440
    .line 441
    if-ne v7, v11, :cond_a

    .line 442
    .line 443
    goto :goto_6

    .line 444
    :cond_a
    const/4 v3, 0x2

    .line 445
    goto :goto_7

    .line 446
    :cond_b
    :goto_6
    new-instance v7, Lk7/g;

    .line 447
    .line 448
    const/4 v3, 0x2

    .line 449
    invoke-direct {v7, v5, v3}, Lk7/g;-><init>(Landroid/app/Activity;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :goto_7
    move-object/from16 v36, v7

    .line 456
    .line 457
    check-cast v36, Lf9/a;

    .line 458
    .line 459
    const/4 v9, 0x0

    .line 460
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 461
    .line 462
    .line 463
    new-instance v31, Lj8/k0;

    .line 464
    .line 465
    const-string v32, "\u60ac\u6d6e"

    .line 466
    .line 467
    const/16 v34, 0x0

    .line 468
    .line 469
    const/16 v35, 0x0

    .line 470
    .line 471
    const/16 v37, 0xc

    .line 472
    .line 473
    move-object/from16 v33, v2

    .line 474
    .line 475
    invoke-direct/range {v31 .. v37}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 476
    .line 477
    .line 478
    new-array v2, v3, [Lj8/k0;

    .line 479
    .line 480
    aput-object v30, v2, v9

    .line 481
    .line 482
    const/16 v29, 0x1

    .line 483
    .line 484
    aput-object v31, v2, v29

    .line 485
    .line 486
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v22

    .line 490
    const v7, 0x6e3c21fe

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    if-ne v2, v11, :cond_c

    .line 501
    .line 502
    new-instance v2, Lv/x0;

    .line 503
    .line 504
    const/16 v3, 0x9

    .line 505
    .line 506
    invoke-direct {v2, v3}, Lv/x0;-><init>(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    :cond_c
    move-object/from16 v26, v2

    .line 513
    .line 514
    check-cast v26, Lf9/k;

    .line 515
    .line 516
    const/4 v9, 0x0

    .line 517
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 518
    .line 519
    .line 520
    const v28, 0x301c0

    .line 521
    .line 522
    .line 523
    const/16 v29, 0x18

    .line 524
    .line 525
    const-string v23, "SECONDARY_SCREEN_TYPE"

    .line 526
    .line 527
    const/16 v24, 0x0

    .line 528
    .line 529
    const/16 v25, 0x0

    .line 530
    .line 531
    move-object/from16 v27, v1

    .line 532
    .line 533
    invoke-static/range {v21 .. v29}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 534
    .line 535
    .line 536
    const-string v2, "\u9009\u62e9\u5c4f\u5e55"

    .line 537
    .line 538
    const-string v3, "\u9009\u62e9\u663e\u793a\u5c4f\u5e55"

    .line 539
    .line 540
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 545
    .line 546
    .line 547
    move-result-object v21

    .line 548
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-static {v2, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    new-instance v3, Ljava/util/ArrayList;

    .line 556
    .line 557
    array-length v5, v2

    .line 558
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 559
    .line 560
    .line 561
    array-length v5, v2

    .line 562
    const/4 v7, 0x0

    .line 563
    :goto_8
    if-ge v7, v5, :cond_d

    .line 564
    .line 565
    aget-object v9, v2, v7

    .line 566
    .line 567
    new-instance v22, Lj8/k0;

    .line 568
    .line 569
    invoke-virtual {v9}, Landroid/view/Display;->getName()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v10

    .line 573
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 574
    .line 575
    .line 576
    move-result v12

    .line 577
    invoke-static {v6, v12}, Lv7/k;->d(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 578
    .line 579
    .line 580
    move-result-object v12

    .line 581
    iget-object v12, v12, Lr8/j;->a:Ljava/lang/Object;

    .line 582
    .line 583
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 584
    .line 585
    .line 586
    move-result v14

    .line 587
    invoke-static {v6, v14}, Lv7/k;->d(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 588
    .line 589
    .line 590
    move-result-object v14

    .line 591
    iget-object v14, v14, Lr8/j;->b:Ljava/lang/Object;

    .line 592
    .line 593
    new-instance v15, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    const-string v10, " "

    .line 602
    .line 603
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    const-string v10, "*"

    .line 610
    .line 611
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v23

    .line 621
    new-instance v10, Lj8/m0;

    .line 622
    .line 623
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 624
    .line 625
    .line 626
    move-result v9

    .line 627
    invoke-direct {v10, v9}, Lj8/m0;-><init>(I)V

    .line 628
    .line 629
    .line 630
    const/16 v27, 0x0

    .line 631
    .line 632
    const/16 v28, 0x1c

    .line 633
    .line 634
    const/16 v25, 0x0

    .line 635
    .line 636
    const/16 v26, 0x0

    .line 637
    .line 638
    move-object/from16 v24, v10

    .line 639
    .line 640
    invoke-direct/range {v22 .. v28}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 641
    .line 642
    .line 643
    move-object/from16 v9, v22

    .line 644
    .line 645
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    add-int/lit8 v7, v7, 0x1

    .line 649
    .line 650
    goto :goto_8

    .line 651
    :cond_d
    const v7, 0x6e3c21fe

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1, v7}, Lf1/s;->W(I)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    if-ne v2, v11, :cond_e

    .line 662
    .line 663
    new-instance v2, Lv/x0;

    .line 664
    .line 665
    const/16 v5, 0xa

    .line 666
    .line 667
    invoke-direct {v2, v5}, Lv/x0;-><init>(I)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    :cond_e
    move-object/from16 v26, v2

    .line 674
    .line 675
    check-cast v26, Lf9/k;

    .line 676
    .line 677
    const/4 v9, 0x0

    .line 678
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 679
    .line 680
    .line 681
    const v28, 0x30186

    .line 682
    .line 683
    .line 684
    const/16 v29, 0x18

    .line 685
    .line 686
    const-string v23, "SECONDARY_SCREEN_ID"

    .line 687
    .line 688
    const/16 v24, 0x0

    .line 689
    .line 690
    const/16 v25, 0x0

    .line 691
    .line 692
    move-object/from16 v27, v1

    .line 693
    .line 694
    move-object/from16 v22, v3

    .line 695
    .line 696
    invoke-static/range {v21 .. v29}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 697
    .line 698
    .line 699
    const-string v2, "\u5bbd\u5ea6"

    .line 700
    .line 701
    filled-new-array {v2, v8}, [Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 706
    .line 707
    .line 708
    move-result-object v21

    .line 709
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    check-cast v2, Lv7/m;

    .line 714
    .line 715
    iget v2, v2, Lv7/m;->c:I

    .line 716
    .line 717
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    new-instance v3, Lr8/j;

    .line 722
    .line 723
    const-string v5, "SECONDARY_SCREEN_WIDTH"

    .line 724
    .line 725
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    check-cast v2, Lv7/m;

    .line 733
    .line 734
    iget v2, v2, Lv7/m;->a:I

    .line 735
    .line 736
    invoke-static {v6, v2}, Lv7/k;->d(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    iget-object v2, v2, Lr8/j;->a:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v2, Ljava/lang/Number;

    .line 743
    .line 744
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    int-to-float v2, v2

    .line 749
    new-instance v5, Ll9/a;

    .line 750
    .line 751
    const/4 v7, 0x0

    .line 752
    invoke-direct {v5, v7, v2}, Ll9/a;-><init>(FF)V

    .line 753
    .line 754
    .line 755
    const v7, 0x6e3c21fe

    .line 756
    .line 757
    .line 758
    invoke-static {v5, v13, v1, v7}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 759
    .line 760
    .line 761
    move-result-object v23

    .line 762
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    if-ne v2, v11, :cond_f

    .line 767
    .line 768
    new-instance v2, Lv/x0;

    .line 769
    .line 770
    const/16 v5, 0xb

    .line 771
    .line 772
    invoke-direct {v2, v5}, Lv/x0;-><init>(I)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 776
    .line 777
    .line 778
    :cond_f
    move-object/from16 v25, v2

    .line 779
    .line 780
    check-cast v25, Lf9/k;

    .line 781
    .line 782
    const/4 v9, 0x0

    .line 783
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 784
    .line 785
    .line 786
    const/16 v27, 0x6006

    .line 787
    .line 788
    const/16 v28, 0x8

    .line 789
    .line 790
    const/16 v24, 0x0

    .line 791
    .line 792
    move-object/from16 v26, v1

    .line 793
    .line 794
    move-object/from16 v22, v3

    .line 795
    .line 796
    invoke-static/range {v21 .. v28}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 797
    .line 798
    .line 799
    const-string v2, "\u9ad8\u5ea6"

    .line 800
    .line 801
    filled-new-array {v2, v8}, [Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 806
    .line 807
    .line 808
    move-result-object v21

    .line 809
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    check-cast v2, Lv7/m;

    .line 814
    .line 815
    iget v2, v2, Lv7/m;->d:I

    .line 816
    .line 817
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    new-instance v3, Lr8/j;

    .line 822
    .line 823
    const-string v5, "SECONDARY_SCREEN_HEIGHT"

    .line 824
    .line 825
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    check-cast v2, Lv7/m;

    .line 833
    .line 834
    iget v2, v2, Lv7/m;->a:I

    .line 835
    .line 836
    invoke-static {v6, v2}, Lv7/k;->d(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 837
    .line 838
    .line 839
    move-result-object v2

    .line 840
    iget-object v2, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 841
    .line 842
    check-cast v2, Ljava/lang/Number;

    .line 843
    .line 844
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    int-to-float v2, v2

    .line 849
    new-instance v5, Ll9/a;

    .line 850
    .line 851
    const/4 v7, 0x0

    .line 852
    invoke-direct {v5, v7, v2}, Ll9/a;-><init>(FF)V

    .line 853
    .line 854
    .line 855
    const v7, 0x6e3c21fe

    .line 856
    .line 857
    .line 858
    invoke-static {v5, v13, v1, v7}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 859
    .line 860
    .line 861
    move-result-object v23

    .line 862
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v2

    .line 866
    if-ne v2, v11, :cond_10

    .line 867
    .line 868
    new-instance v2, Lv/x0;

    .line 869
    .line 870
    const/16 v5, 0xc

    .line 871
    .line 872
    invoke-direct {v2, v5}, Lv/x0;-><init>(I)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 876
    .line 877
    .line 878
    :cond_10
    move-object/from16 v25, v2

    .line 879
    .line 880
    check-cast v25, Lf9/k;

    .line 881
    .line 882
    const/4 v9, 0x0

    .line 883
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 884
    .line 885
    .line 886
    const/16 v27, 0x6006

    .line 887
    .line 888
    const/16 v28, 0x8

    .line 889
    .line 890
    const/16 v24, 0x0

    .line 891
    .line 892
    move-object/from16 v26, v1

    .line 893
    .line 894
    move-object/from16 v22, v3

    .line 895
    .line 896
    invoke-static/range {v21 .. v28}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 897
    .line 898
    .line 899
    const-string v2, "\u5de6\u504f\u79fbX"

    .line 900
    .line 901
    filled-new-array {v2, v8}, [Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 906
    .line 907
    .line 908
    move-result-object v21

    .line 909
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v2

    .line 913
    check-cast v2, Lv7/m;

    .line 914
    .line 915
    iget v2, v2, Lv7/m;->e:I

    .line 916
    .line 917
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 918
    .line 919
    .line 920
    move-result-object v2

    .line 921
    new-instance v3, Lr8/j;

    .line 922
    .line 923
    const-string v5, "SECONDARY_SCREEN_OFFSET_X"

    .line 924
    .line 925
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 926
    .line 927
    .line 928
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    check-cast v2, Lv7/m;

    .line 933
    .line 934
    iget v2, v2, Lv7/m;->a:I

    .line 935
    .line 936
    invoke-static {v6, v2}, Lv7/k;->d(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    iget-object v2, v2, Lr8/j;->a:Ljava/lang/Object;

    .line 941
    .line 942
    check-cast v2, Ljava/lang/Number;

    .line 943
    .line 944
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 945
    .line 946
    .line 947
    move-result v2

    .line 948
    int-to-float v2, v2

    .line 949
    new-instance v5, Ll9/a;

    .line 950
    .line 951
    const/4 v7, 0x0

    .line 952
    invoke-direct {v5, v7, v2}, Ll9/a;-><init>(FF)V

    .line 953
    .line 954
    .line 955
    const v7, 0x6e3c21fe

    .line 956
    .line 957
    .line 958
    invoke-static {v5, v13, v1, v7}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 959
    .line 960
    .line 961
    move-result-object v23

    .line 962
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    if-ne v2, v11, :cond_11

    .line 967
    .line 968
    new-instance v2, Lv/x0;

    .line 969
    .line 970
    const/16 v5, 0xd

    .line 971
    .line 972
    invoke-direct {v2, v5}, Lv/x0;-><init>(I)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 976
    .line 977
    .line 978
    :cond_11
    move-object/from16 v25, v2

    .line 979
    .line 980
    check-cast v25, Lf9/k;

    .line 981
    .line 982
    const/4 v9, 0x0

    .line 983
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 984
    .line 985
    .line 986
    const/16 v27, 0x6006

    .line 987
    .line 988
    const/16 v28, 0x8

    .line 989
    .line 990
    const/16 v24, 0x0

    .line 991
    .line 992
    move-object/from16 v26, v1

    .line 993
    .line 994
    move-object/from16 v22, v3

    .line 995
    .line 996
    invoke-static/range {v21 .. v28}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 997
    .line 998
    .line 999
    const-string v2, "\u4e0a\u504f\u79fbY"

    .line 1000
    .line 1001
    filled-new-array {v2, v8}, [Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v19

    .line 1009
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v2

    .line 1013
    check-cast v2, Lv7/m;

    .line 1014
    .line 1015
    iget v2, v2, Lv7/m;->f:I

    .line 1016
    .line 1017
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    new-instance v3, Lr8/j;

    .line 1022
    .line 1023
    const-string v5, "SECONDARY_SCREEN_OFFSET_Y"

    .line 1024
    .line 1025
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v2

    .line 1032
    check-cast v2, Lv7/m;

    .line 1033
    .line 1034
    iget v2, v2, Lv7/m;->a:I

    .line 1035
    .line 1036
    invoke-static {v6, v2}, Lv7/k;->d(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    iget-object v2, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 1041
    .line 1042
    check-cast v2, Ljava/lang/Number;

    .line 1043
    .line 1044
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1045
    .line 1046
    .line 1047
    move-result v2

    .line 1048
    int-to-float v2, v2

    .line 1049
    new-instance v4, Ll9/a;

    .line 1050
    .line 1051
    const/4 v7, 0x0

    .line 1052
    invoke-direct {v4, v7, v2}, Ll9/a;-><init>(FF)V

    .line 1053
    .line 1054
    .line 1055
    const v7, 0x6e3c21fe

    .line 1056
    .line 1057
    .line 1058
    invoke-static {v4, v13, v1, v7}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v21

    .line 1062
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v2

    .line 1066
    if-ne v2, v11, :cond_12

    .line 1067
    .line 1068
    new-instance v2, Lv/x0;

    .line 1069
    .line 1070
    const/16 v4, 0xe

    .line 1071
    .line 1072
    invoke-direct {v2, v4}, Lv/x0;-><init>(I)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1076
    .line 1077
    .line 1078
    :cond_12
    move-object/from16 v23, v2

    .line 1079
    .line 1080
    check-cast v23, Lf9/k;

    .line 1081
    .line 1082
    const/4 v9, 0x0

    .line 1083
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 1084
    .line 1085
    .line 1086
    const/16 v25, 0x6006

    .line 1087
    .line 1088
    const/16 v26, 0x8

    .line 1089
    .line 1090
    const/16 v22, 0x0

    .line 1091
    .line 1092
    move-object/from16 v24, v1

    .line 1093
    .line 1094
    move-object/from16 v20, v3

    .line 1095
    .line 1096
    invoke-static/range {v19 .. v26}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 1097
    .line 1098
    .line 1099
    const-string v2, "\u91cd\u542fCarLife\u751f\u6548, \u8fde\u63a5\u540e\u663e\u793a(\u6d4b\u8bd5)"

    .line 1100
    .line 1101
    invoke-static {v2}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    const/4 v7, 0x6

    .line 1106
    invoke-static {v2, v1, v7}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 1107
    .line 1108
    .line 1109
    :goto_9
    return-object v16

    .line 1110
    :pswitch_1
    move-object/from16 v21, v15

    .line 1111
    .line 1112
    move-object/from16 v1, p1

    .line 1113
    .line 1114
    check-cast v1, Lf1/s;

    .line 1115
    .line 1116
    move-object/from16 v2, p2

    .line 1117
    .line 1118
    check-cast v2, Ljava/lang/Number;

    .line 1119
    .line 1120
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1121
    .line 1122
    .line 1123
    move-result v2

    .line 1124
    and-int/lit8 v2, v2, 0x3

    .line 1125
    .line 1126
    const/4 v3, 0x2

    .line 1127
    if-ne v2, v3, :cond_14

    .line 1128
    .line 1129
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 1130
    .line 1131
    .line 1132
    move-result v2

    .line 1133
    if-nez v2, :cond_13

    .line 1134
    .line 1135
    goto :goto_a

    .line 1136
    :cond_13
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 1137
    .line 1138
    .line 1139
    goto :goto_b

    .line 1140
    :cond_14
    :goto_a
    new-instance v2, Lv7/k;

    .line 1141
    .line 1142
    const/4 v9, 0x0

    .line 1143
    invoke-direct {v2, v13, v14, v9}, Lv7/k;-><init>(Lf1/v2;Ljava/util/List;I)V

    .line 1144
    .line 1145
    .line 1146
    const v3, 0x31ba81a7

    .line 1147
    .line 1148
    .line 1149
    invoke-static {v3, v2, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v2

    .line 1153
    move-object/from16 v3, v21

    .line 1154
    .line 1155
    const/4 v4, 0x1

    .line 1156
    invoke-static {v3, v2, v1, v12, v4}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 1157
    .line 1158
    .line 1159
    :goto_b
    return-object v16

    .line 1160
    :pswitch_2
    const/4 v9, 0x0

    .line 1161
    move-object/from16 v1, p1

    .line 1162
    .line 1163
    check-cast v1, Lf1/s;

    .line 1164
    .line 1165
    move-object/from16 v4, p2

    .line 1166
    .line 1167
    check-cast v4, Ljava/lang/Number;

    .line 1168
    .line 1169
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 1170
    .line 1171
    .line 1172
    move-result v4

    .line 1173
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v7

    .line 1177
    and-int/lit8 v4, v4, 0x3

    .line 1178
    .line 1179
    const/4 v9, 0x2

    .line 1180
    if-ne v4, v9, :cond_16

    .line 1181
    .line 1182
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v4

    .line 1186
    if-nez v4, :cond_15

    .line 1187
    .line 1188
    goto :goto_c

    .line 1189
    :cond_15
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 1190
    .line 1191
    .line 1192
    goto/16 :goto_14

    .line 1193
    .line 1194
    :cond_16
    :goto_c
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v4

    .line 1202
    invoke-static {v4, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 1206
    .line 1207
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v5

    .line 1211
    invoke-static {v5, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    array-length v6, v5

    .line 1215
    const/4 v9, 0x0

    .line 1216
    :goto_d
    iget-object v12, v0, Lv7/k;->b:Lf1/v2;

    .line 1217
    .line 1218
    if-ge v9, v6, :cond_18

    .line 1219
    .line 1220
    aget-object v13, v5, v9

    .line 1221
    .line 1222
    invoke-virtual {v13}, Landroid/view/Display;->getDisplayId()I

    .line 1223
    .line 1224
    .line 1225
    move-result v15

    .line 1226
    invoke-interface {v12}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v22

    .line 1230
    move-object/from16 v0, v22

    .line 1231
    .line 1232
    check-cast v0, Lv7/m;

    .line 1233
    .line 1234
    iget v0, v0, Lv7/m;->g:I

    .line 1235
    .line 1236
    if-ne v15, v0, :cond_17

    .line 1237
    .line 1238
    invoke-virtual {v13}, Landroid/view/Display;->getDisplayId()I

    .line 1239
    .line 1240
    .line 1241
    move-result v0

    .line 1242
    if-eqz v0, :cond_17

    .line 1243
    .line 1244
    :goto_e
    const v0, 0x6e3c21fe

    .line 1245
    .line 1246
    .line 1247
    goto :goto_f

    .line 1248
    :cond_17
    add-int/lit8 v9, v9, 0x1

    .line 1249
    .line 1250
    move-object/from16 v0, p0

    .line 1251
    .line 1252
    goto :goto_d

    .line 1253
    :cond_18
    const/4 v13, 0x0

    .line 1254
    goto :goto_e

    .line 1255
    :goto_f
    invoke-virtual {v1, v0}, Lf1/s;->W(I)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v5

    .line 1262
    if-ne v5, v11, :cond_19

    .line 1263
    .line 1264
    const/16 v21, 0x0

    .line 1265
    .line 1266
    invoke-static/range {v21 .. v21}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v5

    .line 1270
    invoke-virtual {v1, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1271
    .line 1272
    .line 1273
    goto :goto_10

    .line 1274
    :cond_19
    const/16 v21, 0x0

    .line 1275
    .line 1276
    :goto_10
    move-object/from16 v24, v5

    .line 1277
    .line 1278
    check-cast v24, Lf1/b1;

    .line 1279
    .line 1280
    const/4 v9, 0x0

    .line 1281
    invoke-static {v1, v9, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v5

    .line 1285
    if-ne v5, v11, :cond_1a

    .line 1286
    .line 1287
    invoke-static/range {v21 .. v21}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v5

    .line 1291
    invoke-virtual {v1, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1292
    .line 1293
    .line 1294
    :cond_1a
    move-object/from16 v25, v5

    .line 1295
    .line 1296
    check-cast v25, Lf1/b1;

    .line 1297
    .line 1298
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 1299
    .line 1300
    .line 1301
    invoke-interface {v12}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v0

    .line 1305
    check-cast v0, Lv7/m;

    .line 1306
    .line 1307
    iget v0, v0, Lv7/m;->h:I

    .line 1308
    .line 1309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    invoke-interface {v12}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v5

    .line 1317
    check-cast v5, Lv7/m;

    .line 1318
    .line 1319
    iget v5, v5, Lv7/m;->i:I

    .line 1320
    .line 1321
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v5

    .line 1325
    invoke-interface {v12}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v6

    .line 1329
    check-cast v6, Lv7/m;

    .line 1330
    .line 1331
    iget v6, v6, Lv7/m;->j:I

    .line 1332
    .line 1333
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v6

    .line 1337
    invoke-interface {v12}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v9

    .line 1341
    check-cast v9, Lv7/m;

    .line 1342
    .line 1343
    iget v9, v9, Lv7/m;->k:I

    .line 1344
    .line 1345
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v9

    .line 1349
    invoke-interface {v12}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v15

    .line 1353
    check-cast v15, Lv7/m;

    .line 1354
    .line 1355
    iget v15, v15, Lv7/m;->l:I

    .line 1356
    .line 1357
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v15

    .line 1361
    move-object/from16 p1, v0

    .line 1362
    .line 1363
    move-object/from16 p2, v5

    .line 1364
    .line 1365
    const/4 v0, 0x6

    .line 1366
    new-array v5, v0, [Ljava/lang/Object;

    .line 1367
    .line 1368
    const/16 v20, 0x0

    .line 1369
    .line 1370
    aput-object v13, v5, v20

    .line 1371
    .line 1372
    const/16 v29, 0x1

    .line 1373
    .line 1374
    aput-object p1, v5, v29

    .line 1375
    .line 1376
    const/16 v28, 0x2

    .line 1377
    .line 1378
    aput-object p2, v5, v28

    .line 1379
    .line 1380
    aput-object v6, v5, v19

    .line 1381
    .line 1382
    aput-object v9, v5, v18

    .line 1383
    .line 1384
    aput-object v15, v5, v17

    .line 1385
    .line 1386
    const v0, -0x48fade91

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v1, v0}, Lf1/s;->W(I)V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v1, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    move-result v0

    .line 1396
    invoke-virtual {v1, v13}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 1397
    .line 1398
    .line 1399
    move-result v6

    .line 1400
    or-int/2addr v0, v6

    .line 1401
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v6

    .line 1405
    if-nez v0, :cond_1c

    .line 1406
    .line 1407
    if-ne v6, v11, :cond_1b

    .line 1408
    .line 1409
    goto :goto_11

    .line 1410
    :cond_1b
    move-object v0, v12

    .line 1411
    goto :goto_12

    .line 1412
    :cond_1c
    :goto_11
    new-instance v22, Lv7/i;

    .line 1413
    .line 1414
    const/16 v27, 0x0

    .line 1415
    .line 1416
    move-object/from16 v26, v12

    .line 1417
    .line 1418
    move-object/from16 v23, v13

    .line 1419
    .line 1420
    invoke-direct/range {v22 .. v27}, Lv7/i;-><init>(Landroid/view/Display;Lf1/b1;Lf1/b1;Lf1/v2;I)V

    .line 1421
    .line 1422
    .line 1423
    move-object/from16 v6, v22

    .line 1424
    .line 1425
    move-object/from16 v0, v26

    .line 1426
    .line 1427
    invoke-virtual {v1, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1428
    .line 1429
    .line 1430
    :goto_12
    check-cast v6, Lf9/k;

    .line 1431
    .line 1432
    const/4 v9, 0x0

    .line 1433
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 1434
    .line 1435
    .line 1436
    invoke-static {v5, v6, v1}, Lf1/b;->e([Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 1437
    .line 1438
    .line 1439
    sget-object v5, Ld/c;->a:Lf1/c0;

    .line 1440
    .line 1441
    invoke-virtual {v1, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v5

    .line 1445
    check-cast v5, Landroid/app/Activity;

    .line 1446
    .line 1447
    invoke-static {v14}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v6

    .line 1451
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v3

    .line 1466
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v2

    .line 1470
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v21

    .line 1474
    new-instance v30, Lj8/k0;

    .line 1475
    .line 1476
    new-instance v2, Lj8/m0;

    .line 1477
    .line 1478
    const/4 v9, 0x0

    .line 1479
    invoke-direct {v2, v9}, Lj8/m0;-><init>(I)V

    .line 1480
    .line 1481
    .line 1482
    const/16 v35, 0x0

    .line 1483
    .line 1484
    const/16 v36, 0x1c

    .line 1485
    .line 1486
    const-string v31, "\u666e\u901a"

    .line 1487
    .line 1488
    const/16 v33, 0x0

    .line 1489
    .line 1490
    const/16 v34, 0x0

    .line 1491
    .line 1492
    move-object/from16 v32, v2

    .line 1493
    .line 1494
    invoke-direct/range {v30 .. v36}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1495
    .line 1496
    .line 1497
    new-instance v2, Lj8/m0;

    .line 1498
    .line 1499
    const/4 v3, 0x1

    .line 1500
    invoke-direct {v2, v3}, Lj8/m0;-><init>(I)V

    .line 1501
    .line 1502
    .line 1503
    const v6, 0x4c5de2

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v1, v6}, Lf1/s;->W(I)V

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v1, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v6

    .line 1513
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v9

    .line 1517
    if-nez v6, :cond_1d

    .line 1518
    .line 1519
    if-ne v9, v11, :cond_1e

    .line 1520
    .line 1521
    :cond_1d
    new-instance v9, Lk7/g;

    .line 1522
    .line 1523
    invoke-direct {v9, v5, v3}, Lk7/g;-><init>(Landroid/app/Activity;I)V

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {v1, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1527
    .line 1528
    .line 1529
    :cond_1e
    move-object/from16 v36, v9

    .line 1530
    .line 1531
    check-cast v36, Lf9/a;

    .line 1532
    .line 1533
    const/4 v9, 0x0

    .line 1534
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 1535
    .line 1536
    .line 1537
    new-instance v31, Lj8/k0;

    .line 1538
    .line 1539
    const-string v32, "\u60ac\u6d6e"

    .line 1540
    .line 1541
    const/16 v34, 0x0

    .line 1542
    .line 1543
    const/16 v35, 0x0

    .line 1544
    .line 1545
    const/16 v37, 0xc

    .line 1546
    .line 1547
    move-object/from16 v33, v2

    .line 1548
    .line 1549
    invoke-direct/range {v31 .. v37}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1550
    .line 1551
    .line 1552
    const/4 v3, 0x2

    .line 1553
    new-array v2, v3, [Lj8/k0;

    .line 1554
    .line 1555
    aput-object v30, v2, v9

    .line 1556
    .line 1557
    const/16 v29, 0x1

    .line 1558
    .line 1559
    aput-object v31, v2, v29

    .line 1560
    .line 1561
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v22

    .line 1565
    const v2, 0x6e3c21fe

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v2

    .line 1575
    if-ne v2, v11, :cond_1f

    .line 1576
    .line 1577
    new-instance v2, Lv/x0;

    .line 1578
    .line 1579
    const/4 v3, 0x4

    .line 1580
    invoke-direct {v2, v3}, Lv/x0;-><init>(I)V

    .line 1581
    .line 1582
    .line 1583
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1584
    .line 1585
    .line 1586
    :cond_1f
    move-object/from16 v26, v2

    .line 1587
    .line 1588
    check-cast v26, Lf9/k;

    .line 1589
    .line 1590
    const/4 v9, 0x0

    .line 1591
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 1592
    .line 1593
    .line 1594
    const v28, 0x301c0

    .line 1595
    .line 1596
    .line 1597
    const/16 v29, 0x18

    .line 1598
    .line 1599
    const-string v23, "SECONDARY_HUD_TYPE"

    .line 1600
    .line 1601
    const/16 v24, 0x0

    .line 1602
    .line 1603
    const/16 v25, 0x0

    .line 1604
    .line 1605
    move-object/from16 v27, v1

    .line 1606
    .line 1607
    invoke-static/range {v21 .. v29}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 1608
    .line 1609
    .line 1610
    const-string v2, "\u9009\u62e9\u5c4f\u5e55"

    .line 1611
    .line 1612
    const-string v3, "\u9009\u62e9\u663e\u793a\u5c4f\u5e55"

    .line 1613
    .line 1614
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v2

    .line 1618
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v21

    .line 1622
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v2

    .line 1626
    invoke-static {v2, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    .line 1628
    .line 1629
    new-instance v3, Ljava/util/ArrayList;

    .line 1630
    .line 1631
    array-length v5, v2

    .line 1632
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1633
    .line 1634
    .line 1635
    array-length v5, v2

    .line 1636
    const/4 v6, 0x0

    .line 1637
    :goto_13
    if-ge v6, v5, :cond_20

    .line 1638
    .line 1639
    aget-object v9, v2, v6

    .line 1640
    .line 1641
    new-instance v22, Lj8/k0;

    .line 1642
    .line 1643
    invoke-virtual {v9}, Landroid/view/Display;->getName()Ljava/lang/String;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v10

    .line 1647
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 1648
    .line 1649
    .line 1650
    move-result v12

    .line 1651
    invoke-static {v4, v12}, Lv7/k;->a(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v12

    .line 1655
    iget-object v12, v12, Lr8/j;->a:Ljava/lang/Object;

    .line 1656
    .line 1657
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 1658
    .line 1659
    .line 1660
    move-result v13

    .line 1661
    invoke-static {v4, v13}, Lv7/k;->a(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v13

    .line 1665
    iget-object v13, v13, Lr8/j;->b:Ljava/lang/Object;

    .line 1666
    .line 1667
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1668
    .line 1669
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    .line 1674
    .line 1675
    const-string v10, " "

    .line 1676
    .line 1677
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    .line 1679
    .line 1680
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1681
    .line 1682
    .line 1683
    const-string v10, "*"

    .line 1684
    .line 1685
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v23

    .line 1695
    new-instance v10, Lj8/m0;

    .line 1696
    .line 1697
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 1698
    .line 1699
    .line 1700
    move-result v9

    .line 1701
    invoke-direct {v10, v9}, Lj8/m0;-><init>(I)V

    .line 1702
    .line 1703
    .line 1704
    const/16 v27, 0x0

    .line 1705
    .line 1706
    const/16 v28, 0x1c

    .line 1707
    .line 1708
    const/16 v25, 0x0

    .line 1709
    .line 1710
    const/16 v26, 0x0

    .line 1711
    .line 1712
    move-object/from16 v24, v10

    .line 1713
    .line 1714
    invoke-direct/range {v22 .. v28}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 1715
    .line 1716
    .line 1717
    move-object/from16 v9, v22

    .line 1718
    .line 1719
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    .line 1721
    .line 1722
    add-int/lit8 v6, v6, 0x1

    .line 1723
    .line 1724
    goto :goto_13

    .line 1725
    :cond_20
    const v6, 0x6e3c21fe

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v1, v6}, Lf1/s;->W(I)V

    .line 1729
    .line 1730
    .line 1731
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v2

    .line 1735
    if-ne v2, v11, :cond_21

    .line 1736
    .line 1737
    new-instance v2, Lv/x0;

    .line 1738
    .line 1739
    const/4 v5, 0x5

    .line 1740
    invoke-direct {v2, v5}, Lv/x0;-><init>(I)V

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1744
    .line 1745
    .line 1746
    :cond_21
    move-object/from16 v26, v2

    .line 1747
    .line 1748
    check-cast v26, Lf9/k;

    .line 1749
    .line 1750
    const/4 v9, 0x0

    .line 1751
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 1752
    .line 1753
    .line 1754
    const v28, 0x30186

    .line 1755
    .line 1756
    .line 1757
    const/16 v29, 0x18

    .line 1758
    .line 1759
    const-string v23, "SECONDARY_HUD_ID"

    .line 1760
    .line 1761
    const/16 v24, 0x0

    .line 1762
    .line 1763
    const/16 v25, 0x0

    .line 1764
    .line 1765
    move-object/from16 v27, v1

    .line 1766
    .line 1767
    move-object/from16 v22, v3

    .line 1768
    .line 1769
    invoke-static/range {v21 .. v29}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 1770
    .line 1771
    .line 1772
    const-string v2, "\u5bbd\u5ea6"

    .line 1773
    .line 1774
    filled-new-array {v2, v8}, [Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v2

    .line 1778
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v21

    .line 1782
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v2

    .line 1786
    check-cast v2, Lv7/m;

    .line 1787
    .line 1788
    iget v2, v2, Lv7/m;->i:I

    .line 1789
    .line 1790
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v2

    .line 1794
    new-instance v3, Lr8/j;

    .line 1795
    .line 1796
    const-string v5, "SECONDARY_HUD_WIDTH"

    .line 1797
    .line 1798
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1799
    .line 1800
    .line 1801
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v2

    .line 1805
    check-cast v2, Lv7/m;

    .line 1806
    .line 1807
    iget v2, v2, Lv7/m;->g:I

    .line 1808
    .line 1809
    invoke-static {v4, v2}, Lv7/k;->a(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v2

    .line 1813
    iget-object v2, v2, Lr8/j;->a:Ljava/lang/Object;

    .line 1814
    .line 1815
    check-cast v2, Ljava/lang/Number;

    .line 1816
    .line 1817
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1818
    .line 1819
    .line 1820
    move-result v2

    .line 1821
    int-to-float v2, v2

    .line 1822
    new-instance v5, Ll9/a;

    .line 1823
    .line 1824
    const/4 v6, 0x0

    .line 1825
    invoke-direct {v5, v6, v2}, Ll9/a;-><init>(FF)V

    .line 1826
    .line 1827
    .line 1828
    const v2, 0x6e3c21fe

    .line 1829
    .line 1830
    .line 1831
    invoke-static {v5, v7, v1, v2}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v23

    .line 1835
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v2

    .line 1839
    if-ne v2, v11, :cond_22

    .line 1840
    .line 1841
    new-instance v2, Lv/x0;

    .line 1842
    .line 1843
    const/4 v5, 0x6

    .line 1844
    invoke-direct {v2, v5}, Lv/x0;-><init>(I)V

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1848
    .line 1849
    .line 1850
    :cond_22
    move-object/from16 v25, v2

    .line 1851
    .line 1852
    check-cast v25, Lf9/k;

    .line 1853
    .line 1854
    const/4 v9, 0x0

    .line 1855
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 1856
    .line 1857
    .line 1858
    const/16 v27, 0x6006

    .line 1859
    .line 1860
    const/16 v28, 0x8

    .line 1861
    .line 1862
    const/16 v24, 0x0

    .line 1863
    .line 1864
    move-object/from16 v26, v1

    .line 1865
    .line 1866
    move-object/from16 v22, v3

    .line 1867
    .line 1868
    invoke-static/range {v21 .. v28}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 1869
    .line 1870
    .line 1871
    const-string v2, "\u9ad8\u5ea6"

    .line 1872
    .line 1873
    filled-new-array {v2, v8}, [Ljava/lang/String;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v2

    .line 1877
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v21

    .line 1881
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v2

    .line 1885
    check-cast v2, Lv7/m;

    .line 1886
    .line 1887
    iget v2, v2, Lv7/m;->j:I

    .line 1888
    .line 1889
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v2

    .line 1893
    new-instance v3, Lr8/j;

    .line 1894
    .line 1895
    const-string v5, "SECONDARY_HUD_HEIGHT"

    .line 1896
    .line 1897
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1898
    .line 1899
    .line 1900
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v2

    .line 1904
    check-cast v2, Lv7/m;

    .line 1905
    .line 1906
    iget v2, v2, Lv7/m;->g:I

    .line 1907
    .line 1908
    invoke-static {v4, v2}, Lv7/k;->a(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v2

    .line 1912
    iget-object v2, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 1913
    .line 1914
    check-cast v2, Ljava/lang/Number;

    .line 1915
    .line 1916
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1917
    .line 1918
    .line 1919
    move-result v2

    .line 1920
    int-to-float v2, v2

    .line 1921
    new-instance v5, Ll9/a;

    .line 1922
    .line 1923
    const/4 v6, 0x0

    .line 1924
    invoke-direct {v5, v6, v2}, Ll9/a;-><init>(FF)V

    .line 1925
    .line 1926
    .line 1927
    const v2, 0x6e3c21fe

    .line 1928
    .line 1929
    .line 1930
    invoke-static {v5, v7, v1, v2}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v23

    .line 1934
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v2

    .line 1938
    if-ne v2, v11, :cond_23

    .line 1939
    .line 1940
    new-instance v2, Lv/x0;

    .line 1941
    .line 1942
    const/4 v5, 0x7

    .line 1943
    invoke-direct {v2, v5}, Lv/x0;-><init>(I)V

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1947
    .line 1948
    .line 1949
    :cond_23
    move-object/from16 v25, v2

    .line 1950
    .line 1951
    check-cast v25, Lf9/k;

    .line 1952
    .line 1953
    const/4 v9, 0x0

    .line 1954
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 1955
    .line 1956
    .line 1957
    const/16 v27, 0x6006

    .line 1958
    .line 1959
    const/16 v28, 0x8

    .line 1960
    .line 1961
    const/16 v24, 0x0

    .line 1962
    .line 1963
    move-object/from16 v26, v1

    .line 1964
    .line 1965
    move-object/from16 v22, v3

    .line 1966
    .line 1967
    invoke-static/range {v21 .. v28}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 1968
    .line 1969
    .line 1970
    const-string v2, "\u5de6\u504f\u79fbX"

    .line 1971
    .line 1972
    filled-new-array {v2, v8}, [Ljava/lang/String;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v2

    .line 1976
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v21

    .line 1980
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v2

    .line 1984
    check-cast v2, Lv7/m;

    .line 1985
    .line 1986
    iget v2, v2, Lv7/m;->k:I

    .line 1987
    .line 1988
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v2

    .line 1992
    new-instance v3, Lr8/j;

    .line 1993
    .line 1994
    const-string v5, "SECONDARY_HUD_OFFSET_X"

    .line 1995
    .line 1996
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1997
    .line 1998
    .line 1999
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v2

    .line 2003
    check-cast v2, Lv7/m;

    .line 2004
    .line 2005
    iget v2, v2, Lv7/m;->g:I

    .line 2006
    .line 2007
    invoke-static {v4, v2}, Lv7/k;->a(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v2

    .line 2011
    iget-object v2, v2, Lr8/j;->a:Ljava/lang/Object;

    .line 2012
    .line 2013
    check-cast v2, Ljava/lang/Number;

    .line 2014
    .line 2015
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 2016
    .line 2017
    .line 2018
    move-result v2

    .line 2019
    int-to-float v2, v2

    .line 2020
    new-instance v5, Ll9/a;

    .line 2021
    .line 2022
    const/4 v6, 0x0

    .line 2023
    invoke-direct {v5, v6, v2}, Ll9/a;-><init>(FF)V

    .line 2024
    .line 2025
    .line 2026
    const v2, 0x6e3c21fe

    .line 2027
    .line 2028
    .line 2029
    invoke-static {v5, v7, v1, v2}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v23

    .line 2033
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v2

    .line 2037
    if-ne v2, v11, :cond_24

    .line 2038
    .line 2039
    new-instance v2, Lv/x0;

    .line 2040
    .line 2041
    const/16 v5, 0x8

    .line 2042
    .line 2043
    invoke-direct {v2, v5}, Lv/x0;-><init>(I)V

    .line 2044
    .line 2045
    .line 2046
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2047
    .line 2048
    .line 2049
    :cond_24
    move-object/from16 v25, v2

    .line 2050
    .line 2051
    check-cast v25, Lf9/k;

    .line 2052
    .line 2053
    const/4 v9, 0x0

    .line 2054
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 2055
    .line 2056
    .line 2057
    const/16 v27, 0x6006

    .line 2058
    .line 2059
    const/16 v28, 0x8

    .line 2060
    .line 2061
    const/16 v24, 0x0

    .line 2062
    .line 2063
    move-object/from16 v26, v1

    .line 2064
    .line 2065
    move-object/from16 v22, v3

    .line 2066
    .line 2067
    invoke-static/range {v21 .. v28}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 2068
    .line 2069
    .line 2070
    const-string v2, "\u4e0a\u504f\u79fbY"

    .line 2071
    .line 2072
    filled-new-array {v2, v8}, [Ljava/lang/String;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v2

    .line 2076
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 2077
    .line 2078
    .line 2079
    move-result-object v2

    .line 2080
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2081
    .line 2082
    .line 2083
    move-result-object v3

    .line 2084
    check-cast v3, Lv7/m;

    .line 2085
    .line 2086
    iget v3, v3, Lv7/m;->l:I

    .line 2087
    .line 2088
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2089
    .line 2090
    .line 2091
    move-result-object v3

    .line 2092
    new-instance v5, Lr8/j;

    .line 2093
    .line 2094
    const-string v6, "SECONDARY_HUD_OFFSET_Y"

    .line 2095
    .line 2096
    invoke-direct {v5, v6, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2097
    .line 2098
    .line 2099
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2100
    .line 2101
    .line 2102
    move-result-object v0

    .line 2103
    check-cast v0, Lv7/m;

    .line 2104
    .line 2105
    iget v0, v0, Lv7/m;->g:I

    .line 2106
    .line 2107
    invoke-static {v4, v0}, Lv7/k;->a(Landroid/hardware/display/DisplayManager;I)Lr8/j;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v0

    .line 2111
    iget-object v0, v0, Lr8/j;->b:Ljava/lang/Object;

    .line 2112
    .line 2113
    check-cast v0, Ljava/lang/Number;

    .line 2114
    .line 2115
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2116
    .line 2117
    .line 2118
    move-result v0

    .line 2119
    int-to-float v0, v0

    .line 2120
    new-instance v3, Ll9/a;

    .line 2121
    .line 2122
    const/4 v6, 0x0

    .line 2123
    invoke-direct {v3, v6, v0}, Ll9/a;-><init>(FF)V

    .line 2124
    .line 2125
    .line 2126
    const v0, 0x6e3c21fe

    .line 2127
    .line 2128
    .line 2129
    invoke-static {v3, v7, v1, v0}, La2/f;->K(Ll9/a;Ljava/lang/Integer;Lf1/s;I)Lr8/j;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v21

    .line 2133
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v0

    .line 2137
    if-ne v0, v11, :cond_25

    .line 2138
    .line 2139
    new-instance v0, Lv/x0;

    .line 2140
    .line 2141
    const/4 v3, 0x3

    .line 2142
    invoke-direct {v0, v3}, Lv/x0;-><init>(I)V

    .line 2143
    .line 2144
    .line 2145
    invoke-virtual {v1, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2146
    .line 2147
    .line 2148
    :cond_25
    move-object/from16 v23, v0

    .line 2149
    .line 2150
    check-cast v23, Lf9/k;

    .line 2151
    .line 2152
    const/4 v9, 0x0

    .line 2153
    invoke-virtual {v1, v9}, Lf1/s;->p(Z)V

    .line 2154
    .line 2155
    .line 2156
    const/16 v25, 0x6006

    .line 2157
    .line 2158
    const/16 v26, 0x8

    .line 2159
    .line 2160
    const/16 v22, 0x0

    .line 2161
    .line 2162
    move-object/from16 v24, v1

    .line 2163
    .line 2164
    move-object/from16 v19, v2

    .line 2165
    .line 2166
    move-object/from16 v20, v5

    .line 2167
    .line 2168
    invoke-static/range {v19 .. v26}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 2169
    .line 2170
    .line 2171
    const-string v0, "\u91cd\u542fCarLife\u751f\u6548, \u8fde\u63a5\u540e\u663e\u793a(\u6d4b\u8bd5)"

    .line 2172
    .line 2173
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v0

    .line 2177
    const/4 v7, 0x6

    .line 2178
    invoke-static {v0, v1, v7}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 2179
    .line 2180
    .line 2181
    :goto_14
    return-object v16

    .line 2182
    nop

    .line 2183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
