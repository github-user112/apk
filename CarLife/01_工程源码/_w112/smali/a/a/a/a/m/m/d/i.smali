.class public final La/a/a/a/m/m/d/i;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/m/m/d/i$b;
    }
.end annotation


# instance fields
.field public final a:La/a/a/a/c;

.field public final b:La/a/a/a/m/m/d/i$b;

.field public final c:Landroid/net/wifi/p2p/WifiP2pManager;

.field public d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final e:La/a/a/a/m/m/d/h;

.field public f:Z

.field public g:La/a/a/a/m/m/d/j;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/m/m/d/i$b;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/i;->a:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/m/m/d/i;->b:La/a/a/a/m/m/d/i$b;

    invoke-interface {p1}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "wifip2p"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p2, p0, La/a/a/a/m/m/d/i;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-interface {p1}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, La/a/a/a/m/m/d/i$a;

    invoke-direct {v2, p0}, La/a/a/a/m/m/d/i$a;-><init>(La/a/a/a/m/m/d/i;)V

    invoke-virtual {p2, v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    const-string v1, "wifiP2pManager.initialize(\n            context.applicationContext,\n            Looper.getMainLooper(),\n            object : WifiP2pManager.ChannelListener {\n                override fun onChannelDisconnected() {\n                    // \u5982\u679cchannel\u51fa\u73b0\u5f02\u5e38\u7684\u8bdd\uff0c\u9700\u8981\u91cd\u65b0\u521d\u59cb\u5316\n                    channel = wifiP2pManager.initialize(\n                        context.applicationContext,\n                        Looper.getMainLooper(),\n                        this\n                    )\n                }\n            })"

    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, La/a/a/a/m/m/d/h;

    invoke-direct {v1, p2, v0}, La/a/a/a/m/m/d/h;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    iput-object v1, p0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;

    # --- patchC(v3): 把系统 P2P 设备名同步为配置的直连名称, 手机端才能按名字找到车机 ---
    # ---  Android 10+ (API >= 29) 起 setDeviceName 属系统级隐藏 API, 第三方应用调用会被 ---
    # ---  WifiP2pService 拒绝(Permission violation - NETWORK_SETTING/NETWORK_STACK/     ---
    # ---  OVERRIDE_WIFI_CONFIG) 并干扰 P2P 流程, 故仅在低版本(含车机 4.4.2)调用        ---
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v2, v1, :p2p_name_done

    iget-object v0, p0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;

    const-string v2, "CONFIG_WIFI_DIRECT_NAME"

    invoke-interface {p1, v2}, La/a/a/a/c;->I0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :p2p_name_len

    const-string v1, "CarLife-HU"

    goto :p2p_name_set

    :p2p_name_len

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :p2p_name_set

    const-string v1, "CarLife-HU"

    :p2p_name_set

    iget-object v2, p0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p2, v2, v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :p2p_name_done

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-interface {p1}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v0, La/a/a/a/m/m/d/c;

    invoke-direct {v0, p0}, La/a/a/a/m/m/d/c;-><init>(La/a/a/a/m/m/d/i;)V

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    # --- patchD: 亿连式 P2P 自举器 (参照 net.easyconn) ---------------------------
    # ---  车机端原设计完全被动: 只 discoverPeers 等手机来建组, createGroup 调用数为 0。
    # ---  此处 15 秒后若仍无组, 由车机主动 createGroup() 成为 GO, 手机 discoverPeers
    # ---  到即可加入。失败每 10 秒重试, 最多 6 次, 组一形成立即停止。
    iget-object v0, p0, La/a/a/a/m/m/d/i;->a:La/a/a/a/c;

    iget-object v1, p0, La/a/a/a/m/m/d/i;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, La/a/a/a/m/m/d/j;

    move-object v3, p2

    move-object v4, p0

    invoke-direct {v2, v0, v3, v1, v4}, La/a/a/a/m/m/d/j;-><init>(La/a/a/a/c;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;La/a/a/a/m/m/d/i;)V

    iput-object v2, p0, La/a/a/a/m/m/d/i;->g:La/a/a/a/m/m/d/j;

    invoke-virtual {v2}, La/a/a/a/m/m/d/j;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.net.wifi.p2p.WifiP2pManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "context1"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onReceive intent.action: "

    aput-object v2, v0, v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "CarLife_SDK"

    const-string v4, "tag"

    .line 1
    invoke-static {v2, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "args"

    invoke-static {v0, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v6, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    const/4 v7, 0x3

    if-nez v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v7, v2, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-static {v0, v6}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v0, "wifiP2pInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v6, v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    goto :goto_1

    :cond_1
    move-object v0, v8

    :goto_1
    new-array v6, v3, [Ljava/lang/Object;

    const-string v9, "WIFI_P2P_CONNECTION_CHANGED_ACTION info: "

    invoke-static {v9, v0}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    .line 5
    invoke-static {v2, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v9, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v9, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v7, v2, v6}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-eqz v0, :cond_5

    .line 8
    iget-boolean v6, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v6, :cond_5

    iput-boolean v3, p0, La/a/a/a/m/m/d/i;->f:Z

    iget-object v6, p0, La/a/a/a/m/m/d/i;->b:La/a/a/a/m/m/d/i$b;

    invoke-interface {v6, v0}, La/a/a/a/m/m/d/i$b;->a(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    const-string v0, "p2pGroupInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    instance-of v0, p2, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_3

    move-object v8, p2

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pGroup;

    :cond_3
    if-eqz v8, :cond_6

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "WifiDirectManager group: "

    aput-object v0, p2, v1

    aput-object v8, p2, v3

    .line 9
    invoke-static {v2, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v7, v2, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 12
    :cond_5
    iput-boolean v1, p0, La/a/a/a/m/m/d/i;->f:Z

    iget-object p2, p0, La/a/a/a/m/m/d/i;->a:La/a/a/a/c;

    invoke-interface {p2}, La/a/a/a/c;->M()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_6

    iget-object p2, p0, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;

    .line 13
    iget-object p2, p2, La/a/a/a/m/m/d/h;->c:La/a/a/a/n/i/b;

    invoke-virtual {p2}, La/a/a/a/n/i/b;->a()V

    # --- patchK: 组丢失后自愈 (不重新 arm 的话链路会彻底静止) ---
    invoke-static {p0}, La/a/a/a/m/m/d/k;->a(La/a/a/a/m/m/d/i;)V

    :cond_6
    :goto_3
    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "WIFI_P2P_CONNECTION_CHANGED_ACTION "

    aput-object v0, p2, v1

    .line 14
    iget-boolean v0, p0, La/a/a/a/m/m/d/i;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, v3

    .line 15
    invoke-static {v2, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_7

    goto :goto_4

    .line 17
    :cond_7
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v7, v2, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    .line 18
    invoke-static {v0, v2}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "wifi_p2p_state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p1, :cond_9

    iput-boolean v1, p0, La/a/a/a/m/m/d/i;->f:Z

    :cond_9
    :goto_4
    return-void
.end method
