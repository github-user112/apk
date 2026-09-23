.class public final Ly7/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;


# instance fields
.field public final a:Lz7/u1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lz7/u1;->b:Lz7/u1;

    .line 5
    .line 6
    iput-object v0, p0, Ly7/z;->a:Lz7/u1;

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
    const/16 v2, 0x9

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v1, v3, v2}, Lc8/k0;-><init>(ILw8/c;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u70ed\u70b9\u5f00\u5173"

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
    const v0, -0x29bc70a1

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
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

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
    move-object v9, v6

    .line 104
    check-cast v9, Lf1/b1;

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-static {v15, v6, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-ne v8, v7, :cond_6

    .line 112
    .line 113
    const-string v8, "MyHotspot"

    .line 114
    .line 115
    invoke-static {v8}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v15, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_6
    check-cast v8, Lf1/b1;

    .line 123
    .line 124
    invoke-static {v15, v6, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-ne v5, v7, :cond_7

    .line 129
    .line 130
    const-string v5, "12345678"

    .line 131
    .line 132
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    check-cast v5, Lf1/b1;

    .line 140
    .line 141
    invoke-virtual {v15, v6}, Lf1/s;->p(Z)V

    .line 142
    .line 143
    .line 144
    new-instance v6, La8/p0;

    .line 145
    .line 146
    const/16 v7, 0xe

    .line 147
    .line 148
    invoke-direct {v6, v3, v7}, La8/p0;-><init>(Lf9/a;I)V

    .line 149
    .line 150
    .line 151
    const v7, 0x47972dc6

    .line 152
    .line 153
    .line 154
    invoke-static {v7, v6, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    new-instance v6, La8/u0;

    .line 159
    .line 160
    const/4 v7, 0x3

    .line 161
    invoke-direct {v6, v7, v8, v5, v9}, La8/u0;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 162
    .line 163
    .line 164
    const v7, -0x248519f9

    .line 165
    .line 166
    .line 167
    invoke-static {v7, v6, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    new-instance v4, La8/r0;

    .line 172
    .line 173
    const/16 v10, 0xa

    .line 174
    .line 175
    move-object v6, v1

    .line 176
    move-object v7, v8

    .line 177
    move-object v8, v5

    .line 178
    move-object/from16 v5, p3

    .line 179
    .line 180
    invoke-direct/range {v4 .. v10}, La8/r0;-><init>(Lf9/k;Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 181
    .line 182
    .line 183
    const v1, 0x6f5e9e48

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    new-instance v1, La8/u0;

    .line 191
    .line 192
    const/4 v4, 0x5

    .line 193
    invoke-direct {v1, v4, v9, v7, v8}, La8/u0;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 194
    .line 195
    .line 196
    const v4, -0x4d63dea

    .line 197
    .line 198
    .line 199
    invoke-static {v4, v1, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    and-int/lit8 v0, v0, 0xe

    .line 204
    .line 205
    const/high16 v1, 0x36c00000

    .line 206
    .line 207
    or-int v16, v0, v1

    .line 208
    .line 209
    const/16 v17, 0x7e

    .line 210
    .line 211
    const/4 v5, 0x0

    .line 212
    const-wide/16 v6, 0x0

    .line 213
    .line 214
    const/4 v8, 0x0

    .line 215
    const/4 v9, 0x0

    .line 216
    const/4 v10, 0x0

    .line 217
    move v4, v2

    .line 218
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 219
    .line 220
    .line 221
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    if-eqz v7, :cond_8

    .line 226
    .line 227
    new-instance v0, Lc8/h;

    .line 228
    .line 229
    const/16 v6, 0x12

    .line 230
    .line 231
    move-object/from16 v1, p0

    .line 232
    .line 233
    move/from16 v2, p1

    .line 234
    .line 235
    move-object/from16 v4, p3

    .line 236
    .line 237
    move/from16 v5, p5

    .line 238
    .line 239
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 240
    .line 241
    .line 242
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 243
    .line 244
    :cond_8
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Hotspot"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Ly7/z;->a:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method
