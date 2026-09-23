.class public final Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0004\u0018\u0000 .2\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u001d\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ-\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J%\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0019J\u0019\u0010\u001b\u001a\u00020\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008 \u0010!J\r\u0010\"\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\"\u0010\u0003R\u0018\u0010#\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010%\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00040\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00040\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010)R\u001a\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00040+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;",
        "",
        "<init>",
        "()V",
        "Landroid/hardware/usb/UsbRequest;",
        "request",
        "record",
        "(Landroid/hardware/usb/UsbRequest;)Landroid/hardware/usb/UsbRequest;",
        "Lr8/z;",
        "checkUsbState",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "connection",
        "Landroid/hardware/usb/UsbInterface;",
        "interfaze",
        "attach",
        "(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V",
        "",
        "buffer",
        "",
        "offset",
        "length",
        "",
        "queue",
        "(Landroid/hardware/usb/UsbRequest;[BII)Z",
        "Ljava/nio/ByteBuffer;",
        "(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z",
        "clientData",
        "acquireInRequest",
        "(Ljava/lang/Object;)Landroid/hardware/usb/UsbRequest;",
        "acquireOutRequest",
        "releaseRequest",
        "(Landroid/hardware/usb/UsbRequest;)V",
        "isInput",
        "(Landroid/hardware/usb/UsbRequest;)Z",
        "release",
        "usbConnection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "usbInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "Ljava/util/LinkedList;",
        "inRequestCache",
        "Ljava/util/LinkedList;",
        "outRequestCache",
        "",
        "recordingRequests",
        "Ljava/util/Set;",
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
.field public static final BULK_ENDPOINT_IN_ADDRESS:I = 0x0

.field public static final BULK_ENDPOINT_OUT_ADDRESS:I = 0x1

.field public static final Companion:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool$Companion;

.field private static final createRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final inRequestCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/hardware/usb/UsbRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final outRequestCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/hardware/usb/UsbRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final recordingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/usb/UsbRequest;",
            ">;"
        }
    .end annotation
.end field

.field private usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private usbInterface:Landroid/hardware/usb/UsbInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->Companion:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->createRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->inRequestCache:Ljava/util/LinkedList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->outRequestCache:Ljava/util/LinkedList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->recordingRequests:Ljava/util/Set;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic acquireInRequest$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;Ljava/lang/Object;ILjava/lang/Object;)Landroid/hardware/usb/UsbRequest;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->acquireInRequest(Ljava/lang/Object;)Landroid/hardware/usb/UsbRequest;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic acquireOutRequest$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;Ljava/lang/Object;ILjava/lang/Object;)Landroid/hardware/usb/UsbRequest;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->acquireOutRequest(Ljava/lang/Object;)Landroid/hardware/usb/UsbRequest;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final checkUsbState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "access before attached or after release"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method private final record(Landroid/hardware/usb/UsbRequest;)Landroid/hardware/usb/UsbRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->recordingRequests:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p1
.end method


# virtual methods
.method public final declared-synchronized acquireInRequest(Ljava/lang/Object;)Landroid/hardware/usb/UsbRequest;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->checkUsbState()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->inRequestCache:Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/hardware/usb/UsbRequest;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->record(Landroid/hardware/usb/UsbRequest;)Landroid/hardware/usb/UsbRequest;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    new-instance v0, Landroid/hardware/usb/UsbRequest;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 34
    .line 35
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->createRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 52
    .line 53
    .line 54
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 55
    .line 56
    const-string v1, "CarLife_SDK"

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v4, "UsbRequestPool create new in request "

    .line 62
    .line 63
    aput-object v4, v2, v3

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    aput-object v0, v2, v3

    .line 67
    .line 68
    invoke-virtual {p1, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->record(Landroid/hardware/usb/UsbRequest;)Landroid/hardware/usb/UsbRequest;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    .line 76
    return-object p1

    .line 77
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p1
.end method

.method public final declared-synchronized acquireOutRequest(Ljava/lang/Object;)Landroid/hardware/usb/UsbRequest;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->checkUsbState()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->outRequestCache:Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/hardware/usb/UsbRequest;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->record(Landroid/hardware/usb/UsbRequest;)Landroid/hardware/usb/UsbRequest;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    new-instance v0, Landroid/hardware/usb/UsbRequest;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 34
    .line 35
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->createRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 52
    .line 53
    .line 54
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 55
    .line 56
    const-string v1, "CarLife_SDK"

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v4, "UsbRequestPool create new out request "

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    aput-object v4, v2, v5

    .line 65
    .line 66
    aput-object v0, v2, v3

    .line 67
    .line 68
    invoke-virtual {p1, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->record(Landroid/hardware/usb/UsbRequest;)Landroid/hardware/usb/UsbRequest;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    .line 76
    return-object p1

    .line 77
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p1
.end method

.method public final attach(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "interfaze"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string p2, "can not attach to a pool which already attached"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final isInput(Landroid/hardware/usb/UsbRequest;)Z
    .locals 1

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->getEndpoint()Landroid/hardware/usb/UsbEndpoint;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v0, 0x80

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public final queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 5
    invoke-static {p1, p2}, La7/b;->C(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result p1

    return p1
.end method

.method public final queue(Landroid/hardware/usb/UsbRequest;[BII)Z
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p2, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p1, p2}, La7/b;->C(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p2, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized release()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 6
    .line 7
    sget-object v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->createRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->inRequestCache:Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->outRequestCache:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/2addr v2, v3

    .line 26
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->recordingRequests:Ljava/util/Set;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v2, v3

    .line 33
    sub-int/2addr v1, v2

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 39
    .line 40
    const-string v3, "CarLife_SDK"

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v4, 0x2

    .line 47
    new-array v4, v4, [Ljava/lang/Object;

    .line 48
    .line 49
    const-string v5, "UsbRequestPool requests leak "

    .line 50
    .line 51
    aput-object v5, v4, v2

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    aput-object v1, v4, v2

    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->inRequestCache:Ljava/util/LinkedList;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/hardware/usb/UsbRequest;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_3

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->inRequestCache:Ljava/util/LinkedList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->outRequestCache:Ljava/util/LinkedList;

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/hardware/usb/UsbRequest;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->outRequestCache:Ljava/util/LinkedList;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->recordingRequests:Ljava/util/Set;

    .line 116
    .line 117
    check-cast v0, Ljava/lang/Iterable;

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_2

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Landroid/hardware/usb/UsbRequest;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->recordingRequests:Ljava/util/Set;

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 146
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw v0
.end method

.method public final declared-synchronized releaseRequest(Landroid/hardware/usb/UsbRequest;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "request"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->recordingRequests:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->isInput(Landroid/hardware/usb/UsbRequest;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->inRequestCache:Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->outRequestCache:Ljava/util/LinkedList;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    :goto_0
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p1
.end method
