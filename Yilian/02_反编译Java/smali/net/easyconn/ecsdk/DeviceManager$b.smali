.class public Lnet/easyconn/ecsdk/DeviceManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/IUsbDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final synthetic m:Z


# instance fields
.field public a:Landroid/hardware/usb/UsbDeviceConnection;

.field public b:Landroid/hardware/usb/UsbInterface;

.field public c:Landroid/hardware/usb/UsbEndpoint;

.field public d:Landroid/hardware/usb/UsbEndpoint;

.field public final e:I

.field public final f:I

.field public g:[B

.field public h:[B

.field public i:I

.field public j:I

.field public k:I

.field public final synthetic l:Lnet/easyconn/ecsdk/DeviceManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/DeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lnet/easyconn/ecsdk/DeviceManager$b;->m:Z

    return-void
.end method

.method public constructor <init>(Lnet/easyconn/ecsdk/DeviceManager;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V
    .locals 1

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->l:Lnet/easyconn/ecsdk/DeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x20000

    iput p1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->e:I

    const/16 v0, 0x4000

    iput v0, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->f:I

    new-array v0, p1, [B

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->g:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->h:[B

    const/16 p1, 0x1f4

    iput p1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->i:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->j:I

    iput p1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->k:I

    iput-object p3, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->b:Landroid/hardware/usb/UsbInterface;

    iput-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->a:Landroid/hardware/usb/UsbDeviceConnection;

    return-void
.end method

.method private a()Z
    .locals 5

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->b:Landroid/hardware/usb/UsbInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v2, Lnet/easyconn/ecsdk/DeviceManager$b;->m:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->b:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v2

    iget-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->b:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    const/16 v4, 0xff

    if-ne v0, v4, :cond_3

    const/16 v0, 0x42

    if-ne v2, v0, :cond_3

    const/4 v0, 0x1

    if-ne v3, v0, :cond_3

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->a:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    const-string v0, "ecsdk"

    const-string v1, "UsbDevices close start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->a:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->b:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->a:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->a:Landroid/hardware/usb/UsbDeviceConnection;

    const-string v1, "UsbDevices close successful device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public open()I
    .locals 6

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->a:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->b:Landroid/hardware/usb/UsbInterface;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->b:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->b:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    iput-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->c:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->d:Landroid/hardware/usb/UsbEndpoint;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->c:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->d:Landroid/hardware/usb/UsbEndpoint;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lnet/easyconn/ecsdk/DeviceManager$b;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->d:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v1

    iput v1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->k:I

    :cond_4
    return v0

    :cond_5
    :goto_2
    const-string v0, "ecsdk"

    const-string v2, "cann\'t find in and out endpoint"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return v1
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 5

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->a:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->c:Landroid/hardware/usb/UsbEndpoint;

    iget-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->g:[B

    iget v4, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->i:I

    invoke-virtual {v0, v2, v3, p2, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2

    if-lez p2, :cond_1

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->g:[B

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p2

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public write(Ljava/nio/ByteBuffer;I)I
    .locals 10

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->a:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->k:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    and-int/2addr v1, p2

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/high16 v4, 0x20000

    const/4 v5, 0x0

    :goto_1
    if-lez p2, :cond_3

    :try_start_0
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->h:[B

    invoke-virtual {p1, v7, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->d:Landroid/hardware/usb/UsbEndpoint;

    iget-object v8, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->h:[B

    iget v9, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->i:I

    invoke-virtual {v0, v7, v8, v6, v9}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v7

    if-eq v7, v6, :cond_2

    goto :goto_2

    :cond_2
    sub-int/2addr p2, v6

    add-int/2addr v5, v7

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    if-nez p2, :cond_5

    if-eqz v1, :cond_5

    new-array p1, v2, [B

    aput-byte v3, p1, v3

    iget-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->d:Landroid/hardware/usb/UsbEndpoint;

    iget v1, p0, Lnet/easyconn/ecsdk/DeviceManager$b;->i:I

    invoke-virtual {v0, p2, p1, v3, v1}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_4

    goto :goto_4

    :cond_4
    if-nez p1, :cond_6

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    move v3, v5

    :cond_6
    return v3
.end method
