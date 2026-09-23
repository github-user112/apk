.class public final synthetic Ll0/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg9/x;Lf9/o;Ll5/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ll0/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/p;->b:Ljava/lang/Object;

    check-cast p2, Lg9/j;

    iput-object p2, p0, Ll0/p;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll0/p;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Ll0/p;->a:I

    iput-object p1, p0, Ll0/p;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll0/p;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll0/p;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lr8/e;II)V
    .locals 0

    .line 3
    iput p5, p0, Ll0/p;->a:I

    iput-object p1, p0, Ll0/p;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll0/p;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll0/p;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Ll0/p;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Ll0/p;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Ll0/p;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Ll0/p;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Lg9/u;

    .line 15
    .line 16
    check-cast v3, Lz/s1;

    .line 17
    .line 18
    check-cast v2, Lz/q1;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Float;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    check-cast p2, Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget p2, v4, Lg9/u;->a:F

    .line 32
    .line 33
    sub-float/2addr p1, p2

    .line 34
    invoke-virtual {v3, p1}, Lz/s1;->d(F)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v3, p1}, Lz/s1;->h(F)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iget-object v0, v2, Lz/q1;->a:Lz/s1;

    .line 43
    .line 44
    iget-object v2, v0, Lz/s1;->k:Lz/c1;

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-virtual {v0, v2, p1, p2, v5}, Lz/s1;->c(Lz/c1;JI)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-virtual {v3, p1, p2}, Lz/s1;->g(J)F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {v3, p1}, Lz/s1;->d(F)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget p2, v4, Lg9/u;->a:F

    .line 60
    .line 61
    add-float/2addr p2, p1

    .line 62
    iput p2, v4, Lg9/u;->a:F

    .line 63
    .line 64
    return-object v1

    .line 65
    :pswitch_0
    check-cast v4, Lz/f0;

    .line 66
    .line 67
    check-cast v3, Lg9/w;

    .line 68
    .line 69
    check-cast v2, Ll2/d;

    .line 70
    .line 71
    check-cast p1, Lk2/w;

    .line 72
    .line 73
    check-cast p2, Lx1/b;

    .line 74
    .line 75
    invoke-static {v4}, Lq2/f;->u(Lq2/l;)Lq2/h1;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-wide/16 v5, 0x0

    .line 80
    .line 81
    invoke-virtual {v0, v5, v6}, Lq2/h1;->s(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    iget-wide v7, v3, Lg9/w;->a:J

    .line 86
    .line 87
    invoke-static {v5, v6, v7, v8}, Lx1/b;->b(JJ)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    .line 93
    iget-wide v7, v3, Lg9/w;->a:J

    .line 94
    .line 95
    invoke-static {v5, v6, v7, v8}, Lx1/b;->g(JJ)J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    iget-wide v9, v4, Lz/f0;->x:J

    .line 100
    .line 101
    invoke-static {v9, v10, v7, v8}, Lx1/b;->h(JJ)J

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    iput-wide v7, v4, Lz/f0;->x:J

    .line 106
    .line 107
    :cond_0
    iput-wide v5, v3, Lg9/w;->a:J

    .line 108
    .line 109
    iget-wide v5, v4, Lz/f0;->x:J

    .line 110
    .line 111
    invoke-static {v2, p1, v5, v6}, La/a;->l(Ll2/d;Lk2/w;J)V

    .line 112
    .line 113
    .line 114
    iget-object p1, v4, Lz/f0;->u:Lcc/h;

    .line 115
    .line 116
    if-eqz p1, :cond_1

    .line 117
    .line 118
    new-instance v0, Lz/l;

    .line 119
    .line 120
    iget-wide v2, p2, Lx1/b;->a:J

    .line 121
    .line 122
    invoke-direct {v0, v2, v3}, Lz/l;-><init>(J)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_1
    return-object v1

    .line 129
    :pswitch_1
    check-cast v4, Ly7/u;

    .line 130
    .line 131
    check-cast v3, Ll8/p;

    .line 132
    .line 133
    check-cast v2, Lf9/n;

    .line 134
    .line 135
    check-cast p1, Lf1/s;

    .line 136
    .line 137
    check-cast p2, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    const/16 p2, 0x239

    .line 143
    .line 144
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    invoke-virtual {v4, v3, v2, p1, p2}, Ly7/u;->e(Ll8/p;Lf9/n;Lf1/s;I)V

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :pswitch_2
    check-cast v4, Ly7/u;

    .line 153
    .line 154
    check-cast v3, Ljava/lang/String;

    .line 155
    .line 156
    check-cast v2, Lf9/n;

    .line 157
    .line 158
    check-cast p1, Lf1/s;

    .line 159
    .line 160
    check-cast p2, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    const/16 p2, 0x231

    .line 166
    .line 167
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-virtual {v4, v3, v2, p1, p2}, Ly7/u;->d(Ljava/lang/String;Lf9/n;Lf1/s;I)V

    .line 172
    .line 173
    .line 174
    return-object v1

    .line 175
    :pswitch_3
    check-cast v4, Ly7/m;

    .line 176
    .line 177
    check-cast v3, Ljava/lang/String;

    .line 178
    .line 179
    check-cast v2, Lf9/k;

    .line 180
    .line 181
    check-cast p1, Lf1/s;

    .line 182
    .line 183
    check-cast p2, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    const/16 p2, 0x31

    .line 189
    .line 190
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-virtual {v4, v3, v2, p1, p2}, Ly7/m;->d(Ljava/lang/String;Lf9/k;Lf1/s;I)V

    .line 195
    .line 196
    .line 197
    return-object v1

    .line 198
    :pswitch_4
    check-cast v4, Lm7/n;

    .line 199
    .line 200
    check-cast v3, Lr8/j;

    .line 201
    .line 202
    check-cast v2, Lf9/k;

    .line 203
    .line 204
    check-cast p1, Lf1/s;

    .line 205
    .line 206
    check-cast p2, Ljava/lang/Integer;

    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    const/16 p2, 0x1b1

    .line 212
    .line 213
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    invoke-virtual {v4, v3, v2, p1, p2}, Lm7/n;->f(Lr8/j;Lf9/k;Lf1/s;I)V

    .line 218
    .line 219
    .line 220
    return-object v1

    .line 221
    :pswitch_5
    check-cast v4, Lr8/j;

    .line 222
    .line 223
    iget-object v0, v4, Lr8/j;->a:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v3, Lf9/k;

    .line 226
    .line 227
    check-cast v2, Lf1/b1;

    .line 228
    .line 229
    check-cast p1, Ljava/lang/String;

    .line 230
    .line 231
    check-cast p2, Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 234
    .line 235
    .line 236
    const-string v4, "fileName"

    .line 237
    .line 238
    invoke-static {p1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-nez v4, :cond_2

    .line 246
    .line 247
    sget-object v4, Ll8/d;->a:Lr8/o;

    .line 248
    .line 249
    check-cast v0, Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {v0}, Ll8/d;->h(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_2
    sget-object v4, Ll8/d;->a:Lr8/o;

    .line 256
    .line 257
    check-cast v0, Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v0, p1}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_0
    invoke-interface {v3, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    invoke-interface {v2, p2}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    return-object v1

    .line 269
    :pswitch_6
    check-cast v4, Lg9/x;

    .line 270
    .line 271
    check-cast v3, Lg9/j;

    .line 272
    .line 273
    check-cast v2, Ll5/l;

    .line 274
    .line 275
    check-cast p1, Lk2/w;

    .line 276
    .line 277
    check-cast p2, Ljava/lang/Float;

    .line 278
    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-wide p1, p1, Lk2/w;->c:J

    .line 283
    .line 284
    invoke-static {p1, p2}, Lx1/b;->d(J)F

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    invoke-static {v4, v3, v2, p1}, Lg5/a;->t(Lg9/x;Lf9/o;Ll5/l;F)V

    .line 289
    .line 290
    .line 291
    return-object v1

    .line 292
    :pswitch_7
    check-cast v4, Lr1/p;

    .line 293
    .line 294
    check-cast v3, Lw0/r1;

    .line 295
    .line 296
    check-cast v2, Ln1/c;

    .line 297
    .line 298
    check-cast p1, Lf1/s;

    .line 299
    .line 300
    check-cast p2, Ljava/lang/Integer;

    .line 301
    .line 302
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    const/16 p2, 0x181

    .line 306
    .line 307
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    invoke-static {v4, v3, v2, p1, p2}, Ll0/p0;->f(Lr1/p;Lw0/r1;Ln1/c;Lf1/s;I)V

    .line 312
    .line 313
    .line 314
    return-object v1

    .line 315
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
