.class public final Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOARD_FIELD_NUMBER:I = 0x2

.field public static final BOOTLOADER_FIELD_NUMBER:I = 0x3

.field public static final BRAND_FIELD_NUMBER:I = 0x4

.field public static final BTADDRESS_FIELD_NUMBER:I = 0x17

.field public static final CARLIFEVERSION_FIELD_NUMBER:I = 0x18

.field public static final CID_FIELD_NUMBER:I = 0xc

.field public static final CODENAME_FIELD_NUMBER:I = 0x11

.field public static final CPU_ABI2_FIELD_NUMBER:I = 0x6

.field public static final CPU_ABI_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

.field public static final DEVICE_FIELD_NUMBER:I = 0x7

.field public static final DISPLAY_FIELD_NUMBER:I = 0x8

.field public static final FINGERPRINT_FIELD_NUMBER:I = 0x9

.field public static final HARDWARE_FIELD_NUMBER:I = 0xa

.field public static final HOST_FIELD_NUMBER:I = 0xb

.field public static final INCREMENTAL_FIELD_NUMBER:I = 0x12

.field public static final MANUFACTURER_FIELD_NUMBER:I = 0xd

.field public static final MODEL_FIELD_NUMBER:I = 0xe

.field public static final OS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final PRODUCT_FIELD_NUMBER:I = 0xf

.field public static final RELEASE_FIELD_NUMBER:I = 0x13

.field public static final SDK_FIELD_NUMBER:I = 0x14

.field public static final SDK_INT_FIELD_NUMBER:I = 0x15

.field public static final SERIAL_FIELD_NUMBER:I = 0x10

.field public static final TOKEN_FIELD_NUMBER:I = 0x16


# instance fields
.field private bitField0_:I

.field private board_:Ljava/lang/String;

.field private bootloader_:Ljava/lang/String;

.field private brand_:Ljava/lang/String;

.field private btaddress_:Ljava/lang/String;

.field private carlifeversion_:Ljava/lang/String;

.field private cid_:Ljava/lang/String;

.field private codename_:Ljava/lang/String;

.field private cpuAbi2_:Ljava/lang/String;

.field private cpuAbi_:Ljava/lang/String;

.field private device_:Ljava/lang/String;

.field private display_:Ljava/lang/String;

.field private fingerprint_:Ljava/lang/String;

.field private hardware_:Ljava/lang/String;

.field private host_:Ljava/lang/String;

.field private incremental_:Ljava/lang/String;

.field private manufacturer_:Ljava/lang/String;

.field private model_:Ljava/lang/String;

.field private os_:Ljava/lang/String;

.field private product_:Ljava/lang/String;

.field private release_:Ljava/lang/String;

.field private sdkInt_:I

.field private sdk_:Ljava/lang/String;

.field private serial_:Ljava/lang/String;

.field private token_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/d0;->makeImmutable()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/d0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setOs(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setBrand(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearBrand()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setBrandBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCpuAbi(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearCpuAbi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCpuAbiBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCpuAbi2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearCpuAbi2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCpuAbi2Bytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setDevice(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearOs()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearDevice()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setDeviceBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setDisplay(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearDisplay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2400(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setDisplayBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setFingerprint(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2600(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearFingerprint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2700(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setFingerprintBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2800(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setHardware(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2900(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearHardware()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setOsBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3000(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setHardwareBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3100(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setHost(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3200(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearHost()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3300(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setHostBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3400(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCid(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3500(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearCid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3600(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCidBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3700(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setManufacturer(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3800(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearManufacturer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3900(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setManufacturerBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setBoard(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4000(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setModel(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4100(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearModel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4200(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setModelBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4300(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setProduct(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4400(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearProduct()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4500(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setProductBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4600(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setSerial(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4700(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearSerial()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4800(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setSerialBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4900(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCodename(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearBoard()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5000(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearCodename()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5100(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCodenameBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5200(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setIncremental(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5300(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearIncremental()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5400(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setIncrementalBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5500(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setRelease(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5600(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearRelease()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5700(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setReleaseBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5800(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setSdk(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5900(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearSdk()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setBoardBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6000(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setSdkBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6100(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setSdkInt(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6200(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearSdkInt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6300(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setToken(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6400(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearToken()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6500(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setTokenBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6600(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setBtaddress(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6700(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearBtaddress()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6800(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setBtaddressBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$6900(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCarlifeversion(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setBootloader(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$7000(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearCarlifeversion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$7100(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setCarlifeversionBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->clearBootloader()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->setBootloaderBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearBoard()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBoard()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearBootloader()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBootloader()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearBrand()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBrand()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearBtaddress()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x400001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBtaddress()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearCarlifeversion()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x800001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCarlifeversion()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearCid()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x801

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearCodename()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x10001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCodename()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearCpuAbi()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCpuAbi()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearCpuAbi2()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCpuAbi2()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearDevice()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDevice()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearDisplay()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDisplay()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearFingerprint()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getFingerprint()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearHardware()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getHardware()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearHost()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getHost()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearIncremental()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x20001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getIncremental()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearManufacturer()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x1001

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getManufacturer()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearModel()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getModel()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearOs()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getOs()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearProduct()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x4001

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getProduct()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearRelease()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x40001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getRelease()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearSdk()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x80001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getSdk()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearSdkInt()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x100001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdkInt_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearSerial()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x8001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getSerial()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private clearToken()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x200001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getToken()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/d0;->getParserForType()Lcom/google/protobuf/v0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setBoard(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setBoardBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setBootloader(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setBootloaderBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setBrand(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setBrandBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setBtaddress(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x400000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setBtaddressBytes(Lcom/google/protobuf/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x400000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private setCarlifeversion(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x800000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setCarlifeversionBytes(Lcom/google/protobuf/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x800000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private setCid(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x800

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setCidBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x800

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setCodename(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x10000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setCodenameBytes(Lcom/google/protobuf/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x10000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private setCpuAbi(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setCpuAbi2(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setCpuAbi2Bytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setCpuAbiBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setDevice(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setDeviceBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setDisplay(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setDisplayBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setFingerprint(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x100

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setFingerprintBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x100

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setHardware(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x200

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setHardwareBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x200

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setHost(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x400

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setHostBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x400

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setIncremental(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x20000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setIncrementalBytes(Lcom/google/protobuf/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x20000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private setManufacturer(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x1000

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setManufacturerBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x1000

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setModel(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x2000

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setModelBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x2000

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setOs(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setOsBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setProduct(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x4000

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setProductBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x4000

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setRelease(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x40000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setReleaseBytes(Lcom/google/protobuf/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x40000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private setSdk(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x80000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setSdkBytes(Lcom/google/protobuf/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x80000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private setSdkInt(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x100000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdkInt_:I

    .line 9
    .line 10
    return-void
.end method

.method private setSerial(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const v1, 0x8000

    .line 7
    .line 8
    .line 9
    or-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method private setSerialBytes(Lcom/google/protobuf/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const v1, 0x8000

    .line 7
    .line 8
    .line 9
    or-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private setToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x200000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private setTokenBytes(Lcom/google/protobuf/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 5
    .line 6
    const/high16 v1, 0x200000

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    new-instance p2, Lcom/google/protobuf/u;

    .line 27
    .line 28
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 29
    .line 30
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 31
    .line 32
    .line 33
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p2

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p1

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p2

    .line 42
    :cond_1
    :goto_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$1;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;-><init>()V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_3
    return-object v0

    .line 58
    :pswitch_4
    check-cast p2, Lcom/google/protobuf/j;

    .line 59
    .line 60
    check-cast p3, Lcom/google/protobuf/r;

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    :cond_2
    :goto_3
    if-nez p1, :cond_3

    .line 64
    .line 65
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    const/4 v0, 0x1

    .line 70
    sparse-switch p3, :sswitch_data_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p3, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-nez p3, :cond_2

    .line 78
    .line 79
    :sswitch_0
    const/4 p1, 0x1

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :catch_0
    move-exception p1

    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :catch_1
    move-exception p1

    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 95
    .line 96
    const/high16 v1, 0x800000

    .line 97
    .line 98
    or-int/2addr v0, v1

    .line 99
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 100
    .line 101
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :sswitch_2
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 109
    .line 110
    const/high16 v1, 0x400000

    .line 111
    .line 112
    or-int/2addr v0, v1

    .line 113
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 114
    .line 115
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 123
    .line 124
    const/high16 v1, 0x200000

    .line 125
    .line 126
    or-int/2addr v0, v1

    .line 127
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 128
    .line 129
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :sswitch_4
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 133
    .line 134
    const/high16 v0, 0x100000

    .line 135
    .line 136
    or-int/2addr p3, v0

    .line 137
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdkInt_:I

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 151
    .line 152
    const/high16 v1, 0x80000

    .line 153
    .line 154
    or-int/2addr v0, v1

    .line 155
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 156
    .line 157
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 165
    .line 166
    const/high16 v1, 0x40000

    .line 167
    .line 168
    or-int/2addr v0, v1

    .line 169
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 170
    .line 171
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p3

    .line 178
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 179
    .line 180
    const/high16 v1, 0x20000

    .line 181
    .line 182
    or-int/2addr v0, v1

    .line 183
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 184
    .line 185
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 193
    .line 194
    const/high16 v1, 0x10000

    .line 195
    .line 196
    or-int/2addr v0, v1

    .line 197
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 198
    .line 199
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 200
    .line 201
    goto/16 :goto_3

    .line 202
    .line 203
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 208
    .line 209
    const v1, 0x8000

    .line 210
    .line 211
    .line 212
    or-int/2addr v0, v1

    .line 213
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 214
    .line 215
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 224
    .line 225
    or-int/lit16 v0, v0, 0x4000

    .line 226
    .line 227
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 228
    .line 229
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 230
    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :sswitch_b
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 238
    .line 239
    or-int/lit16 v0, v0, 0x2000

    .line 240
    .line 241
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 242
    .line 243
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :sswitch_c
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 252
    .line 253
    or-int/lit16 v0, v0, 0x1000

    .line 254
    .line 255
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 256
    .line 257
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 258
    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :sswitch_d
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p3

    .line 265
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 266
    .line 267
    or-int/lit16 v0, v0, 0x800

    .line 268
    .line 269
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 270
    .line 271
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 272
    .line 273
    goto/16 :goto_3

    .line 274
    .line 275
    :sswitch_e
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p3

    .line 279
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 280
    .line 281
    or-int/lit16 v0, v0, 0x400

    .line 282
    .line 283
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 284
    .line 285
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 286
    .line 287
    goto/16 :goto_3

    .line 288
    .line 289
    :sswitch_f
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p3

    .line 293
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 294
    .line 295
    or-int/lit16 v0, v0, 0x200

    .line 296
    .line 297
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 298
    .line 299
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 300
    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :sswitch_10
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p3

    .line 307
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 308
    .line 309
    or-int/lit16 v0, v0, 0x100

    .line 310
    .line 311
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 312
    .line 313
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 314
    .line 315
    goto/16 :goto_3

    .line 316
    .line 317
    :sswitch_11
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p3

    .line 321
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 322
    .line 323
    or-int/lit16 v0, v0, 0x80

    .line 324
    .line 325
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 326
    .line 327
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :sswitch_12
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p3

    .line 335
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 336
    .line 337
    or-int/lit8 v0, v0, 0x40

    .line 338
    .line 339
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 340
    .line 341
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 342
    .line 343
    goto/16 :goto_3

    .line 344
    .line 345
    :sswitch_13
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p3

    .line 349
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 350
    .line 351
    or-int/lit8 v0, v0, 0x20

    .line 352
    .line 353
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 354
    .line 355
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 356
    .line 357
    goto/16 :goto_3

    .line 358
    .line 359
    :sswitch_14
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p3

    .line 363
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 364
    .line 365
    or-int/lit8 v0, v0, 0x10

    .line 366
    .line 367
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 368
    .line 369
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 370
    .line 371
    goto/16 :goto_3

    .line 372
    .line 373
    :sswitch_15
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p3

    .line 377
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 378
    .line 379
    or-int/lit8 v0, v0, 0x8

    .line 380
    .line 381
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 382
    .line 383
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 384
    .line 385
    goto/16 :goto_3

    .line 386
    .line 387
    :sswitch_16
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p3

    .line 391
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 392
    .line 393
    or-int/lit8 v0, v0, 0x4

    .line 394
    .line 395
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 396
    .line 397
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 398
    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    :sswitch_17
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p3

    .line 405
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 406
    .line 407
    or-int/lit8 v0, v0, 0x2

    .line 408
    .line 409
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 410
    .line 411
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 412
    .line 413
    goto/16 :goto_3

    .line 414
    .line 415
    :sswitch_18
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p3

    .line 419
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 420
    .line 421
    or-int/2addr v0, v1

    .line 422
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 423
    .line 424
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    .line 426
    goto/16 :goto_3

    .line 427
    .line 428
    :goto_4
    throw p1

    .line 429
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 430
    .line 431
    new-instance p3, Lcom/google/protobuf/o0;

    .line 432
    .line 433
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 441
    .line 442
    .line 443
    throw p2

    .line 444
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 445
    .line 446
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    throw p2

    .line 450
    :cond_3
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 451
    .line 452
    return-object p1

    .line 453
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 454
    .line 455
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 456
    .line 457
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasOs()Z

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;

    .line 462
    .line 463
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasOs()Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;

    .line 468
    .line 469
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasBoard()Z

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasBoard()Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 486
    .line 487
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasBootloader()Z

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasBootloader()Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 504
    .line 505
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasBrand()Z

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 516
    .line 517
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasBrand()Z

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 522
    .line 523
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 528
    .line 529
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCpuAbi()Z

    .line 530
    .line 531
    .line 532
    move-result p1

    .line 533
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 534
    .line 535
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCpuAbi()Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 540
    .line 541
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 546
    .line 547
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCpuAbi2()Z

    .line 548
    .line 549
    .line 550
    move-result p1

    .line 551
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 552
    .line 553
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCpuAbi2()Z

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 558
    .line 559
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 564
    .line 565
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasDevice()Z

    .line 566
    .line 567
    .line 568
    move-result p1

    .line 569
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 570
    .line 571
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasDevice()Z

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 576
    .line 577
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasDisplay()Z

    .line 584
    .line 585
    .line 586
    move-result p1

    .line 587
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 588
    .line 589
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasDisplay()Z

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 594
    .line 595
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 600
    .line 601
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasFingerprint()Z

    .line 602
    .line 603
    .line 604
    move-result p1

    .line 605
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 606
    .line 607
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasFingerprint()Z

    .line 608
    .line 609
    .line 610
    move-result v1

    .line 611
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 612
    .line 613
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 618
    .line 619
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasHardware()Z

    .line 620
    .line 621
    .line 622
    move-result p1

    .line 623
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 624
    .line 625
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasHardware()Z

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 630
    .line 631
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object p1

    .line 635
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasHost()Z

    .line 638
    .line 639
    .line 640
    move-result p1

    .line 641
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 642
    .line 643
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasHost()Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 648
    .line 649
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 654
    .line 655
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCid()Z

    .line 656
    .line 657
    .line 658
    move-result p1

    .line 659
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 660
    .line 661
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCid()Z

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 666
    .line 667
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 672
    .line 673
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasManufacturer()Z

    .line 674
    .line 675
    .line 676
    move-result p1

    .line 677
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 678
    .line 679
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasManufacturer()Z

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 684
    .line 685
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasModel()Z

    .line 692
    .line 693
    .line 694
    move-result p1

    .line 695
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 696
    .line 697
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasModel()Z

    .line 698
    .line 699
    .line 700
    move-result v1

    .line 701
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 702
    .line 703
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 708
    .line 709
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasProduct()Z

    .line 710
    .line 711
    .line 712
    move-result p1

    .line 713
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 714
    .line 715
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasProduct()Z

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 720
    .line 721
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object p1

    .line 725
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 726
    .line 727
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasSerial()Z

    .line 728
    .line 729
    .line 730
    move-result p1

    .line 731
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 732
    .line 733
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasSerial()Z

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 738
    .line 739
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 744
    .line 745
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCodename()Z

    .line 746
    .line 747
    .line 748
    move-result p1

    .line 749
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 750
    .line 751
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCodename()Z

    .line 752
    .line 753
    .line 754
    move-result v1

    .line 755
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 756
    .line 757
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object p1

    .line 761
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasIncremental()Z

    .line 764
    .line 765
    .line 766
    move-result p1

    .line 767
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 768
    .line 769
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasIncremental()Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 774
    .line 775
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object p1

    .line 779
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 780
    .line 781
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasRelease()Z

    .line 782
    .line 783
    .line 784
    move-result p1

    .line 785
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 786
    .line 787
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasRelease()Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 792
    .line 793
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 798
    .line 799
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasSdk()Z

    .line 800
    .line 801
    .line 802
    move-result p1

    .line 803
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 804
    .line 805
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasSdk()Z

    .line 806
    .line 807
    .line 808
    move-result v1

    .line 809
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 810
    .line 811
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object p1

    .line 815
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 816
    .line 817
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasSdkInt()Z

    .line 818
    .line 819
    .line 820
    move-result p1

    .line 821
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdkInt_:I

    .line 822
    .line 823
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasSdkInt()Z

    .line 824
    .line 825
    .line 826
    move-result v1

    .line 827
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdkInt_:I

    .line 828
    .line 829
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 830
    .line 831
    .line 832
    move-result p1

    .line 833
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdkInt_:I

    .line 834
    .line 835
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasToken()Z

    .line 836
    .line 837
    .line 838
    move-result p1

    .line 839
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 840
    .line 841
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasToken()Z

    .line 842
    .line 843
    .line 844
    move-result v1

    .line 845
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 846
    .line 847
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object p1

    .line 851
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 852
    .line 853
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasBtaddress()Z

    .line 854
    .line 855
    .line 856
    move-result p1

    .line 857
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 858
    .line 859
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasBtaddress()Z

    .line 860
    .line 861
    .line 862
    move-result v1

    .line 863
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 864
    .line 865
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object p1

    .line 869
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 870
    .line 871
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCarlifeversion()Z

    .line 872
    .line 873
    .line 874
    move-result p1

    .line 875
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 876
    .line 877
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hasCarlifeversion()Z

    .line 878
    .line 879
    .line 880
    move-result v1

    .line 881
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 882
    .line 883
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object p1

    .line 887
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 888
    .line 889
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 890
    .line 891
    if-ne p2, p1, :cond_4

    .line 892
    .line 893
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 894
    .line 895
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 896
    .line 897
    or-int/2addr p1, p2

    .line 898
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 899
    .line 900
    :cond_4
    return-object p0

    .line 901
    :pswitch_7
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    .line 902
    .line 903
    return-object p1

    .line 904
    nop

    .line 905
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_18
        0x12 -> :sswitch_17
        0x1a -> :sswitch_16
        0x22 -> :sswitch_15
        0x2a -> :sswitch_14
        0x32 -> :sswitch_13
        0x3a -> :sswitch_12
        0x42 -> :sswitch_11
        0x4a -> :sswitch_10
        0x52 -> :sswitch_f
        0x5a -> :sswitch_e
        0x62 -> :sswitch_d
        0x6a -> :sswitch_c
        0x72 -> :sswitch_b
        0x7a -> :sswitch_a
        0x82 -> :sswitch_9
        0x8a -> :sswitch_8
        0x92 -> :sswitch_7
        0x9a -> :sswitch_6
        0xa2 -> :sswitch_5
        0xa8 -> :sswitch_4
        0xb2 -> :sswitch_3
        0xba -> :sswitch_2
        0xc2 -> :sswitch_1
    .end sparse-switch
.end method

.method public getBoard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBoardBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->board_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBootloader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBootloaderBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bootloader_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBrandBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->brand_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBtaddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBtaddressBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->btaddress_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCarlifeversion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCarlifeversionBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->carlifeversion_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cid_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCodename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodenameBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->codename_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCpuAbi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCpuAbi2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCpuAbi2Bytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi2_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCpuAbiBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->cpuAbi_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->device_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->display_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFingerprintBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->fingerprint_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHardwareBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->hardware_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->host_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIncremental()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIncrementalBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->incremental_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getManufacturerBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->manufacturer_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModelBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->model_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOsBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->os_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProductBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->product_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReleaseBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->release_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdk_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSdkInt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdkInt_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerialBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->serial_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getOs()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    and-int/2addr v1, v2

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBoard()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    and-int/2addr v1, v2

    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBootloader()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 55
    .line 56
    const/16 v3, 0x8

    .line 57
    .line 58
    and-int/2addr v1, v3

    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBrand()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 71
    .line 72
    const/16 v2, 0x10

    .line 73
    .line 74
    and-int/2addr v1, v2

    .line 75
    if-ne v1, v2, :cond_5

    .line 76
    .line 77
    const/4 v1, 0x5

    .line 78
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCpuAbi()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v1, v4}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-int/2addr v0, v1

    .line 87
    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 88
    .line 89
    const/16 v4, 0x20

    .line 90
    .line 91
    and-int/2addr v1, v4

    .line 92
    if-ne v1, v4, :cond_6

    .line 93
    .line 94
    const/4 v1, 0x6

    .line 95
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCpuAbi2()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v1, v4}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 105
    .line 106
    const/16 v4, 0x40

    .line 107
    .line 108
    and-int/2addr v1, v4

    .line 109
    if-ne v1, v4, :cond_7

    .line 110
    .line 111
    const/4 v1, 0x7

    .line 112
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDevice()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v1, v4}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr v0, v1

    .line 121
    :cond_7
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 122
    .line 123
    const/16 v4, 0x80

    .line 124
    .line 125
    and-int/2addr v1, v4

    .line 126
    if-ne v1, v4, :cond_8

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDisplay()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    add-int/2addr v0, v1

    .line 137
    :cond_8
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 138
    .line 139
    const/16 v3, 0x100

    .line 140
    .line 141
    and-int/2addr v1, v3

    .line 142
    if-ne v1, v3, :cond_9

    .line 143
    .line 144
    const/16 v1, 0x9

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getFingerprint()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    add-int/2addr v0, v1

    .line 155
    :cond_9
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 156
    .line 157
    const/16 v3, 0x200

    .line 158
    .line 159
    and-int/2addr v1, v3

    .line 160
    if-ne v1, v3, :cond_a

    .line 161
    .line 162
    const/16 v1, 0xa

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getHardware()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    add-int/2addr v0, v1

    .line 173
    :cond_a
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 174
    .line 175
    const/16 v3, 0x400

    .line 176
    .line 177
    and-int/2addr v1, v3

    .line 178
    if-ne v1, v3, :cond_b

    .line 179
    .line 180
    const/16 v1, 0xb

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getHost()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    add-int/2addr v0, v1

    .line 191
    :cond_b
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 192
    .line 193
    const/16 v3, 0x800

    .line 194
    .line 195
    and-int/2addr v1, v3

    .line 196
    if-ne v1, v3, :cond_c

    .line 197
    .line 198
    const/16 v1, 0xc

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCid()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    add-int/2addr v0, v1

    .line 209
    :cond_c
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 210
    .line 211
    const/16 v3, 0x1000

    .line 212
    .line 213
    and-int/2addr v1, v3

    .line 214
    if-ne v1, v3, :cond_d

    .line 215
    .line 216
    const/16 v1, 0xd

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getManufacturer()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    add-int/2addr v0, v1

    .line 227
    :cond_d
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 228
    .line 229
    const/16 v3, 0x2000

    .line 230
    .line 231
    and-int/2addr v1, v3

    .line 232
    if-ne v1, v3, :cond_e

    .line 233
    .line 234
    const/16 v1, 0xe

    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getModel()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    add-int/2addr v0, v1

    .line 245
    :cond_e
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 246
    .line 247
    const/16 v3, 0x4000

    .line 248
    .line 249
    and-int/2addr v1, v3

    .line 250
    if-ne v1, v3, :cond_f

    .line 251
    .line 252
    const/16 v1, 0xf

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getProduct()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    add-int/2addr v0, v1

    .line 263
    :cond_f
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 264
    .line 265
    const v3, 0x8000

    .line 266
    .line 267
    .line 268
    and-int/2addr v1, v3

    .line 269
    if-ne v1, v3, :cond_10

    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getSerial()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    add-int/2addr v0, v1

    .line 280
    :cond_10
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 281
    .line 282
    const/high16 v2, 0x10000

    .line 283
    .line 284
    and-int/2addr v1, v2

    .line 285
    if-ne v1, v2, :cond_11

    .line 286
    .line 287
    const/16 v1, 0x11

    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCodename()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    add-int/2addr v0, v1

    .line 298
    :cond_11
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 299
    .line 300
    const/high16 v2, 0x20000

    .line 301
    .line 302
    and-int/2addr v1, v2

    .line 303
    if-ne v1, v2, :cond_12

    .line 304
    .line 305
    const/16 v1, 0x12

    .line 306
    .line 307
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getIncremental()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    add-int/2addr v0, v1

    .line 316
    :cond_12
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 317
    .line 318
    const/high16 v2, 0x40000

    .line 319
    .line 320
    and-int/2addr v1, v2

    .line 321
    if-ne v1, v2, :cond_13

    .line 322
    .line 323
    const/16 v1, 0x13

    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getRelease()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    add-int/2addr v0, v1

    .line 334
    :cond_13
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 335
    .line 336
    const/high16 v2, 0x80000

    .line 337
    .line 338
    and-int/2addr v1, v2

    .line 339
    if-ne v1, v2, :cond_14

    .line 340
    .line 341
    const/16 v1, 0x14

    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getSdk()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    add-int/2addr v0, v1

    .line 352
    :cond_14
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 353
    .line 354
    const/high16 v2, 0x100000

    .line 355
    .line 356
    and-int/2addr v1, v2

    .line 357
    if-ne v1, v2, :cond_15

    .line 358
    .line 359
    const/16 v1, 0x15

    .line 360
    .line 361
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdkInt_:I

    .line 362
    .line 363
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    add-int/2addr v0, v1

    .line 368
    :cond_15
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 369
    .line 370
    const/high16 v2, 0x200000

    .line 371
    .line 372
    and-int/2addr v1, v2

    .line 373
    if-ne v1, v2, :cond_16

    .line 374
    .line 375
    const/16 v1, 0x16

    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getToken()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    add-int/2addr v0, v1

    .line 386
    :cond_16
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 387
    .line 388
    const/high16 v2, 0x400000

    .line 389
    .line 390
    and-int/2addr v1, v2

    .line 391
    if-ne v1, v2, :cond_17

    .line 392
    .line 393
    const/16 v1, 0x17

    .line 394
    .line 395
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBtaddress()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    add-int/2addr v0, v1

    .line 404
    :cond_17
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 405
    .line 406
    const/high16 v2, 0x800000

    .line 407
    .line 408
    and-int/2addr v1, v2

    .line 409
    if-ne v1, v2, :cond_18

    .line 410
    .line 411
    const/16 v1, 0x18

    .line 412
    .line 413
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCarlifeversion()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    add-int/2addr v0, v1

    .line 422
    :cond_18
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 423
    .line 424
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    add-int/2addr v1, v0

    .line 429
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 430
    .line 431
    return v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTokenBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->token_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasBoard()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public hasBootloader()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public hasBrand()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasBtaddress()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x400000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasCarlifeversion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x800000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasCid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x800

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasCodename()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x10000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasCpuAbi()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasCpuAbi2()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasDevice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasDisplay()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasFingerprint()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasHardware()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x200

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasHost()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x400

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasIncremental()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x20000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasManufacturer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x1000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasModel()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x2000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasOs()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public hasProduct()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x4000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasRelease()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x40000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasSdk()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasSdkInt()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x100000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasSerial()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public hasToken()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x200000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getOs()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    and-int/2addr v0, v1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBoard()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    and-int/2addr v0, v1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBootloader()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    and-int/2addr v0, v2

    .line 46
    if-ne v0, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBrand()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    and-int/2addr v0, v1

    .line 60
    if-ne v0, v1, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x5

    .line 63
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCpuAbi()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 71
    .line 72
    const/16 v3, 0x20

    .line 73
    .line 74
    and-int/2addr v0, v3

    .line 75
    if-ne v0, v3, :cond_5

    .line 76
    .line 77
    const/4 v0, 0x6

    .line 78
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCpuAbi2()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 86
    .line 87
    const/16 v3, 0x40

    .line 88
    .line 89
    and-int/2addr v0, v3

    .line 90
    if-ne v0, v3, :cond_6

    .line 91
    .line 92
    const/4 v0, 0x7

    .line 93
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDevice()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 101
    .line 102
    const/16 v3, 0x80

    .line 103
    .line 104
    and-int/2addr v0, v3

    .line 105
    if-ne v0, v3, :cond_7

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getDisplay()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 115
    .line 116
    const/16 v2, 0x100

    .line 117
    .line 118
    and-int/2addr v0, v2

    .line 119
    if-ne v0, v2, :cond_8

    .line 120
    .line 121
    const/16 v0, 0x9

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getFingerprint()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_8
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 131
    .line 132
    const/16 v2, 0x200

    .line 133
    .line 134
    and-int/2addr v0, v2

    .line 135
    if-ne v0, v2, :cond_9

    .line 136
    .line 137
    const/16 v0, 0xa

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getHardware()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_9
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 147
    .line 148
    const/16 v2, 0x400

    .line 149
    .line 150
    and-int/2addr v0, v2

    .line 151
    if-ne v0, v2, :cond_a

    .line 152
    .line 153
    const/16 v0, 0xb

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getHost()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_a
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 163
    .line 164
    const/16 v2, 0x800

    .line 165
    .line 166
    and-int/2addr v0, v2

    .line 167
    if-ne v0, v2, :cond_b

    .line 168
    .line 169
    const/16 v0, 0xc

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCid()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_b
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 179
    .line 180
    const/16 v2, 0x1000

    .line 181
    .line 182
    and-int/2addr v0, v2

    .line 183
    if-ne v0, v2, :cond_c

    .line 184
    .line 185
    const/16 v0, 0xd

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getManufacturer()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_c
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 195
    .line 196
    const/16 v2, 0x2000

    .line 197
    .line 198
    and-int/2addr v0, v2

    .line 199
    if-ne v0, v2, :cond_d

    .line 200
    .line 201
    const/16 v0, 0xe

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getModel()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_d
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 211
    .line 212
    const/16 v2, 0x4000

    .line 213
    .line 214
    and-int/2addr v0, v2

    .line 215
    if-ne v0, v2, :cond_e

    .line 216
    .line 217
    const/16 v0, 0xf

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getProduct()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_e
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 227
    .line 228
    const v2, 0x8000

    .line 229
    .line 230
    .line 231
    and-int/2addr v0, v2

    .line 232
    if-ne v0, v2, :cond_f

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getSerial()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :cond_f
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 242
    .line 243
    const/high16 v1, 0x10000

    .line 244
    .line 245
    and-int/2addr v0, v1

    .line 246
    if-ne v0, v1, :cond_10

    .line 247
    .line 248
    const/16 v0, 0x11

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCodename()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_10
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 258
    .line 259
    const/high16 v1, 0x20000

    .line 260
    .line 261
    and-int/2addr v0, v1

    .line 262
    if-ne v0, v1, :cond_11

    .line 263
    .line 264
    const/16 v0, 0x12

    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getIncremental()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :cond_11
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 274
    .line 275
    const/high16 v1, 0x40000

    .line 276
    .line 277
    and-int/2addr v0, v1

    .line 278
    if-ne v0, v1, :cond_12

    .line 279
    .line 280
    const/16 v0, 0x13

    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getRelease()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_12
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 290
    .line 291
    const/high16 v1, 0x80000

    .line 292
    .line 293
    and-int/2addr v0, v1

    .line 294
    if-ne v0, v1, :cond_13

    .line 295
    .line 296
    const/16 v0, 0x14

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getSdk()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 306
    .line 307
    const/high16 v1, 0x100000

    .line 308
    .line 309
    and-int/2addr v0, v1

    .line 310
    if-ne v0, v1, :cond_14

    .line 311
    .line 312
    const/16 v0, 0x15

    .line 313
    .line 314
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->sdkInt_:I

    .line 315
    .line 316
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 317
    .line 318
    .line 319
    :cond_14
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 320
    .line 321
    const/high16 v1, 0x200000

    .line 322
    .line 323
    and-int/2addr v0, v1

    .line 324
    if-ne v0, v1, :cond_15

    .line 325
    .line 326
    const/16 v0, 0x16

    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getToken()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_15
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 336
    .line 337
    const/high16 v1, 0x400000

    .line 338
    .line 339
    and-int/2addr v0, v1

    .line 340
    if-ne v0, v1, :cond_16

    .line 341
    .line 342
    const/16 v0, 0x17

    .line 343
    .line 344
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBtaddress()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :cond_16
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->bitField0_:I

    .line 352
    .line 353
    const/high16 v1, 0x800000

    .line 354
    .line 355
    and-int/2addr v0, v1

    .line 356
    if-ne v0, v1, :cond_17

    .line 357
    .line 358
    const/16 v0, 0x18

    .line 359
    .line 360
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getCarlifeversion()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :cond_17
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 368
    .line 369
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 370
    .line 371
    .line 372
    return-void
.end method
