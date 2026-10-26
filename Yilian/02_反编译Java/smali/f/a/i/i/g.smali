.class public Lf/a/i/i/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EasyConnectService;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EasyConnectService;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/g;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "NetLinkService onServiceConnected"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/g;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    check-cast p2, Lnet/easyconn/netlink/service/NetLinkService$c;

    .line 1
    iget-object p2, p2, Lnet/easyconn/netlink/service/NetLinkService$c;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 2
    iput-object p2, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->n:Lnet/easyconn/netlink/service/NetLinkService;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/i/i/g;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    iget-object p2, p0, Lf/a/i/i/g;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v0, p2, Lnet/easyconn/framework/sdkservice/EasyConnectService;->n:Lnet/easyconn/netlink/service/NetLinkService;

    .line 3
    iput-object v0, p1, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lnet/easyconn/netlink/service/NetLinkService;->h:Ljava/lang/String;

    iput-object p1, v0, Lnet/easyconn/netlink/service/NetLinkService;->g:Lf/a/i/h/f;

    .line 5
    iget-object p1, p2, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 6
    iget-boolean p1, p1, Lf/a/i/i/q;->Z:Z

    const-string p2, "NetLinkService setAppForground->"

    .line 7
    invoke-static {p2, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iput-boolean p1, v0, Lnet/easyconn/netlink/service/NetLinkService;->j:Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p1, "NetLinkService onServiceDisconnected"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
