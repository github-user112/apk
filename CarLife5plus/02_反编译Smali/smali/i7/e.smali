.class public final Li7/e;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:Li7/f;

.field public final synthetic f:Ll7/d;


# direct methods
.method public constructor <init>(Li7/f;Ll7/d;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li7/e;->e:Li7/f;

    .line 2
    .line 3
    iput-object p2, p0, Li7/e;->f:Ll7/d;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Li7/e;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Li7/e;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Li7/e;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 2

    .line 1
    new-instance p1, Li7/e;

    .line 2
    .line 3
    iget-object v0, p0, Li7/e;->e:Li7/f;

    .line 4
    .line 5
    iget-object v1, p0, Li7/e;->f:Ll7/d;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Li7/e;-><init>(Li7/f;Ll7/d;Lw8/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v1, "\u3010\u97f3\u9891\u64ad\u653e\u3011\u64ad\u653e\u5f02\u5e38\uff1a"

    .line 2
    .line 3
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Li7/e;->e:Li7/f;

    .line 7
    .line 8
    iget-object v2, p1, Li7/f;->b:Ljava/lang/Object;

    .line 9
    .line 10
    new-instance v3, Li7/b;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v9, p0, Li7/e;->f:Ll7/d;

    .line 16
    .line 17
    invoke-interface {v9}, Ll7/d;->j()Ll7/c;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget v0, p1, Li7/f;->a:I

    .line 22
    .line 23
    invoke-static {v0}, Lg5/a;->y(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v7, 0x17

    .line 30
    .line 31
    const/4 v10, 0x1

    .line 32
    const/4 v11, 0x0

    .line 33
    if-lt v6, v7, :cond_3

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    if-eq v0, v6, :cond_1

    .line 37
    .line 38
    const/4 v6, 0x5

    .line 39
    if-eq v0, v6, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lg5/a;->K()Lk7/k;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-boolean v0, v0, Lk7/k;->c:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lg5/a;->K()Lk7/k;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-boolean v0, v0, Lk7/k;->e:Z

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Lg5/a;->K()Lk7/k;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-boolean v0, v0, Lk7/k;->d:Z

    .line 60
    .line 61
    :goto_0
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v6, 0x0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 67
    :goto_2
    const/4 v7, 0x0

    .line 68
    const/16 v8, 0x18

    .line 69
    .line 70
    invoke-static/range {v3 .. v8}, Li7/b;->a(Li7/b;Ll7/c;IZLi7/m;I)Landroid/media/AudioTrack;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p1, Li7/f;->c:Landroid/media/AudioTrack;

    .line 75
    .line 76
    sget-object v0, Li7/j;->e:Li7/j;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Li7/f;->e(Li7/j;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v2}, Li7/i;->f()V

    .line 82
    .line 83
    .line 84
    :try_start_0
    invoke-static {p1, v9}, Li7/f;->a(Li7/f;Ll7/d;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Li7/j;->h:Li7/j;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Li7/f;->e(Li7/j;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v2, v9}, Li7/i;->e(Ll7/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    :goto_3
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Li7/f;->d()V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_5

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_1
    sget-object v3, Li7/j;->i:Li7/j;

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Li7/f;->e(Li7/j;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-nez v3, :cond_4

    .line 115
    .line 116
    const-string v3, "\u64ad\u653e\u5f02\u5e38"

    .line 117
    .line 118
    :cond_4
    invoke-interface {v2, v9, v3}, Li7/i;->a(Ll7/d;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 122
    .line 123
    const-string v3, "CarLife_SDK"

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, " "

    .line 138
    .line 139
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const/4 v4, 0x2

    .line 147
    new-array v4, v4, [Ljava/lang/Object;

    .line 148
    .line 149
    aput-object v1, v4, v11

    .line 150
    .line 151
    aput-object v0, v4, v10

    .line 152
    .line 153
    invoke-virtual {v2, v3, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :goto_4
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 158
    .line 159
    return-object p1

    .line 160
    :goto_5
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Li7/f;->d()V

    .line 164
    .line 165
    .line 166
    throw v0
.end method
