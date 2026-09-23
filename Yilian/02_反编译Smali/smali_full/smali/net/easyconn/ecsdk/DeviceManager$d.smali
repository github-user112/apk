.class public Lnet/easyconn/ecsdk/DeviceManager$d;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/DeviceManager;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/DeviceManager;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager$d;->a:Lnet/easyconn/ecsdk/DeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/easyconn/ecsdk/DeviceManager;Lnet/easyconn/ecsdk/DeviceManager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/DeviceManager$d;-><init>(Lnet/easyconn/ecsdk/DeviceManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DeviceManager]UsbBroadcastReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecsdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager$d;->a:Lnet/easyconn/ecsdk/DeviceManager;

    invoke-static {p1, p2}, Lnet/easyconn/ecsdk/DeviceManager;->a(Lnet/easyconn/ecsdk/DeviceManager;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager$d;->a:Lnet/easyconn/ecsdk/DeviceManager;

    invoke-static {p1, p2}, Lnet/easyconn/ecsdk/DeviceManager;->b(Lnet/easyconn/ecsdk/DeviceManager;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "net.easyconn.ecsdk.USB_PERMISSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager$d;->a:Lnet/easyconn/ecsdk/DeviceManager;

    invoke-static {p1, p2}, Lnet/easyconn/ecsdk/DeviceManager;->c(Lnet/easyconn/ecsdk/DeviceManager;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
