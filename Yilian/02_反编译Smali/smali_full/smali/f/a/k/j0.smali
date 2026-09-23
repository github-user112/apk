.class public Lf/a/k/j0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/k/j0$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lf/a/i/i/q;

.field public c:Landroid/hardware/usb/UsbManager;

.field public d:Landroid/hardware/usb/UsbDevice;

.field public e:Lf/a/k/j0$b;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/j0;->f:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/a/k/j0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lnet/easyconn/EcApplication;->showToast(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lf/a/k/j0;->b:Lf/a/i/i/q;

    .line 1
    iget-boolean v0, v0, Lf/a/i/i/q;->O:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/a/k/j0;->b:Lf/a/i/i/q;

    iget-object v2, p0, Lf/a/k/j0;->d:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v2}, Lf/a/i/i/q;->U(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    iget-object v2, p0, Lf/a/k/j0;->b:Lf/a/i/i/q;

    invoke-virtual {v2, v0}, Lf/a/i/i/q;->f0(Z)V

    iput-boolean v0, p0, Lf/a/k/j0;->f:Z

    if-nez v0, :cond_0

    const-string p1, "[UsbBroadcastReceiver]openDevice failed! Device is "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/j0;->d:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "[UsbBroadcastReceiver]isForeground is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lnet/easyconn/EcApplication;->isForeground:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const-string p1, "[UsbAttachManager] toast background_connect_tip3"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f0d0027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Easyconnection"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lf/a/k/z;

    invoke-direct {v1, p1}, Lf/a/k/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, ">>error openDevice ecSdkManager.isDeviceOpen() = true, return"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "start openDevice showBackgroundTip = true"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/a0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lf/a/k/a0;-><init>(Lf/a/k/j0;Z)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Landroid/content/Intent;Lf/a/i/i/q;)V
    .locals 2

    iput-object p2, p0, Lf/a/k/j0;->b:Lf/a/i/i/q;

    .line 1
    iget-object p2, p0, Lf/a/k/j0;->e:Lf/a/k/j0$b;

    if-eqz p2, :cond_0

    new-instance p2, Lf/a/k/j0$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lf/a/k/j0$b;-><init>(Lf/a/k/j0;Lf/a/k/j0$a;)V

    iput-object p2, p0, Lf/a/k/j0;->e:Lf/a/k/j0$b;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/k/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/j0;->e:Lf/a/k/j0$b;

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2
    :cond_0
    iget-object p2, p0, Lf/a/k/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    const-string v0, "usb"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Lf/a/k/j0;->c:Landroid/hardware/usb/UsbManager;

    const-string p2, "device"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    iget-object p2, p0, Lf/a/k/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/m/g;->e0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lf/a/k/j0;->c:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "[UsbAttachManager]device filter1"

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lf/a/k/j0;->d:Landroid/hardware/usb/UsbDevice;

    const-string p1, "[UsbAttachManager]not filter1"

    :goto_0
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
