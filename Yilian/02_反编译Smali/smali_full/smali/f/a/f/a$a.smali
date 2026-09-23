.class public Lf/a/f/a$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/f/a;


# direct methods
.method public constructor <init>(Lf/a/f/a;)V
    .locals 0

    iput-object p1, p0, Lf/a/f/a$a;->a:Lf/a/f/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleNetworkManager action is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "wifi_state"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "BleNetworkManager wifiState is "

    invoke-static {p2, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 p2, 0x4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lf/a/f/a$a;->a:Lf/a/f/a;

    invoke-virtual {p1}, Lf/a/f/a;->i()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lf/a/f/a$a;->a:Lf/a/f/a;

    if-eqz v1, :cond_2

    const-string v3, "BleNetworkManager onWifiClosed"

    .line 1
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lf/a/f/a;->l()V

    iget-boolean v3, v1, Lf/a/f/a;->i:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Lf/a/f/a;->a(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_0
    if-ne p1, p2, :cond_7

    .line 2
    iget-object p1, p0, Lf/a/f/a$a;->a:Lf/a/f/a;

    .line 3
    iput-boolean v2, p1, Lf/a/f/a;->h:Z

    iput-boolean v2, p1, Lf/a/f/a;->i:Z

    goto :goto_1

    :cond_4
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "BleNetworkManager apState is "

    invoke-static {p2, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/16 p2, 0xb

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lf/a/f/a$a;->a:Lf/a/f/a;

    invoke-virtual {p1}, Lf/a/f/a;->g()V

    goto :goto_1

    :cond_5
    const/16 p2, 0xe

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lf/a/f/a$a;->a:Lf/a/f/a;

    .line 5
    iput-boolean v2, p1, Lf/a/f/a;->h:Z

    iput-boolean v2, p1, Lf/a/f/a;->i:Z

    goto :goto_1

    :cond_6
    const-string p2, "android.net.wifi.SCAN_RESULTS"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lf/a/f/a$a;->a:Lf/a/f/a;

    iget-object p1, p1, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lf/a/f/a$a;->a:Lf/a/f/a;

    .line 7
    iget-object p2, p2, Lf/a/f/a;->n:Ljava/util/List;

    .line 8
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lf/a/f/a$a;->a:Lf/a/f/a;

    .line 9
    iget-object p2, p2, Lf/a/f/a;->n:Ljava/util/List;

    .line 10
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_1
    return-void
.end method
