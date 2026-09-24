.class public final Lcom/baidu/carlifevehicle/logxfer/NetWatch;
.super Landroid/content/BroadcastReceiver;
.source "NetWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlifevehicle/logxfer/NetWatch$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarLifeLogXfer"

.field private static sInst:Lcom/baidu/carlifevehicle/logxfer/NetWatch;


# instance fields
.field private mListener:Lcom/baidu/carlifevehicle/logxfer/NetWatch$Listener;

.field private mRegistered:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    return-void
.end method

.method private static get()Lcom/baidu/carlifevehicle/logxfer/NetWatch;
    .locals 1

    .line 42
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->sInst:Lcom/baidu/carlifevehicle/logxfer/NetWatch;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/baidu/carlifevehicle/logxfer/NetWatch;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/logxfer/NetWatch;-><init>()V

    sput-object v0, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->sInst:Lcom/baidu/carlifevehicle/logxfer/NetWatch;

    .line 45
    :cond_0
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->sInst:Lcom/baidu/carlifevehicle/logxfer/NetWatch;

    return-object v0
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lcom/baidu/carlifevehicle/logxfer/NetWatch$Listener;)V
    .locals 3

    const-class v0, Lcom/baidu/carlifevehicle/logxfer/NetWatch;

    monitor-enter v0

    .line 49
    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->get()Lcom/baidu/carlifevehicle/logxfer/NetWatch;

    move-result-object v1

    .line 50
    iput-object p1, v1, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->mListener:Lcom/baidu/carlifevehicle/logxfer/NetWatch$Listener;

    .line 51
    iget-boolean p1, v1, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    :try_start_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v2, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v2, "android.net.wifi.p2p.CONNECTION_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v2, "android.net.ethernet.ETHERNET_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->mRegistered:Z

    .line 68
    const-string p0, "CarLifeLogXfer"

    const-string p1, "NetWatch registered"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_2
    const-string p1, "CarLifeLogXfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWatch register failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    :goto_0
    monitor-exit v0

    return-void

    .line 52
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 48
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stop(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/baidu/carlifevehicle/logxfer/NetWatch;

    monitor-enter v0

    .line 75
    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->get()Lcom/baidu/carlifevehicle/logxfer/NetWatch;

    move-result-object v1

    .line 76
    iget-boolean v2, v1, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    if-nez p0, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 83
    :goto_0
    const/4 p0, 0x0

    :try_start_2
    iput-boolean p0, v1, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->mRegistered:Z

    .line 84
    const/4 p0, 0x0

    iput-object p0, v1, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->mListener:Lcom/baidu/carlifevehicle/logxfer/NetWatch$Listener;

    .line 85
    const-string p0, "CarLifeLogXfer"

    const-string v1, "NetWatch unregistered"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    monitor-exit v0

    return-void

    .line 77
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 74
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 91
    :try_start_0
    const-class p1, Lcom/baidu/carlifevehicle/logxfer/NetWatch;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    iget-object p2, p0, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->mListener:Lcom/baidu/carlifevehicle/logxfer/NetWatch$Listener;

    .line 93
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-nez p2, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->baseUrls()[Ljava/lang/String;

    move-result-object p1

    .line 98
    const-string v0, "CarLifeLogXfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "net changed -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    if-nez v2, :cond_1

    const-string v2, "(none)"

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-interface {p2, p1}, Lcom/baidu/carlifevehicle/logxfer/NetWatch$Listener;->onNetChanged([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    goto :goto_1

    .line 93
    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    const-string p2, "CarLifeLogXfer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetWatch onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1
    return-void
.end method
