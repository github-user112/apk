.class public Lnet/easyconn/netlink/service/NetLinkService$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/netlink/service/NetLinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/netlink/service/NetLinkService;


# direct methods
.method public constructor <init>(Lnet/easyconn/netlink/service/NetLinkService;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/netlink/service/NetLinkService$a;->a:Lnet/easyconn/netlink/service/NetLinkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetLinkService broadcast action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string p2, "net.easyconn.android.netlink.stop"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/easyconn/netlink/service/NetLinkService$a;->a:Lnet/easyconn/netlink/service/NetLinkService;

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Lnet/easyconn/netlink/service/NetLinkService;->f:Z

    .line 2
    iget-object p1, p0, Lnet/easyconn/netlink/service/NetLinkService$a;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 3
    invoke-virtual {p1}, Lnet/easyconn/netlink/service/NetLinkService;->j()V

    :cond_0
    return-void
.end method
