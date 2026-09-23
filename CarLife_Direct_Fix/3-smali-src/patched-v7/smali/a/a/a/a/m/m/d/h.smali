.class public final La/a/a/a/m/m/d/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final a:Landroid/net/wifi/p2p/WifiP2pManager;

.field public final b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final c:La/a/a/a/n/i/b;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 4

    const-string v0, "wifiP2pManager"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/h;->a:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p2, p0, La/a/a/a/m/m/d/h;->b:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v0, La/a/a/a/n/i/b;

    invoke-direct {v0, p0}, La/a/a/a/n/i/b;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iput-object v0, p0, La/a/a/a/m/m/d/h;->c:La/a/a/a/n/i/b;

    new-instance v1, La/a/a/a/n/i/c/b;

    invoke-direct {v1, p1, p2}, La/a/a/a/n/i/c/b;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    const-string v2, "operation"

    .line 1
    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, La/a/a/a/n/i/b;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance v1, La/a/a/a/n/i/c/a;

    invoke-direct {v1, p1, p2}, La/a/a/a/n/i/c/a;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3
    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, La/a/a/a/n/i/b;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, La/a/a/a/m/m/d/b;

    invoke-direct {p1, p0}, La/a/a/a/m/m/d/b;-><init>(La/a/a/a/m/m/d/h;)V

    iput-object p1, p0, La/a/a/a/m/m/d/h;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WifiDirectDiscoverableTask onFailure "

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "CarLife_SDK"

    const-string v1, "tag"

    .line 1
    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 3
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object v3, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v4, p0, La/a/a/a/m/m/d/h;->d:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, La/a/a/a/n/h;->b(Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method public onSuccess()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WifiDirectDiscoverableTask onSuccess"

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 3
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object v0, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v1, p0, La/a/a/a/m/m/d/h;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    return-void
.end method
