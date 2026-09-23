.class public final synthetic Lf/a/k/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/g0;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/g0;ZLandroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/q;->a:Lf/a/k/g0;

    iput-boolean p2, p0, Lf/a/k/q;->b:Z

    iput-object p3, p0, Lf/a/k/q;->c:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lf/a/k/q;->a:Lf/a/k/g0;

    iget-boolean v1, p0, Lf/a/k/q;->b:Z

    iget-object v2, p0, Lf/a/k/q;->c:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, v1, v2}, Lf/a/k/g0;->b0(ZLandroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method
