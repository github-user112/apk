.class public final Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\nJ\u0015\u0010\u0014\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "Landroid/hardware/usb/UsbDevice;",
        "usbDevice",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Landroid/hardware/usb/UsbDevice;)V",
        "Lr8/z;",
        "resetUsbDevice",
        "()V",
        "",
        "openAccessory",
        "()Z",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "write",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "read",
        "()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "terminate",
        "(Z)V",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Landroid/hardware/usb/UsbDevice;",
        "Landroid/hardware/usb/UsbManager;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "Landroid/hardware/usb/UsbInterface;",
        "usbInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "usbConnection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isTerminated",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "",
        "headerBuffer",
        "[B",
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

.field private final headerBuffer:[B

.field private final isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final usbDevice:Landroid/hardware/usb/UsbDevice;

.field private usbInterface:Landroid/hardware/usb/UsbInterface;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbDevice:Landroid/hardware/usb/UsbDevice;

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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    const/16 p1, 0x8

    .line 46
    .line 47
    new-array p1, p1, [B

    .line 48
    .line 49
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->headerBuffer:[B

    .line 50
    .line 51
    return-void
.end method

.method private final resetUsbDevice()V
    .locals 7

    .line 1
    const-string v0, "CarLife_SDK"

    .line 2
    .line 3
    const-string v1, "USB Device resetDevice result: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    :try_start_0
    const-class v4, Landroid/hardware/usb/UsbDeviceConnection;

    .line 8
    .line 9
    const-string v5, "resetDevice"

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 17
    .line 18
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 23
    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-array v4, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object v1, v4, v2

    .line 39
    .line 40
    invoke-virtual {v5, v0, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 49
    .line 50
    const/4 v5, 0x2

    .line 51
    new-array v5, v5, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string v6, "USB Device resetDevice error"

    .line 54
    .line 55
    aput-object v6, v5, v2

    .line 56
    .line 57
    aput-object v1, v5, v3

    .line 58
    .line 59
    invoke-virtual {v4, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final openAccessory()Z
    .locals 7

    .line 1
    const-string v0, "CarLife_SDK"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 6
    .line 7
    new-array v4, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v5, "UsbAccessoryCommunicator openAccessory"

    .line 10
    .line 11
    aput-object v5, v4, v2

    .line 12
    .line 13
    invoke-virtual {v3, v0, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iput-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iput-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 33
    .line 34
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 38
    .line 39
    invoke-virtual {v4, v5, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 40
    .line 41
    .line 42
    new-instance v4, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 45
    .line 46
    iget-object v6, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 47
    .line 48
    invoke-static {v6}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v5, v6}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->openAccessory()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->terminate(Z)V

    .line 61
    .line 62
    .line 63
    new-array v4, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string v5, "UsbAccessoryCommunicator openAccessory switch to aoa"

    .line 66
    .line 67
    aput-object v5, v4, v2

    .line 68
    .line 69
    invoke-virtual {v3, v0, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :catch_0
    move-exception v3

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    return v1

    .line 76
    :goto_0
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 77
    .line 78
    const/4 v5, 0x2

    .line 79
    new-array v5, v5, [Ljava/lang/Object;

    .line 80
    .line 81
    const-string v6, "openAccessory exception: "

    .line 82
    .line 83
    aput-object v6, v5, v2

    .line 84
    .line 85
    aput-object v3, v5, v1

    .line 86
    .line 87
    invoke-virtual {v4, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->terminate()V

    .line 91
    .line 92
    .line 93
    return v2
.end method

.method public read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 6
    .line 7
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    invoke-virtual {v1, v6}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :cond_0
    :goto_0
    const/4 v7, 0x1

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->headerBuffer:[B

    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 32
    .line 33
    new-array v4, v7, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v5, "bulkTransfer read zero header length"

    .line 36
    .line 37
    aput-object v5, v4, v6

    .line 38
    .line 39
    const-string v5, "CarLife_SDK"

    .line 40
    .line 41
    invoke-virtual {v3, v5, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-ltz v2, :cond_5

    .line 46
    .line 47
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->headerBuffer:[B

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-static {v2, v6, v7, v3}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt$default([BIILjava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->headerBuffer:[B

    .line 55
    .line 56
    const/4 v3, 0x4

    .line 57
    invoke-static {v2, v3}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt([BI)I

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-lt v9, v7, :cond_4

    .line 62
    .line 63
    const/4 v2, 0x7

    .line 64
    if-gt v9, v2, :cond_4

    .line 65
    .line 66
    if-ltz v11, :cond_4

    .line 67
    .line 68
    const/high16 v2, 0x4000000

    .line 69
    .line 70
    if-gt v11, v2, :cond_4

    .line 71
    .line 72
    sget-object v8, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 73
    .line 74
    const/4 v12, 0x2

    .line 75
    const/4 v13, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    invoke-static/range {v8 .. v13}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    move v4, v11

    .line 82
    :cond_2
    :goto_1
    if-lez v4, :cond_3

    .line 83
    .line 84
    sub-int v3, v11, v4

    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/4 v5, 0x0

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-lez v2, :cond_2

    .line 96
    .line 97
    sub-int/2addr v4, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    return-object v6

    .line 100
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 101
    .line 102
    const-string v1, "invalid message channel "

    .line 103
    .line 104
    const-string v2, " or message size "

    .line 105
    .line 106
    invoke-static {v9, v11, v1, v2}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 115
    .line 116
    const-string v1, "UsbAccessoryCommunicatorSync bulkTransfer header read failed"

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 123
    .line 124
    const-string v1, "UsbAccessoryCommunicator read from terminated communicator"

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public terminate()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->terminate(Z)V

    return-void
.end method

.method public final terminate(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->isTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "UsbAccessoryCommunicator terminate"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CarLife_SDK"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->resetUsbDevice()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    :cond_2
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    :cond_3
    return-void
.end method

.method public write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 11

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v3, "UsbAccessoryCommunicator write "

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    const-string v3, "CarLife_SDK"

    .line 17
    .line 18
    invoke-virtual {v0, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 22
    .line 23
    if-eqz v5, :cond_6

    .line 24
    .line 25
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 26
    .line 27
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v0, 0x0

    .line 35
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {p1, v4, v1, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->header$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;ZILjava/lang/Object;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const/16 v9, 0x8

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 53
    .line 54
    new-array v7, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v8, "bulkTransfer write zero header length"

    .line 57
    .line 58
    aput-object v8, v7, v4

    .line 59
    .line 60
    invoke-virtual {v2, v3, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    if-ltz v0, :cond_5

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 86
    .line 87
    new-array v7, v1, [Ljava/lang/Object;

    .line 88
    .line 89
    const-string v8, "bulkTransfer write zero body length"

    .line 90
    .line 91
    aput-object v8, v7, v4

    .line 92
    .line 93
    invoke-virtual {v2, v3, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    if-ltz v0, :cond_4

    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 101
    .line 102
    const-string v0, "UsbAccessoryCommunicatorSync bulkTransfer body failed"

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 109
    .line 110
    const-string v0, "UsbAccessoryCommunicator bulkTransfer header write failed"

    .line 111
    .line 112
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 117
    .line 118
    const-string v0, "UsbAccessoryCommunicatorSync is terminated"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method
