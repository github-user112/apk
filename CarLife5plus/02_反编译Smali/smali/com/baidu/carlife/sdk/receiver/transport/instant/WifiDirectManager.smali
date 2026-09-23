.class public final Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\"B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR$\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001f\u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;",
        "Landroid/content/BroadcastReceiver;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;",
        "callbacks",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;)V",
        "Lr8/z;",
        "discoverable",
        "()V",
        "terminate",
        "Landroid/content/Context;",
        "context1",
        "Landroid/content/Intent;",
        "intent",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "wifiP2pManager",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "channel",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;",
        "discoverableTask",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;",
        "",
        "<set-?>",
        "isConnected",
        "Z",
        "()Z",
        "Callbacks",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final callbacks:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;

.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final context:Lcom/baidu/carlife/sdk/CarLifeContext;

.field private final discoverableTask:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;

.field private isConnected:Z

.field private final wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callbacks"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->callbacks:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v0, "wifip2p"

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "null cannot be cast to non-null type android.net.wifi.p2p.WifiP2pManager"

    .line 29
    .line 30
    invoke-static {p2, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p2, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$1;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$1;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "wifiP2pManager.initializ\u2026         }\n            })"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 60
    .line 61
    new-instance v1, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;

    .line 62
    .line 63
    invoke-direct {v1, p2, v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->discoverableTask:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;

    .line 67
    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1, p0, v0}, Lu3/f;->g(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 101
    .line 102
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/instant/a;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/a;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "requestConnectionInfo "

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object p1, v1, v2

    .line 13
    .line 14
    const-string v3, "CarLife_SDK"

    .line 15
    .line 16
    invoke-virtual {v0, v3, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-boolean p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->isConnected:Z

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->_init_$lambda$0(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;)Lcom/baidu/carlife/sdk/CarLifeContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWifiP2pManager$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setChannel$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final discoverable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->discoverableTask:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->discoverable()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->isConnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "context1"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v3, "onReceive intent.action: "

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v3, v2, v4

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    const-string v0, "CarLife_SDK"

    .line 29
    .line 30
    invoke-virtual {p1, v0, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_8

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const v6, -0x69a8390a

    .line 44
    .line 45
    .line 46
    if-eq v5, v6, :cond_2

    .line 47
    .line 48
    const p1, 0x6511c17d

    .line 49
    .line 50
    .line 51
    if-eq v5, p1, :cond_0

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    const-string p1, "android.net.wifi.p2p.STATE_CHANGED"

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_1
    const-string p1, "wifi_p2p_state"

    .line 66
    .line 67
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eq p1, v1, :cond_8

    .line 72
    .line 73
    iput-boolean v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->isConnected:Z

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 77
    .line 78
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const-string v2, "wifiP2pInfo"

    .line 86
    .line 87
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    instance-of v5, v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    move-object v2, v6

    .line 100
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v7, "WIFI_P2P_CONNECTION_CHANGED_ACTION info: "

    .line 103
    .line 104
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    new-array v7, v3, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v5, v7, v4

    .line 117
    .line 118
    invoke-virtual {p1, v0, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    iget-boolean v5, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 124
    .line 125
    if-eqz v5, :cond_6

    .line 126
    .line 127
    iput-boolean v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->isConnected:Z

    .line 128
    .line 129
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->callbacks:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;

    .line 130
    .line 131
    invoke-interface {v5, v2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager$Callbacks;->onDeviceConnected(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 132
    .line 133
    .line 134
    const-string v2, "p2pGroupInfo"

    .line 135
    .line 136
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    instance-of v2, p2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 141
    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    move-object v6, p2

    .line 145
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 146
    .line 147
    :cond_5
    if-eqz v6, :cond_7

    .line 148
    .line 149
    new-array p2, v1, [Ljava/lang/Object;

    .line 150
    .line 151
    const-string v2, "WifiDirectManager group: "

    .line 152
    .line 153
    aput-object v2, p2, v4

    .line 154
    .line 155
    aput-object v6, p2, v3

    .line 156
    .line 157
    invoke-virtual {p1, v0, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    iput-boolean v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->isConnected:Z

    .line 162
    .line 163
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 164
    .line 165
    invoke-interface {p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConnectionType()I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    const/16 v2, 0x9

    .line 170
    .line 171
    if-ne p2, v2, :cond_7

    .line 172
    .line 173
    iget-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->discoverableTask:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;

    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->discoverable()V

    .line 176
    .line 177
    .line 178
    :cond_7
    :goto_1
    iget-boolean p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->isConnected:Z

    .line 179
    .line 180
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    new-array v1, v1, [Ljava/lang/Object;

    .line 185
    .line 186
    const-string v2, "WIFI_P2P_CONNECTION_CHANGED_ACTION "

    .line 187
    .line 188
    aput-object v2, v1, v4

    .line 189
    .line 190
    aput-object p2, v1, v3

    .line 191
    .line 192
    invoke-virtual {p1, v0, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_8
    :goto_2
    return-void
.end method

.method public final terminate()V
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "WifiP2pManager terminate"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-string v2, "CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectManager;->discoverableTask:Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->terminate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
