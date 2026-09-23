.class public final Ldc/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ldc/k;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ldc/k;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Ldc/k;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 5
    .line 6
    iget-object v3, p0, Ldc/k;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    check-cast v3, Lv7/g;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, v3, Lv7/g;->h:Lv7/m;

    .line 22
    .line 23
    iget p1, p1, Lv7/m;->h:I

    .line 24
    .line 25
    if-ne p1, v1, :cond_0

    .line 26
    .line 27
    iget-object p1, v3, Lv7/g;->c:Ll8/u;

    .line 28
    .line 29
    if-eqz p1, :cond_5

    .line 30
    .line 31
    invoke-virtual {p1}, Ll8/u;->b()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, v3, Lv7/g;->d:Ll8/w;

    .line 36
    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, v3, Lv7/g;->h:Lv7/m;

    .line 44
    .line 45
    iget p1, p1, Lv7/m;->h:I

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    if-ne p1, v1, :cond_3

    .line 49
    .line 50
    iget-object p1, v3, Lv7/g;->c:Ll8/u;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Ll8/u;->a()V

    .line 55
    .line 56
    .line 57
    :cond_2
    iput-object p2, v3, Lv7/g;->c:Ll8/u;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, v3, Lv7/g;->d:Ll8/w;

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ne p1, v1, :cond_5

    .line 69
    .line 70
    iget-object p1, v3, Lv7/g;->d:Ll8/w;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Ll8/w;->dismiss()V

    .line 75
    .line 76
    .line 77
    :cond_4
    iput-object p2, v3, Lv7/g;->d:Ll8/w;

    .line 78
    .line 79
    :cond_5
    :goto_0
    return-object v2

    .line 80
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    check-cast v3, Lf1/b1;

    .line 87
    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    const-string p1, "\u8fd0\u884c\u4e2d"

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    const-string p1, "\u672a\u6388\u6743"

    .line 94
    .line 95
    :goto_1
    invoke-interface {v3, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :pswitch_1
    check-cast p1, Lr8/z;

    .line 100
    .line 101
    check-cast v3, Lu0/j;

    .line 102
    .line 103
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    const/16 p2, 0x22

    .line 106
    .line 107
    if-lt p1, p2, :cond_7

    .line 108
    .line 109
    invoke-virtual {v3}, Lu0/j;->t()Landroid/view/inputmethod/InputMethodManager;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object p2, v3, Lu0/j;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p2, Landroid/view/View;

    .line 116
    .line 117
    invoke-static {p1, p2}, Lc/p;->t(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    return-object v2

    .line 121
    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    check-cast v3, Lr2/w1;

    .line 128
    .line 129
    iget-object p2, v3, Lr2/w1;->a:Lf1/g1;

    .line 130
    .line 131
    invoke-virtual {p2, p1}, Lf1/g1;->g(F)V

    .line 132
    .line 133
    .line 134
    return-object v2

    .line 135
    :pswitch_3
    check-cast p1, Lq7/e;

    .line 136
    .line 137
    iget-boolean p1, p1, Lq7/e;->a:Z

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    sget-object p1, Ll8/d;->a:Lr8/o;

    .line 142
    .line 143
    const-string p1, "FLOAT_ICON_OFFSET_X"

    .line 144
    .line 145
    const/16 p2, 0x40

    .line 146
    .line 147
    invoke-static {p2, p1}, Ll8/d;->b(ILjava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    const-string p1, "FLOAT_ICON_OFFSET_Y"

    .line 152
    .line 153
    invoke-static {p2, p1}, Ll8/d;->b(ILjava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    sget-object p1, Ll8/n;->a:Lr8/o;

    .line 158
    .line 159
    new-instance p1, Lx7/i;

    .line 160
    .line 161
    check-cast v3, Lq7/d;

    .line 162
    .line 163
    const/4 p2, 0x3

    .line 164
    invoke-direct {p1, v3, v7, v8, p2}, Lx7/i;-><init>(Ljava/lang/Object;III)V

    .line 165
    .line 166
    .line 167
    new-instance v10, Ln1/c;

    .line 168
    .line 169
    const p2, 0x42a768b4

    .line 170
    .line 171
    .line 172
    invoke-direct {v10, p1, p2, v1}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 173
    .line 174
    .line 175
    const/4 v5, -0x2

    .line 176
    const/4 v6, -0x2

    .line 177
    const/16 v4, 0x8

    .line 178
    .line 179
    const-string v9, "FLOAT_ICON_SWITCH"

    .line 180
    .line 181
    invoke-static/range {v4 .. v10}, Ll8/n;->a(IIIIILjava/lang/String;Ln1/c;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    const-string p1, "FLOAT_ICON_SWITCH"

    .line 186
    .line 187
    invoke-static {p1}, Ll8/n;->b(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_2
    return-object v2

    .line 191
    :pswitch_4
    check-cast p1, Ll5/k;

    .line 192
    .line 193
    check-cast v3, Lf9/k;

    .line 194
    .line 195
    invoke-interface {v3, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    return-object v2

    .line 199
    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_a

    .line 206
    .line 207
    check-cast v3, Lh7/c;

    .line 208
    .line 209
    iget-object p1, v3, Lh7/c;->b:Li7/f;

    .line 210
    .line 211
    iget-object p2, p1, Li7/f;->c:Landroid/media/AudioTrack;

    .line 212
    .line 213
    if-eqz p2, :cond_9

    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/media/AudioTrack;->play()V

    .line 216
    .line 217
    .line 218
    :cond_9
    sget-object p2, Li7/j;->f:Li7/j;

    .line 219
    .line 220
    invoke-virtual {p1, p2}, Li7/f;->e(Li7/j;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p1, Li7/f;->b:Ljava/lang/Object;

    .line 224
    .line 225
    invoke-interface {p1}, Li7/i;->d()V

    .line 226
    .line 227
    .line 228
    :cond_a
    return-object v2

    .line 229
    :pswitch_6
    instance-of v0, p2, Ldc/j;

    .line 230
    .line 231
    if-eqz v0, :cond_b

    .line 232
    .line 233
    move-object v0, p2

    .line 234
    check-cast v0, Ldc/j;

    .line 235
    .line 236
    iget v4, v0, Ldc/j;->f:I

    .line 237
    .line 238
    const/high16 v5, -0x80000000

    .line 239
    .line 240
    and-int v6, v4, v5

    .line 241
    .line 242
    if-eqz v6, :cond_b

    .line 243
    .line 244
    sub-int/2addr v4, v5

    .line 245
    iput v4, v0, Ldc/j;->f:I

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_b
    new-instance v0, Ldc/j;

    .line 249
    .line 250
    invoke-direct {v0, p0, p2}, Ldc/j;-><init>(Ldc/k;Lw8/c;)V

    .line 251
    .line 252
    .line 253
    :goto_3
    iget-object p2, v0, Ldc/j;->d:Ljava/lang/Object;

    .line 254
    .line 255
    iget v4, v0, Ldc/j;->f:I

    .line 256
    .line 257
    if-eqz v4, :cond_d

    .line 258
    .line 259
    if-ne v4, v1, :cond_c

    .line 260
    .line 261
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 266
    .line 267
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 268
    .line 269
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p1

    .line 273
    :cond_d
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    check-cast v3, Lcc/u;

    .line 277
    .line 278
    if-nez p1, :cond_e

    .line 279
    .line 280
    sget-object p1, Lec/c;->b:Lfc/s;

    .line 281
    .line 282
    :cond_e
    iput v1, v0, Ldc/j;->f:I

    .line 283
    .line 284
    check-cast v3, Lcc/t;

    .line 285
    .line 286
    iget-object p2, v3, Lcc/t;->d:Lcc/h;

    .line 287
    .line 288
    invoke-interface {p2, p1, v0}, Lcc/x;->s(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 293
    .line 294
    if-ne p1, p2, :cond_f

    .line 295
    .line 296
    move-object v2, p2

    .line 297
    :cond_f
    :goto_4
    return-object v2

    .line 298
    nop

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
