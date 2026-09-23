.class public Lnet/easyconn/ecsdk/d$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/d;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/d;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/d;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/d$e;->a:Lnet/easyconn/ecsdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/ecsdk/d$e;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {v0}, Lnet/easyconn/ecsdk/d;->f(Lnet/easyconn/ecsdk/d;)Lnet/easyconn/ecsdk/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/WifiManager;->d()V

    return-void
.end method
