.class public Lnet/easyconn/ecsdk/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ecsdk/d$f;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/wifi/p2p/WifiP2pManager;

.field public c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public d:Lnet/easyconn/ecsdk/d$f;

.field public volatile e:Z

.field public f:Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;

.field public g:Landroid/net/wifi/p2p/WifiP2pInfo;

.field public h:Lnet/easyconn/ecsdk/WifiManager;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/d;->e:Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/d;->a:Landroid/content/Context;

    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p1, p0, Lnet/easyconn/ecsdk/d;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lnet/easyconn/ecsdk/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/d;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    sget-object p1, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    const-string v0, "initialize ok"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lnet/easyconn/ecsdk/d;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/d;->g:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lnet/easyconn/ecsdk/d;)V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/d;->b()V

    return-void
.end method

.method public static synthetic b(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/d;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p0
.end method

.method private b()V
    .locals 5

    sget-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    const-string v1, "addLocalService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/easyconn/ecsdk/d;->h:Lnet/easyconn/ecsdk/WifiManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lnet/easyconn/ecsdk/WifiManager;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v3, "huid"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "i"

    iget-object v3, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v4, "huid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v3, "huname"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "n"

    iget-object v3, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v4, "huname"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v3, "flavor"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "f"

    iget-object v3, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v4, "flavor"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v3, "channel"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "c"

    iget-object v3, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v4, "channel"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v3, "port"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "p"

    iget-object v3, p0, Lnet/easyconn/ecsdk/d;->i:Ljava/util/Map;

    const-string v4, "port"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v2, "e"

    const-string v3, "EC_MIRROR_CARBIT"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EC_MIRROR"

    const-string v3, "_presence._tcp"

    invoke-static {v2, v3, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/easyconn/ecsdk/d;->f:Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;

    iget-object v2, p0, Lnet/easyconn/ecsdk/d;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lnet/easyconn/ecsdk/d;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lnet/easyconn/ecsdk/d$d;

    invoke-direct {v4, p0}, Lnet/easyconn/ecsdk/d$d;-><init>(Lnet/easyconn/ecsdk/d;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic c(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/d;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method public static synthetic d(Lnet/easyconn/ecsdk/d;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/d;->g:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p0
.end method

.method private d()V
    .locals 3

    sget-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    const-string v1, "discoverPeers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lnet/easyconn/ecsdk/d;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/d;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lnet/easyconn/ecsdk/d;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lnet/easyconn/ecsdk/d$a;

    invoke-direct {v2, p0}, Lnet/easyconn/ecsdk/d$a;-><init>(Lnet/easyconn/ecsdk/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private e()V
    .locals 3

    sget-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    const-string v1, "registerP2pReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/ecsdk/d;->d:Lnet/easyconn/ecsdk/d$f;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lnet/easyconn/ecsdk/d$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/easyconn/ecsdk/d$f;-><init>(Lnet/easyconn/ecsdk/d;Lnet/easyconn/ecsdk/d$a;)V

    iput-object v1, p0, Lnet/easyconn/ecsdk/d;->d:Lnet/easyconn/ecsdk/d$f;

    iget-object v2, p0, Lnet/easyconn/ecsdk/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static synthetic e(Lnet/easyconn/ecsdk/d;)V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/d;->d()V

    return-void
.end method

.method public static synthetic f(Lnet/easyconn/ecsdk/d;)Lnet/easyconn/ecsdk/WifiManager;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/d;->h:Lnet/easyconn/ecsdk/WifiManager;

    return-object p0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lnet/easyconn/ecsdk/d;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/easyconn/ecsdk/d;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lnet/easyconn/ecsdk/d$b;

    invoke-direct {v2, p0}, Lnet/easyconn/ecsdk/d$b;-><init>(Lnet/easyconn/ecsdk/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget-object v0, p0, Lnet/easyconn/ecsdk/d;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lnet/easyconn/ecsdk/d;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget-object v0, p0, Lnet/easyconn/ecsdk/d;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lnet/easyconn/ecsdk/d;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lnet/easyconn/ecsdk/d$c;

    invoke-direct {v2, p0}, Lnet/easyconn/ecsdk/d$c;-><init>(Lnet/easyconn/ecsdk/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    const-string v1, "unregisterP2pReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/ecsdk/d;->d:Lnet/easyconn/ecsdk/d$f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/easyconn/ecsdk/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/d;->d:Lnet/easyconn/ecsdk/d$f;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lnet/easyconn/ecsdk/WifiManager;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lnet/easyconn/ecsdk/d;->h:Lnet/easyconn/ecsdk/WifiManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/d;->e:Z

    sget-object p1, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    const-string v0, "openWifiDirect"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lnet/easyconn/ecsdk/d;->e()V

    invoke-direct {p0}, Lnet/easyconn/ecsdk/d;->d()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    const-string v1, "closeWifiDirect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnet/easyconn/ecsdk/d;->e:Z

    invoke-direct {p0}, Lnet/easyconn/ecsdk/d;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/d;->d:Lnet/easyconn/ecsdk/d$f;

    invoke-direct {p0}, Lnet/easyconn/ecsdk/d;->f()V

    iput-object v0, p0, Lnet/easyconn/ecsdk/d;->g:Landroid/net/wifi/p2p/WifiP2pInfo;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 3

    sget-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionInfoAvailable info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    iput-object v1, p0, Lnet/easyconn/ecsdk/d;->g:Landroid/net/wifi/p2p/WifiP2pInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lnet/easyconn/ecsdk/d$e;

    invoke-direct {v0, p0}, Lnet/easyconn/ecsdk/d$e;-><init>(Lnet/easyconn/ecsdk/d;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onFailure(I)V
    .locals 3

    sget-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/d;->j:Ljava/lang/String;

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
