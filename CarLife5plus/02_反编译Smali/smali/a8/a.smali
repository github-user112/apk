.class public final La8/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final b:La8/a;

.field public static final c:La8/a;

.field public static final d:La8/a;

.field public static final e:La8/a;

.field public static final f:La8/a;

.field public static final g:La8/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La8/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, La8/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, La8/a;->b:La8/a;

    .line 8
    .line 9
    new-instance v0, La8/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, La8/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, La8/a;->c:La8/a;

    .line 16
    .line 17
    new-instance v0, La8/a;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, La8/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, La8/a;->d:La8/a;

    .line 24
    .line 25
    new-instance v0, La8/a;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, La8/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, La8/a;->e:La8/a;

    .line 32
    .line 33
    new-instance v0, La8/a;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, La8/a;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, La8/a;->f:La8/a;

    .line 40
    .line 41
    new-instance v0, La8/a;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, La8/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, La8/a;->g:La8/a;

    .line 48
    .line 49
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La8/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8/a;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Lf1/s;

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    and-int/lit8 v2, v2, 0x3

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 37
    const/4 v4, 0x6

    .line 38
    const-string v5, "\u6dfb\u52a0"

    .line 39
    .line 40
    invoke-static {v5, v2, v1, v4, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v2, v1}, Lg5/a;->d(ILf1/s;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_0
    move-object/from16 v1, p1

    .line 51
    .line 52
    check-cast v1, Lf1/s;

    .line 53
    .line 54
    move-object/from16 v2, p2

    .line 55
    .line 56
    check-cast v2, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    and-int/lit8 v2, v2, 0x3

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    if-ne v2, v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    :goto_2
    const/4 v2, 0x0

    .line 79
    const/4 v4, 0x6

    .line 80
    const-string v5, "\u6062\u590d"

    .line 81
    .line 82
    invoke-static {v5, v2, v1, v4, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-static {v2, v1}, Lg5/a;->d(ILf1/s;)V

    .line 87
    .line 88
    .line 89
    :goto_3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 90
    .line 91
    return-object v1

    .line 92
    :pswitch_1
    move-object/from16 v1, p1

    .line 93
    .line 94
    check-cast v1, Lf1/s;

    .line 95
    .line 96
    move-object/from16 v2, p2

    .line 97
    .line 98
    check-cast v2, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    and-int/lit8 v2, v2, 0x3

    .line 105
    .line 106
    const/4 v3, 0x2

    .line 107
    if-ne v2, v3, :cond_5

    .line 108
    .line 109
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_4

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    :goto_4
    const/4 v2, 0x0

    .line 121
    const/4 v4, 0x6

    .line 122
    const-string v5, "\u6dfb\u52a0"

    .line 123
    .line 124
    invoke-static {v5, v2, v1, v4, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 125
    .line 126
    .line 127
    :goto_5
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 128
    .line 129
    return-object v1

    .line 130
    :pswitch_2
    move-object/from16 v19, p1

    .line 131
    .line 132
    check-cast v19, Lf1/s;

    .line 133
    .line 134
    move-object/from16 v1, p2

    .line 135
    .line 136
    check-cast v1, Ljava/lang/Number;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    and-int/lit8 v1, v1, 0x3

    .line 143
    .line 144
    const/4 v2, 0x2

    .line 145
    if-ne v1, v2, :cond_7

    .line 146
    .line 147
    invoke-virtual/range {v19 .. v19}, Lf1/s;->z()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_6

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lf1/s;->Q()V

    .line 155
    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_7
    :goto_6
    const/16 v21, 0x0

    .line 159
    .line 160
    const v22, 0x1fffe

    .line 161
    .line 162
    .line 163
    const-string v2, "\u4efb\u52a1\u540d\u79f0"

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    const-wide/16 v4, 0x0

    .line 167
    .line 168
    const-wide/16 v6, 0x0

    .line 169
    .line 170
    const/4 v8, 0x0

    .line 171
    const-wide/16 v9, 0x0

    .line 172
    .line 173
    const/4 v11, 0x0

    .line 174
    const-wide/16 v12, 0x0

    .line 175
    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v15, 0x0

    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    const/16 v17, 0x0

    .line 181
    .line 182
    const/16 v18, 0x0

    .line 183
    .line 184
    const/16 v20, 0x6

    .line 185
    .line 186
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 187
    .line 188
    .line 189
    :goto_7
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 190
    .line 191
    return-object v1

    .line 192
    :pswitch_3
    move-object/from16 v1, p1

    .line 193
    .line 194
    check-cast v1, Lf1/s;

    .line 195
    .line 196
    move-object/from16 v2, p2

    .line 197
    .line 198
    check-cast v2, Ljava/lang/Number;

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    and-int/lit8 v2, v2, 0x3

    .line 205
    .line 206
    const/4 v3, 0x2

    .line 207
    if-ne v2, v3, :cond_9

    .line 208
    .line 209
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_8

    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_8
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 217
    .line 218
    .line 219
    goto :goto_9

    .line 220
    :cond_9
    :goto_8
    const-string v2, "\u6620\u5c04\u5217\u8868\u4e3a\u7a7a"

    .line 221
    .line 222
    const/4 v4, 0x0

    .line 223
    const/4 v5, 0x6

    .line 224
    invoke-static {v2, v4, v1, v5, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 225
    .line 226
    .line 227
    const-string v2, "\u70b9\u51fb\u6062\u590d\u9ed8\u8ba4\u6620\u5c04\u8bbe\u7f6e"

    .line 228
    .line 229
    invoke-static {v2, v1, v5}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 230
    .line 231
    .line 232
    :goto_9
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 233
    .line 234
    return-object v1

    .line 235
    :pswitch_4
    move-object/from16 v1, p1

    .line 236
    .line 237
    check-cast v1, Lf1/s;

    .line 238
    .line 239
    move-object/from16 v2, p2

    .line 240
    .line 241
    check-cast v2, Ljava/lang/Number;

    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    and-int/lit8 v2, v2, 0x3

    .line 248
    .line 249
    const/4 v3, 0x2

    .line 250
    if-ne v2, v3, :cond_b

    .line 251
    .line 252
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-nez v2, :cond_a

    .line 257
    .line 258
    goto :goto_a

    .line 259
    :cond_a
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 260
    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_b
    :goto_a
    const/4 v2, 0x0

    .line 264
    const/4 v4, 0x6

    .line 265
    const-string v5, "\u67e5\u770b"

    .line 266
    .line 267
    invoke-static {v5, v2, v1, v4, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 268
    .line 269
    .line 270
    const/4 v2, 0x0

    .line 271
    invoke-static {v2, v1}, Lg5/a;->d(ILf1/s;)V

    .line 272
    .line 273
    .line 274
    :goto_b
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 275
    .line 276
    return-object v1

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
