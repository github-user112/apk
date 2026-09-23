.class public Lf/a/i/i/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    const-string v0, " stop discover peers fail, reason is "

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const-string v0, " stop discover peers success "

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
