.class public Lnet/easyconn/framework/sdkservice/EcWifiManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/sdkservice/EcWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/sdkservice/EcWifiManager;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$a;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/easyconn/framework/sdkservice/EcWifiManager$a;->a:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 1
    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->t:Landroid/os/Handler;

    iget-object v2, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->u:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->g:Lf/a/i/i/q;

    .line 2
    iget-boolean v1, v1, Lf/a/i/i/q;->T:Z

    if-nez v1, :cond_0

    const-string v1, "retryStartP2pSearch"

    .line 3
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h()V

    .line 4
    :cond_0
    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->t:Landroid/os/Handler;

    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->u:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
