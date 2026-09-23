.class public final Ly7/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Lz7/u1;

.field public final b:Ll8/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ll8/p;->l:Ldc/l0;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lz7/u1;->b:Lz7/u1;

    .line 5
    .line 6
    iput-object v0, p0, Ly7/u;->a:Lz7/u1;

    .line 7
    .line 8
    new-instance v0, Ll8/p;

    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    const-string v2, ".mp3,.wav,.aac,.flac"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ll8/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ly7/u;->b:Ll8/p;

    .line 18
    .line 19
    return-void
.end method

.method public static final f(Lf1/b1;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lc8/k0;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x7

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v3, v2}, Lc8/k0;-><init>(ILw8/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u64ad\u653e\u97f3\u9891"

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ZLf9/a;Lf9/k;Lf1/s;I)V
    .locals 18

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v15, p4

    .line 6
    .line 7
    const-string v0, "onDismissRequest"

    .line 8
    .line 9
    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "onConfigured"

    .line 13
    .line 14
    invoke-static {v4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x4f703e7f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v15, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    move/from16 v2, p1

    .line 24
    .line 25
    invoke-virtual {v15, v2}, Lf1/s;->g(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int v0, p5, v0

    .line 35
    .line 36
    invoke-virtual {v15, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const/16 v1, 0x100

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v1, 0x80

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v1

    .line 48
    move-object/from16 v1, p0

    .line 49
    .line 50
    invoke-virtual {v15, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    const/16 v5, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v5, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v0, v5

    .line 62
    and-int/lit16 v5, v0, 0x493

    .line 63
    .line 64
    const/16 v6, 0x492

    .line 65
    .line 66
    if-ne v5, v6, :cond_4

    .line 67
    .line 68
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_4
    :goto_3
    const v5, 0x6e3c21fe

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 91
    .line 92
    if-ne v6, v7, :cond_5

    .line 93
    .line 94
    const-string v6, ""

    .line 95
    .line 96
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v15, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    check-cast v6, Lf1/b1;

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-static {v15, v8, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    if-ne v9, v7, :cond_6

    .line 111
    .line 112
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-static {v9}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {v15, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    move-object v11, v9

    .line 122
    check-cast v11, Lf1/b1;

    .line 123
    .line 124
    invoke-static {v15, v8, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    if-ne v9, v7, :cond_7

    .line 129
    .line 130
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-static {v9}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v15, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    check-cast v9, Lf1/b1;

    .line 140
    .line 141
    invoke-static {v15, v8, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    if-ne v5, v7, :cond_8

    .line 146
    .line 147
    new-instance v5, Lf1/h1;

    .line 148
    .line 149
    const/4 v7, 0x1

    .line 150
    invoke-direct {v5, v7}, Lf1/h1;-><init>(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_8
    check-cast v5, Lf1/h1;

    .line 157
    .line 158
    invoke-virtual {v15, v8}, Lf1/s;->p(Z)V

    .line 159
    .line 160
    .line 161
    new-instance v7, La8/p0;

    .line 162
    .line 163
    const/16 v8, 0xc

    .line 164
    .line 165
    invoke-direct {v7, v3, v8}, La8/p0;-><init>(Lf9/a;I)V

    .line 166
    .line 167
    .line 168
    const v8, 0x3ca92866

    .line 169
    .line 170
    .line 171
    invoke-static {v8, v7, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    new-instance v7, Ly7/s;

    .line 176
    .line 177
    const/4 v8, 0x0

    .line 178
    invoke-direct {v7, v11, v8}, Ly7/s;-><init>(Lf1/b1;I)V

    .line 179
    .line 180
    .line 181
    const v8, 0x7ed2927

    .line 182
    .line 183
    .line 184
    invoke-static {v8, v7, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    new-instance v4, La8/r0;

    .line 189
    .line 190
    const/16 v10, 0x8

    .line 191
    .line 192
    move-object v7, v6

    .line 193
    move-object v8, v9

    .line 194
    move-object v6, v1

    .line 195
    move-object v9, v5

    .line 196
    move-object/from16 v5, p3

    .line 197
    .line 198
    invoke-direct/range {v4 .. v10}, La8/r0;-><init>(Lf9/k;Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 199
    .line 200
    .line 201
    const v1, -0x2cced618

    .line 202
    .line 203
    .line 204
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    new-instance v4, Ly7/t;

    .line 209
    .line 210
    const/4 v10, 0x1

    .line 211
    move-object/from16 v5, p0

    .line 212
    .line 213
    move-object v6, v11

    .line 214
    invoke-direct/range {v4 .. v10}, Ly7/t;-><init>(Ly7/u;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/h1;I)V

    .line 215
    .line 216
    .line 217
    const v5, -0x252d9b4a

    .line 218
    .line 219
    .line 220
    invoke-static {v5, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    and-int/lit8 v0, v0, 0xe

    .line 225
    .line 226
    const/high16 v4, 0x36c00000

    .line 227
    .line 228
    or-int v16, v0, v4

    .line 229
    .line 230
    const/16 v17, 0x7e

    .line 231
    .line 232
    const/4 v5, 0x0

    .line 233
    const-wide/16 v6, 0x0

    .line 234
    .line 235
    const/4 v8, 0x0

    .line 236
    const/4 v9, 0x0

    .line 237
    const/4 v10, 0x0

    .line 238
    move v4, v2

    .line 239
    move-object v11, v12

    .line 240
    move-object v12, v13

    .line 241
    move-object v13, v1

    .line 242
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 243
    .line 244
    .line 245
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    if-eqz v7, :cond_9

    .line 250
    .line 251
    new-instance v0, Lc8/h;

    .line 252
    .line 253
    const/16 v6, 0xf

    .line 254
    .line 255
    move-object/from16 v1, p0

    .line 256
    .line 257
    move/from16 v2, p1

    .line 258
    .line 259
    move-object/from16 v4, p3

    .line 260
    .line 261
    move/from16 v5, p5

    .line 262
    .line 263
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 264
    .line 265
    .line 266
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 267
    .line 268
    :cond_9
    return-void
.end method

.method public final d(Ljava/lang/String;Lf9/n;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v11, p3

    .line 4
    .line 5
    const-string v0, "fileName"

    .line 6
    .line 7
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "callback"

    .line 11
    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x62ce8f05

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v11, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x4

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    :goto_0
    or-int v0, p4, v0

    .line 34
    .line 35
    and-int/lit8 v4, v0, 0x13

    .line 36
    .line 37
    const/16 v5, 0x12

    .line 38
    .line 39
    if-ne v4, v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_2
    :goto_1
    const v4, 0x6e3c21fe

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, v4}, Lf1/s;->W(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    sget-object v10, Lf1/n;->a:Lf1/w0;

    .line 64
    .line 65
    if-ne v5, v10, :cond_3

    .line 66
    .line 67
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v11, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    move-object v12, v5

    .line 77
    check-cast v12, Lf1/b1;

    .line 78
    .line 79
    const/4 v13, 0x0

    .line 80
    invoke-static {v11, v13, v4}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/4 v6, 0x1

    .line 85
    if-ne v5, v10, :cond_4

    .line 86
    .line 87
    new-instance v5, Lf1/h1;

    .line 88
    .line 89
    invoke-direct {v5, v6}, Lf1/h1;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    move-object v14, v5

    .line 96
    check-cast v14, Lf1/h1;

    .line 97
    .line 98
    invoke-static {v11, v13, v4}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-ne v4, v10, :cond_5

    .line 103
    .line 104
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-static {v4}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v11, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    move-object v15, v4

    .line 114
    check-cast v15, Lf1/b1;

    .line 115
    .line 116
    invoke-virtual {v11, v13}, Lf1/s;->p(Z)V

    .line 117
    .line 118
    .line 119
    sget-object v4, Ly7/e;->b:Ln1/c;

    .line 120
    .line 121
    new-instance v5, Lk7/c;

    .line 122
    .line 123
    const/4 v7, 0x1

    .line 124
    invoke-direct {v5, v12, v14, v7}, Lk7/c;-><init>(Lf1/b1;Lf1/h1;I)V

    .line 125
    .line 126
    .line 127
    const v7, 0x2fb0a4fd

    .line 128
    .line 129
    .line 130
    invoke-static {v7, v5, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const v7, -0x615d173a

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11, v7}, Lf1/s;->W(I)V

    .line 138
    .line 139
    .line 140
    and-int/lit8 v0, v0, 0xe

    .line 141
    .line 142
    if-ne v0, v3, :cond_6

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    const/4 v6, 0x0

    .line 146
    :goto_2
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-nez v6, :cond_7

    .line 151
    .line 152
    if-ne v0, v10, :cond_8

    .line 153
    .line 154
    :cond_7
    new-instance v0, Ly7/h;

    .line 155
    .line 156
    const/4 v3, 0x1

    .line 157
    invoke-direct {v0, v2, v15, v3}, Ly7/h;-><init>(Ljava/lang/String;Lf1/b1;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_8
    move-object v6, v0

    .line 164
    check-cast v6, Lf9/a;

    .line 165
    .line 166
    invoke-virtual {v11, v13}, Lf1/s;->p(Z)V

    .line 167
    .line 168
    .line 169
    const/16 v8, 0x1b6

    .line 170
    .line 171
    const/4 v9, 0x0

    .line 172
    move-object v3, v4

    .line 173
    move-object v4, v5

    .line 174
    const/4 v5, 0x0

    .line 175
    move-object v7, v11

    .line 176
    invoke-static/range {v3 .. v9}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Ljava/lang/Boolean;

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    .line 187
    .line 188
    const v3, 0x4c5de2

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11, v3}, Lf1/s;->W(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    if-ne v4, v10, :cond_9

    .line 199
    .line 200
    new-instance v4, Ld8/i;

    .line 201
    .line 202
    const/4 v5, 0x2

    .line 203
    const/4 v6, 0x0

    .line 204
    invoke-direct {v4, v15, v6, v5}, Ld8/i;-><init>(Lf1/b1;Lw8/c;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v11, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_9
    check-cast v4, Lf9/n;

    .line 211
    .line 212
    invoke-virtual {v11, v13}, Lf1/s;->p(Z)V

    .line 213
    .line 214
    .line 215
    invoke-static {v11, v4, v0}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    invoke-virtual {v11, v3}, Lf1/s;->W(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    if-ne v0, v10, :cond_a

    .line 236
    .line 237
    new-instance v0, Lu7/e;

    .line 238
    .line 239
    const/16 v3, 0xd

    .line 240
    .line 241
    invoke-direct {v0, v15, v3}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_a
    move-object v7, v0

    .line 248
    check-cast v7, Lf9/a;

    .line 249
    .line 250
    invoke-virtual {v11, v13}, Lf1/s;->p(Z)V

    .line 251
    .line 252
    .line 253
    new-instance v0, Ly7/r;

    .line 254
    .line 255
    const/4 v5, 0x1

    .line 256
    move-object v3, v12

    .line 257
    move-object v4, v14

    .line 258
    invoke-direct/range {v0 .. v5}, Ly7/r;-><init>(Lf9/n;Ljava/lang/String;Lf1/b1;Lf1/h1;I)V

    .line 259
    .line 260
    .line 261
    const v1, -0x6c849584

    .line 262
    .line 263
    .line 264
    invoke-static {v1, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    const/16 v12, 0x30

    .line 269
    .line 270
    const/16 v13, 0x3fc

    .line 271
    .line 272
    const-wide/16 v2, 0x0

    .line 273
    .line 274
    const/4 v4, 0x0

    .line 275
    const/4 v5, 0x0

    .line 276
    move v0, v6

    .line 277
    const/4 v6, 0x0

    .line 278
    move-object v1, v7

    .line 279
    const/4 v7, 0x0

    .line 280
    const/4 v8, 0x0

    .line 281
    const/4 v9, 0x0

    .line 282
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 283
    .line 284
    .line 285
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lf1/s;->r()Lf1/w1;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    if-eqz v6, :cond_b

    .line 290
    .line 291
    new-instance v0, Ll0/p;

    .line 292
    .line 293
    const/4 v5, 0x5

    .line 294
    move-object/from16 v1, p0

    .line 295
    .line 296
    move-object/from16 v2, p1

    .line 297
    .line 298
    move-object/from16 v3, p2

    .line 299
    .line 300
    move/from16 v4, p4

    .line 301
    .line 302
    invoke-direct/range {v0 .. v5}, Ll0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr8/e;II)V

    .line 303
    .line 304
    .line 305
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 306
    .line 307
    :cond_b
    return-void
.end method

.method public final e(Ll8/p;Lf9/n;Lf1/s;I)V
    .locals 15

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v11, p3

    .line 4
    .line 5
    const-string v0, "httpService"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "callback"

    .line 11
    .line 12
    move-object/from16 v7, p2

    .line 13
    .line 14
    invoke-static {v7, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, -0x34d21b71    # -1.1396239E7f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v11, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x4

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    :goto_0
    or-int v0, p4, v0

    .line 34
    .line 35
    and-int/lit8 v3, v0, 0x13

    .line 36
    .line 37
    const/16 v4, 0x12

    .line 38
    .line 39
    if-ne v3, v4, :cond_2

    .line 40
    .line 41
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_7

    .line 52
    .line 53
    :cond_2
    :goto_1
    const v3, 0x6e3c21fe

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, v3}, Lf1/s;->W(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 64
    .line 65
    if-ne v4, v8, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Ll8/p;->i()[Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v4}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v11, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    check-cast v4, Lf1/b1;

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-static {v11, v9, v3}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    if-ne v5, v8, :cond_4

    .line 86
    .line 87
    const-string v5, ""

    .line 88
    .line 89
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v11, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    check-cast v5, Lf1/b1;

    .line 97
    .line 98
    invoke-static {v11, v9, v3}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-ne v3, v8, :cond_5

    .line 103
    .line 104
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v11, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    check-cast v3, Lf1/b1;

    .line 114
    .line 115
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 116
    .line 117
    .line 118
    sget-object v6, Ll8/p;->l:Ldc/l0;

    .line 119
    .line 120
    invoke-static {v6, v11}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    check-cast v10, Ljava/lang/String;

    .line 129
    .line 130
    const v12, -0x48fade91

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v12}, Lf1/s;->W(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    and-int/lit8 v0, v0, 0xe

    .line 141
    .line 142
    if-eq v0, v2, :cond_7

    .line 143
    .line 144
    invoke-virtual {v11, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    const/4 v0, 0x0

    .line 152
    goto :goto_3

    .line 153
    :cond_7
    :goto_2
    const/4 v0, 0x1

    .line 154
    :goto_3
    or-int/2addr v0, v13

    .line 155
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-nez v0, :cond_9

    .line 160
    .line 161
    if-ne v2, v8, :cond_8

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_8
    move-object v14, v5

    .line 165
    move-object v5, v3

    .line 166
    move-object v3, v4

    .line 167
    move-object v4, v14

    .line 168
    goto :goto_5

    .line 169
    :cond_9
    :goto_4
    new-instance v0, Li0/e;

    .line 170
    .line 171
    move-object v2, v6

    .line 172
    const/4 v6, 0x0

    .line 173
    move-object v14, v5

    .line 174
    move-object v5, v3

    .line 175
    move-object v3, v4

    .line 176
    move-object v4, v14

    .line 177
    invoke-direct/range {v0 .. v6}, Li0/e;-><init>(Ll8/p;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;Lw8/c;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    move-object v2, v0

    .line 184
    :goto_5
    check-cast v2, Lf9/n;

    .line 185
    .line 186
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 187
    .line 188
    .line 189
    invoke-static {v11, v2, v10}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    sget-object v0, Ly7/e;->a:Ln1/c;

    .line 193
    .line 194
    new-instance v1, Ly7/s;

    .line 195
    .line 196
    const/4 v2, 0x1

    .line 197
    invoke-direct {v1, v4, v2}, Ly7/s;-><init>(Lf1/b1;I)V

    .line 198
    .line 199
    .line 200
    const v2, -0x735bc179

    .line 201
    .line 202
    .line 203
    invoke-static {v2, v1, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-virtual {v11, v12}, Lf1/s;->W(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    if-ne v1, v8, :cond_a

    .line 215
    .line 216
    new-instance v1, Lc8/b0;

    .line 217
    .line 218
    const/4 v6, 0x4

    .line 219
    move-object v2, v7

    .line 220
    invoke-direct/range {v1 .. v6}, Lc8/b0;-><init>(Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 221
    .line 222
    .line 223
    move-object v7, v3

    .line 224
    move-object v12, v4

    .line 225
    move-object v13, v5

    .line 226
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_a
    move-object v7, v3

    .line 231
    move-object v12, v4

    .line 232
    move-object v13, v5

    .line 233
    :goto_6
    move-object v3, v1

    .line 234
    check-cast v3, Lf9/a;

    .line 235
    .line 236
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 237
    .line 238
    .line 239
    const/16 v5, 0x36

    .line 240
    .line 241
    const/4 v6, 0x4

    .line 242
    const/4 v2, 0x0

    .line 243
    move-object v1, v10

    .line 244
    move-object v4, v11

    .line 245
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Ljava/lang/Boolean;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    const v0, 0x4c5de2

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11, v0}, Lf1/s;->W(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-ne v0, v8, :cond_b

    .line 269
    .line 270
    new-instance v0, Lu7/e;

    .line 271
    .line 272
    const/16 v1, 0xe

    .line 273
    .line 274
    invoke-direct {v0, v13, v1}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_b
    move-object v8, v0

    .line 281
    check-cast v8, Lf9/a;

    .line 282
    .line 283
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 284
    .line 285
    .line 286
    new-instance v0, La8/r0;

    .line 287
    .line 288
    const/16 v6, 0x9

    .line 289
    .line 290
    move-object/from16 v3, p1

    .line 291
    .line 292
    move-object/from16 v1, p2

    .line 293
    .line 294
    move-object v2, v7

    .line 295
    move-object v5, v12

    .line 296
    move-object v4, v13

    .line 297
    invoke-direct/range {v0 .. v6}, La8/r0;-><init>(Ljava/lang/Object;Lf1/b1;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 298
    .line 299
    .line 300
    const v1, -0x257dd37a

    .line 301
    .line 302
    .line 303
    invoke-static {v1, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    const/16 v12, 0x30

    .line 308
    .line 309
    const/16 v13, 0x3fc

    .line 310
    .line 311
    const-wide/16 v2, 0x0

    .line 312
    .line 313
    const/4 v4, 0x0

    .line 314
    const/4 v5, 0x0

    .line 315
    const/4 v6, 0x0

    .line 316
    const/4 v7, 0x0

    .line 317
    move-object v1, v8

    .line 318
    const/4 v8, 0x0

    .line 319
    const/4 v9, 0x0

    .line 320
    move v14, v10

    .line 321
    move-object v10, v0

    .line 322
    move v0, v14

    .line 323
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 324
    .line 325
    .line 326
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lf1/s;->r()Lf1/w1;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    if-eqz v6, :cond_c

    .line 331
    .line 332
    new-instance v0, Ll0/p;

    .line 333
    .line 334
    const/4 v5, 0x6

    .line 335
    move-object v1, p0

    .line 336
    move-object/from16 v2, p1

    .line 337
    .line 338
    move-object/from16 v3, p2

    .line 339
    .line 340
    move/from16 v4, p4

    .line 341
    .line 342
    invoke-direct/range {v0 .. v5}, Ll0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr8/e;II)V

    .line 343
    .line 344
    .line 345
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 346
    .line 347
    :cond_c
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Audio"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Ly7/u;->a:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method
