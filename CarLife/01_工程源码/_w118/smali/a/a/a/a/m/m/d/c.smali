.class public final synthetic La/a/a/a/m/m/d/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic a:La/a/a/a/m/m/d/i;


# direct methods
.method public synthetic constructor <init>(La/a/a/a/m/m/d/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/c;->a:La/a/a/a/m/m/d/i;

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 7

    iget-object v0, p0, La/a/a/a/m/m/d/c;->a:La/a/a/a/m/m/d/i;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "requestConnectionInfo "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v4, "CarLife_SDK"

    const-string v5, "tag"

    .line 2
    invoke-static {v4, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "args"

    invoke-static {v2, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v5, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    .line 4
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v6, v4, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-boolean p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz p1, :cond_1

    iput-boolean v3, v0, La/a/a/a/m/m/d/i;->f:Z

    :cond_1
    return-void
.end method
