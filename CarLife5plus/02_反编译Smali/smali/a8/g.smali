.class public final synthetic La8/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, La8/g;->a:I

    iput-object p3, p0, La8/g;->c:Ljava/lang/Object;

    iput-object p4, p0, La8/g;->d:Ljava/lang/Object;

    iput p1, p0, La8/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh0/v;ILjava/lang/Object;II)V
    .locals 0

    .line 2
    iput p5, p0, La8/g;->a:I

    iput-object p1, p0, La8/g;->c:Ljava/lang/Object;

    iput p2, p0, La8/g;->b:I

    iput-object p3, p0, La8/g;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, La8/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr1/p;

    .line 9
    .line 10
    iget-object v1, p0, La8/g;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lf9/k;

    .line 13
    .line 14
    check-cast p1, Lf1/s;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget p2, p0, La8/g;->b:I

    .line 22
    .line 23
    or-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-static {p2, p1, v1, v0}, Lp4/e;->a(ILf1/s;Lf9/k;Lr1/p;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_0
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lv/s0;

    .line 38
    .line 39
    iget-object v1, p0, La8/g;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/lang/Enum;

    .line 42
    .line 43
    check-cast p1, Lf1/s;

    .line 44
    .line 45
    check-cast p2, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget p2, p0, La8/g;->b:I

    .line 51
    .line 52
    or-int/lit8 p2, p2, 0x1

    .line 53
    .line 54
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {v0, v1, p1, p2}, Lv/s0;->a(Ljava/lang/Enum;Lf1/s;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ln1/c;

    .line 65
    .line 66
    check-cast p1, Lf1/s;

    .line 67
    .line 68
    check-cast p2, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    iget p2, p0, La8/g;->b:I

    .line 74
    .line 75
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    or-int/lit8 p2, p2, 0x1

    .line 80
    .line 81
    iget-object v1, p0, La8/g;->d:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v0, v1, p1, p2}, Ln1/c;->d(Ljava/lang/Object;Lf1/s;I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lm7/k;

    .line 90
    .line 91
    iget-object v1, p0, La8/g;->d:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Ljava/util/List;

    .line 94
    .line 95
    check-cast p1, Lf1/s;

    .line 96
    .line 97
    check-cast p2, Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget p2, p0, La8/g;->b:I

    .line 103
    .line 104
    or-int/lit8 p2, p2, 0x1

    .line 105
    .line 106
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-virtual {v0, v1, p1, p2}, Lm7/k;->c(Ljava/util/List;Lf1/s;I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Lw0/r1;

    .line 117
    .line 118
    iget-object v1, p0, La8/g;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ln1/c;

    .line 121
    .line 122
    check-cast p1, Lf1/s;

    .line 123
    .line 124
    check-cast p2, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget p2, p0, La8/g;->b:I

    .line 130
    .line 131
    or-int/lit8 p2, p2, 0x1

    .line 132
    .line 133
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-static {v0, v1, p1, p2}, Ll0/p0;->d(Lw0/r1;Ln1/c;Lf1/s;I)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :pswitch_4
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Ljava/lang/String;

    .line 144
    .line 145
    iget-object v1, p0, La8/g;->d:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v1, Lf9/a;

    .line 148
    .line 149
    check-cast p1, Lf1/s;

    .line 150
    .line 151
    check-cast p2, Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    iget p2, p0, La8/g;->b:I

    .line 157
    .line 158
    or-int/lit8 p2, p2, 0x1

    .line 159
    .line 160
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-static {v0, v1, p1, p2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :pswitch_5
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Lg0/h;

    .line 172
    .line 173
    check-cast p1, Lf1/s;

    .line 174
    .line 175
    check-cast p2, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const/4 p2, 0x1

    .line 181
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    iget v1, p0, La8/g;->b:I

    .line 186
    .line 187
    iget-object v2, p0, La8/g;->d:Ljava/lang/Object;

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2, p1, p2}, Lg0/h;->e(ILjava/lang/Object;Lf1/s;I)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :pswitch_6
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, [Lf1/u1;

    .line 197
    .line 198
    iget-object v1, p0, La8/g;->d:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v1, Lf9/n;

    .line 201
    .line 202
    check-cast p1, Lf1/s;

    .line 203
    .line 204
    check-cast p2, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    iget p2, p0, La8/g;->b:I

    .line 210
    .line 211
    or-int/lit8 p2, p2, 0x1

    .line 212
    .line 213
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    invoke-static {v0, v1, p1, p2}, Lf1/b;->b([Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :pswitch_7
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Lf1/u1;

    .line 225
    .line 226
    iget-object v1, p0, La8/g;->d:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v1, Lf9/n;

    .line 229
    .line 230
    check-cast p1, Lf1/s;

    .line 231
    .line 232
    check-cast p2, Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    iget p2, p0, La8/g;->b:I

    .line 238
    .line 239
    or-int/lit8 p2, p2, 0x1

    .line 240
    .line 241
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    invoke-static {v0, v1, p1, p2}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :pswitch_8
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v0, Lf0/i;

    .line 253
    .line 254
    check-cast p1, Lf1/s;

    .line 255
    .line 256
    check-cast p2, Ljava/lang/Integer;

    .line 257
    .line 258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    const/4 p2, 0x1

    .line 262
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    iget v1, p0, La8/g;->b:I

    .line 267
    .line 268
    iget-object v2, p0, La8/g;->d:Ljava/lang/Object;

    .line 269
    .line 270
    invoke-virtual {v0, v1, v2, p1, p2}, Lf0/i;->e(ILjava/lang/Object;Lf1/s;I)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :pswitch_9
    iget-object v0, p0, La8/g;->c:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v0, La8/t;

    .line 278
    .line 279
    iget-object v1, p0, La8/g;->d:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v1, Ljava/util/List;

    .line 282
    .line 283
    check-cast p1, Lf1/s;

    .line 284
    .line 285
    check-cast p2, Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 288
    .line 289
    .line 290
    iget p2, p0, La8/g;->b:I

    .line 291
    .line 292
    or-int/lit8 p2, p2, 0x1

    .line 293
    .line 294
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    invoke-virtual {v0, v1, p1, p2}, La8/t;->a(Ljava/util/List;Lf1/s;I)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
