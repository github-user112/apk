.class public final synthetic La5/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La5/e;->a:I

    iput-object p2, p0, La5/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lf9/k;Lc8/a0;)V
    .locals 0

    .line 2
    const/4 p2, 0x1

    iput p2, p0, La5/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/e;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a()Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, La5/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Lp1/u;

    .line 7
    .line 8
    :cond_0
    iget-object v3, v2, Lp1/u;->g:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v3

    .line 11
    :try_start_0
    iget-boolean v0, v2, Lp1/u;->c:Z

    .line 12
    .line 13
    if-nez v0, :cond_7

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, v2, Lp1/u;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    :try_start_1
    iget-object v0, v2, Lp1/u;->f:Lh1/e;

    .line 19
    .line 20
    iget-object v5, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 21
    .line 22
    iget v0, v0, Lh1/e;->c:I

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    :goto_0
    if-ge v6, v0, :cond_6

    .line 26
    .line 27
    aget-object v7, v5, v6

    .line 28
    .line 29
    check-cast v7, Lp1/t;

    .line 30
    .line 31
    iget-object v8, v7, Lp1/t;->g:Ls/i0;

    .line 32
    .line 33
    iget-object v7, v7, Lp1/t;->a:Lf9/k;

    .line 34
    .line 35
    iget-object v9, v8, Ls/i0;->b:[Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v10, v8, Ls/i0;->a:[J

    .line 38
    .line 39
    array-length v11, v10

    .line 40
    add-int/lit8 v11, v11, -0x2

    .line 41
    .line 42
    if-ltz v11, :cond_4

    .line 43
    .line 44
    const/4 v12, 0x0

    .line 45
    :goto_1
    aget-wide v13, v10, v12

    .line 46
    .line 47
    move-object/from16 v16, v5

    .line 48
    .line 49
    not-long v4, v13

    .line 50
    const/16 v17, 0x7

    .line 51
    .line 52
    shl-long v4, v4, v17

    .line 53
    .line 54
    and-long/2addr v4, v13

    .line 55
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    and-long v4, v4, v17

    .line 61
    .line 62
    cmp-long v19, v4, v17

    .line 63
    .line 64
    if-eqz v19, :cond_3

    .line 65
    .line 66
    sub-int v4, v12, v11

    .line 67
    .line 68
    not-int v4, v4

    .line 69
    ushr-int/lit8 v4, v4, 0x1f

    .line 70
    .line 71
    const/16 v5, 0x8

    .line 72
    .line 73
    rsub-int/lit8 v4, v4, 0x8

    .line 74
    .line 75
    const/4 v15, 0x0

    .line 76
    :goto_2
    if-ge v15, v4, :cond_2

    .line 77
    .line 78
    const-wide/16 v18, 0xff

    .line 79
    .line 80
    and-long v18, v13, v18

    .line 81
    .line 82
    const-wide/16 v20, 0x80

    .line 83
    .line 84
    cmp-long v22, v18, v20

    .line 85
    .line 86
    if-gez v22, :cond_1

    .line 87
    .line 88
    shl-int/lit8 v18, v12, 0x3

    .line 89
    .line 90
    add-int v18, v18, v15

    .line 91
    .line 92
    const/16 v19, 0x8

    .line 93
    .line 94
    aget-object v5, v9, v18

    .line 95
    .line 96
    invoke-interface {v7, v5}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_1
    const/16 v19, 0x8

    .line 101
    .line 102
    :goto_3
    shr-long v13, v13, v19

    .line 103
    .line 104
    add-int/lit8 v15, v15, 0x1

    .line 105
    .line 106
    const/16 v5, 0x8

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    if-ne v4, v5, :cond_5

    .line 110
    .line 111
    :cond_3
    if-eq v12, v11, :cond_5

    .line 112
    .line 113
    add-int/lit8 v12, v12, 0x1

    .line 114
    .line 115
    move-object/from16 v5, v16

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    move-object/from16 v16, v5

    .line 119
    .line 120
    :cond_5
    invoke-virtual {v8}, Ls/i0;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    add-int/lit8 v6, v6, 0x1

    .line 124
    .line 125
    move-object/from16 v5, v16

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :goto_4
    const/4 v15, 0x0

    .line 129
    goto :goto_5

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_4

    .line 132
    :cond_6
    const/4 v15, 0x0

    .line 133
    :try_start_2
    iput-boolean v15, v2, Lp1/u;->c:Z

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    goto :goto_7

    .line 138
    :goto_5
    iput-boolean v15, v2, Lp1/u;->c:Z

    .line 139
    .line 140
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :cond_7
    :goto_6
    monitor-exit v3

    .line 142
    invoke-virtual {v2}, Lp1/u;->b()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_0

    .line 147
    .line 148
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 149
    .line 150
    return-object v0

    .line 151
    :goto_7
    monitor-exit v3

    .line 152
    throw v0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, La5/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lv0/n;

    .line 12
    .line 13
    iput-object v2, v0, Lv0/n;->B:Lv0/m;

    .line 14
    .line 15
    invoke-static {v0}, Lq2/f;->n(Lq2/y1;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lq2/f;->m(Lq2/x;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lq2/f;->l(Lq2/o;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_0
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lu0/o;

    .line 30
    .line 31
    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    .line 32
    .line 33
    iget-object v0, v0, Lu0/o;->a:Landroid/view/View;

    .line 34
    .line 35
    invoke-direct {v1, v0, v3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_1
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lu0/j;

    .line 42
    .line 43
    iget-object v0, v0, Lu0/j;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "input_method"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_2
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :pswitch_3
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {v0}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0

    .line 83
    :pswitch_4
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lr0/f;

    .line 86
    .line 87
    iget-boolean v1, v0, Lr1/o;->n:Z

    .line 88
    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    invoke-static {v0}, Lp9/l;->g(Lq2/l;)Lo0/c;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lo0/c;->b:Lo0/c;

    .line 97
    .line 98
    :goto_0
    return-object v0

    .line 99
    :pswitch_5
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Landroid/app/RemoteAction;

    .line 102
    .line 103
    invoke-static {v0}, Lq0/o;->a(Landroid/app/RemoteAction;)Landroid/app/PendingIntent;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    const/16 v2, 0x22

    .line 110
    .line 111
    if-lt v1, v2, :cond_1

    .line 112
    .line 113
    :try_start_0
    invoke-static {}, Li7/a;->b()Landroid/app/ActivityOptions;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Lc3/a;->g(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lc3/a;->p(Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 130
    const-string v2, "TextClassification"

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v4, "error sending pendingIntent: "

    .line 135
    .line 136
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, " error: "

    .line 143
    .line 144
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 159
    .line 160
    .line 161
    :goto_1
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 162
    .line 163
    return-object v0

    .line 164
    :pswitch_6
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Ls0/b;

    .line 167
    .line 168
    invoke-virtual {v0}, Ls0/b;->close()V

    .line 169
    .line 170
    .line 171
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 172
    .line 173
    return-object v0

    .line 174
    :pswitch_7
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Ls0/e;

    .line 177
    .line 178
    invoke-interface {v0}, Ls0/e;->I()Lo0/c;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    return-object v0

    .line 183
    :pswitch_8
    invoke-direct {p0}, La5/e;->a()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    return-object v0

    .line 188
    :pswitch_9
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, Lo1/i;

    .line 191
    .line 192
    new-array v1, v3, [Lr8/j;

    .line 193
    .line 194
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, [Lr8/j;

    .line 199
    .line 200
    invoke-static {v1}, Li2/c;->i([Lr8/j;)Landroid/os/Bundle;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iget-object v0, v0, Lo1/i;->b:La5/f;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, La5/f;->c(Landroid/os/Bundle;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_2

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_2
    move-object v2, v1

    .line 217
    :goto_2
    return-object v2

    .line 218
    :pswitch_a
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v0, Lo1/a;

    .line 221
    .line 222
    iget-object v1, v0, Lo1/a;->a:Lo1/j;

    .line 223
    .line 224
    iget-object v2, v0, Lo1/a;->d:Ljava/lang/Object;

    .line 225
    .line 226
    if-eqz v2, :cond_3

    .line 227
    .line 228
    invoke-interface {v1, v0, v2}, Lo1/j;->e(Lo1/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    return-object v0

    .line 233
    :cond_3
    const-string v0, "Value should be initialized"

    .line 234
    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 236
    .line 237
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v1

    .line 241
    :pswitch_b
    const-string v0, "kotlin.Unit"

    .line 242
    .line 243
    iget-object v1, p0, La5/e;->b:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v1, Lnc/l0;

    .line 246
    .line 247
    sget-object v2, Llc/i;->g:Llc/i;

    .line 248
    .line 249
    new-array v3, v3, [Llc/e;

    .line 250
    .line 251
    new-instance v4, La8/q;

    .line 252
    .line 253
    const/16 v5, 0x16

    .line 254
    .line 255
    invoke-direct {v4, v5, v1}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v0, v2, v3, v4}, Lm9/e0;->K(Ljava/lang/String;La/a;[Llc/e;Lf9/k;)Llc/f;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    return-object v0

    .line 263
    :pswitch_c
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v0, Lm3/o;

    .line 266
    .line 267
    return-object v0

    .line 268
    :pswitch_d
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v0, Llc/f;

    .line 271
    .line 272
    iget-object v1, v0, Llc/f;->k:[Llc/e;

    .line 273
    .line 274
    invoke-static {v0, v1}, Lnc/m0;->c(Llc/e;[Llc/e;)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    return-object v0

    .line 283
    :pswitch_e
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v0, Ll8/w;

    .line 286
    .line 287
    new-instance v1, Lc5/a;

    .line 288
    .line 289
    new-instance v2, La5/e;

    .line 290
    .line 291
    invoke-direct {v2, v3, v0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-direct {v1, v0, v2}, Lc5/a;-><init>(La5/g;La5/e;)V

    .line 295
    .line 296
    .line 297
    new-instance v0, La5/f;

    .line 298
    .line 299
    invoke-direct {v0, v1}, La5/f;-><init>(Lc5/a;)V

    .line 300
    .line 301
    .line 302
    return-object v0

    .line 303
    :pswitch_f
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v0, Ll3/b;

    .line 306
    .line 307
    iget-object v1, v0, Ll3/b;->c:Lf1/k1;

    .line 308
    .line 309
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Lx1/e;

    .line 314
    .line 315
    iget-wide v3, v3, Lx1/e;->a:J

    .line 316
    .line 317
    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    cmp-long v7, v3, v5

    .line 323
    .line 324
    if-nez v7, :cond_4

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_4
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    check-cast v3, Lx1/e;

    .line 332
    .line 333
    iget-wide v3, v3, Lx1/e;->a:J

    .line 334
    .line 335
    invoke-static {v3, v4}, Lx1/e;->e(J)Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eqz v3, :cond_5

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_5
    iget-object v0, v0, Ll3/b;->a:Ly1/j0;

    .line 343
    .line 344
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    check-cast v1, Lx1/e;

    .line 349
    .line 350
    iget-wide v1, v1, Lx1/e;->a:J

    .line 351
    .line 352
    invoke-virtual {v0, v1, v2}, Ly1/j0;->b(J)Landroid/graphics/Shader;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    :goto_3
    return-object v2

    .line 357
    :pswitch_10
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v0, Ll0/s0;

    .line 360
    .line 361
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    return-object v0

    .line 366
    :pswitch_11
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v0, Lz/w0;

    .line 369
    .line 370
    new-instance v1, Ll0/o1;

    .line 371
    .line 372
    const/4 v2, 0x0

    .line 373
    invoke-direct {v1, v0, v2}, Ll0/o1;-><init>(Lz/w0;F)V

    .line 374
    .line 375
    .line 376
    return-object v1

    .line 377
    :pswitch_12
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v0, Lw0/c1;

    .line 380
    .line 381
    iget-object v0, v0, Lw0/c1;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 384
    .line 385
    .line 386
    move-result-wide v1

    .line 387
    :goto_4
    const-wide/16 v3, 0x0

    .line 388
    .line 389
    cmp-long v5, v1, v3

    .line 390
    .line 391
    if-nez v5, :cond_6

    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 394
    .line 395
    .line 396
    move-result-wide v1

    .line 397
    goto :goto_4

    .line 398
    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    return-object v0

    .line 403
    :pswitch_13
    const-string v0, "com.muyetuge.carlifevehicle.feature.tasker.model.TaskerEvent"

    .line 404
    .line 405
    iget-object v1, p0, La5/e;->b:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v1, Lkc/d;

    .line 408
    .line 409
    sget-object v2, Llc/b;->d:Llc/b;

    .line 410
    .line 411
    new-array v4, v3, [Llc/e;

    .line 412
    .line 413
    new-instance v5, Lkc/c;

    .line 414
    .line 415
    invoke-direct {v5, v1, v3}, Lkc/c;-><init>(Lkc/d;I)V

    .line 416
    .line 417
    .line 418
    invoke-static {v0, v2, v4, v5}, Lm9/e0;->K(Ljava/lang/String;La/a;[Llc/e;Lf9/k;)Llc/f;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    return-object v0

    .line 423
    :pswitch_14
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Lj0/b;

    .line 426
    .line 427
    iget-object v2, v0, Lj0/b;->M:Lf9/k;

    .line 428
    .line 429
    iget-boolean v0, v0, Lj0/b;->L:Z

    .line 430
    .line 431
    xor-int/2addr v0, v1

    .line 432
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-interface {v2, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 440
    .line 441
    return-object v0

    .line 442
    :pswitch_15
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v0, Lx1/c;

    .line 445
    .line 446
    return-object v0

    .line 447
    :pswitch_16
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v0, Lh7/e;

    .line 450
    .line 451
    :try_start_1
    new-instance v2, Ll7/c;

    .line 452
    .line 453
    const/16 v4, 0x3e80

    .line 454
    .line 455
    const/16 v5, 0x10

    .line 456
    .line 457
    invoke-direct {v2, v4, v1, v5}, Ll7/c;-><init>(III)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v0, Lh7/e;->a:Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 461
    .line 462
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    const-string v4, "speech_start.pcm"

    .line 471
    .line 472
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    const-string v4, "open(...)"

    .line 477
    .line 478
    invoke-static {v0, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    invoke-static {v2, v0, v4}, Li2/c;->p(Ll7/c;Ljava/io/InputStream;I)Ll7/b;

    .line 486
    .line 487
    .line 488
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 489
    return-object v0

    .line 490
    :catch_1
    move-exception v0

    .line 491
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 492
    .line 493
    const-string v4, "CarLife_SDK"

    .line 494
    .line 495
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    const-string v6, "\u3010\u8bed\u97f3\u97f3\u9891\u3011\u52a0\u8f7d\u63d0\u793a\u97f3\u5931\u8d25: "

    .line 500
    .line 501
    invoke-static {v6, v5}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    const/4 v6, 0x2

    .line 506
    new-array v6, v6, [Ljava/lang/Object;

    .line 507
    .line 508
    aput-object v5, v6, v3

    .line 509
    .line 510
    aput-object v0, v6, v1

    .line 511
    .line 512
    invoke-virtual {v2, v4, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    new-instance v1, Ljava/lang/RuntimeException;

    .line 516
    .line 517
    const-string v2, "Failed to load audio source"

    .line 518
    .line 519
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    .line 521
    .line 522
    throw v1

    .line 523
    :pswitch_17
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v0, Lf1/b2;

    .line 526
    .line 527
    iget-object v1, v0, Lf1/b2;->b:Ljava/lang/Object;

    .line 528
    .line 529
    monitor-enter v1

    .line 530
    :try_start_2
    invoke-virtual {v0}, Lf1/b2;->B()Lac/g;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    iget-object v3, v0, Lf1/b2;->t:Ldc/l0;

    .line 535
    .line 536
    invoke-virtual {v3}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    check-cast v3, Lf1/x1;

    .line 541
    .line 542
    sget-object v4, Lf1/x1;->b:Lf1/x1;

    .line 543
    .line 544
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 545
    .line 546
    .line 547
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    if-lez v3, :cond_8

    .line 549
    .line 550
    monitor-exit v1

    .line 551
    if-eqz v2, :cond_7

    .line 552
    .line 553
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 554
    .line 555
    check-cast v2, Lac/i;

    .line 556
    .line 557
    invoke-virtual {v2, v0}, Lac/i;->f(Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    :cond_7
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 561
    .line 562
    return-object v0

    .line 563
    :cond_8
    :try_start_3
    const-string v2, "Recomposer shutdown; frame clock awaiter will never resume"

    .line 564
    .line 565
    iget-object v0, v0, Lf1/b2;->d:Ljava/lang/Throwable;

    .line 566
    .line 567
    new-instance v3, Ljava/util/concurrent/CancellationException;

    .line 568
    .line 569
    invoke-direct {v3, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 573
    .line 574
    .line 575
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 576
    :catchall_0
    move-exception v0

    .line 577
    monitor-exit v1

    .line 578
    throw v0

    .line 579
    :pswitch_18
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 580
    .line 581
    check-cast v0, Lz7/g2;

    .line 582
    .line 583
    sget-object v1, Lz7/g2;->c:Lz7/f2;

    .line 584
    .line 585
    iget v0, v0, Lz7/g2;->b:I

    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    invoke-static {v0}, Lz7/f2;->b(I)V

    .line 591
    .line 592
    .line 593
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 594
    .line 595
    return-object v0

    .line 596
    :pswitch_19
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast v0, Lc8/e1;

    .line 599
    .line 600
    iget-object v0, v0, Lc8/e1;->b:Lr8/o;

    .line 601
    .line 602
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    check-cast v0, Landroid/hardware/SensorManager;

    .line 607
    .line 608
    const/4 v1, 0x5

    .line 609
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    return-object v0

    .line 614
    :pswitch_1a
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v0, Lw1/o;

    .line 617
    .line 618
    invoke-static {v0}, Lw1/o;->b(Lw1/o;)V

    .line 619
    .line 620
    .line 621
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 622
    .line 623
    return-object v0

    .line 624
    :pswitch_1b
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v0, Lf9/k;

    .line 627
    .line 628
    new-instance v1, Lz7/a2;

    .line 629
    .line 630
    const-string v2, "Boot"

    .line 631
    .line 632
    const-string v3, "\u7cfb\u7edf\u542f\u52a8"

    .line 633
    .line 634
    const-string v4, "\u5f53\u7cfb\u7edf\u542f\u52a8\u65f6"

    .line 635
    .line 636
    new-instance v5, Lz7/s;

    .line 637
    .line 638
    invoke-direct {v5}, Lz7/s;-><init>()V

    .line 639
    .line 640
    .line 641
    invoke-direct {v1, v2, v3, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 642
    .line 643
    .line 644
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 648
    .line 649
    return-object v0

    .line 650
    :pswitch_1c
    iget-object v0, p0, La5/e;->b:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v0, La5/g;

    .line 653
    .line 654
    invoke-interface {v0}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    new-instance v2, La5/b;

    .line 659
    .line 660
    invoke-direct {v2, v0}, La5/b;-><init>(La5/g;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1, v2}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 664
    .line 665
    .line 666
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 667
    .line 668
    return-object v0

    .line 669
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
