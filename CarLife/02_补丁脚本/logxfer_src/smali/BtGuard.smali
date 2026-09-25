.class public final Lcom/baidu/carlifevehicle/logxfer/BtGuard;
.super Ljava/lang/Object;
.source "BtGuard.java"


# static fields
.field private static final CONNLOG:Ljava/lang/String; = "com.baidu.carlifevehicle.ConnLog"

.field private static final EXEC:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final FAST_WAIT:I = 0x6

.field private static final MAX_WAIT:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "CarLife_SDK"

.field private static sCtx:Landroid/content/Context;

.field private static sCtxTried:Z

.field private static sDead:Z

.field private static sSawTransition:Z

.field private static sWait:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 76
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    .line 79
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sSawTransition:Z

    .line 81
    const/4 v1, 0x0

    sput-object v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    .line 82
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtxTried:Z

    .line 84
    new-instance v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard$1;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard$1;-><init>()V

    .line 85
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->EXEC:Ljava/util/concurrent/ScheduledExecutorService;

    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method private static bluetoothOnSetting()I
    .locals 10

    .line 163
    const/16 v0, -0x9

    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->ctx()Landroid/content/Context;

    move-result-object v1

    .line 164
    if-nez v1, :cond_0

    .line 165
    return v0

    .line 167
    :cond_0
    const-string v2, "android.provider.Settings$Global"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 168
    const-string v3, "getInt"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/ContentResolver;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 170
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    aput-object v1, v3, v7

    const-string v1, "bluetooth_on"

    aput-object v1, v3, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 172
    :catchall_0
    move-exception v1

    .line 173
    return v0
.end method

.method private static ctx()Landroid/content/Context;
    .locals 6

    .line 109
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtxTried:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtxTried:Z

    .line 114
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 115
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 116
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 118
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sput-object v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v1

    .line 120
    sput-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    .line 122
    :goto_0
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    return-object v0

    .line 110
    :cond_1
    :goto_1
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    return-object v0
.end method

.method private static diag(ZLjava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 228
    const-string p0, "err"

    .line 230
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 236
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->stateOf(Landroid/bluetooth/BluetoothAdapter;)I

    move-result v2

    .line 237
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v3

    .line 238
    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v4

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    const-string v6, "[\u84dd\u7259\u8bca\u65ad] state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->stateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, " isEnabled="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    const-string v2, " \u7cfb\u7edf\u8def\u5f84(BluetoothManager)isEnabled="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    const-string v2, " \u540c\u4e00\u5bf9\u8c61="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, " bluetooth_on="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->bluetoothOnSetting()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    if-eqz v0, :cond_2

    .line 248
    nop

    .line 249
    nop

    .line 251
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    goto :goto_2

    .line 252
    :catchall_1
    move-exception v1

    .line 253
    move-object v1, p0

    .line 256
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 259
    goto :goto_3

    .line 257
    :catchall_2
    move-exception v2

    .line 258
    nop

    .line 260
    :goto_3
    const-string v2, " addr="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    nop

    .line 264
    :try_start_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    .line 265
    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_4

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 268
    :goto_4
    goto :goto_5

    .line 266
    :catchall_3
    move-exception p0

    .line 267
    const/4 p0, -0x2

    .line 269
    :goto_5
    const-string v0, " \u5df2\u914d\u5bf9="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    goto :goto_6

    .line 271
    :cond_2
    const-string p0, " adapter=null"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :goto_6
    if-eqz p1, :cond_3

    .line 274
    const-string p0, " enable()\u8fd4\u56de="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 276
    :cond_3
    if-eqz p2, :cond_4

    .line 277
    const-string p0, " \u5f02\u5e38="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1

    .line 150
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 151
    return v0

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    return v0
.end method

.method private static managerAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 6

    .line 210
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->ctx()Landroid/content/Context;

    move-result-object v1

    .line 211
    if-nez v1, :cond_0

    .line 212
    return-object v0

    .line 214
    :cond_0
    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    if-nez v1, :cond_1

    .line 216
    return-object v0

    .line 218
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAdapter"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 219
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    check-cast v1, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 221
    :catchall_0
    move-exception v1

    .line 222
    return-object v0
.end method

.method public static onSkipDecision(ZLjava/lang/Runnable;)Z
    .locals 15

    .line 292
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 293
    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    if-eqz v0, :cond_0

    .line 294
    sput-boolean v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    .line 295
    const-string v0, "\u2714 [\u84dd\u7259] \u5df2\u5f00\u542f(\u6b64\u524d\u5224\u8fc7\u4e0d\u53ef\u7528\uff0c\u73b0\u5df2\u6062\u590d), \u7ee7\u7eed\u5e26\u5916\u63e1\u624b"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_0
    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "\u2714 [\u84dd\u7259] \u5df2\u5f00\u542f, \u7ee7\u7eed\u5e26\u5916\u63e1\u624b"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 299
    :cond_1
    :goto_0
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 300
    return v1

    .line 303
    :cond_2
    nop

    .line 305
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    move-object v3, v0

    goto :goto_1

    .line 306
    :catchall_0
    move-exception v0

    .line 307
    move-object v3, v2

    .line 310
    :goto_1
    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 311
    sput-boolean v4, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    .line 312
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 313
    const-string v0, "\u2716 [\u84dd\u7259] \u7cfb\u7edf\u65e0\u84dd\u7259\u9002\u914d\u5668(getDefaultAdapter=null), \u653e\u5f03\u84dd\u7259\u901a\u9053"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 314
    const-string v0, "   \u2192 \u8fd9\u53f0\u8f66\u673a\u6ca1\u6709 Android \u84dd\u7259\u786c\u4ef6\uff0c\u5df2\u81ea\u52a8\u542f\u7528\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u515c\u5e95\uff08\u89c1\u4e0b\u65b9\u6307\u5f15\uff09"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->onBtDead()V

    .line 317
    return v4

    .line 321
    :cond_3
    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    if-eqz v0, :cond_5

    .line 322
    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-nez v0, :cond_4

    .line 323
    const-string v0, "\u2026 [\u84dd\u7259] \u4ecd\u4e0d\u53ef\u7528(\u5df2\u5224\u6b7b, \u8df3\u8fc7\u7b49\u5f85) \u2192 \u65e0\u84dd\u7259\u515c\u5e95\u5df2\u542f\u7528, \u6309\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u6307\u5f15\u64cd\u4f5c"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 325
    :cond_4
    return v4

    .line 328
    :cond_5
    invoke-static {v3}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v5

    .line 329
    invoke-static {v3}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->stateOf(Landroid/bluetooth/BluetoothAdapter;)I

    move-result v6

    .line 333
    const/16 v7, 0xa

    if-eq v6, v7, :cond_6

    .line 334
    sput-boolean v4, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sSawTransition:Z

    .line 338
    :cond_6
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v0

    if-eq v5, v0, :cond_7

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u26a0 [\u84dd\u7259] \u72b6\u6001\u4e0d\u4e00\u81f4: getDefaultAdapter()="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " / BluetoothManager.getAdapter()="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 340
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 344
    :cond_7
    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sSawTransition:Z

    if-nez v0, :cond_8

    if-ne v6, v7, :cond_8

    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/4 v8, 0x6

    if-lt v0, v8, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 345
    :goto_2
    sget v8, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const-string v9, "   "

    const/16 v10, 0x2d

    if-ge v8, v10, :cond_18

    if-eqz v0, :cond_9

    goto/16 :goto_d

    .line 366
    :cond_9
    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    add-int/2addr v0, v4

    sput v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 369
    nop

    .line 370
    nop

    .line 371
    const-string v8, ""

    const-string v11, "/"

    if-nez v5, :cond_c

    const/16 v0, 0xb

    if-eq v6, v0, :cond_c

    const/16 v0, 0xe

    if-eq v6, v0, :cond_c

    .line 373
    :try_start_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    move-object v12, v0

    goto :goto_3

    .line 374
    :catchall_1
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v2

    move-object v2, v0

    .line 378
    :goto_3
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_b

    if-eq v0, v3, :cond_b

    .line 381
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 384
    goto :goto_5

    .line 382
    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_a

    move-object v2, v8

    goto :goto_4

    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 386
    :cond_b
    :goto_5
    move-object v0, v2

    move-object v2, v12

    goto :goto_6

    :cond_c
    if-nez v5, :cond_d

    .line 387
    const-string v0, "skip(TURNING_ON)"

    goto :goto_6

    .line 386
    :cond_d
    move-object v0, v2

    .line 392
    :goto_6
    const/16 v3, 0x1e

    if-nez v5, :cond_11

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/4 v12, 0x4

    if-eq v5, v12, :cond_e

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/16 v12, 0xc

    if-eq v5, v12, :cond_e

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-ne v5, v3, :cond_11

    .line 393
    :cond_e
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->pokeBluetoothOnSetting()Ljava/lang/Boolean;

    move-result-object v5

    .line 394
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u2026 [\u84dd\u7259] \u5c1d\u8bd5\u6539\u5199 Settings.Global(bluetooth_on)=1 \u2192 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 395
    if-nez v5, :cond_f

    const-string v5, "\u65e0 Context, \u8df3\u8fc7"

    goto :goto_7

    .line 396
    :cond_f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "\u5199\u5165\u6210\u529f"

    goto :goto_7

    :cond_10
    const-string v5, "\u65e0 WRITE_SECURE_SETTINGS \u6743\u9650"

    :goto_7
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 394
    invoke-static {v5}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 400
    :cond_11
    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/4 v12, 0x5

    if-eq v5, v4, :cond_13

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/4 v13, 0x2

    if-eq v5, v13, :cond_13

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-eq v5, v12, :cond_13

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-eq v5, v7, :cond_13

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/16 v7, 0x14

    if-eq v5, v7, :cond_13

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-eq v5, v3, :cond_13

    sget v3, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-lt v3, v10, :cond_12

    goto :goto_8

    :cond_12
    const/4 v3, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v3, 0x1

    .line 402
    :goto_9
    const-string v5, ")"

    const-string v7, "("

    const-string v13, " \u6b21\u7b49\u5f85(1s \u540e\u91cd\u8bd5) state="

    const-string v14, "\u2026 [\u84dd\u7259] \u672a\u5f00\u542f, \u7b2c "

    if-eqz v3, :cond_16

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v12, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 404
    invoke-static {v6}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->stateName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 405
    if-nez v2, :cond_14

    move-object v5, v8

    goto :goto_a

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " enable()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 406
    if-nez v0, :cond_15

    goto :goto_b

    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-static {v3}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v5

    invoke-static {v5, v2, v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->diag(ZLjava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    goto :goto_c

    .line 408
    :cond_16
    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    rem-int/2addr v0, v12

    if-nez v0, :cond_17

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    invoke-static {v6}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->stateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 414
    :cond_17
    :goto_c
    :try_start_3
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->EXEC:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 418
    nop

    .line 419
    return v4

    .line 415
    :catchall_3
    move-exception v0

    .line 416
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 417
    return v4

    .line 346
    :cond_18
    :goto_d
    sput-boolean v4, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    .line 347
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 348
    if-eqz v0, :cond_19

    .line 349
    const-string v0, "\u2716 [\u84dd\u7259] \u8fde\u7eed 6s state=10(OFF) \u4e14\u4ece\u672a\u8fdb\u5165 TURNING_ON \u2192 \u5feb\u901f\u5224\u6b7b(1.45), \u653e\u5f03\u84dd\u7259\u901a\u9053"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    goto :goto_e

    .line 352
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2716 [\u84dd\u7259] \u5df2\u7b49\u5f85 45s \u4ecd\u672a\u5f00\u542f(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), \u653e\u5f03\u84dd\u7259\u901a\u9053"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 354
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    invoke-static {v1, v2, v2}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->diag(ZLjava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 355
    const-string v0, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 356
    const-string v1, "\u2716 [\u84dd\u7259\u4e0d\u53ef\u7528] \u8f66\u673a Android \u84dd\u7259\u6ca1\u80fd\u5f00\u542f \u2192 \u539f\u7248\u76f4\u8fde\u7684 SSID/PSK \u6ca1\u6cd5\u8d70\u84dd\u7259\u7ed9\u624b\u673a"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 357
    const-string v1, "   \u8f66\u673a\u4fa7\u76f4\u8fde\u7ec4\u5176\u5b9e\u5efa\u597d\u4e86(DIRECT-\u2026/GO 192.168.49.1)\uff0c\u5b83\u672c\u8eab\u5c31\u662f\u4e2a\u5e26\u5bc6\u7801\u7684 WiFi \u70ed\u70b9"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 358
    const-string v1, "   \u2605 1.40 \u5df2\u81ea\u52a8\u542f\u7528\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011(\u4ebf\u8fde\u5f0f)\uff1a\u624b\u673a WLAN \u624b\u52a8\u8fde\u4e0a\u76f4\u8fde\u7f51\u7edc\u5373\u53ef\uff0c\u89c1\u4e0b\u65b9\u6307\u5f15"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 359
    const-string v1, "   \u5907\u9009\uff1a\u2460 \u6539\u70b9\u3010\u70ed\u70b9\u3011\u9875\u7b7e \u2461 \u6539\u7528\u3010USB\u3011\u6709\u7ebf"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 360
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->onBtDead()V

    .line 363
    return v4
.end method

.method private static pokeBluetoothOnSetting()Ljava/lang/Boolean;
    .locals 10

    .line 190
    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 191
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    return-object v1

    .line 194
    :cond_0
    const-string v2, "android.provider.Settings$Global"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 195
    const-string v3, "putInt"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/ContentResolver;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 197
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "bluetooth_on"

    aput-object v0, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static say(Ljava/lang/String;)V
    .locals 6

    .line 99
    :try_start_0
    const-string v0, "com.baidu.carlifevehicle.ConnLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    const-string v1, "logLine"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 101
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    const-string v0, "CarLife_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void
.end method

.method private static stateName(I)Ljava/lang/String;
    .locals 0

    .line 127
    packed-switch p0, :pswitch_data_0

    .line 134
    const-string p0, "?"

    return-object p0

    .line 133
    :pswitch_0
    const-string p0, "BLE_ON"

    return-object p0

    .line 132
    :pswitch_1
    const-string p0, "BLE_TURNING_ON"

    return-object p0

    .line 131
    :pswitch_2
    const-string p0, "TURNING_OFF"

    return-object p0

    .line 130
    :pswitch_3
    const-string p0, "ON"

    return-object p0

    .line 129
    :pswitch_4
    const-string p0, "TURNING_ON"

    return-object p0

    .line 128
    :pswitch_5
    const-string p0, "OFF"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static stateOf(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 0

    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 p0, -0x1

    return p0

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    const/4 p0, -0x2

    return p0
.end method
