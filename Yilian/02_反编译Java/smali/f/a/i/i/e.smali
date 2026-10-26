.class public Lf/a/i/i/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/hardware/usb/UsbManager;

.field public b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/hardware/usb/UsbDeviceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p1, p0, Lf/a/i/i/e;->c:Landroid/content/Context;

    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lf/a/i/i/e;->a:Landroid/hardware/usb/UsbManager;

    iget-object p1, p2, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->config:Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    iget-object p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaManufacturer:Ljava/lang/String;

    iput-object p2, p0, Lf/a/i/i/e;->d:Ljava/lang/String;

    iget-object p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaModel:Ljava/lang/String;

    iput-object p2, p0, Lf/a/i/i/e;->e:Ljava/lang/String;

    iget-object p2, p1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaVersion:Ljava/lang/String;

    iput-object p2, p0, Lf/a/i/i/e;->g:Ljava/lang/String;

    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaUri:Ljava/lang/String;

    iput-object p1, p0, Lf/a/i/i/e;->h:Ljava/lang/String;

    const-string p1, "aoaManufacturer="

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/i/e;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", aoaModel="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lf/a/i/i/e;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", aoaVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lf/a/i/i/e;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", aoaUri="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lf/a/i/i/e;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/e;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "123456789"

    iput-object p1, p0, Lf/a/i/i/e;->i:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lf/a/i/i/e;->f:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "tips:"

    iput-object p1, p0, Lf/a/i/i/e;->f:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "closeUsbDeviceConnection conn is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    return-void
.end method

.method public b(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openDevice: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    const/16 v1, 0x5ac

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_MUX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v0, p0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1, p1}, Lnet/easyconn/ecsdk/ECSDK;->bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Landroid/hardware/usb/UsbDevice;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openDevice: ios usb bindTransportDevice, bindRet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_1
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lf/a/i/i/e;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_2

    const-string p1, "openDevice: failed to openDevice for usb device"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    const/16 v4, 0x18d1

    if-ne v0, v4, :cond_4

    const/16 v0, 0x2d00

    if-eq v0, v1, :cond_3

    const/16 v0, 0x2d01

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xff

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    const-string v0, "openDevice: AOA TRANSPORT TYPE"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDORID_USB_AOA:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v0, p0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    if-ge v0, v5, :cond_6

    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v7

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v5

    if-ne v6, v1, :cond_5

    if-ne v7, v1, :cond_5

    if-nez v5, :cond_5

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1, p1}, Lnet/easyconn/ecsdk/ECSDK;->bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Landroid/hardware/usb/UsbDevice;)I

    monitor-exit p0

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    iput-object v4, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    monitor-exit p0

    return v3

    :cond_7
    iget-object v0, p0, Lf/a/i/i/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    if-ge v0, v5, :cond_9

    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v7

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v5

    if-ne v6, v1, :cond_8

    const/16 v6, 0x42

    if-ne v7, v6, :cond_8

    if-ne v5, v2, :cond_8

    const-string v0, "openDevice: ADB TYPE"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_USB_ADB:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v0, p0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1, p1}, Lnet/easyconn/ecsdk/ECSDK;->bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Landroid/hardware/usb/UsbDevice;)I

    monitor-exit p0

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p0, p1}, Lf/a/i/i/e;->d(Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "openDevice: switchAoADevice ok"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    iput-object v4, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    monitor-exit p0

    return v3

    :cond_a
    const-string p1, "openDevice: failed to switchAoADevice"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    iput-object v4, p0, Lf/a/i/i/e;->j:Landroid/hardware/usb/UsbDeviceConnection;

    monitor-exit p0

    return v3

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

.method public final c(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z
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

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 12

    const-string v0, "DeviceManager:switchAoADevice start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v9, v0, [B

    const/16 v2, 0xc0

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x3e8

    move-object v1, p1

    move-object v6, v9

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "switchAoADevice: failed to get version"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const/4 v1, 0x1

    aget-byte v3, v9, v1

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, v9, v2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-short v3, v3

    if-lt v3, v1, :cond_2

    iget-object v3, p0, Lf/a/i/i/e;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lf/a/i/i/e;->c(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    iget-object v3, p0, Lf/a/i/i/e;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3}, Lf/a/i/i/e;->c(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    const-string v3, " "

    invoke-virtual {p0, p1, v0, v3}, Lf/a/i/i/e;->c(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    const/4 v0, 0x3

    iget-object v3, p0, Lf/a/i/i/e;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v3}, Lf/a/i/i/e;->c(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    const/4 v0, 0x4

    iget-object v3, p0, Lf/a/i/i/e;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v3}, Lf/a/i/i/e;->c(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    const/4 v0, 0x5

    iget-object v3, p0, Lf/a/i/i/e;->i:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v3}, Lf/a/i/i/e;->c(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)Z

    const/16 v5, 0x40

    const/16 v6, 0x35

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e8

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-gez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "switchAoADevice: failed to controlTransfer, request=53"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    return v1

    :cond_2
    const-string p1, "switchAoADevice: unsupported version="

    invoke-static {p1, v3}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
