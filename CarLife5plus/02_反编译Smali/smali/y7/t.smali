.class public final Ly7/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly7/u;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/b1;

.field public final synthetic f:Lf1/h1;


# direct methods
.method public synthetic constructor <init>(Ly7/u;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/h1;I)V
    .locals 0

    .line 1
    iput p6, p0, Ly7/t;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly7/t;->b:Ly7/u;

    .line 4
    .line 5
    iput-object p2, p0, Ly7/t;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, Ly7/t;->d:Lf1/b1;

    .line 8
    .line 9
    iput-object p4, p0, Ly7/t;->e:Lf1/b1;

    .line 10
    .line 11
    iput-object p5, p0, Ly7/t;->f:Lf1/h1;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Ly7/t;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lf1/s;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    and-int/lit8 p2, p2, 0x3

    .line 19
    .line 20
    if-ne p2, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    new-instance v4, Ly7/t;

    .line 34
    .line 35
    iget-object v9, p0, Ly7/t;->f:Lf1/h1;

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    iget-object v5, p0, Ly7/t;->b:Ly7/u;

    .line 39
    .line 40
    iget-object v6, p0, Ly7/t;->c:Lf1/b1;

    .line 41
    .line 42
    iget-object v7, p0, Ly7/t;->d:Lf1/b1;

    .line 43
    .line 44
    iget-object v8, p0, Ly7/t;->e:Lf1/b1;

    .line 45
    .line 46
    invoke-direct/range {v4 .. v10}, Ly7/t;-><init>(Ly7/u;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/h1;I)V

    .line 47
    .line 48
    .line 49
    const p2, 0x2a966c6d

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v4, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const/16 v0, 0x30

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-static {v2, p2, p1, v0, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-object v1

    .line 63
    :pswitch_0
    move-object v8, p1

    .line 64
    check-cast v8, Lf1/s;

    .line 65
    .line 66
    check-cast p2, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    and-int/lit8 p1, p1, 0x3

    .line 73
    .line 74
    if-ne p1, v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_3
    :goto_2
    sget p1, Ly7/u;->c:I

    .line 89
    .line 90
    iget-object p1, p0, Ly7/t;->c:Lf1/b1;

    .line 91
    .line 92
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    const p2, 0x4c5de2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, p2}, Lf1/s;->W(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 113
    .line 114
    if-ne v0, v2, :cond_4

    .line 115
    .line 116
    new-instance v0, Lu7/e;

    .line 117
    .line 118
    const/16 v5, 0x10

    .line 119
    .line 120
    invoke-direct {v0, p1, v5}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    move-object v5, v0

    .line 127
    check-cast v5, Lf9/a;

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-virtual {v8, v0}, Lf1/s;->p(Z)V

    .line 131
    .line 132
    .line 133
    iget-object v10, p0, Ly7/t;->b:Ly7/u;

    .line 134
    .line 135
    iget-object v6, v10, Ly7/u;->b:Ll8/p;

    .line 136
    .line 137
    invoke-virtual {v8, p2}, Lf1/s;->W(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    iget-object v11, p0, Ly7/t;->d:Lf1/b1;

    .line 145
    .line 146
    if-ne p2, v2, :cond_5

    .line 147
    .line 148
    new-instance p2, La8/s0;

    .line 149
    .line 150
    const/16 v7, 0x1c

    .line 151
    .line 152
    invoke-direct {p2, v11, v7}, La8/s0;-><init>(Lf1/b1;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_5
    move-object v7, p2

    .line 159
    check-cast v7, Lf9/k;

    .line 160
    .line 161
    invoke-virtual {v8, v0}, Lf1/s;->p(Z)V

    .line 162
    .line 163
    .line 164
    sget-object p2, Ll8/p;->l:Ldc/l0;

    .line 165
    .line 166
    const/16 v9, 0xe30

    .line 167
    .line 168
    invoke-static/range {v4 .. v9}, Lj8/p;->b(ZLf9/a;Ll8/p;Lf9/k;Lf1/s;I)V

    .line 169
    .line 170
    .line 171
    iget-object p2, v10, Ly7/u;->b:Ll8/p;

    .line 172
    .line 173
    const v4, -0x615d173a

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v4}, Lf1/s;->W(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    if-ne v5, v2, :cond_6

    .line 184
    .line 185
    new-instance v5, Ly7/i;

    .line 186
    .line 187
    invoke-direct {v5, p1, v11, v3}, Ly7/i;-><init>(Lf1/b1;Lf1/b1;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_6
    check-cast v5, Lf9/n;

    .line 194
    .line 195
    invoke-virtual {v8, v0}, Lf1/s;->p(Z)V

    .line 196
    .line 197
    .line 198
    const/16 p1, 0x238

    .line 199
    .line 200
    invoke-virtual {v10, p2, v5, v8, p1}, Ly7/u;->e(Ll8/p;Lf9/n;Lf1/s;I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v11}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v8, v4}, Lf1/s;->W(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    if-ne p2, v2, :cond_7

    .line 217
    .line 218
    new-instance p2, La8/w;

    .line 219
    .line 220
    const/16 v2, 0x11

    .line 221
    .line 222
    iget-object v3, p0, Ly7/t;->e:Lf1/b1;

    .line 223
    .line 224
    iget-object v4, p0, Ly7/t;->f:Lf1/h1;

    .line 225
    .line 226
    invoke-direct {p2, v2, v3, v4}, La8/w;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    :cond_7
    check-cast p2, Lf9/n;

    .line 233
    .line 234
    invoke-virtual {v8, v0}, Lf1/s;->p(Z)V

    .line 235
    .line 236
    .line 237
    const/16 v0, 0x230

    .line 238
    .line 239
    invoke-virtual {v10, p1, p2, v8, v0}, Ly7/u;->d(Ljava/lang/String;Lf9/n;Lf1/s;I)V

    .line 240
    .line 241
    .line 242
    :goto_3
    return-object v1

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
