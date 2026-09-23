.class public final synthetic Lw0/e0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/w0;


# direct methods
.method public synthetic constructor <init>(Lw0/w0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/e0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/e0;->b:Lw0/w0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lw0/e0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p1, p0, Lw0/e0;->b:Lw0/w0;

    .line 13
    .line 14
    iget-object v2, p1, Lw0/w0;->a:Lw0/c1;

    .line 15
    .line 16
    invoke-virtual {v2}, Lw0/c1;->a()Ls/a0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v0, v1}, Ls/a0;->b(J)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p1, Lw0/w0;->m:Lf1/k1;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lw0/w0;->n()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lw0/w0;->p()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object v1

    .line 40
    :pswitch_0
    iget-object v0, p0, Lw0/e0;->b:Lw0/w0;

    .line 41
    .line 42
    check-cast p1, Lw0/z;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lw0/w0;->m(Lw0/z;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v0, p0, Lw0/e0;->b:Lw0/w0;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lw0/w0;->l(Z)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 62
    .line 63
    return-object p1

    .line 64
    :pswitch_2
    iget-object v0, p0, Lw0/e0;->b:Lw0/w0;

    .line 65
    .line 66
    iget-object v1, v0, Lw0/w0;->i:Lf1/k1;

    .line 67
    .line 68
    check-cast p1, Lw1/r;

    .line 69
    .line 70
    invoke-virtual {p1}, Lw1/r;->a()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    invoke-virtual {v0}, Lw0/w0;->j()V

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {p1}, Lw1/r;->a()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v1, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 103
    .line 104
    return-object p1

    .line 105
    :pswitch_3
    check-cast p1, Lo2/w;

    .line 106
    .line 107
    iget-object v0, p0, Lw0/e0;->b:Lw0/w0;

    .line 108
    .line 109
    iput-object p1, v0, Lw0/w0;->l:Lo2/w;

    .line 110
    .line 111
    iget-object v1, v0, Lw0/w0;->i:Lf1/k1;

    .line 112
    .line 113
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_3

    .line 124
    .line 125
    invoke-virtual {v0}, Lw0/w0;->g()Lw0/z;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    const-wide/16 v1, 0x0

    .line 134
    .line 135
    invoke-interface {p1, v1, v2}, Lo2/w;->d(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    new-instance p1, Lx1/b;

    .line 140
    .line 141
    invoke-direct {p1, v1, v2}, Lx1/b;-><init>(J)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_2
    const/4 p1, 0x0

    .line 146
    :goto_0
    iget-object v1, v0, Lw0/w0;->k:Lx1/b;

    .line 147
    .line 148
    invoke-static {v1, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_3

    .line 153
    .line 154
    iput-object p1, v0, Lw0/w0;->k:Lx1/b;

    .line 155
    .line 156
    invoke-virtual {v0}, Lw0/w0;->n()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lw0/w0;->p()V

    .line 160
    .line 161
    .line 162
    :cond_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 163
    .line 164
    return-object p1

    .line 165
    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 168
    .line 169
    .line 170
    move-result-wide v0

    .line 171
    iget-object p1, p0, Lw0/e0;->b:Lw0/w0;

    .line 172
    .line 173
    invoke-virtual {p1}, Lw0/w0;->g()Lw0/z;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const/4 v3, 0x0

    .line 178
    if-eqz v2, :cond_4

    .line 179
    .line 180
    iget-object v2, v2, Lw0/z;->a:Lw0/y;

    .line 181
    .line 182
    if-eqz v2, :cond_4

    .line 183
    .line 184
    iget-wide v4, v2, Lw0/y;->c:J

    .line 185
    .line 186
    cmp-long v2, v0, v4

    .line 187
    .line 188
    if-nez v2, :cond_4

    .line 189
    .line 190
    iget-object v2, p1, Lw0/w0;->p:Lf1/k1;

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    invoke-virtual {p1}, Lw0/w0;->g()Lw0/z;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_5

    .line 200
    .line 201
    iget-object v2, v2, Lw0/z;->b:Lw0/y;

    .line 202
    .line 203
    if-eqz v2, :cond_5

    .line 204
    .line 205
    iget-wide v4, v2, Lw0/y;->c:J

    .line 206
    .line 207
    cmp-long v2, v0, v4

    .line 208
    .line 209
    if-nez v2, :cond_5

    .line 210
    .line 211
    iget-object v2, p1, Lw0/w0;->q:Lf1/k1;

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_5
    iget-object v2, p1, Lw0/w0;->a:Lw0/c1;

    .line 217
    .line 218
    invoke-virtual {v2}, Lw0/c1;->a()Ls/a0;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v2, v0, v1}, Ls/a0;->b(J)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_6

    .line 227
    .line 228
    invoke-virtual {p1}, Lw0/w0;->p()V

    .line 229
    .line 230
    .line 231
    :cond_6
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 232
    .line 233
    return-object p1

    .line 234
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 237
    .line 238
    .line 239
    move-result-wide v0

    .line 240
    iget-object p1, p0, Lw0/e0;->b:Lw0/w0;

    .line 241
    .line 242
    iget-object v2, p1, Lw0/w0;->a:Lw0/c1;

    .line 243
    .line 244
    invoke-virtual {v2}, Lw0/c1;->a()Ls/a0;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v2, v0, v1}, Ls/a0;->b(J)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_7

    .line 253
    .line 254
    invoke-virtual {p1}, Lw0/w0;->j()V

    .line 255
    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Lw0/w0;->m(Lw0/z;)V

    .line 259
    .line 260
    .line 261
    :cond_7
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 262
    .line 263
    return-object p1

    .line 264
    :pswitch_6
    check-cast p1, Lo2/w;

    .line 265
    .line 266
    iget-object v0, p0, Lw0/e0;->b:Lw0/w0;

    .line 267
    .line 268
    iget-object v1, v0, Lw0/w0;->j:Lf1/f0;

    .line 269
    .line 270
    invoke-virtual {v1}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Lx1/c;

    .line 275
    .line 276
    if-nez v1, :cond_8

    .line 277
    .line 278
    const/4 p1, 0x0

    .line 279
    goto :goto_1

    .line 280
    :cond_8
    iget-object v0, v0, Lw0/w0;->l:Lo2/w;

    .line 281
    .line 282
    if-eqz v0, :cond_9

    .line 283
    .line 284
    invoke-static {v1, v0, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/a;->d(Lx1/c;Lo2/w;Lo2/w;)Lx1/c;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    :goto_1
    return-object p1

    .line 289
    :cond_9
    const-string p1, "Required value was null."

    .line 290
    .line 291
    invoke-static {p1}, Lc0/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 292
    .line 293
    .line 294
    new-instance p1, Lac/p;

    .line 295
    .line 296
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 297
    .line 298
    .line 299
    throw p1

    .line 300
    :pswitch_7
    check-cast p1, Lf1/i0;

    .line 301
    .line 302
    new-instance p1, Lc8/p;

    .line 303
    .line 304
    const/16 v0, 0xd

    .line 305
    .line 306
    iget-object v1, p0, Lw0/e0;->b:Lw0/w0;

    .line 307
    .line 308
    invoke-direct {p1, v0, v1}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    return-object p1

    .line 312
    nop

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
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
