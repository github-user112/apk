.class public final synthetic Lc8/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(ILf1/b1;Lf1/b1;Lf1/b1;)V
    .locals 0

    .line 1
    iput p1, p0, Lc8/k;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lc8/k;->b:Lf1/b1;

    .line 4
    .line 5
    iput-object p3, p0, Lc8/k;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p4, p0, Lc8/k;->d:Lf1/b1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lc8/k;->a:I

    .line 2
    .line 3
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 4
    .line 5
    const-string v2, "option"

    .line 6
    .line 7
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 8
    .line 9
    iget-object v4, p0, Lc8/k;->d:Lf1/b1;

    .line 10
    .line 11
    iget-object v5, p0, Lc8/k;->c:Lf1/b1;

    .line 12
    .line 13
    iget-object v6, p0, Lc8/k;->b:Lf1/b1;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p1, Ln3/l;

    .line 19
    .line 20
    const-string v0, "$size$delegate"

    .line 21
    .line 22
    invoke-static {v6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "$radius$delegate"

    .line 26
    .line 27
    invoke-static {v5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "$center$delegate"

    .line 31
    .line 32
    invoke-static {v4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-wide v0, p1, Ln3/l;->a:J

    .line 36
    .line 37
    new-instance p1, Ln3/l;

    .line 38
    .line 39
    invoke-direct {p1, v0, v1}, Ln3/l;-><init>(J)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v6, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ln3/l;

    .line 50
    .line 51
    iget-wide v0, p1, Ln3/l;->a:J

    .line 52
    .line 53
    const/16 p1, 0x20

    .line 54
    .line 55
    shr-long v7, v0, p1

    .line 56
    .line 57
    long-to-int p1, v7

    .line 58
    const-wide v7, 0xffffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    and-long/2addr v0, v7

    .line 64
    long-to-int v1, v0

    .line 65
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    int-to-float p1, p1

    .line 70
    const/high16 v0, 0x3f000000    # 0.5f

    .line 71
    .line 72
    mul-float p1, p1, v0

    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {v5, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ln3/l;

    .line 86
    .line 87
    iget-wide v0, p1, Ln3/l;->a:J

    .line 88
    .line 89
    invoke-static {v0, v1}, Lm9/e0;->d0(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    new-instance p1, Lx1/b;

    .line 94
    .line 95
    invoke-direct {p1, v0, v1}, Lx1/b;-><init>(J)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v3

    .line 102
    :pswitch_0
    check-cast p1, Lj8/k0;

    .line 103
    .line 104
    const-string v0, "it"

    .line 105
    .line 106
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p1, Lj8/k0;->b:Lj8/o0;

    .line 110
    .line 111
    invoke-interface {v0}, Lj8/o0;->b()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget v1, Lc8/h1;->f:I

    .line 116
    .line 117
    invoke-interface {v6, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Lj8/k0;->c:Ljava/lang/String;

    .line 121
    .line 122
    const-string v0, "|"

    .line 123
    .line 124
    filled-new-array {v0}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/4 v1, 0x2

    .line 129
    invoke-static {p1, v0, v1}, Lxb/i;->X(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {p1}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance v1, Lr8/j;

    .line 162
    .line 163
    invoke-direct {v1, v0, p1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v5, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lr8/j;

    .line 174
    .line 175
    iget-object p1, p1, Lr8/j;->a:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p1, Ljava/lang/Number;

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 180
    .line 181
    .line 182
    move-result-wide v0

    .line 183
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lr8/j;

    .line 188
    .line 189
    iget-object p1, p1, Lr8/j;->b:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Ljava/lang/Number;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 194
    .line 195
    .line 196
    move-result-wide v5

    .line 197
    new-instance p1, Ljava/util/Date;

    .line 198
    .line 199
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1, v5, v6, p1}, La/a;->x(DDLjava/util/Date;)Lr8/j;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    return-object v3

    .line 210
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 211
    .line 212
    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Ljava/lang/String;

    .line 217
    .line 218
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-static {p1, v0, v1}, Lxb/i;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    .line 234
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_0
    return-object v3

    .line 238
    :pswitch_2
    check-cast p1, Lj8/k0;

    .line 239
    .line 240
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sget v0, Lc8/v;->e:I

    .line 244
    .line 245
    invoke-interface {v6, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-interface {v5, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v4, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    return-object v3

    .line 257
    :pswitch_3
    check-cast p1, Lj8/k0;

    .line 258
    .line 259
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    sget v0, Lc8/v;->e:I

    .line 263
    .line 264
    invoke-interface {v6, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 268
    .line 269
    invoke-interface {v5, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v4, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    return-object v3

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
