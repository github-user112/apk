.class public final La/a/a/a/m/m/d/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "wifiP2pDevice"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :end

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :end

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :end

    sput-object v0, La/a/a/a/m/m/d/m;->a:Ljava/lang/String;

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "system p2p deviceName captured as fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :end
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :fb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :fb

    return-object p0

    :fb
    sget-object v0, La/a/a/a/m/m/d/m;->a:Ljava/lang/String;

    return-object v0
.end method
