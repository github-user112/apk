.class public final synthetic Lc8/b0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lc8/b0;->a:I

    iput-object p1, p0, Lc8/b0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc8/b0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc8/b0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lc8/b0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Lc8/b0;->a:I

    iput-object p1, p0, Lc8/b0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc8/b0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lc8/b0;->c:Ljava/lang/Object;

    iput-object p4, p0, Lc8/b0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lr8/j;Lf9/k;Lf1/b1;Lf1/b1;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lc8/b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/b0;->e:Ljava/lang/Object;

    iput-object p2, p0, Lc8/b0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc8/b0;->c:Ljava/lang/Object;

    iput-object p4, p0, Lc8/b0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lc8/b0;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Lc8/b0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lc8/b0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lc8/b0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Lc8/b0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Ll8/p;

    .line 17
    .line 18
    check-cast v4, Lf1/b1;

    .line 19
    .line 20
    check-cast v3, Lf1/b1;

    .line 21
    .line 22
    check-cast v2, Lf1/b1;

    .line 23
    .line 24
    invoke-virtual {v5}, Ll8/p;->i()[Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v5, Ly7/u;->c:I

    .line 29
    .line 30
    invoke-interface {v4, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, [Ljava/io/File;

    .line 38
    .line 39
    array-length v0, v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-interface {v3, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-string v0, ""

    .line 48
    .line 49
    invoke-interface {v2, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object v1

    .line 53
    :pswitch_0
    check-cast v5, Lf9/n;

    .line 54
    .line 55
    check-cast v4, Lf1/b1;

    .line 56
    .line 57
    check-cast v3, Lf1/b1;

    .line 58
    .line 59
    check-cast v2, Lf1/b1;

    .line 60
    .line 61
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, [Ljava/io/File;

    .line 66
    .line 67
    array-length v0, v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/String;

    .line 75
    .line 76
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-interface {v5, v0, v2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x1

    .line 83
    invoke-static {v2, v0}, Ly7/u;->f(Lf1/b1;Z)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-object v1

    .line 87
    :pswitch_1
    check-cast v5, Lac/w;

    .line 88
    .line 89
    move-object v7, v3

    .line 90
    check-cast v7, Lr2/d1;

    .line 91
    .line 92
    move-object v8, v4

    .line 93
    check-cast v8, Ljava/lang/String;

    .line 94
    .line 95
    move-object v9, v2

    .line 96
    check-cast v9, Ljava/lang/String;

    .line 97
    .line 98
    new-instance v6, Lb1/f;

    .line 99
    .line 100
    const/16 v11, 0xb

    .line 101
    .line 102
    const/4 v10, 0x0

    .line 103
    invoke-direct/range {v6 .. v11}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x3

    .line 107
    invoke-static {v5, v10, v6, v0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 108
    .line 109
    .line 110
    return-object v1

    .line 111
    :pswitch_2
    check-cast v3, Lr8/j;

    .line 112
    .line 113
    check-cast v5, Lf9/k;

    .line 114
    .line 115
    check-cast v4, Lf1/b1;

    .line 116
    .line 117
    check-cast v2, Lf1/b1;

    .line 118
    .line 119
    iget-object v0, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {v4, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 127
    .line 128
    iget-object v0, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v0}, Ll8/d;->h(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {v5, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-interface {v2, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    return-object v1

    .line 150
    :pswitch_3
    check-cast v5, Lf9/k;

    .line 151
    .line 152
    check-cast v3, Lc8/b1;

    .line 153
    .line 154
    check-cast v4, Lf1/b1;

    .line 155
    .line 156
    check-cast v2, Lf1/h1;

    .line 157
    .line 158
    sget v0, Lc8/b1;->e:I

    .line 159
    .line 160
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_2

    .line 171
    .line 172
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 173
    .line 174
    const-string v0, "\u6309\u952e\u6620\u5c04\u4e0d\u80fd\u4e3a\u7a7a"

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_2
    new-instance v0, Lz7/a2;

    .line 182
    .line 183
    iget-object v6, v3, Lc8/b1;->a:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v3, v3, Lc8/b1;->b:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v2}, Lf1/h1;->f()I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    sget-object v8, Lz7/a;->c:Ln6/a;

    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    invoke-static {v7}, Ln6/a;->k(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    check-cast v8, Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v7, v8}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    new-instance v8, Lz7/r0;

    .line 211
    .line 212
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    invoke-virtual {v2}, Lf1/h1;->f()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-direct {v8, v4, v2}, Lz7/r0;-><init>(II)V

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v6, v3, v7, v8}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 230
    .line 231
    .line 232
    invoke-interface {v5, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :goto_1
    return-object v1

    .line 236
    :pswitch_4
    check-cast v5, Lf9/k;

    .line 237
    .line 238
    check-cast v3, Lc8/g0;

    .line 239
    .line 240
    check-cast v4, Lf1/b1;

    .line 241
    .line 242
    check-cast v2, Lf1/h1;

    .line 243
    .line 244
    new-instance v0, Lz7/a2;

    .line 245
    .line 246
    iget-object v6, v3, Lc8/g0;->a:Ljava/lang/String;

    .line 247
    .line 248
    iget-object v3, v3, Lc8/g0;->b:Ljava/lang/String;

    .line 249
    .line 250
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    check-cast v7, Ljava/lang/Boolean;

    .line 255
    .line 256
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-eqz v7, :cond_3

    .line 261
    .line 262
    const-string v7, "\u5c0f\u4e8e"

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_3
    const-string v7, "\u5927\u4e8e"

    .line 266
    .line 267
    :goto_2
    invoke-virtual {v2}, Lf1/h1;->f()I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    new-instance v9, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v10, "\u5c4f\u5e55\u4eae\u5ea6"

    .line 274
    .line 275
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v7, "nit\u65f6"

    .line 285
    .line 286
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    new-instance v8, Lz7/v;

    .line 294
    .line 295
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    check-cast v4, Ljava/lang/Boolean;

    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    invoke-virtual {v2}, Lf1/h1;->f()I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    invoke-direct {v8, v2, v4}, Lz7/v;-><init>(IZ)V

    .line 310
    .line 311
    .line 312
    invoke-direct {v0, v6, v3, v7, v8}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v5, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    return-object v1

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
