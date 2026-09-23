.class public final Lm7/v;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:Landroid/hardware/usb/UsbManager;

.field public final synthetic b:Lp1/p;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Lp1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm7/v;->a:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    iput-object p2, p0, Lm7/v;->b:Lp1/p;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm7/v;->a:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "<get-values>(...)"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lm7/v;->b:Lp1/p;

    .line 17
    .line 18
    invoke-virtual {p2}, Lp1/p;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lp1/p;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
