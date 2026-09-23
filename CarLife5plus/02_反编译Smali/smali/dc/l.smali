.class public final Ldc/l;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public e:Lg9/x;

.field public f:Lg9/w;

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ldc/g;

.field public final synthetic k:Ldc/u;


# direct methods
.method public constructor <init>(Ldc/g;Ldc/u;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc/l;->j:Ldc/g;

    .line 2
    .line 3
    iput-object p2, p0, Ldc/l;->k:Ldc/u;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Ldc/e;

    .line 4
    .line 5
    check-cast p3, Lw8/c;

    .line 6
    .line 7
    new-instance v0, Ldc/l;

    .line 8
    .line 9
    iget-object v1, p0, Ldc/l;->j:Ldc/g;

    .line 10
    .line 11
    iget-object v2, p0, Ldc/l;->k:Ldc/u;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p3}, Ldc/l;-><init>(Ldc/g;Ldc/u;Lw8/c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Ldc/l;->h:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p2, v0, Ldc/l;->i:Ljava/lang/Object;

    .line 19
    .line 20
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ldc/l;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ldc/l;->g:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    sget-object v6, Lx8/a;->a:Lx8/a;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-ne v1, v3, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Ldc/l;->e:Lg9/x;

    .line 18
    .line 19
    iget-object v7, v0, Ldc/l;->i:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v7, Lcc/w;

    .line 22
    .line 23
    iget-object v8, v0, Ldc/l;->h:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v8, Ldc/e;

    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    move-object v9, v8

    .line 31
    move-object v8, v7

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :cond_2
    iget-object v1, v0, Ldc/l;->f:Lg9/w;

    .line 42
    .line 43
    iget-object v7, v0, Ldc/l;->e:Lg9/x;

    .line 44
    .line 45
    iget-object v8, v0, Ldc/l;->i:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v8, Lcc/w;

    .line 48
    .line 49
    iget-object v9, v0, Ldc/l;->h:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v9, Ldc/e;

    .line 52
    .line 53
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_3
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Ldc/l;->h:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lac/w;

    .line 64
    .line 65
    iget-object v7, v0, Ldc/l;->i:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v7, Ldc/e;

    .line 68
    .line 69
    new-instance v8, Lb0/g;

    .line 70
    .line 71
    iget-object v9, v0, Ldc/l;->k:Ldc/u;

    .line 72
    .line 73
    const/4 v10, 0x6

    .line 74
    invoke-direct {v8, v9, v5, v10}, Lb0/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 75
    .line 76
    .line 77
    const/4 v9, 0x4

    .line 78
    sget-object v10, Lcc/a;->a:Lcc/a;

    .line 79
    .line 80
    invoke-static {v2, v9, v10}, Li2/c;->a(IILcc/a;)Lcc/h;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-interface {v1}, Lac/w;->q()Lw8/h;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget-object v10, Lw8/i;->a:Lw8/i;

    .line 89
    .line 90
    invoke-static {v1, v10, v4}, Lac/z;->i(Lw8/h;Lw8/h;Z)Lw8/h;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget-object v10, Lac/g0;->a:Lhc/e;

    .line 95
    .line 96
    if-eq v1, v10, :cond_4

    .line 97
    .line 98
    sget-object v11, Lw8/d;->a:Lw8/d;

    .line 99
    .line 100
    invoke-interface {v1, v11}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    if-nez v11, :cond_4

    .line 105
    .line 106
    invoke-interface {v1, v10}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :cond_4
    new-instance v10, Lcc/t;

    .line 111
    .line 112
    invoke-direct {v10, v1, v9}, Lcc/t;-><init>(Lw8/h;Lcc/h;)V

    .line 113
    .line 114
    .line 115
    sget-object v1, Lac/x;->a:Lac/x;

    .line 116
    .line 117
    invoke-virtual {v10, v1, v10, v8}, Lac/a;->i0(Lac/x;Lac/a;Lf9/n;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lg9/x;

    .line 121
    .line 122
    invoke-direct {v1}, Lg9/x;-><init>()V

    .line 123
    .line 124
    .line 125
    move-object v9, v7

    .line 126
    move-object v8, v10

    .line 127
    :goto_0
    move-object v7, v1

    .line 128
    iget-object v1, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 129
    .line 130
    sget-object v10, Lec/c;->d:Lfc/s;

    .line 131
    .line 132
    if-eq v1, v10, :cond_b

    .line 133
    .line 134
    new-instance v10, Lg9/w;

    .line 135
    .line 136
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    sget-object v1, Lec/c;->b:Lfc/s;

    .line 142
    .line 143
    iget-object v11, v0, Ldc/l;->j:Ldc/g;

    .line 144
    .line 145
    iget-wide v11, v11, Ldc/g;->b:J

    .line 146
    .line 147
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v11

    .line 155
    iput-wide v11, v10, Lg9/w;->a:J

    .line 156
    .line 157
    const-wide/16 v13, 0x0

    .line 158
    .line 159
    cmp-long v15, v11, v13

    .line 160
    .line 161
    if-ltz v15, :cond_8

    .line 162
    .line 163
    if-nez v15, :cond_7

    .line 164
    .line 165
    iget-object v11, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 166
    .line 167
    if-ne v11, v1, :cond_5

    .line 168
    .line 169
    move-object v11, v5

    .line 170
    :cond_5
    iput-object v9, v0, Ldc/l;->h:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object v8, v0, Ldc/l;->i:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v7, v0, Ldc/l;->e:Lg9/x;

    .line 175
    .line 176
    iput-object v10, v0, Ldc/l;->f:Lg9/w;

    .line 177
    .line 178
    iput v4, v0, Ldc/l;->g:I

    .line 179
    .line 180
    invoke-interface {v9, v11, v0}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-ne v1, v6, :cond_6

    .line 185
    .line 186
    goto/16 :goto_4

    .line 187
    .line 188
    :cond_6
    move-object v1, v10

    .line 189
    :goto_1
    iput-object v5, v7, Lg9/x;->b:Ljava/lang/Object;

    .line 190
    .line 191
    move-object v10, v1

    .line 192
    :cond_7
    move-object v1, v7

    .line 193
    move-object v7, v8

    .line 194
    move-object v8, v9

    .line 195
    goto :goto_2

    .line 196
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    const-string v2, "Debounce timeout should not be negative"

    .line 199
    .line 200
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v1

    .line 204
    :goto_2
    new-instance v12, Lic/e;

    .line 205
    .line 206
    iget-object v9, v0, Ly8/c;->b:Lw8/h;

    .line 207
    .line 208
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {v12, v9}, Lic/e;-><init>(Lw8/h;)V

    .line 212
    .line 213
    .line 214
    iget-object v9, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 215
    .line 216
    if-eqz v9, :cond_9

    .line 217
    .line 218
    iget-wide v9, v10, Lg9/w;->a:J

    .line 219
    .line 220
    new-instance v11, Ldc/h;

    .line 221
    .line 222
    const/4 v13, 0x0

    .line 223
    invoke-direct {v11, v8, v1, v5, v13}, Ldc/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 224
    .line 225
    .line 226
    new-instance v13, Lic/b;

    .line 227
    .line 228
    invoke-direct {v13, v9, v10}, Lic/b;-><init>(J)V

    .line 229
    .line 230
    .line 231
    sget-object v14, Lic/a;->i:Lic/a;

    .line 232
    .line 233
    const/4 v9, 0x3

    .line 234
    invoke-static {v9, v14}, Lg9/b0;->d(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v17, v11

    .line 238
    .line 239
    new-instance v11, Lic/c;

    .line 240
    .line 241
    sget-object v16, Lic/h;->e:Lfc/s;

    .line 242
    .line 243
    sget-object v15, Lic/g;->a:Lic/g;

    .line 244
    .line 245
    const/16 v18, 0x0

    .line 246
    .line 247
    invoke-direct/range {v11 .. v18}, Lic/c;-><init>(Lic/e;Ljava/lang/Object;Lf9/o;Lf9/o;Lfc/s;Ly8/i;Lf9/o;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v12, v11, v2}, Lic/e;->f(Lic/c;Z)V

    .line 251
    .line 252
    .line 253
    :cond_9
    invoke-interface {v7}, Lcc/w;->h()Landroid/support/v4/media/session/t;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    new-instance v10, Ldc/i;

    .line 258
    .line 259
    invoke-direct {v10, v1, v8, v5}, Ldc/i;-><init>(Lg9/x;Ldc/e;Lw8/c;)V

    .line 260
    .line 261
    .line 262
    new-instance v11, Lic/c;

    .line 263
    .line 264
    iget-object v13, v9, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v13, Lcc/h;

    .line 267
    .line 268
    sget-object v14, Lcc/d;->i:Lcc/d;

    .line 269
    .line 270
    sget-object v15, Lcc/e;->i:Lcc/e;

    .line 271
    .line 272
    iget-object v9, v9, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 273
    .line 274
    move-object/from16 v18, v9

    .line 275
    .line 276
    check-cast v18, Lf9/o;

    .line 277
    .line 278
    const/16 v16, 0x0

    .line 279
    .line 280
    move-object/from16 v17, v10

    .line 281
    .line 282
    invoke-direct/range {v11 .. v18}, Lic/c;-><init>(Lic/e;Ljava/lang/Object;Lf9/o;Lf9/o;Lfc/s;Ly8/i;Lf9/o;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v12, v11, v2}, Lic/e;->f(Lic/c;Z)V

    .line 286
    .line 287
    .line 288
    iput-object v8, v0, Ldc/l;->h:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v7, v0, Ldc/l;->i:Ljava/lang/Object;

    .line 291
    .line 292
    iput-object v1, v0, Ldc/l;->e:Lg9/x;

    .line 293
    .line 294
    iput-object v5, v0, Ldc/l;->f:Lg9/w;

    .line 295
    .line 296
    iput v3, v0, Ldc/l;->g:I

    .line 297
    .line 298
    sget-object v9, Lic/e;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 299
    .line 300
    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    instance-of v9, v9, Lic/c;

    .line 305
    .line 306
    if-eqz v9, :cond_a

    .line 307
    .line 308
    invoke-virtual {v12, v0}, Lic/e;->c(Ly8/c;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    goto :goto_3

    .line 313
    :cond_a
    invoke-virtual {v12, v0}, Lic/e;->d(Ly8/c;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    :goto_3
    if-ne v9, v6, :cond_0

    .line 318
    .line 319
    :goto_4
    return-object v6

    .line 320
    :cond_b
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 321
    .line 322
    return-object v1
.end method
