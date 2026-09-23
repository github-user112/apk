.class public Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ebt/EBTBLEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "eccBluetoothGattServerCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;Lnet/easyconn/ecsdk/ebt/EBTBLEService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;-><init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$600(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onCharacteristicReadRequest characteristic: "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", characteristic value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ecsdk:ebtservice"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    iget-object p3, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p3}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$600(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iget-object p3, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p3}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$900(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p4}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$900(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Ljava/lang/String;

    move-result-object p4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    array-length p4, p4

    sub-int/2addr p4, p3

    if-lez p4, :cond_2

    iget-object p4, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p4}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$600(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iget-object p4, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p4}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$900(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Ljava/lang/String;

    move-result-object p4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p4}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$600(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    :goto_0
    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 7

    invoke-super/range {p0 .. p7}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V

    :try_start_0
    const-string p4, "ecsdk:ebtservice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCharacteristicWriteRequest requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "characteristic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", offset: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", value: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p7

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",responseNeeded:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    monitor-enter p0

    :try_start_1
    array-length p3, p7

    iget-object p4, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p4}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B

    move-result-object p4

    array-length p4, p4

    add-int/2addr p3, p4

    new-array p3, p3, [B

    iget-object p4, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p4}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B

    move-result-object p4

    iget-object p6, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p6}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B

    move-result-object p6

    array-length p6, p6

    const/4 v0, 0x0

    invoke-static {p4, v0, p3, v0, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p4}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B

    move-result-object p4

    array-length p4, p4

    array-length p6, p7

    invoke-static {p7, v0, p3, p4, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p4, p3}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$402(Lnet/easyconn/ecsdk/ebt/EBTBLEService;[B)[B

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p5, :cond_0

    iget-object p3, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p3}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$600(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v1

    new-array v6, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChange status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", newState: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " deviceName: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ecsdk:ebtservice"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto :goto_2

    :cond_0
    const-string p2, "BluetoothProfile.STATE_CONNECTED bondState: "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ecsdk:ebtservice"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 p3, 0xa

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 p3, 0xc

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p2}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$700(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Ljava/util/Map;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p3}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$700(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    iget-object p2, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    iput-object p1, p2, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback$1;

    invoke-direct {p2, p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback$1;-><init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback$2;

    invoke-direct {p2, p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback$2;-><init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDescriptorReadRequest requestId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", offset: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", descriptor: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ecsdk:ebtservice"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p1}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$600(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattServer;

    return-void
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    return-void
.end method

.method public onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onExecuteWrite requestId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ecsdk:ebtservice"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMtuChanged mtu: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ecsdk:ebtservice"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    const-string p1, "onNotificationSent status: "

    const-string v0, " value = "

    invoke-static {p1, p2, v0}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    iget-object p2, p2, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mDataCharacter:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ecsdk:ebtservice"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V

    const-string v0, "onServiceAdded status: "

    const-string v1, ", service: "

    invoke-static {v0, p1, v1}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ecsdk:ebtservice"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p2}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$1006(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)I

    move-result p2

    if-gtz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "onServiceAdded Adding Service failed.."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p1}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$600(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object p1

    iget-object p2, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p2}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$1100(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    :goto_0
    return-void
.end method
