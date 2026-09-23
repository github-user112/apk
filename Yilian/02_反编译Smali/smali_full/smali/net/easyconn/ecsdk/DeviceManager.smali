.class public Lnet/easyconn/ecsdk/DeviceManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ecsdk/DeviceManager$d;,
        Lnet/easyconn/ecsdk/DeviceManager$b;,
        Lnet/easyconn/ecsdk/DeviceManager$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/hardware/usb/UsbManager;

.field public c:Landroid/hardware/usb/UsbDeviceConnection;

.field public d:Landroid/content/Context;

.field public e:Lnet/easyconn/ecsdk/IECCallback;

.field public f:Lnet/easyconn/ecsdk/DeviceManager$d;

.field public g:Z

.field public h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:I

.field public p:Lnet/easyconn/ecsdk/AOAHIDDevice;

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Lnet/easyconn/ecsdk/DeviceManager$c;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/easyconn/ecsdk/IECCallback;Lnet/easyconn/ecsdk/ECTypes$ECOptions;Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->g:Z

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_MAX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->i:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->j:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->k:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->l:Z

    const-string v1, ""

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->m:Ljava/lang/String;

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->n:Z

    iput v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->o:I

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->p:Lnet/easyconn/ecsdk/AOAHIDDevice;

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->q:Z

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->r:Z

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->s:Ljava/lang/String;

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->t:Ljava/lang/String;

    const-string v2, " "

    iput-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->u:Ljava/lang/String;

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->v:Ljava/lang/String;

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->w:Ljava/lang/String;

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->x:Ljava/lang/String;

    new-instance v3, Lnet/easyconn/ecsdk/DeviceManager$c;

    invoke-direct {v3, p0}, Lnet/easyconn/ecsdk/DeviceManager$c;-><init>(Lnet/easyconn/ecsdk/DeviceManager;)V

    iput-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->y:Lnet/easyconn/ecsdk/DeviceManager$c;

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->z:Ljava/lang/String;

    const-string v1, "usb"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->d:Landroid/content/Context;

    iput-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->e:Lnet/easyconn/ecsdk/IECCallback;

    iget-object p1, p3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->config:Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    if-eqz p1, :cond_3

    iget-object p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaManufacturer:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->s:Ljava/lang/String;

    iget-object p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaModel:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->t:Ljava/lang/String;

    iget-object p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaVersion:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->v:Ljava/lang/String;

    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaUri:Ljava/lang/String;

    const-string p2, "?"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "&"

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->config:Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    iget-object v1, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaUri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "modelid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->config:Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    iget p2, p2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->channel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->w:Ljava/lang/String;

    const-string p1, "AOA_MANUFACTURER="

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", AOA_MODEL="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", AOA_VERSION="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", AOA_URI="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ecsdk"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->x:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "123456789"

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->x:Ljava/lang/String;

    :cond_2
    iput-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->u:Ljava/lang/String;

    :cond_3
    iget-boolean p1, p3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useBindTransport:Z

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->n:Z

    iget-object p1, p3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->usbFilterPath:Ljava/lang/String;

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->m:Ljava/lang/String;

    iget-boolean p2, p3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableAndroidUsbForADB:Z

    iput-boolean p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->i:Z

    iget-boolean p2, p3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableAndroidUsbForAOA:Z

    iput-boolean p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->j:Z

    iget-boolean p2, p3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableIOSUsb:Z

    iput-boolean p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->k:Z

    iget-boolean p2, p3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableUsbBroadcastReceiver:Z

    iput-boolean p2, p0, Lnet/easyconn/ecsdk/DeviceManager;->l:Z

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->m:Ljava/lang/String;

    :cond_4
    iget-boolean p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->l:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lnet/easyconn/ecsdk/DeviceManager;->b()V

    :cond_5
    iget p1, p4, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportConnect:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->r:Z

    return-void
.end method

.method private a(Landroid/hardware/usb/UsbDevice;)I
    .locals 12

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18d1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const/16 v3, 0x2d00

    if-eq v3, v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const/16 v3, 0x2d01

    if-ne v3, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    const/16 v3, 0x5ac

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const/16 v3, 0x12af

    if-ge v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const/16 v3, 0x1290

    if-le v0, v3, :cond_2

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    move-object v6, v4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v7

    if-ge v5, v7, :cond_6

    invoke-virtual {p1, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v8

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v9

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v10

    const/16 v11, 0xff

    if-eqz v0, :cond_3

    if-ne v8, v11, :cond_3

    if-ne v9, v11, :cond_3

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    if-ne v8, v11, :cond_5

    const/16 v8, 0x42

    if-ne v9, v8, :cond_5

    if-ne v10, v1, :cond_5

    :goto_3
    move-object v6, v7

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    if-nez v6, :cond_7

    return v2

    :cond_7
    move-object p1, v4

    :goto_5
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    if-ge v2, v0, :cond_9

    invoke-virtual {v6, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    const/16 v3, 0x80

    if-ne v1, v3, :cond_8

    move-object v4, v0

    goto :goto_6

    :cond_8
    move-object p1, v0

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_b

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p1

    return p1

    :cond_b
    :goto_7
    const-string p1, "ecsdk"

    const-string v0, "cann\'t find in and out endpoint"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method private a()V
    .locals 2

    const-string v0, "ecsdk"

    const-string v1, "closeDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->c(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const-string v1, "ecsdk"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    const-string p1, "the attached usb device is Mass Storage Device"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->g:Z

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->d(Landroid/hardware/usb/UsbDevice;)Z

    goto :goto_0

    :cond_2
    const-string v0, "UsbBroadcastReceiver requestPermission"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->d:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "net.easyconn.ecsdk.USB_PERMISSION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lnet/easyconn/ecsdk/DeviceManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 13

    const-string v0, "ecsdk"

    const-string v1, "DeviceManager:switchAoADevice start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v10, v1, [B

    const/16 v3, 0xc0

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x3e8

    move-object v2, p1

    move-object v7, v10

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    const-string p1, "switchAoADevice: failed to get version"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v2, 0x1

    aget-byte v4, v10, v2

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, v10, v3

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v4, v4

    if-lt v4, v2, :cond_2

    iget-object v4, p0, Lnet/easyconn/ecsdk/DeviceManager;->s:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4}, Lnet/easyconn/ecsdk/DeviceManager;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    iget-object v4, p0, Lnet/easyconn/ecsdk/DeviceManager;->t:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v4}, Lnet/easyconn/ecsdk/DeviceManager;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    iget-object v4, p0, Lnet/easyconn/ecsdk/DeviceManager;->u:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v4}, Lnet/easyconn/ecsdk/DeviceManager;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->v:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-direct {p0, p1, v4, v1}, Lnet/easyconn/ecsdk/DeviceManager;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->w:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {p0, p1, v4, v1}, Lnet/easyconn/ecsdk/DeviceManager;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->x:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-direct {p0, p1, v4, v1}, Lnet/easyconn/ecsdk/DeviceManager;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    const/16 v6, 0x40

    const/16 v7, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e8

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-gez p1, :cond_1

    const-string p1, "switchAoADevice: failed to controlTransfer, request=53"

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAoADevice: unsupported version="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z
    .locals 8

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    const/16 v1, 0x40

    const/16 v2, 0x34

    const/4 v3, 0x0

    const/16 v7, 0x3e8

    move-object v0, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendAoAString: controlTransfer failed, index="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ctrlStr"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ecsdk"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic a(Lnet/easyconn/ecsdk/DeviceManager;Landroid/hardware/usb/UsbDevice;)Z
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->d(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "discoverDevice: deviceList.size="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecsdk"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0, v1}, Lnet/easyconn/ecsdk/DeviceManager;->c(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lnet/easyconn/ecsdk/DeviceManager;->d(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "discoverDevice: failed to openDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "discoverDevice requestPermission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    iget-object v4, p0, Lnet/easyconn/ecsdk/DeviceManager;->d:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "net.easyconn.ecsdk.USB_PERMISSION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lnet/easyconn/ecsdk/DeviceManager;->c()V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleUsbDeviceDetached]UsbDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecsdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->c(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->y:Lnet/easyconn/ecsdk/DeviceManager$c;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/easyconn/ecsdk/DeviceManager$c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "[handleUsbDeviceDetached]DeviceName="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->g:Z

    iget-boolean p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->n:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {p1, v0}, Lnet/easyconn/ecsdk/ECSDK;->unbindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    :cond_1
    invoke-direct {p0}, Lnet/easyconn/ecsdk/DeviceManager;->a()V

    goto :goto_0

    :cond_2
    const-string p1, "[handleUsbDeviceDetached]detached device is not connected device"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic b(Lnet/easyconn/ecsdk/DeviceManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->f:Lnet/easyconn/ecsdk/DeviceManager$d;

    if-nez v0, :cond_0

    new-instance v0, Lnet/easyconn/ecsdk/DeviceManager$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/easyconn/ecsdk/DeviceManager$d;-><init>(Lnet/easyconn/ecsdk/DeviceManager;Lnet/easyconn/ecsdk/DeviceManager$a;)V

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->f:Lnet/easyconn/ecsdk/DeviceManager$d;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "net.easyconn.ecsdk.USB_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->f:Lnet/easyconn/ecsdk/DeviceManager$d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "ecsdk"

    const-string v1, "registerUsbReceiver: already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleUsbDevicePermission]UsbDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecsdk"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "permission"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lnet/easyconn/ecsdk/DeviceManager;->d(Landroid/hardware/usb/UsbDevice;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permission denied for device "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lnet/easyconn/ecsdk/DeviceManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Landroid/hardware/usb/UsbDevice;)Z
    .locals 7

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->m:Ljava/lang/String;

    const-string v1, "ecsdk"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->m:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p1, "the discovered usb device is in the blacklist of "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    const-string p1, "the usb device is Mass Storage Device"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    const/16 v3, 0x5ac

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const/16 v3, 0x12af

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    const/16 v0, 0x1290

    if-le p1, v0, :cond_3

    const-string p1, "the usb device is iOS device"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->k:Z

    return p1

    :cond_3
    iget-boolean p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->i:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->j:Z

    if-eqz p1, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private d(Landroid/hardware/usb/UsbDevice;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "ecsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openDevice: device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "ecsdk"

    const-string v0, "openDevice: already opened"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_0
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p1, "ecsdk"

    const-string v0, "openDevice: failed to openDevice for adb device"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->a(Landroid/hardware/usb/UsbDevice;)I

    move-result v3

    iput v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->o:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    const/16 v4, 0x5ac

    if-ne v3, v4, :cond_6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/16 v4, 0x12af

    if-ge v3, v4, :cond_6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/16 v4, 0x1290

    if-le v3, v4, :cond_6

    iget-boolean v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->k:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->r:Z

    if-eqz v3, :cond_3

    const-string v3, "ecsdk"

    const-string v4, "begin to hasValeria"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->b(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lnet/easyconn/ecsdk/DeviceManager;->native_setQTAvailable(Z)V

    const-string v3, "ecsdk"

    const-string v4, "QTAvailable is false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->y:Lnet/easyconn/ecsdk/DeviceManager$c;

    invoke-virtual {v3}, Lnet/easyconn/ecsdk/DeviceManager$c;->b()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v0}, Lnet/easyconn/ecsdk/DeviceManager;->b(Landroid/hardware/usb/UsbDeviceConnection;)Z

    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->y:Lnet/easyconn/ecsdk/DeviceManager$c;

    invoke-virtual {v2, v1}, Lnet/easyconn/ecsdk/DeviceManager$c;->a(Z)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->z:Ljava/lang/String;

    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->y:Lnet/easyconn/ecsdk/DeviceManager$c;

    invoke-virtual {v2, p1}, Lnet/easyconn/ecsdk/DeviceManager$c;->a(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    monitor-exit p0

    return v1

    :cond_2
    const-string v3, "ecsdk"

    const-string v4, "QTAvailable is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lnet/easyconn/ecsdk/DeviceManager;->native_setQTAvailable(Z)V

    :cond_3
    iget-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->y:Lnet/easyconn/ecsdk/DeviceManager$c;

    invoke-virtual {v3, v2}, Lnet/easyconn/ecsdk/DeviceManager$c;->a(Z)V

    const-string v3, "ecsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin to native_addIosDevice|mSwitchIphoneDevice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lnet/easyconn/ecsdk/DeviceManager;->q:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_MUX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lnet/easyconn/ecsdk/DeviceManager;->q:Z

    invoke-direct {p0, v3, v4, v5}, Lnet/easyconn/ecsdk/DeviceManager;->native_addIosDevice(ILjava/lang/String;Z)I

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "ecsdk"

    const-string v1, "openDevice: failed to native_addIosDevice for ios device"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->q:Z

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    monitor-exit p0

    return v2

    :cond_4
    const-string v3, "ecsdk"

    const-string v4, "openDevice: ios device"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->q:Z

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->a:Ljava/lang/String;

    monitor-exit p0

    return v1

    :cond_5
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    monitor-exit p0

    return v2

    :cond_6
    iget-boolean v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->j:Z

    const/16 v4, 0xff

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    const/16 v5, 0x18d1

    if-ne v3, v5, :cond_11

    const/16 v3, 0x2d00

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    if-eq v3, v5, :cond_7

    const/16 v3, 0x2d01

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    if-ne v3, v5, :cond_11

    :cond_7
    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDORID_USB_AOA:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iget-boolean v5, p0, Lnet/easyconn/ecsdk/DeviceManager;->n:Z

    if-eqz v5, :cond_c

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    if-ge v3, v5, :cond_b

    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v7

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v8

    if-ne v6, v4, :cond_a

    if-ne v7, v4, :cond_a

    if-nez v8, :cond_a

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v3

    iget-object v4, p0, Lnet/easyconn/ecsdk/DeviceManager;->h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    new-instance v6, Lnet/easyconn/ecsdk/DeviceManager$b;

    invoke-direct {v6, p0, v0, v5}, Lnet/easyconn/ecsdk/DeviceManager$b;-><init>(Lnet/easyconn/ecsdk/DeviceManager;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V

    invoke-virtual {v3, v4, v6}, Lnet/easyconn/ecsdk/ECSDK;->bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)I

    move-result v3

    if-eqz v3, :cond_8

    const-string p1, "ecsdk"

    const-string v1, "openDevice: failed to bindTransportDevice for AOA device"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    monitor-exit p0

    return v2

    :cond_8
    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->a:Ljava/lang/String;

    new-instance p1, Lnet/easyconn/ecsdk/AOAHIDDevice;

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p1, v0, v5}, Lnet/easyconn/ecsdk/AOAHIDDevice;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->p:Lnet/easyconn/ecsdk/AOAHIDDevice;

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/DeviceManager;->e()Z

    move-result p1

    if-eqz p1, :cond_9

    monitor-exit p0

    return v1

    :cond_9
    const-string p1, "ecsdk"

    const-string v0, "openDevice: failed to registHid"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    monitor-exit p0

    return v2

    :cond_c
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v3}, Lnet/easyconn/ecsdk/DeviceManager;->native_addAndroidDevice(ILjava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I

    move-result v3

    if-eqz v3, :cond_d

    const-string p1, "ecsdk"

    const-string v1, "openDevice: failed to native_addAndroidDevice for aoa device"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    monitor-exit p0

    return v2

    :cond_d
    const-string v3, "ecsdk"

    const-string v5, "openDevice: aoa device"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->a:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    if-ge v2, v0, :cond_10

    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v5

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v6

    if-ne v3, v4, :cond_f

    if-ne v5, v4, :cond_f

    if-nez v6, :cond_f

    new-instance v3, Lnet/easyconn/ecsdk/AOAHIDDevice;

    iget-object v5, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {v3, v5, v0}, Lnet/easyconn/ecsdk/AOAHIDDevice;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V

    iput-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->p:Lnet/easyconn/ecsdk/AOAHIDDevice;

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/DeviceManager;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    monitor-exit p0

    return v1

    :cond_e
    const-string v0, "ecsdk"

    const-string v3, "openDevice: failed to registHid"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_10
    monitor-exit p0

    return v1

    :cond_11
    iget-boolean v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->i:Z

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    if-ge v3, v5, :cond_15

    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v7

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v8

    if-ne v6, v4, :cond_14

    const/16 v6, 0x42

    if-ne v7, v6, :cond_14

    if-ne v8, v1, :cond_14

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_USB_ADB:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iget-boolean v4, p0, Lnet/easyconn/ecsdk/DeviceManager;->n:Z

    if-eqz v4, :cond_12

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v2

    iget-object v3, p0, Lnet/easyconn/ecsdk/DeviceManager;->h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    new-instance v4, Lnet/easyconn/ecsdk/DeviceManager$b;

    invoke-direct {v4, p0, v0, v5}, Lnet/easyconn/ecsdk/DeviceManager$b;-><init>(Lnet/easyconn/ecsdk/DeviceManager;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V

    invoke-virtual {v2, v3, v4}, Lnet/easyconn/ecsdk/ECSDK;->bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)I

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->a:Ljava/lang/String;

    monitor-exit p0

    return v1

    :cond_12
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v3}, Lnet/easyconn/ecsdk/DeviceManager;->native_addAndroidDevice(ILjava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I

    move-result v3

    if-eqz v3, :cond_13

    const-string p1, "ecsdk"

    const-string v1, "openDevice: failed to native_addAndroidDevice for adb device"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    monitor-exit p0

    return v2

    :cond_13
    const-string v2, "ecsdk"

    const-string v3, "openDevice: adb device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->c:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->a:Ljava/lang/String;

    monitor-exit p0

    return v1

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_15
    iget-boolean p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->j:Z

    if-eqz p1, :cond_18

    invoke-direct {p0, v0}, Lnet/easyconn/ecsdk/DeviceManager;->a(Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "ecsdk"

    const-string v2, "openDevice: switchAoADevice ok"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    monitor-exit p0

    return v1

    :cond_16
    const-string p1, "ecsdk"

    const-string v1, "openDevice: failed to switchAoADevice"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    iget-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->e:Lnet/easyconn/ecsdk/IECCallback;

    if-eqz p1, :cond_17

    iget-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->g:Z

    if-eqz v0, :cond_17

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_SWITCH_AOA_FAIL:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    invoke-interface {p1, v0}, Lnet/easyconn/ecsdk/IECCallback;->onECStatusMessage(Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;)V

    :cond_17
    monitor-exit p0

    return v2

    :cond_18
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->f:Lnet/easyconn/ecsdk/DeviceManager$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->f:Lnet/easyconn/ecsdk/DeviceManager$d;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native native_addAndroidDevice(ILjava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I
.end method

.method private native native_addIosDevice(ILjava/lang/String;Z)I
.end method

.method private native native_resetUsbDevice(ILjava/lang/String;)I
.end method

.method private native native_setQTAvailable(Z)V
.end method


# virtual methods
.method public a(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Landroid/hardware/usb/UsbDevice;)I
    .locals 4

    const-string p1, "ecsdk"

    if-nez p2, :cond_0

    const-string p2, "[DeviceManager]bindTransportDevice: the usb device is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p2, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const-string p2, "[DeviceManager]the usb device is Mass Storage Device"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "[DeviceManager]bindTransportDevice: the usb device has no permission."

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lnet/easyconn/ecsdk/DeviceManager;->d(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method public a(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_MUX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->y:Lnet/easyconn/ecsdk/DeviceManager$c;

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/easyconn/ecsdk/DeviceManager$c;->a(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->z:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Lnet/easyconn/ecsdk/DeviceManager;->a()V

    :cond_2
    return-void
.end method

.method public b(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v2

    const/16 v5, 0xff

    if-ne v3, v5, :cond_0

    const/16 v3, 0x2a

    if-ne v4, v3, :cond_0

    if-ne v2, v5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 10

    const-string v0, "ecsdk"

    const-string v1, "DeviceManager: switchIphoneDevice start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x40

    const/16 v4, 0x52

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-gez p1, :cond_0

    const-string p1, "switchIphoneDevice: failed to controlTransfer, request=0x52"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/DeviceManager;->q:Z

    const-string v1, "DeviceManager: success switchIphoneDevice end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->n:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->h:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1}, Lnet/easyconn/ecsdk/ECSDK;->unbindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    :cond_0
    invoke-direct {p0}, Lnet/easyconn/ecsdk/DeviceManager;->f()V

    invoke-direct {p0}, Lnet/easyconn/ecsdk/DeviceManager;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->e:Lnet/easyconn/ecsdk/IECCallback;

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager;->y:Lnet/easyconn/ecsdk/DeviceManager$c;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/DeviceManager$c;->a()V

    return-void
.end method

.method public e(Landroid/hardware/usb/UsbDevice;)I
    .locals 4

    const-string v0, "ecsdk"

    if-nez p1, :cond_0

    const-string p1, "[DeviceManager]resetTransportDevice: the usb device is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string p1, "[DeviceManager]the usb device is Mass Storage Device"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "[DeviceManager]resetTransportDevice: the usb device has no permission."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p1, "[DeviceManager]resetTransportDevice: openDevice failed"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lnet/easyconn/ecsdk/DeviceManager;->native_resetUsbDevice(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return p1
.end method

.method public e()Z
    .locals 3

    const-string v0, "ecsdk"

    const-string v1, "[DeviceManager]rigistHidDevice start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/easyconn/ecsdk/DeviceManager;->p:Lnet/easyconn/ecsdk/AOAHIDDevice;

    if-nez v1, :cond_0

    const-string v1, "[DeviceManager]mAOAHIDDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager;->p:Lnet/easyconn/ecsdk/AOAHIDDevice;

    invoke-virtual {v1, v2}, Lnet/easyconn/ecsdk/ECSDK;->bindAoaHidDevice(Lnet/easyconn/ecsdk/AOAHIDDevice;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[DeviceManager]rigistHidDevice: failed to bindAoaHidDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v1, "[DeviceManager]rigistHidDevice success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
