.class public final Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;
.super Ljava/lang/Thread;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\r\u0010\u0014\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0014\u0010\rJ\u000f\u0010\u0015\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\rJ\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001aR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006+"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;",
        "Ljava/lang/Thread;",
        "Landroid/os/Handler$Callback;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;",
        "transport",
        "",
        "monitorSendTimeout",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;Z)V",
        "Lr8/z;",
        "start",
        "()V",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "postMessage",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "sendMessage",
        "dispatchMessage",
        "terminate",
        "run",
        "Landroid/os/Message;",
        "msg",
        "handleMessage",
        "(Landroid/os/Message;)Z",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;",
        "getTransport",
        "()Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;",
        "Z",
        "Landroid/os/Handler;",
        "sendHandler",
        "Landroid/os/Handler;",
        "Landroid/os/HandlerThread;",
        "sender",
        "Landroid/os/HandlerThread;",
        "Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;",
        "sendTimeoutMonitor",
        "Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isTerminated",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
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
.field private final context:Lcom/baidu/carlife/sdk/CarLifeContext;

.field private isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final monitorSendTimeout:Z

.field private sendHandler:Landroid/os/Handler;

.field private final sendTimeoutMonitor:Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;

.field private final sender:Landroid/os/HandlerThread;

.field private final transport:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;Z)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transport"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 4
    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->transport:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 5
    iput-boolean p3, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->monitorSendTimeout:Z

    .line 6
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CarLife_MesssageSender"

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sender:Landroid/os/HandlerThread;

    .line 7
    new-instance p2, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "getMainLooper()"

    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher$sendTimeoutMonitor$1;

    invoke-direct {v1, p0}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher$sendTimeoutMonitor$1;-><init>(Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;)V

    const-wide/16 v2, 0xbb8

    invoke-direct {p2, v0, v2, v3, v1}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;-><init>(Landroid/os/Looper;JLf9/a;)V

    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sendTimeoutMonitor:Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    const-string v0, "CarLife_MessageDispatcher"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sendHandler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 12
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->tick()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;ZILg9/g;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;Z)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;)Lcom/baidu/carlife/sdk/CarLifeContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSendHandler$p(Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sendHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final dispatchMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 7
    .line 8
    invoke-interface {v0, v0, p1}, Lcom/baidu/carlife/sdk/internal/transport/TransportListener;->onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getTransport()Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->transport:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v0, "null cannot be cast to non-null type com.baidu.carlife.sdk.internal.protocol.CarLifeMessage"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    check-cast p1, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sendMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public final postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 3

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sendHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "sendHandler"

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :cond_1
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1
.end method

.method public run()V
    .locals 8

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->transport:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSupportEncrypt()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->isEncryptionEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->decrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    iget-object v2, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 36
    .line 37
    invoke-interface {v2, v2, v1}, Lcom/baidu/carlife/sdk/internal/transport/TransportListener;->onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    .line 40
    if-eq v1, v0, :cond_2

    .line 41
    .line 42
    :try_start_3
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_2

    .line 48
    :catchall_1
    move-exception v2

    .line 49
    if-eq v1, v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 52
    .line 53
    .line 54
    :cond_0
    throw v2

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 56
    .line 57
    invoke-interface {v1, v1, v0}, Lcom/baidu/carlife/sdk/internal/transport/TransportListener;->onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_3

    .line 66
    :goto_2
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 67
    .line 68
    .line 69
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    :goto_3
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x1

    .line 77
    const/4 v3, 0x0

    .line 78
    const/4 v4, 0x2

    .line 79
    const-string v5, "CarLife_SDK"

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 84
    .line 85
    new-array v6, v4, [Ljava/lang/Object;

    .line 86
    .line 87
    const-string v7, "MessageDispatcher run exception0: "

    .line 88
    .line 89
    aput-object v7, v6, v3

    .line 90
    .line 91
    aput-object v0, v6, v2

    .line 92
    .line 93
    invoke-virtual {v1, v5, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 97
    .line 98
    new-array v4, v4, [Ljava/lang/Object;

    .line 99
    .line 100
    const-string v6, "MessageDispatcher run exception1: "

    .line 101
    .line 102
    aput-object v6, v4, v3

    .line 103
    .line 104
    aput-object v0, v4, v2

    .line 105
    .line 106
    invoke-virtual {v1, v5, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->terminate()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final sendMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 5

    .line 1
    const-string v0, "MessageDispatcher handleMessage exception: "

    .line 2
    .line 3
    const-string v1, "message"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sendTimeoutMonitor:Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->enter()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSupportEncrypt()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->isEncryptionEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 29
    .line 30
    invoke-interface {v1, p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->encrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 34
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    iget-object v2, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->transport:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_4
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception v1

    .line 47
    goto :goto_1

    .line 48
    :catchall_1
    move-exception v2

    .line 49
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 50
    .line 51
    .line 52
    throw v2

    .line 53
    :catchall_2
    move-exception v1

    .line 54
    monitor-exit p0

    .line 55
    throw v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->transport:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sendTimeoutMonitor:Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->exit()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 67
    .line 68
    invoke-interface {v1, v1, p1}, Lcom/baidu/carlife/sdk/internal/transport/TransportListener;->onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 87
    .line 88
    const-string v3, "CarLife_SDK"

    .line 89
    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/4 v1, 0x1

    .line 107
    new-array v1, v1, [Ljava/lang/Object;

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    aput-object v0, v1, v4

    .line 111
    .line 112
    invoke-virtual {v2, v3, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->terminate()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    .line 117
    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :goto_2
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 123
    .line 124
    .line 125
    throw v0
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final terminate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sendTimeoutMonitor:Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->release()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->transport:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->terminate()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sender:Landroid/os/HandlerThread;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 26
    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v2, "MessageDispatcher terminate"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v2, v1, v3

    .line 33
    .line 34
    const-string v2, "CarLife_SDK"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
