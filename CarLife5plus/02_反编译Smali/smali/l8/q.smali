.class public final Ll8/q;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Ljava/io/Closeable;

.field public f:Lf9/k;

.field public g:Ljava/io/BufferedReader;

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Process;

.field public final synthetic k:Lf9/k;


# direct methods
.method public constructor <init>(Ljava/lang/Process;Lf9/k;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll8/q;->j:Ljava/lang/Process;

    .line 2
    .line 3
    iput-object p2, p0, Ll8/q;->k:Lf9/k;

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
    invoke-virtual {p0, p1, p2}, Ll8/q;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ll8/q;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ll8/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    new-instance v0, Ll8/q;

    .line 2
    .line 3
    iget-object v1, p0, Ll8/q;->j:Ljava/lang/Process;

    .line 4
    .line 5
    iget-object v2, p0, Ll8/q;->k:Lf9/k;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Ll8/q;-><init>(Ljava/lang/Process;Lf9/k;Lw8/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Ll8/q;->i:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Ll8/q;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Ll8/q;->j:Ljava/lang/Process;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ll8/q;->g:Ljava/io/BufferedReader;

    .line 11
    .line 12
    iget-object v3, p0, Ll8/q;->f:Lf9/k;

    .line 13
    .line 14
    iget-object v4, p0, Ll8/q;->e:Ljava/io/Closeable;

    .line 15
    .line 16
    iget-object v5, p0, Ll8/q;->i:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v5, Lac/w;

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Ll8/q;->i:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lac/w;

    .line 40
    .line 41
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v3, "getInputStream(...)"

    .line 46
    .line 47
    invoke-static {v0, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v3, Lxb/a;->a:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    new-instance v4, Ljava/io/InputStreamReader;

    .line 53
    .line 54
    invoke-direct {v4, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/io/BufferedReader;

    .line 58
    .line 59
    const/16 v3, 0x2000

    .line 60
    .line 61
    invoke-direct {v0, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Ll8/q;->k:Lf9/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    move-object v5, p1

    .line 67
    move-object v4, v0

    .line 68
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {v5}, Lac/z;->p(Lac/w;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-interface {v3, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iput-object v5, p0, Ll8/q;->i:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object v4, p0, Ll8/q;->e:Ljava/io/Closeable;

    .line 87
    .line 88
    iput-object v3, p0, Ll8/q;->f:Lf9/k;

    .line 89
    .line 90
    iput-object v0, p0, Ll8/q;->g:Ljava/io/BufferedReader;

    .line 91
    .line 92
    iput v1, p0, Ll8/q;->h:I

    .line 93
    .line 94
    const-wide/16 v6, 0xa

    .line 95
    .line 96
    invoke-static {v6, v7, p0}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    sget-object v6, Lx8/a;->a:Lx8/a;

    .line 101
    .line 102
    if-ne p1, v6, :cond_2

    .line 103
    .line 104
    return-object v6

    .line 105
    :cond_4
    const/4 p1, 0x0

    .line 106
    :try_start_3
    invoke-static {v4, p1}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, La7/b;->w(Ljava/lang/Process;)V

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :catchall_1
    move-exception p1

    .line 117
    goto :goto_5

    .line 118
    :catch_0
    move-exception p1

    .line 119
    goto :goto_3

    .line 120
    :goto_2
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 121
    :catchall_2
    move-exception v0

    .line 122
    :try_start_5
    invoke-static {v4, p1}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    :goto_3
    :try_start_6
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 127
    .line 128
    const-string v3, "CarLife_Vehicle"

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v6, "\u3010\u65e5\u5fd7\u76d1\u542c\u3011\u8bfb\u53d6\u5931\u8d25: "

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const/4 v5, 0x2

    .line 152
    new-array v5, v5, [Ljava/lang/Object;

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    aput-object v4, v5, v6

    .line 156
    .line 157
    aput-object p1, v5, v1

    .line 158
    .line 159
    invoke-virtual {v0, v3, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :goto_4
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 164
    .line 165
    return-object p1

    .line 166
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 167
    .line 168
    .line 169
    invoke-static {v2}, La7/b;->w(Ljava/lang/Process;)V

    .line 170
    .line 171
    .line 172
    throw p1
.end method
