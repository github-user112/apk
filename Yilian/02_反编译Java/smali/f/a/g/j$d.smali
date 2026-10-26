.class public Lf/a/g/j$d;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/g/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/g/j;


# direct methods
.method public constructor <init>(Lf/a/g/j;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-object v0, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    .line 1
    iget-boolean v1, v0, Lf/a/g/j;->f:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    iget-object p1, v0, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_13

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    const/4 v4, 0x1

    if-eq v1, v4, :cond_e

    const-wide/16 v5, 0xbb8

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v1, v7, :cond_b

    const/4 v7, 0x5

    if-eq v1, v8, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    if-eq v1, v7, :cond_1

    goto/16 :goto_2

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BtHidManager MSG_CHECK_CONNECT_HID_CALLBACK"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    if-eqz v0, :cond_2

    const-string v1, "BtHidManager checkHidConnectCallBack mHidConnectionState = "

    .line 3
    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lf/a/g/j;->k:I

    invoke-static {v1, v2}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget v1, v0, Lf/a/g/j;->k:I

    if-nez v1, :cond_12

    iput v3, v0, Lf/a/g/j;->l:I

    iget-object v1, v0, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lf/a/g/j;->a()V

    goto/16 :goto_2

    :cond_2
    throw v2

    :cond_3
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "BtHidManager MSG_CHECK_CONNECT_HID_STATUS"

    .line 4
    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    .line 5
    iget v2, v1, Lf/a/g/j;->k:I

    if-ne v2, v4, :cond_12

    iput v3, v1, Lf/a/g/j;->l:I

    iget-object v2, v1, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Lf/a/g/j;->a()V

    goto/16 :goto_2

    .line 6
    :cond_4
    iget-object v1, v0, Lf/a/g/j;->a:Lf/a/g/h;

    iget-object v0, v0, Lf/a/g/j;->e:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v4, v1, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    iget-object v4, v1, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    if-nez v4, :cond_7

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const-string v4, "BtHidHelper connect deviceAddress = "

    invoke-static {v4, v0}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v4, v9}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, v1, Lf/a/g/h;->h:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, v1, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 8
    :goto_1
    iget-object v1, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    iget-object v1, v1, Lf/a/g/j;->c:Lf/a/g/j$d;

    const-wide/16 v9, 0x2710

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz v0, :cond_8

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BtHidManager connect success"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    iget-object v0, v0, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    :cond_8
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BtHidManager connect fail"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    iget-object v1, v0, Lf/a/g/j;->c:Lf/a/g/j$d;

    if-eqz v0, :cond_9

    invoke-virtual {v1, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 9
    :cond_9
    throw v2

    .line 10
    :cond_a
    throw v2

    .line 11
    :cond_b
    iget-object v1, v0, Lf/a/g/j;->a:Lf/a/g/h;

    invoke-virtual {v1}, Lf/a/g/h;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lf/a/g/j;->e:Ljava/lang/String;

    iget-object v0, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    iget-object v0, v0, Lf/a/g/j;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BtHidManager getConnectedBtDeviceAddress fail"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    iget-object v1, v0, Lf/a/g/j;->c:Lf/a/g/j$d;

    if-eqz v0, :cond_c

    invoke-virtual {v1, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 12
    :cond_c
    throw v2

    :cond_d
    const-string v0, "BtHidManager getConnectedBtDeviceAddress success, address is "

    .line 13
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    iget-object v1, v1, Lf/a/g/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    iget-object v0, v0, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/g/j$d;->a:Lf/a/g/j;

    iget-object v0, v0, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_e
    iget-object v0, v0, Lf/a/g/j;->a:Lf/a/g/h;

    .line 14
    iget-object v1, v0, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "BtHidHelper registerBluetoothHid start"

    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, v0, Lf/a/g/h;->k:Z

    iget-object v5, v0, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    iget-object v6, v0, Lf/a/g/h;->b:Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    const/4 v7, 0x0

    iget-object v8, v0, Lf/a/g/h;->a:Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-instance v10, Lf/a/g/i;

    invoke-direct {v10, v0}, Lf/a/g/i;-><init>(Lf/a/g/h;)V

    invoke-virtual/range {v5 .. v10}, Landroid/bluetooth/BluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z

    move-result v1

    if-nez v1, :cond_12

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "BtHidHelper registerApp fail"

    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, v0, Lf/a/g/h;->j:Z

    iput-boolean v3, v0, Lf/a/g/h;->k:Z

    goto :goto_2

    .line 15
    :cond_10
    iget-object v0, v0, Lf/a/g/j;->a:Lf/a/g/h;

    .line 16
    iget-object v1, v0, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    :try_start_0
    iget-object v2, v0, Lf/a/g/h;->d:Landroid/content/Context;

    iget-object v4, v0, Lf/a/g/h;->l:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0}, Lf/a/g/h;->b()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BtHidHelper.profileProxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "BtHidHelper.getProfileProxyHid"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_12
    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 18
    :cond_13
    throw v2
.end method
