.class public final Ld1/k;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lr8/e;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;I)V
    .locals 0

    .line 1
    iput p4, p0, Ld1/k;->a:I

    iput-object p1, p0, Ld1/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld1/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld1/k;->d:Lr8/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lr8/e;II)V
    .locals 0

    .line 2
    iput p5, p0, Ld1/k;->a:I

    iput-object p1, p0, Ld1/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld1/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld1/k;->d:Lr8/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Ld1/k;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    sget-object v4, Lr8/z;->a:Lr8/z;

    .line 7
    .line 8
    iget-object v5, p0, Ld1/k;->d:Lr8/e;

    .line 9
    .line 10
    iget-object v6, p0, Ld1/k;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v7, p0, Ld1/k;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Lf1/s;

    .line 18
    .line 19
    move-object/from16 v0, p2

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    check-cast v7, Lq2/q1;

    .line 27
    .line 28
    check-cast v6, Lr2/u0;

    .line 29
    .line 30
    check-cast v5, Lf9/n;

    .line 31
    .line 32
    invoke-static {v3}, Lf1/b;->y(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v7, v6, v5, p1, v0}, Lr2/i1;->a(Lq2/q1;Lr2/u0;Lf9/n;Lf1/s;I)V

    .line 37
    .line 38
    .line 39
    return-object v4

    .line 40
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 41
    .line 42
    move-object/from16 v0, p2

    .line 43
    .line 44
    check-cast v0, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    and-int/lit8 v8, v0, 0x3

    .line 51
    .line 52
    if-eq v8, v1, :cond_0

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    and-int/2addr v0, v3

    .line 58
    invoke-virtual {p1, v0, v1}, Lf1/s;->N(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    check-cast v7, Lr2/u;

    .line 65
    .line 66
    check-cast v6, Lr2/u0;

    .line 67
    .line 68
    check-cast v5, Lf9/n;

    .line 69
    .line 70
    invoke-static {v7, v6, v5, p1, v2}, Lr2/i1;->a(Lq2/q1;Lr2/u0;Lf9/n;Lf1/s;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-object v4

    .line 78
    :pswitch_1
    check-cast p1, Lf1/s;

    .line 79
    .line 80
    move-object/from16 v0, p2

    .line 81
    .line 82
    check-cast v0, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    check-cast v7, Lf9/k;

    .line 88
    .line 89
    check-cast v6, Lr1/p;

    .line 90
    .line 91
    check-cast v5, Lf9/k;

    .line 92
    .line 93
    const/16 v0, 0x31

    .line 94
    .line 95
    invoke-static {v0}, Lf1/b;->y(I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-static {v7, v6, v5, p1, v0}, Landroidx/compose/ui/viewinterop/a;->b(Lf9/k;Lr1/p;Lf9/k;Lf1/s;I)V

    .line 100
    .line 101
    .line 102
    return-object v4

    .line 103
    :pswitch_2
    check-cast p1, Lf1/s;

    .line 104
    .line 105
    move-object/from16 v0, p2

    .line 106
    .line 107
    check-cast v0, Ljava/lang/Number;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 110
    .line 111
    .line 112
    check-cast v7, Lo2/h1;

    .line 113
    .line 114
    check-cast v6, Lr1/p;

    .line 115
    .line 116
    check-cast v5, Lf9/n;

    .line 117
    .line 118
    const/16 v0, 0x9

    .line 119
    .line 120
    invoke-static {v0}, Lf1/b;->y(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-static {v7, v6, v5, p1, v0}, Lo2/d1;->a(Lo2/h1;Lr1/p;Lf9/n;Lf1/s;I)V

    .line 125
    .line 126
    .line 127
    return-object v4

    .line 128
    :pswitch_3
    check-cast p1, Lf1/s;

    .line 129
    .line 130
    move-object/from16 v0, p2

    .line 131
    .line 132
    check-cast v0, Ljava/lang/Number;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    and-int/lit8 v0, v0, 0x3

    .line 139
    .line 140
    if-ne v0, v1, :cond_3

    .line 141
    .line 142
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_2

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :cond_3
    :goto_2
    sget-object v0, Lr1/m;->a:Lr1/m;

    .line 155
    .line 156
    const-string v1, "Container"

    .line 157
    .line 158
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v8, Ld1/j;

    .line 163
    .line 164
    move-object v9, v7

    .line 165
    check-cast v9, Lf1/b1;

    .line 166
    .line 167
    const-string v12, "getValue()Ljava/lang/Object;"

    .line 168
    .line 169
    const/4 v13, 0x0

    .line 170
    const-class v10, Lf1/b1;

    .line 171
    .line 172
    const-string v11, "value"

    .line 173
    .line 174
    invoke-direct/range {v8 .. v13}, Lg9/s;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    check-cast v6, Ld0/h0;

    .line 178
    .line 179
    sget v1, Lc1/b1;->a:F

    .line 180
    .line 181
    new-instance v1, Lc1/a1;

    .line 182
    .line 183
    invoke-direct {v1, v2, v8, v6}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/a;->c(Lr1/p;Lf9/k;)Lr1/p;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v5, Ln1/c;

    .line 191
    .line 192
    sget-object v1, Lr1/c;->a:Lr1/h;

    .line 193
    .line 194
    invoke-static {v1, v3}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {p1}, Lf1/b;->p(Lf1/s;)I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-static {p1, v0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    sget-object v8, Lq2/j;->d0:Lq2/i;

    .line 211
    .line 212
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    sget-object v8, Lq2/i;->b:Lq2/a0;

    .line 216
    .line 217
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 218
    .line 219
    .line 220
    iget-boolean v9, p1, Lf1/s;->S:Z

    .line 221
    .line 222
    if-eqz v9, :cond_4

    .line 223
    .line 224
    invoke-virtual {p1, v8}, Lf1/s;->k(Lf9/a;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_4
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 229
    .line 230
    .line 231
    :goto_3
    sget-object v8, Lq2/i;->e:Lq2/h;

    .line 232
    .line 233
    invoke-static {p1, v8, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    sget-object v1, Lq2/i;->d:Lq2/h;

    .line 237
    .line 238
    invoke-static {p1, v1, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    sget-object v1, Lq2/i;->f:Lq2/h;

    .line 242
    .line 243
    iget-boolean v7, p1, Lf1/s;->S:Z

    .line 244
    .line 245
    if-nez v7, :cond_5

    .line 246
    .line 247
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-static {v7, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-nez v7, :cond_6

    .line 260
    .line 261
    :cond_5
    invoke-static {v6, p1, v6, v1}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 262
    .line 263
    .line 264
    :cond_6
    sget-object v1, Lq2/i;->c:Lq2/h;

    .line 265
    .line 266
    invoke-static {p1, v1, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v5, p1, v0}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v3}, Lf1/s;->p(Z)V

    .line 277
    .line 278
    .line 279
    :goto_4
    return-object v4

    .line 280
    nop

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
