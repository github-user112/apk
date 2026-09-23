.class public final Lz/v0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/io/Serializable;

.field public e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Lz4/c;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lz/v0;->a:Z

    .line 10
    iput-object p2, p0, Lz/v0;->b:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Lz/v0;->c:Ljava/lang/Object;

    .line 12
    iput-object p4, p0, Lz/v0;->f:Ljava/lang/Object;

    .line 13
    iput-object p5, p0, Lz/v0;->e:Ljava/lang/Object;

    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    const/4 p3, 0x0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x1f

    if-lt p1, p2, :cond_1

    .line 15
    sget-object p3, Lz4/d;->d:[B

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 16
    :pswitch_0
    sget-object p3, Lz4/d;->e:[B

    goto :goto_0

    .line 17
    :pswitch_1
    sget-object p3, Lz4/d;->f:[B

    goto :goto_0

    .line 18
    :pswitch_2
    sget-object p3, Lz4/d;->g:[B

    goto :goto_0

    .line 19
    :pswitch_3
    sget-object p3, Lz4/d;->h:[B

    .line 20
    :goto_0
    iput-object p3, p0, Lz/v0;->d:Ljava/io/Serializable;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lz/s1;Lv/a1;Ln1/b;Ln3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz/v0;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lz/v0;->c:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lz/v0;->d:Ljava/io/Serializable;

    .line 5
    iput-object p4, p0, Lz/v0;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x6

    const p3, 0x7fffffff

    .line 6
    invoke-static {p3, p2, p1}, Li2/c;->a(IILcc/a;)Lcc/h;

    move-result-object p1

    iput-object p1, p0, Lz/v0;->f:Ljava/lang/Object;

    .line 7
    new-instance p1, Landroid/support/v4/media/session/t;

    const/16 p2, 0x1d

    invoke-direct {p1, p2}, Landroid/support/v4/media/session/t;-><init>(I)V

    iput-object p1, p0, Lz/v0;->h:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lz/v0;Lz/s1;Lz/q0;FFLy8/c;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v1, p5

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    instance-of v2, v1, Lz/r0;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    check-cast v2, Lz/r0;

    .line 18
    .line 19
    iget v3, v2, Lz/r0;->i:I

    .line 20
    .line 21
    const/high16 v4, -0x80000000

    .line 22
    .line 23
    and-int v6, v3, v4

    .line 24
    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    sub-int/2addr v3, v4

    .line 28
    iput v3, v2, Lz/r0;->i:I

    .line 29
    .line 30
    :goto_0
    move-object v9, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v2, Lz/r0;

    .line 33
    .line 34
    invoke-direct {v2, v5, v1}, Lz/r0;-><init>(Lz/v0;Ly8/c;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    iget-object v1, v9, Lz/r0;->g:Ljava/lang/Object;

    .line 39
    .line 40
    iget v2, v9, Lz/r0;->i:I

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    sget-object v11, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    const/4 v12, 0x2

    .line 46
    const/4 v13, 0x1

    .line 47
    sget-object v14, Lx8/a;->a:Lx8/a;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    if-eq v2, v13, :cond_2

    .line 52
    .line 53
    if-ne v2, v12, :cond_1

    .line 54
    .line 55
    invoke-static {v1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object v11

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_2
    iget v0, v9, Lz/r0;->f:F

    .line 68
    .line 69
    iget-object v2, v9, Lz/r0;->e:Lg9/u;

    .line 70
    .line 71
    iget-object v3, v9, Lz/r0;->d:Lz/s1;

    .line 72
    .line 73
    invoke-static {v1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-static {v1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lg9/x;

    .line 81
    .line 82
    invoke-direct {v3}, Lg9/x;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v5, v0}, Lz/v0;->g(Lz/q0;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v5, Lz/v0;->f:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lcc/h;

    .line 93
    .line 94
    invoke-static {v0}, Lz/v0;->f(Lcc/h;)Lz/q0;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {v5, v0}, Lz/v0;->g(Lz/q0;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Lz/q0;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Lz/q0;->a(Lz/q0;)Lz/q0;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 112
    .line 113
    :cond_4
    new-instance v1, Lg9/u;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v0, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lz/q0;

    .line 121
    .line 122
    iget-wide v12, v0, Lz/q0;->a:J

    .line 123
    .line 124
    invoke-virtual {v7, v12, v13}, Lz/s1;->e(J)J

    .line 125
    .line 126
    .line 127
    move-result-wide v12

    .line 128
    invoke-virtual {v7, v12, v13}, Lz/s1;->g(J)F

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iput v0, v1, Lg9/u;->a:F

    .line 133
    .line 134
    invoke-static {v0}, Lz/p0;->a(F)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    goto/16 :goto_6

    .line 141
    .line 142
    :cond_5
    new-instance v2, Lg9/x;

    .line 143
    .line 144
    invoke-direct {v2}, Lg9/x;-><init>()V

    .line 145
    .line 146
    .line 147
    const/16 v0, 0x1e

    .line 148
    .line 149
    invoke-static {v10, v0}, Lv/d;->b(FI)Lv/k;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, v2, Lg9/x;->b:Ljava/lang/Object;

    .line 154
    .line 155
    new-instance v0, Lz/s0;

    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    move/from16 v4, p3

    .line 159
    .line 160
    move/from16 v6, p4

    .line 161
    .line 162
    invoke-direct/range {v0 .. v8}, Lz/s0;-><init>(Lg9/u;Lg9/x;Lg9/x;FLz/v0;FLz/s1;Lw8/c;)V

    .line 163
    .line 164
    .line 165
    iput-object v7, v9, Lz/r0;->d:Lz/s1;

    .line 166
    .line 167
    iput-object v1, v9, Lz/r0;->e:Lg9/u;

    .line 168
    .line 169
    iput v6, v9, Lz/r0;->f:F

    .line 170
    .line 171
    const/4 v15, 0x1

    .line 172
    iput v15, v9, Lz/r0;->i:I

    .line 173
    .line 174
    invoke-virtual {v5, v7, v0, v9}, Lz/v0;->h(Lz/s1;Lz/s0;Ly8/c;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-ne v0, v14, :cond_6

    .line 179
    .line 180
    goto/16 :goto_5

    .line 181
    .line 182
    :cond_6
    move-object v2, v1

    .line 183
    move v0, v6

    .line 184
    move-object v3, v7

    .line 185
    :goto_2
    iget-object v1, v5, Lz/v0;->h:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v1, Landroid/support/v4/media/session/t;

    .line 188
    .line 189
    iget-object v4, v1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v4, Ll2/c;

    .line 192
    .line 193
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v6}, Ll2/c;->b(F)F

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    iget-object v1, v1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v1, Ll2/c;

    .line 203
    .line 204
    invoke-virtual {v1, v6}, Ll2/c;->b(F)F

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    invoke-static {v4, v1}, Lg5/a;->s(FF)J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    const-wide/16 v12, 0x0

    .line 213
    .line 214
    cmp-long v1, v6, v12

    .line 215
    .line 216
    if-nez v1, :cond_9

    .line 217
    .line 218
    iget v1, v2, Lg9/u;->a:F

    .line 219
    .line 220
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    const/16 v4, 0x64

    .line 225
    .line 226
    int-to-float v4, v4

    .line 227
    div-float/2addr v1, v4

    .line 228
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iget v1, v2, Lg9/u;->a:F

    .line 233
    .line 234
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {v3, v1}, Lz/s1;->d(F)F

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    mul-float v1, v1, v0

    .line 243
    .line 244
    const/16 v0, 0x3e8

    .line 245
    .line 246
    int-to-float v0, v0

    .line 247
    mul-float v1, v1, v0

    .line 248
    .line 249
    cmpg-float v0, v1, v10

    .line 250
    .line 251
    if-nez v0, :cond_7

    .line 252
    .line 253
    move-wide v6, v12

    .line 254
    goto :goto_4

    .line 255
    :cond_7
    iget-object v0, v3, Lz/s1;->d:Lz/w0;

    .line 256
    .line 257
    sget-object v2, Lz/w0;->b:Lz/w0;

    .line 258
    .line 259
    if-ne v0, v2, :cond_8

    .line 260
    .line 261
    invoke-static {v1, v10}, Lg5/a;->s(FF)J

    .line 262
    .line 263
    .line 264
    move-result-wide v0

    .line 265
    :goto_3
    move-wide v6, v0

    .line 266
    goto :goto_4

    .line 267
    :cond_8
    invoke-static {v10, v1}, Lg5/a;->s(FF)J

    .line 268
    .line 269
    .line 270
    move-result-wide v0

    .line 271
    goto :goto_3

    .line 272
    :cond_9
    :goto_4
    move-wide v2, v6

    .line 273
    iget-object v0, v5, Lz/v0;->d:Ljava/io/Serializable;

    .line 274
    .line 275
    check-cast v0, Ln1/b;

    .line 276
    .line 277
    const/4 v4, 0x0

    .line 278
    iput-object v4, v9, Lz/r0;->d:Lz/s1;

    .line 279
    .line 280
    iput-object v4, v9, Lz/r0;->e:Lg9/u;

    .line 281
    .line 282
    const/4 v1, 0x2

    .line 283
    iput v1, v9, Lz/r0;->i:I

    .line 284
    .line 285
    iget-object v0, v0, Lg9/a;->a:Ljava/lang/Object;

    .line 286
    .line 287
    move-object v1, v0

    .line 288
    check-cast v1, Lz/l1;

    .line 289
    .line 290
    iget-object v0, v1, Lz/l1;->B:Lj2/d;

    .line 291
    .line 292
    invoke-virtual {v0}, Lj2/d;->c()Lac/w;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    new-instance v0, Lz/j1;

    .line 297
    .line 298
    const/4 v5, 0x2

    .line 299
    invoke-direct/range {v0 .. v5}, Lz/j1;-><init>(Lz/l1;JLw8/c;I)V

    .line 300
    .line 301
    .line 302
    const/4 v1, 0x3

    .line 303
    invoke-static {v6, v4, v0, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 304
    .line 305
    .line 306
    if-ne v11, v14, :cond_a

    .line 307
    .line 308
    :goto_5
    return-object v14

    .line 309
    :cond_a
    :goto_6
    return-object v11
.end method

.method public static final b(Lz/v0;Lg9/x;Lg9/u;Lz/s1;Lg9/x;JLy8/c;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-wide/from16 v0, p5

    .line 2
    .line 3
    move-object/from16 v2, p7

    .line 4
    .line 5
    instance-of v3, v2, Lz/t0;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Lz/t0;

    .line 11
    .line 12
    iget v4, v3, Lz/t0;->j:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Lz/t0;->j:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Lz/t0;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Ly8/c;-><init>(Lw8/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Lz/t0;->i:Ljava/lang/Object;

    .line 30
    .line 31
    iget v4, v3, Lz/t0;->j:I

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    if-ne v4, v5, :cond_1

    .line 37
    .line 38
    iget-object p0, v3, Lz/t0;->h:Lg9/x;

    .line 39
    .line 40
    iget-object p1, v3, Lz/t0;->g:Lz/s1;

    .line 41
    .line 42
    iget-object v0, v3, Lz/t0;->f:Lg9/u;

    .line 43
    .line 44
    iget-object v1, v3, Lz/t0;->e:Lg9/x;

    .line 45
    .line 46
    iget-object v3, v3, Lz/t0;->d:Lz/v0;

    .line 47
    .line 48
    invoke-static {v2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v7, p0

    .line 52
    move-object v6, p1

    .line 53
    move-object p1, v1

    .line 54
    move-object p0, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    invoke-static {v2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v6, 0x0

    .line 68
    .line 69
    cmp-long v2, v0, v6

    .line 70
    .line 71
    if-gez v2, :cond_3

    .line 72
    .line 73
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_3
    new-instance v2, Lb8/g;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    const/16 v6, 0x1b

    .line 80
    .line 81
    invoke-direct {v2, p0, v4, v6}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 82
    .line 83
    .line 84
    iput-object p0, v3, Lz/t0;->d:Lz/v0;

    .line 85
    .line 86
    iput-object p1, v3, Lz/t0;->e:Lg9/x;

    .line 87
    .line 88
    iput-object p2, v3, Lz/t0;->f:Lg9/u;

    .line 89
    .line 90
    iput-object p3, v3, Lz/t0;->g:Lz/s1;

    .line 91
    .line 92
    iput-object p4, v3, Lz/t0;->h:Lg9/x;

    .line 93
    .line 94
    iput v5, v3, Lz/t0;->j:I

    .line 95
    .line 96
    invoke-static {v0, v1, v2, v3}, Lac/z;->z(JLf9/n;Ly8/c;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 101
    .line 102
    if-ne v2, v0, :cond_4

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_4
    move-object v0, p2

    .line 106
    move-object v6, p3

    .line 107
    move-object v7, p4

    .line 108
    :goto_1
    check-cast v2, Lz/q0;

    .line 109
    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    iget-object v1, p1, Lg9/x;->b:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v1, Lz/q0;

    .line 115
    .line 116
    iget-boolean v1, v1, Lz/q0;->c:Z

    .line 117
    .line 118
    iget-wide v3, v2, Lz/q0;->a:J

    .line 119
    .line 120
    iget-wide v8, v2, Lz/q0;->b:J

    .line 121
    .line 122
    new-instance v10, Lz/q0;

    .line 123
    .line 124
    move/from16 p7, v1

    .line 125
    .line 126
    move-wide p3, v3

    .line 127
    move-wide/from16 p5, v8

    .line 128
    .line 129
    move-object p2, v10

    .line 130
    invoke-direct/range {p2 .. p7}, Lz/q0;-><init>(JJZ)V

    .line 131
    .line 132
    .line 133
    move-object v1, p2

    .line 134
    iput-object v1, p1, Lg9/x;->b:Ljava/lang/Object;

    .line 135
    .line 136
    invoke-virtual {v6, v3, v4}, Lz/s1;->e(J)J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    invoke-virtual {v6, v3, v4}, Lz/s1;->g(J)F

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iput p1, v0, Lg9/u;->a:F

    .line 145
    .line 146
    const/4 p1, 0x0

    .line 147
    const/16 v1, 0x1e

    .line 148
    .line 149
    invoke-static {p1, v1}, Lv/d;->b(FI)Lv/k;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iput-object p1, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-virtual {p0, v2}, Lz/v0;->g(Lz/q0;)V

    .line 156
    .line 157
    .line 158
    iget p0, v0, Lg9/u;->a:F

    .line 159
    .line 160
    invoke-static {p0}, Lz/p0;->a(F)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    xor-int/2addr p0, v5

    .line 165
    goto :goto_2

    .line 166
    :cond_5
    const/4 p0, 0x0

    .line 167
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0
.end method

.method public static f(Lcc/h;)Lz/q0;
    .locals 3

    .line 1
    new-instance v0, Lv0/p;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1, p0}, Lv0/p;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Ll0/v0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v0, v2, v1}, Ll0/v0;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lp9/p1;->z(Lf9/n;)Lwb/k;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lwb/k;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lwb/k;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lz/q0;

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    :goto_1
    move-object v2, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v2, v0}, Lz/q0;->a(Lz/q0;)Lz/q0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-object v2
.end method


# virtual methods
.method public c(Lz/q1;F)F
    .locals 4

    .line 1
    iget-object v0, p0, Lz/v0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lz/s1;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lz/s1;->d(F)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {v0, p2}, Lz/s1;->h(F)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget-object p1, p1, Lz/q1;->a:Lz/s1;

    .line 14
    .line 15
    iget-object p2, p1, Lz/s1;->k:Lz/c1;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {p1, p2, v1, v2, v3}, Lz/s1;->c(Lz/c1;JI)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    invoke-virtual {v0, p1, p2}, Lz/s1;->e(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-virtual {v0, p1, p2}, Lz/s1;->g(J)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public d(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p2, "compressed"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lz/v0;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lz4/c;

    .line 28
    .line 29
    invoke-interface {p1}, Lz4/c;->d()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public e(ILjava/io/Serializable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz/v0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lc/k;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, p1, v2, p0, p2}, Lc/k;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public g(Lz/q0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lz/v0;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/support/v4/media/session/t;

    .line 4
    .line 5
    iget-wide v1, p1, Lz/q0;->b:J

    .line 6
    .line 7
    iget-wide v3, p1, Lz/q0;->a:J

    .line 8
    .line 9
    iget-object p1, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ll2/c;

    .line 12
    .line 13
    const/16 v5, 0x20

    .line 14
    .line 15
    shr-long v5, v3, v5

    .line 16
    .line 17
    long-to-int v6, v5

    .line 18
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {p1, v5, v1, v2}, Ll2/c;->a(FJ)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Ll2/c;

    .line 28
    .line 29
    const-wide v5, 0xffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v3, v5

    .line 35
    long-to-int v0, v3

    .line 36
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Ll2/c;->a(FJ)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public h(Lz/s1;Lz/s0;Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lz/u0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lz/u0;

    .line 7
    .line 8
    iget v1, v0, Lz/u0;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/u0;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/u0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lz/u0;-><init>(Lz/v0;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lz/u0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/u0;->f:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-boolean v2, p0, Lz/v0;->a:Z

    .line 50
    .line 51
    new-instance p3, Lb0/g;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    const/16 v3, 0x1a

    .line 55
    .line 56
    invoke-direct {p3, p1, p2, v1, v3}, Lb0/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 57
    .line 58
    .line 59
    iput v2, v0, Lz/u0;->f:I

    .line 60
    .line 61
    new-instance p1, Lac/k1;

    .line 62
    .line 63
    iget-object p2, v0, Ly8/c;->b:Lw8/h;

    .line 64
    .line 65
    invoke-static {p2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-direct {p1, p2, v0, v1}, Lac/k1;-><init>(Lw8/h;Lw8/c;I)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p1, p3}, Lm9/e0;->G0(Lfc/p;Lfc/p;Lf9/n;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 77
    .line 78
    if-ne p1, p2, :cond_3

    .line 79
    .line 80
    return-object p2

    .line 81
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lz/v0;->a:Z

    .line 83
    .line 84
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 85
    .line 86
    return-object p1
.end method
