.class public Lnet/easyconn/ecsdk/DeviceManager$c$a$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/DeviceManager$c$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/DeviceManager$c$a;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/DeviceManager$c$a;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a$a;->a:Lnet/easyconn/ecsdk/DeviceManager$c$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/ecsdk/DeviceManager$c$a$a;->a:Lnet/easyconn/ecsdk/DeviceManager$c$a;

    iget-object v1, v0, Lnet/easyconn/ecsdk/DeviceManager$c$a;->c:Lnet/easyconn/ecsdk/DeviceManager$c;

    iget-object v1, v1, Lnet/easyconn/ecsdk/DeviceManager$c;->d:Lnet/easyconn/ecsdk/DeviceManager;

    invoke-static {v0}, Lnet/easyconn/ecsdk/DeviceManager$c$a;->a(Lnet/easyconn/ecsdk/DeviceManager$c$a;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/easyconn/ecsdk/DeviceManager;->a(Lnet/easyconn/ecsdk/DeviceManager;Landroid/hardware/usb/UsbDevice;)Z

    return-void
.end method
