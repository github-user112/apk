.class public final Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0008\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0005R2\u0010\u0003\u001a&\u0012\u0004\u0012\u00020\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u0004j\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;",
        "",
        "()V",
        "decoders",
        "Ljava/util/HashMap;",
        "",
        "Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;",
        "Lkotlin/collections/HashMap;",
        "decoderOf",
        "serviceType",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;

.field private static final decoders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;->decoders:Ljava/util/HashMap;

    .line 14
    .line 15
    const v1, 0x16001

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 23
    .line 24
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$1;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$1;

    .line 25
    .line 26
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const v1, 0x18001

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 40
    .line 41
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$2;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$2;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const v1, 0x18003

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 57
    .line 58
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$3;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$3;

    .line 59
    .line 60
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const v1, 0x10004

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 74
    .line 75
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$4;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$4;

    .line 76
    .line 77
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const v1, 0x18027

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 91
    .line 92
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$5;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$5;

    .line 93
    .line 94
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const v1, 0x1004b

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 108
    .line 109
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$6;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$6;

    .line 110
    .line 111
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    new-instance v1, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 118
    .line 119
    sget-object v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$featureConfigDecoder$1;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$featureConfigDecoder$1;

    .line 120
    .line 121
    invoke-direct {v1, v2}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 122
    .line 123
    .line 124
    const v2, 0x10051

    .line 125
    .line 126
    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const v2, 0x18052

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    const v1, 0x18007

    .line 145
    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 152
    .line 153
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$7;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$7;

    .line 154
    .line 155
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    const v1, 0x18028

    .line 162
    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 169
    .line 170
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$8;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$8;

    .line 171
    .line 172
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    const v1, 0x10026

    .line 179
    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 186
    .line 187
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$9;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$9;

    .line 188
    .line 189
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    const v1, 0x18032

    .line 196
    .line 197
    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 203
    .line 204
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$10;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$10;

    .line 205
    .line 206
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const v1, 0x10033

    .line 213
    .line 214
    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 220
    .line 221
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$11;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$11;

    .line 222
    .line 223
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    const v1, 0x10034

    .line 230
    .line 231
    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 237
    .line 238
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$12;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$12;

    .line 239
    .line 240
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    const v1, 0x18043

    .line 247
    .line 248
    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 254
    .line 255
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$13;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$13;

    .line 256
    .line 257
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    const v1, 0x10044

    .line 264
    .line 265
    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 271
    .line 272
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$14;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$14;

    .line 273
    .line 274
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    const v1, 0x18045

    .line 281
    .line 282
    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 288
    .line 289
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$15;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$15;

    .line 290
    .line 291
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    const v1, 0x18046

    .line 298
    .line 299
    .line 300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 305
    .line 306
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$16;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$16;

    .line 307
    .line 308
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    const v1, 0x18047

    .line 315
    .line 316
    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 322
    .line 323
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$17;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$17;

    .line 324
    .line 325
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    const v1, 0x10030

    .line 332
    .line 333
    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 339
    .line 340
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$18;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$18;

    .line 341
    .line 342
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    const v1, 0x68001

    .line 349
    .line 350
    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 356
    .line 357
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$19;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$19;

    .line 358
    .line 359
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    const v1, 0x10060

    .line 366
    .line 367
    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 373
    .line 374
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$20;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$20;

    .line 375
    .line 376
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    const v1, 0x10002

    .line 383
    .line 384
    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 390
    .line 391
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$21;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$21;

    .line 392
    .line 393
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    new-instance v1, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 400
    .line 401
    sget-object v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$touchSinglePointDecoder$1;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$touchSinglePointDecoder$1;

    .line 402
    .line 403
    invoke-direct {v1, v2}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 404
    .line 405
    .line 406
    const v2, 0x68002

    .line 407
    .line 408
    .line 409
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    const v2, 0x68004

    .line 417
    .line 418
    .line 419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    const v2, 0x68003

    .line 427
    .line 428
    .line 429
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    const v2, 0x68005

    .line 437
    .line 438
    .line 439
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    const v1, 0x18005

    .line 447
    .line 448
    .line 449
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 454
    .line 455
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$22;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$22;

    .line 456
    .line 457
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    const v1, 0x1806b

    .line 464
    .line 465
    .line 466
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 471
    .line 472
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$23;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$23;

    .line 473
    .line 474
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    const v1, 0x10008

    .line 481
    .line 482
    .line 483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 488
    .line 489
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$24;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$24;

    .line 490
    .line 491
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    const v1, 0x1800c

    .line 498
    .line 499
    .line 500
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 505
    .line 506
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$25;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$25;

    .line 507
    .line 508
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    const v1, 0x1000d

    .line 515
    .line 516
    .line 517
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 522
    .line 523
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$26;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$26;

    .line 524
    .line 525
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    const v1, 0x30001

    .line 532
    .line 533
    .line 534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 539
    .line 540
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$27;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$27;

    .line 541
    .line 542
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    new-instance v1, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 549
    .line 550
    sget-object v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$ttsInitDecoder$1;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$ttsInitDecoder$1;

    .line 551
    .line 552
    invoke-direct {v1, v2}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 553
    .line 554
    .line 555
    const v2, 0x40001

    .line 556
    .line 557
    .line 558
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    const v2, 0x50002

    .line 566
    .line 567
    .line 568
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    const v1, 0x68008

    .line 576
    .line 577
    .line 578
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 583
    .line 584
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$28;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$28;

    .line 585
    .line 586
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    const v1, 0x108002

    .line 593
    .line 594
    .line 595
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 600
    .line 601
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$29;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$29;

    .line 602
    .line 603
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    const v1, 0x108005

    .line 610
    .line 611
    .line 612
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 617
    .line 618
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$30;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$30;

    .line 619
    .line 620
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    const v1, 0x100008

    .line 627
    .line 628
    .line 629
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 634
    .line 635
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$31;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$31;

    .line 636
    .line 637
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    const v1, 0x18048

    .line 644
    .line 645
    .line 646
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 651
    .line 652
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$32;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$32;

    .line 653
    .line 654
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    const v1, 0x10049

    .line 661
    .line 662
    .line 663
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 668
    .line 669
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$33;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$33;

    .line 670
    .line 671
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    const v1, 0x1804a

    .line 678
    .line 679
    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 685
    .line 686
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$34;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$34;

    .line 687
    .line 688
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    const v1, 0x70007

    .line 695
    .line 696
    .line 697
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 702
    .line 703
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$35;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$35;

    .line 704
    .line 705
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    const v1, 0x100007

    .line 712
    .line 713
    .line 714
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 719
    .line 720
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$36;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$36;

    .line 721
    .line 722
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    const v1, 0x1006c

    .line 729
    .line 730
    .line 731
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 736
    .line 737
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$37;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$37;

    .line 738
    .line 739
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    const v1, 0x1006f

    .line 746
    .line 747
    .line 748
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 753
    .line 754
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$38;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$38;

    .line 755
    .line 756
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    const v1, 0x18010

    .line 763
    .line 764
    .line 765
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 770
    .line 771
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$39;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$39;

    .line 772
    .line 773
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    const v1, 0x1800f

    .line 780
    .line 781
    .line 782
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 787
    .line 788
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$40;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$40;

    .line 789
    .line 790
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    const v1, 0x18011

    .line 797
    .line 798
    .line 799
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 804
    .line 805
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$41;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$41;

    .line 806
    .line 807
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    const v1, 0x18012

    .line 814
    .line 815
    .line 816
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 821
    .line 822
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$42;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$42;

    .line 823
    .line 824
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    const v1, 0x18029

    .line 831
    .line 832
    .line 833
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 834
    .line 835
    .line 836
    move-result-object v1

    .line 837
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 838
    .line 839
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$43;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$43;

    .line 840
    .line 841
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    const v1, 0x18013

    .line 848
    .line 849
    .line 850
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    new-instance v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 855
    .line 856
    sget-object v3, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$44;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory$44;

    .line 857
    .line 858
    invoke-direct {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;-><init>(Lf9/o;)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final decoderOf(I)Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;->decoders:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 12
    .line 13
    return-object p1
.end method
