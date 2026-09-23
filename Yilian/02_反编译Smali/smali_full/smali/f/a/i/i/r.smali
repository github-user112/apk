.class public Lf/a/i/i/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/i/r$b;
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

.field public c:Landroid/hardware/usb/UsbDevice;

.field public d:Lf/a/i/i/r$b;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/i/r;->e:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/a/i/i/r;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lf/a/i/i/q;)V
    .locals 2

    iput-object p1, p0, Lf/a/i/i/r;->b:Lf/a/i/i/q;

    .line 1
    iget-object p1, p0, Lf/a/i/i/r;->d:Lf/a/i/i/r$b;

    if-eqz p1, :cond_0

    new-instance p1, Lf/a/i/i/r$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lf/a/i/i/r$b;-><init>(Lf/a/i/i/r;Lf/a/i/i/r$a;)V

    iput-object p1, p0, Lf/a/i/i/r;->d:Lf/a/i/i/r$b;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/i/i/r;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/r;->d:Lf/a/i/i/r$b;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
