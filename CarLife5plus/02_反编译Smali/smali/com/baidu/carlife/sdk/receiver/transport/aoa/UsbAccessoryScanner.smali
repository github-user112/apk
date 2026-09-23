.class public final Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 12\u00020\u00012\u00020\u0002:\u00011B#\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u000fJ\r\u0010\u0013\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\r\u0010\u0014\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0011J\r\u0010\u0015\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0011J\u001f\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001cR \u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000b0!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u001b\u0010+\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010(\u001a\u0004\u0008.\u0010/\u00a8\u00062"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;",
        "Landroid/content/BroadcastReceiver;",
        "Ljava/lang/Runnable;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "Lkotlin/Function1;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "Lr8/z;",
        "callback",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lf9/k;)V",
        "Landroid/hardware/usb/UsbDevice;",
        "device",
        "",
        "isUsbStorageDevice",
        "(Landroid/hardware/usb/UsbDevice;)Z",
        "requestPendingPermission",
        "()V",
        "openAccessory",
        "scan",
        "ready",
        "stop",
        "run",
        "Landroid/content/Context;",
        "Landroid/content/Intent;",
        "intent",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Lf9/k;",
        "Landroid/hardware/usb/UsbManager;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "pendingPermissionDevices",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isStopped",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "useAsyncMode$delegate",
        "Lr8/h;",
        "getUseAsyncMode",
        "()Z",
        "useAsyncMode",
        "Landroid/content/IntentFilter;",
        "filter$delegate",
        "getFilter",
        "()Landroid/content/IntentFilter;",
        "filter",
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
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.baidu.carlifevehicle.connect.USB_PERMISSION"

.field public static final Companion:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner$Companion;

.field public static final STORAGE_INTERFACE_CLASS:I = 0x8

.field public static final STORAGE_INTERFACE_CONUT:I = 0x1

.field public static final STORAGE_INTERFACE_ID:I = 0x0

.field public static final STORAGE_INTERFACE_PROTOCOL:I = 0x50

.field public static final STORAGE_INTERFACE_SUBCLASS:I = 0x6

.field public static final VID_IPHONE:I = 0x5ac


# instance fields
.field private final callback:Lf9/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf9/k;"
        }
    .end annotation
.end field

.field private final context:Lcom/baidu/carlife/sdk/CarLifeContext;

.field private final filter$delegate:Lr8/h;

.field private isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pendingPermissionDevices:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final usbManager:Landroid/hardware/usb/UsbManager;

.field private final useAsyncMode$delegate:Lr8/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->Companion:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lf9/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/carlife/sdk/CarLifeContext;",
            "Lf9/k;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->callback:Lf9/k;

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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->pendingPermissionDevices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 43
    .line 44
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner$useAsyncMode$2;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner$useAsyncMode$2;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->useAsyncMode$delegate:Lr8/h;

    .line 62
    .line 63
    sget-object p1, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner$filter$2;->INSTANCE:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner$filter$2;

    .line 64
    .line 65
    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->filter$delegate:Lr8/h;

    .line 70
    .line 71
    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;)Lcom/baidu/carlife/sdk/CarLifeContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->filter$delegate:Lr8/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/IntentFilter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getUseAsyncMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->useAsyncMode$delegate:Lr8/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final isUsbStorageDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "CarLife_SDK"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v3, "this device is null"

    .line 12
    .line 13
    aput-object v3, v0, v2

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v0, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v3, "device.getInterface(STORAGE_INTERFACE_ID)"

    .line 30
    .line 31
    invoke-static {p1, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x8

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ne v3, v4, :cond_1

    .line 41
    .line 42
    const/4 v3, 0x6

    .line 43
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v3, v4, :cond_1

    .line 48
    .line 49
    const/16 v3, 0x50

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne v3, p1, :cond_1

    .line 56
    .line 57
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 58
    .line 59
    new-array v3, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v4, "this device is mass storage 2"

    .line 62
    .line 63
    aput-object v4, v3, v2

    .line 64
    .line 65
    invoke-virtual {p1, v1, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :cond_1
    return v2
.end method

.method private final openAccessory(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "UsbAccessoryScanner start openAccessory isStopped: "

    .line 10
    .line 11
    aput-object v4, v2, v3

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    aput-object v1, v2, v4

    .line 15
    .line 16
    const-string v1, "CarLife_SDK"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->getUseAsyncMode()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    new-instance v2, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 38
    .line 39
    invoke-direct {v2, v5, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Landroid/hardware/usb/UsbDevice;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryCommunicator;->openAccessory()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    new-array p1, v4, [Ljava/lang/Object;

    .line 49
    .line 50
    const-string v5, "UsbAccessoryScanner1 openAccessory success"

    .line 51
    .line 52
    aput-object v5, p1, v3

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->callback:Lf9/k;

    .line 58
    .line 59
    invoke-interface {p1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return v4

    .line 63
    :cond_0
    new-instance v2, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;

    .line 64
    .line 65
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 66
    .line 67
    invoke-direct {v2, v5, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Landroid/hardware/usb/UsbDevice;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbAccessoryCommunicatorAsync;->openAccessory()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    new-array p1, v4, [Ljava/lang/Object;

    .line 77
    .line 78
    const-string v5, "UsbAccessoryScanner2 openAccessory success"

    .line 79
    .line 80
    aput-object v5, p1, v3

    .line 81
    .line 82
    invoke-virtual {v0, v1, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->callback:Lf9/k;

    .line 86
    .line 87
    invoke-interface {p1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    return v4

    .line 91
    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 92
    .line 93
    const-string v2, "UsbAccessoryScanner openAccessory failed"

    .line 94
    .line 95
    aput-object v2, p1, v3

    .line 96
    .line 97
    invoke-virtual {v0, v1, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return v3
.end method

.method private final requestPendingPermission()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->pendingPermissionDevices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v3, "com.baidu.carlifevehicle.connect.USB_PERMISSION"

    .line 20
    .line 21
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "intent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "UsbAccessoryScanner action with "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ", "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x1

    .line 42
    new-array v3, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object v1, v3, v4

    .line 46
    .line 47
    const-string v1, "CarLife_SDK"

    .line 48
    .line 49
    invoke-virtual {v0, v1, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_b

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const v6, -0x7e02a835

    .line 73
    .line 74
    .line 75
    const-string v7, "device"

    .line 76
    .line 77
    if-eq v5, v6, :cond_6

    .line 78
    .line 79
    const p1, -0x5fdc9a67

    .line 80
    .line 81
    .line 82
    if-eq v5, p1, :cond_4

    .line 83
    .line 84
    const p1, -0x11f6ffa0    # -1.0599975E28f

    .line 85
    .line 86
    .line 87
    if-eq v5, p1, :cond_1

    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_1
    const-string p1, "com.baidu.carlifevehicle.connect.USB_PERMISSION"

    .line 92
    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_2
    const-string p1, "permission"

    .line 102
    .line 103
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 114
    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->openAccessory(Landroid/hardware/usb/UsbDevice;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->pendingPermissionDevices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->requestPendingPermission()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    const-string p1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 134
    .line 135
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_5

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_5
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    .line 145
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_6
    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 150
    .line 151
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-nez v3, :cond_7

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-string v3, "CarLifePrefs"

    .line 163
    .line 164
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-string v3, "USB_DEVICE_IGNORE"

    .line 169
    .line 170
    const/4 v5, 0x0

    .line 171
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-nez p1, :cond_8

    .line 176
    .line 177
    sget-object p1, Ls8/y;->a:Ls8/y;

    .line 178
    .line 179
    :cond_8
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    check-cast p2, Landroid/hardware/usb/UsbDevice;

    .line 184
    .line 185
    if-eqz p2, :cond_b

    .line 186
    .line 187
    invoke-direct {p0, p2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isUsbStorageDevice(Landroid/hardware/usb/UsbDevice;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_9

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_9
    const/4 v3, 0x2

    .line 195
    new-array v3, v3, [Ljava/lang/Object;

    .line 196
    .line 197
    const-string v5, "UsbAccessoryScanner ACTION_USB_DEVICE_ATTACHED with "

    .line 198
    .line 199
    aput-object v5, v3, v4

    .line 200
    .line 201
    aput-object p2, v3, v2

    .line 202
    .line 203
    invoke-virtual {v0, v1, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 207
    .line 208
    invoke-virtual {v0, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    invoke-direct {p0, p2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->openAccessory(Landroid/hardware/usb/UsbDevice;)Z

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const/16 v1, 0x2d

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_b

    .line 251
    .line 252
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->pendingPermissionDevices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->requestPendingPermission()V

    .line 258
    .line 259
    .line 260
    :cond_b
    :goto_0
    return-void
.end method

.method public final ready()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->pendingPermissionDevices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "CarLifePrefs"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "CONNECT_USB_DEVICE_IGNORE"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 55
    .line 56
    invoke-direct {p0, v3}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isUsbStorageDevice(Landroid/hardware/usb/UsbDevice;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 70
    .line 71
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const/4 v7, 0x4

    .line 76
    new-array v7, v7, [Ljava/lang/Object;

    .line 77
    .line 78
    const-string v8, "UsbAccessoryScanner deal with "

    .line 79
    .line 80
    aput-object v8, v7, v2

    .line 81
    .line 82
    const/4 v8, 0x1

    .line 83
    aput-object v3, v7, v8

    .line 84
    .line 85
    const-string v8, " has permission "

    .line 86
    .line 87
    const/4 v9, 0x2

    .line 88
    aput-object v8, v7, v9

    .line 89
    .line 90
    const/4 v8, 0x3

    .line 91
    aput-object v6, v7, v8

    .line 92
    .line 93
    const-string v6, "CarLife_SDK"

    .line 94
    .line 95
    invoke-virtual {v5, v6, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    const-string v4, "device"

    .line 101
    .line 102
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v3}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->openAccessory(Landroid/hardware/usb/UsbDevice;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_1

    .line 110
    .line 111
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->pendingPermissionDevices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    const/16 v5, 0x5ac

    .line 122
    .line 123
    if-eq v4, v5, :cond_1

    .line 124
    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const/16 v5, 0x2d

    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-nez v4, :cond_1

    .line 158
    .line 159
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->pendingPermissionDevices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 160
    .line 161
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->requestPendingPermission()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final scan()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->getFilter()Landroid/content/IntentFilter;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, p0, v1}, Lu3/f;->g(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->io()Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->main()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->pendingPermissionDevices:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
