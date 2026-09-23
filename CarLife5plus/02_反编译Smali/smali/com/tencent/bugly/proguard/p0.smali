.class public final Lcom/tencent/bugly/proguard/p0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/p0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/p0;->d:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lcom/tencent/bugly/proguard/p0;->c:Ljava/lang/Object;

    .line 3
    iput-boolean p3, p0, Lcom/tencent/bugly/proguard/p0;->b:Z

    return-void
.end method

.method public constructor <init>(Lq8/l;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/p0;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/p0;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/p0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/tencent/bugly/proguard/p0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/p0;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lq8/l;

    .line 9
    .line 10
    iget-object v0, v0, Lq8/l;->a:Ljava/net/ServerSocket;

    .line 11
    .line 12
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 13
    .line 14
    const/16 v2, 0x46a0

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/p0;->b:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    .line 25
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/p0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lq8/l;

    .line 28
    .line 29
    iget-object v0, v0, Lq8/l;->a:Ljava/net/ServerSocket;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/16 v1, 0x1388

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/tencent/bugly/proguard/p0;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lq8/l;

    .line 47
    .line 48
    iget-object v3, v2, Lq8/l;->c:Lq8/d;

    .line 49
    .line 50
    new-instance v4, Lq8/a;

    .line 51
    .line 52
    invoke-direct {v4, v2, v1, v0}, Lq8/a;-><init>(Lq8/l;Ljava/io/InputStream;Ljava/net/Socket;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Lq8/d;->b(Lq8/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lq8/l;->g:Ljava/util/logging/Logger;

    .line 61
    .line 62
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 63
    .line 64
    const-string v3, "Communication with the client broken"

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/p0;->d:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lq8/l;

    .line 72
    .line 73
    iget-object v0, v0, Lq8/l;->a:Ljava/net/ServerSocket;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-exception v0

    .line 83
    iput-object v0, p0, Lcom/tencent/bugly/proguard/p0;->c:Ljava/lang/Object;

    .line 84
    .line 85
    :goto_1
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/p0;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/tencent/bugly/proguard/p0;->d:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Lcom/tencent/bugly/proguard/r;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_1

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_1
    if-eqz v0, :cond_2

    .line 102
    .line 103
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)V

    .line 104
    .line 105
    .line 106
    const-string v2, "[UserInfo] Record user info."

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    new-array v4, v3, [Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v0, v3}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto :goto_3

    .line 120
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/p0;->b:Z

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/r;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :goto_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_3

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_4
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
