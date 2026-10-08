.class public Lcom/baidu/carlife/sdk/UsbPermissionProxyActivity;
.super Landroid/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "usb_device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    # patchR: 能静默打开就不弹窗 (v2 随后被 const/4 v2, 0x0 重设, 无副作用)
    invoke-static {v0, p1}, La/a/a/a/m/m/c/f;->c(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-nez v2, :need_dialog

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :need_dialog
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.carlifevehicle.connect.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
