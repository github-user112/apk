.class public final Ly9/h0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:Lv9/k;

.field public b:Lv9/x;

.field public c:Lea/o;

.field public d:Lv9/k0;

.field public e:I

.field public f:Llb/q0;

.field public g:Z

.field public final h:Ly9/v;

.field public final i:Lua/e;

.field public final j:Llb/w;

.field public final synthetic k:Ly9/i0;


# direct methods
.method public constructor <init>(Ly9/i0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly9/h0;->k:Ly9/i0;

    .line 5
    .line 6
    invoke-virtual {p1}, Ly9/n;->k()Lv9/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ly9/h0;->a:Lv9/k;

    .line 11
    .line 12
    invoke-virtual {p1}, Ly9/i0;->h()Lv9/x;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Ly9/h0;->b:Lv9/x;

    .line 17
    .line 18
    invoke-virtual {p1}, Ly9/i0;->d()Lea/o;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Ly9/h0;->c:Lea/o;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Ly9/h0;->d:Lv9/k0;

    .line 26
    .line 27
    invoke-virtual {p1}, Ly9/i0;->f()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Ly9/h0;->e:I

    .line 32
    .line 33
    sget-object v0, Llb/q0;->a:Llb/o0;

    .line 34
    .line 35
    iput-object v0, p0, Ly9/h0;->f:Llb/q0;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Ly9/h0;->g:Z

    .line 39
    .line 40
    iget-object v0, p1, Ly9/i0;->t:Ly9/v;

    .line 41
    .line 42
    iput-object v0, p0, Ly9/h0;->h:Ly9/v;

    .line 43
    .line 44
    invoke-virtual {p1}, Ly9/m;->getName()Lua/e;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Ly9/h0;->i:Lua/e;

    .line 49
    .line 50
    invoke-virtual {p1}, Ly9/s0;->getType()Llb/w;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Ly9/h0;->j:Llb/w;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic a(I)V
    .locals 24

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    const/16 v3, 0xe

    .line 8
    .line 9
    const/16 v4, 0xd

    .line 10
    .line 11
    const/16 v5, 0x13

    .line 12
    .line 13
    const/16 v6, 0xb

    .line 14
    .line 15
    const/16 v7, 0x9

    .line 16
    .line 17
    const/4 v8, 0x7

    .line 18
    const/4 v9, 0x5

    .line 19
    const/4 v10, 0x3

    .line 20
    const/4 v11, 0x2

    .line 21
    const/4 v12, 0x1

    .line 22
    if-eq v0, v12, :cond_0

    .line 23
    .line 24
    if-eq v0, v11, :cond_0

    .line 25
    .line 26
    if-eq v0, v10, :cond_0

    .line 27
    .line 28
    if-eq v0, v9, :cond_0

    .line 29
    .line 30
    if-eq v0, v8, :cond_0

    .line 31
    .line 32
    if-eq v0, v7, :cond_0

    .line 33
    .line 34
    if-eq v0, v6, :cond_0

    .line 35
    .line 36
    if-eq v0, v5, :cond_0

    .line 37
    .line 38
    if-eq v0, v4, :cond_0

    .line 39
    .line 40
    if-eq v0, v3, :cond_0

    .line 41
    .line 42
    if-eq v0, v2, :cond_0

    .line 43
    .line 44
    if-eq v0, v1, :cond_0

    .line 45
    .line 46
    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v13, "@NotNull method %s.%s must not return null"

    .line 50
    .line 51
    :goto_0
    if-eq v0, v12, :cond_1

    .line 52
    .line 53
    if-eq v0, v11, :cond_1

    .line 54
    .line 55
    if-eq v0, v10, :cond_1

    .line 56
    .line 57
    if-eq v0, v9, :cond_1

    .line 58
    .line 59
    if-eq v0, v8, :cond_1

    .line 60
    .line 61
    if-eq v0, v7, :cond_1

    .line 62
    .line 63
    if-eq v0, v6, :cond_1

    .line 64
    .line 65
    if-eq v0, v5, :cond_1

    .line 66
    .line 67
    if-eq v0, v4, :cond_1

    .line 68
    .line 69
    if-eq v0, v3, :cond_1

    .line 70
    .line 71
    if-eq v0, v2, :cond_1

    .line 72
    .line 73
    if-eq v0, v1, :cond_1

    .line 74
    .line 75
    const/4 v14, 0x3

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 v14, 0x2

    .line 78
    :goto_1
    new-array v14, v14, [Ljava/lang/Object;

    .line 79
    .line 80
    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    .line 81
    .line 82
    const/16 v16, 0x0

    .line 83
    .line 84
    packed-switch v0, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    const-string v17, "owner"

    .line 88
    .line 89
    aput-object v17, v14, v16

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :pswitch_0
    const-string v17, "name"

    .line 93
    .line 94
    aput-object v17, v14, v16

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_1
    const-string v17, "substitution"

    .line 98
    .line 99
    aput-object v17, v14, v16

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :pswitch_2
    const-string v17, "typeParameters"

    .line 103
    .line 104
    aput-object v17, v14, v16

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :pswitch_3
    const-string v17, "kind"

    .line 108
    .line 109
    aput-object v17, v14, v16

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :pswitch_4
    const-string v17, "visibility"

    .line 113
    .line 114
    aput-object v17, v14, v16

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_5
    const-string v17, "modality"

    .line 118
    .line 119
    aput-object v17, v14, v16

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :pswitch_6
    const-string v17, "type"

    .line 123
    .line 124
    aput-object v17, v14, v16

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :pswitch_7
    aput-object v15, v14, v16

    .line 128
    .line 129
    :goto_2
    const-string v16, "setOwner"

    .line 130
    .line 131
    const-string v17, "setReturnType"

    .line 132
    .line 133
    const-string v18, "setModality"

    .line 134
    .line 135
    const-string v19, "setVisibility"

    .line 136
    .line 137
    const-string v20, "setKind"

    .line 138
    .line 139
    const-string v21, "setTypeParameters"

    .line 140
    .line 141
    const-string v22, "setSubstitution"

    .line 142
    .line 143
    const-string v23, "setName"

    .line 144
    .line 145
    if-eq v0, v12, :cond_d

    .line 146
    .line 147
    if-eq v0, v11, :cond_c

    .line 148
    .line 149
    if-eq v0, v10, :cond_b

    .line 150
    .line 151
    if-eq v0, v9, :cond_a

    .line 152
    .line 153
    if-eq v0, v8, :cond_9

    .line 154
    .line 155
    if-eq v0, v7, :cond_8

    .line 156
    .line 157
    if-eq v0, v6, :cond_7

    .line 158
    .line 159
    if-eq v0, v5, :cond_6

    .line 160
    .line 161
    if-eq v0, v4, :cond_5

    .line 162
    .line 163
    if-eq v0, v3, :cond_4

    .line 164
    .line 165
    if-eq v0, v2, :cond_3

    .line 166
    .line 167
    if-eq v0, v1, :cond_2

    .line 168
    .line 169
    aput-object v15, v14, v12

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_2
    const-string v15, "setCopyOverrides"

    .line 173
    .line 174
    aput-object v15, v14, v12

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_3
    aput-object v22, v14, v12

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    const-string v15, "setDispatchReceiverParameter"

    .line 181
    .line 182
    aput-object v15, v14, v12

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_5
    aput-object v21, v14, v12

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_6
    aput-object v23, v14, v12

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    aput-object v20, v14, v12

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_8
    aput-object v19, v14, v12

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_9
    aput-object v18, v14, v12

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_a
    aput-object v17, v14, v12

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_b
    const-string v15, "setPreserveSourceElement"

    .line 204
    .line 205
    aput-object v15, v14, v12

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_c
    const-string v15, "setOriginal"

    .line 209
    .line 210
    aput-object v15, v14, v12

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_d
    aput-object v16, v14, v12

    .line 214
    .line 215
    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 216
    .line 217
    .line 218
    aput-object v16, v14, v11

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :pswitch_8
    aput-object v23, v14, v11

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :pswitch_9
    aput-object v22, v14, v11

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :pswitch_a
    aput-object v21, v14, v11

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :pswitch_b
    aput-object v20, v14, v11

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :pswitch_c
    aput-object v19, v14, v11

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :pswitch_d
    aput-object v18, v14, v11

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :pswitch_e
    aput-object v17, v14, v11

    .line 240
    .line 241
    :goto_4
    :pswitch_f
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    if-eq v0, v12, :cond_e

    .line 246
    .line 247
    if-eq v0, v11, :cond_e

    .line 248
    .line 249
    if-eq v0, v10, :cond_e

    .line 250
    .line 251
    if-eq v0, v9, :cond_e

    .line 252
    .line 253
    if-eq v0, v8, :cond_e

    .line 254
    .line 255
    if-eq v0, v7, :cond_e

    .line 256
    .line 257
    if-eq v0, v6, :cond_e

    .line 258
    .line 259
    if-eq v0, v5, :cond_e

    .line 260
    .line 261
    if-eq v0, v4, :cond_e

    .line 262
    .line 263
    if-eq v0, v3, :cond_e

    .line 264
    .line 265
    if-eq v0, v2, :cond_e

    .line 266
    .line 267
    if-eq v0, v1, :cond_e

    .line 268
    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 270
    .line 271
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 276
    .line 277
    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :goto_5
    throw v0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final b()Ly9/i0;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Ly9/h0;->a:Lv9/k;

    .line 4
    .line 5
    iget-object v3, v0, Ly9/h0;->b:Lv9/x;

    .line 6
    .line 7
    iget-object v4, v0, Ly9/h0;->c:Lea/o;

    .line 8
    .line 9
    iget-object v5, v0, Ly9/h0;->d:Lv9/k0;

    .line 10
    .line 11
    iget v6, v0, Ly9/h0;->e:I

    .line 12
    .line 13
    iget-object v7, v0, Ly9/h0;->i:Lua/e;

    .line 14
    .line 15
    iget-object v1, v0, Ly9/h0;->k:Ly9/i0;

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Ly9/i0;->E0(Lv9/k;Lv9/x;Lea/o;Lv9/k0;ILua/e;)Ly9/i0;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    invoke-virtual {v1}, Ly9/i0;->getTypeParameters()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v10, Ljava/util/ArrayList;

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Ly9/h0;->f:Llb/q0;

    .line 38
    .line 39
    invoke-static {v2, v3, v9, v10}, Llb/c;->z(Ljava/util/List;Llb/q0;Lv9/k;Ljava/util/ArrayList;)Llb/s0;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, v0, Ly9/h0;->j:Llb/w;

    .line 44
    .line 45
    sget-object v4, Llb/y0;->e:Llb/y0;

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/4 v6, 0x0

    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object v7, Llb/y0;->d:Llb/y0;

    .line 56
    .line 57
    invoke-virtual {v2, v3, v7}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v9, v3}, Ly9/i0;->I0(Llb/w;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v3, v0, Ly9/h0;->h:Ly9/v;

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ly9/v;->D0(Llb/s0;)Ly9/v;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    :goto_0
    return-object v6

    .line 77
    :cond_2
    move-object v11, v3

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object v11, v6

    .line 80
    :goto_1
    iget-object v3, v1, Ly9/i0;->u:Ly9/v;

    .line 81
    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    invoke-virtual {v3}, Ly9/v;->getType()Llb/w;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v2, v8, v7}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    if-nez v8, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    new-instance v12, Ly9/v;

    .line 96
    .line 97
    new-instance v13, Lfb/c;

    .line 98
    .line 99
    invoke-virtual {v3}, Ly9/v;->C0()Lfb/e;

    .line 100
    .line 101
    .line 102
    invoke-direct {v13, v9, v8}, Lfb/c;-><init>(Lv9/b;Llb/w;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Lfb/a;->getAnnotations()Lw9/h;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v12, v9, v13, v3}, Ly9/v;-><init>(Lv9/k;Lfb/a;Lw9/h;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    :goto_2
    move-object v12, v6

    .line 114
    :goto_3
    new-instance v13, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v3, v1, Ly9/i0;->s:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_8

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    check-cast v8, Ly9/v;

    .line 136
    .line 137
    invoke-virtual {v8}, Ly9/v;->getType()Llb/w;

    .line 138
    .line 139
    .line 140
    move-result-object v14

    .line 141
    invoke-virtual {v2, v14, v7}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    if-nez v14, :cond_6

    .line 146
    .line 147
    move-object/from16 v17, v3

    .line 148
    .line 149
    move-object v15, v6

    .line 150
    move-object/from16 v19, v15

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_6
    new-instance v15, Ly9/v;

    .line 154
    .line 155
    move-object/from16 v19, v6

    .line 156
    .line 157
    new-instance v6, Lfb/b;

    .line 158
    .line 159
    invoke-virtual {v8}, Ly9/v;->C0()Lfb/e;

    .line 160
    .line 161
    .line 162
    move-result-object v16

    .line 163
    check-cast v16, Lfb/b;

    .line 164
    .line 165
    move-object/from16 v17, v3

    .line 166
    .line 167
    invoke-virtual/range {v16 .. v16}, Lfb/b;->u0()Lua/e;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v8}, Ly9/v;->C0()Lfb/e;

    .line 172
    .line 173
    .line 174
    invoke-direct {v6, v9, v14, v3}, Lfb/b;-><init>(Lv9/b;Llb/w;Lua/e;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Lfb/a;->getAnnotations()Lw9/h;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-direct {v15, v9, v6, v3}, Ly9/v;-><init>(Lv9/k;Lfb/a;Lw9/h;)V

    .line 182
    .line 183
    .line 184
    :goto_5
    if-eqz v15, :cond_7

    .line 185
    .line 186
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_7
    move-object/from16 v3, v17

    .line 190
    .line 191
    move-object/from16 v6, v19

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_8
    move-object/from16 v19, v6

    .line 195
    .line 196
    move-object v8, v9

    .line 197
    move-object v9, v5

    .line 198
    invoke-virtual/range {v8 .. v13}, Ly9/i0;->J0(Llb/w;Ljava/util/List;Ly9/v;Ly9/v;Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    move-object v9, v8

    .line 202
    iget-object v3, v1, Ly9/i0;->w:Ly9/j0;

    .line 203
    .line 204
    const/4 v5, 0x2

    .line 205
    sget-object v18, Lv9/m0;->e0:Lv9/n0;

    .line 206
    .line 207
    if-nez v3, :cond_9

    .line 208
    .line 209
    move-object/from16 v3, v19

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_9
    new-instance v8, Ly9/j0;

    .line 213
    .line 214
    invoke-virtual {v3}, Lfb/a;->getAnnotations()Lw9/h;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    iget-object v11, v0, Ly9/h0;->b:Lv9/x;

    .line 219
    .line 220
    iget-object v3, v1, Ly9/i0;->w:Ly9/j0;

    .line 221
    .line 222
    invoke-virtual {v3}, Ly9/g0;->d()Lea/o;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    iget v6, v0, Ly9/h0;->e:I

    .line 227
    .line 228
    if-ne v6, v5, :cond_a

    .line 229
    .line 230
    iget-object v6, v3, Lea/o;->a:Ln/a;

    .line 231
    .line 232
    invoke-virtual {v6}, Ln/a;->k()Ln/a;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-static {v6}, Lv9/o;->f(Ln/a;)Lea/o;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-static {v6}, Lv9/o;->e(Lea/o;)Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_a

    .line 245
    .line 246
    sget-object v3, Lv9/o;->h:Lea/o;

    .line 247
    .line 248
    :cond_a
    move-object v12, v3

    .line 249
    iget-object v3, v1, Ly9/i0;->w:Ly9/j0;

    .line 250
    .line 251
    iget-boolean v13, v3, Ly9/g0;->e:Z

    .line 252
    .line 253
    iget-boolean v14, v3, Ly9/g0;->f:Z

    .line 254
    .line 255
    iget-boolean v15, v3, Ly9/g0;->i:Z

    .line 256
    .line 257
    iget v3, v0, Ly9/h0;->e:I

    .line 258
    .line 259
    iget-object v6, v0, Ly9/h0;->d:Lv9/k0;

    .line 260
    .line 261
    if-nez v6, :cond_b

    .line 262
    .line 263
    move-object/from16 v17, v19

    .line 264
    .line 265
    :goto_6
    move/from16 v16, v3

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_b
    invoke-interface {v6}, Lv9/k0;->b()Ly9/j0;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    move-object/from16 v17, v6

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :goto_7
    invoke-direct/range {v8 .. v18}, Ly9/j0;-><init>(Lv9/k0;Lw9/h;Lv9/x;Lea/o;ZZZILy9/j0;Lv9/m0;)V

    .line 276
    .line 277
    .line 278
    move-object v3, v8

    .line 279
    :goto_8
    if-eqz v3, :cond_d

    .line 280
    .line 281
    iget-object v6, v1, Ly9/i0;->w:Ly9/j0;

    .line 282
    .line 283
    iget-object v7, v6, Ly9/j0;->m:Llb/w;

    .line 284
    .line 285
    invoke-static {v2, v6}, Ly9/i0;->F0(Llb/s0;Lv9/j0;)Lv9/t;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    iput-object v6, v3, Ly9/g0;->l:Lv9/t;

    .line 290
    .line 291
    if-eqz v7, :cond_c

    .line 292
    .line 293
    invoke-virtual {v2, v7, v4}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    goto :goto_9

    .line 298
    :cond_c
    move-object/from16 v4, v19

    .line 299
    .line 300
    :goto_9
    invoke-virtual {v3, v4}, Ly9/j0;->F0(Llb/w;)V

    .line 301
    .line 302
    .line 303
    :cond_d
    iget-object v4, v1, Ly9/i0;->x:Ly9/k0;

    .line 304
    .line 305
    if-nez v4, :cond_e

    .line 306
    .line 307
    move-object/from16 v11, v19

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_e
    new-instance v8, Ly9/k0;

    .line 311
    .line 312
    check-cast v4, Lfb/a;

    .line 313
    .line 314
    invoke-virtual {v4}, Lfb/a;->getAnnotations()Lw9/h;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    iget-object v11, v0, Ly9/h0;->b:Lv9/x;

    .line 319
    .line 320
    iget-object v4, v1, Ly9/i0;->x:Ly9/k0;

    .line 321
    .line 322
    check-cast v4, Ly9/g0;

    .line 323
    .line 324
    invoke-virtual {v4}, Ly9/g0;->d()Lea/o;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    iget v6, v0, Ly9/h0;->e:I

    .line 329
    .line 330
    if-ne v6, v5, :cond_f

    .line 331
    .line 332
    iget-object v5, v4, Lea/o;->a:Ln/a;

    .line 333
    .line 334
    invoke-virtual {v5}, Ln/a;->k()Ln/a;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-static {v5}, Lv9/o;->f(Ln/a;)Lea/o;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-static {v5}, Lv9/o;->e(Lea/o;)Z

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    if-eqz v5, :cond_f

    .line 347
    .line 348
    sget-object v4, Lv9/o;->h:Lea/o;

    .line 349
    .line 350
    :cond_f
    move-object v12, v4

    .line 351
    iget-object v4, v1, Ly9/i0;->x:Ly9/k0;

    .line 352
    .line 353
    check-cast v4, Ly9/g0;

    .line 354
    .line 355
    iget-boolean v13, v4, Ly9/g0;->e:Z

    .line 356
    .line 357
    iget-boolean v14, v4, Ly9/g0;->f:Z

    .line 358
    .line 359
    iget-boolean v15, v4, Ly9/g0;->i:Z

    .line 360
    .line 361
    iget v4, v0, Ly9/h0;->e:I

    .line 362
    .line 363
    iget-object v5, v0, Ly9/h0;->d:Lv9/k0;

    .line 364
    .line 365
    if-nez v5, :cond_10

    .line 366
    .line 367
    move-object/from16 v17, v19

    .line 368
    .line 369
    :goto_a
    move/from16 v16, v4

    .line 370
    .line 371
    goto :goto_b

    .line 372
    :cond_10
    invoke-interface {v5}, Lv9/k0;->c()Ly9/k0;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    move-object/from16 v17, v5

    .line 377
    .line 378
    goto :goto_a

    .line 379
    :goto_b
    invoke-direct/range {v8 .. v18}, Ly9/k0;-><init>(Lv9/k0;Lw9/h;Lv9/x;Lea/o;ZZZILy9/k0;Lv9/m0;)V

    .line 380
    .line 381
    .line 382
    move-object v11, v8

    .line 383
    :goto_c
    if-eqz v11, :cond_14

    .line 384
    .line 385
    iget-object v4, v1, Ly9/i0;->x:Ly9/k0;

    .line 386
    .line 387
    invoke-virtual {v4}, Ly9/k0;->S()Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object v12

    .line 391
    const/4 v15, 0x0

    .line 392
    const/16 v16, 0x0

    .line 393
    .line 394
    const/4 v14, 0x0

    .line 395
    move-object v13, v2

    .line 396
    invoke-static/range {v11 .. v16}, Ly9/u;->G0(Lv9/t;Ljava/util/List;Llb/s0;ZZ[Z)Ljava/util/ArrayList;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    const/4 v4, 0x0

    .line 401
    if-nez v2, :cond_11

    .line 402
    .line 403
    iget-object v2, v0, Ly9/h0;->a:Lv9/k;

    .line 404
    .line 405
    invoke-static {v2}, Lbb/e;->e(Lv9/k;)Ls9/i;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v2}, Ls9/i;->o()Llb/a0;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    iget-object v5, v1, Ly9/i0;->x:Ly9/k0;

    .line 414
    .line 415
    invoke-virtual {v5}, Ly9/k0;->S()Ljava/util/List;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    check-cast v5, Ly9/r0;

    .line 424
    .line 425
    check-cast v5, Lfb/a;

    .line 426
    .line 427
    invoke-virtual {v5}, Lfb/a;->getAnnotations()Lw9/h;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-static {v11, v2, v5}, Ly9/k0;->E0(Ly9/k0;Llb/w;Lw9/h;)Ly9/r0;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    :cond_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    const/4 v6, 0x1

    .line 444
    if-ne v5, v6, :cond_13

    .line 445
    .line 446
    iget-object v5, v1, Ly9/i0;->x:Ly9/k0;

    .line 447
    .line 448
    invoke-static {v13, v5}, Ly9/i0;->F0(Llb/s0;Lv9/j0;)Lv9/t;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    iput-object v5, v11, Ly9/g0;->l:Lv9/t;

    .line 453
    .line 454
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    check-cast v2, Ly9/r0;

    .line 459
    .line 460
    if-eqz v2, :cond_12

    .line 461
    .line 462
    iput-object v2, v11, Ly9/k0;->m:Ly9/r0;

    .line 463
    .line 464
    goto :goto_d

    .line 465
    :cond_12
    const/4 v1, 0x6

    .line 466
    invoke-static {v1}, Ly9/k0;->x(I)V

    .line 467
    .line 468
    .line 469
    throw v19

    .line 470
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 473
    .line 474
    .line 475
    throw v1

    .line 476
    :cond_14
    move-object v13, v2

    .line 477
    :goto_d
    iget-object v2, v1, Ly9/i0;->y:Ly9/r;

    .line 478
    .line 479
    if-nez v2, :cond_15

    .line 480
    .line 481
    move-object/from16 v4, v19

    .line 482
    .line 483
    goto :goto_e

    .line 484
    :cond_15
    new-instance v4, Ly9/r;

    .line 485
    .line 486
    invoke-virtual {v2}, Lfb/a;->getAnnotations()Lw9/h;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    invoke-direct {v4, v2, v9}, Ly9/r;-><init>(Lw9/h;Ly9/i0;)V

    .line 491
    .line 492
    .line 493
    :goto_e
    iget-object v2, v1, Ly9/i0;->z:Ly9/r;

    .line 494
    .line 495
    if-nez v2, :cond_16

    .line 496
    .line 497
    move-object/from16 v6, v19

    .line 498
    .line 499
    goto :goto_f

    .line 500
    :cond_16
    new-instance v6, Ly9/r;

    .line 501
    .line 502
    invoke-virtual {v2}, Lfb/a;->getAnnotations()Lw9/h;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-direct {v6, v2, v9}, Ly9/r;-><init>(Lw9/h;Ly9/i0;)V

    .line 507
    .line 508
    .line 509
    :goto_f
    invoke-virtual {v9, v3, v11, v4, v6}, Ly9/i0;->G0(Ly9/j0;Ly9/k0;Ly9/r;Ly9/r;)V

    .line 510
    .line 511
    .line 512
    iget-boolean v2, v0, Ly9/h0;->g:Z

    .line 513
    .line 514
    if-eqz v2, :cond_18

    .line 515
    .line 516
    sget v2, Lub/h;->c:I

    .line 517
    .line 518
    invoke-static {}, Lub/k;->e()Lub/h;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v1}, Ly9/i0;->m()Ljava/util/Collection;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_17

    .line 535
    .line 536
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    check-cast v4, Lv9/k0;

    .line 541
    .line 542
    invoke-interface {v4, v13}, Lv9/k0;->e(Llb/s0;)Lv9/k0;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    invoke-virtual {v2, v4}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    goto :goto_10

    .line 550
    :cond_17
    iput-object v2, v9, Ly9/i0;->k:Ljava/util/Collection;

    .line 551
    .line 552
    :cond_18
    invoke-virtual {v1}, Ly9/i0;->v()Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-eqz v2, :cond_19

    .line 557
    .line 558
    iget-object v2, v1, Ly9/i0;->h:Lf9/a;

    .line 559
    .line 560
    if-eqz v2, :cond_19

    .line 561
    .line 562
    iget-object v1, v1, Ly9/i0;->g:Lkb/i;

    .line 563
    .line 564
    invoke-virtual {v9, v1, v2}, Ly9/i0;->H0(Lkb/i;Lf9/a;)V

    .line 565
    .line 566
    .line 567
    :cond_19
    return-object v9
.end method
