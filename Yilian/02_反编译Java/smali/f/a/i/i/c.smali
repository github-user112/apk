.class public final synthetic Lf/a/i/i/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EcWifiManager;


# direct methods
.method public synthetic constructor <init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/i/i/c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    return-void
.end method


# virtual methods
.method public final onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    iget-object v0, p0, Lf/a/i/i/c;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-virtual {v0, p1}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->f(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
