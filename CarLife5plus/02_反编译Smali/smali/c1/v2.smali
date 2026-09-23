.class public final Lc1/v2;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:Ljava/lang/Object;

.field public synthetic h:F


# direct methods
.method public synthetic constructor <init>(Lc1/x2;FLw8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Lc1/v2;->e:I

    iput-object p1, p0, Lc1/v2;->g:Ljava/lang/Object;

    iput p2, p0, Lc1/v2;->h:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lx2/c;Lw8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lc1/v2;->e:I

    .line 2
    iput-object p1, p0, Lc1/v2;->g:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lc1/v2;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    check-cast p2, Lw8/c;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1, p2}, Lc1/v2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lc1/v2;

    .line 23
    .line 24
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lc1/v2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :pswitch_0
    check-cast p1, Lac/w;

    .line 32
    .line 33
    check-cast p2, Lw8/c;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Lc1/v2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lc1/v2;

    .line 40
    .line 41
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lc1/v2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :pswitch_1
    check-cast p1, Lac/w;

    .line 49
    .line 50
    check-cast p2, Lw8/c;

    .line 51
    .line 52
    invoke-virtual {p0, p1, p2}, Lc1/v2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lc1/v2;

    .line 57
    .line 58
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lc1/v2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    iget v0, p0, Lc1/v2;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lc1/v2;

    .line 7
    .line 8
    iget-object v1, p0, Lc1/v2;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lx2/c;

    .line 11
    .line 12
    invoke-direct {v0, v1, p2}, Lc1/v2;-><init>(Lx2/c;Lw8/c;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, v0, Lc1/v2;->h:F

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    new-instance p1, Lc1/v2;

    .line 25
    .line 26
    iget-object v0, p0, Lc1/v2;->g:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lc1/x2;

    .line 29
    .line 30
    iget v1, p0, Lc1/v2;->h:F

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {p1, v0, v1, p2, v2}, Lc1/v2;-><init>(Lc1/x2;FLw8/c;I)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_1
    new-instance p1, Lc1/v2;

    .line 38
    .line 39
    iget-object v0, p0, Lc1/v2;->g:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lc1/x2;

    .line 42
    .line 43
    iget v1, p0, Lc1/v2;->h:F

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {p1, v0, v1, p2, v2}, Lc1/v2;-><init>(Lc1/x2;FLw8/c;I)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lc1/v2;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc1/v2;->g:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx2/c;

    .line 9
    .line 10
    iget v1, p0, Lc1/v2;->f:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const-wide v3, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lc1/v2;->h:F

    .line 38
    .line 39
    iget-object v1, v0, Lx2/c;->a:Ly2/m;

    .line 40
    .line 41
    iget-object v1, v1, Ly2/m;->d:Ly2/j;

    .line 42
    .line 43
    sget-object v5, Ly2/i;->e:Ly2/u;

    .line 44
    .line 45
    iget-object v1, v1, Ly2/j;->a:Ls/h0;

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    :cond_2
    check-cast v1, Lf9/n;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object v0, v0, Lx2/c;->a:Ly2/m;

    .line 59
    .line 60
    iget-object v0, v0, Ly2/m;->d:Ly2/j;

    .line 61
    .line 62
    sget-object v5, Ly2/r;->u:Ly2/u;

    .line 63
    .line 64
    invoke-virtual {v0, v5}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ly2/h;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    int-to-long v5, v0

    .line 76
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    int-to-long v7, p1

    .line 81
    const/16 p1, 0x20

    .line 82
    .line 83
    shl-long/2addr v5, p1

    .line 84
    and-long/2addr v7, v3

    .line 85
    or-long/2addr v5, v7

    .line 86
    new-instance p1, Lx1/b;

    .line 87
    .line 88
    invoke-direct {p1, v5, v6}, Lx1/b;-><init>(J)V

    .line 89
    .line 90
    .line 91
    iput v2, p0, Lc1/v2;->f:I

    .line 92
    .line 93
    invoke-interface {v1, p1, p0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 98
    .line 99
    if-ne p1, v0, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    :goto_0
    check-cast p1, Lx1/b;

    .line 103
    .line 104
    iget-wide v0, p1, Lx1/b;->a:J

    .line 105
    .line 106
    and-long/2addr v0, v3

    .line 107
    long-to-int p1, v0

    .line 108
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    new-instance v0, Ljava/lang/Float;

    .line 113
    .line 114
    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-object v0

    .line 118
    :cond_4
    const-string p1, "Required value was null."

    .line 119
    .line 120
    invoke-static {p1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    throw p1

    .line 125
    :pswitch_0
    iget-object v0, p0, Lc1/v2;->g:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Lc1/x2;

    .line 128
    .line 129
    iget v1, p0, Lc1/v2;->f:I

    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    if-ne v1, v2, :cond_5

    .line 135
    .line 136
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    move-object v4, p0

    .line 140
    goto :goto_3

    .line 141
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1

    .line 149
    :cond_6
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lc1/x2;->r:Lv/c;

    .line 153
    .line 154
    if-eqz v1, :cond_9

    .line 155
    .line 156
    iget p1, p0, Lc1/v2;->h:F

    .line 157
    .line 158
    const/4 v3, 0x1

    .line 159
    new-instance v2, Ljava/lang/Float;

    .line 160
    .line 161
    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    .line 162
    .line 163
    .line 164
    iget-boolean p1, v0, Lc1/x2;->q:Z

    .line 165
    .line 166
    if-eqz p1, :cond_7

    .line 167
    .line 168
    sget-object p1, Landroidx/compose/material3/a;->f:Lv/e0;

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    sget-object p1, Landroidx/compose/material3/a;->g:Lv/v0;

    .line 172
    .line 173
    :goto_2
    iput v3, p0, Lc1/v2;->f:I

    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    const/16 v6, 0xc

    .line 177
    .line 178
    move-object v5, p0

    .line 179
    move-object v3, p1

    .line 180
    invoke-static/range {v1 .. v6}, Lv/c;->c(Lv/c;Ljava/lang/Object;Lv/j;Lf9/k;Ly8/i;I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    move-object v4, v5

    .line 185
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 186
    .line 187
    if-ne p1, v0, :cond_8

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_8
    :goto_3
    check-cast p1, Lv/h;

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_9
    move-object v4, p0

    .line 194
    :goto_4
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 195
    .line 196
    :goto_5
    return-object v0

    .line 197
    :pswitch_1
    move-object v4, p0

    .line 198
    iget-object v0, v4, Lc1/v2;->g:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Lc1/x2;

    .line 201
    .line 202
    iget v1, v4, Lc1/v2;->f:I

    .line 203
    .line 204
    const/4 v2, 0x1

    .line 205
    if-eqz v1, :cond_b

    .line 206
    .line 207
    if-ne v1, v2, :cond_a

    .line 208
    .line 209
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 216
    .line 217
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_b
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    move-object p1, v0

    .line 225
    iget-object v0, p1, Lc1/x2;->s:Lv/c;

    .line 226
    .line 227
    if-eqz v0, :cond_e

    .line 228
    .line 229
    iget v1, v4, Lc1/v2;->h:F

    .line 230
    .line 231
    move v3, v1

    .line 232
    new-instance v1, Ljava/lang/Float;

    .line 233
    .line 234
    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(F)V

    .line 235
    .line 236
    .line 237
    iget-boolean p1, p1, Lc1/x2;->q:Z

    .line 238
    .line 239
    if-eqz p1, :cond_c

    .line 240
    .line 241
    sget-object p1, Landroidx/compose/material3/a;->f:Lv/e0;

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_c
    sget-object p1, Landroidx/compose/material3/a;->g:Lv/v0;

    .line 245
    .line 246
    :goto_6
    iput v2, v4, Lc1/v2;->f:I

    .line 247
    .line 248
    const/4 v3, 0x0

    .line 249
    const/16 v5, 0xc

    .line 250
    .line 251
    move-object v2, p1

    .line 252
    invoke-static/range {v0 .. v5}, Lv/c;->c(Lv/c;Ljava/lang/Object;Lv/j;Lf9/k;Ly8/i;I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 257
    .line 258
    if-ne p1, v0, :cond_d

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_d
    :goto_7
    check-cast p1, Lv/h;

    .line 262
    .line 263
    :cond_e
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 264
    .line 265
    :goto_8
    return-object v0

    .line 266
    nop

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
