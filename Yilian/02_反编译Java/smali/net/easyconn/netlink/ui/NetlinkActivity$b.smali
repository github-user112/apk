.class public Lnet/easyconn/netlink/ui/NetlinkActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/netlink/ui/NetlinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/netlink/ui/NetlinkActivity;


# direct methods
.method public constructor <init>(Lnet/easyconn/netlink/ui/NetlinkActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/netlink/ui/NetlinkActivity$b;->a:Lnet/easyconn/netlink/ui/NetlinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "onServiceConnected"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/netlink/ui/NetlinkActivity$b;->a:Lnet/easyconn/netlink/ui/NetlinkActivity;

    check-cast p2, Lnet/easyconn/netlink/service/NetLinkService$c;

    .line 1
    iget-object p2, p2, Lnet/easyconn/netlink/service/NetLinkService$c;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 2
    iput-object p2, p1, Lnet/easyconn/netlink/ui/NetlinkActivity;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Lnet/easyconn/netlink/ui/NetlinkActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "onServiceDisconnected"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
