.class public Lf/a/f/e$a;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/f/e;


# direct methods
.method public constructor <init>(Lf/a/f/e;)V
    .locals 0

    iput-object p1, p0, Lf/a/f/e$a;->a:Lf/a/f/e;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "BleTransManager  onCharacteristicReadRequest"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 6

    const-string p3, "BleTransManager  onCharacteristicWriteRequest value : "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p5, p4, [Ljava/lang/Object;

    invoke-static {p3, p5}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lf/a/f/e$a;->a:Lf/a/f/e;

    .line 1
    iget-object v0, p3, Lf/a/f/e;->e:Landroid/bluetooth/BluetoothGattServer;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, p6

    move-object v5, p7

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    iget-object p2, p0, Lf/a/f/e$a;->a:Lf/a/f/e;

    iput-object p1, p2, Lf/a/f/e;->h:Landroid/bluetooth/BluetoothDevice;

    .line 3
    iget-object p1, p2, Lf/a/f/e;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    array-length p3, p7

    iget-object p5, p2, Lf/a/f/e;->j:[B

    array-length p5, p5

    add-int/2addr p3, p5

    new-array p3, p3, [B

    iget-object p5, p2, Lf/a/f/e;->j:[B

    iget-object p6, p2, Lf/a/f/e;->j:[B

    array-length p6, p6

    invoke-static {p5, p4, p3, p4, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p5, p2, Lf/a/f/e;->j:[B

    array-length p5, p5

    array-length p6, p7

    invoke-static {p7, p4, p3, p5, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p2, Lf/a/f/e;->j:[B

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "BleTransManager  BluetoothProfile.STATE_CONNECTED"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/f/e$a;->a:Lf/a/f/e;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lf/a/f/e;->b(Z)V

    goto :goto_0

    :cond_1
    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "BleTransManager  BluetoothProfile.STATE_DISCONNECTED"

    invoke-static {p3, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lf/a/f/e$a;->a:Lf/a/f/e;

    invoke-virtual {p2, p1}, Lf/a/f/e;->b(Z)V

    :goto_0
    return-void
.end method
