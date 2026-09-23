.class public final Ld8/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ld8/j;

.field public static final b:Ll8/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld8/j;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld8/j;->a:Ld8/j;

    .line 7
    .line 8
    new-instance v0, Ll8/p;

    .line 9
    .line 10
    const-string v1, "log"

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ll8/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Ld8/j;->b:Ll8/p;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ZLf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v11, p3

    .line 2
    .line 3
    const v0, -0x2d818122

    .line 4
    .line 5
    .line 6
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x13

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    move-object/from16 v14, p1

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    :goto_0
    const v0, 0x6e3c21fe

    .line 30
    .line 31
    .line 32
    invoke-virtual {v11, v0}, Lf1/s;->W(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 40
    .line 41
    if-ne v0, v7, :cond_2

    .line 42
    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    move-object v8, v0

    .line 53
    check-cast v8, Lf1/b1;

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 57
    .line 58
    .line 59
    new-instance v0, La8/j;

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    move-object/from16 v14, p1

    .line 63
    .line 64
    invoke-direct {v0, v1, v14}, La8/j;-><init>(ILjava/util/List;)V

    .line 65
    .line 66
    .line 67
    const v1, -0x2c476eeb

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget-object v1, Ld8/e;->e:Ln1/c;

    .line 75
    .line 76
    const v10, 0x4c5de2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v10}, Lf1/s;->W(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-ne v2, v7, :cond_3

    .line 87
    .line 88
    new-instance v2, La8/f;

    .line 89
    .line 90
    const/16 v3, 0x16

    .line 91
    .line 92
    invoke-direct {v2, v8, v3}, La8/f;-><init>(Lf1/b1;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    move-object v3, v2

    .line 99
    check-cast v3, Lf9/a;

    .line 100
    .line 101
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 102
    .line 103
    .line 104
    const/16 v5, 0xdb6

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    move/from16 v2, p2

    .line 108
    .line 109
    move-object v4, v11

    .line 110
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v8}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {v11, v10}, Lf1/s;->W(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-ne v1, v7, :cond_4

    .line 131
    .line 132
    new-instance v1, La8/f;

    .line 133
    .line 134
    const/16 v2, 0x17

    .line 135
    .line 136
    invoke-direct {v1, v8, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    check-cast v1, Lf9/a;

    .line 143
    .line 144
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 145
    .line 146
    .line 147
    sget-object v10, Ld8/e;->g:Ln1/c;

    .line 148
    .line 149
    const/16 v12, 0x30

    .line 150
    .line 151
    const/16 v13, 0x3fc

    .line 152
    .line 153
    const-wide/16 v2, 0x0

    .line 154
    .line 155
    const/4 v4, 0x0

    .line 156
    const/4 v5, 0x0

    .line 157
    const/4 v6, 0x0

    .line 158
    const/4 v7, 0x0

    .line 159
    const/4 v8, 0x0

    .line 160
    const/4 v9, 0x0

    .line 161
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 162
    .line 163
    .line 164
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lf1/s;->r()Lf1/w1;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    new-instance v10, Ld8/g;

    .line 171
    .line 172
    const/4 v15, 0x2

    .line 173
    move-object/from16 v11, p0

    .line 174
    .line 175
    move/from16 v13, p2

    .line 176
    .line 177
    move-object v12, v14

    .line 178
    move/from16 v14, p4

    .line 179
    .line 180
    invoke-direct/range {v10 .. v15}, Ld8/g;-><init>(Ld8/j;Ljava/util/List;ZII)V

    .line 181
    .line 182
    .line 183
    iput-object v10, v0, Lf1/w1;->d:Lf9/n;

    .line 184
    .line 185
    :cond_5
    return-void
.end method

.method public final b(Ljava/util/List;ZZLf1/s;I)V
    .locals 17

    .line 1
    move-object/from16 v11, p4

    .line 2
    .line 3
    const v0, 0x2edc6fd7

    .line 4
    .line 5
    .line 6
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    move/from16 v14, p5

    .line 10
    .line 11
    or-int/lit16 v0, v14, 0xd80

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0x493

    .line 14
    .line 15
    const/16 v1, 0x492

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    move/from16 v4, p2

    .line 30
    .line 31
    move/from16 v5, p3

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_1
    :goto_0
    const v0, 0x6e3c21fe

    .line 36
    .line 37
    .line 38
    invoke-virtual {v11, v0}, Lf1/s;->W(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 46
    .line 47
    if-ne v1, v7, :cond_2

    .line 48
    .line 49
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-static {v1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    move-object v8, v1

    .line 59
    check-cast v8, Lf1/b1;

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    invoke-static {v11, v9, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v15, 0x1

    .line 67
    if-ne v0, v7, :cond_3

    .line 68
    .line 69
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 70
    .line 71
    const-string v0, "TEST_LOGS_SAVE"

    .line 72
    .line 73
    invoke-static {v0, v15}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    check-cast v0, Lf1/b1;

    .line 89
    .line 90
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 91
    .line 92
    .line 93
    new-instance v1, La8/j;

    .line 94
    .line 95
    const/4 v2, 0x4

    .line 96
    move-object/from16 v10, p1

    .line 97
    .line 98
    invoke-direct {v1, v2, v10}, La8/j;-><init>(ILjava/util/List;)V

    .line 99
    .line 100
    .line 101
    const v2, 0x3e32d5ce

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v1, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v2, La8/m;

    .line 109
    .line 110
    const/16 v3, 0xa

    .line 111
    .line 112
    invoke-direct {v2, v0, v3}, La8/m;-><init>(Lf1/b1;I)V

    .line 113
    .line 114
    .line 115
    const v0, 0x76bba3cf

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v2, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const v12, 0x4c5de2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11, v12}, Lf1/s;->W(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-ne v2, v7, :cond_4

    .line 133
    .line 134
    new-instance v2, La8/f;

    .line 135
    .line 136
    const/16 v3, 0x12

    .line 137
    .line 138
    invoke-direct {v2, v8, v3}, La8/f;-><init>(Lf1/b1;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    move-object v3, v2

    .line 145
    check-cast v3, Lf9/a;

    .line 146
    .line 147
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 148
    .line 149
    .line 150
    const/16 v5, 0xdb6

    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v2, 0x1

    .line 154
    move-object v4, v1

    .line 155
    move-object v1, v0

    .line 156
    move-object v0, v4

    .line 157
    move-object v4, v11

    .line 158
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 159
    .line 160
    .line 161
    const/16 v16, 0x1

    .line 162
    .line 163
    invoke-interface {v8}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Ljava/lang/Boolean;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11, v12}, Lf1/s;->W(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-ne v1, v7, :cond_5

    .line 180
    .line 181
    new-instance v1, Ld8/i;

    .line 182
    .line 183
    const/4 v2, 0x0

    .line 184
    invoke-direct {v1, v8, v2, v9}, Ld8/i;-><init>(Lf1/b1;Lw8/c;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    check-cast v1, Lf9/n;

    .line 191
    .line 192
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 193
    .line 194
    .line 195
    invoke-static {v11, v1, v0}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v8}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Ljava/lang/Boolean;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-virtual {v11, v12}, Lf1/s;->W(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-ne v1, v7, :cond_6

    .line 216
    .line 217
    new-instance v1, La8/f;

    .line 218
    .line 219
    const/16 v2, 0x13

    .line 220
    .line 221
    invoke-direct {v1, v8, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_6
    check-cast v1, Lf9/a;

    .line 228
    .line 229
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 230
    .line 231
    .line 232
    sget-object v10, Ld8/e;->k:Ln1/c;

    .line 233
    .line 234
    const/16 v12, 0x30

    .line 235
    .line 236
    const/16 v13, 0x3fc

    .line 237
    .line 238
    const-wide/16 v2, 0x0

    .line 239
    .line 240
    const/4 v4, 0x0

    .line 241
    const/4 v5, 0x0

    .line 242
    const/4 v6, 0x0

    .line 243
    const/4 v7, 0x0

    .line 244
    const/4 v8, 0x0

    .line 245
    const/4 v9, 0x0

    .line 246
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 247
    .line 248
    .line 249
    const/4 v4, 0x1

    .line 250
    const/4 v5, 0x1

    .line 251
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    if-eqz v0, :cond_7

    .line 256
    .line 257
    new-instance v1, Ld8/h;

    .line 258
    .line 259
    move-object/from16 v2, p0

    .line 260
    .line 261
    move-object/from16 v3, p1

    .line 262
    .line 263
    move v6, v14

    .line 264
    invoke-direct/range {v1 .. v6}, Ld8/h;-><init>(Ld8/j;Ljava/util/List;ZZI)V

    .line 265
    .line 266
    .line 267
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 268
    .line 269
    :cond_7
    return-void
.end method

.method public final c(Ljava/util/List;ZLf1/s;I)V
    .locals 6

    .line 1
    const v0, 0x348ad822

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    or-int/lit8 v0, p4, 0x30

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x13

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    move v4, p4

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    if-eqz p3, :cond_2

    .line 33
    .line 34
    new-instance v0, Ld8/g;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move v3, p2

    .line 40
    move v4, p4

    .line 41
    invoke-direct/range {v0 .. v5}, Ld8/g;-><init>(Ld8/j;Ljava/util/List;ZII)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p3, Lf1/w1;->d:Lf9/n;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    move-object v1, p0

    .line 48
    goto :goto_1

    .line 49
    :goto_0
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    new-instance p2, La8/w;

    .line 56
    .line 57
    const/4 p3, 0x2

    .line 58
    invoke-direct {p2, v4, p3, p0, v2}, La8/w;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p1, Lf1/w1;->d:Lf9/n;

    .line 62
    .line 63
    :cond_3
    :goto_1
    return-void
.end method

.method public final d(ILf1/s;)V
    .locals 4

    .line 1
    const v0, -0x491282d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Ld8/e;->a:Ln1/c;

    .line 23
    .line 24
    const/16 v1, 0x30

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v2, v0, p2, v1, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Ld8/e;->b:Ln1/c;

    .line 32
    .line 33
    const/16 v1, 0x36

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const-string v3, "\u9644\u52a0\u8bbe\u7f6e"

    .line 37
    .line 38
    invoke-static {v3, v0, p2, v1, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    new-instance v0, La8/d;

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    invoke-direct {v0, p1, v1, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public final e(Ljava/util/List;ZLf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v11, p3

    .line 2
    .line 3
    const v0, -0x762a0421

    .line 4
    .line 5
    .line 6
    invoke-virtual {v11, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    or-int/lit8 v0, p4, 0x30

    .line 10
    .line 11
    and-int/lit8 v0, v0, 0x13

    .line 12
    .line 13
    const/16 v1, 0x12

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 25
    .line 26
    .line 27
    move-object/from16 v14, p1

    .line 28
    .line 29
    move/from16 v13, p2

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    :goto_0
    const v0, 0x6e3c21fe

    .line 34
    .line 35
    .line 36
    invoke-virtual {v11, v0}, Lf1/s;->W(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 44
    .line 45
    if-ne v0, v7, :cond_2

    .line 46
    .line 47
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v11, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    move-object v8, v0

    .line 57
    check-cast v8, Lf1/b1;

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 61
    .line 62
    .line 63
    new-instance v0, La8/j;

    .line 64
    .line 65
    const/4 v1, 0x5

    .line 66
    move-object/from16 v14, p1

    .line 67
    .line 68
    invoke-direct {v0, v1, v14}, La8/j;-><init>(ILjava/util/List;)V

    .line 69
    .line 70
    .line 71
    const v1, -0x5021cf78

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v1, Ld8/e;->c:Ln1/c;

    .line 79
    .line 80
    const v10, 0x4c5de2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11, v10}, Lf1/s;->W(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-ne v2, v7, :cond_3

    .line 91
    .line 92
    new-instance v2, La8/f;

    .line 93
    .line 94
    const/16 v3, 0x14

    .line 95
    .line 96
    invoke-direct {v2, v8, v3}, La8/f;-><init>(Lf1/b1;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    move-object v3, v2

    .line 103
    check-cast v3, Lf9/a;

    .line 104
    .line 105
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 106
    .line 107
    .line 108
    const/16 v5, 0xdb6

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v2, 0x1

    .line 112
    move-object v4, v11

    .line 113
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 114
    .line 115
    .line 116
    const/4 v15, 0x1

    .line 117
    invoke-interface {v8}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {v11, v10}, Lf1/s;->W(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-ne v1, v7, :cond_4

    .line 135
    .line 136
    new-instance v1, La8/f;

    .line 137
    .line 138
    const/16 v2, 0x15

    .line 139
    .line 140
    invoke-direct {v1, v8, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    check-cast v1, Lf9/a;

    .line 147
    .line 148
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 149
    .line 150
    .line 151
    sget-object v10, Ld8/e;->d:Ln1/c;

    .line 152
    .line 153
    const/16 v12, 0x30

    .line 154
    .line 155
    const/16 v13, 0x3fc

    .line 156
    .line 157
    const-wide/16 v2, 0x0

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v6, 0x0

    .line 162
    const/4 v7, 0x0

    .line 163
    const/4 v8, 0x0

    .line 164
    const/4 v9, 0x0

    .line 165
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 166
    .line 167
    .line 168
    const/4 v13, 0x1

    .line 169
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lf1/s;->r()Lf1/w1;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    new-instance v10, Ld8/g;

    .line 176
    .line 177
    const/4 v15, 0x1

    .line 178
    move-object/from16 v11, p0

    .line 179
    .line 180
    move-object v12, v14

    .line 181
    move/from16 v14, p4

    .line 182
    .line 183
    invoke-direct/range {v10 .. v15}, Ld8/g;-><init>(Ld8/j;Ljava/util/List;ZII)V

    .line 184
    .line 185
    .line 186
    iput-object v10, v0, Lf1/w1;->d:Lf9/n;

    .line 187
    .line 188
    :cond_5
    return-void
.end method
