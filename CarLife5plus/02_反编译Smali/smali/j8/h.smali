.class public final synthetic Lj8/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj8/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/h;->b:Lf1/b1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lj8/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 7
    .line 8
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lo2/w;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const-string v0, "Required value was null."

    .line 18
    .line 19
    invoke-static {v0}, Lc0/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 20
    .line 21
    .line 22
    new-instance v0, Lac/p;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :pswitch_0
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 38
    .line 39
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_2
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 48
    .line 49
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_3
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 58
    .line 59
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lo2/w;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_1
    const-string v0, "Required value was null."

    .line 69
    .line 70
    invoke-static {v0}, Lc0/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 71
    .line 72
    .line 73
    new-instance v0, Lac/p;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :pswitch_4
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 80
    .line 81
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lo2/w;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_2
    const-string v0, "Required value was null."

    .line 91
    .line 92
    invoke-static {v0}, Lc0/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 93
    .line 94
    .line 95
    new-instance v0, Lac/p;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :pswitch_5
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 102
    .line 103
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 109
    .line 110
    return-object v0

    .line 111
    :pswitch_6
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 112
    .line 113
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 119
    .line 120
    return-object v0

    .line 121
    :pswitch_7
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 122
    .line 123
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 129
    .line 130
    return-object v0

    .line 131
    :pswitch_8
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 132
    .line 133
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 139
    .line 140
    return-object v0

    .line 141
    :pswitch_9
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 142
    .line 143
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 149
    .line 150
    return-object v0

    .line 151
    :pswitch_a
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;->connect()V

    .line 156
    .line 157
    .line 158
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 159
    .line 160
    iget-object v1, p0, Lj8/h;->b:Lf1/b1;

    .line 161
    .line 162
    invoke-interface {v1, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 166
    .line 167
    return-object v0

    .line 168
    :pswitch_b
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 169
    .line 170
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 176
    .line 177
    return-object v0

    .line 178
    :pswitch_c
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 179
    .line 180
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 186
    .line 187
    return-object v0

    .line 188
    :pswitch_d
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 189
    .line 190
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 191
    .line 192
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 196
    .line 197
    return-object v0

    .line 198
    :pswitch_e
    sget-object v0, Lm7/k;->b:Ll8/p;

    .line 199
    .line 200
    invoke-virtual {v0}, Ll8/p;->i()[Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-object v1, p0, Lj8/h;->b:Lf1/b1;

    .line 205
    .line 206
    invoke-interface {v1, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 210
    .line 211
    return-object v0

    .line 212
    :pswitch_f
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 213
    .line 214
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 215
    .line 216
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 220
    .line 221
    return-object v0

    .line 222
    :pswitch_10
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 223
    .line 224
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 230
    .line 231
    return-object v0

    .line 232
    :pswitch_11
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 233
    .line 234
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 235
    .line 236
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 240
    .line 241
    return-object v0

    .line 242
    :pswitch_12
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 243
    .line 244
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 250
    .line 251
    return-object v0

    .line 252
    :pswitch_13
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 253
    .line 254
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Ljava/lang/Boolean;

    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 261
    .line 262
    .line 263
    return-object v0

    .line 264
    :pswitch_14
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 265
    .line 266
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 267
    .line 268
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 272
    .line 273
    return-object v0

    .line 274
    :pswitch_15
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 275
    .line 276
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 277
    .line 278
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    sget-object v0, Li7/p;->e:Lfc/c;

    .line 282
    .line 283
    new-instance v1, Li7/l;

    .line 284
    .line 285
    const/4 v2, 0x2

    .line 286
    const/4 v3, 0x0

    .line 287
    invoke-direct {v1, v2, v3}, Ly8/i;-><init>(ILw8/c;)V

    .line 288
    .line 289
    .line 290
    const/4 v2, 0x3

    .line 291
    invoke-static {v0, v3, v1, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 292
    .line 293
    .line 294
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 295
    .line 296
    return-object v0

    .line 297
    :pswitch_16
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 298
    .line 299
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 300
    .line 301
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 305
    .line 306
    return-object v0

    .line 307
    :pswitch_17
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 308
    .line 309
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 310
    .line 311
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 315
    .line 316
    return-object v0

    .line 317
    :pswitch_18
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 318
    .line 319
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 320
    .line 321
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 325
    .line 326
    return-object v0

    .line 327
    :pswitch_19
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 328
    .line 329
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 330
    .line 331
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 335
    .line 336
    return-object v0

    .line 337
    :pswitch_1a
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 338
    .line 339
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 340
    .line 341
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 345
    .line 346
    return-object v0

    .line 347
    :pswitch_1b
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 348
    .line 349
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 350
    .line 351
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 355
    .line 356
    return-object v0

    .line 357
    :pswitch_1c
    iget-object v0, p0, Lj8/h;->b:Lf1/b1;

    .line 358
    .line 359
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 360
    .line 361
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 365
    .line 366
    return-object v0

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
