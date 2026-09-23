.class public final Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R \u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "<init>",
        "()V",
        "",
        "host",
        "",
        "startConnect",
        "(Ljava/lang/String;)Z",
        "Lr8/z;",
        "terminate",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "write",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "read",
        "()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "",
        "",
        "communicators",
        "Ljava/util/Map;",
        "Ljava/util/concurrent/BlockingQueue;",
        "messageQueue",
        "Ljava/util/concurrent/BlockingQueue;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isTerminated",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Companion",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector$Companion;

.field private static final SERVER_AUDIO_SOCKET_PORT:I = 0x2418

.field private static final SERVER_AUDIO_TTS_SOCKET_PORT:I = 0x2419

.field private static final SERVER_AUDIO_VR_SOCKET_PORT:I = 0x241a

.field private static final SERVER_CMD_SOCKET_PORT:I = 0x1c48

.field private static final SERVER_TOUCH_SOCKET_PORT:I = 0x247c

.field private static final SERVER_UPDATE_SOCKET_PORT:I = 0x24e0

.field private static final SERVER_VIDEO_SOCKET_PORT:I = 0x2030

.field private static final SUPPORT_CHANNELS:[Lr8/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lr8/j;"
        }
    .end annotation
.end field


# instance fields
.field private final communicators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final messageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->Companion:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector$Companion;

    .line 8
    .line 9
    new-instance v0, Lr8/j;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/16 v3, 0x1c48

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v0, v2, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lr8/j;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/16 v5, 0x2030

    .line 33
    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-direct {v2, v4, v5}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lr8/j;

    .line 42
    .line 43
    const/4 v5, 0x3

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const/16 v7, 0x2418

    .line 49
    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-direct {v4, v6, v7}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Lr8/j;

    .line 58
    .line 59
    const/4 v7, 0x4

    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const/16 v9, 0x2419

    .line 65
    .line 66
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-direct {v6, v8, v9}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v8, Lr8/j;

    .line 74
    .line 75
    const/4 v9, 0x5

    .line 76
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    const/16 v11, 0x241a

    .line 81
    .line 82
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-direct {v8, v10, v11}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    new-instance v10, Lr8/j;

    .line 90
    .line 91
    const/4 v11, 0x6

    .line 92
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    const/16 v13, 0x247c

    .line 97
    .line 98
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    invoke-direct {v10, v12, v13}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    new-instance v12, Lr8/j;

    .line 106
    .line 107
    const/4 v13, 0x7

    .line 108
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    const/16 v15, 0x24e0

    .line 113
    .line 114
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    invoke-direct {v12, v14, v15}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-array v13, v13, [Lr8/j;

    .line 122
    .line 123
    const/4 v14, 0x0

    .line 124
    aput-object v0, v13, v14

    .line 125
    .line 126
    aput-object v2, v13, v1

    .line 127
    .line 128
    aput-object v4, v13, v3

    .line 129
    .line 130
    aput-object v6, v13, v5

    .line 131
    .line 132
    aput-object v8, v13, v7

    .line 133
    .line 134
    aput-object v10, v13, v9

    .line 135
    .line 136
    aput-object v12, v13, v11

    .line 137
    .line 138
    sput-object v13, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->SUPPORT_CHANNELS:[Lr8/j;

    .line 139
    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->communicators:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 16
    .line 17
    sget-object v1, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->getNULL()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v1, "message"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 36
    .line 37
    const-string v1, "socket closed"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 44
    .line 45
    const-string v1, "sockets closed"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final startConnect(Ljava/lang/String;)Z
    .locals 14

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->SUPPORT_CHANNELS:[Lr8/j;

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    :goto_0
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    aget-object v3, v0, v1

    .line 23
    .line 24
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->communicators:Ljava/util/Map;

    .line 25
    .line 26
    iget-object v5, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance v6, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;

    .line 29
    .line 30
    iget-object v7, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v7, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    iget-object v3, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    iget-object v11, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 47
    .line 48
    const/16 v12, 0x8

    .line 49
    .line 50
    const/4 v13, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    move-object v8, p1

    .line 53
    invoke-direct/range {v6 .. v13}, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;-><init>(ILjava/lang/String;ILcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;ILg9/g;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p1, 0x1

    .line 63
    return p1
.end method

.method public terminate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->communicators:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;->terminate()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->communicators:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 2

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->communicators:Ljava/util/Map;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getChannel()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;->write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 37
    .line 38
    const-string v0, "sockets closed"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
