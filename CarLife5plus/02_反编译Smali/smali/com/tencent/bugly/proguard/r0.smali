.class public final Lcom/tencent/bugly/proguard/r0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->b()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->b()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p2, 0x1

    .line 31
    new-array p2, p2, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    aput-object p1, p2, v0

    .line 35
    .line 36
    const-string v0, ">>> %s onCreated <<<"

    .line 37
    .line 38
    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p2, Lcom/tencent/bugly/proguard/aa;->L:Ljava/util/List;

    .line 48
    .line 49
    const-string v0, "onCreated"

    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->b()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->b()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    aput-object p1, v0, v1

    .line 35
    .line 36
    const-string v1, ">>> %s onDestroyed <<<"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, v0, Lcom/tencent/bugly/proguard/aa;->L:Ljava/util/List;

    .line 48
    .line 49
    const-string v1, "onDestroyed"

    .line 50
    .line 51
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->b()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->b()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    aput-object p1, v0, v1

    .line 35
    .line 36
    const-string v1, ">>> %s onPaused <<<"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, v0, Lcom/tencent/bugly/proguard/aa;->L:Ljava/util/List;

    .line 49
    .line 50
    const-string v2, "onPaused"

    .line 51
    .line 52
    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    iput-wide v1, v0, Lcom/tencent/bugly/proguard/aa;->A:J

    .line 64
    .line 65
    iget-wide v3, v0, Lcom/tencent/bugly/proguard/aa;->z:J

    .line 66
    .line 67
    sub-long v3, v1, v3

    .line 68
    .line 69
    iput-wide v3, v0, Lcom/tencent/bugly/proguard/aa;->B:J

    .line 70
    .line 71
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/s;->c(J)J

    .line 72
    .line 73
    .line 74
    iget-wide v1, v0, Lcom/tencent/bugly/proguard/aa;->B:J

    .line 75
    .line 76
    const-wide/16 v3, 0x0

    .line 77
    .line 78
    cmp-long p1, v1, v3

    .line 79
    .line 80
    if-gez p1, :cond_2

    .line 81
    .line 82
    iput-wide v3, v0, Lcom/tencent/bugly/proguard/aa;->B:J

    .line 83
    .line 84
    :cond_2
    const-string p1, "background"

    .line 85
    .line 86
    iput-object p1, v0, Lcom/tencent/bugly/proguard/aa;->y:Ljava/lang/String;

    .line 87
    .line 88
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->b()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->b()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    new-array v1, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    aput-object p1, v1, v2

    .line 36
    .line 37
    const-string v3, ">>> %s onResumed <<<"

    .line 38
    .line 39
    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_1
    iget-object v3, v1, Lcom/tencent/bugly/proguard/aa;->L:Ljava/util/List;

    .line 51
    .line 52
    const-string v4, "onResumed"

    .line 53
    .line 54
    invoke-static {p1, v4}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iput-object p1, v1, Lcom/tencent/bugly/proguard/aa;->y:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    iput-wide v3, v1, Lcom/tencent/bugly/proguard/aa;->z:J

    .line 68
    .line 69
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->c()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    sub-long/2addr v3, v5

    .line 74
    iput-wide v3, v1, Lcom/tencent/bugly/proguard/aa;->C:J

    .line 75
    .line 76
    iget-wide v3, v1, Lcom/tencent/bugly/proguard/aa;->z:J

    .line 77
    .line 78
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->d()J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    sub-long/2addr v3, v5

    .line 83
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->e()J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    const-wide/16 v7, 0x0

    .line 88
    .line 89
    cmp-long p1, v5, v7

    .line 90
    .line 91
    if-lez p1, :cond_2

    .line 92
    .line 93
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->e()J

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->f()J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    :goto_0
    cmp-long p1, v3, v5

    .line 103
    .line 104
    if-lez p1, :cond_4

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->c()V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->g()I

    .line 110
    .line 111
    .line 112
    const-wide/16 v5, 0x3e8

    .line 113
    .line 114
    div-long/2addr v3, v5

    .line 115
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->f()J

    .line 120
    .line 121
    .line 122
    move-result-wide v3

    .line 123
    div-long/2addr v3, v5

    .line 124
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const/4 v3, 0x2

    .line 129
    new-array v3, v3, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object p1, v3, v2

    .line 132
    .line 133
    aput-object v1, v3, v0

    .line 134
    .line 135
    const-string p1, "[session] launch app one times (app in background %d seconds and over %d seconds)"

    .line 136
    .line 137
    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->h()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->i()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    rem-int/2addr p1, v1

    .line 149
    const/4 v1, 0x4

    .line 150
    if-nez p1, :cond_3

    .line 151
    .line 152
    sget-object p1, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/r;

    .line 153
    .line 154
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->j()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/r;->a(IZ)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_3
    sget-object p1, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/r;

    .line 163
    .line 164
    invoke-virtual {p1, v1, v2}, Lcom/tencent/bugly/proguard/r;->a(IZ)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v3

    .line 171
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->k()J

    .line 172
    .line 173
    .line 174
    move-result-wide v5

    .line 175
    sub-long v5, v3, v5

    .line 176
    .line 177
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->l()J

    .line 178
    .line 179
    .line 180
    move-result-wide v7

    .line 181
    cmp-long p1, v5, v7

    .line 182
    .line 183
    if-lez p1, :cond_4

    .line 184
    .line 185
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/s;->b(J)J

    .line 186
    .line 187
    .line 188
    const-string p1, "add a timer to upload hot start user info"

    .line 189
    .line 190
    new-array v1, v2, [Ljava/lang/Object;

    .line 191
    .line 192
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->j()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_4

    .line 200
    .line 201
    sget-object p1, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/r;

    .line 202
    .line 203
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->l()J

    .line 204
    .line 205
    .line 206
    move-result-wide v1

    .line 207
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    new-instance v4, Lcom/tencent/bugly/proguard/p0;

    .line 212
    .line 213
    const/4 v5, 0x0

    .line 214
    invoke-direct {v4, p1, v5, v0}, Lcom/tencent/bugly/proguard/p0;-><init>(Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v4, v1, v2}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;J)Z

    .line 218
    .line 219
    .line 220
    :cond_4
    :goto_1
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    const-string v0, ">>> %s onStart <<<"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/tencent/bugly/proguard/aa;->a(IZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v0, v1, v2

    .line 14
    .line 15
    const-string v0, ">>> %s onStop <<<"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {v0, p1, v2}, Lcom/tencent/bugly/proguard/aa;->a(IZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
