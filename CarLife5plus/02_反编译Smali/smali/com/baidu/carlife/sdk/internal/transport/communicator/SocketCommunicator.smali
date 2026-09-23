.class public Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Companion;,
        Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 -2\u00020\u0001:\u0002-.B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB?\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001aR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001bR\u001c\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010!\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001a\u0010$\u001a\u00020#8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u001a\u0010)\u001a\u00020(8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\u00a8\u0006/"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "",
        "channel",
        "Ljava/net/Socket;",
        "socket",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;",
        "callbacks",
        "Ljava/util/concurrent/BlockingQueue;",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "messageQueue",
        "<init>",
        "(ILjava/net/Socket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;)V",
        "",
        "host",
        "port",
        "(ILjava/lang/String;ILcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;)V",
        "message",
        "Lr8/z;",
        "write",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "read",
        "()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "terminate",
        "()V",
        "I",
        "Ljava/net/Socket;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;",
        "Ljava/util/concurrent/BlockingQueue;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isTerminated",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;",
        "reader",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;",
        "Ljava/io/InputStream;",
        "input",
        "Ljava/io/InputStream;",
        "getInput",
        "()Ljava/io/InputStream;",
        "Ljava/io/OutputStream;",
        "output",
        "Ljava/io/OutputStream;",
        "getOutput",
        "()Ljava/io/OutputStream;",
        "Companion",
        "Reader",
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
.field public static final Companion:Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Companion;

.field public static final MAX_PACKET_SIZE:I = 0x2800


# instance fields
.field private final callbacks:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;

.field private final channel:I

.field private final input:Ljava/io/InputStream;

.field private isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final messageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Ljava/io/OutputStream;

.field private reader:Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;

.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->Companion:Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "host"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p2, p3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;-><init>(ILjava/net/Socket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;ILg9/g;)V
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move-object p6, v0

    :goto_0
    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_1
    move-object p6, p5

    goto :goto_0

    .line 11
    :goto_1
    invoke-direct/range {p1 .. p6}, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;-><init>(ILjava/lang/String;ILcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public constructor <init>(ILjava/net/Socket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/Socket;",
            "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "socket"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->channel:I

    .line 3
    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->socket:Ljava/net/Socket;

    .line 4
    iput-object p3, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->callbacks:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;

    .line 5
    iput-object p4, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 6
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    const-string v0, "socket.getInputStream()"

    invoke-static {p3, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->input:Ljava/io/InputStream;

    .line 8
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const-string p3, "socket.getOutputStream()"

    invoke-static {p2, p3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->output:Ljava/io/OutputStream;

    if-eqz p4, :cond_0

    .line 9
    new-instance p2, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;

    invoke-direct {p2, p1, p4, p0}, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;-><init>(ILjava/util/concurrent/BlockingQueue;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;)V

    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->reader:Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ILjava/net/Socket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;ILg9/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;-><init>(ILjava/net/Socket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method public final getInput()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->input:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOutput()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->output:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 10
    .line 11
    iget v2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->channel:I

    .line 12
    .line 13
    const/4 v5, 0x6

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->input:Ljava/io/InputStream;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static {v0, v3, v2, v4}, Lcom/baidu/carlife/sdk/util/IOUtilsKt;->blockRead(Ljava/io/InputStream;[BII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v1, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->resizeBuffer(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->input:Ljava/io/InputStream;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {v0, v3, v4, v5}, Lcom/baidu/carlife/sdk/util/IOUtilsKt;->blockRead(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v4, "socket "

    .line 69
    .line 70
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v4, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->channel:I

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v4, " read exception: "

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/4 v4, 0x2

    .line 88
    new-array v4, v4, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object v3, v4, v2

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    aput-object v0, v4, v2

    .line 94
    .line 95
    const-string v2, "CarLife_SDK"

    .line 96
    .line 97
    invoke-virtual {v1, v2, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 102
    .line 103
    const-string v1, "socket has been closed"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method

.method public terminate()V
    .locals 11

    .line 1
    const-string v0, "Communicator "

    .line 2
    .line 3
    const-string v1, "CarLife_SDK"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x4

    .line 18
    :try_start_0
    iget-object v7, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->socket:Ljava/net/Socket;

    .line 19
    .line 20
    invoke-virtual {v7}, Ljava/net/Socket;->shutdownInput()V

    .line 21
    .line 22
    .line 23
    iget-object v7, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->socket:Ljava/net/Socket;

    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/net/Socket;->shutdownOutput()V

    .line 26
    .line 27
    .line 28
    iget-object v7, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->socket:Ljava/net/Socket;

    .line 29
    .line 30
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v7

    .line 35
    sget-object v8, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 36
    .line 37
    iget v9, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->channel:I

    .line 38
    .line 39
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    new-array v10, v6, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v0, v10, v5

    .line 46
    .line 47
    aput-object v9, v10, v3

    .line 48
    .line 49
    const-string v9, " terminate exception: "

    .line 50
    .line 51
    aput-object v9, v10, v4

    .line 52
    .line 53
    aput-object v7, v10, v2

    .line 54
    .line 55
    invoke-virtual {v8, v1, v10}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v7, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    sget-object v8, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 63
    .line 64
    invoke-virtual {v8}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->getNULL()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-interface {v7, v8}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v7, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->reader:Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator$Reader;

    .line 72
    .line 73
    if-eqz v7, :cond_1

    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v7, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->callbacks:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;

    .line 79
    .line 80
    if-eqz v7, :cond_2

    .line 81
    .line 82
    iget v8, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->channel:I

    .line 83
    .line 84
    invoke-interface {v7, v8}, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;->onTerminated(I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    sget-object v7, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 88
    .line 89
    iget v8, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->channel:I

    .line 90
    .line 91
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    new-array v6, v6, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object v0, v6, v5

    .line 98
    .line 99
    aput-object v8, v6, v3

    .line 100
    .line 101
    const-string v0, " terminated "

    .line 102
    .line 103
    aput-object v0, v6, v4

    .line 104
    .line 105
    aput-object p0, v6, v2

    .line 106
    .line 107
    invoke-virtual {v7, v1, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    return-void
.end method

.method public write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 6

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    move v1, v0

    .line 19
    :goto_0
    if-lez v1, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x2800

    .line 22
    .line 23
    if-le v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v2, v1

    .line 27
    :goto_1
    iget-object v3, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->output:Ljava/io/OutputStream;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sub-int v5, v0, v1

    .line 34
    .line 35
    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    sub-int/2addr v1, v2

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    return-void

    .line 43
    :goto_2
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "socket "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/SocketCommunicator;->channel:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " write exception: "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x2

    .line 67
    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    aput-object v1, v2, v3

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    aput-object p1, v2, v1

    .line 74
    .line 75
    const-string v1, "CarLife_SDK"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 82
    .line 83
    const-string v0, "socket has been closed"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method
