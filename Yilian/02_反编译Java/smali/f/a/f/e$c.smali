.class public Lf/a/f/e$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/f/e;


# direct methods
.method public constructor <init>(Lf/a/f/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lf/a/f/e$c;->a:Lf/a/f/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "BleTransManager handleMessage  msg.what = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/4 v4, 0x0

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lf/a/f/e$c;->a:Lf/a/f/e;

    .line 1
    iget-object v2, v0, Lf/a/f/e;->e:Landroid/bluetooth/BluetoothGattServer;

    if-nez v2, :cond_1

    iget-object v2, v0, Lf/a/f/e;->a:Landroid/content/Context;

    const-string v4, "bluetooth"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    iget-object v4, v0, Lf/a/f/e;->a:Landroid/content/Context;

    iget-object v5, v0, Lf/a/f/e;->m:Landroid/bluetooth/BluetoothGattServerCallback;

    invoke-virtual {v2, v4, v5}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v2

    iput-object v2, v0, Lf/a/f/e;->e:Landroid/bluetooth/BluetoothGattServer;

    :cond_1
    iget-object v2, v0, Lf/a/f/e;->e:Landroid/bluetooth/BluetoothGattServer;

    if-nez v2, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BleTransManager openGattServer is failed"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    new-instance v2, Landroid/bluetooth/BluetoothGattService;

    const-string v4, "0000b360-d6d8-c7ec-bdf0-eab1bfc6bcbc"

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v4, v0, Lf/a/f/e;->a:Landroid/content/Context;

    invoke-static {v4}, Lf/a/i/m/g;->t(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "0000b364-d6d8-c7ec-bdf0-eab1bfc6bcbc"

    goto :goto_0

    :cond_3
    const-string v4, "0000b362-d6d8-c7ec-bdf0-eab1bfc6bcbc"

    :goto_0
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    const/16 v5, 0x1c

    const/16 v6, 0x11

    invoke-direct {v1, v4, v5, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    iput-object v1, v0, Lf/a/f/e;->f:Landroid/bluetooth/BluetoothGattCharacteristic;

    new-instance v4, Landroid/bluetooth/BluetoothGattDescriptor;

    const/16 v5, 0x2902

    invoke-static {v5}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    iget-object v1, v0, Lf/a/f/e;->f:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    iget-object v1, v0, Lf/a/f/e;->e:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattServer;->clearServices()V

    iget-object v0, v0, Lf/a/f/e;->e:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    goto/16 :goto_2

    .line 2
    :cond_4
    iget-object v0, p0, Lf/a/f/e$c;->a:Lf/a/f/e;

    if-eqz v0, :cond_7

    .line 3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BleTransManager error, current SDK version is not supported"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    iget-object v4, v0, Lf/a/f/e;->d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v4, :cond_6

    iget-object v4, v0, Lf/a/f/e;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v4

    iput-object v4, v0, Lf/a/f/e;->d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    :cond_6
    new-instance v4, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v2

    new-instance v4, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    new-instance v5, Landroid/os/ParcelUuid;

    const/16 v6, 0x6967

    invoke-static {v6}, Lnet/easyconn/ecsdk/ebt/BleUuidUtils;->fromShortValue(I)Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v4, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v4

    const/16 v5, 0xff

    .line 4
    invoke-virtual {v0}, Lf/a/f/e;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BleTransManager  getManufacturerData deviceName = "

    invoke-static {v7, v6}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 5
    invoke-virtual {v4, v5, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v1

    new-instance v3, Lf/a/f/d;

    invoke-direct {v3, v0}, Lf/a/f/d;-><init>(Lf/a/f/e;)V

    iput-object v3, v0, Lf/a/f/e;->g:Landroid/bluetooth/le/AdvertiseCallback;

    iget-object v0, v0, Lf/a/f/e;->d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {v0, v2, v1, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    goto :goto_2

    :cond_7
    throw v4

    .line 6
    :cond_8
    iget-object v0, p0, Lf/a/f/e$c;->a:Lf/a/f/e;

    if-eqz v0, :cond_9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BleTransManager openBluetooth start"

    .line 7
    invoke-static {v3, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lf/a/f/e;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 8
    iget-object v0, p0, Lf/a/f/e$c;->a:Lf/a/f/e;

    iget-object v0, v0, Lf/a/f/e;->b:Lf/a/f/e$c;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 9
    :cond_9
    throw v4

    .line 10
    :cond_a
    iget-object v0, p0, Lf/a/f/e$c;->a:Lf/a/f/e;

    .line 11
    iget-object v0, v0, Lf/a/f/e;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    new-array v0, v1, [Ljava/lang/Object;

    const-string v4, "BleTransManager checkBluetooth Open BT not open"

    invoke-static {v4, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    const/4 v0, 0x1

    .line 12
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BleTransManager checkBluetooth isBtOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lf/a/f/e$c;->a:Lf/a/f/e;

    iget-object v4, v4, Lf/a/f/e;->b:Lf/a/f/e$c;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_c

    iget-object v0, p0, Lf/a/f/e$c;->a:Lf/a/f/e;

    iget-object v0, v0, Lf/a/f/e;->b:Lf/a/f/e$c;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lf/a/f/e$c;->a:Lf/a/f/e;

    iget-object v0, v0, Lf/a/f/e;->b:Lf/a/f/e$c;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
