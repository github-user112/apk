.class public final Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006+"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "Landroid/hardware/usb/UsbDevice;",
        "usbDevice",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Landroid/hardware/usb/UsbDevice;)V",
        "",
        "openAccessory",
        "()Z",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "Lr8/z;",
        "write",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "read",
        "()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "terminate",
        "()V",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Landroid/hardware/usb/UsbDevice;",
        "Landroid/hardware/usb/UsbManager;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;",
        "usbRequestPool",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;",
        "Landroid/hardware/usb/UsbInterface;",
        "usbInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "usbConnection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;",
        "messageReader",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;",
        "messageSender",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;",
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

.field private final isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final messageReader:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;

.field private final messageSender:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;

.field private usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final usbDevice:Landroid/hardware/usb/UsbDevice;

.field private usbInterface:Landroid/hardware/usb/UsbInterface;

.field private final usbManager:Landroid/hardware/usb/UsbManager;

.field private final usbRequestPool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "usbDevice"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "usb"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 36
    .line 37
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbRequestPool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 43
    .line 44
    new-instance p2, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->messageReader:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;

    .line 50
    .line 51
    new-instance p2, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->messageSender:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;

    .line 57
    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final openAccessory()Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 4
    .line 5
    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 20
    .line 21
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 25
    .line 26
    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 34
    .line 35
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3, v4}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->openAccessory()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->terminate()V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :catch_0
    move-exception v2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbRequestPool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 56
    .line 57
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 61
    .line 62
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3, v4}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->attach(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :goto_0
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 70
    .line 71
    const/4 v4, 0x2

    .line 72
    new-array v4, v4, [Ljava/lang/Object;

    .line 73
    .line 74
    const-string v5, "openAccessory exception: "

    .line 75
    .line 76
    aput-object v5, v4, v1

    .line 77
    .line 78
    aput-object v2, v4, v0

    .line 79
    .line 80
    const-string v0, "CarLife_SDK"

    .line 81
    .line 82
    invoke-virtual {v3, v0, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->terminate()V

    .line 86
    .line 87
    .line 88
    return v1
.end method

.method public read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->messageReader:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->read()V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 15
    .line 16
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbRequestPool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->isInput(Landroid/hardware/usb/UsbRequest;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->messageReader:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->read(Landroid/hardware/usb/UsbRequest;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->messageSender:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->send(Landroid/hardware/usb/UsbRequest;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 49
    .line 50
    const-string v1, "UsbDeviceConnection requestWait return null"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 57
    .line 58
    const-string v1, "UsbAccessoryCommunicator read from terminated communicator"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public terminate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbRequestPool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->release()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->messageSender:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->complete()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 38
    .line 39
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 40
    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    const-string v2, "UsbAccessoryCommunicator released"

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    aput-object v2, v1, v3

    .line 47
    .line 48
    const-string v2, "CarLife_SDK"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->messageSender:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->send(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
