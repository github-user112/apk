.class public final synthetic La8/q0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/b1;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p6, p0, La8/q0;->a:I

    iput-object p1, p0, La8/q0;->b:Ljava/lang/Object;

    iput-object p2, p0, La8/q0;->f:Ljava/lang/Object;

    iput-object p3, p0, La8/q0;->c:Lf1/b1;

    iput-object p4, p0, La8/q0;->d:Lf1/b1;

    iput-object p5, p0, La8/q0;->e:Lf1/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lr8/j;Lf9/k;Lf1/b1;Lf1/b1;Lf1/b1;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, La8/q0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/q0;->f:Ljava/lang/Object;

    iput-object p2, p0, La8/q0;->b:Ljava/lang/Object;

    iput-object p3, p0, La8/q0;->c:Lf1/b1;

    iput-object p4, p0, La8/q0;->d:Lf1/b1;

    iput-object p5, p0, La8/q0;->e:Lf1/b1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, La8/q0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, La8/q0;->e:Lf1/b1;

    .line 4
    .line 5
    iget-object v2, p0, La8/q0;->d:Lf1/b1;

    .line 6
    .line 7
    iget-object v3, p0, La8/q0;->c:Lf1/b1;

    .line 8
    .line 9
    sget-object v4, Lr8/z;->a:Lr8/z;

    .line 10
    .line 11
    iget-object v5, p0, La8/q0;->f:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, p0, La8/q0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v8, v6

    .line 19
    check-cast v8, Ll8/p;

    .line 20
    .line 21
    check-cast v5, Lj8/k0;

    .line 22
    .line 23
    iget-object v0, v5, Lj8/k0;->c:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v7, Lc8/b0;

    .line 26
    .line 27
    const/4 v12, 0x5

    .line 28
    iget-object v9, p0, La8/q0;->c:Lf1/b1;

    .line 29
    .line 30
    iget-object v10, p0, La8/q0;->d:Lf1/b1;

    .line 31
    .line 32
    iget-object v11, p0, La8/q0;->e:Lf1/b1;

    .line 33
    .line 34
    invoke-direct/range {v7 .. v12}, Lc8/b0;-><init>(Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v7}, Ll8/p;->h(Ljava/lang/String;Lf9/a;)V

    .line 41
    .line 42
    .line 43
    return-object v4

    .line 44
    :pswitch_0
    check-cast v5, Lr8/j;

    .line 45
    .line 46
    check-cast v6, Lf9/k;

    .line 47
    .line 48
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v2, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 58
    .line 59
    iget-object v0, v5, Lr8/j;->a:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0, v3}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v6, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-interface {v1, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-object v4

    .line 87
    :pswitch_1
    check-cast v6, Lf9/k;

    .line 88
    .line 89
    check-cast v5, Lc8/j1;

    .line 90
    .line 91
    new-instance v0, Lz7/a2;

    .line 92
    .line 93
    iget-object v7, v5, Lc8/j1;->a:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v5, v5, Lc8/j1;->b:Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Ljava/lang/String;

    .line 102
    .line 103
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    check-cast v10, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_0

    .line 120
    .line 121
    const-string v10, "\u4e4b\u5185"

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    const-string v10, "\u4e4b\u5916"

    .line 125
    .line 126
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v8, "-"

    .line 135
    .line 136
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v8, " "

    .line 143
    .line 144
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    new-instance v9, Lz7/m1;

    .line 155
    .line 156
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Ljava/lang/String;

    .line 171
    .line 172
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Ljava/lang/String;

    .line 177
    .line 178
    invoke-direct {v9, v3, v2, v1}, Lz7/m1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v7, v5, v8, v9}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v6, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    return-object v4

    .line 188
    :pswitch_2
    check-cast v6, Lf9/k;

    .line 189
    .line 190
    move-object v7, v5

    .line 191
    check-cast v7, Lz7/b2;

    .line 192
    .line 193
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_4

    .line 204
    .line 205
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_1

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_1
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_3

    .line 229
    .line 230
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Ljava/util/List;

    .line 235
    .line 236
    invoke-static {v0}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lz7/a2;

    .line 241
    .line 242
    if-eqz v0, :cond_2

    .line 243
    .line 244
    iget-object v0, v0, Lz7/a2;->b:Ljava/lang/String;

    .line 245
    .line 246
    if-nez v0, :cond_3

    .line 247
    .line 248
    :cond_2
    const-string v0, "\u65b0\u5efa\u4efb\u52a1"

    .line 249
    .line 250
    :cond_3
    move-object v8, v0

    .line 251
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    move-object v9, v0

    .line 256
    check-cast v9, Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    move-object v10, v0

    .line 263
    check-cast v10, Ljava/util/List;

    .line 264
    .line 265
    const/4 v11, 0x0

    .line 266
    const/16 v12, 0x11

    .line 267
    .line 268
    invoke-static/range {v7 .. v12}, Lz7/b2;->a(Lz7/b2;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)Lz7/b2;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-interface {v6, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_4
    :goto_1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 277
    .line 278
    const-string v0, "\u6267\u884c\u6216\u89e6\u53d1\u4e0d\u80fd\u4e3a\u7a7a"

    .line 279
    .line 280
    const/4 v1, 0x0

    .line 281
    invoke-static {v1, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :goto_2
    return-object v4

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
