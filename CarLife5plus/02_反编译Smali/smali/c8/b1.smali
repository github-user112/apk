.class public final Lc8/b1;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lz7/u1;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MediaButton"

    .line 5
    .line 6
    iput-object v0, p0, Lc8/b1;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "\u5a92\u4f53\u6309\u952e"

    .line 9
    .line 10
    iput-object v0, p0, Lc8/b1;->b:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lz7/u1;->a:Lz7/u1;

    .line 13
    .line 14
    iput-object v0, p0, Lc8/b1;->c:Lz7/u1;

    .line 15
    .line 16
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
    const/4 v2, 0x5

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
    iget-object v0, p0, Lc8/b1;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ZLf9/a;Lf9/k;Lf1/s;I)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v7, p4

    .line 8
    .line 9
    const-string v0, "onDismissRequest"

    .line 10
    .line 11
    invoke-static {v6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "onConfigured"

    .line 15
    .line 16
    invoke-static {v4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x50b2ac27

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 23
    .line 24
    .line 25
    move/from16 v8, p1

    .line 26
    .line 27
    invoke-virtual {v7, v8}, Lf1/s;->g(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    or-int v0, p5, v0

    .line 37
    .line 38
    invoke-virtual {v7, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    const/16 v2, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v2, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v2

    .line 50
    invoke-virtual {v7, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    const/16 v2, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v2, 0x400

    .line 60
    .line 61
    :goto_2
    or-int v9, v0, v2

    .line 62
    .line 63
    and-int/lit16 v0, v9, 0x493

    .line 64
    .line 65
    const/16 v2, 0x492

    .line 66
    .line 67
    if-ne v0, v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_4
    :goto_3
    const v0, 0x6e3c21fe

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v0}, Lf1/s;->W(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 92
    .line 93
    if-ne v2, v3, :cond_5

    .line 94
    .line 95
    const-string v2, ""

    .line 96
    .line 97
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v7, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    check-cast v2, Lf1/b1;

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-static {v7, v5, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-ne v0, v3, :cond_6

    .line 112
    .line 113
    new-instance v0, Lf1/h1;

    .line 114
    .line 115
    invoke-direct {v0, v5}, Lf1/h1;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    check-cast v0, Lf1/h1;

    .line 122
    .line 123
    invoke-virtual {v7, v5}, Lf1/s;->p(Z)V

    .line 124
    .line 125
    .line 126
    new-instance v3, La8/p0;

    .line 127
    .line 128
    const/4 v5, 0x5

    .line 129
    invoke-direct {v3, v6, v5}, La8/p0;-><init>(Lf9/a;I)V

    .line 130
    .line 131
    .line 132
    const v5, -0x574806ae

    .line 133
    .line 134
    .line 135
    invoke-static {v5, v3, v7}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    move-object v4, v0

    .line 140
    new-instance v0, Lc8/m;

    .line 141
    .line 142
    const/4 v5, 0x2

    .line 143
    move-object v3, v2

    .line 144
    move-object v2, v1

    .line 145
    move-object/from16 v1, p3

    .line 146
    .line 147
    invoke-direct/range {v0 .. v5}, Lc8/m;-><init>(Lf9/k;Lz7/v1;Lf1/b1;Lf1/h1;I)V

    .line 148
    .line 149
    .line 150
    move-object v1, v2

    .line 151
    const v2, 0x7f99fb10

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v0, v7}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 155
    .line 156
    .line 157
    move-result-object v16

    .line 158
    new-instance v0, Lc8/a1;

    .line 159
    .line 160
    const/4 v2, 0x1

    .line 161
    invoke-direct {v0, v1, v3, v4, v2}, Lc8/a1;-><init>(Lc8/b1;Lf1/b1;Lf1/h1;I)V

    .line 162
    .line 163
    .line 164
    const v2, -0x5a40c0fe

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v0, v7}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 168
    .line 169
    .line 170
    move-result-object v17

    .line 171
    and-int/lit8 v0, v9, 0xe

    .line 172
    .line 173
    const/high16 v2, 0x30c00000

    .line 174
    .line 175
    or-int v19, v0, v2

    .line 176
    .line 177
    const/16 v20, 0x17e

    .line 178
    .line 179
    const/4 v8, 0x0

    .line 180
    const-wide/16 v9, 0x0

    .line 181
    .line 182
    const/4 v11, 0x0

    .line 183
    const/4 v12, 0x0

    .line 184
    const/4 v13, 0x0

    .line 185
    const/4 v15, 0x0

    .line 186
    move-object/from16 v18, v7

    .line 187
    .line 188
    move/from16 v7, p1

    .line 189
    .line 190
    invoke-static/range {v7 .. v20}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 191
    .line 192
    .line 193
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    if-eqz v7, :cond_7

    .line 198
    .line 199
    new-instance v0, Lc8/h;

    .line 200
    .line 201
    const/4 v6, 0x7

    .line 202
    move/from16 v2, p1

    .line 203
    .line 204
    move-object/from16 v3, p2

    .line 205
    .line 206
    move-object/from16 v4, p3

    .line 207
    .line 208
    move/from16 v5, p5

    .line 209
    .line 210
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 211
    .line 212
    .line 213
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 214
    .line 215
    :cond_7
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 6

    .line 1
    const-string v0, "\u3010\u5a92\u4f53\u6309\u952e\u3011\u6ce8\u518c\u5f02\u5e38: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lc8/b1;->d:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    .line 11
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    .line 12
    .line 13
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3, p0, v2}, Lu3/f;->g(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 21
    .line 22
    .line 23
    iput-boolean v1, p0, Lc8/b1;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception v2

    .line 29
    :try_start_1
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 30
    .line 31
    const-string v4, "CarLife_Vehicle"

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    aput-object v0, v1, v2

    .line 53
    .line 54
    invoke-virtual {v3, v4, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_0
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/b1;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/b1;->c:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance p1, Lc8/y0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, v0}, Lc8/y0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x21

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-static {p2}, Lc/p;->p(Landroid/content/Intent;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    move-object v2, p2

    .line 21
    check-cast v2, Landroid/view/KeyEvent;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz p2, :cond_1

    .line 25
    .line 26
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    move-object v2, p2

    .line 33
    check-cast v2, Landroid/view/KeyEvent;

    .line 34
    .line 35
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {p1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method
