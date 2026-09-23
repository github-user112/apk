.class public final synthetic Lj3/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lj3/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lj3/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lj3/c;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lj3/c;->b:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lw0/w0;

    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    move-object/from16 v3, p2

    .line 22
    .line 23
    check-cast v3, Lo2/w;

    .line 24
    .line 25
    move-object/from16 v4, p3

    .line 26
    .line 27
    check-cast v4, Lx1/b;

    .line 28
    .line 29
    move-object/from16 v8, p4

    .line 30
    .line 31
    check-cast v8, Lw0/a0;

    .line 32
    .line 33
    invoke-interface {v3}, Lo2/w;->k()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    const/16 v7, 0x20

    .line 38
    .line 39
    shr-long v9, v5, v7

    .line 40
    .line 41
    long-to-int v10, v9

    .line 42
    int-to-float v9, v10

    .line 43
    const-wide v10, 0xffffffffL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long/2addr v5, v10

    .line 49
    long-to-int v6, v5

    .line 50
    int-to-float v5, v6

    .line 51
    iget-wide v12, v4, Lx1/b;->a:J

    .line 52
    .line 53
    shr-long v14, v12, v7

    .line 54
    .line 55
    long-to-int v4, v14

    .line 56
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/4 v14, 0x0

    .line 61
    cmpg-float v15, v14, v6

    .line 62
    .line 63
    if-gtz v15, :cond_0

    .line 64
    .line 65
    cmpg-float v6, v6, v9

    .line 66
    .line 67
    if-gtz v6, :cond_0

    .line 68
    .line 69
    move-object/from16 p1, v8

    .line 70
    .line 71
    const/16 p2, 0x20

    .line 72
    .line 73
    and-long v7, v12, v10

    .line 74
    .line 75
    long-to-int v6, v7

    .line 76
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    cmpg-float v7, v14, v6

    .line 81
    .line 82
    if-gtz v7, :cond_1

    .line 83
    .line 84
    cmpg-float v6, v6, v5

    .line 85
    .line 86
    if-gtz v6, :cond_1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_0
    move-object/from16 p1, v8

    .line 90
    .line 91
    const/16 p2, 0x20

    .line 92
    .line 93
    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    cmpg-float v6, v6, v14

    .line 98
    .line 99
    if-gez v6, :cond_2

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    cmpl-float v6, v6, v9

    .line 108
    .line 109
    if-lez v6, :cond_3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    :goto_0
    and-long v6, v12, v10

    .line 117
    .line 118
    long-to-int v4, v6

    .line 119
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    cmpg-float v6, v6, v14

    .line 124
    .line 125
    if-gez v6, :cond_4

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    goto :goto_1

    .line 129
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    cmpl-float v6, v6, v5

    .line 134
    .line 135
    if-lez v6, :cond_5

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    :goto_1
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    int-to-long v6, v4

    .line 147
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    int-to-long v4, v4

    .line 152
    shl-long v6, v6, p2

    .line 153
    .line 154
    and-long/2addr v4, v10

    .line 155
    or-long v12, v6, v4

    .line 156
    .line 157
    :goto_2
    invoke-virtual {v2, v3, v12, v13}, Lw0/w0;->b(Lo2/w;J)J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    const-wide v5, 0x7fffffff7fffffffL

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    and-long/2addr v5, v3

    .line 167
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    cmp-long v9, v5, v7

    .line 173
    .line 174
    if-eqz v9, :cond_6

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Lw0/w0;->l(Z)V

    .line 177
    .line 178
    .line 179
    const/4 v1, 0x0

    .line 180
    iput-object v1, v2, Lw0/w0;->t:Lw0/p0;

    .line 181
    .line 182
    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    const/4 v7, 0x0

    .line 188
    move-object/from16 v8, p1

    .line 189
    .line 190
    invoke-virtual/range {v2 .. v8}, Lw0/w0;->o(JJZLw0/a0;)Z

    .line 191
    .line 192
    .line 193
    iget-object v1, v2, Lw0/w0;->h:Lw1/o;

    .line 194
    .line 195
    invoke-static {v1}, Lw1/o;->b(Lw1/o;)V

    .line 196
    .line 197
    .line 198
    const/4 v1, 0x0

    .line 199
    iput-boolean v1, v2, Lw0/w0;->x:Z

    .line 200
    .line 201
    invoke-virtual {v2}, Lw0/w0;->p()V

    .line 202
    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    iput-boolean v1, v2, Lw0/w0;->u:Z

    .line 206
    .line 207
    :cond_6
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 208
    .line 209
    return-object v1

    .line 210
    :pswitch_0
    iget-object v1, v0, Lj3/c;->b:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v1, Lj3/d;

    .line 213
    .line 214
    move-object/from16 v2, p1

    .line 215
    .line 216
    check-cast v2, Lf3/n;

    .line 217
    .line 218
    move-object/from16 v3, p2

    .line 219
    .line 220
    check-cast v3, Lf3/k;

    .line 221
    .line 222
    move-object/from16 v4, p3

    .line 223
    .line 224
    check-cast v4, Lf3/i;

    .line 225
    .line 226
    move-object/from16 v5, p4

    .line 227
    .line 228
    check-cast v5, Lf3/j;

    .line 229
    .line 230
    iget-object v6, v1, Lj3/d;->e:Lf3/d;

    .line 231
    .line 232
    iget v4, v4, Lf3/i;->a:I

    .line 233
    .line 234
    iget v5, v5, Lf3/j;->a:I

    .line 235
    .line 236
    check-cast v6, Lf3/e;

    .line 237
    .line 238
    invoke-virtual {v6, v2, v3, v4, v5}, Lf3/e;->b(Lf3/n;Lf3/k;II)Lf3/p;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    instance-of v3, v2, Lf3/p;

    .line 243
    .line 244
    const-string v4, "null cannot be cast to non-null type android.graphics.Typeface"

    .line 245
    .line 246
    if-nez v3, :cond_7

    .line 247
    .line 248
    new-instance v3, La2/b;

    .line 249
    .line 250
    iget-object v5, v1, Lj3/d;->j:La2/b;

    .line 251
    .line 252
    invoke-direct {v3, v2, v5}, La2/b;-><init>(Lf3/p;La2/b;)V

    .line 253
    .line 254
    .line 255
    iput-object v3, v1, Lj3/d;->j:La2/b;

    .line 256
    .line 257
    iget-object v1, v3, La2/b;->d:Ljava/lang/Object;

    .line 258
    .line 259
    invoke-static {v1, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    check-cast v1, Landroid/graphics/Typeface;

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_7
    iget-object v1, v2, Lf3/p;->a:Ljava/lang/Object;

    .line 266
    .line 267
    invoke-static {v1, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    check-cast v1, Landroid/graphics/Typeface;

    .line 271
    .line 272
    :goto_3
    return-object v1

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
