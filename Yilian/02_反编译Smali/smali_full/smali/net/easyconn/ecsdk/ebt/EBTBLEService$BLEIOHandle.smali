.class public Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/IUsbDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ebt/EBTBLEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BLEIOHandle"
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;Lnet/easyconn/ecsdk/ebt/EBTBLEService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;-><init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public open()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B

    move-result-object v0

    array-length v0, v0

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p2}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B

    move-result-object p2

    array-length p2, p2

    :cond_0
    if-lez p2, :cond_2

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p1}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B

    move-result-object p1

    array-length p1, p1

    sub-int/2addr p1, p2

    new-array v0, p1, [B

    if-lez p1, :cond_1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {v2}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$400(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)[B

    move-result-object v2

    invoke-static {v2, p2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p1, v0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$402(Lnet/easyconn/ecsdk/ebt/EBTBLEService;[B)[B

    :cond_2
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;I)I
    .locals 7

    move v0, p2

    :goto_0
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    if-gtz v1, :cond_1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {p1, v4}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$502(Lnet/easyconn/ecsdk/ebt/EBTBLEService;Z)Z

    goto :goto_2

    :cond_1
    new-array v5, v1, [B

    invoke-virtual {p1, v5, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    iget-object v1, v1, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mDataCharacter:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    iget-object v1, v1, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mDataCharacter:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {v1}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$600(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v1

    iget-object v5, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$BLEIOHandle;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    iget-object v6, v5, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v5, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->mDataCharacter:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v6, v5, v4}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    const-string v4, "ecsdk:ebtservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCharacteristicChanged  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return p2
.end method
