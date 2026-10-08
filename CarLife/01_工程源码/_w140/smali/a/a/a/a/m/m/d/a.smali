.class public final synthetic La/a/a/a/m/m/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:La/a/a/a/m/m/d/d;


# direct methods
.method public synthetic constructor <init>(La/a/a/a/m/m/d/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/a;->b:La/a/a/a/m/m/d/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    # --- 1.20: 零参静态日志, 不再 new-array/aput-object (避免 verifier 合并点冲突) ---
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtStage1Entry()V

    iget-object v2, v1, La/a/a/a/m/m/d/a;->b:La/a/a/a/m/m/d/d;

    const-string v0, "this$0"

    .line 1
    invoke-static {v2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, La/a/a/a/m/m/d/d;->b:I

    .line 3
    invoke-virtual {v2}, La/a/a/a/m/m/d/d;->b()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1

    # --- 1.22: 蓝牙未开启 -> 交给 BtGuard 等待+自愈, 不再一次性跳过 ---
    #      v0=原结论(1=准备跳过)  v1=this(实现 Runnable, 重试时原样重跑)
    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->onSkipDecision(ZLjava/lang/Runnable;)Z

    move-result v0

    # --- patchB: 蓝牙未开启则主动请求开启, 并置等待标志 h=true,
    # ---          使系统"蓝牙已开启"广播(STATE_ON)能真正触发 1s 后重试
    invoke-virtual {v2}, La/a/a/a/m/m/d/d;->b()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-eqz v5, :bt_auto_enable

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :bt_auto_enable

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const/4 v6, 0x1

    iput-boolean v6, v2, La/a/a/a/m/m/d/d;->h:Z

    :bt_auto_enable

    const-string v5, "args"

    const-string v6, "tag"

    const-string v7, "CarLife_SDK"

    const/4 v8, 0x6

    if-eqz v0, :cond_4

    new-array v0, v4, [Ljava/lang/Object;

    const-string v9, "bluetoothAdapter?.isEnabled: "

    invoke-static {v9}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, La/a/a/a/m/m/d/d;->b()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", so return"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 4
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_3

    goto/16 :goto_15

    .line 6
    :cond_3
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v8, v7, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 7
    :cond_4
    iget-object v0, v2, La/a/a/a/m/m/d/d;->f:Lc/a;

    invoke-interface {v0}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "connected to "

    const-string v9, "socket"

    const-string v10, "00001101-0000-1000-8000-00805F9B34FB"

    const-string v11, "BluetoothDeviceDiscover connect device exception "

    const/4 v13, 0x2

    if-eqz v0, :cond_d

    .line 8
    invoke-virtual {v2}, La/a/a/a/m/m/d/d;->b()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v15

    .line 9
    iget-object v12, v2, La/a/a/a/m/m/d/d;->f:Lc/a;

    invoke-interface {v12}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 10
    invoke-static {v15, v12}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    :goto_4
    move-object v0, v14

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_5
    if-nez v0, :bt_have_target

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtNoTarget()V

    :bt_have_target
    if-eqz v0, :cond_1b

    :try_start_0
    new-array v12, v13, [Ljava/lang/Object;

    const-string v14, "start connect to targetDevice: "

    aput-object v14, v12, v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v4

    .line 11
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v14, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v14, :cond_9

    goto :goto_6

    .line 13
    :cond_9
    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const/4 v15, 0x3

    invoke-virtual {v14, v15, v7, v12}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :goto_6
    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothSocket;->connect()V

    invoke-static {v10, v9}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-array v9, v13, [Ljava/lang/Object;

    aput-object v8, v9, v3

    .line 15
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v4

    .line 16
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_a

    goto :goto_8

    .line 18
    :cond_a
    invoke-static {v9, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9, v7, v8}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    :goto_7
    new-array v8, v13, [Ljava/lang/Object;

    aput-object v11, v8, v3

    aput-object v0, v8, v4

    .line 19
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_b

    goto :goto_8

    .line 21
    :cond_b
    invoke-static {v8, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v7, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    if-eqz v10, :bt_conn_fail

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtConnected()V

    goto :bt_conn_log_end

    :bt_conn_fail
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtConnectFail()V

    :bt_conn_log_end
    if-eqz v10, :cond_c

    .line 22
    new-instance v0, La/a/a/a/a/j/f/a;

    invoke-direct {v0, v10, v2}, La/a/a/a/a/j/f/a;-><init>(Landroid/bluetooth/BluetoothSocket;La/a/a/a/a/j/f/b$a;)V

    iput-object v0, v2, La/a/a/a/m/m/d/d;->g:La/a/a/a/a/j/f/a;

    iget-object v2, v2, La/a/a/a/m/m/d/d;->d:La/a/a/a/m/m/d/d$a;

    if-nez v2, :cond_19

    goto/16 :goto_15

    :cond_c
    iget-boolean v0, v2, La/a/a/a/m/m/d/d;->h:Z

    if-eqz v0, :cond_1b

    goto/16 :goto_14

    :cond_d
    invoke-virtual {v2}, La/a/a/a/m/m/d/d;->b()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_9
    const/4 v0, 0x0

    goto :goto_d

    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v14, "it"

    invoke-static {v0, v14}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "isConnected"

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v14, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c

    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    const/4 v1, 0x2

    new-array v14, v1, [Ljava/lang/Object;

    const-string v15, "BluetoothDeviceDiscover isConnected exception "

    aput-object v15, v14, v3

    const/4 v15, 0x1

    aput-object v0, v14, v15

    .line 24
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_11

    goto :goto_b

    .line 26
    :cond_11
    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v14, 0x6

    invoke-virtual {v0, v14, v7, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_12

    .line 27
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object/from16 v1, p0

    goto :goto_a

    :cond_13
    move-object v0, v4

    :goto_d
    if-eqz v0, :cond_14

    goto :goto_e

    :cond_14
    sget-object v0, Lc/h/b;->b:Lc/h/b;

    :goto_e
    move-object v1, v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move-object v3, v0

    :goto_f
    const/4 v12, 0x0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const/4 v13, 0x2

    :try_start_3
    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "start connect to bondedDevices: "

    aput-object v14, v13, v12

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 28
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v14, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v14, :cond_15

    goto :goto_10

    :cond_15
    const/4 v15, 0x2

    .line 30
    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    const/4 v15, 0x3

    invoke-virtual {v14, v15, v7, v13}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    const-string v13, "connectedDevice"

    .line 31
    invoke-static {v0, v13}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v13

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothSocket;->connect()V

    invoke-static {v13, v9}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v3, 0x2

    :try_start_4
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v12

    .line 33
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v3, v14

    .line 34
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_16

    goto :goto_11

    :cond_16
    const/4 v14, 0x2

    .line 36
    invoke-static {v3, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v7, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_11
    move-object v3, v13

    goto :goto_13

    :catch_3
    move-exception v0

    move-object v3, v13

    goto :goto_12

    :catch_4
    move-exception v0

    :goto_12
    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v11, v14, v12

    const/4 v12, 0x1

    aput-object v0, v14, v12

    .line 37
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_17

    goto :goto_f

    .line 39
    :cond_17
    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x6

    invoke-virtual {v0, v13, v7, v12}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_18
    :goto_13
    if-eqz v3, :cond_1a

    .line 40
    new-instance v0, La/a/a/a/a/j/f/a;

    invoke-direct {v0, v3, v2}, La/a/a/a/a/j/f/a;-><init>(Landroid/bluetooth/BluetoothSocket;La/a/a/a/a/j/f/b$a;)V

    iput-object v0, v2, La/a/a/a/m/m/d/d;->g:La/a/a/a/a/j/f/a;

    iget-object v2, v2, La/a/a/a/m/m/d/d;->d:La/a/a/a/m/m/d/d$a;

    if-nez v2, :cond_19

    goto :goto_15

    :cond_19
    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, La/a/a/a/m/m/d/d$a;->b(La/a/a/a/a/j/f/a;)V

    goto :goto_15

    :cond_1a
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :bt_have_bonded

    # --- 1.20: 无已配对设备 -> 提示 + 每 5s 自愈重试 ---
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtNoBonded()V

    iget-object v0, v2, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v12, v2, La/a/a/a/m/m/d/d;->j:La/a/a/a/m/m/d/d$c;

    const-wide/16 v13, 0x1388

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :cond_1b

    :bt_have_bonded
    iget-boolean v0, v2, La/a/a/a/m/m/d/d;->h:Z

    # --- 1.20: 恢复原语义 —— h==0 直接结束, h!=0 才落到 :goto_14 重试 ---
    # 1.18 这里写成 if-eqz v0, :bt_all_failed 且紧跟着 :bt_all_failed,
    # 等于两条路径都落进来, 还多了 goto :cond_1b 把重试整个跳过。
    if-nez v0, :cond_1b

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logBtAllFailed()V

    :goto_14
    iget-object v0, v2, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v2, La/a/a/a/m/m/d/d;->j:La/a/a/a/m/m/d/d$c;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    :goto_15
    return-void
.end method
