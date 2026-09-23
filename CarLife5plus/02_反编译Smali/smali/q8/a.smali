.class public final Lq8/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/net/Socket;

.field public final synthetic c:Lq8/l;


# direct methods
.method public constructor <init>(Lq8/l;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq8/a;->c:Lq8/l;

    .line 5
    .line 6
    iput-object p2, p0, Lq8/a;->a:Ljava/io/InputStream;

    .line 7
    .line 8
    iput-object p3, p0, Lq8/a;->b:Ljava/net/Socket;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v1, p0, Lq8/a;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-object v3, p0, Lq8/a;->c:Lq8/l;

    .line 4
    .line 5
    iget-object v8, p0, Lq8/a;->b:Ljava/net/Socket;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    new-instance v4, Landroid/support/v4/media/session/t;

    .line 13
    .line 14
    const/16 v0, 0x17

    .line 15
    .line 16
    invoke-direct {v4, v0}, Landroid/support/v4/media/session/t;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lq8/f;

    .line 20
    .line 21
    iget-object v5, p0, Lq8/a;->a:Ljava/io/InputStream;

    .line 22
    .line 23
    invoke-virtual {v8}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-direct/range {v2 .. v7}, Lq8/f;-><init>(Lq8/l;Landroid/support/v4/media/session/t;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Lq8/f;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object v2, v6

    .line 42
    goto :goto_3

    .line 43
    :catch_0
    move-exception v0

    .line 44
    move-object v2, v6

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-static {v6}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-static {v1}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v8}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v3, Lq8/l;->c:Lq8/d;

    .line 56
    .line 57
    iget-object v0, v0, Lq8/d;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    goto :goto_3

    .line 67
    :catch_1
    move-exception v0

    .line 68
    :goto_2
    :try_start_2
    instance-of v4, v0, Ljava/net/SocketException;

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    const-string v4, "NanoHttpd Shutdown"

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    :cond_1
    instance-of v4, v0, Ljava/net/SocketTimeoutException;

    .line 85
    .line 86
    if-nez v4, :cond_2

    .line 87
    .line 88
    sget-object v4, Lq8/l;->g:Ljava/util/logging/Logger;

    .line 89
    .line 90
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 91
    .line 92
    const-string v6, "Communication with the client broken, or an bug in the handler code"

    .line 93
    .line 94
    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-static {v2}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :goto_3
    invoke-static {v2}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v8}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v3, Lq8/l;->c:Lq8/d;

    .line 111
    .line 112
    iget-object v1, v1, Lq8/d;->b:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v1, Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    throw v0
.end method
