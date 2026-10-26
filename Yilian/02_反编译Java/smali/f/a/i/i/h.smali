.class public Lf/a/i/i/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/i/s$a;


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EasyConnectService;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/h;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    iget-object v0, p0, Lf/a/i/i/h;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_3

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EasyConnectService openDevice usbDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->p:Lf/a/i/i/r;

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, v0, Lf/a/i/i/r;->c:Landroid/hardware/usb/UsbDevice;

    const-string p1, "[EcUsbAttachManager] start openDevice showBackgroundTip = "

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iget-object p1, v0, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    .line 4
    iget-boolean p1, p1, Lf/a/i/i/q;->O:Z

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 5
    iget-object p1, v0, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    iget-object v2, v0, Lf/a/i/i/r;->c:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v2}, Lf/a/i/i/q;->U(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    iget-object v2, v0, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    invoke-virtual {v2, p1}, Lf/a/i/i/q;->f0(Z)V

    iput-boolean p1, v0, Lf/a/i/i/r;->e:Z

    if-nez p1, :cond_0

    const-string p1, "[EcUsbAttachManager] openDevice failed! Device is "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lf/a/i/i/r;->c:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "[EcUsbAttachManager] openDevice success! Device is "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lf/a/i/i/r;->c:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "[EcUsbAttachManager] >>error openDevice ecSdkManager.isDeviceOpen() = true, return"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
