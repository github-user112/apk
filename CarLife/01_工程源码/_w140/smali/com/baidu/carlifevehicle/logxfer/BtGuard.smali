.class public final Lcom/baidu/carlifevehicle/logxfer/BtGuard;
.super Ljava/lang/Object;
.source "BtGuard.java"


# static fields
.field private static final CONNLOG:Ljava/lang/String; = "com.baidu.carlifevehicle.ConnLog"

.field private static final EXEC:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final MAX_WAIT:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "CarLife_SDK"

.field private static sCtx:Landroid/content/Context;

.field private static sCtxTried:Z

.field private static sDead:Z

.field private static sWait:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 61
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    .line 63
    const/4 v1, 0x0

    sput-object v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    .line 64
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtxTried:Z

    .line 66
    new-instance v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard$1;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard$1;-><init>()V

    .line 67
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->EXEC:Ljava/util/concurrent/ScheduledExecutorService;

    .line 66
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static bluetoothOnSetting()I
    .locals 10

    .line 145
    const/16 v0, -0x9

    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->ctx()Landroid/content/Context;

    move-result-object v1

    .line 146
    if-nez v1, :cond_0

    .line 147
    return v0

    .line 149
    :cond_0
    const-string v2, "android.provider.Settings$Global"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 150
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

    .line 152
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

    .line 153
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 154
    :catchall_0
    move-exception v1

    .line 155
    return v0
.end method

.method private static ctx()Landroid/content/Context;
    .locals 6

    .line 91
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtxTried:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtxTried:Z

    .line 96
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 97
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 98
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 99
    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sput-object v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    sput-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    .line 104
    :goto_0
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    return-object v0

    .line 92
    :cond_1
    :goto_1
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sCtx:Landroid/content/Context;

    return-object v0
.end method

.method private static diag(ZLjava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 210
    const-string p0, "err"

    .line 212
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 218
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->stateOf(Landroid/bluetooth/BluetoothAdapter;)I

    move-result v2

    .line 219
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v3

    .line 220
    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v4

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
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

    .line 224
    const-string v2, " isEnabled="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    const-string v2, " \u7cfb\u7edf\u8def\u5f84(BluetoothManager)isEnabled="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
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

    .line 227
    const-string v1, " bluetooth_on="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->bluetoothOnSetting()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    if-eqz v0, :cond_2

    .line 230
    nop

    .line 231
    nop

    .line 233
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    goto :goto_2

    .line 234
    :catchall_1
    move-exception v1

    .line 235
    move-object v1, p0

    .line 238
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 241
    goto :goto_3

    .line 239
    :catchall_2
    move-exception v2

    .line 240
    nop

    .line 242
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

    .line 244
    nop

    .line 246
    :try_start_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    .line 247
    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_4

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 250
    :goto_4
    goto :goto_5

    .line 248
    :catchall_3
    move-exception p0

    .line 249
    const/4 p0, -0x2

    .line 251
    :goto_5
    const-string v0, " \u5df2\u914d\u5bf9="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    goto :goto_6

    .line 253
    :cond_2
    const-string p0, " adapter=null"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :goto_6
    if-eqz p1, :cond_3

    .line 256
    const-string p0, " enable()\u8fd4\u56de="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    :cond_3
    if-eqz p2, :cond_4

    .line 259
    const-string p0, " \u5f02\u5e38="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1

    .line 132
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 133
    return v0

    .line 136
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    return v0
.end method

.method private static managerAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 6

    .line 192
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->ctx()Landroid/content/Context;

    move-result-object v1

    .line 193
    if-nez v1, :cond_0

    .line 194
    return-object v0

    .line 196
    :cond_0
    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 197
    if-nez v1, :cond_1

    .line 198
    return-object v0

    .line 200
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAdapter"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 201
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    check-cast v1, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 203
    :catchall_0
    move-exception v1

    .line 204
    return-object v0
.end method

.method public static onSkipDecision(ZLjava/lang/Runnable;)Z
    .locals 15

    .line 274
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 275
    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    if-eqz v0, :cond_0

    .line 276
    sput-boolean v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    .line 277
    const-string v0, "\u2714 [\u84dd\u7259] \u5df2\u5f00\u542f(\u6b64\u524d\u5224\u8fc7\u4e0d\u53ef\u7528\uff0c\u73b0\u5df2\u6062\u590d), \u7ee7\u7eed\u5e26\u5916\u63e1\u624b"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-eqz v0, :cond_1

    .line 279
    const-string v0, "\u2714 [\u84dd\u7259] \u5df2\u5f00\u542f, \u7ee7\u7eed\u5e26\u5916\u63e1\u624b"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 281
    :cond_1
    :goto_0
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 282
    return v1

    .line 285
    :cond_2
    nop

    .line 287
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    move-object v3, v0

    goto :goto_1

    .line 288
    :catchall_0
    move-exception v0

    .line 289
    move-object v3, v2

    .line 292
    :goto_1
    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 293
    sput-boolean v4, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    .line 294
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 295
    const-string v0, "\u2716 [\u84dd\u7259] \u7cfb\u7edf\u65e0\u84dd\u7259\u9002\u914d\u5668(getDefaultAdapter=null), \u653e\u5f03\u84dd\u7259\u901a\u9053"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 296
    const-string v0, "   \u2192 \u8fd9\u53f0\u8f66\u673a\u6ca1\u6709 Android \u84dd\u7259\u786c\u4ef6\uff0c\u5df2\u81ea\u52a8\u542f\u7528\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u515c\u5e95\uff08\u89c1\u4e0b\u65b9\u6307\u5f15\uff09"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->onBtDead()V

    .line 299
    return v4

    .line 303
    :cond_3
    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    if-eqz v0, :cond_5

    .line 304
    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-nez v0, :cond_4

    .line 305
    const-string v0, "\u2026 [\u84dd\u7259] \u4ecd\u4e0d\u53ef\u7528(\u5df2\u5224\u6b7b, \u8df3\u8fc7\u7b49\u5f85) \u2192 \u65e0\u84dd\u7259\u515c\u5e95\u5df2\u542f\u7528, \u6309\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011\u6307\u5f15\u64cd\u4f5c"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 307
    :cond_4
    return v4

    .line 310
    :cond_5
    invoke-static {v3}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v5

    .line 311
    invoke-static {v3}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->stateOf(Landroid/bluetooth/BluetoothAdapter;)I

    move-result v6

    .line 314
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v0

    if-eq v5, v0, :cond_6

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u26a0 [\u84dd\u7259] \u72b6\u6001\u4e0d\u4e00\u81f4: getDefaultAdapter()="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " / BluetoothManager.getAdapter()="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->enabledOf(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 320
    :cond_6
    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const-string v7, "   "

    const/16 v8, 0x2d

    if-lt v0, v8, :cond_7

    .line 321
    sput-boolean v4, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sDead:Z

    .line 322
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 323
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

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 325
    const-string v0, "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 326
    const-string v1, "\u2716 [\u84dd\u7259\u4e0d\u53ef\u7528] \u8f66\u673a Android \u84dd\u7259\u6ca1\u80fd\u5f00\u542f \u2192 \u539f\u7248\u76f4\u8fde\u7684 SSID/PSK \u6ca1\u6cd5\u8d70\u84dd\u7259\u7ed9\u624b\u673a"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 327
    const-string v1, "   \u8f66\u673a\u4fa7\u76f4\u8fde\u7ec4\u5176\u5b9e\u5efa\u597d\u4e86(DIRECT-\u2026/GO 192.168.49.1)\uff0c\u5b83\u672c\u8eab\u5c31\u662f\u4e2a\u5e26\u5bc6\u7801\u7684 WiFi \u70ed\u70b9"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 328
    const-string v1, "   \u2605 1.40 \u5df2\u81ea\u52a8\u542f\u7528\u3010\u65e0\u84dd\u7259\u76f4\u8fde\u3011(\u4ebf\u8fde\u5f0f)\uff1a\u624b\u673a WLAN \u624b\u52a8\u8fde\u4e0a\u76f4\u8fde\u7f51\u7edc\u5373\u53ef\uff0c\u89c1\u4e0b\u65b9\u6307\u5f15"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 329
    const-string v1, "   \u5907\u9009\uff1a\u2460 \u6539\u70b9\u3010\u70ed\u70b9\u3011\u9875\u7b7e \u2461 \u6539\u7528\u3010USB\u3011\u6709\u7ebf"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 330
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->onBtDead()V

    .line 333
    return v4

    .line 336
    :cond_7
    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    add-int/2addr v0, v4

    sput v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 339
    nop

    .line 340
    nop

    .line 341
    const-string v9, ""

    const-string v10, "/"

    if-nez v5, :cond_a

    const/16 v0, 0xb

    if-eq v6, v0, :cond_a

    const/16 v0, 0xe

    if-eq v6, v0, :cond_a

    .line 343
    :try_start_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 346
    move-object v11, v0

    goto :goto_2

    .line 344
    :catchall_1
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v2

    move-object v2, v0

    .line 348
    :goto_2
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->managerAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_9

    .line 351
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 354
    goto :goto_4

    .line 352
    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_8

    move-object v2, v9

    goto :goto_3

    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
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

    .line 356
    :cond_9
    :goto_4
    move-object v0, v2

    move-object v2, v11

    goto :goto_5

    :cond_a
    if-nez v5, :cond_b

    .line 357
    const-string v0, "skip(TURNING_ON)"

    goto :goto_5

    .line 356
    :cond_b
    move-object v0, v2

    .line 361
    :goto_5
    const/16 v3, 0x1e

    if-nez v5, :cond_f

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/16 v11, 0xc

    if-eq v5, v11, :cond_c

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-ne v5, v3, :cond_f

    .line 362
    :cond_c
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->pokeBluetoothOnSetting()Ljava/lang/Boolean;

    move-result-object v5

    .line 363
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u2026 [\u84dd\u7259] \u5c1d\u8bd5\u6539\u5199 Settings.Global(bluetooth_on)=1 \u2192 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 364
    if-nez v5, :cond_d

    const-string v5, "\u65e0 Context, \u8df3\u8fc7"

    goto :goto_6

    .line 365
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "\u5199\u5165\u6210\u529f"

    goto :goto_6

    :cond_e
    const-string v5, "\u65e0 WRITE_SECURE_SETTINGS \u6743\u9650"

    :goto_6
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-static {v5}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 369
    :cond_f
    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/4 v11, 0x5

    if-eq v5, v4, :cond_11

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/4 v12, 0x2

    if-eq v5, v12, :cond_11

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-eq v5, v11, :cond_11

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/16 v12, 0xa

    if-eq v5, v12, :cond_11

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    const/16 v12, 0x14

    if-eq v5, v12, :cond_11

    sget v5, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-eq v5, v3, :cond_11

    sget v3, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    if-lt v3, v8, :cond_10

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v3, 0x1

    .line 371
    :goto_8
    const-string v5, ")"

    const-string v12, "("

    const-string v13, " \u6b21\u7b49\u5f85(1s \u540e\u91cd\u8bd5) state="

    const-string v14, "\u2026 [\u84dd\u7259] \u672a\u5f00\u542f, \u7b2c "

    if-eqz v3, :cond_14

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v11, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 373
    invoke-static {v6}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->stateName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 374
    if-nez v2, :cond_12

    move-object v5, v9

    goto :goto_9

    :cond_12
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

    :goto_9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 375
    if-nez v0, :cond_13

    goto :goto_a

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_a
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-static {v3}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    goto :goto_b

    .line 377
    :cond_14
    sget v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    rem-int/2addr v0, v11

    if-nez v0, :cond_15

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    invoke-static {v6}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->stateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->say(Ljava/lang/String;)V

    .line 383
    :cond_15
    :goto_b
    :try_start_3
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->EXEC:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 387
    nop

    .line 388
    return v4

    .line 384
    :catchall_3
    move-exception v0

    .line 385
    sput v1, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->sWait:I

    .line 386
    return v4
.end method

.method private static pokeBluetoothOnSetting()Ljava/lang/Boolean;
    .locals 10

    .line 172
    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/BtGuard;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 173
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 174
    return-object v1

    .line 176
    :cond_0
    const-string v2, "android.provider.Settings$Global"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 177
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

    .line 179
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

    .line 180
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static say(Ljava/lang/String;)V
    .locals 6

    .line 81
    :try_start_0
    const-string v0, "com.baidu.carlifevehicle.ConnLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    const-string v1, "logLine"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    const-string v0, "CarLife_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void
.end method

.method private static stateName(I)Ljava/lang/String;
    .locals 0

    .line 109
    packed-switch p0, :pswitch_data_0

    .line 116
    const-string p0, "?"

    return-object p0

    .line 115
    :pswitch_0
    const-string p0, "BLE_ON"

    return-object p0

    .line 114
    :pswitch_1
    const-string p0, "BLE_TURNING_ON"

    return-object p0

    .line 113
    :pswitch_2
    const-string p0, "TURNING_OFF"

    return-object p0

    .line 112
    :pswitch_3
    const-string p0, "ON"

    return-object p0

    .line 111
    :pswitch_4
    const-string p0, "TURNING_ON"

    return-object p0

    .line 110
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

    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 p0, -0x1

    return p0

    .line 125
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    const/4 p0, -0x2

    return p0
.end method
