.class public final La/a/a/a/m/m/c/f;
.super Ljava/lang/Object;
.source "UsbPermissionGuard.java"


# static fields
# a: 已发起的请求次数   b: 上次请求时刻(uptimeMillis)
.field public static a:I

.field public static b:J

# patchP: 静默 openDevice 已验证可用 -> 之后一律放行, 全程不弹窗
.field private static q:Z


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

# ---------------------------------------------------------------------------
# patchP: USB 免弹窗授权决策入口
#   UsbAccessoryScanner 原本调 UsbManager.hasPermission() 判断能否打开设备。
#   这里替换成 f.c(), 三级判定:
#     1) 系统里已有授权记录       -> 放行
#     2) 之前静默 open 成功过(q)  -> 放行
#     3) 否则静默 openDevice 试探 -> 成功则置 q 并放行
#   三级全失败才返回 false, 让上层走原来的弹窗路径。
#
#   原理: Android 的 USB 权限是 App 侧的「君子协定」。UsbManager.hasPermission()
#   只是查 UsbSettingsManager 的授权记录表; 而真正打开设备的
#   UsbManager.openDevice() 会跨进程调到 UsbService(system_server),
#   Android 4.x 上这条路 **不校验** 那张表。所以不弹窗直接 open 是能成功的。
#
#   smali: 全程只用 v0/v1, 严格遵守 "invoke/if-* 只能 v0-v15"。
# ---------------------------------------------------------------------------
.method public static c(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :chk_dev

    return v0

    :chk_dev
    if-eqz p1, :has_perm

    return v0

    :has_perm
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :silent

    const/4 v0, 0x1

    return v0

    :silent
    sget-boolean v0, La/a/a/a/m/m/c/f;->q:Z

    if-eqz v0, :try_silent

    const/4 v0, 0x1

    return v0

    :try_silent
    invoke-static {p0, p1}, La/a/a/a/m/m/c/f;->e(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :fail

    const/4 v1, 0x1

    sput-boolean v1, La/a/a/a/m/m/c/f;->q:Z

    const/4 v0, 0x1

    return v0

    :fail
    const/4 v0, 0x0

    return v0
.end method

# ---------------------------------------------------------------------------
# patchP: 静默 openDevice 试探 (open -> claim -> close)
#   能拿到 UsbDeviceConnection 就说明本机 UsbService 不强制校验授权记录。
#   任何异常都吞掉并返回 false, 绝不因为试探而崩溃。
#
#   Dalvik 安全: try 块内无分支, catch handler 单独 return, 不存在汇合点,
#   因此不会有「同一寄存器两种类型」的校验器冲突。
# ---------------------------------------------------------------------------
.method public static e(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :chk_dev

    return v0

    :chk_dev
    if-eqz p1, :do_open

    return v0

    :do_open
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x1

    const-string v4, "CarLifeUsb"

    const-string v5, "silent openDevice OK -> USB auto-granted, no dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v4, "CarLifeUsb"

    const-string v5, "silent openDevice blocked -> fall back to permission dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

# ---------------------------------------------------------------------------
# patchP: MANAGE_USB 是否已授予 (仅用于日志判别)
#   Manifest 已声明 android.permission.MANAGE_USB (signature|privileged)。
#   把 APK 预置到 /system/priv-app 后该权限生效, UsbService 对 openDevice
#   完全放行。Context.checkCallingOrSelfPermission 自 API 1 起可用。
# ---------------------------------------------------------------------------
.method public static d(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :chk

    return v0

    :chk
    :try_start_0
    const-string v1, "android.permission.MANAGE_USB"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :denied

    const/4 v0, 0x1

    const-string v1, "CarLifeUsb"

    const-string v2, "MANAGE_USB granted (priv-app): USB auto-authorized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :done

    :denied
    const-string v1, "CarLifeUsb"

    const-string v2, "MANAGE_USB not granted (3rd-party install)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :done
    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    return v0
.end method

