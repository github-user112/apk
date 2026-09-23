.class public final synthetic Lc8/r0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf9/k;Lz7/v1;Lf1/b1;Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p6, p0, Lc8/r0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/r0;->b:Lf9/k;

    .line 4
    .line 5
    iput-object p3, p0, Lc8/r0;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p4, p0, Lc8/r0;->d:Lf1/b1;

    .line 8
    .line 9
    iput-object p5, p0, Lc8/r0;->e:Lf1/b1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lc8/r0;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lc8/r0;->e:Lf1/b1;

    .line 7
    .line 8
    iget-object v4, p0, Lc8/r0;->d:Lf1/b1;

    .line 9
    .line 10
    iget-object v5, p0, Lc8/r0;->c:Lf1/b1;

    .line 11
    .line 12
    iget-object v6, p0, Lc8/r0;->b:Lf9/k;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 30
    .line 31
    const-string v0, "\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    .line 32
    .line 33
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v7, 0x8

    .line 48
    .line 49
    if-ge v0, v7, :cond_1

    .line 50
    .line 51
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 52
    .line 53
    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u5c11\u4e8e8\u4f4d"

    .line 54
    .line 55
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance v0, Lz7/a2;

    .line 60
    .line 61
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    const-string v2, "\u6253\u5f00"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string v2, "\u5173\u95ed"

    .line 77
    .line 78
    :goto_0
    const-string v7, "\u70ed\u70b9"

    .line 79
    .line 80
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v7, Lz7/i0;

    .line 85
    .line 86
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Ljava/lang/String;

    .line 101
    .line 102
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {v7, v5, v4, v3}, Lz7/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    const-string v3, "Hotspot"

    .line 112
    .line 113
    const-string v4, "\u70ed\u70b9\u5f00\u5173"

    .line 114
    .line 115
    invoke-direct {v0, v3, v4, v2, v7}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v6, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :goto_1
    return-object v1

    .line 122
    :pswitch_0
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_3

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_4

    .line 146
    .line 147
    :goto_2
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 148
    .line 149
    const-string v0, "\u8bf7\u5148\u9009\u62e9\u5e94\u7528\u5305\u540d\u53ca\u6d3b\u52a8"

    .line 150
    .line 151
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    new-instance v0, Lz7/a2;

    .line 156
    .line 157
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Ljava/lang/String;

    .line 162
    .line 163
    const-string v3, "\u6253\u5f00 "

    .line 164
    .line 165
    invoke-static {v3, v2}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    new-instance v3, Lz7/g;

    .line 170
    .line 171
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    check-cast v5, Ljava/lang/String;

    .line 176
    .line 177
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    check-cast v4, Ljava/lang/String;

    .line 182
    .line 183
    invoke-direct {v3, v5, v4}, Lz7/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v4, "AppOpen"

    .line 187
    .line 188
    const-string v5, "\u6253\u5f00\u5e94\u7528"

    .line 189
    .line 190
    invoke-direct {v0, v4, v5, v2, v3}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v6, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    :goto_3
    return-object v1

    .line 197
    :pswitch_1
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_5

    .line 208
    .line 209
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 210
    .line 211
    const-string v0, "\u6309\u952e\u6620\u5c04\u4e0d\u80fd\u4e3a\u7a7a"

    .line 212
    .line 213
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_5
    new-instance v0, Lz7/a2;

    .line 218
    .line 219
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Ljava/lang/String;

    .line 224
    .line 225
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    check-cast v7, Ljava/lang/String;

    .line 230
    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v9, "\u5173\u952e\u5b57: "

    .line 234
    .line 235
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v2, " \u76d1\u542c: "

    .line 242
    .line 243
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    new-instance v7, Lz7/o0;

    .line 254
    .line 255
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    check-cast v5, Ljava/lang/String;

    .line 260
    .line 261
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Ljava/lang/String;

    .line 266
    .line 267
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Ljava/lang/Boolean;

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    invoke-direct {v7, v5, v4, v3}, Lz7/o0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    .line 279
    .line 280
    const-string v3, "LogLine"

    .line 281
    .line 282
    const-string v4, "\u7cfb\u7edf\u65e5\u5fd7"

    .line 283
    .line 284
    invoke-direct {v0, v3, v4, v2, v7}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v6, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    :goto_4
    return-object v1

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
