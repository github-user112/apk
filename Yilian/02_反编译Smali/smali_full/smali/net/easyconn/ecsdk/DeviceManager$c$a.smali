.class public Lnet/easyconn/ecsdk/DeviceManager$c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/DeviceManager$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/hardware/usb/UsbDevice;

.field public b:Ljava/util/Timer;

.field public final synthetic c:Lnet/easyconn/ecsdk/DeviceManager$c;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/DeviceManager$c;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->c:Lnet/easyconn/ecsdk/DeviceManager$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->b:Ljava/util/Timer;

    iput-object p2, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->a:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/DeviceManager$c$a;->b()V

    return-void
.end method

.method public static synthetic a(Lnet/easyconn/ecsdk/DeviceManager$c$a;)Landroid/hardware/usb/UsbDevice;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->a:Landroid/hardware/usb/UsbDevice;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->b:Ljava/util/Timer;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ecsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QTDeviceTimer launchTimer deviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->a:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->b:Ljava/util/Timer;

    new-instance v1, Lnet/easyconn/ecsdk/DeviceManager$c$a$a;

    invoke-direct {v1, p0}, Lnet/easyconn/ecsdk/DeviceManager$c$a$a;-><init>(Lnet/easyconn/ecsdk/DeviceManager$c$a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
