.class public final La/a/a/a/m/m/e/e;
.super Ljava/lang/Object;
.source "WifiMulticastLock.java"


# static fields
.field public static a:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public static a(Landroid/content/Context;)V
    .locals 4

    # --- patchM: 无线(热点/直连)传输期间持有组播锁 ---
    # ---  亿连的 WifiManager 全程持有 setReferenceCounted(false) 的 MulticastLock,
    # ---  CarLife 的 WirlessProtocolTransport(UDP 7999) 完全没有, 在很多车机上
    # ---  组播/广播包会被内核丢弃, 表现为"连上了但握手没反应"。
    :try_start_0
    sget-object v0, La/a/a/a/m/m/e/e;->a:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :do_acquire

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "CarLifeWifi"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    sput-object v0, La/a/a/a/m/m/e/e;->a:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    :do_acquire
    sget-object v0, La/a/a/a/m/m/e/e;->a:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    const-string v0, "CarLifeWifi"

    const-string v1, "MulticastLock acquired for wireless transport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v0, "CarLifeWifi"

    const-string v1, "MulticastLock acquire failed (ignored)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b()V
    .locals 2

    :try_start_0
    sget-object v0, La/a/a/a/m/m/e/e;->a:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :done

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v1

    if-eqz v1, :done

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    const-string v0, "CarLifeWifi"

    const-string v1, "MulticastLock released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :done
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
