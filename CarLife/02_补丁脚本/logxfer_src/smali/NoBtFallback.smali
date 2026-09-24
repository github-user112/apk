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

    .line 151
    nop

    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    if-nez v3, :cond_1

    .line 154
    :try_start_0
    const-string v3, "a.a.a.a.m.b"

    const-string v4, "a"

    invoke-static {v0, v3, v4}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    goto :goto_1

    .line 155
    :catchall_0
    move-exception v3

    .line 156
    move-object v3, v0

    .line 158
    :goto_1
    if-nez v3, :cond_0

    .line 159
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 152
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    if-nez v3, :cond_2

    .line 163
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u5f15\u64ce\u672a\u5c31\u7eea, \u515c\u5e95\u672a\u6302\u8f7d"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 164
    return-void

    .line 166
    :cond_2
    const-string v0, "a.a.a.a.m.d"

    const-string v2, "E"

    invoke-static {v3, v0, v2}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    if-nez v0, :cond_3

    .line 168
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u4f20\u8f93\u7ba1\u7406\u5668\u672a\u5c31\u7eea, \u515c\u5e95\u672a\u6302\u8f7d"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 169
    return-void

    .line 171
    :cond_3
    const-string v2, "a.a.a.a.m.m.b"

    const-string v4, "c"

    invoke-static {v0, v2, v4}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    instance-of v4, v2, Ljava/util/List;

    if-nez v4, :cond_4

    .line 173
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u4f20\u8f93\u5217\u8868\u4e0d\u53ef\u7528, \u515c\u5e95\u672a\u6302\u8f7d"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 174
    return-void

    .line 176
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 177
    const-string v4, "a.a.a.a.m.m.e.a"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 178
    monitor-enter v2

    .line 179
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 180
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 181
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u515c\u5e95\u76d1\u542c\u5df2\u5b58\u5728, \u4e0d\u91cd\u590d\u6302\u8f7d"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 182
    monitor-exit v2

    return-void

    .line 184
    :cond_5
    goto :goto_2

    .line 185
    :cond_6
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-string v7, "a.a.a.a.c"

    .line 186
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "a.a.a.a.a.j.c$a"

    .line 187
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 185
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v0, v5, v8

    .line 187
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 188
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v5, "a"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 193
    :try_start_2
    const-string v4, "a.a.a.a.m.m.b"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 194
    const-string v5, "b"

    new-array v6, v8, [Ljava/lang/Class;

    const-string v7, "a.a.a.a.a.j.c"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 195
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    goto :goto_3

    .line 196
    :catchall_1
    move-exception v0

    .line 197
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011attach \u4f20\u8f93\u5931\u8d25(\u4e0d\u5f71\u54cd\u76d1\u542c): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 199
    :goto_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    const-string v0, "\u2714 [\u65e0\u84dd\u7259\u76f4\u8fde] UDP 7999 \u76d1\u542c\u5df2\u6302\u8f7d, \u7b49\u5f85\u624b\u673a\u63a5\u5165\u76f4\u8fde\u7f51\u7edc\u540e\u5e7f\u64ad"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 201
    return-void

    .line 199
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private static ctx()Landroid/content/Context;
    .locals 6

    .line 108
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 109
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 110
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 113
    :catchall_0
    move-exception v1

    .line 114
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

    .line 71
    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sArmed:Z

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sArmed:Z

    .line 75
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sKeepGroup:Z

    .line 76
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$1;

    invoke-direct {v2}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$1;-><init>()V

    const-string v3, "CarLifeNoBt"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 91
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method

.method private static readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    if-eqz p0, :cond_1

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 127
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_0
    if-nez v0, :cond_2

    .line 131
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 134
    :cond_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_2

    .line 139
    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 142
    :goto_2
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static resetKeepGroup()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->sKeepGroup:Z

    .line 67
    return-void
.end method

.method private static say(Ljava/lang/String;)V
    .locals 6

    .line 97
    :try_start_0
    const-string v0, "com.baidu.carlifevehicle.ConnLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-string v1, "logLine"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    const-string v0, "CarLife_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void
.end method

.method private static showCredentials()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 210
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u62ff\u4e0d\u5230 Context, \u65e0\u6cd5\u67e5\u8be2\u76f4\u8fde\u7ec4\u4fe1\u606f"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 211
    return-void

    .line 213
    :cond_0
    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 214
    if-nez v1, :cond_1

    .line 215
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011WifiP2pManager \u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 216
    return-void

    .line 218
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 219
    if-nez v0, :cond_2

    .line 220
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011P2P Channel \u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 221
    return-void

    .line 223
    :cond_2
    const-string v2, "\u2026 [\u65e0\u84dd\u7259\u76f4\u8fde] \u6b63\u5728\u8bfb\u53d6\u76f4\u8fde\u7f51\u7edc\u4fe1\u606f(\u6700\u957f 90s)\u2026"

    invoke-static {v2}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 224
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x2d

    if-ge v4, v5, :cond_7

    .line 225
    const/4 v5, 0x1

    new-array v6, v5, [Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 226
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 228
    :try_start_0
    new-instance v5, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$2;

    invoke-direct {v5, v6, v7}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$2;-><init>([Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    nop

    .line 238
    const-wide/16 v8, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 242
    aget-object v5, v6, v2

    if-nez v5, :cond_3

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_3

    .line 243
    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 245
    :cond_3
    aget-object v5, v6, v2

    .line 246
    if-eqz v5, :cond_6

    .line 247
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    nop

    .line 253
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getPassphrase"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 254
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    move-object v3, v1

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v1

    .line 258
    :goto_1
    const-string v1, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 259
    const-string v2, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u76f4\u8fde\u7f51\u7edc\u5df2\u5c31\u7eea(\u5168\u7a0b\u65e0\u9700\u84dd\u7259):"

    invoke-static {v2}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  \u2460 \u624b\u673a\u3010\u8bbe\u7f6e \u2192 WLAN\u3011\u8fde\u63a5\u7f51\u7edc: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     \u5bc6\u7801: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_4

    const-string v3, "(\u65e0)"

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 262
    const-string v0, "  \u2461 \u8fde\u63a5\u540e\u6253\u5f00\u624b\u673a\u767e\u5ea6 CarLife \u2192 \u81ea\u52a8\u8fde\u4e0a\u8f66\u673a"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 263
    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 264
    goto :goto_2

    .line 265
    :cond_5
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u76f4\u8fde\u7ec4\u5df2\u5efa\u7acb(\u672c\u673a\u4e0d\u662f\u7ec4\u4e3b), \u624b\u673a\u76f4\u63a5\u6253\u5f00 CarLife \u5373\u53ef"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 267
    :goto_2
    return-void

    .line 224
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 234
    :catchall_1
    move-exception v0

    .line 235
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

    .line 236
    return-void

    .line 270
    :cond_7
    const-string v0, "\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u301190s \u5185\u76f4\u8fde\u7ec4\u672a\u5efa\u7acb \u2192 \u8bf7\u786e\u8ba4\u8f66\u673a Wi-Fi \u5df2\u5f00\u542f\uff1b\u6216\u6539\u7528\u3010\u70ed\u70b9\u3011/\u3010USB\u3011"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->say(Ljava/lang/String;)V

    .line 271
    return-void
.end method
