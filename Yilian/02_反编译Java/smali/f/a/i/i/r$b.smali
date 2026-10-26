.class public Lf/a/i/i/r$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/i/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/i/r;


# direct methods
.method public constructor <init>(Lf/a/i/i/r;Lf/a/i/i/r$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "[EcUsbAttachManager] action Empty return"

    goto/16 :goto_1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5fdc9a67

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p1, "[EcUsbAttachManager] ACTION_USB_DEVICE_DETACHED"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    iget-object p2, p2, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    if-eqz p2, :cond_4

    .line 1
    iget p2, p2, Lf/a/i/i/q;->P:I

    .line 2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    iget-object p2, p2, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    .line 3
    iget p2, p2, Lf/a/i/i/q;->Q:I

    .line 4
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    if-eq p2, v0, :cond_4

    const-string p2, "EcUsbAttachManager UsbBroadcastReceiver the detached device is not current connected phone! ecSdkManager.getConnectedVendorID() = "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    iget-object v0, v0, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    .line 5
    iget v0, v0, Lf/a/i/i/q;->P:I

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", device.getVendorId() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ecSdkManager.getConnectedProductID() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    iget-object v0, v0, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    .line 7
    iget v0, v0, Lf/a/i/i/q;->Q:I

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", device.getProductId() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_1
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string p1, "[EcUsbAttachManager]\u6709USB\u8bbe\u5907\u62d4\u51fa, isDeviceOpen is "

    .line 10
    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    iget-boolean p2, p2, Lf/a/i/i/r;->e:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; ecSdkManager is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    iget-object p2, p2, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    const/4 p2, 0x0

    iput-object p2, p1, Lf/a/i/i/r;->c:Landroid/hardware/usb/UsbDevice;

    iget-object p1, p1, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lf/a/i/i/q;->C()V

    iget-object p1, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    iget-object p1, p1, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    invoke-virtual {p1, v3}, Lf/a/i/i/q;->f0(Z)V

    iget-object p1, p0, Lf/a/i/i/r$b;->a:Lf/a/i/i/r;

    iput-boolean v3, p1, Lf/a/i/i/r;->e:Z

    :cond_5
    :goto_2
    return-void
.end method
