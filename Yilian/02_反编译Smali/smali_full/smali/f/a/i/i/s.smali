.class public Lf/a/i/i/s;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/i/s$a;
    }
.end annotation


# static fields
.field public static b:Z


# instance fields
.field public a:Lf/a/i/i/s$a;


# direct methods
.method public constructor <init>(Lf/a/i/i/s$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lf/a/i/i/s;->a:Lf/a/i/i/s$a;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

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

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7e02a835

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0x7298140c

    if-eq v2, v3, :cond_1

    const v3, -0x5fdc9a67

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "ACTION_USB_DEVICE_PERMISSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_6

    if-eq v1, v4, :cond_4

    goto :goto_4

    :cond_4
    const-string p1, "EcUsbIntentReceiver ACTION_USB_DEVICE_PERMISSION"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string p1, "EcUsbIntentReceiver handlePermissionResult"

    .line 1
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sput-boolean v5, Lf/a/i/i/s;->b:Z

    monitor-enter p0

    :try_start_0
    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    const-string v0, "permission"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lf/a/i/i/s;->a:Lf/a/i/i/s$a;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lf/a/i/i/s;->a:Lf/a/i/i/s$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p2, Lf/a/i/i/h;

    :try_start_1
    invoke-virtual {p2, p1}, Lf/a/i/i/h;->a(Landroid/hardware/usb/UsbDevice;)V

    :cond_5
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    const-string p2, "EcUsbIntentReceiver UsbManager.ACTION_USB_DEVICE_DETACHED"

    .line 2
    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/m/g;->e0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_2
    const-string p1, "[EcUsbIntentReceiver]device filter"

    :goto_3
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_7
    const-string p1, "EcUsbIntentReceiver handleUsbDeviceDetached"

    .line 3
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string p1, "EcUsbIntentReceiver UsbManager.ACTION_USB_DEVICE_DETACHED end"

    .line 4
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_4
    return-void

    :cond_8
    const-string p2, "EcUsbIntentReceiver UsbManager.ACTION_USB_DEVICE_ATTACHED"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-nez v0, :cond_9

    const-string p1, "EcUsbIntentReceiver [UsbIntentReceiver] device is null"

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/m/g;->e0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result p1

    if-ne p1, v6, :cond_b

    invoke-virtual {v0, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_b

    const-string p1, "[EcUsbIntentReceiver] attached device is a mass storage device"

    goto :goto_3

    :cond_b
    const-string p1, "EcUsbIntentReceiver handleUsbDeviceAttached"

    .line 5
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
