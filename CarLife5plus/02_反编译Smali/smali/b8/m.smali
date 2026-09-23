.class public final Lb8/m;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Lb8/m;->e:I

    iput-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    iput-object p2, p0, Lb8/m;->g:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lw8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lb8/m;->e:I

    iput-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method private final m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lz7/b2;

    .line 28
    .line 29
    iget-object v1, v1, Lz7/b2;->c:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v1, v0}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    .line 39
    invoke-static {v0, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lz7/a2;

    .line 61
    .line 62
    iget-object v1, v1, Lz7/a2;->d:Lz7/q1;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    instance-of v2, v1, Lz7/d1;

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lc8/b1;

    .line 104
    .line 105
    const-string v0, "\u3010\u5a92\u4f53\u6309\u952e\u3011\u6ce8\u9500\u5f02\u5e38: "

    .line 106
    .line 107
    monitor-enter p1

    .line 108
    const/4 v1, 0x0

    .line 109
    :try_start_0
    iget-boolean v2, p1, Lc8/b1;->d:Z

    .line 110
    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    .line 119
    .line 120
    iput-boolean v1, p1, Lc8/b1;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto :goto_4

    .line 125
    :catch_0
    move-exception v2

    .line 126
    :try_start_1
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 127
    .line 128
    const-string v4, "CarLife_Vehicle"

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const/4 v5, 0x2

    .line 147
    new-array v5, v5, [Ljava/lang/Object;

    .line 148
    .line 149
    aput-object v0, v5, v1

    .line 150
    .line 151
    const/4 v0, 0x1

    .line 152
    aput-object v2, v5, v0

    .line 153
    .line 154
    invoke-virtual {v3, v4, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_3
    monitor-exit p1

    .line 158
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 159
    .line 160
    return-object p1

    .line 161
    :goto_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    throw v0

    .line 163
    :cond_5
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Lc8/b1;

    .line 166
    .line 167
    invoke-virtual {p1}, Lc8/b1;->d()V

    .line 168
    .line 169
    .line 170
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 171
    .line 172
    return-object p1
.end method

.method private final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lc8/e1;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lz7/b2;

    .line 32
    .line 33
    iget-object v2, v2, Lz7/b2;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v2, v1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v2, 0xa

    .line 42
    .line 43
    invoke-static {v1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lz7/a2;

    .line 65
    .line 66
    iget-object v2, v2, Lz7/a2;->d:Lz7/q1;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    instance-of v3, v2, Lz7/a1;

    .line 92
    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    new-instance p1, Lc8/f0;

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    invoke-direct {p1, v2}, Lc8/f0;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v1, p1}, Ls8/p;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, v0, Lc8/e1;->f:Ljava/util/List;

    .line 110
    .line 111
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Lc8/e1;

    .line 114
    .line 115
    iget-object p1, p1, Lc8/e1;->f:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, Lc8/e1;

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    iput-object v0, p1, Lc8/e1;->d:Lz7/a1;

    .line 129
    .line 130
    const-string v0, "\u3010\u5149\u7167\u4eae\u5ea6\u3011\u6ce8\u9500\u5f02\u5e38: "

    .line 131
    .line 132
    monitor-enter p1

    .line 133
    const/4 v1, 0x0

    .line 134
    :try_start_0
    iget-boolean v3, p1, Lc8/e1;->g:Z

    .line 135
    .line 136
    if-eqz v3, :cond_4

    .line 137
    .line 138
    iget-object v3, p1, Lc8/e1;->b:Lr8/o;

    .line 139
    .line 140
    invoke-virtual {v3}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Landroid/hardware/SensorManager;

    .line 145
    .line 146
    invoke-virtual {v3, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 147
    .line 148
    .line 149
    iput-boolean v1, p1, Lc8/e1;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto :goto_4

    .line 154
    :catch_0
    move-exception v3

    .line 155
    :try_start_1
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 156
    .line 157
    const-string v5, "CarLife_Vehicle"

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const/4 v6, 0x2

    .line 176
    new-array v6, v6, [Ljava/lang/Object;

    .line 177
    .line 178
    aput-object v0, v6, v1

    .line 179
    .line 180
    aput-object v3, v6, v2

    .line 181
    .line 182
    invoke-virtual {v4, v5, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .line 184
    .line 185
    :cond_4
    :goto_3
    monitor-exit p1

    .line 186
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 187
    .line 188
    return-object p1

    .line 189
    :goto_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    throw v0

    .line 191
    :cond_5
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p1, Lc8/e1;

    .line 194
    .line 195
    invoke-virtual {p1}, Lc8/e1;->d()V

    .line 196
    .line 197
    .line 198
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 199
    .line 200
    return-object p1
.end method

.method private final p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lc8/h1;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lz7/b2;

    .line 32
    .line 33
    iget-object v2, v2, Lz7/b2;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v2, v1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v2, 0xa

    .line 42
    .line 43
    invoke-static {v1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lz7/a2;

    .line 65
    .line 66
    iget-object v2, v2, Lz7/a2;->d:Lz7/q1;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    instance-of v3, v2, Lz7/d1;

    .line 92
    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    iput-object v1, v0, Lc8/h1;->d:Ljava/lang/Object;

    .line 100
    .line 101
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lc8/h1;

    .line 104
    .line 105
    iget-object p1, p1, Lc8/h1;->d:Ljava/lang/Object;

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, Lc8/h1;

    .line 116
    .line 117
    const-string v0, "\u3010\u65e5\u51fa\u65e5\u843d\u3011\u6ce8\u9500\u5f02\u5e38: "

    .line 118
    .line 119
    monitor-enter p1

    .line 120
    const/4 v1, 0x0

    .line 121
    :try_start_0
    iget-boolean v2, p1, Lc8/h1;->e:Z

    .line 122
    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    .line 131
    .line 132
    iput-boolean v1, p1, Lc8/h1;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    goto :goto_4

    .line 137
    :catch_0
    move-exception v2

    .line 138
    :try_start_1
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 139
    .line 140
    const-string v4, "CarLife_Vehicle"

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const/4 v5, 0x2

    .line 159
    new-array v5, v5, [Ljava/lang/Object;

    .line 160
    .line 161
    aput-object v0, v5, v1

    .line 162
    .line 163
    const/4 v0, 0x1

    .line 164
    aput-object v2, v5, v0

    .line 165
    .line 166
    invoke-virtual {v3, v4, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    :cond_4
    :goto_3
    monitor-exit p1

    .line 170
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 171
    .line 172
    return-object p1

    .line 173
    :goto_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    throw v0

    .line 175
    :cond_5
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p1, Lc8/h1;

    .line 178
    .line 179
    invoke-virtual {p1}, Lc8/h1;->d()V

    .line 180
    .line 181
    .line 182
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 183
    .line 184
    return-object p1
.end method

.method private final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lz7/b2;

    .line 28
    .line 29
    iget-object v1, v1, Lz7/b2;->c:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v1, v0}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    .line 39
    invoke-static {v0, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lz7/a2;

    .line 61
    .line 62
    iget-object v1, v1, Lz7/a2;->d:Lz7/q1;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    instance-of v2, v1, Lz7/g1;

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lc8/i1;

    .line 104
    .line 105
    const-string v0, "\u3010\u7cfb\u7edf\u4e3b\u9898\u3011\u6ce8\u9500\u5f02\u5e38: "

    .line 106
    .line 107
    monitor-enter p1

    .line 108
    const/4 v1, 0x0

    .line 109
    :try_start_0
    iget-boolean v2, p1, Lc8/i1;->b:Z

    .line 110
    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 118
    .line 119
    .line 120
    iput-boolean v1, p1, Lc8/i1;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto :goto_4

    .line 125
    :catch_0
    move-exception v2

    .line 126
    :try_start_1
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 127
    .line 128
    const-string v4, "CarLife_Vehicle"

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const/4 v5, 0x2

    .line 147
    new-array v5, v5, [Ljava/lang/Object;

    .line 148
    .line 149
    aput-object v0, v5, v1

    .line 150
    .line 151
    const/4 v0, 0x1

    .line 152
    aput-object v2, v5, v0

    .line 153
    .line 154
    invoke-virtual {v3, v4, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_3
    monitor-exit p1

    .line 158
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 159
    .line 160
    return-object p1

    .line 161
    :goto_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    throw v0

    .line 163
    :cond_5
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Lc8/i1;

    .line 166
    .line 167
    invoke-virtual {p1}, Lc8/i1;->d()V

    .line 168
    .line 169
    .line 170
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 171
    .line 172
    return-object p1
.end method

.method private final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lc8/j1;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lz7/b2;

    .line 32
    .line 33
    iget-object v2, v2, Lz7/b2;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v2, v1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v2, 0xa

    .line 42
    .line 43
    invoke-static {v1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lz7/a2;

    .line 65
    .line 66
    iget-object v2, v2, Lz7/a2;->d:Lz7/q1;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    instance-of v3, v2, Lz7/m1;

    .line 92
    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    iput-object v1, v0, Lc8/j1;->d:Ljava/lang/Object;

    .line 100
    .line 101
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lc8/j1;

    .line 104
    .line 105
    iget-object p1, p1, Lc8/j1;->d:Ljava/lang/Object;

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, Lc8/j1;

    .line 116
    .line 117
    const-string v0, "\u3010\u6307\u5b9a\u65f6\u95f4\u3011\u6ce8\u9500\u5f02\u5e38: "

    .line 118
    .line 119
    monitor-enter p1

    .line 120
    const/4 v1, 0x0

    .line 121
    :try_start_0
    iget-boolean v2, p1, Lc8/j1;->e:Z

    .line 122
    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    .line 131
    .line 132
    iput-boolean v1, p1, Lc8/j1;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    goto :goto_4

    .line 137
    :catch_0
    move-exception v2

    .line 138
    :try_start_1
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 139
    .line 140
    const-string v4, "CarLife_Vehicle"

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const/4 v5, 0x2

    .line 159
    new-array v5, v5, [Ljava/lang/Object;

    .line 160
    .line 161
    aput-object v0, v5, v1

    .line 162
    .line 163
    const/4 v0, 0x1

    .line 164
    aput-object v2, v5, v0

    .line 165
    .line 166
    invoke-virtual {v3, v4, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    :cond_4
    :goto_3
    monitor-exit p1

    .line 170
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 171
    .line 172
    return-object p1

    .line 173
    :goto_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    throw v0

    .line 175
    :cond_5
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p1, Lc8/j1;

    .line 178
    .line 179
    invoke-virtual {p1}, Lc8/j1;->d()V

    .line 180
    .line 181
    .line 182
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 183
    .line 184
    return-object p1
.end method

.method public static final t(Ljava/util/Map;Lc8/w;)V
    .locals 1

    .line 1
    iget p1, p1, Lc8/w;->b:I

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lz7/j;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lb8/o;->a:Lfc/c;

    .line 16
    .line 17
    new-instance p0, Lz7/j;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lz7/j;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lb8/o;->a(Lz7/q1;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lb8/m;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lac/w;

    .line 7
    .line 8
    check-cast p2, Lw8/c;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lb8/m;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, Lac/w;

    .line 24
    .line 25
    check-cast p2, Lw8/c;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lb8/m;

    .line 32
    .line 33
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object p2

    .line 39
    :pswitch_1
    check-cast p1, Lac/w;

    .line 40
    .line 41
    check-cast p2, Lw8/c;

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lb8/m;

    .line 48
    .line 49
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-object p2

    .line 55
    :pswitch_2
    check-cast p1, Lac/w;

    .line 56
    .line 57
    check-cast p2, Lw8/c;

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lb8/m;

    .line 64
    .line 65
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    return-object p2

    .line 71
    :pswitch_3
    check-cast p1, Lac/w;

    .line 72
    .line 73
    check-cast p2, Lw8/c;

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lb8/m;

    .line 80
    .line 81
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    return-object p2

    .line 87
    :pswitch_4
    check-cast p1, Ljava/util/List;

    .line 88
    .line 89
    check-cast p2, Lw8/c;

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lb8/m;

    .line 96
    .line 97
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :pswitch_5
    check-cast p1, Ljava/util/List;

    .line 105
    .line 106
    check-cast p2, Lw8/c;

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lb8/m;

    .line 113
    .line 114
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :pswitch_6
    check-cast p1, Ljava/util/List;

    .line 122
    .line 123
    check-cast p2, Lw8/c;

    .line 124
    .line 125
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lb8/m;

    .line 130
    .line 131
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :pswitch_7
    check-cast p1, Ljava/util/List;

    .line 139
    .line 140
    check-cast p2, Lw8/c;

    .line 141
    .line 142
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lb8/m;

    .line 147
    .line 148
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    :pswitch_8
    check-cast p1, Ljava/util/List;

    .line 156
    .line 157
    check-cast p2, Lw8/c;

    .line 158
    .line 159
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lb8/m;

    .line 164
    .line 165
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :pswitch_9
    check-cast p1, Ljava/util/List;

    .line 173
    .line 174
    check-cast p2, Lw8/c;

    .line 175
    .line 176
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Lb8/m;

    .line 181
    .line 182
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    return-object p1

    .line 189
    :pswitch_a
    check-cast p1, Lr8/j;

    .line 190
    .line 191
    check-cast p2, Lw8/c;

    .line 192
    .line 193
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Lb8/m;

    .line 198
    .line 199
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 200
    .line 201
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    return-object p1

    .line 206
    :pswitch_b
    check-cast p1, Ljava/util/List;

    .line 207
    .line 208
    check-cast p2, Lw8/c;

    .line 209
    .line 210
    invoke-virtual {p0, p1, p2}, Lb8/m;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lb8/m;

    .line 215
    .line 216
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Lb8/m;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    return-object p2

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    iget v0, p0, Lb8/m;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lb8/m;

    .line 7
    .line 8
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lu0/f;

    .line 11
    .line 12
    const/16 v2, 0xc

    .line 13
    .line 14
    invoke-direct {v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    new-instance p1, Lb8/m;

    .line 21
    .line 22
    iget-object v0, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lf1/g1;

    .line 25
    .line 26
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lf1/g1;

    .line 29
    .line 30
    const/16 v2, 0xb

    .line 31
    .line 32
    invoke-direct {p1, v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance p1, Lb8/m;

    .line 37
    .line 38
    iget-object v0, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lp1/p;

    .line 41
    .line 42
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 45
    .line 46
    const/16 v2, 0xa

    .line 47
    .line 48
    invoke-direct {p1, v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_2
    new-instance p1, Lb8/m;

    .line 53
    .line 54
    iget-object v0, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lf1/b1;

    .line 57
    .line 58
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lf1/b1;

    .line 61
    .line 62
    const/16 v2, 0x9

    .line 63
    .line 64
    invoke-direct {p1, v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_3
    new-instance p1, Lb8/m;

    .line 69
    .line 70
    iget-object v0, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lf9/k;

    .line 73
    .line 74
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Lf1/b1;

    .line 77
    .line 78
    const/16 v2, 0x8

    .line 79
    .line 80
    invoke-direct {p1, v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_4
    new-instance v0, Lb8/m;

    .line 85
    .line 86
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Lc8/j1;

    .line 89
    .line 90
    const/4 v2, 0x7

    .line 91
    invoke-direct {v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 92
    .line 93
    .line 94
    iput-object p1, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 95
    .line 96
    return-object v0

    .line 97
    :pswitch_5
    new-instance v0, Lb8/m;

    .line 98
    .line 99
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Lc8/i1;

    .line 102
    .line 103
    const/4 v2, 0x6

    .line 104
    invoke-direct {v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 105
    .line 106
    .line 107
    iput-object p1, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 108
    .line 109
    return-object v0

    .line 110
    :pswitch_6
    new-instance v0, Lb8/m;

    .line 111
    .line 112
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v1, Lc8/h1;

    .line 115
    .line 116
    const/4 v2, 0x5

    .line 117
    invoke-direct {v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 118
    .line 119
    .line 120
    iput-object p1, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 121
    .line 122
    return-object v0

    .line 123
    :pswitch_7
    new-instance v0, Lb8/m;

    .line 124
    .line 125
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Lc8/e1;

    .line 128
    .line 129
    const/4 v2, 0x4

    .line 130
    invoke-direct {v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 131
    .line 132
    .line 133
    iput-object p1, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 134
    .line 135
    return-object v0

    .line 136
    :pswitch_8
    new-instance v0, Lb8/m;

    .line 137
    .line 138
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, Lc8/b1;

    .line 141
    .line 142
    const/4 v2, 0x3

    .line 143
    invoke-direct {v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 144
    .line 145
    .line 146
    iput-object p1, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 147
    .line 148
    return-object v0

    .line 149
    :pswitch_9
    new-instance v0, Lb8/m;

    .line 150
    .line 151
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v1, Lc8/g0;

    .line 154
    .line 155
    const/4 v2, 0x2

    .line 156
    invoke-direct {v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 157
    .line 158
    .line 159
    iput-object p1, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 160
    .line 161
    return-object v0

    .line 162
    :pswitch_a
    new-instance v0, Lb8/m;

    .line 163
    .line 164
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, Lg9/t;

    .line 167
    .line 168
    const/4 v2, 0x1

    .line 169
    invoke-direct {v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 170
    .line 171
    .line 172
    iput-object p1, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 173
    .line 174
    return-object v0

    .line 175
    :pswitch_b
    new-instance v0, Lb8/m;

    .line 176
    .line 177
    iget-object v1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Lac/w;

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-direct {v0, v1, p2, v2}, Lb8/m;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 183
    .line 184
    .line 185
    iput-object p1, v0, Lb8/m;->f:Ljava/lang/Object;

    .line 186
    .line 187
    return-object v0

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lb8/m;->e:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lac/w;

    .line 16
    .line 17
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lu0/f;

    .line 20
    .line 21
    iget-object v5, v0, Lu0/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lac/v0;

    .line 28
    .line 29
    iget-object v6, v0, Lu0/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    new-instance v7, Lb0/g;

    .line 32
    .line 33
    const/16 v8, 0x11

    .line 34
    .line 35
    invoke-direct {v7, v5, v0, v2, v8}, Lb0/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v2, v7, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    invoke-virtual {v6, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :pswitch_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Ll8/n;->a:Lr8/o;

    .line 65
    .line 66
    const-string v1, "FLOAT_ICON_SWITCH"

    .line 67
    .line 68
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lf1/g1;

    .line 71
    .line 72
    invoke-virtual {p1}, Lf1/g1;->f()F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    float-to-int v4, v0

    .line 77
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 78
    .line 79
    move-object v6, v0

    .line 80
    check-cast v6, Lf1/g1;

    .line 81
    .line 82
    invoke-virtual {v6}, Lf1/g1;->f()F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    float-to-int v5, v0

    .line 87
    new-instance v7, Landroid/os/Handler;

    .line 88
    .line 89
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Ll8/k;

    .line 97
    .line 98
    const/4 v2, -0x2

    .line 99
    const/4 v3, -0x2

    .line 100
    invoke-direct/range {v0 .. v5}, Ll8/k;-><init>(Ljava/lang/String;IIII)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 107
    .line 108
    const-string v0, "FLOAT_ICON_OFFSET_X"

    .line 109
    .line 110
    invoke-virtual {p1}, Lf1/g1;->f()F

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    float-to-int p1, p1

    .line 115
    invoke-static {p1, v0}, Ll8/d;->f(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string p1, "FLOAT_ICON_OFFSET_Y"

    .line 119
    .line 120
    invoke-virtual {v6}, Lf1/g1;->f()F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    float-to-int v0, v0

    .line 125
    invoke-static {v0, p1}, Ll8/d;->f(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 129
    .line 130
    return-object p1

    .line 131
    :pswitch_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p1, Lp1/p;

    .line 137
    .line 138
    invoke-virtual {p1}, Lp1/p;->clear()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v1, "<get-values>(...)"

    .line 154
    .line 155
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lp1/p;->addAll(Ljava/util/Collection;)Z

    .line 159
    .line 160
    .line 161
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 162
    .line 163
    return-object p1

    .line 164
    :pswitch_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p1, Lf1/b1;

    .line 170
    .line 171
    sget-object v0, Lm7/k;->a:Lm7/k;

    .line 172
    .line 173
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-lez p1, :cond_2

    .line 184
    .line 185
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p1, Lf1/b1;

    .line 188
    .line 189
    sget-object v0, Lm7/k;->b:Ll8/p;

    .line 190
    .line 191
    invoke-virtual {v0}, Ll8/p;->i()[Ljava/io/File;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {p1, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 199
    .line 200
    return-object p1

    .line 201
    :pswitch_3
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Lf9/k;

    .line 207
    .line 208
    if-eqz p1, :cond_3

    .line 209
    .line 210
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Lf1/b1;

    .line 213
    .line 214
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lj8/k0;

    .line 219
    .line 220
    invoke-interface {p1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    :cond_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 224
    .line 225
    return-object p1

    .line 226
    :pswitch_4
    invoke-direct {p0, p1}, Lb8/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    return-object p1

    .line 231
    :pswitch_5
    invoke-direct {p0, p1}, Lb8/m;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    return-object p1

    .line 236
    :pswitch_6
    invoke-direct {p0, p1}, Lb8/m;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    return-object p1

    .line 241
    :pswitch_7
    invoke-direct {p0, p1}, Lb8/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    return-object p1

    .line 246
    :pswitch_8
    invoke-direct {p0, p1}, Lb8/m;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    return-object p1

    .line 251
    :pswitch_9
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast p1, Ljava/util/List;

    .line 257
    .line 258
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Lc8/g0;

    .line 261
    .line 262
    new-instance v1, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_4

    .line 276
    .line 277
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Lz7/b2;

    .line 282
    .line 283
    iget-object v5, v5, Lz7/b2;->c:Ljava/util/List;

    .line 284
    .line 285
    invoke-static {v5, v1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 290
    .line 291
    const/16 v5, 0xa

    .line 292
    .line 293
    invoke-static {v1, v5}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_5

    .line 309
    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    check-cast v5, Lz7/a2;

    .line 315
    .line 316
    iget-object v5, v5, Lz7/a2;->d:Lz7/q1;

    .line 317
    .line 318
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    if-eqz v5, :cond_7

    .line 336
    .line 337
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    instance-of v6, v5, Lz7/v;

    .line 342
    .line 343
    if-eqz v6, :cond_6

    .line 344
    .line 345
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_7
    new-instance p1, Lc8/f0;

    .line 350
    .line 351
    invoke-direct {p1, v4}, Lc8/f0;-><init>(I)V

    .line 352
    .line 353
    .line 354
    invoke-static {v1, p1}, Ls8/p;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    iput-object p1, v0, Lc8/g0;->f:Ljava/util/List;

    .line 359
    .line 360
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast p1, Lc8/g0;

    .line 363
    .line 364
    iget-object p1, p1, Lc8/g0;->f:Ljava/util/List;

    .line 365
    .line 366
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    if-eqz p1, :cond_9

    .line 371
    .line 372
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast p1, Lc8/g0;

    .line 375
    .line 376
    iput-object v2, p1, Lc8/g0;->d:Lz7/v;

    .line 377
    .line 378
    const-string v1, "\u3010\u5c4f\u5e55\u4eae\u5ea6\u3011\u6ce8\u9500\u5f02\u5e38: "

    .line 379
    .line 380
    monitor-enter p1

    .line 381
    :try_start_0
    iget-boolean v0, p1, Lc8/g0;->g:Z

    .line 382
    .line 383
    if-eqz v0, :cond_8

    .line 384
    .line 385
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 394
    .line 395
    .line 396
    iput-boolean v4, p1, Lc8/g0;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .line 398
    goto :goto_4

    .line 399
    :catchall_0
    move-exception v0

    .line 400
    goto :goto_5

    .line 401
    :catch_0
    move-exception v0

    .line 402
    :try_start_1
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 403
    .line 404
    const-string v5, "CarLife_Vehicle"

    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    const/4 v6, 0x2

    .line 423
    new-array v6, v6, [Ljava/lang/Object;

    .line 424
    .line 425
    aput-object v1, v6, v4

    .line 426
    .line 427
    aput-object v0, v6, v3

    .line 428
    .line 429
    invoke-virtual {v2, v5, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    .line 431
    .line 432
    :cond_8
    :goto_4
    monitor-exit p1

    .line 433
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 434
    .line 435
    goto :goto_6

    .line 436
    :goto_5
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    throw v0

    .line 438
    :cond_9
    iget-object p1, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast p1, Lc8/g0;

    .line 441
    .line 442
    invoke-virtual {p1}, Lc8/g0;->d()V

    .line 443
    .line 444
    .line 445
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 446
    .line 447
    :goto_6
    return-object p1

    .line 448
    :pswitch_a
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v0, Lg9/t;

    .line 451
    .line 452
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 453
    .line 454
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast p1, Lr8/j;

    .line 460
    .line 461
    iget-object v2, p1, Lr8/j;->a:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v2, Ljava/util/Map;

    .line 464
    .line 465
    iget-object p1, p1, Lr8/j;->b:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast p1, Ljava/lang/Boolean;

    .line 468
    .line 469
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    if-eqz v4, :cond_a

    .line 478
    .line 479
    goto :goto_7

    .line 480
    :cond_a
    iget-boolean v4, v0, Lg9/t;->a:Z

    .line 481
    .line 482
    if-nez v4, :cond_b

    .line 483
    .line 484
    sget-object v4, Lc8/w;->d:Lc8/w;

    .line 485
    .line 486
    invoke-static {v2, v4}, Lb8/m;->t(Ljava/util/Map;Lc8/w;)V

    .line 487
    .line 488
    .line 489
    iput-boolean v3, v0, Lg9/t;->a:Z

    .line 490
    .line 491
    :cond_b
    if-eqz p1, :cond_c

    .line 492
    .line 493
    sget-object p1, Lc8/w;->e:Lc8/w;

    .line 494
    .line 495
    invoke-static {v2, p1}, Lb8/m;->t(Ljava/util/Map;Lc8/w;)V

    .line 496
    .line 497
    .line 498
    goto :goto_7

    .line 499
    :cond_c
    sget-object p1, Lc8/w;->f:Lc8/w;

    .line 500
    .line 501
    invoke-static {v2, p1}, Lb8/m;->t(Ljava/util/Map;Lc8/w;)V

    .line 502
    .line 503
    .line 504
    :goto_7
    return-object v1

    .line 505
    :pswitch_b
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    iget-object p1, p0, Lb8/m;->f:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast p1, Ljava/util/List;

    .line 511
    .line 512
    sget-object v0, Lb8/o;->a:Lfc/c;

    .line 513
    .line 514
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    new-array v0, v0, [I

    .line 519
    .line 520
    sput-object v0, Lb8/o;->b:[I

    .line 521
    .line 522
    sget-object v0, Lb8/o;->c:Ljava/util/ArrayList;

    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 529
    .line 530
    .line 531
    move-result v3

    .line 532
    if-eqz v3, :cond_d

    .line 533
    .line 534
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    check-cast v3, Lac/v0;

    .line 539
    .line 540
    invoke-interface {v3, v2}, Lac/v0;->a(Ljava/util/concurrent/CancellationException;)V

    .line 541
    .line 542
    .line 543
    goto :goto_8

    .line 544
    :cond_d
    sget-object v0, Lb8/o;->c:Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 547
    .line 548
    .line 549
    iget-object v0, p0, Lb8/m;->g:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v0, Lac/w;

    .line 552
    .line 553
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    const/4 v3, 0x0

    .line 558
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    if-eqz v5, :cond_f

    .line 563
    .line 564
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    add-int/lit8 v6, v3, 0x1

    .line 569
    .line 570
    if-ltz v3, :cond_e

    .line 571
    .line 572
    check-cast v5, Lz7/b2;

    .line 573
    .line 574
    new-instance v7, Lb8/l;

    .line 575
    .line 576
    invoke-direct {v7, v5, v3, v2, v4}, Lb8/l;-><init>(Ljava/lang/Object;ILw8/c;I)V

    .line 577
    .line 578
    .line 579
    invoke-static {v0, v2, v7, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    sget-object v5, Lb8/o;->c:Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move v3, v6

    .line 589
    goto :goto_9

    .line 590
    :cond_e
    invoke-static {}, Lp9/x1;->L()V

    .line 591
    .line 592
    .line 593
    throw v2

    .line 594
    :cond_f
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 595
    .line 596
    return-object p1

    .line 597
    :pswitch_data_0
    .packed-switch 0x0
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
