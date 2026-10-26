.class public Lnet/easyconn/ecsdk/AOAHIDDevice;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/IECHIDDevice;


# static fields
.field public static final TAG:Ljava/lang/String; = "ecsdk"


# instance fields
.field public final ACCESSORY_REGISTER_HID:I

.field public final ACCESSORY_SEND_HID_EVENT:I

.field public final ACCESSORY_SET_HID_REPORT_DESC:I

.field public final ACCESSORY_UNREGISTER_HID:I

.field public mConn:Landroid/hardware/usb/UsbDeviceConnection;

.field public mInterface:Landroid/hardware/usb/UsbInterface;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x36

    iput v0, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->ACCESSORY_REGISTER_HID:I

    const/16 v0, 0x37

    iput v0, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->ACCESSORY_UNREGISTER_HID:I

    const/16 v0, 0x38

    iput v0, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->ACCESSORY_SET_HID_REPORT_DESC:I

    const/16 v0, 0x39

    iput v0, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->ACCESSORY_SEND_HID_EVENT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->mConn:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v0, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    iput-object p1, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->mConn:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p2, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method private controlTransfer(III[BI)I
    .locals 9

    iget-object v0, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->mConn:Landroid/hardware/usb/UsbDeviceConnection;

    const-string v8, "ecsdk"

    if-nez v0, :cond_0

    const-string p1, "[AOAHIDDevice]controlTransfer error:UsbDeviceConnection is null"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 v1, 0x40

    const/16 v7, 0x1f4

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[AOAHIDDevice]controlTransfer error:transfer error,ret="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method private getMaxPacketSize()I
    .locals 7

    iget-object v0, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    const-string v1, "ecsdk"

    if-nez v0, :cond_0

    const-string v0, "[AOAHIDDevice]getMaxPacketSize error:mInterface is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    iget-object v4, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lnet/easyconn/ecsdk/AOAHIDDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    return v0

    :cond_4
    :goto_2
    const-string v0, "cann\'t find in and out endpoint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public register(II)Z
    .locals 6

    const/16 v1, 0x36

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lnet/easyconn/ecsdk/AOAHIDDevice;->controlTransfer(III[BI)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AOAHIDDevice]register: error:fail is ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",deviceId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",descriptorSize="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ecsdk"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public sendHIDDescriptor(I[BI)Z
    .locals 10

    invoke-direct {p0}, Lnet/easyconn/ecsdk/AOAHIDDevice;->getMaxPacketSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :cond_0
    if-ge v8, p3, :cond_2

    sub-int v2, p3, v8

    if-le v2, v0, :cond_1

    move v9, v0

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    new-array v6, v9, [B

    invoke-static {p2, v8, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x38

    move-object v2, p0

    move v4, p1

    move v5, v8

    move v7, v9

    invoke-direct/range {v2 .. v7}, Lnet/easyconn/ecsdk/AOAHIDDevice;->controlTransfer(III[BI)I

    move-result v2

    add-int/2addr v8, v9

    if-gez v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[AOAHIDDevice]sendHidDescriptor:error,ret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ecsdk"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public sendHIDEvent(I[BI)Z
    .locals 6

    const/16 v1, 0x39

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/easyconn/ecsdk/AOAHIDDevice;->controlTransfer(III[BI)I

    move-result p1

    if-gez p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[AOAHIDDevice]sendHidEvent:error,ret="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ecsdk"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public unRegister(I)Z
    .locals 6

    const/16 v1, 0x37

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/easyconn/ecsdk/AOAHIDDevice;->controlTransfer(III[BI)I

    move-result p1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AOAHIDDevice]unRegisertHid: error:fail is ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ecsdk"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
