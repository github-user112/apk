.class public Lf/a/k/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/framework/sdkservice/EasyConnectService$d;


# instance fields
.field public final synthetic a:Lf/a/k/g0;


# direct methods
.method public constructor <init>(Lf/a/k/g0;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iget-object v0, v0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iget-object v2, v2, Lf/a/k/g0;->u:Lf/a/i/j/c;

    const v3, 0x13880

    const/16 v4, 0x32

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iget-object p1, p1, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 1
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    invoke-virtual {p1}, Lnet/easyconn/framework/sdkservice/EcWifiManager;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iput-boolean v1, p1, Lf/a/k/g0;->L:Z

    const-string p1, "important_log networkEnable mIsWifiConnected"

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iget-boolean v0, v0, Lf/a/k/g0;->L:Z

    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object p1, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    .line 1
    new-instance v1, Lf/a/k/j;

    invoke-direct {v1, v0, p1}, Lf/a/k/j;-><init>(Lf/a/k/g0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 4

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iget-object v0, v0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const v1, 0x13880

    const/16 v2, 0x34

    const-string v3, "EC_HU_HOTSPOT_OPEN"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iput-boolean p1, v0, Lf/a/k/g0;->M:Z

    const-string p1, "important_log openHotPort mIsHotPortOpen"

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iget-boolean v0, v0, Lf/a/k/g0;->M:Z

    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object p1, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iput-boolean p1, v0, Lf/a/k/g0;->L:Z

    const-string p1, "important_log wifiConnected mIsWifiConnected"

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iget-boolean v0, v0, Lf/a/k/g0;->L:Z

    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object p1, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public e(Z)V
    .locals 3

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iput-boolean p1, v0, Lf/a/k/g0;->K:Z

    const-string v0, "important_log wifiOpened mIsWifiOpened"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    iget-boolean v1, v1, Lf/a/k/g0;->K:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lf/a/k/i0;->a:Lf/a/k/g0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const p1, 0x13880

    const/16 v1, 0x33

    const-string v2, "EC_HU_WIFI_OPEN"

    invoke-virtual {v0, p1, v1, v2}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1
    throw p1
.end method
