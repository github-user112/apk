.class public final Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0011R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "Landroid/bluetooth/BluetoothSocket;",
        "socket",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;",
        "callbacks",
        "<init>",
        "(Landroid/bluetooth/BluetoothSocket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;)V",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "Lr8/z;",
        "write",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "read",
        "()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "terminate",
        "()V",
        "Landroid/bluetooth/BluetoothSocket;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isTerminated",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/io/InputStream;",
        "input",
        "Ljava/io/InputStream;",
        "Ljava/io/OutputStream;",
        "output",
        "Ljava/io/OutputStream;",
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
.field private final callbacks:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;

.field private final input:Ljava/io/InputStream;

.field private isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final output:Ljava/io/OutputStream;

.field private final socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;)V
    .locals 1

    const-string v0, "socket"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 2
    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->callbacks:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;

    .line 3
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const-string v0, "socket.inputStream"

    invoke-static {p2, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->input:Ljava/io/InputStream;

    .line 5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string p2, "socket.outputStream"

    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->output:Ljava/io/OutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothSocket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;ILg9/g;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;-><init>(Landroid/bluetooth/BluetoothSocket;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;)V

    return-void
.end method


# virtual methods
.method public read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    const/4 v5, 0x6

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->input:Ljava/io/InputStream;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {v0, v2, v4, v3}, Lcom/baidu/carlife/sdk/util/IOUtilsKt;->blockRead(Ljava/io/InputStream;[BII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {v1, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->resizeBuffer(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->input:Ljava/io/InputStream;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-static {v0, v2, v3, v5}, Lcom/baidu/carlife/sdk/util/IOUtilsKt;->blockRead(Ljava/io/InputStream;[BII)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 59
    .line 60
    const-string v2, "CarLife_SDK"

    .line 61
    .line 62
    const/4 v3, 0x2

    .line 63
    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string v5, "BluetoothCommunicator onReceiveMessage "

    .line 66
    .line 67
    aput-object v5, v3, v4

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    aput-object v1, v3, v4

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->terminate()V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 85
    .line 86
    const-string v1, "socket has been closed"

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public terminate()V
    .locals 8

    .line 1
    const-string v0, "CarLife_SDK"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v4

    .line 21
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 22
    .line 23
    new-array v6, v3, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v7, "BluetoothCommunicator terminate exception: "

    .line 26
    .line 27
    aput-object v7, v6, v1

    .line 28
    .line 29
    aput-object v4, v6, v2

    .line 30
    .line 31
    invoke-virtual {v5, v0, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v4, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->callbacks:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-interface {v4, v2}, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator$Callbacks;->onTerminated(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 42
    .line 43
    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string v5, "BluetoothCommunicator terminated "

    .line 46
    .line 47
    aput-object v5, v3, v1

    .line 48
    .line 49
    aput-object p0, v3, v2

    .line 50
    .line 51
    invoke-virtual {v4, v0, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 5

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->output:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 29
    .line 30
    const-string v1, "CarLife_SDK"

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v4, "BluetoothCommunicator onSendMessage "

    .line 36
    .line 37
    aput-object v4, v2, v3

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    aput-object p1, v2, v3

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;->terminate()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 52
    .line 53
    const-string v0, "socket has been closed"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method
