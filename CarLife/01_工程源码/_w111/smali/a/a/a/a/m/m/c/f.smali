.class public final La/a/a/a/m/m/c/f;
.super Ljava/lang/Object;
.source "UsbPermissionGuard.java"


# static fields
# a: 已发起的请求次数   b: 上次请求时刻(uptimeMillis)
.field public static a:I

.field public static b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public static a()Z
    .locals 8

    # --- patchL: USB 权限弹窗去抖 ---
    # ---  亿连用静态 isPermissionRequesting 防重入 + 后台不弹。
    # ---  CarLife 的 UsbAccessoryScanner 每秒一轮, 无权限就 startActivity,
    # ---  结果每秒弹一次 UsbPermissionProxyActivity, 用户根本来不及点。
    # ---  这里 5 秒内只允许一次; 被抑制时顺带在扫描线程 sleep 4s, 等效 5s 一轮。
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, La/a/a/a/m/m/c/f;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-ltz v6, :deny

    sput-wide v0, La/a/a/a/m/m/c/f;->b:J

    sget v0, La/a/a/a/m/m/c/f;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, La/a/a/a/m/m/c/f;->a:I

    const-string v0, "CarLifeUsb"

    const-string v1, "usb permission request allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :deny
    const-string v0, "CarLifeUsb"

    const-string v1, "usb permission request suppressed (5s debounce)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xfa0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    # 异常时放行, 避免把自己锁死
    const/4 v0, 0x1

    return v0
.end method
