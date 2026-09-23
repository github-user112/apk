.class public final Lcom/tencent/bugly/proguard/bg;
.super Ljava/lang/Thread;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/bg$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/bugly/proguard/bf;

.field public b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Lcom/tencent/bugly/proguard/bg$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bg;->c:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/bg;->d:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bg;->e:Z

    .line 11
    .line 12
    iput v1, p0, Lcom/tencent/bugly/proguard/bg;->f:I

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/bg;->b:Z

    .line 15
    .line 16
    return-void
.end method

.method private declared-synchronized a(Lcom/tencent/bugly/proguard/bf;)V
    .locals 2

    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/bg;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/bg;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/bf;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    const-string p1, "Restart getting main stack trace."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/bg;->d:Z

    .line 12
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bg;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bg;->c:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-static {v1}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/Throwable;)Z

    .line 5
    :goto_0
    const-string v1, "MainHandlerChecker is reset to null."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/tencent/bugly/proguard/bg;->a:Lcom/tencent/bugly/proguard/bf;

    return v0
.end method

.method public final b()Z
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/tencent/bugly/proguard/bg;->a:Lcom/tencent/bugly/proguard/bf;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-wide/16 v2, 0x1388

    .line 15
    .line 16
    iput-wide v2, v1, Lcom/tencent/bugly/proguard/bf;->b:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/tencent/bugly/proguard/bf;

    .line 32
    .line 33
    invoke-direct {v2, v0, v1}, Lcom/tencent/bugly/proguard/bf;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/tencent/bugly/proguard/bg;->a:Lcom/tencent/bugly/proguard/bf;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return v1

    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    return v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/Throwable;)Z

    .line 53
    .line 54
    .line 55
    return v1
.end method

.method public final declared-synchronized c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bg;->d:Z

    .line 4
    .line 5
    const-string v1, "Record stack trace is disabled."

    .line 6
    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bg;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :goto_0
    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/bg;->c:Z

    .line 6
    .line 7
    if-nez v2, :cond_a

    .line 8
    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/bg;->a:Lcom/tencent/bugly/proguard/bf;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-string v2, "Main handler checker is null. Stop thread monitor."

    .line 15
    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :catch_0
    move-exception v2

    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :catch_1
    move-exception v2

    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    iget-boolean v4, v2, Lcom/tencent/bugly/proguard/bf;->c:Z

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    iput-boolean v3, v2, Lcom/tencent/bugly/proguard/bf;->c:Z

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    iput-wide v4, v2, Lcom/tencent/bugly/proguard/bf;->d:J

    .line 40
    .line 41
    iget-object v4, v2, Lcom/tencent/bugly/proguard/bf;->a:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/bg;->a(Lcom/tencent/bugly/proguard/bf;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/bg;->b:Z

    .line 50
    .line 51
    if-eqz v4, :cond_7

    .line 52
    .line 53
    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/bg;->d:Z

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/bf;->b()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    const-wide/16 v6, 0x5e6

    .line 63
    .line 64
    cmp-long v8, v4, v6

    .line 65
    .line 66
    if-lez v8, :cond_7

    .line 67
    .line 68
    const-wide/32 v6, 0x30d36

    .line 69
    .line 70
    .line 71
    cmp-long v8, v4, v6

    .line 72
    .line 73
    if-ltz v8, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const-wide/16 v6, 0x1392

    .line 77
    .line 78
    const/4 v8, 0x1

    .line 79
    cmp-long v9, v4, v6

    .line 80
    .line 81
    if-gtz v9, :cond_4

    .line 82
    .line 83
    iput v8, p0, Lcom/tencent/bugly/proguard/bg;->f:I

    .line 84
    .line 85
    const-string v4, "timeSinceMsgSent in [2s, 5s], record stack"

    .line 86
    .line 87
    new-array v3, v3, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    iget v4, p0, Lcom/tencent/bugly/proguard/bg;->f:I

    .line 95
    .line 96
    add-int/lit8 v5, v4, 0x1

    .line 97
    .line 98
    iput v5, p0, Lcom/tencent/bugly/proguard/bg;->f:I

    .line 99
    .line 100
    and-int/2addr v4, v5

    .line 101
    if-nez v4, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const/4 v8, 0x0

    .line 105
    :goto_1
    if-eqz v8, :cond_6

    .line 106
    .line 107
    const-string v4, "timeSinceMsgSent in (5s, 200s), should record stack:true"

    .line 108
    .line 109
    new-array v3, v3, [Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_6
    move v3, v8

    .line 115
    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/bf;->d()V

    .line 118
    .line 119
    .line 120
    :cond_8
    iget-object v3, p0, Lcom/tencent/bugly/proguard/bg;->g:Lcom/tencent/bugly/proguard/bg$a;

    .line 121
    .line 122
    if-eqz v3, :cond_9

    .line 123
    .line 124
    iget-boolean v3, p0, Lcom/tencent/bugly/proguard/bg;->d:Z

    .line 125
    .line 126
    if-eqz v3, :cond_9

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/bf;->a()Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/bf;->b()J

    .line 132
    .line 133
    .line 134
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    sub-long/2addr v2, v0

    .line 139
    const-wide/16 v4, 0x1f4

    .line 140
    .line 141
    rem-long/2addr v2, v4

    .line 142
    sub-long/2addr v4, v2

    .line 143
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/ap;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :goto_3
    invoke-static {v2}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/Throwable;)Z

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :goto_4
    invoke-static {v2}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/Throwable;)Z

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_a
    :goto_5
    return-void
.end method
