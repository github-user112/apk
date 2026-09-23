.class public final Lc8/v;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lz7/u1;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Amap"

    .line 5
    .line 6
    iput-object v0, p0, Lc8/v;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "\u9ad8\u5fb7\u5e7f\u64ad"

    .line 9
    .line 10
    iput-object v0, p0, Lc8/v;->b:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lz7/u1;->a:Lz7/u1;

    .line 13
    .line 14
    iput-object v0, p0, Lc8/v;->c:Lz7/u1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lb8/g;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-direct {v0, p0, v1, v2}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/v;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ZLf9/a;Lf9/k;Lf1/s;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    const-string v2, "onDismissRequest"

    .line 10
    .line 11
    invoke-static {v3, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "onConfigured"

    .line 15
    .line 16
    invoke-static {v4, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v2, 0x110631ed

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lf1/s;->Y(I)Lf1/s;

    .line 23
    .line 24
    .line 25
    move/from16 v2, p1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lf1/s;->g(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, 0x2

    .line 36
    :goto_0
    or-int v5, p5, v5

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    const/16 v6, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v6, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v5, v6

    .line 50
    invoke-virtual {v0, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    const/16 v6, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v6, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v5, v6

    .line 62
    and-int/lit16 v6, v5, 0x493

    .line 63
    .line 64
    const/16 v7, 0x492

    .line 65
    .line 66
    if-ne v6, v7, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    :goto_3
    const v6, 0x4c5de2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v6}, Lf1/s;->W(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 90
    .line 91
    if-ne v6, v7, :cond_5

    .line 92
    .line 93
    new-instance v6, Lc8/g;

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-direct {v6, v3, v7}, Lc8/g;-><init>(Lf9/a;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    check-cast v6, Lf9/a;

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    invoke-virtual {v0, v7}, Lf1/s;->p(Z)V

    .line 106
    .line 107
    .line 108
    new-instance v7, Lc8/r;

    .line 109
    .line 110
    const/4 v8, 0x1

    .line 111
    invoke-direct {v7, v1, v8}, Lc8/r;-><init>(Lc8/v;I)V

    .line 112
    .line 113
    .line 114
    const v8, 0x9dc8c07

    .line 115
    .line 116
    .line 117
    invoke-static {v8, v7, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    new-instance v7, Lc8/s;

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    invoke-direct {v7, v8, v4, v1}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const v8, -0x13c5172a

    .line 128
    .line 129
    .line 130
    invoke-static {v8, v7, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    and-int/lit8 v5, v5, 0xe

    .line 135
    .line 136
    const/high16 v7, 0x180000

    .line 137
    .line 138
    or-int v17, v5, v7

    .line 139
    .line 140
    const/16 v18, 0x3bc

    .line 141
    .line 142
    const-wide/16 v7, 0x0

    .line 143
    .line 144
    const/4 v9, 0x0

    .line 145
    const/4 v10, 0x0

    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v13, 0x0

    .line 148
    const/4 v14, 0x0

    .line 149
    move-object/from16 v16, v0

    .line 150
    .line 151
    move v5, v2

    .line 152
    invoke-static/range {v5 .. v18}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 153
    .line 154
    .line 155
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    if-eqz v7, :cond_6

    .line 160
    .line 161
    new-instance v0, Lc8/h;

    .line 162
    .line 163
    const/4 v6, 0x0

    .line 164
    move/from16 v2, p1

    .line 165
    .line 166
    move/from16 v5, p5

    .line 167
    .line 168
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 169
    .line 170
    .line 171
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 172
    .line 173
    :cond_6
    return-void
.end method

.method public final d(Ljava/util/List;Lf1/s;I)V
    .locals 29

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    const v0, -0x70e14d8c

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v14, 0x36

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x13

    .line 14
    .line 15
    const/16 v1, 0x12

    .line 16
    .line 17
    const/4 v15, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 28
    .line 29
    .line 30
    move-object/from16 v15, p1

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    :goto_0
    const-string v0, "\u9ad8\u5fb7\u5e7f\u64ad"

    .line 35
    .line 36
    const-string v1, "\u9ad8\u5fb7\u5e7f\u64ad\u63a5\u6536\u6d4b\u8bd5"

    .line 37
    .line 38
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    new-instance v16, Lj8/k0;

    .line 47
    .line 48
    new-instance v0, Lj8/n0;

    .line 49
    .line 50
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/16 v21, 0x0

    .line 56
    .line 57
    const/16 v22, 0x1c

    .line 58
    .line 59
    const-string v17, "\u9ad8\u5fb7\u63a5\u6536\u7684\u5e7f\u64ad"

    .line 60
    .line 61
    const/16 v19, 0x0

    .line 62
    .line 63
    const/16 v20, 0x0

    .line 64
    .line 65
    move-object/from16 v18, v0

    .line 66
    .line 67
    invoke-direct/range {v16 .. v22}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 68
    .line 69
    .line 70
    new-instance v17, Lj8/k0;

    .line 71
    .line 72
    new-instance v0, Lj8/n0;

    .line 73
    .line 74
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/16 v22, 0x0

    .line 80
    .line 81
    const/16 v23, 0x1c

    .line 82
    .line 83
    const-string v18, "\u9ad8\u5fb7\u53d1\u9001\u7684\u5e7f\u64ad"

    .line 84
    .line 85
    move-object/from16 v19, v0

    .line 86
    .line 87
    invoke-direct/range {v17 .. v23}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x2

    .line 91
    new-array v1, v0, [Lj8/k0;

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    aput-object v16, v1, v8

    .line 95
    .line 96
    aput-object v17, v1, v15

    .line 97
    .line 98
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v21

    .line 102
    const v1, 0x6e3c21fe

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v1}, Lf1/s;->W(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    sget-object v9, Lf1/n;->a:Lf1/w0;

    .line 113
    .line 114
    if-ne v2, v9, :cond_2

    .line 115
    .line 116
    invoke-static/range {v21 .. v21}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    move-object v10, v2

    .line 128
    check-cast v10, Lf1/b1;

    .line 129
    .line 130
    invoke-static {v4, v8, v1}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-ne v2, v9, :cond_3

    .line 135
    .line 136
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    move-object/from16 v19, v2

    .line 146
    .line 147
    check-cast v19, Lf1/b1;

    .line 148
    .line 149
    invoke-virtual {v4, v8}, Lf1/s;->p(Z)V

    .line 150
    .line 151
    .line 152
    new-instance v11, Ljava/util/ArrayList;

    .line 153
    .line 154
    sget-object v2, Lc8/t;->e:Lz8/b;

    .line 155
    .line 156
    const/16 v3, 0xa

    .line 157
    .line 158
    invoke-static {v2, v3}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .line 164
    .line 165
    new-instance v5, Lg9/b;

    .line 166
    .line 167
    const/4 v6, 0x6

    .line 168
    invoke-direct {v5, v6, v2}, Lg9/b;-><init>(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :goto_1
    invoke-virtual {v5}, Lg9/b;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const/4 v6, 0x0

    .line 176
    if-eqz v2, :cond_6

    .line 177
    .line 178
    invoke-virtual {v5}, Lg9/b;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Lc8/t;

    .line 183
    .line 184
    iget-object v12, v2, Lc8/t;->a:Ljava/lang/String;

    .line 185
    .line 186
    iget v2, v2, Lc8/t;->b:I

    .line 187
    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    if-eqz v2, :cond_4

    .line 193
    .line 194
    move-object v6, v13

    .line 195
    :cond_4
    if-nez v6, :cond_5

    .line 196
    .line 197
    const-string v6, ""

    .line 198
    .line 199
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v23

    .line 214
    new-instance v6, Lj8/m0;

    .line 215
    .line 216
    invoke-direct {v6, v2}, Lj8/m0;-><init>(I)V

    .line 217
    .line 218
    .line 219
    new-instance v22, Lj8/k0;

    .line 220
    .line 221
    const/16 v25, 0x0

    .line 222
    .line 223
    const/16 v26, 0x0

    .line 224
    .line 225
    const/16 v27, 0x0

    .line 226
    .line 227
    const/16 v28, 0x1c

    .line 228
    .line 229
    move-object/from16 v24, v6

    .line 230
    .line 231
    invoke-direct/range {v22 .. v28}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 232
    .line 233
    .line 234
    move-object/from16 v2, v22

    .line 235
    .line 236
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_6
    invoke-virtual {v4, v1}, Lf1/s;->W(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    if-ne v2, v9, :cond_7

    .line 248
    .line 249
    invoke-static {v11}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :cond_7
    move-object v12, v2

    .line 261
    check-cast v12, Lf1/b1;

    .line 262
    .line 263
    invoke-static {v4, v8, v1}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    if-ne v2, v9, :cond_8

    .line 268
    .line 269
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 270
    .line 271
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_8
    move-object/from16 v24, v2

    .line 279
    .line 280
    check-cast v24, Lf1/b1;

    .line 281
    .line 282
    invoke-static {v4, v8, v1}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    if-ne v2, v9, :cond_9

    .line 287
    .line 288
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 289
    .line 290
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_9
    move-object v13, v2

    .line 298
    check-cast v13, Lf1/b1;

    .line 299
    .line 300
    invoke-static {v4, v8, v1}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    if-ne v1, v9, :cond_a

    .line 305
    .line 306
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 307
    .line 308
    invoke-static {v1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_a
    check-cast v1, Lf1/b1;

    .line 316
    .line 317
    invoke-virtual {v4, v8}, Lf1/s;->p(Z)V

    .line 318
    .line 319
    .line 320
    new-instance v2, Lc8/q;

    .line 321
    .line 322
    invoke-direct {v2, v10, v12, v1}, Lc8/q;-><init>(Lf1/b1;Lf1/b1;Lf1/b1;)V

    .line 323
    .line 324
    .line 325
    const v5, 0x4c5de2

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v5}, Lf1/s;->W(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v16

    .line 335
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    if-nez v16, :cond_b

    .line 340
    .line 341
    if-ne v3, v9, :cond_c

    .line 342
    .line 343
    :cond_b
    new-instance v3, La8/k0;

    .line 344
    .line 345
    invoke-direct {v3, v2, v6, v15}, La8/k0;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_c
    check-cast v3, Lf9/n;

    .line 352
    .line 353
    invoke-virtual {v4, v8}, Lf1/s;->p(Z)V

    .line 354
    .line 355
    .line 356
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 357
    .line 358
    invoke-static {v4, v3, v6}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4, v5}, Lf1/s;->W(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    if-nez v3, :cond_d

    .line 373
    .line 374
    if-ne v5, v9, :cond_e

    .line 375
    .line 376
    :cond_d
    new-instance v5, La8/q;

    .line 377
    .line 378
    invoke-direct {v5, v15, v2}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    :cond_e
    check-cast v5, Lf9/k;

    .line 385
    .line 386
    invoke-virtual {v4, v8}, Lf1/s;->p(Z)V

    .line 387
    .line 388
    .line 389
    invoke-static {v6, v5, v4}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 390
    .line 391
    .line 392
    new-instance v2, La8/j;

    .line 393
    .line 394
    invoke-direct {v2, v0, v7}, La8/j;-><init>(ILjava/util/List;)V

    .line 395
    .line 396
    .line 397
    const v0, 0x227376ab

    .line 398
    .line 399
    .line 400
    invoke-static {v0, v2, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    move-object/from16 v22, v1

    .line 405
    .line 406
    sget-object v1, Lc8/b;->a:Ln1/c;

    .line 407
    .line 408
    const v2, 0x4c5de2

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4, v2}, Lf1/s;->W(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    if-ne v3, v9, :cond_f

    .line 419
    .line 420
    new-instance v3, La8/f;

    .line 421
    .line 422
    const/16 v5, 0xa

    .line 423
    .line 424
    invoke-direct {v3, v13, v5}, La8/f;-><init>(Lf1/b1;I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v4, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    :cond_f
    check-cast v3, Lf9/a;

    .line 431
    .line 432
    invoke-virtual {v4, v8}, Lf1/s;->p(Z)V

    .line 433
    .line 434
    .line 435
    const/16 v5, 0xdb6

    .line 436
    .line 437
    const/4 v6, 0x0

    .line 438
    const v16, 0x4c5de2

    .line 439
    .line 440
    .line 441
    const/4 v2, 0x0

    .line 442
    const v15, 0x4c5de2

    .line 443
    .line 444
    .line 445
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 446
    .line 447
    .line 448
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    check-cast v0, Ljava/lang/Boolean;

    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    invoke-virtual {v4, v15}, Lf1/s;->W(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    if-ne v1, v9, :cond_10

    .line 466
    .line 467
    new-instance v1, La8/f;

    .line 468
    .line 469
    const/16 v2, 0xb

    .line 470
    .line 471
    invoke-direct {v1, v13, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    :cond_10
    check-cast v1, Lf9/a;

    .line 478
    .line 479
    invoke-virtual {v4, v8}, Lf1/s;->p(Z)V

    .line 480
    .line 481
    .line 482
    new-instance v18, Lc8/n;

    .line 483
    .line 484
    const/16 v26, 0x1

    .line 485
    .line 486
    move-object/from16 v20, v10

    .line 487
    .line 488
    move-object/from16 v25, v11

    .line 489
    .line 490
    move-object/from16 v23, v12

    .line 491
    .line 492
    invoke-direct/range {v18 .. v26}, Lc8/n;-><init>(Lf1/b1;Lf1/b1;Ljava/util/List;Lf1/b1;Lf1/b1;Lf1/b1;Ljava/util/ArrayList;I)V

    .line 493
    .line 494
    .line 495
    move-object/from16 v3, v18

    .line 496
    .line 497
    move-object/from16 v2, v22

    .line 498
    .line 499
    const v5, -0x1f550fe6

    .line 500
    .line 501
    .line 502
    invoke-static {v5, v3, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    new-instance v3, La8/m;

    .line 507
    .line 508
    const/16 v5, 0x8

    .line 509
    .line 510
    invoke-direct {v3, v2, v5}, La8/m;-><init>(Lf1/b1;I)V

    .line 511
    .line 512
    .line 513
    const v2, -0x40347215

    .line 514
    .line 515
    .line 516
    invoke-static {v2, v3, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 517
    .line 518
    .line 519
    move-result-object v10

    .line 520
    const v12, 0x180030

    .line 521
    .line 522
    .line 523
    const/16 v13, 0x3bc

    .line 524
    .line 525
    const-wide/16 v2, 0x0

    .line 526
    .line 527
    const/4 v4, 0x0

    .line 528
    const/4 v5, 0x0

    .line 529
    move-object v8, v7

    .line 530
    const/4 v7, 0x0

    .line 531
    move-object v9, v8

    .line 532
    const/4 v8, 0x0

    .line 533
    move-object v11, v9

    .line 534
    const/4 v9, 0x0

    .line 535
    move-object v15, v11

    .line 536
    move-object/from16 v11, p2

    .line 537
    .line 538
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 539
    .line 540
    .line 541
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    if-eqz v0, :cond_11

    .line 546
    .line 547
    new-instance v1, La8/w;

    .line 548
    .line 549
    const/4 v3, 0x1

    .line 550
    move-object/from16 v2, p0

    .line 551
    .line 552
    invoke-direct {v1, v14, v3, v2, v15}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 556
    .line 557
    return-void

    .line 558
    :cond_11
    move-object/from16 v2, p0

    .line 559
    .line 560
    return-void
.end method

.method public final declared-synchronized e()V
    .locals 6

    .line 1
    const-string v0, "\u3010\u9ad8\u5fb7\u5e7f\u64ad\u3011\u6ce8\u518c\u5f02\u5e38: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lc8/v;->d:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3, p0, v2}, Lu3/f;->g(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 29
    .line 30
    .line 31
    iput-boolean v1, p0, Lc8/v;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v2

    .line 37
    :try_start_1
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 38
    .line 39
    const-string v4, "CarLife_Vehicle"

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    aput-object v0, v1, v2

    .line 61
    .line 62
    invoke-virtual {v3, v4, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/v;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/v;->c:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "KEY_TYPE"

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v0, 0x2721

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    sget-object v2, Lc8/j;->d:Lc8/i;

    .line 22
    .line 23
    const-string v3, "\u3010\u9ad8\u5fb7\u5e7f\u64ad\u3011"

    .line 24
    .line 25
    const-string v4, "CarLife_Vehicle"

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x2740

    .line 31
    .line 32
    if-eq p1, v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const-string v0, "EXTRA_DAY_NIGHT_MODE"

    .line 36
    .line 37
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sget-object v0, Lb8/o;->a:Lfc/c;

    .line 42
    .line 43
    new-instance v0, Lz7/d;

    .line 44
    .line 45
    invoke-direct {v0, p1, p2}, Lz7/d;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lb8/o;->a(Lz7/q1;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lc8/i;->b(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-array p2, v5, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object p1, p2, v1

    .line 67
    .line 68
    invoke-virtual {v0, v4, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    const-string v0, "EXTRA_HEADLIGHT_STATE"

    .line 73
    .line 74
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    sget-object v0, Lb8/o;->a:Lfc/c;

    .line 79
    .line 80
    new-instance v0, Lz7/d;

    .line 81
    .line 82
    invoke-direct {v0, p1, p2}, Lz7/d;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lb8/o;->a(Lz7/q1;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p2}, Lc8/i;->b(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-array p2, v5, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object p1, p2, v1

    .line 104
    .line 105
    invoke-virtual {v0, v4, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
