.class public final Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;
.super Ljava/lang/Object;
.source "NoBtFallback.java"


# static fields
.field private static final CONNLOG:Ljava/lang/String; = "com.baidu.carlifevehicle.ConnLog"

.field private static final TAG:Ljava/lang/String; = "CarLife_SDK"

.field private static volatile sArmed:Z

.field private static volatile sKeepGroup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sKeepGroup:Z

    .line 54
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sArmed:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$000()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->armTransport()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->showCredentials()V

    return-void
.end method

.method private static armTransport()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    nop

    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    if-nez v3, :cond_1

    .line 145
    :try_start_0
    const-string v3, "a.a.a.a.m.b"

    const-string v4, "a"

    invoke-static {v0, v3, v4}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    goto :goto_1

    .line 146
    :catchall_0
    move-exception v3

    .line 147
    move-object v3, v0

    .line 149
    :goto_1
    if-nez v3, :cond_0

    .line 150
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 143
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_1
    if-nez v3, :cond_2

    .line 154
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u5f15\u64ce\u672a\u5c31\u7eea, \u515c\u5e95\u672a\u6302\u8f7d"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 155
    return-void

    .line 157
    :cond_2
    const-string v0, "a.a.a.a.m.d"

    const-string v2, "E"

    invoke-static {v3, v0, v2}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    if-nez v0, :cond_3

    .line 159
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u4f20\u8f93\u7ba1\u7406\u5668\u672a\u5c31\u7eea, \u515c\u5e95\u672a\u6302\u8f7d"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 160
    return-void

    .line 162
    :cond_3
    const-string v2, "a.a.a.a.m.m.b"

    const-string v4, "c"

    invoke-static {v0, v2, v4}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 163
    instance-of v4, v2, Ljava/util/List;

    if-nez v4, :cond_4

    .line 164
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u4f20\u8f93\u5217\u8868\u4e0d\u53ef\u7528, \u515c\u5e95\u672a\u6302\u8f7d"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 165
    return-void

    .line 167
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 168
    const-string v4, "a.a.a.a.m.m.e.a"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 169
    monitor-enter v2

    .line 170
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 171
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u515c\u5e95\u76d1\u542c\u5df2\u5b58\u5728, \u4e0d\u91cd\u590d\u6302\u8f7d"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 173
    monitor-exit v2

    return-void

    .line 175
    :cond_5
    goto :goto_2

    .line 176
    :cond_6
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-string v7, "a.a.a.a.c"

    .line 177
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "a.a.a.a.a.j.c$a"

    .line 178
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 176
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v0, v5, v8

    .line 178
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v3, "a"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    const-string v0, "\u2714 [\u65e0\u84dd\u7259\u76f4\u8fde] UDP 7999 \u76d1\u542c\u5df2\u6302\u8f7d, \u7b49\u5f85\u624b\u673a\u63a5\u5165\u76f4\u8fde\u7f51\u7edc\u540e\u5e7f\u64ad"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 183
    return-void

    .line 181
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private static ctx()Landroid/content/Context;
    .locals 6

    .line 103
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 104
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 105
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    return-object v0
.end method

.method public static keepP2pGroup()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sKeepGroup:Z

    return v0
.end method

.method public static onBtDead()V
    .locals 4

    .line 66
    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sArmed:Z

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sArmed:Z

    .line 70
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sKeepGroup:Z

    .line 71
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$1;

    invoke-direct {v2}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$1;-><init>()V

    const-string v3, "CarLifeNoBt"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 86
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method private static readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 118
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    if-nez v0, :cond_2

    .line 122
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 125
    :cond_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_2

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 132
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static say(Ljava/lang/String;)V
    .locals 6

    .line 92
    :try_start_0
    const-string v0, "com.baidu.carlifevehicle.ConnLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    const-string v1, "logLine"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    const-string v0, "CarLife_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void
.end method

.method private static showCredentials()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u62ff\u4e0d\u5230 Context, \u65e0\u6cd5\u67e5\u8be2\u76f4\u8fde\u7ec4\u4fe1\u606f"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 193
    return-void

    .line 195
    :cond_0
    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 196
    if-nez v1, :cond_1

    .line 197
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011WifiP2pManager \u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 198
    return-void

    .line 200
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 201
    if-nez v0, :cond_2

    .line 202
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011P2P Channel \u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 203
    return-void

    .line 205
    :cond_2
    const-string v2, "\u2026 [\u65e0\u84dd\u7259\u76f4\u8fde] \u6b63\u5728\u8bfb\u53d6\u76f4\u8fde\u7f51\u7edc\u4fe1\u606f(\u6700\u957f 90s)\u2026"

    invoke-static {v2}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2d

    if-ge v3, v4, :cond_7

    .line 207
    const/4 v4, 0x1

    new-array v5, v4, [Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 208
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 210
    :try_start_0
    new-instance v4, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$2;

    invoke-direct {v4, v5, v6}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$2;-><init>([Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    nop

    .line 220
    const-wide/16 v7, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 224
    aget-object v4, v5, v2

    if-nez v4, :cond_3

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    .line 225
    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 227
    :cond_3
    aget-object v4, v5, v2

    .line 228
    if-eqz v4, :cond_6

    .line 229
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string v2, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {v2}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 233
    const-string v3, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u76f4\u8fde\u7f51\u7edc\u5df2\u5c31\u7eea(\u5168\u7a0b\u65e0\u9700\u84dd\u7259):"

    invoke-static {v3}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  \u2460 \u624b\u673a\u3010\u8bbe\u7f6e \u2192 WLAN\u3011\u8fde\u63a5\u7f51\u7edc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     \u5bc6\u7801: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_4

    const-string v1, "(\u65e0)"

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 236
    const-string v0, "  \u2461 \u8fde\u63a5\u540e\u6253\u5f00\u624b\u673a\u767e\u5ea6 CarLife \u2192 \u81ea\u52a8\u8fde\u4e0a\u8f66\u673a"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 237
    invoke-static {v2}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 238
    goto :goto_1

    .line 239
    :cond_5
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u76f4\u8fde\u7ec4\u5df2\u5efa\u7acb(\u672c\u673a\u4e0d\u662f\u7ec4\u4e3b), \u624b\u673a\u76f4\u63a5\u6253\u5f00 CarLife \u5373\u53ef"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 241
    :goto_1
    return-void

    .line 206
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011requestGroupInfo \u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 218
    return-void

    .line 244
    :cond_7
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u301190s \u5185\u76f4\u8fde\u7ec4\u672a\u5efa\u7acb \u2192 \u8bf7\u786e\u8ba4\u8f66\u673a Wi-Fi \u5df2\u5f00\u542f\uff1b\u6216\u6539\u7528\u3010\u70ed\u70b9\u3011/\u3010USB\u3011"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 245
    return-void
.end method
