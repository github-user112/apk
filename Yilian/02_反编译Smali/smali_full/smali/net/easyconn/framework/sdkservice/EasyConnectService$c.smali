.class public Lnet/easyconn/framework/sdkservice/EasyConnectService$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/sdkservice/EasyConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EasyConnectService;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;Lf/a/i/i/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EasyConnectService onReceive action = "

    invoke-static {v0, p1, p1}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    const-string v0, "EasyConnectService onReceive device is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 1
    iget v0, v0, Lf/a/i/i/q;->P:I

    .line 2
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 3
    iget v0, v0, Lf/a/i/i/q;->Q:I

    .line 4
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    if-eq v0, v2, :cond_2

    const-string p1, "EasyConnectService the detached device is not current connected phone! ecSdkManager.getConnectedVendorID() = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 5
    iget v0, v0, Lf/a/i/i/q;->P:I

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", device.getVendorId() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ecSdkManager.getConnectedProductID() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 7
    iget v0, v0, Lf/a/i/i/q;->Q:I

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", device.getProductId() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x5fdc9a67

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "[EasyConnectService]\u6709USB\u8bbe\u5907\u62d4\u51fa"

    .line 9
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-virtual {p1}, Lf/a/i/i/q;->C()V

    iget-object p1, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService$c;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    invoke-virtual {p1, v1}, Lf/a/i/i/q;->f0(Z)V

    :cond_6
    :goto_2
    return-void
.end method
