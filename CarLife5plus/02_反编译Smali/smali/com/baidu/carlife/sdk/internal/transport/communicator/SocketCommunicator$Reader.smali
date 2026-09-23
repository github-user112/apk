.class final Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;
.super Ljava/lang/Thread;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u000eR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u000fR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;",
        "Ljava/lang/Thread;",
        "",
        "channel",
        "Ljava/util/concurrent/BlockingQueue;",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "messageQueue",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "communicator",
        "<init>",
        "(ILjava/util/concurrent/BlockingQueue;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;)V",
        "Lr8/z;",
        "run",
        "()V",
        "I",
        "Ljava/util/concurrent/BlockingQueue;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
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


# instance fields
.field private final channel:I

.field private final communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

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
.method public constructor <init>(ILjava/util/concurrent/BlockingQueue;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
            ">;",
            "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "messageQueue"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "communicator"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->channel:I

    .line 15
    .line 16
    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    .line 19
    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p3, "SocketReader_"

    .line 23
    .line 24
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-string v0, "SocketReader_"

    .line 2
    .line 3
    const-string v1, "CarLife_SDK"

    .line 4
    .line 5
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    .line 8
    .line 9
    invoke-interface {v4}, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;->read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v5, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 14
    .line 15
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    const-wide/16 v7, 0x7d0

    .line 18
    .line 19
    invoke-interface {v5, v4, v7, v8, v6}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 26
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v6, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->channel:I

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v6, " \u961f\u5217\u5199\u5165\u8d85\u65f6\uff0c\u4e22\u5f03\u6d88\u606f"

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    new-array v6, v3, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v5, v6, v2

    .line 52
    .line 53
    invoke-virtual {v4, v1, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v4

    .line 58
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 59
    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget v7, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->channel:I

    .line 66
    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v7, " read thread exception: "

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    new-array v6, v3, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v4, v6, v2

    .line 89
    .line 90
    invoke-virtual {v5, v1, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_1

    .line 102
    .line 103
    iget-object v4, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 109
    .line 110
    sget-object v6, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->getNULL()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-interface {v4, v6}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;->channel:I

    .line 125
    .line 126
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v0, " \u7ebf\u7a0b\u9000\u51fa"

    .line 130
    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-array v3, v3, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object v0, v3, v2

    .line 141
    .line 142
    invoke-virtual {v5, v1, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method
