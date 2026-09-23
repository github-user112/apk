.class public Lnet/easyconn/ecsdk/ebt/EBTBLEService;
.super Lnet/easyconn/ecsdk/ebt/EBTService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;,
        Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;
    }
.end annotation


# static fields
.field public static final BLE_WRITE_MAX_PAYLOAD:I = 0x14

.field public static final CHARACTERISTIC_DATA:Ljava/util/UUID;

.field public static final SERVICE_CHANNEL:Ljava/util/UUID;

.field public static final SERVICE_CHANNEL_DATA:[B

.field public static final SERVICE_CHANNEL_DATA_UUID:Ljava/util/UUID;

.field public static final SERVICE_DEVICE_INFO:Ljava/util/UUID;

.field public static final SERVICE_DEVICE_INFO_FIRMWARE:Ljava/util/UUID;

.field public static final SERVICE_DEVICE_INFO_HARDWARE:Ljava/util/UUID;

.field public static final SERVICE_DEVICE_INFO_MFN:Ljava/util/UUID;

.field public static final SERVICE_DEVICE_INFO_MNS:Ljava/util/UUID;

.field public static final SERVICE_DEVICE_INFO_SERIAL:Ljava/util/UUID;

.field public static final SERVICE_DEVICE_INFO_SOFTWARE:Ljava/util/UUID;

.field public static final SERVICE_ECC:Ljava/util/UUID;


# instance fields
.field public final bluetoothDevicesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public bluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field public gattServer:Landroid/bluetooth/BluetoothGattServer;

.field public gattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field public final handler:Landroid/os/Handler;

.field public mBLEIOHandle:Lnet/easyconn/ecsdk/IUsbDevice;

.field public mBuffer:[B

.field public mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field public mDataCharacter:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public mMacString:Ljava/lang/String;

.field public mServiceSize:I

.field public notifyStatus:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x6967

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_CHANNEL:Ljava/util/UUID;

    const v0, 0xb360

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_CHANNEL_DATA_UUID:Ljava/util/UUID;

    const/16 v0, 0x180a

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO:Ljava/util/UUID;

    const/16 v0, 0x2a29

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_MFN:Ljava/util/UUID;

    const/16 v0, 0x2a24

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_MNS:Ljava/util/UUID;

    const/16 v0, 0x2a25

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_SERIAL:Ljava/util/UUID;

    const/16 v0, 0x2a27

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_HARDWARE:Ljava/util/UUID;

    const/16 v0, 0x2a26

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_FIRMWARE:Ljava/util/UUID;

    const/16 v0, 0x2a28

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_SOFTWARE:Ljava/util/UUID;

    const/4 v0, 0x5

    new-array v0, v0, [B

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_CHANNEL_DATA:[B

    const-string v0, "0000b360-d6d8-c7ec-bdf0-eab1bfc6bcbc"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_ECC:Ljava/util/UUID;

    const-string v0, "0000b362-d6d8-c7ec-bdf0-eab1bfc6bcbc"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->CHARACTERISTIC_DATA:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ebt/EBTService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->bluetoothDevicesMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mMacString:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mServiceSize:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mBuffer:[B

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->notifyStatus:Z

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->handler:Landroid/os/Handler;

    new-instance p1, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;-><init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;Lnet/easyconn/ecsdk/ebt/EBTBLEService$1;)V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->gattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    return-void
.end method

.method public static synthetic access$1006(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mServiceSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mServiceSize:I

    return v0
.end method

.method public static synthetic access$1100(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattService;
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->getECService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_CHANNEL:Ljava/util/UUID;

    return-object v0
.end method

.method public static synthetic access$300(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->bluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object p0
.end method

.method public static synthetic access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mBuffer:[B

    return-object p0
.end method

.method public static synthetic access$402(Lnet/easyconn/ecsdk/ebt/EBTBLEService;[B)[B
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mBuffer:[B

    return-object p1
.end method

.method public static synthetic access$502(Lnet/easyconn/ecsdk/ebt/EBTBLEService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->notifyStatus:Z

    return p1
.end method

.method public static synthetic access$600(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattServer;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->gattServer:Landroid/bluetooth/BluetoothGattServer;

    return-object p0
.end method

.method public static synthetic access$700(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->bluetoothDevicesMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$800(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Lnet/easyconn/ecsdk/IUsbDevice;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mBLEIOHandle:Lnet/easyconn/ecsdk/IUsbDevice;

    return-object p0
.end method

.method public static synthetic access$900(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mMacString:Ljava/lang/String;

    return-object p0
.end method

.method private getDeviceInfoService()Landroid/bluetooth/BluetoothGattService;
    .locals 5

    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    sget-object v1, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_SERIAL:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_MFN:Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_MNS:Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_FIRMWARE:Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_HARDWARE:Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_DEVICE_INFO_SOFTWARE:Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-object v0
.end method

.method private getECService()Landroid/bluetooth/BluetoothGattService;
    .locals 5

    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    sget-object v1, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_ECC:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->CHARACTERISTIC_DATA:Ljava/util/UUID;

    const/16 v3, 0x1c

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    iput-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mDataCharacter:Landroid/bluetooth/BluetoothGattCharacteristic;

    new-instance v2, Landroid/bluetooth/BluetoothGattDescriptor;

    const/16 v3, 0x2902

    invoke-static {v3}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    :goto_0
    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mDataCharacter:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initService()I
    .locals 5

    const-string v0, "ecsdk:ebtservice"

    :try_start_0
    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMultipleAdvertisementSupported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    iput-object v2, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->bluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetoothLeAdvertiser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->bluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->bluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->gattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->gattServer:Landroid/bluetooth/BluetoothGattServer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const-string v1, "DD0D30E53D1F"

    iput-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mMacString:Ljava/lang/String;

    sget-object v1, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->SERVICE_CHANNEL_DATA:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->getDeviceInfoService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    new-instance v0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;-><init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;Lnet/easyconn/ecsdk/ebt/EBTBLEService$1;)V

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mBLEIOHandle:Lnet/easyconn/ecsdk/IUsbDevice;

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->startAdvertising()V

    return v3

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "gattServer is null, check Bluetooth is ON."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Bluetooth LE Advertising not supported on this device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Bluetooth is disabled."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Bluetooth is not available."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method private startAdvertising()V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/easyconn/ecsdk/ebt/EBTBLEService$1;

    invoke-direct {v1, p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService$1;-><init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopAdvertising()V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/easyconn/ecsdk/ebt/EBTBLEService$2;

    invoke-direct {v1, p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService$2;-><init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public startService(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;Ljava/lang/Boolean;)I
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTService;->mType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->initService()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Lnet/easyconn/ecsdk/ebt/EBTService;->native_registerCallBack(Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;)I

    move-result p1

    return p1
.end method

.method public stopService()V
    .locals 2

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->stopAdvertising()V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTService;->mType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1}, Lnet/easyconn/ecsdk/ECSDK;->unbindDirectTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    return-void
.end method
