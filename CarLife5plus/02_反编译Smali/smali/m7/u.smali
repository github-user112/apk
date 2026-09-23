.class public final synthetic Lm7/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm7/u;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm7/u;->b:Landroid/app/Activity;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lm7/u;->a:I

    .line 4
    .line 5
    const-string v2, "$this$update"

    .line 6
    .line 7
    iget-object v3, v0, Lm7/u;->b:Landroid/app/Activity;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sget-object v1, Lu7/j;->a:Lr8/o;

    .line 25
    .line 26
    invoke-static {}, Lw6/a;->h()Ly6/a;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v6, "\u60ac\u6d6e\u7a97"

    .line 35
    .line 36
    invoke-static {v3, v6, v1}, Lu7/j;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v1, Lq7/e;->e:Ldc/l0;

    .line 45
    .line 46
    sget-object v1, Lq7/e;->e:Ldc/l0;

    .line 47
    .line 48
    :cond_1
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    move-object v6, v3

    .line 53
    check-cast v6, Lq7/e;

    .line 54
    .line 55
    invoke-static {v6, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    const/16 v11, 0xe

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-static/range {v6 .. v11}, Lq7/e;->a(Lq7/e;ZIIII)Lq7/e;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v1, v3, v5}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    return-object v1

    .line 78
    :pswitch_0
    move-object/from16 v1, p1

    .line 79
    .line 80
    check-cast v1, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    if-eqz v14, :cond_9

    .line 87
    .line 88
    sget-object v1, Lu7/j;->a:Lr8/o;

    .line 89
    .line 90
    invoke-static {}, Lw6/a;->f()Ly6/a;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {}, Lw6/a;->e()Ly6/a;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {}, Lw6/a;->d()Ly6/a;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {}, Lw6/a;->b()Ly6/a;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-static {}, Lw6/a;->a()Ly6/a;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    const/4 v11, 0x6

    .line 115
    new-array v11, v11, [Ly6/a;

    .line 116
    .line 117
    aput-object v1, v11, v5

    .line 118
    .line 119
    aput-object v6, v11, v4

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    aput-object v7, v11, v1

    .line 123
    .line 124
    const/4 v1, 0x3

    .line 125
    aput-object v8, v11, v1

    .line 126
    .line 127
    const/4 v1, 0x4

    .line 128
    aput-object v9, v11, v1

    .line 129
    .line 130
    const/4 v1, 0x5

    .line 131
    aput-object v10, v11, v1

    .line 132
    .line 133
    invoke-static {v11}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v6, "\u84dd\u7259\u76f8\u5173"

    .line 138
    .line 139
    invoke-static {v3, v6, v1}, Lu7/j;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_2

    .line 144
    .line 145
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 146
    .line 147
    const-string v1, "\u84dd\u7259\u76f8\u5173\u6743\u9650\u672a\u5f00\u542f"

    .line 148
    .line 149
    invoke-static {v5, v1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :goto_1
    const/4 v4, 0x0

    .line 153
    goto/16 :goto_4

    .line 154
    .line 155
    :cond_2
    sget-object v1, Lm7/g;->c:Lr8/o;

    .line 156
    .line 157
    invoke-virtual {v1}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Landroid/bluetooth/BluetoothManager;

    .line 162
    .line 163
    const/4 v6, 0x0

    .line 164
    if-eqz v3, :cond_3

    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    goto :goto_2

    .line 171
    :cond_3
    move-object v3, v6

    .line 172
    :goto_2
    if-eqz v3, :cond_8

    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-ne v3, v4, :cond_8

    .line 179
    .line 180
    invoke-virtual {v1}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 185
    .line 186
    if-eqz v1, :cond_4

    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    goto :goto_3

    .line 193
    :cond_4
    move-object v1, v6

    .line 194
    :goto_3
    if-eqz v1, :cond_5

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    :cond_5
    if-eqz v6, :cond_7

    .line 201
    .line 202
    sget-object v1, Lm7/z;->m:Ldc/l0;

    .line 203
    .line 204
    sget-object v1, Lm7/z;->m:Ldc/l0;

    .line 205
    .line 206
    :cond_6
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    move-object v6, v3

    .line 211
    check-cast v6, Lm7/z;

    .line 212
    .line 213
    invoke-static {v6, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const/16 v18, 0x0

    .line 217
    .line 218
    const/16 v19, 0xf7f

    .line 219
    .line 220
    const/4 v7, 0x0

    .line 221
    const/4 v8, 0x0

    .line 222
    const/4 v9, 0x0

    .line 223
    const/4 v10, 0x0

    .line 224
    const/4 v11, 0x0

    .line 225
    const/4 v12, 0x0

    .line 226
    const/4 v13, 0x0

    .line 227
    const/4 v15, 0x0

    .line 228
    const/16 v16, 0x0

    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    invoke-static/range {v6 .. v19}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v1, v3, v5}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-eqz v3, :cond_6

    .line 241
    .line 242
    invoke-static {}, Lm7/g;->a()V

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_7
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 247
    .line 248
    const-string v1, "\u5f53\u524d\u7cfb\u7edf\u4e0d\u652f\u6301\u4f4e\u529f\u8017\u84dd\u7259\u5e7f\u64ad"

    .line 249
    .line 250
    invoke-static {v5, v1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_8
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 255
    .line 256
    const-string v1, "\u84dd\u7259\u672a\u5f00\u542f"

    .line 257
    .line 258
    invoke-static {v5, v1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_9
    sget-object v1, Lm7/z;->m:Ldc/l0;

    .line 263
    .line 264
    sget-object v1, Lm7/z;->m:Ldc/l0;

    .line 265
    .line 266
    :cond_a
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    move-object v6, v3

    .line 271
    check-cast v6, Lm7/z;

    .line 272
    .line 273
    invoke-static {v6, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const/16 v18, 0x0

    .line 277
    .line 278
    const/16 v19, 0xf7f

    .line 279
    .line 280
    const/4 v7, 0x0

    .line 281
    const/4 v8, 0x0

    .line 282
    const/4 v9, 0x0

    .line 283
    const/4 v10, 0x0

    .line 284
    const/4 v11, 0x0

    .line 285
    const/4 v12, 0x0

    .line 286
    const/4 v13, 0x0

    .line 287
    const/4 v15, 0x0

    .line 288
    const/16 v16, 0x0

    .line 289
    .line 290
    const/16 v17, 0x0

    .line 291
    .line 292
    invoke-static/range {v6 .. v19}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v1, v3, v5}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_a

    .line 301
    .line 302
    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    return-object v1

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
