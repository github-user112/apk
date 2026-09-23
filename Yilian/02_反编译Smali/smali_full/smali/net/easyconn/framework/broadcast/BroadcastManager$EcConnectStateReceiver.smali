.class public Lnet/easyconn/framework/broadcast/BroadcastManager$EcConnectStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/broadcast/BroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcConnectStateReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "net.easyconn.connect.checkstatus"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Receive broadcast action = "

    if-eqz v0, :cond_1

    const-string v0, ", mCurrentConnectStatus:"

    invoke-static {v1, p2, v0}, Le/a/c/a/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lnet/easyconn/framework/broadcast/BroadcastManager;->access$100()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/framework/broadcast/BroadcastManager;->access$100()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "net.easyconn.mirror.in"

    goto :goto_0

    :cond_0
    const-string p2, "net.easyconn.mirror.out"

    goto :goto_0

    :cond_1
    const-string v0, "net.easyconn.link.checkstatus"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ", mCurrentLinkStatus:"

    invoke-static {v1, p2, v0}, Le/a/c/a/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lnet/easyconn/framework/broadcast/BroadcastManager;->access$200()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/framework/broadcast/BroadcastManager;->access$200()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "net.easyconn.link.in"

    goto :goto_0

    :cond_2
    const-string p2, "net.easyconn.link.out"

    :goto_0
    invoke-static {p1, p2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
