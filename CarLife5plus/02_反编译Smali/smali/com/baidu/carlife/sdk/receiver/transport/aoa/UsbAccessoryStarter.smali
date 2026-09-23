.class public final Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J6\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0008H\u0002J6\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0008H\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0006\u0010\u0013\u001a\u00020\u0011J\u0008\u0010\u0014\u001a\u00020\u0011H\u0002J\u0008\u0010\u0015\u001a\u00020\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;",
        "",
        "usbDevice",
        "Landroid/hardware/usb/UsbDevice;",
        "usbConnection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V",
        "controlTransferIn",
        "",
        "request",
        "value",
        "index",
        "buffer",
        "",
        "length",
        "controlTransferOut",
        "getProtocolVersion",
        "",
        "isAccessory",
        "openAccessory",
        "sendIdentities",
        "startAccessory",
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
.field public static final AOA_AUDIO_SUPPORT:I = 0x3a

.field public static final AOA_DESCRIPTION:Ljava/lang/String; = "Baidu CarLife"

.field public static final AOA_GET_PROTOCOL:I = 0x33

.field public static final AOA_MANUFACTURER:Ljava/lang/String; = "Baidu"

.field public static final AOA_MODEL_NAME:Ljava/lang/String; = "CarLife"

.field public static final AOA_SEND_IDENT:I = 0x34

.field public static final AOA_SERIAL_NUMBER:Ljava/lang/String; = "0720SerialNo."

.field public static final AOA_START_ACCESSORY:I = 0x35

.field public static final AOA_URI:Ljava/lang/String; = "http://carlife.baidu.com/"

.field public static final AOA_VERSION:Ljava/lang/String; = "1.0.0"

.field public static final Companion:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter$Companion;

.field public static final PID_ACCESSORY_ADB:I = 0x2d01

.field public static final PID_ACCESSORY_AUDIO:I = 0x2d02

.field public static final PID_ACCESSORY_AUDIO_ADB:I = 0x2d03

.field public static final PID_ACCESSORY_AUDIO_ADB_BULK:I = 0x2d05

.field public static final PID_ACCESSORY_AUDIO_BULK:I = 0x2d04

.field public static final PID_ACCESSORY_ONLY:I = 0x2d00

.field public static final VID_ACCESSORY:I = 0x18d1


# instance fields
.field private final usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final usbDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->Companion:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    .line 1
    const-string v0, "usbDevice"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "usbConnection"

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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 17
    .line 18
    return-void
.end method

.method private final controlTransferIn(III[BI)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    const/16 v1, 0xc0

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public static synthetic controlTransferIn$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x8

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v4, p4

    .line 7
    and-int/lit8 p4, p6, 0x10

    .line 8
    .line 9
    if-eqz p4, :cond_2

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    array-length p4, v4

    .line 14
    move p5, p4

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p4, 0x0

    .line 17
    const/4 p5, 0x0

    .line 18
    :cond_2
    :goto_0
    move-object v0, p0

    .line 19
    move v1, p1

    .line 20
    move v2, p2

    .line 21
    move v3, p3

    .line 22
    move v5, p5

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferIn(III[BI)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method private final controlTransferOut(III[BI)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public static synthetic controlTransferOut$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x8

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v4, p4

    .line 7
    and-int/lit8 p4, p6, 0x10

    .line 8
    .line 9
    if-eqz p4, :cond_2

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    array-length p4, v4

    .line 14
    move p5, p4

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p4, 0x0

    .line 17
    const/4 p5, 0x0

    .line 18
    :cond_2
    :goto_0
    move-object v0, p0

    .line 19
    move v1, p1

    .line 20
    move v2, p2

    .line 21
    move v3, p3

    .line 22
    move v5, p5

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferOut(III[BI)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method private final getProtocolVersion()Z
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v5, v0, [B

    .line 3
    .line 4
    const/16 v7, 0x10

    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    const/16 v2, 0x33

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v1, p0

    .line 13
    invoke-static/range {v1 .. v8}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferIn$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private final isAccessory()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x18d1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x2d00

    .line 18
    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x2d05

    .line 28
    .line 29
    if-gt v0, v1, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method private final sendIdentities()Z
    .locals 12

    .line 1
    sget-object v0, Lxb/a;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const-string v1, "Baidu"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    const-string v1, "getBytes(...)"

    .line 10
    .line 11
    invoke-static {v6, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/16 v8, 0x10

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    const/16 v3, 0x34

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v2, p0

    .line 23
    invoke-static/range {v2 .. v9}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferOut$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v2, 0x0

    .line 28
    if-gez v3, :cond_0

    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    const-string v3, "CarLife"

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-static {v8, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/16 v10, 0x10

    .line 41
    .line 42
    const/4 v11, 0x0

    .line 43
    const/16 v5, 0x34

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x1

    .line 47
    const/4 v9, 0x0

    .line 48
    move-object v4, p0

    .line 49
    invoke-static/range {v4 .. v11}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferOut$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-gez v3, :cond_1

    .line 54
    .line 55
    return v2

    .line 56
    :cond_1
    const-string v3, "Baidu CarLife"

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-static {v8, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/16 v10, 0x10

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    const/16 v5, 0x34

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x2

    .line 72
    const/4 v9, 0x0

    .line 73
    move-object v4, p0

    .line 74
    invoke-static/range {v4 .. v11}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferOut$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-gez v3, :cond_2

    .line 79
    .line 80
    return v2

    .line 81
    :cond_2
    const-string v3, "1.0.0"

    .line 82
    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v8, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/16 v10, 0x10

    .line 91
    .line 92
    const/4 v11, 0x0

    .line 93
    const/16 v5, 0x34

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x3

    .line 97
    const/4 v9, 0x0

    .line 98
    move-object v4, p0

    .line 99
    invoke-static/range {v4 .. v11}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferOut$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-gez v3, :cond_3

    .line 104
    .line 105
    return v2

    .line 106
    :cond_3
    const-string v3, "http://carlife.baidu.com/"

    .line 107
    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-static {v8, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/16 v10, 0x10

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    const/16 v5, 0x34

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v7, 0x4

    .line 122
    const/4 v9, 0x0

    .line 123
    move-object v4, p0

    .line 124
    invoke-static/range {v4 .. v11}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferOut$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-gez v3, :cond_4

    .line 129
    .line 130
    return v2

    .line 131
    :cond_4
    const-string v3, "0720SerialNo."

    .line 132
    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-static {v8, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/16 v10, 0x10

    .line 141
    .line 142
    const/4 v11, 0x0

    .line 143
    const/16 v5, 0x34

    .line 144
    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x5

    .line 147
    const/4 v9, 0x0

    .line 148
    move-object v4, p0

    .line 149
    invoke-static/range {v4 .. v11}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferOut$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-gez v0, :cond_5

    .line 154
    .line 155
    return v2

    .line 156
    :cond_5
    const/4 v0, 0x1

    .line 157
    return v0
.end method

.method private final startAccessory()Z
    .locals 8

    .line 1
    const/16 v6, 0x18

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/16 v1, 0x35

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v7}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->controlTransferOut$default(Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;III[BIILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ltz v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method


# virtual methods
.method public final openAccessory()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->isAccessory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->getProtocolVersion()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->sendIdentities()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryStarter;->startAccessory()Z

    .line 22
    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    return v0
.end method
