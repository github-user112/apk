.class public Lf/a/i/i/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EcWifiManager;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/u;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    const-string v0, " discover peers fail, p2pScan 30000 reason is "

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iget-object p1, p0, Lf/a/i/i/u;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->m:Z

    iget-object v0, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->t:Landroid/os/Handler;

    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EcWifiManager;->u:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, " start discover peers success "

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/u;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->m:Z

    return-void
.end method
