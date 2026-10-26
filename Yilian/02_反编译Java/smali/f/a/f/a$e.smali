.class public Lf/a/f/a$e;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/f/a;


# direct methods
.method public constructor <init>(Lf/a/f/a;)V
    .locals 0

    iput-object p1, p0, Lf/a/f/a$e;->a:Lf/a/f/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BleNetworkManager WiFiScanThread: begin"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lf/a/f/a$e;->a:Lf/a/f/a;

    .line 1
    iget-boolean v0, v0, Lf/a/f/a;->o:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/f/a$e;->a:Lf/a/f/a;

    iget-object v0, v0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "BleNetworkManager WiFiScanThread: begin startScan"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/f/a$e;->a:Lf/a/f/a;

    iget-object v0, v0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    const-wide/16 v0, 0xdac

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
