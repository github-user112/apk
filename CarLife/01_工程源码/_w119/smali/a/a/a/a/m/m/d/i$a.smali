.class public final La/a/a/a/m/m/d/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/m/m/d/i;-><init>(La/a/a/a/c;La/a/a/a/m/m/d/i$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/a/m/m/d/i;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/i;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/m/m/d/i$a;->a:La/a/a/a/m/m/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .locals 4

    iget-object v0, p0, La/a/a/a/m/m/d/i$a;->a:La/a/a/a/m/m/d/i;

    .line 1
    iget-object v1, v0, La/a/a/a/m/m/d/i;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 2
    iget-object v2, v0, La/a/a/a/m/m/d/i;->a:La/a/a/a/c;

    .line 3
    invoke-interface {v2}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    const-string v2, "wifiP2pManager.initialize(\n                        context.applicationContext,\n                        Looper.getMainLooper(),\n                        this\n                    )"

    invoke-static {v1, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object v1, v0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method
