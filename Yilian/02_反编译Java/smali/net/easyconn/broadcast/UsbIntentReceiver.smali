.class public Lnet/easyconn/broadcast/UsbIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final ACTION_USB_DEVICE_PERMISSION:Ljava/lang/String; = "ACTION_USB_DEVICE_PERMISSION"

.field public static isPermissionRequesting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePermissionResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lnet/easyconn/broadcast/UsbIntentReceiver;->isPermissionRequesting:Z

    monitor-enter p0

    :try_start_0
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    const-string v2, "permission"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v1}, Lnet/easyconn/broadcast/UsbIntentReceiver;->startActivity(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public handleUsbDeviceAttached(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleUsbDeviceDetached(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    const-string v1, "usb"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7e02a835

    const-string v5, "ACTION_USB_DEVICE_PERMISSION"

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v3, v4, :cond_2

    const v4, -0x7298140c

    if-eq v3, v4, :cond_1

    const v4, -0x5fdc9a67

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "[UsbIntentReceiver]device filter"

    if-eqz v2, :cond_8

    if-eq v2, v9, :cond_5

    if-eq v2, v6, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/broadcast/UsbIntentReceiver;->handlePermissionResult(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_5
    const-string p2, "UsbManager.ACTION_USB_DEVICE_DETACHED"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/m/g;->e0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1, v0}, Lnet/easyconn/broadcast/UsbIntentReceiver;->handleUsbDeviceDetached(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const-string p1, "UsbManager.ACTION_USB_DEVICE_DETACHED end"

    goto/16 :goto_2

    :cond_8
    const-string p2, "UsbManager.ACTION_USB_DEVICE_ATTACHED"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-nez v0, :cond_9

    const-string p1, "[UsbIntentReceiver] device is null"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_9
    sget-boolean p2, Lnet/easyconn/EcApplication;->isCurrentMirror:Z

    const-string v2, "requestUsbPermission now isInMirror = true, return"

    if-eqz p2, :cond_a

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/m/g;->e0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_b
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result p2

    if-ne p2, v9, :cond_c

    invoke-virtual {v0, v8}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result p2

    const/16 v3, 0x8

    if-ne p2, v3, :cond_c

    const-string p1, "[UsbIntentReceiver] attached device is a mass storage device"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_c
    invoke-virtual {p0, p1, v0}, Lnet/easyconn/broadcast/UsbIntentReceiver;->handleUsbDeviceAttached(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z

    move-result p2

    if-eqz p2, :cond_d

    return-void

    :cond_d
    sget-boolean p2, Lnet/easyconn/EcApplication;->isCurrentMirror:Z

    if-eqz p2, :cond_e

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_e
    sget-boolean p2, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez p2, :cond_f

    new-array p1, v8, [Ljava/lang/Object;

    const-string p2, "requestUsbPermission background, return"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_f
    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object p2

    invoke-virtual {p2}, Lnet/easyconn/EcApplication;->getDeviceFilterMap()Landroid/util/SparseIntArray;

    move-result-object p2

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "[UsbIntentReceiver] device filter size = %d"

    invoke-static {v3, v2}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-virtual {p2, v2, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-lez p2, :cond_11

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result p2

    const-string v2, "device\uff1a id->"

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",name->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hasPermission = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz p2, :cond_10

    invoke-virtual {p0, p1, v0}, Lnet/easyconn/broadcast/UsbIntentReceiver;->startActivity(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_3

    :cond_10
    invoke-virtual {p0, p1, v1, v0}, Lnet/easyconn/broadcast/UsbIntentReceiver;->requestUsbPermission(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_3

    :cond_11
    const-string p1, "[UsbIntentReceiver] device vid Not in list"

    :goto_2
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public requestUsbPermission(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    const-string v0, "requestUsbPermission"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "requestUsbPermission background, return"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v0, Lnet/easyconn/EcApplication;->isCurrentMirror:Z

    if-eqz v0, :cond_1

    const-string p1, "requestUsbPermission now isInMirror = true, return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-boolean v0, Lnet/easyconn/broadcast/UsbIntentReceiver;->isPermissionRequesting:Z

    if-eqz v0, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "now requestUsbPermission ing, return"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lnet/easyconn/broadcast/UsbIntentReceiver;->isPermissionRequesting:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "ACTION_USB_DEVICE_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    const-class v0, Lf/a/k/g0;

    return-object v0
.end method

.method public startActivity(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "start MainActivity background, return"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v0, Lnet/easyconn/EcApplication;->isCurrentMirror:Z

    if-eqz v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "start MainActivity now isInMirror = true, return"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lnet/easyconn/broadcast/UsbIntentReceiver;->startActivity()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lf/a/k/g0;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v2, "find start activity = "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "device"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "start EcSdkActivity by myself"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
