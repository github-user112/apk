.class public final synthetic Lmb/s;
.super Lg9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iput p8, p0, Lmb/s;->i:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lg9/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lmb/s;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lw1/r;

    .line 7
    .line 8
    check-cast p2, Lw1/r;

    .line 9
    .line 10
    iget-object v0, p0, Lg9/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lx/c0;

    .line 13
    .line 14
    iget-boolean v1, v0, Lr1/o;->n:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, Lw1/r;->b()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1}, Lw1/r;->b()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-ne p2, p1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    iget-object p1, v0, Lx/c0;->r:Lf9/k;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {p1, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    if-eqz p2, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lr1/o;->m0()Lac/w;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lb8/g;

    .line 51
    .line 52
    const/16 v3, 0x17

    .line 53
    .line 54
    invoke-direct {v2, v0, p1, v3}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    invoke-static {v1, p1, v2, v3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 59
    .line 60
    .line 61
    new-instance v1, Lg9/x;

    .line 62
    .line 63
    invoke-direct {v1}, Lg9/x;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v2, La8/n0;

    .line 67
    .line 68
    const/16 v3, 0x17

    .line 69
    .line 70
    invoke-direct {v2, v3, v1, v0}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2}, Lq2/f;->r(Lr1/o;Lf9/a;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Lh0/c0;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Lh0/c0;->a()Lh0/c0;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    move-object v1, p1

    .line 87
    :goto_0
    iput-object v1, v0, Lx/c0;->t:Lh0/c0;

    .line 88
    .line 89
    iget-object v1, v0, Lx/c0;->u:Lq2/h1;

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    invoke-virtual {v1}, Lq2/h1;->G0()Lr1/o;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    invoke-virtual {v0}, Lx/c0;->E0()Lx/d0;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iget-object v2, v0, Lx/c0;->u:Lq2/h1;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lx/d0;->A0(Lo2/w;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    iget-object v1, v0, Lx/c0;->t:Lh0/c0;

    .line 114
    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    invoke-virtual {v1}, Lh0/c0;->b()V

    .line 118
    .line 119
    .line 120
    :cond_5
    iput-object p1, v0, Lx/c0;->t:Lh0/c0;

    .line 121
    .line 122
    invoke-virtual {v0}, Lx/c0;->E0()Lx/d0;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    invoke-virtual {v1, p1}, Lx/d0;->A0(Lo2/w;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    :goto_1
    invoke-static {v0}, Lq2/f;->n(Lq2/y1;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lx/c0;->q:Lb0/k;

    .line 135
    .line 136
    if-eqz v1, :cond_9

    .line 137
    .line 138
    if-eqz p2, :cond_8

    .line 139
    .line 140
    iget-object p2, v0, Lx/c0;->s:Lb0/d;

    .line 141
    .line 142
    if-eqz p2, :cond_7

    .line 143
    .line 144
    new-instance v2, Lb0/e;

    .line 145
    .line 146
    invoke-direct {v2, p2}, Lb0/e;-><init>(Lb0/d;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lx/c0;->D0(Lb0/k;Lb0/j;)V

    .line 150
    .line 151
    .line 152
    iput-object p1, v0, Lx/c0;->s:Lb0/d;

    .line 153
    .line 154
    :cond_7
    new-instance p1, Lb0/d;

    .line 155
    .line 156
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1, p1}, Lx/c0;->D0(Lb0/k;Lb0/j;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, v0, Lx/c0;->s:Lb0/d;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_8
    iget-object p2, v0, Lx/c0;->s:Lb0/d;

    .line 166
    .line 167
    if-eqz p2, :cond_9

    .line 168
    .line 169
    new-instance v2, Lb0/e;

    .line 170
    .line 171
    invoke-direct {v2, p2}, Lb0/e;-><init>(Lb0/d;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1, v2}, Lx/c0;->D0(Lb0/k;Lb0/j;)V

    .line 175
    .line 176
    .line 177
    iput-object p1, v0, Lx/c0;->s:Lb0/d;

    .line 178
    .line 179
    :cond_9
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 180
    .line 181
    return-object p1

    .line 182
    :pswitch_0
    check-cast p1, Llc/e;

    .line 183
    .line 184
    check-cast p2, Ljava/lang/Number;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    const-string v0, "p0"

    .line 191
    .line 192
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lg9/d;->b:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v0, Lpc/i;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, p2}, Llc/e;->o(I)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_a

    .line 207
    .line 208
    invoke-interface {p1, p2}, Llc/e;->n(I)Llc/e;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-interface {p1}, Llc/e;->i()V

    .line 213
    .line 214
    .line 215
    :cond_a
    const/4 p1, 0x0

    .line 216
    iput-boolean p1, v0, Lpc/i;->b:Z

    .line 217
    .line 218
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    return-object p1

    .line 223
    :pswitch_1
    check-cast p1, Llb/w;

    .line 224
    .line 225
    check-cast p2, Llb/w;

    .line 226
    .line 227
    const-string v0, "p0"

    .line 228
    .line 229
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v0, "p1"

    .line 233
    .line 234
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lg9/d;->b:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Lmb/l;

    .line 240
    .line 241
    invoke-virtual {v0, p1, p2}, Lmb/l;->a(Llb/w;Llb/w;)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    return-object p1

    .line 250
    :pswitch_2
    check-cast p1, Llb/w;

    .line 251
    .line 252
    check-cast p2, Llb/w;

    .line 253
    .line 254
    const-string v0, "p0"

    .line 255
    .line 256
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v0, "p1"

    .line 260
    .line 261
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lg9/d;->b:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v0, Lmb/t;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    sget-object v0, Lmb/k;->b:Lmb/j;

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    sget-object v0, Lmb/j;->b:Lmb/l;

    .line 277
    .line 278
    invoke-virtual {v0, p1, p2}, Lmb/l;->b(Llb/w;Llb/w;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_b

    .line 283
    .line 284
    invoke-virtual {v0, p2, p1}, Lmb/l;->b(Llb/w;Llb/w;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-nez p1, :cond_b

    .line 289
    .line 290
    const/4 p1, 0x1

    .line 291
    goto :goto_3

    .line 292
    :cond_b
    const/4 p1, 0x0

    .line 293
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    return-object p1

    .line 298
    nop

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
