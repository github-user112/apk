.class public final Lcom/baidu/carlifevehicle/VehicleApplication;
.super Lb/l/f;
.source ""


# instance fields
.field public final b:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/l/f;-><init>()V

    new-instance v0, Lcom/baidu/carlifevehicle/VehicleApplication$a;

    invoke-direct {v0, p0}, Lcom/baidu/carlifevehicle/VehicleApplication$a;-><init>(Lcom/baidu/carlifevehicle/VehicleApplication;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/VehicleApplication;->b:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/carlifevehicle/VehicleService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/baidu/carlifevehicle/VehicleApplication;->b:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lb/l/f;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Lb/l/e;->e(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, La/a/a/a/a/f;

    const/16 v3, 0x3c

    invoke-direct {v2, p0, v0, v1, v3}, La/a/a/a/a/f;-><init>(Landroid/content/Context;III)V

    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object v3

    const-string v4, "CarlifeConnectType"

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, La/a/b/r/d;->b(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x6

    new-array v6, v4, [Lc/c;

    const/16 v7, 0x4000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "USB_MTU"

    invoke-static {v8, v7}, La/a/a/a/l/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Lc/c;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/16 v7, 0x12c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "I_FRAME_INTERVAL"

    invoke-static {v9, v7}, La/a/a/a/l/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Lc/c;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "CONNECT_TYPE"

    invoke-static {v7, v3}, La/a/a/a/l/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Lc/c;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v10, "AAC_SUPPORT"

    invoke-static {v10, v3}, La/a/a/a/l/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Lc/c;

    move-result-object v3

    const/4 v10, 0x3

    aput-object v3, v6, v10

    sget v3, La/a/a/a/l/b;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v11, "AUDIO_TRANSMISSION_MODE"

    invoke-static {v11, v3}, La/a/a/a/l/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Lc/c;

    move-result-object v3

    const/4 v11, 0x4

    aput-object v3, v6, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v12, "MUSIC_HUD"

    invoke-static {v12, v3}, La/a/a/a/l/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Lc/c;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v6, v5

    invoke-static {v6}, Lc/h/f;->a([Lc/c;)Ljava/util/Map;

    move-result-object v3

    new-array v5, v10, [Lc/c;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "CONFIG_LOG_LEVEL"

    invoke-static {v6, v4}, La/a/a/a/l/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Lc/c;

    move-result-object v4

    aput-object v4, v5, v8

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "CONFIG_USE_ASYNC_USB_MODE"

    invoke-static {v6, v4}, La/a/a/a/l/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Lc/c;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "VEHICLE_PROTOCOL_VERSION"

    invoke-static {v6, v4}, La/a/a/a/l/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Lc/c;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-static {v5}, Lc/h/f;->a([Lc/c;)Ljava/util/Map;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VehicleApplication initReceiver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLife_SDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v8, Lcom/baidu/carlifevehicle/CarlifeActivity;

    const-string v5, "20352101"

    const-string v6, "12345678"

    move-object v4, p0

    move-object v7, v3

    invoke-static/range {v4 .. v9}, La/a/a/a/m/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Map;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    const-string v1, "context"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, La/a/b/l/d/d;->a:La/a/a/a/c;

    sget-object v3, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    .line 2
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, La/a/b/l/d/f;->c:La/a/a/a/c;

    .line 3
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    invoke-interface {v0, v2}, La/a/a/a/m/c;->d0(La/a/a/a/a/f;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    new-instance v1, La/a/b/l/d/e;

    invoke-direct {v1}, La/a/b/l/d/e;-><init>()V

    invoke-interface {v0, v1}, La/a/a/a/c;->A(La/a/a/a/a/j/e;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    new-instance v1, La/a/b/q/a;

    invoke-direct {v1}, La/a/b/q/a;-><init>()V

    invoke-interface {v0, v1}, La/a/a/a/c;->A(La/a/a/a/a/j/e;)V

    return-void
.end method

.method public final c()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    invoke-static {v2}, La/a/a/a/l/d;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "device"

    invoke-static {v2, v3}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    const/16 v4, 0x18d1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/16 v4, 0x2d00

    if-lt v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/16 v4, 0x2d05

    if-gt v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    const-class v2, Landroid/hardware/usb/UsbDeviceConnection;

    const-string v4, "resetDevice"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CarLife_SDK"

    const-string v4, "USB Device resetDevice result: "

    invoke-static {v4, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, La/a/a/a/l/c;->c()V

    const-string v0, "VehicleApplication"

    const-string v1, "\u5e94\u7528\u521d\u59cb\u5316\u5f00\u59cb"

    invoke-static {v0, v1}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, La/a/a/a/l/a;->j(Landroid/content/Context;)V

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/l/a;->e()V

    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object v1

    invoke-virtual {v1, p0}, La/a/b/r/d;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/VehicleApplication;->c()V

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object v1

    invoke-virtual {v1}, La/a/b/r/a;->h()V

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/VehicleApplication;->b()V

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/VehicleApplication;->a()V

    const-string v1, "\u5e94\u7528\u521d\u59cb\u5316\u7ed3\u675f"

    invoke-static {v0, v1}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
