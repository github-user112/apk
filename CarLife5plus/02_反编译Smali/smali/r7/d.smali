.class public final Lr7/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr7/f;


# direct methods
.method public synthetic constructor <init>(Lr7/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr7/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lr7/d;->b:Lr7/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lr7/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/s;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    and-int/lit8 p2, p2, 0x3

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    new-instance p2, Lr7/d;

    .line 31
    .line 32
    iget-object v0, p0, Lr7/d;->b:Lr7/f;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {p2, v0, v1}, Lr7/d;-><init>(Lr7/f;I)V

    .line 36
    .line 37
    .line 38
    const v0, -0x6bdd6032

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const/16 v0, 0x30

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-static {v1, p2, p1, v0, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 50
    .line 51
    .line 52
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_0
    move-object v4, p1

    .line 56
    check-cast v4, Lf1/s;

    .line 57
    .line 58
    check-cast p2, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    and-int/lit8 p1, p1, 0x3

    .line 65
    .line 66
    const/4 p2, 0x2

    .line 67
    if-ne p1, p2, :cond_3

    .line 68
    .line 69
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_3
    :goto_2
    const p1, 0x6e3c21fe

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, p1}, Lf1/s;->W(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-object p2, Lf1/n;->a:Lf1/w0;

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    if-ne p1, p2, :cond_4

    .line 95
    .line 96
    invoke-static {v7}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v4, p1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    check-cast p1, Lf1/b1;

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-virtual {v4, v8}, Lf1/s;->p(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lr7/d;->b:Lr7/f;

    .line 110
    .line 111
    iget-object v9, v0, Lr7/f;->c:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    const/4 v0, 0x0

    .line 118
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_a

    .line 123
    .line 124
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    add-int/lit8 v11, v0, 0x1

    .line 129
    .line 130
    if-ltz v0, :cond_9

    .line 131
    .line 132
    move-object v12, v1

    .line 133
    check-cast v12, Lr7/g;

    .line 134
    .line 135
    new-instance v1, La8/c0;

    .line 136
    .line 137
    const/4 v2, 0x7

    .line 138
    invoke-direct {v1, v2, v12}, La8/c0;-><init>(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const v2, -0xd66e0ea

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v1, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    move v2, v0

    .line 149
    move-object v0, v1

    .line 150
    sget-object v1, Lr7/b;->e:Ln1/c;

    .line 151
    .line 152
    invoke-static {v9}, Lp9/x1;->u(Ljava/util/List;)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eq v2, v3, :cond_5

    .line 157
    .line 158
    const/4 v2, 0x1

    .line 159
    goto :goto_4

    .line 160
    :cond_5
    const/4 v2, 0x0

    .line 161
    :goto_4
    const v3, -0x615d173a

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v3}, Lf1/s;->W(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    if-nez v3, :cond_6

    .line 176
    .line 177
    if-ne v5, p2, :cond_7

    .line 178
    .line 179
    :cond_6
    new-instance v5, La8/n0;

    .line 180
    .line 181
    const/16 v3, 0x11

    .line 182
    .line 183
    invoke-direct {v5, v3, v12, p1}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_7
    move-object v3, v5

    .line 190
    check-cast v3, Lf9/a;

    .line 191
    .line 192
    invoke-virtual {v4, v8}, Lf1/s;->p(Z)V

    .line 193
    .line 194
    .line 195
    const/16 v5, 0x36

    .line 196
    .line 197
    const/4 v6, 0x0

    .line 198
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 199
    .line 200
    .line 201
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Ljava/lang/String;

    .line 206
    .line 207
    invoke-interface {v12}, Lr7/g;->getName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    const v1, 0x4c5de2

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v1}, Lf1/s;->W(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    if-ne v1, p2, :cond_8

    .line 226
    .line 227
    new-instance v1, Lj8/h;

    .line 228
    .line 229
    const/16 v2, 0x1c

    .line 230
    .line 231
    invoke-direct {v1, p1, v2}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_8
    check-cast v1, Lf9/a;

    .line 238
    .line 239
    invoke-virtual {v4, v8}, Lf1/s;->p(Z)V

    .line 240
    .line 241
    .line 242
    const/16 v2, 0x30

    .line 243
    .line 244
    invoke-interface {v12, v0, v1, v4, v2}, Lr7/g;->d(ZLf9/a;Lf1/s;I)V

    .line 245
    .line 246
    .line 247
    move v0, v11

    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :cond_9
    invoke-static {}, Lp9/x1;->L()V

    .line 251
    .line 252
    .line 253
    throw v7

    .line 254
    :cond_a
    :goto_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 255
    .line 256
    return-object p1

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
