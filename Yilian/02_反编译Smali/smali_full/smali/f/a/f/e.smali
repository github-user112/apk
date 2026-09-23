.class public Lf/a/f/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/IUsbDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/f/e$c;,
        Lf/a/f/e$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lf/a/f/e$c;

.field public c:Landroid/bluetooth/BluetoothAdapter;

.field public d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field public e:Landroid/bluetooth/BluetoothGattServer;

.field public f:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public g:Landroid/bluetooth/le/AdvertiseCallback;

.field public h:Landroid/bluetooth/BluetoothDevice;

.field public i:Lf/a/f/e$b;

.field public j:[B

.field public final k:Ljava/lang/Object;

.field public l:I

.field public m:Landroid/bluetooth/BluetoothGattServerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/a/f/e;->k:Ljava/lang/Object;

    new-instance v0, Lf/a/f/e$a;

    invoke-direct {v0, p0}, Lf/a/f/e$a;-><init>(Lf/a/f/e;)V

    iput-object v0, p0, Lf/a/f/e;->m:Landroid/bluetooth/BluetoothGattServerCallback;

    iput-object p1, p0, Lf/a/f/e;->a:Landroid/content/Context;

    const/4 p1, 0x0

    new-array v0, p1, [B

    iput-object v0, p0, Lf/a/f/e;->j:[B

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ble_trans_manager_msg_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lf/a/f/e$c;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lf/a/f/e$c;-><init>(Lf/a/f/e;Landroid/os/Looper;)V

    iput-object v1, p0, Lf/a/f/e;->b:Lf/a/f/e$c;

    const/16 v0, 0x14

    iput v0, p0, Lf/a/f/e;->l:I

    const-string v0, "BleTransManager BLE_TRANS_MAX_LENGTH:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lf/a/f/e;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lf/a/f/e;->c:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "BleTransManager checkBluetoothOpen could not init BluetoothAdapter"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/a/f/e;->b:Lf/a/f/e$c;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lf/a/f/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 1
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 2
    invoke-virtual {v0}, Lf/a/i/i/q;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v1, "Carbit-"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lf/a/f/e;->i:Lf/a/f/e$b;

    if-eqz p1, :cond_7

    check-cast p1, Lf/a/i/i/k;

    if-eqz p1, :cond_1

    const-string v0, "EasyConnectService onPhoneBleConnected"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p1, Lf/a/i/i/k;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lf/a/i/i/k;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BLE_ENCRYPT:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lf/a/i/i/k;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BLE:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    :goto_0
    iget-object p1, p1, Lf/a/i/i/k;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->r:Lf/a/f/e;

    invoke-virtual {v0, v1, p1}, Lf/a/i/i/q;->y(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)V

    goto :goto_2

    :cond_1
    throw v0

    .line 2
    :cond_2
    iget-object p1, p0, Lf/a/f/e;->i:Lf/a/f/e$b;

    if-eqz p1, :cond_7

    check-cast p1, Lf/a/i/i/k;

    if-eqz p1, :cond_6

    const-string v1, "EasyConnectService onPhoneBleDisConnected"

    .line 3
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p1, Lf/a/i/i/k;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->t(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x3f

    iget-object p1, p1, Lf/a/i/i/k;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v1, :cond_4

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BLE_ENCRYPT:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    throw v0

    .line 5
    :cond_4
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BLE:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eqz p1, :cond_5

    :goto_1
    const-string v0, "BleAP unBindBleApDevice"

    .line 6
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p1, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_5
    throw v0

    .line 7
    :cond_6
    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method public c([B)V
    .locals 10

    iget-object v0, p0, Lf/a/f/e;->f:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/f/e;->e:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/f/e;->h:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "BleTransManager  sendDataToPhone data: "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    const/4 v5, 0x2

    if-ge v3, v4, :cond_2

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v5

    new-array v4, v2, [B

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v2, :cond_3

    mul-int/lit8 v7, v5, 0x2

    aget-char v8, v3, v7

    const-string v9, "0123456789ABCDEF"

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v6

    aget-char v6, v3, v7

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/f/e;->f:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    iget-object p1, p0, Lf/a/f/e;->e:Landroid/bluetooth/BluetoothGattServer;

    iget-object v0, p0, Lf/a/f/e;->h:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lf/a/f/e;->f:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0, v2, v6}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "BleTransManager  sendDataToPhone end"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "BleTransManager  dataCharacteristic or mBtGattServer or mDevice is null, return"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BleTransManager  IUsbDevice close"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public open()I
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BleTransManager  IUsbDevice open"

    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 4

    iget-object v0, p0, Lf/a/f/e;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/a/f/e;->j:[B

    array-length v1, v1

    if-le p2, v1, :cond_0

    iget-object p2, p0, Lf/a/f/e;->j:[B

    array-length p2, p2

    :cond_0
    if-lez p2, :cond_2

    iget-object v1, p0, Lf/a/f/e;->j:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lf/a/f/e;->j:[B

    array-length p1, p1

    sub-int/2addr p1, p2

    new-array v1, p1, [B

    if-lez p1, :cond_1

    iget-object v3, p0, Lf/a/f/e;->j:[B

    invoke-static {v3, p2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Lf/a/f/e;->j:[B

    :cond_2
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;I)I
    .locals 5

    const-string v0, "BleTransManager  IUsbDevice write data : "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, p2

    :goto_0
    :try_start_0
    iget v2, p0, Lf/a/f/e;->l:I

    if-le v0, v2, :cond_0

    iget v2, p0, Lf/a/f/e;->l:I

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BleTransManager write len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v2, :cond_1

    goto :goto_2

    :cond_1
    new-array v3, v2, [B

    invoke-virtual {p1, v3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v2

    invoke-virtual {p0, v3}, Lf/a/f/e;->c([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return p2
.end method
