.class public final Lcom/baidu/carlifevehicle/logxfer/BtGuard;
.super Ljava/lang/Object;
.source "BtGuard.java"


# static fields
.field private static final CONNLOG:Ljava/lang/String; = "com.baidu.carlifevehicle.ConnLog"

.field private static final EXEC:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final MAX_WAIT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "CarLife_SDK"

.field private static sWait:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 44
    new-instance v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard$1;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard$1;-><init>()V

    .line 45
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->EXEC:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static onSkipDecision(ZLjava/lang/Runnable;)Z
    .locals 5

    .line 75
    nop

    .line 77
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 84
    sget p0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-eqz p0, :cond_0

    .line 85
    const-string p0, "\u2714 [\u84dd\u7259] \u5df2\u5f00\u542f, \u7ee7\u7eed\u5e26\u5916\u63e1\u624b"

    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 86
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 88
    :cond_0
    return v1

    .line 91
    :cond_1
    const/4 p0, 0x1

    if-nez v0, :cond_2

    .line 92
    const-string p1, "\u2716 [\u84dd\u7259] \u7cfb\u7edf\u65e0\u84dd\u7259\u9002\u914d\u5668(getDefaultAdapter=null), \u653e\u5f03\u84dd\u7259\u901a\u9053"

    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 93
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 94
    return p0

    .line 97
    :cond_2
    nop

    .line 99
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    goto :goto_1

    .line 100
    :catchall_1
    move-exception v2

    .line 101
    const/4 v2, 0x0

    .line 104
    :goto_1
    if-eqz v2, :cond_3

    .line 107
    const-string v3, "\u26a0 [\u84dd\u7259] \u72b6\u6001\u4e0d\u4e00\u81f4: BluetoothManager.getAdapter()=off / getDefaultAdapter()=on"

    invoke-static {v3}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 110
    :cond_3
    sget v3, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_4

    .line 111
    const-string p1, "\u2716 [\u84dd\u7259] \u5df2\u7b49\u5f85 30s \u4ecd\u672a\u5f00\u542f, \u653e\u5f03\u84dd\u7259\u901a\u9053(\u8bf7\u68c0\u67e5\u8f66\u673a\u84dd\u7259)"

    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 112
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 113
    return p0

    .line 116
    :cond_4
    sget v3, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    add-int/2addr v3, p0

    sput v3, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 117
    if-nez v2, :cond_5

    .line 119
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    goto :goto_2

    .line 120
    :catchall_2
    move-exception v0

    .line 124
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2026 [\u84dd\u7259] \u672a\u5f00\u542f, \u7b2c "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u6b21\u7b49\u5f85(1s \u540e\u91cd\u8bd5, \u5df2\u8bf7\u6c42 enable)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 126
    :try_start_3
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->EXEC:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {v0, p1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 130
    nop

    .line 131
    return p0

    .line 127
    :catchall_3
    move-exception p1

    .line 128
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 129
    return p0
.end method

.method private static say(Ljava/lang/String;)V
    .locals 6

    .line 59
    :try_start_0
    const-string v0, "com.baidu.carlifevehicle.ConnLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    const-string v1, "logLine"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    const-string v0, "CarLife_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void
.end method
