.class public final La/a/a/a/m/m/c/c;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:La/a/a/a/c;

.field public final c:Lc/k/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/k/a/b<",
            "La/a/a/a/a/j/f/b;",
            "Lc/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/hardware/usb/UsbManager;

.field public final e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Lc/a;


# direct methods
.method public constructor <init>(La/a/a/a/c;Lc/k/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/c;",
            "Lc/k/a/b<",
            "-",
            "La/a/a/a/a/j/f/b;",
            "Lc/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/c/c;->b:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/m/m/c/c;->c:Lc/k/a/b;

    invoke-interface {p1}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "usb"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, La/a/a/a/m/m/c/c;->d:Landroid/hardware/usb/UsbManager;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/c/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, La/a/a/a/m/m/c/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, La/a/a/a/m/m/c/c$a;

    invoke-direct {p1, p0}, La/a/a/a/m/m/c/c$a;-><init>(La/a/a/a/m/m/c/c;)V

    invoke-static {p1}, La/d/a/b;->b(Lc/k/a/a;)Lc/a;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/m/m/c/c;->g:Lc/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-object v0, v1, La/a/a/a/m/m/c/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, La/a/a/a/m/m/c/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    const-string v5, "UsbAccessoryScanner deviceList"

    aput-object v5, v0, v2

    iget-object v5, v1, La/a/a/a/m/m/c/c;->d:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const-string v5, "CarLife_SDK"

    const-string v7, "tag"

    .line 1
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "args"

    invoke-static {v0, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v9, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    const/4 v10, 0x3

    if-nez v9, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    array-length v11, v0

    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v10, v5, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_1
    iget-object v0, v1, La/a/a/a/m/m/c/c;->d:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    const/4 v11, 0x6

    if-nez v0, :cond_3

    new-array v12, v6, [Ljava/lang/Object;

    const-string v13, "this device is null"

    aput-object v13, v12, v2

    .line 5
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v13, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v13, :cond_2

    goto :goto_4

    .line 7
    :cond_2
    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v10, v5, v12}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 8
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v12

    if-ne v6, v12, :cond_5

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v12

    const-string v13, "device.getInterface(STORAGE_INTERFACE_ID)"

    invoke-static {v12, v13}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x8

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v14

    if-ne v13, v14, :cond_5

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v13

    if-ne v11, v13, :cond_5

    const/16 v13, 0x50

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v12

    if-ne v13, v12, :cond_5

    new-array v12, v6, [Ljava/lang/Object;

    const-string v13, "this device is mass storage 2"

    aput-object v13, v12, v2

    .line 9
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v13, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v13, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v10, v5, v12}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    invoke-static {v0}, La/a/a/a/l/d;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    :cond_7
    iget-object v12, v1, La/a/a/a/m/m/c/c;->d:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v12, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v12

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "UsbAccessoryScanner deal with "

    aput-object v14, v13, v2

    aput-object v0, v13, v6

    const-string v14, " has permission "

    aput-object v14, v13, v4

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v10

    .line 13
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v14, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v14, :cond_8

    goto :goto_6

    .line 15
    :cond_8
    array-length v15, v13

    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v14, v10, v5, v13}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    if-eqz v12, :cond_16

    const-string v12, "device"

    .line 16
    invoke-static {v0, v12}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v12, v4, [Ljava/lang/Object;

    const-string v13, "UsbAccessoryScanner start openAccessory isStopped: "

    aput-object v13, v12, v2

    .line 17
    iget-object v13, v1, La/a/a/a/m/m/c/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    aput-object v13, v12, v6

    .line 18
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v13, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v13, :cond_9

    goto :goto_7

    .line 20
    :cond_9
    invoke-static {v12, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v10, v5, v12}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :goto_7
    iget-object v12, v1, La/a/a/a/m/m/c/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-nez v12, :cond_14

    .line 22
    iget-object v12, v1, La/a/a/a/m/m/c/c;->g:Lc/a;

    invoke-interface {v12}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const-string v13, "openAccessory exception: "

    if-nez v12, :cond_f

    .line 23
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x12

    if-lt v12, v14, :cond_f

    new-instance v12, La/a/a/a/m/m/c/b;

    iget-object v14, v1, La/a/a/a/m/m/c/c;->b:La/a/a/a/c;

    invoke-direct {v12, v14, v0}, La/a/a/a/m/m/c/b;-><init>(La/a/a/a/c;Landroid/hardware/usb/UsbDevice;)V

    :try_start_0
    new-array v0, v6, [Ljava/lang/Object;

    const-string v14, "UsbAccessoryCommunicator openAccessory"

    aput-object v14, v0, v2

    .line 24
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v14, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v14, :cond_a

    goto :goto_8

    .line 26
    :cond_a
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v10, v5, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :goto_8
    iget-object v0, v12, La/a/a/a/m/m/c/b;->b:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, v12, La/a/a/a/m/m/c/b;->d:Landroid/hardware/usb/UsbInterface;

    iget-object v0, v12, La/a/a/a/m/m/c/b;->c:Landroid/hardware/usb/UsbManager;

    iget-object v14, v12, La/a/a/a/m/m/c/b;->b:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v14}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, v12, La/a/a/a/m/m/c/b;->e:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    iget-object v14, v12, La/a/a/a/m/m/c/b;->d:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v14, v6}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    new-instance v0, La/a/a/a/m/m/c/d;

    iget-object v14, v12, La/a/a/a/m/m/c/b;->b:Landroid/hardware/usb/UsbDevice;

    iget-object v15, v12, La/a/a/a/m/m/c/b;->e:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v15}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v14, v15}, La/a/a/a/m/m/c/d;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    invoke-virtual {v0}, La/a/a/a/m/m/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v12, v2}, La/a/a/a/m/m/c/b;->d(Z)V

    new-array v0, v6, [Ljava/lang/Object;

    const-string v14, "UsbAccessoryCommunicator openAccessory switch to aoa"

    aput-object v14, v0, v2

    .line 28
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v14, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v14, :cond_b

    goto :goto_a

    .line 30
    :cond_b
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v10, v5, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_c
    const/4 v0, 0x1

    goto :goto_b

    :catch_0
    move-exception v0

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v13, v14, v2

    aput-object v0, v14, v6

    .line 31
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_d

    goto :goto_9

    .line 33
    :cond_d
    invoke-static {v14, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v11, v5, v13}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :goto_9
    invoke-virtual {v12, v6}, La/a/a/a/m/m/c/b;->d(Z)V

    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_14

    new-array v0, v6, [Ljava/lang/Object;

    const-string v11, "UsbAccessoryScanner1 openAccessory success"

    aput-object v11, v0, v2

    .line 35
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v11, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v11, :cond_e

    goto/16 :goto_f

    .line 37
    :cond_e
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v10, v5, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 38
    :cond_f
    new-instance v12, La/a/a/a/m/m/c/e/c;

    iget-object v14, v1, La/a/a/a/m/m/c/c;->b:La/a/a/a/c;

    invoke-direct {v12, v14, v0}, La/a/a/a/m/m/c/e/c;-><init>(La/a/a/a/c;Landroid/hardware/usb/UsbDevice;)V

    .line 39
    :try_start_1
    iget-object v0, v12, La/a/a/a/m/m/c/e/c;->b:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, v12, La/a/a/a/m/m/c/e/c;->e:Landroid/hardware/usb/UsbInterface;

    iget-object v0, v12, La/a/a/a/m/m/c/e/c;->c:Landroid/hardware/usb/UsbManager;

    iget-object v14, v12, La/a/a/a/m/m/c/e/c;->b:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v14}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, v12, La/a/a/a/m/m/c/e/c;->f:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    iget-object v14, v12, La/a/a/a/m/m/c/e/c;->e:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v14, v6}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    new-instance v0, La/a/a/a/m/m/c/d;

    iget-object v14, v12, La/a/a/a/m/m/c/e/c;->b:Landroid/hardware/usb/UsbDevice;

    iget-object v15, v12, La/a/a/a/m/m/c/e/c;->f:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v15}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v14, v15}, La/a/a/a/m/m/c/d;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    invoke-virtual {v0}, La/a/a/a/m/m/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v12}, La/a/a/a/m/m/c/e/c;->a()V

    goto :goto_d

    :cond_10
    iget-object v0, v12, La/a/a/a/m/m/c/e/c;->d:La/a/a/a/m/m/c/e/d;

    iget-object v14, v12, La/a/a/a/m/m/c/e/c;->f:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v14}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    iget-object v15, v12, La/a/a/a/m/m/c/e/c;->e:Landroid/hardware/usb/UsbInterface;

    invoke-static {v15}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "connection"

    invoke-static {v14, v10}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "interfaze"

    invoke-static {v15, v10}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v0, La/a/a/a/m/m/c/e/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v10, :cond_11

    iget-object v10, v0, La/a/a/a/m/m/c/e/d;->c:Landroid/hardware/usb/UsbInterface;

    if-nez v10, :cond_11

    iput-object v14, v0, La/a/a/a/m/m/c/e/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v15, v0, La/a/a/a/m/m/c/e/d;->c:Landroid/hardware/usb/UsbInterface;

    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v10, "can not attach to a pool which already attached"

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v13, v10, v2

    aput-object v0, v10, v6

    .line 41
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_12

    goto :goto_c

    .line 43
    :cond_12
    invoke-static {v10, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v11, v5, v10}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_c
    invoke-virtual {v12}, La/a/a/a/m/m/c/e/c;->a()V

    :goto_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_14

    new-array v0, v6, [Ljava/lang/Object;

    const-string v10, "UsbAccessoryScanner2 openAccessory success"

    aput-object v10, v0, v2

    .line 45
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v10, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v10, :cond_13

    goto :goto_f

    .line 47
    :cond_13
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v5, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :goto_f
    iget-object v0, v1, La/a/a/a/m/m/c/c;->c:Lc/k/a/b;

    invoke-interface {v0, v12}, Lc/k/a/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v11, 0x3

    goto :goto_11

    :cond_14
    new-array v0, v6, [Ljava/lang/Object;

    const-string v10, "UsbAccessoryScanner openAccessory failed"

    aput-object v10, v0, v2

    .line 49
    invoke-static {v5, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v10, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v10, :cond_15

    const/4 v11, 0x3

    goto :goto_10

    .line 51
    :cond_15
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v5, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_17

    .line 52
    iget-object v0, v1, La/a/a/a/m/m/c/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v3, 0x1

    goto :goto_12

    :cond_16
    const/4 v11, 0x3

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v10

    const/16 v12, 0x5ac

    if-eq v10, v12, :cond_17

    iget-object v10, v1, La/a/a/a/m/m/c/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v10, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_17
    const/4 v10, 0x3

    goto/16 :goto_2

    :cond_18
    :goto_12
    if-eqz v3, :cond_19

    return-void

    .line 53
    :cond_19
    iget-object v0, v1, La/a/a/a/m/m/c/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_1a

    goto :goto_13

    :cond_1a
    # --- patchL: 5 秒内只允许弹一次 USB 权限窗 ---
    invoke-static {}, La/a/a/a/m/m/c/f;->a()Z

    move-result v16

    if-eqz v16, :goto_13

    new-instance v4, Landroid/content/Intent;

    iget-object v5, v1, La/a/a/a/m/m/c/c;->b:La/a/a/a/c;

    invoke-interface {v5}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/baidu/carlife/sdk/UsbPermissionProxyActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "usb_device"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v1, La/a/a/a/m/m/c/c;->b:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_13
    const-wide/16 v4, 0x3e8

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0
.end method
