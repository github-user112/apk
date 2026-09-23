.class public final synthetic Lm7/c0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# instance fields
.field public final synthetic a:Lf9/k;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lf9/k;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm7/c0;->a:Lf9/k;

    .line 5
    .line 6
    iput-object p2, p0, Lm7/c0;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getDeviceList(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-static {p1}, Ls8/p;->d0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 17
    .line 18
    iget-object v0, p0, Lm7/c0;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Lj8/k0;

    .line 27
    .line 28
    new-instance v3, Lj8/n0;

    .line 29
    .line 30
    invoke-direct {v3, v2}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const/16 v7, 0x1c

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct/range {v1 .. v7}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lm7/c0;->a:Lf9/k;

    .line 45
    .line 46
    invoke-interface {p1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-void
.end method
