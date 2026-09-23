.class public final Lc8/h1;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lz7/u1;

.field public d:Ljava/lang/Object;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SunCycle"

    .line 5
    .line 6
    iput-object v0, p0, Lc8/h1;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "\u65e5\u51fa\u65e5\u843d"

    .line 9
    .line 10
    iput-object v0, p0, Lc8/h1;->b:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lz7/u1;->a:Lz7/u1;

    .line 13
    .line 14
    iput-object v0, p0, Lc8/h1;->c:Lz7/u1;

    .line 15
    .line 16
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 17
    .line 18
    iput-object v0, p0, Lc8/h1;->d:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lb8/g;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x7

    .line 7
    invoke-direct {v0, p0, v1, v2}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/h1;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ZLf9/a;Lf9/k;Lf1/s;I)V
    .locals 18

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v15, p4

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "onDismissRequest"

    .line 14
    .line 15
    invoke-static {v3, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "onConfigured"

    .line 19
    .line 20
    invoke-static {v4, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v1, -0x7e6dea33

    .line 24
    .line 25
    .line 26
    invoke-virtual {v15, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 27
    .line 28
    .line 29
    move/from16 v2, p1

    .line 30
    .line 31
    invoke-virtual {v15, v2}, Lf1/s;->g(Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x2

    .line 40
    :goto_0
    or-int v1, p5, v1

    .line 41
    .line 42
    invoke-virtual {v15, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    const/16 v5, 0x100

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/16 v5, 0x80

    .line 52
    .line 53
    :goto_1
    or-int/2addr v1, v5

    .line 54
    move-object/from16 v6, p0

    .line 55
    .line 56
    invoke-virtual {v15, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    const/16 v5, 0x800

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v5, 0x400

    .line 66
    .line 67
    :goto_2
    or-int/2addr v1, v5

    .line 68
    and-int/lit16 v5, v1, 0x493

    .line 69
    .line 70
    const/16 v7, 0x492

    .line 71
    .line 72
    if-ne v5, v7, :cond_4

    .line 73
    .line 74
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_4
    :goto_3
    const v5, 0x6e3c21fe

    .line 87
    .line 88
    .line 89
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 97
    .line 98
    if-ne v7, v8, :cond_5

    .line 99
    .line 100
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-static {v7}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v15, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    move-object v13, v7

    .line 110
    check-cast v13, Lf1/b1;

    .line 111
    .line 112
    const/4 v7, 0x0

    .line 113
    invoke-static {v15, v7, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    if-ne v9, v8, :cond_6

    .line 118
    .line 119
    new-instance v9, Lr8/j;

    .line 120
    .line 121
    invoke-direct {v9, v0, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v9}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v15, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    move-object v10, v9

    .line 132
    check-cast v10, Lf1/b1;

    .line 133
    .line 134
    invoke-static {v15, v7, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v9, "\u5317\u4eac\u5e02"

    .line 139
    .line 140
    if-ne v0, v8, :cond_7

    .line 141
    .line 142
    invoke-static {v9}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v15, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_7
    check-cast v0, Lf1/b1;

    .line 150
    .line 151
    invoke-static {v15, v7, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    if-ne v5, v8, :cond_8

    .line 156
    .line 157
    invoke-static {v9}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_8
    move-object v11, v5

    .line 165
    check-cast v11, Lf1/b1;

    .line 166
    .line 167
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 168
    .line 169
    .line 170
    new-instance v5, La8/p0;

    .line 171
    .line 172
    const/4 v7, 0x7

    .line 173
    invoke-direct {v5, v3, v7}, La8/p0;-><init>(Lf9/a;I)V

    .line 174
    .line 175
    .line 176
    const v7, 0x73608a06

    .line 177
    .line 178
    .line 179
    invoke-static {v7, v5, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 180
    .line 181
    .line 182
    move-result-object v16

    .line 183
    new-instance v4, Lc8/g1;

    .line 184
    .line 185
    move-object v9, v11

    .line 186
    const/4 v11, 0x0

    .line 187
    move-object/from16 v5, p3

    .line 188
    .line 189
    move-object v8, v0

    .line 190
    move-object v7, v13

    .line 191
    invoke-direct/range {v4 .. v11}, Lc8/g1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 192
    .line 193
    .line 194
    const v0, -0x6aa1cdbc

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    move-object v11, v9

    .line 202
    new-instance v9, Lc8/u0;

    .line 203
    .line 204
    const/4 v14, 0x3

    .line 205
    move-object v12, v10

    .line 206
    move-object v10, v8

    .line 207
    invoke-direct/range {v9 .. v14}, Lc8/u0;-><init>(Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 208
    .line 209
    .line 210
    const v4, -0x7e062c4a

    .line 211
    .line 212
    .line 213
    invoke-static {v4, v9, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    and-int/lit8 v1, v1, 0xe

    .line 218
    .line 219
    const/high16 v4, 0x30c00000

    .line 220
    .line 221
    or-int/2addr v1, v4

    .line 222
    const/16 v17, 0x17e

    .line 223
    .line 224
    const/4 v5, 0x0

    .line 225
    const-wide/16 v6, 0x0

    .line 226
    .line 227
    const/4 v8, 0x0

    .line 228
    const/4 v9, 0x0

    .line 229
    const/4 v10, 0x0

    .line 230
    const/4 v12, 0x0

    .line 231
    move-object v13, v0

    .line 232
    move v4, v2

    .line 233
    move-object/from16 v11, v16

    .line 234
    .line 235
    move/from16 v16, v1

    .line 236
    .line 237
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    if-eqz v7, :cond_9

    .line 245
    .line 246
    new-instance v0, Lc8/h;

    .line 247
    .line 248
    const/16 v6, 0x9

    .line 249
    .line 250
    move-object/from16 v1, p0

    .line 251
    .line 252
    move/from16 v2, p1

    .line 253
    .line 254
    move-object/from16 v4, p3

    .line 255
    .line 256
    move/from16 v5, p5

    .line 257
    .line 258
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 259
    .line 260
    .line 261
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 262
    .line 263
    :cond_9
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 6

    .line 1
    const-string v0, "\u3010\u65e5\u51fa\u65e5\u843d\u3011\u6ce8\u518c\u5f02\u5e38: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lc8/h1;->e:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "android.intent.action.TIME_TICK"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3, p0, v2}, Lu3/f;->g(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 24
    .line 25
    .line 26
    iput-boolean v1, p0, Lc8/h1;->e:Z

    .line 27
    .line 28
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Landroid/content/Intent;

    .line 33
    .line 34
    const-string v4, "android.intent.action.TIME_TICK"

    .line 35
    .line 36
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2, v3}, Lc8/h1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v2

    .line 46
    :try_start_1
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 47
    .line 48
    const-string v4, "CarLife_Vehicle"

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    aput-object v0, v1, v2

    .line 70
    .line 71
    invoke-virtual {v3, v4, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_0
    :goto_0
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/h1;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/h1;->c:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 p2, 0xb

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/16 v0, 0xc

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x2

    .line 38
    new-array v2, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-object p2, v2, v3

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    aput-object p1, v2, p2

    .line 45
    .line 46
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "%02d:%02d"

    .line 51
    .line 52
    invoke-static {v0, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lc8/h1;->d:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_9

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v4, v0

    .line 73
    check-cast v4, Lz7/d1;

    .line 74
    .line 75
    iget-wide v5, v4, Lz7/d1;->c:D

    .line 76
    .line 77
    iget-wide v7, v4, Lz7/d1;->d:D

    .line 78
    .line 79
    invoke-static {}, La7/b;->n()Ljava/time/LocalDate;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 84
    .line 85
    const-string v0, ""

    .line 86
    .line 87
    const-string v10, "TASKER_SUN_CYCLE"

    .line 88
    .line 89
    invoke-static {v10, v0}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Lxb/i;->Q(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-eqz v10, :cond_1

    .line 98
    .line 99
    invoke-static {v5, v6, v7, v8, v9}, La/a;->z(DDLjava/time/LocalDate;)Lr8/j;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    const-string v10, "|"

    .line 105
    .line 106
    filled-new-array {v10}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    const/4 v11, 0x6

    .line 111
    invoke-static {v0, v10, v11}, Lxb/i;->X(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v11, 0x3

    .line 120
    if-eq v0, v11, :cond_2

    .line 121
    .line 122
    invoke-static {v5, v6, v7, v8, v9}, La/a;->z(DDLjava/time/LocalDate;)Lr8/j;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    :try_start_0
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Ljava/lang/CharSequence;

    .line 132
    .line 133
    invoke-static {v0}, La7/b;->p(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    .line 134
    .line 135
    .line 136
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :goto_1
    instance-of v11, v0, Lr8/l;

    .line 144
    .line 145
    if-eqz v11, :cond_3

    .line 146
    .line 147
    const/4 v0, 0x0

    .line 148
    :cond_3
    invoke-static {v0}, La7/b;->o(Ljava/io/Serializable;)Ljava/time/LocalDate;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-nez v0, :cond_4

    .line 153
    .line 154
    invoke-static {v5, v6, v7, v8, v9}, La/a;->z(DDLjava/time/LocalDate;)Lr8/j;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_5

    .line 164
    .line 165
    invoke-static {v5, v6, v7, v8, v9}, La/a;->z(DDLjava/time/LocalDate;)Lr8/j;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    invoke-interface {v10, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    new-instance v6, Lr8/j;

    .line 179
    .line 180
    invoke-direct {v6, v0, v5}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    move-object v0, v6

    .line 184
    :goto_2
    iget-object v5, v0, Lr8/j;->a:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v5, Ljava/lang/String;

    .line 187
    .line 188
    iget-object v0, v0, Lr8/j;->b:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, Ljava/lang/String;

    .line 191
    .line 192
    const-string v6, "start"

    .line 193
    .line 194
    invoke-static {v5, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string v6, "end"

    .line 198
    .line 199
    invoke-static {v0, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p1}, La/a;->J(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    invoke-static {v5}, La/a;->J(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    invoke-static {v0}, La/a;->J(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-gt v5, v0, :cond_8

    .line 215
    .line 216
    if-gt v5, v6, :cond_7

    .line 217
    .line 218
    if-gt v6, v0, :cond_7

    .line 219
    .line 220
    :cond_6
    const/4 v8, 0x1

    .line 221
    goto :goto_4

    .line 222
    :cond_7
    :goto_3
    const/4 v8, 0x0

    .line 223
    goto :goto_4

    .line 224
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 225
    .line 226
    if-gt v0, v6, :cond_6

    .line 227
    .line 228
    if-ge v6, v5, :cond_6

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :goto_4
    iget-boolean v0, v4, Lz7/d1;->b:Z

    .line 232
    .line 233
    if-ne v0, v8, :cond_0

    .line 234
    .line 235
    sget-object v0, Lb8/o;->a:Lfc/c;

    .line 236
    .line 237
    iget-wide v9, v4, Lz7/d1;->c:D

    .line 238
    .line 239
    iget-wide v11, v4, Lz7/d1;->d:D

    .line 240
    .line 241
    new-instance v7, Lz7/d1;

    .line 242
    .line 243
    invoke-direct/range {v7 .. v12}, Lz7/d1;-><init>(ZDD)V

    .line 244
    .line 245
    .line 246
    invoke-static {v7}, Lb8/o;->a(Lz7/q1;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_9
    return-void
.end method
