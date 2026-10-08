.class public Lcom/baidu/carlifevehicle/InfoDump;
.super Ljava/lang/Object;
.source "InfoDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static btLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    const-string v0, "\u786c\u4ef6"

    invoke-static {v0, p0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dump(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    invoke-static {}, Lcom/baidu/carlifevehicle/InfoDump;->dumpEnv()V

    invoke-static {}, Lcom/baidu/carlifevehicle/InfoDump;->dumpBluetooth()V

    invoke-static {p0}, Lcom/baidu/carlifevehicle/InfoDump;->dumpWlan(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/carlifevehicle/InfoDump;->dumpUsb(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/carlifevehicle/InfoDump;->dumpConnInfo()V

    return-void
.end method

.method private static dumpBluetooth()V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "\u786c\u4ef6"

    const-string v2, "\u84dd\u7259: \u4e0d\u53ef\u7528(\u65e0\u84dd\u7259\u9002\u914d\u5668)"

    invoke-static {v1, v2}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    const-string v1, "\u786c\u4ef6"

    const-string v2, "====== \u84dd\u7259\u4fe1\u606f ======"

    invoke-static {v1, v2}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u84dd\u7259: \u5df2\u5f00\u542f"

    goto :goto_0

    :cond_1
    const-string v1, "\u84dd\u7259: \u5df2\u5173\u95ed"

    :goto_0
    invoke-static {v1}, Lcom/baidu/carlifevehicle/InfoDump;->btLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v1, "\u84dd\u7259: \u72b6\u6001\u83b7\u53d6\u5931\u8d25"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/InfoDump;->btLog(Ljava/lang/String;)V

    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u84dd\u7259\u540d\u79f0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/carlifevehicle/InfoDump;->btLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v1, "\u84dd\u7259\u540d\u79f0: \u83b7\u53d6\u5931\u8d25(\u9700\u8981\u84dd\u7259\u6743\u9650)"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/InfoDump;->btLog(Ljava/lang/String;)V

    :goto_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u84dd\u7259MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/carlifevehicle/InfoDump;->btLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    const-string v1, "\u84dd\u7259MAC: \u83b7\u53d6\u5931\u8d25(\u9700\u8981\u84dd\u7259\u6743\u9650)"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/InfoDump;->btLog(Ljava/lang/String;)V

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u914d\u5bf9\u84dd\u7259\u8bbe\u5907\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/carlifevehicle/InfoDump;->btLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    :goto_5
    return-void
.end method

.method private static dumpConnInfo()V
    .locals 5

    :try_start_0
    const-string v0, "\u8fde\u63a5"

    const-string v1, "====== \u8fde\u63a5\u4fe1\u606f ======"

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    const-string v2, "CONNECT_TYPE"

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3}, La/a/a/a/c;->B0(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524dCONNECT_TYPE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/baidu/carlifevehicle/ConnModeHelper;->modeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, La/a/a/a/c;->w0()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fde\u63a5\u72b6\u6001\u7801: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (0=\u672a\u8fde\u63a5)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v0

    const-string v1, "CONFIG_WIFI_DIRECT_NAME"

    invoke-virtual {v0, v1}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u8fde\u63a5"

    const-string v2, "\u8f66\u673aWiFi\u76f4\u8fde\u540d\u79f0: \u672a\u914d\u7f6e"

    invoke-static {v1, v2}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f66\u673aWiFi\u76f4\u8fde\u540d\u79f0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fde\u63a5"

    invoke-static {v1, v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method

.method private static dumpEnv()V
    .locals 4

    :try_start_0
    const-string v0, "\u73af\u5883"

    const-string v1, "====== \u521d\u59cb\u5316\u73af\u5883\u4fe1\u606f ======"

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7cfb\u7edf: Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u5907: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static dumpUsb(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    :try_start_0
    const-string v0, "\u786c\u4ef6"

    const-string v1, "====== USB(\u6709\u7ebf\u8fde\u63a5) \u4fe1\u606f ======"

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "usb"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u63a5\u5165USB\u8bbe\u5907\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method private static dumpWlan(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    :try_start_0
    const-string v0, "\u786c\u4ef6"

    const-string v1, "====== WLAN\u4fe1\u606f ======"

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WLAN: \u5df2\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v1, "WLAN: \u5df2\u5173\u95ed"

    :goto_0
    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi.direct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WLAN\u76f4\u8fde(WiFi P2P): \u652f\u6301"

    goto :goto_1

    :cond_1
    const-string v1, "WLAN\u76f4\u8fde(WiFi P2P): \u4e0d\u652f\u6301"

    :goto_1
    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    return-void
.end method
