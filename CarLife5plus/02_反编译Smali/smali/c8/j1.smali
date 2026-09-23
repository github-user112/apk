.class public final Lc8/j1;
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
    const-string v0, "Time"

    .line 5
    .line 6
    iput-object v0, p0, Lc8/j1;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "\u6307\u5b9a\u65f6\u95f4"

    .line 9
    .line 10
    iput-object v0, p0, Lc8/j1;->b:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lz7/u1;->a:Lz7/u1;

    .line 13
    .line 14
    iput-object v0, p0, Lc8/j1;->c:Lz7/u1;

    .line 15
    .line 16
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 17
    .line 18
    iput-object v0, p0, Lc8/j1;->d:Ljava/lang/Object;

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
    const/16 v2, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1, v2}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/j1;->b:Ljava/lang/String;

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
    const-string v0, "onDismissRequest"

    .line 8
    .line 9
    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "onConfigured"

    .line 13
    .line 14
    invoke-static {v4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x164f7465

    .line 18
    .line 19
    .line 20
    invoke-virtual {v15, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    move/from16 v2, p1

    .line 24
    .line 25
    invoke-virtual {v15, v2}, Lf1/s;->g(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int v0, p5, v0

    .line 35
    .line 36
    invoke-virtual {v15, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const/16 v1, 0x100

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v1, 0x80

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v1

    .line 48
    move-object/from16 v1, p0

    .line 49
    .line 50
    invoke-virtual {v15, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    const/16 v5, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v5, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v0, v5

    .line 62
    and-int/lit16 v5, v0, 0x493

    .line 63
    .line 64
    const/16 v6, 0x492

    .line 65
    .line 66
    if-ne v5, v6, :cond_4

    .line 67
    .line 68
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_4
    :goto_3
    const v5, 0x6e3c21fe

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15, v5}, Lf1/s;->W(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 91
    .line 92
    if-ne v6, v7, :cond_5

    .line 93
    .line 94
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v15, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    move-object v9, v6

    .line 104
    check-cast v9, Lf1/b1;

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-static {v15, v6, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-ne v8, v7, :cond_6

    .line 112
    .line 113
    const-string v8, "06:00"

    .line 114
    .line 115
    invoke-static {v8}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v15, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_6
    check-cast v8, Lf1/b1;

    .line 123
    .line 124
    invoke-static {v15, v6, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-ne v5, v7, :cond_7

    .line 129
    .line 130
    const-string v5, "18:00"

    .line 131
    .line 132
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    check-cast v5, Lf1/b1;

    .line 140
    .line 141
    invoke-virtual {v15, v6}, Lf1/s;->p(Z)V

    .line 142
    .line 143
    .line 144
    new-instance v6, La8/p0;

    .line 145
    .line 146
    const/16 v7, 0x8

    .line 147
    .line 148
    invoke-direct {v6, v3, v7}, La8/p0;-><init>(Lf9/a;I)V

    .line 149
    .line 150
    .line 151
    const v7, -0x31ae41a2

    .line 152
    .line 153
    .line 154
    invoke-static {v7, v6, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    new-instance v4, La8/r0;

    .line 159
    .line 160
    const/4 v10, 0x3

    .line 161
    move-object v6, v1

    .line 162
    move-object v7, v8

    .line 163
    move-object v8, v5

    .line 164
    move-object/from16 v5, p3

    .line 165
    .line 166
    invoke-direct/range {v4 .. v10}, La8/r0;-><init>(Lf9/k;Ljava/lang/Object;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 167
    .line 168
    .line 169
    const v1, 0x67864f1c

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    new-instance v1, La8/u0;

    .line 177
    .line 178
    const/4 v4, 0x2

    .line 179
    invoke-direct {v1, v4, v7, v8, v9}, La8/u0;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 180
    .line 181
    .line 182
    const v4, -0x6440a3f2

    .line 183
    .line 184
    .line 185
    invoke-static {v4, v1, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    and-int/lit8 v0, v0, 0xe

    .line 190
    .line 191
    const/high16 v1, 0x30c00000

    .line 192
    .line 193
    or-int v16, v0, v1

    .line 194
    .line 195
    const/16 v17, 0x17e

    .line 196
    .line 197
    const/4 v5, 0x0

    .line 198
    const-wide/16 v6, 0x0

    .line 199
    .line 200
    const/4 v8, 0x0

    .line 201
    const/4 v9, 0x0

    .line 202
    const/4 v10, 0x0

    .line 203
    const/4 v12, 0x0

    .line 204
    move v4, v2

    .line 205
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 206
    .line 207
    .line 208
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    if-eqz v7, :cond_8

    .line 213
    .line 214
    new-instance v0, Lc8/h;

    .line 215
    .line 216
    const/16 v6, 0xb

    .line 217
    .line 218
    move-object/from16 v1, p0

    .line 219
    .line 220
    move/from16 v2, p1

    .line 221
    .line 222
    move-object/from16 v4, p3

    .line 223
    .line 224
    move/from16 v5, p5

    .line 225
    .line 226
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 227
    .line 228
    .line 229
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 230
    .line 231
    :cond_8
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 6

    .line 1
    const-string v0, "\u3010\u6307\u5b9a\u65f6\u95f4\u3011\u6ce8\u518c\u5f02\u5e38: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lc8/j1;->e:Z

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
    iput-boolean v1, p0, Lc8/j1;->e:Z

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
    invoke-virtual {p0, v2, v3}, Lc8/j1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    iget-object v0, p0, Lc8/j1;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/j1;->c:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

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
    const-string v1, "%02d:%02d"

    .line 51
    .line 52
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lc8/j1;->d:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lz7/m1;

    .line 73
    .line 74
    iget-object v2, v1, Lz7/m1;->c:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v4, v1, Lz7/m1;->d:Ljava/lang/String;

    .line 77
    .line 78
    const-string v5, "start"

    .line 79
    .line 80
    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v6, "end"

    .line 84
    .line 85
    invoke-static {v4, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, La/a;->J(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-static {v2}, La/a;->J(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v4}, La/a;->J(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-gt v2, v7, :cond_3

    .line 101
    .line 102
    if-gt v2, v6, :cond_2

    .line 103
    .line 104
    if-gt v6, v7, :cond_2

    .line 105
    .line 106
    :cond_1
    const/4 v2, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    if-gt v7, v6, :cond_1

    .line 113
    .line 114
    if-ge v6, v2, :cond_1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :goto_2
    iget-boolean v6, v1, Lz7/m1;->b:Z

    .line 118
    .line 119
    if-ne v6, v2, :cond_0

    .line 120
    .line 121
    sget-object v6, Lb8/o;->a:Lfc/c;

    .line 122
    .line 123
    iget-object v1, v1, Lz7/m1;->c:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v5, Lz7/m1;

    .line 129
    .line 130
    invoke-direct {v5, v1, v4, v2}, Lz7/m1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    invoke-static {v5}, Lb8/o;->a(Lz7/q1;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    return-void
.end method
