.class public Lf/a/i/i/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/h/f;
.implements Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/i/q$d;,
        Lf/a/i/i/q$b;,
        Lf/a/i/i/q$c;,
        Lf/a/i/i/q$e;
    }
.end annotation


# static fields
.field public static a0:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static b0:I

.field public static c0:Z


# instance fields
.field public A:Lf/a/i/p/e;

.field public B:Z

.field public C:Lf/a/i/h/g;

.field public D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lf/a/i/i/x;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lf/a/i/i/q$e;

.field public F:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public G:Z

.field public final H:Lf/a/i/h/i;

.field public I:Z

.field public J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

.field public K:Lf/a/i/h/d;

.field public L:Lf/a/i/h/e;

.field public M:Lf/a/i/h/c;

.field public N:Landroid/hardware/usb/UsbDevice;

.field public volatile O:Z

.field public P:I

.field public Q:I

.field public R:Lnet/easyconn/netlink/service/NetLinkService;

.field public volatile S:Z

.field public volatile T:Z

.field public U:I

.field public volatile V:Z

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:Z

.field public a:Landroid/content/Context;

.field public b:Lf/a/i/i/m;

.field public final c:Landroid/net/wifi/WifiManager;

.field public d:Lf/a/i/i/n;

.field public e:Landroid/os/HandlerThread;

.field public f:Landroid/os/HandlerThread;

.field public g:Landroid/os/HandlerThread;

.field public h:Landroid/os/HandlerThread;

.field public i:Lf/a/i/i/e;

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public volatile m:Z

.field public volatile n:Z

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Landroid/os/Handler;

.field public r:Landroid/os/Handler;

.field public s:Landroid/os/Handler;

.field public t:Landroid/os/Handler;

.field public u:Lf/a/i/i/q$c;

.field public v:Landroid/content/SharedPreferences;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lf/a/i/m/c;->b(IZ)Ljava/lang/String;

    sput v1, Lf/a/i/i/q;->b0:I

    sput-boolean v1, Lf/a/i/i/q;->c0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/i/q;->B:Z

    new-instance v1, Lf/a/i/i/q$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lf/a/i/i/q$e;-><init>(Lf/a/i/i/q;Lf/a/i/i/o;)V

    iput-object v1, p0, Lf/a/i/i/q;->E:Lf/a/i/i/q$e;

    iput-object v2, p0, Lf/a/i/i/q;->N:Landroid/hardware/usb/UsbDevice;

    iput v0, p0, Lf/a/i/i/q;->P:I

    iput v0, p0, Lf/a/i/i/q;->Q:I

    iput-boolean v0, p0, Lf/a/i/i/q;->Z:Z

    const-string v1, "EcSdkManager constructor"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lf/a/i/i/q;->c:Landroid/net/wifi/WifiManager;

    .line 1
    invoke-static {}, Ld/s/y;->I()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "getTestLibsPath getSdCardFile error"

    invoke-static {v3, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/easyconn"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libs"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "libECSDK.so"

    const-string v4, "/"

    if-eqz v1, :cond_2

    .line 2
    invoke-static {v1, v4, v3}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_f

    .line 4
    :cond_4
    sget-object v1, Lf/a/i/l/a;->d:Landroid/content/Context;

    const-string v6, "libtest"

    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 6
    :cond_5
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [B

    :goto_3
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    invoke-virtual {v5, v2, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_6
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_8

    :catchall_0
    move-exception p1

    move-object v2, v5

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_6

    :catchall_1
    move-exception p1

    :goto_4
    move-object v5, v2

    goto :goto_a

    :catch_2
    move-exception v5

    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    goto :goto_5

    :catch_3
    move-exception v5

    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v5, v2

    goto :goto_b

    :catch_4
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v5

    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_7

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_7
    if-eqz v5, :cond_e

    goto :goto_8

    :catch_5
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v5

    :goto_6
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    :catch_6
    move-exception v2

    goto :goto_9

    :cond_8
    :goto_7
    if-eqz v5, :cond_e

    :goto_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_11

    :goto_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :catchall_3
    move-exception p1

    :goto_a
    move-object v2, v4

    :goto_b
    if-eqz v2, :cond_9

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_d

    :cond_9
    :goto_c
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_e
    throw p1

    .line 7
    :cond_b
    :goto_f
    iget-object v5, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v5

    const-wide/16 v6, -0x1

    .line 8
    iget-object v5, v5, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v8, "key_ec_sdk_versioncode"

    invoke-interface {v5, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    long-to-int v6, v5

    .line 9
    iget-object v5, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 10
    invoke-static {v5}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x0

    goto :goto_10

    :cond_c
    sget-object v5, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v7, "SDK_VERSIONCODE"

    const-string v8, "0"

    invoke-virtual {v5, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lf/a/i/m/g;->z:I

    :goto_10
    if-le v6, v5, :cond_d

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lf/a/i/l/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_d
    move-object v3, v2

    :cond_e
    :goto_11
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 13
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exeChmod command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_12

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12

    :catch_9
    move-exception v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "exeChmod failed"

    invoke-static {v4, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_12
    const-string v2, "loadLibrary "

    .line 14
    invoke-static {v2, v1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_13

    :catch_a
    nop

    .line 15
    :cond_f
    :goto_13
    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lf/a/i/i/q;->G:Z

    if-nez v1, :cond_10

    goto :goto_14

    :cond_10
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    iget-object v3, p0, Lf/a/i/i/q;->E:Lf/a/i/i/q$e;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "WifiP2pReceiver register."

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 16
    :goto_14
    new-instance v1, Lf/a/i/i/m;

    invoke-direct {v1, p1, p0}, Lf/a/i/i/m;-><init>(Landroid/content/Context;Lf/a/i/i/q;)V

    .line 17
    iput-object v1, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    new-instance v1, Lf/a/i/i/n;

    invoke-direct {v1, p1}, Lf/a/i/i/n;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf/a/i/i/q;->d:Lf/a/i/i/n;

    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    const-string v2, "EC_DEVICE_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lf/a/i/i/q;->v:Landroid/content/SharedPreferences;

    .line 18
    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->d(Landroid/content/Context;)Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    move-result-object v1

    if-nez v1, :cond_11

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "initDeviceManager() failed! Options is null"

    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_11
    new-instance v2, Lf/a/i/i/e;

    iget-object v3, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lf/a/i/i/e;-><init>(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECOptions;)V

    iput-object v2, p0, Lf/a/i/i/q;->i:Lf/a/i/i/e;

    .line 19
    :goto_15
    invoke-static {p1, v0}, Lf/a/i/l/a;->l(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lf/a/i/l/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 20
    new-instance v2, Landroid/content/Intent;

    const-string v3, "net.easyconn.ota.req"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ota_config_path"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ota_package_path"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    new-instance p1, Lf/a/i/m/l;

    invoke-direct {p1}, Lf/a/i/m/l;-><init>()V

    .line 22
    iput-object p1, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lf/a/i/i/q;->D:Ljava/util/Map;

    return-void
.end method

.method public static I()J
    .locals 2

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lf/a/i/i/q;Landroid/os/Message;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "btnCode"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lnet/easyconn/ecsdk/ECSDK;->sendBtnEvent(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBtnEvent btnCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " type = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Lf/a/i/i/q;Landroid/os/Message;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lnet/easyconn/ecsdk/ECSDK;->uploadAudioData([BI)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lf/a/i/i/q;)Z
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "onStopPhoneNavigation "

    .line 1
    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/ECSDK;->stopPhoneNavigation()I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Lf/a/i/i/q;Landroid/os/Message;)Z
    .locals 5

    if-eqz p0, :cond_5

    const-string p0, "bindTransportDevice: type="

    .line 1
    invoke-static {p0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->values()[Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    aget-object p0, p0, v0

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p0, p1, v0}, Lnet/easyconn/ecsdk/ECSDK;->bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;Z)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_1
    instance-of v0, v3, Lnet/easyconn/ecsdk/IUsbDevice;

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/easyconn/ecsdk/IUsbDevice;

    invoke-virtual {v0, p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_2
    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p0, p1, :cond_4

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/easyconn/ecsdk/ECSDK;->bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    :cond_4
    return v2

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Lf/a/i/i/q;Landroid/os/Message;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "unbindTransportDevice: type="

    .line 1
    invoke-static {p0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/easyconn/ecsdk/ECSDK;->unbindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Lf/a/i/i/q;Landroid/os/Message;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string p1, "openAppPage handler page = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/easyconn/ecsdk/ECSDK;->openAppPage(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static g(Lf/a/i/i/q;Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {p0}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result p0

    const-string v0, "openAppPageByChannel handler page = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " propertyChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Lnet/easyconn/ecsdk/ECSDK;->openAppPage(II)I

    return-void
.end method

.method public static g0(Z)V
    .locals 0

    sput-boolean p0, Lf/a/i/i/q;->c0:Z

    return-void
.end method

.method public static h(Lf/a/i/i/q;Ljava/lang/String;)V
    .locals 13

    if-eqz p0, :cond_3

    const-string v0, ","

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveAppInfo recv = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "phoneSignal"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lf/a/i/i/q;->y:I

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lf/a/i/i/q;->z:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveAppInfo phoneSignal phoneMaxSignal = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf/a/i/i/q;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " phoneCurrentSignal = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lf/a/i/i/q;->y:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", return"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    iput v1, p0, Lf/a/i/i/q;->y:I

    iput v1, p0, Lf/a/i/i/q;->z:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "supportFunction"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "bluetoothName"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/a/i/i/q;->w:Ljava/lang/String;

    const-string p1, "ip"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ld/s/y;->n:Ljava/lang/String;

    const-string p1, "phoneAppPackage"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ld/s/y;->o:Ljava/lang/String;

    const-string p1, "phoneAppVersionCode"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ld/s/y;->p:Ljava/lang/String;

    const-string p1, "phoneModel"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ld/s/y;->q:Ljava/lang/String;

    const-string p1, "phoneOs"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ld/s/y;->r:Ljava/lang/String;

    const-string p1, "phoneOsVersion"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ld/s/y;->s:Ljava/lang/String;

    const-string p1, "phoneBrand"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ld/s/y;->t:Ljava/lang/String;

    const-string p1, "phoneUuid"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lf/a/i/i/q;->x:Ljava/lang/String;

    sput-object v10, Ld/s/y;->u:Ljava/lang/String;

    iget-object p1, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    iget-object v4, p0, Lf/a/i/i/q;->w:Ljava/lang/String;

    sget-object v5, Ld/s/y;->r:Ljava/lang/String;

    sget-object v6, Ld/s/y;->s:Ljava/lang/String;

    sget-object v7, Ld/s/y;->q:Ljava/lang/String;

    sget-object v8, Ld/s/y;->o:Ljava/lang/String;

    sget-object v9, Ld/s/y;->n:Ljava/lang/String;

    sget-object v11, Ld/s/y;->p:Ljava/lang/String;

    sget-object v12, Ld/s/y;->t:Ljava/lang/String;

    invoke-interface/range {v3 .. v12}, Lf/a/i/h/c;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "saveAppInfo data = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p1, "saveAppInfo error:"

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1}, Le/a/c/a/a;->I(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static i(Lf/a/i/i/q;[Ljava/lang/Object;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    aget-object p1, p1, v3

    check-cast p1, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;

    invoke-virtual {p0, v0, v1, v2, p1}, Lnet/easyconn/ecsdk/ECSDK;->checkOTAUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;)I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Lf/a/i/i/q;[Ljava/lang/String;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->startOTAUpdate([Ljava/lang/String;I)I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static k(Lf/a/i/i/q;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->stopOTAUpdate()V

    iget-object p0, p0, Lf/a/i/i/q;->C:Lf/a/i/h/g;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lf/a/i/h/g;->c()V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static l(Lf/a/i/i/q;Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->sendSystemKeyEvent(Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;)I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static m(Lf/a/i/i/q;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0}, Lnet/easyconn/ecsdk/ECSDK;->closeTransport()V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static n(Lf/a/i/i/q;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->queryTime()Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;

    move-result-object v0

    iget-object p0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    if-eqz p0, :cond_0

    check-cast p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 2
    iget-object p0, p0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 3
    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendPhoneTimeBroadcast(Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;)V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static o(Lf/a/i/i/q;Landroid/os/Message;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "bindProxyTransportDevice: type="

    .line 1
    invoke-static {p0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->values()[Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p0, p0, p1

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static p(Lf/a/i/i/q;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ECSDK.getInstance().sendInputText:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->sendInputText(Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static q(Lf/a/i/i/q;II)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ECSDK.getInstance().sendInputSelection->start:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",end:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->sendInputSelection(II)I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static r(Lf/a/i/i/q;II)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ECSDK.getInstance().sendInputAction->actionId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",keyCode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/ecsdk/ECSDK;->sendInputAction(II)I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static s(Lf/a/i/i/q;Landroid/os/Message;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "type"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    const-string v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCarStatus type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lnet/easyconn/ecsdk/ECSDK;->sendCarStatus(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)I

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static t(Lf/a/i/i/q;Landroid/os/Message;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryPageIcon icons = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/easyconn/ecsdk/ECSDK;->queryPageIcon([I)I

    return-void

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static u(Lf/a/i/i/q;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendCarControlMsgToPhone s = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->sendPhoneControlCarResult(Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static v(Lf/a/i/i/q;Landroid/os/Message;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleSetWifiIpAddress msg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "address"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/easyconn/ecsdk/ECSDK;->bindTransportWifiDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Ljava/lang/String;)I

    move-result p0

    const-string p1, "bindTransportWifiDevice ret = "

    invoke-static {p1, p0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static w(Lf/a/i/i/q;Landroid/os/Message;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestInstallPage type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pages = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lnet/easyconn/ecsdk/ECSDK;->requestInstallPage(I[I)I

    return-void

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static x(Lf/a/i/i/q;Landroid/os/Message;)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "name"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "address"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pin"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Lnet/easyconn/ecsdk/ECSDK;->sendCarBluetooth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCarBluetooth name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " address = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pin = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public A(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v0, "closeAppPage handler page = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/easyconn/ecsdk/ECSDK;->closeAppPage(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)I

    return-void
.end method

.method public B(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_0

    const-string v0, "closeAppPageByChannel handler pageType = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lnet/easyconn/ecsdk/ECSDK;->closeAppPage(I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result v0

    const-string v1, "closeAppPageByChannel handler page = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "propertyChannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lnet/easyconn/ecsdk/ECSDK;->closeAppPage(II)I

    :goto_0
    return-void
.end method

.method public C()V
    .locals 3

    const-string v0, "closeDevice"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/q;->i:Lf/a/i/i/e;

    .line 1
    iget-object v0, v0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECSDK.getInstance().unbindTransportDevice; type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECSDK.getInstance().unbindTransportDevice; begin type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/easyconn/ecsdk/ECSDK;->unbindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECSDK.getInstance().unbindTransportDevice; end type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/i/q;->k:Z

    iget-object v0, p0, Lf/a/i/i/q;->i:Lf/a/i/i/e;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    .line 4
    iget-object v0, p0, Lf/a/i/i/q;->i:Lf/a/i/i/e;

    invoke-virtual {v0}, Lf/a/i/i/e;->a()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    const-string v0, "closeDevice end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public D()V
    .locals 3

    const-string v0, "closeDeviceWithoutUnbindTransportDevice"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/q;->i:Lf/a/i/i/e;

    .line 1
    iget-object v0, v0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeDeviceWithoutUnbindTransportDevice; transportType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lf/a/i/i/q;->k:Z

    iget-object v0, p0, Lf/a/i/i/q;->i:Lf/a/i/i/e;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lf/a/i/i/e;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    .line 4
    iget-object v0, p0, Lf/a/i/i/q;->i:Lf/a/i/i/e;

    invoke-virtual {v0}, Lf/a/i/i/e;->a()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    const-string v0, "closeDeviceWithoutUnbindTransportDevice end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public E()I
    .locals 2

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-string v0, "sendEmptyMessage closeWifiService"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    return v0
.end method

.method public final F()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    const-string v1, "Carbit-"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/a/i/m/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEcDeviceName() desc = "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEcDeviceName() android_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    const-string v0, ""

    return-object v0

    :cond_3
    const-string v2, "-"

    invoke-static {v0, v2}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lf/a/i/i/q;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lf/a/i/i/q;->v:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lf/a/i/i/q;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC_DEVICE_NAME"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;
    .locals 1

    iget-object v0, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v0}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->getWifiPhoneIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K(Landroid/os/Message;)V
    .locals 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "carBtName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "carBtMac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoneBtName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "phoneBtMac"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCarBluetooth carBtName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " carBtMac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " phoneBtName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " phoneBtMac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Lnet/easyconn/ecsdk/ECSDK;->setConnectedBTAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public L(Ljava/lang/String;Z)V
    .locals 11

    const-string v0, "handlerVoiceCmd cmd = "

    invoke-static {v0, p1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cmds"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "RegCmd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "FunId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "PauseMusic"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;

    const-string v7, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    if-eqz p2, :cond_1

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;->EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL_NO_WAKEUP:Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;

    goto :goto_1

    :cond_1
    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;->EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL:Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;

    :goto_1
    invoke-virtual {p1, v0, p2}, Lnet/easyconn/ecsdk/ECSDK;->registerCarCmds([Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public M()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/i/q;->T:Z

    iget-boolean v1, p0, Lf/a/i/i/q;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "mirrorDisconnect......"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lf/a/i/i/q;->V:Z

    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 1
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 2
    invoke-virtual {v1, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->onAppVRStatus(Z)V

    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 4
    invoke-virtual {v1, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->onAppNaviStatus(Z)V

    iget-object v1, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v1}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mirrorDisconnect openType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->getValue()I

    move-result v1

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 5
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 6
    invoke-virtual {v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendMirrorOutBroadcast()V

    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 7
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 8
    invoke-virtual {v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendLinkOutBroadcast()V

    :cond_0
    iget-object v1, p0, Lf/a/i/i/q;->q:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const-string v1, "mirrorDisconnect releaseFocus"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    move-object v2, v1

    check-cast v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 9
    iget-object v2, v2, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    if-eqz v2, :cond_2

    .line 10
    check-cast v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 11
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 12
    invoke-virtual {v1}, Lf/a/i/c/a;->releaseFocus()V

    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 13
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 14
    invoke-virtual {v1}, Lf/a/i/c/a;->releasePlayer()V

    const-string v1, "mirrorDisconnect stopRecord"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 15
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 16
    invoke-virtual {v1}, Lf/a/i/c/a;->stopRecord()V

    :cond_2
    iput-boolean v0, p0, Lf/a/i/i/q;->k:Z

    iput-boolean v0, p0, Lf/a/i/i/q;->B:Z

    .line 17
    iget-object v0, p0, Lf/a/i/i/q;->t:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    :cond_3
    iget-object v0, p0, Lf/a/i/i/q;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "mirrorDisconnect end."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public N(Z)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/i/q;->I:Z

    iget-object v1, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v1, Lf/a/i/m/l;

    .line 1
    iget-boolean v2, v1, Lf/a/i/m/l;->i:Z

    invoke-virtual {v1, v0}, Lf/a/i/m/l;->f(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lf/a/i/m/l;->c:J

    iput-wide v2, v1, Lf/a/i/m/l;->d:J

    invoke-virtual {v1}, Lf/a/i/m/l;->a()V

    .line 2
    iget-object v1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    if-nez v1, :cond_0

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;-><init>(ZI)V

    iput-object v1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    :cond_0
    iget-object v1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    iput-boolean v0, v1, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;->state:Z

    iget-object v0, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v0, Lf/a/i/m/l;

    invoke-virtual {v0}, Lf/a/i/m/l;->b()J

    move-result-wide v2

    iget-object v0, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v0, Lf/a/i/m/l;

    invoke-virtual {v0}, Lf/a/i/m/l;->c()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0x400

    div-long/2addr v4, v2

    long-to-int v0, v4

    iput v0, v1, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;->netFlow:I

    iget-object v0, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    invoke-virtual {p0, v0}, Lf/a/i/i/q;->q0(Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;)V

    iget-object v0, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lf/a/i/h/c;->f(Z)V

    :cond_1
    return-void
.end method

.method public O(ZZ)V
    .locals 1

    iget-object v0, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lf/a/i/h/c;->q(ZZ)V

    :cond_0
    return-void
.end method

.method public P(Z)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/i/i/q;->I:Z

    iget-object v1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    if-nez v1, :cond_0

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;-><init>(ZI)V

    iput-object v1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    :cond_0
    iget-object v1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    iput-boolean v0, v1, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;->state:Z

    iget-object v0, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v0, Lf/a/i/m/l;

    invoke-virtual {v0}, Lf/a/i/m/l;->b()J

    move-result-wide v2

    iget-object v0, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v0, Lf/a/i/m/l;

    invoke-virtual {v0}, Lf/a/i/m/l;->c()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0x400

    div-long/2addr v4, v2

    long-to-int v0, v4

    iput v0, v1, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;->netFlow:I

    iget-object v0, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    invoke-virtual {p0, v0}, Lf/a/i/i/q;->q0(Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;)V

    iget-object v0, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v0, Lf/a/i/m/l;

    .line 1
    invoke-virtual {v0}, Lf/a/i/m/l;->a()V

    .line 2
    iget-object v0, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lf/a/i/h/c;->x(Z)V

    :cond_1
    return-void
.end method

.method public Q(Z)V
    .locals 11

    iget-object v0, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v0, Lf/a/i/m/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {v0}, Lf/a/i/m/l;->a()V

    goto/16 :goto_2

    :cond_0
    const-string p1, "tun0"

    .line 2
    const-class v4, Ljava/lang/String;

    :try_start_0
    iget-object v5, v0, Lf/a/i/m/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "getTxBytes"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v5, :cond_1

    :try_start_1
    const-class v7, Landroid/net/TrafficStats;

    new-array v8, v3, [Ljava/lang/Class;

    aput-object v4, v8, v2

    invoke-virtual {v7, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v7, v0, Lf/a/i/m/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    .line 3
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 4
    iget-object v7, v0, Lf/a/i/m/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v8, "getRxBytes"

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v7, :cond_2

    :try_start_3
    const-class v9, Landroid/net/TrafficStats;

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v4, v10, v2

    invoke-virtual {v9, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v4, v0, Lf/a/i/m/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 5
    invoke-virtual {v7, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8, v5, v6}, Lf/a/i/m/l;->d(JJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTrafficRxTxBytes error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Le/a/c/a/a;->I(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_2
    iget-object p1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    if-nez p1, :cond_3

    new-instance p1, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    invoke-direct {p1, v3, v2}, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;-><init>(ZI)V

    iput-object p1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    :cond_3
    iget-object p1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    iput-boolean v3, p1, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;->state:Z

    iget-object v0, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v0, Lf/a/i/m/l;

    invoke-virtual {v0}, Lf/a/i/m/l;->b()J

    move-result-wide v0

    iget-object v2, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v2, Lf/a/i/m/l;

    invoke-virtual {v2}, Lf/a/i/m/l;->c()J

    move-result-wide v2

    add-long/2addr v2, v0

    const-wide/16 v0, 0x400

    div-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;->netFlow:I

    iget-object p1, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    invoke-virtual {p0, p1}, Lf/a/i/i/q;->q0(Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;)V

    iget-object v0, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast p1, Lf/a/i/m/l;

    invoke-virtual {p1}, Lf/a/i/m/l;->b()J

    move-result-wide v1

    iget-object p1, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast p1, Lf/a/i/m/l;

    invoke-virtual {p1}, Lf/a/i/m/l;->c()J

    move-result-wide v3

    iget-object p1, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    move-object v5, p1

    check-cast v5, Lf/a/i/m/l;

    .line 7
    iget-wide v5, v5, Lf/a/i/m/l;->e:J

    .line 8
    check-cast p1, Lf/a/i/m/l;

    .line 9
    iget-wide v7, p1, Lf/a/i/m/l;->f:J

    .line 10
    invoke-interface/range {v0 .. v8}, Lf/a/i/h/c;->t(JJJJ)V

    :cond_4
    return-void

    .line 11
    :cond_5
    throw v1
.end method

.method public R()V
    .locals 5

    iget-object v0, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;-><init>(ZI)V

    iput-object v0, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    :cond_0
    iget-object v0, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    iput-boolean v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;->state:Z

    iget-object v1, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v1, Lf/a/i/m/l;

    invoke-virtual {v1}, Lf/a/i/m/l;->b()J

    move-result-wide v1

    iget-object v3, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v3, Lf/a/i/m/l;

    invoke-virtual {v3}, Lf/a/i/m/l;->c()J

    move-result-wide v3

    add-long/2addr v3, v1

    const-wide/16 v1, 0x400

    div-long/2addr v3, v1

    long-to-int v1, v3

    iput v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;->netFlow:I

    iget-object v0, p0, Lf/a/i/i/q;->J:Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    invoke-virtual {p0, v0}, Lf/a/i/i/q;->q0(Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;)V

    iget-object v0, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lf/a/i/h/c;->J()V

    :cond_1
    return-void
.end method

.method public S(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openAppPage appPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lf/a/i/i/q;->V:Z

    if-nez v0, :cond_1

    .line 2
    sput-object p1, Lf/a/i/i/q;->a0:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x10

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    .line 3
    sput-object p1, Lf/a/i/i/q;->a0:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    return-void
.end method

.method public T(I)V
    .locals 1

    const-string v0, "openAppPageByChannel appPage = "

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lf/a/i/i/q;->V:Z

    if-nez v0, :cond_1

    .line 2
    sput p1, Lf/a/i/i/q;->b0:I

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x2a

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    .line 3
    sput p1, Lf/a/i/i/q;->b0:I

    return-void
.end method

.method public declared-synchronized U(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "[openDevice] error, usbDevice = null, return"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->r(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x5ac

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string p1, "[openDevice] enableIOSUsb = false"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->q(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    if-eq v1, v2, :cond_2

    const-string p1, "[openDevice] enableAndroidUsb = false"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[openDevice] isTransportOpen is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf/a/i/i/q;->T:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " usbDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lf/a/i/i/q;->T:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lf/a/i/i/q;->j:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lf/a/i/i/q;->N:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    .line 1
    iput v1, p0, Lf/a/i/i/q;->P:I

    .line 2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 3
    iput v1, p0, Lf/a/i/i/q;->Q:I

    .line 4
    iget-object v1, p0, Lf/a/i/i/q;->i:Lf/a/i/i/e;

    invoke-virtual {v1, p1}, Lf/a/i/i/e;->b(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iput v0, p0, Lf/a/i/i/q;->P:I

    .line 6
    iput v0, p0, Lf/a/i/i/q;->Q:I

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[openDevice] openDevice ret is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    move v0, p1

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lf/a/i/i/q;->N:Landroid/hardware/usb/UsbDevice;

    const-string p1, "[openDevice] openDevice ret is false, for SDK not init yet!"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public V(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 13

    iget-boolean v0, p0, Lf/a/i/i/q;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lf/a/i/i/q;->T:Z

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->P(Landroid/content/Context;)F

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openMirrorConnection scale is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    move-object v3, v2

    check-cast v3, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    invoke-static {v2}, Lf/a/i/m/g;->R(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;->EC_SCREEN_DIRECTION_HORIZONTAL_ROUND:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    :goto_0
    move-object v12, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/m/g;->R(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;->EC_SCREEN_DIRECTION_VERTICAL_ROUND:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    goto :goto_0

    :cond_2
    invoke-static {}, Lf/a/i/m/g;->i0()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;->EC_SCREEN_DIRECTION_VERTICAL:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    goto :goto_0

    :cond_3
    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;->EC_SCREEN_DIRECTION_HORIZONTAL:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    goto :goto_0

    :goto_1
    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;

    sget-object v6, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->EC_VIDEO_TYPE_H264:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    iget-object v3, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v3}, Lf/a/i/m/g;->L(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v7, v3

    iget-object v3, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v3}, Lf/a/i/m/g;->K(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v8, v3

    const/high16 v9, 0x400000

    const/4 v10, 0x1

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->j(Landroid/content/Context;)I

    move-result v11

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;-><init>(Lnet/easyconn/ecsdk/ECTypes$ECVideoType;IIIIILnet/easyconn/ecsdk/ECTypes$ECScreenDirection;)V

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "SCREEN_PHYSICS_WIDTH"

    const-string v5, ""

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-virtual {v0, v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    :goto_2
    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v6, "SCREEN_PHYSICS_HEIGHT"

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-virtual {v0, v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openMirrorConnection() screenPhysicsWidth  is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v2, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsWidth:D

    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openMirrorConnection() screenPhysicsHeight  is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v2, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsHeight:D

    :cond_7
    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;

    invoke-direct {v0}, Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;-><init>()V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lnet/easyconn/ecsdk/ECSDK;->openMirrorConnection(Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;)I

    move-result v2

    const-wide/16 v5, 0xc8

    const/4 v3, 0x2

    if-eqz v2, :cond_9

    const-string v0, "openMirrorConnection() failed, rt is "

    invoke-static {v0, v2}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iput-boolean v1, p0, Lf/a/i/i/q;->V:Z

    iget-object v0, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Lf/a/i/h/c;->G(I)V

    :cond_8
    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    :cond_9
    const-string v2, "openMirrorConnection() success"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lf/a/i/i/q;->V:Z

    iget v3, v0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;->width:I

    iput v3, p0, Lf/a/i/i/q;->W:I

    iget v0, v0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;->height:I

    iput v0, p0, Lf/a/i/i/q;->X:I

    const-string v0, "openMirrorConnection() mirrorWidth="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lf/a/i/i/q;->W:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mirrorHeight="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf/a/i/i/q;->X:I

    invoke-static {v0, v3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->M(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    const-string v3, "openMirrorConnection() iMirrorStateListener is "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lf/a/i/i/q;->L:Lf/a/i/h/e;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " this.managerClass.hashCode = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isDA = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v3, p0, Lf/a/i/i/q;->L:Lf/a/i/h/e;

    if-eqz v3, :cond_d

    check-cast v3, Lf/a/k/g0;

    const-string v7, "mirrorConnectionOpen"

    .line 5
    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v2, v3, Lf/a/k/g0;->z:Z

    sput-boolean v2, Lnet/easyconn/EcApplication;->isCurrentMirrorChannelOpen:Z

    iget-object v2, v3, Lf/a/k/g0;->D:Landroid/content/Intent;

    if-eqz v2, :cond_b

    iput-object v4, v3, Lf/a/k/g0;->D:Landroid/content/Intent;

    :cond_b
    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lnet/easyconn/EcApplication;

    new-instance v4, Lf/a/k/d;

    invoke-direct {v4, v3}, Lf/a/k/d;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v2, v4, v5, v6}, Lnet/easyconn/EcApplication;->executeTaskDelay(Ljava/lang/Runnable;J)V

    iget-object v2, v3, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_c

    instance-of v2, v2, Lf/a/k/l0/g3;

    if-eqz v2, :cond_c

    const-string v2, "mirrorConnectionOpen goto return"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    iget-boolean v2, v3, Lf/a/k/g0;->J:Z

    if-eqz v2, :cond_d

    iget-object v2, v3, Lf/a/k/g0;->v:Landroid/os/Handler;

    if-eqz v2, :cond_d

    new-instance v4, Lf/a/k/y;

    invoke-direct {v4, v3}, Lf/a/k/y;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    :goto_5
    const-string v2, "true"

    if-eqz v0, :cond_11

    .line 6
    iget-object v3, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 7
    invoke-static {v3}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_6

    :cond_e
    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "DA_TYPE_SUPPORT_PAGE_LIST"

    invoke-virtual {v3, v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :goto_6
    if-eqz v3, :cond_11

    .line 8
    iget-object v3, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v3}, Lf/a/i/i/m;->c()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 9
    invoke-static {v3}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_7

    :cond_f
    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v3, "DA_TYPE_IOS_SUPPORT_PAGE_LIST"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_7
    if-eqz v1, :cond_11

    :cond_10
    const-string v1, "queryPageList begin"

    .line 10
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECSDK;->queryPageList()I

    .line 11
    :cond_11
    iget-object v1, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lf/a/i/h/c;->e0()V

    :cond_12
    iget-object v1, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->B(Landroid/content/Context;)Z

    move-result v1

    const-string v3, " openMirrorConnection() enableVRTips = "

    invoke-static {v3, v1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-eqz v1, :cond_13

    .line 12
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x26

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    if-eqz v0, :cond_15

    .line 13
    sget v0, Lf/a/i/i/q;->b0:I

    invoke-virtual {p0, v0}, Lf/a/i/i/q;->T(I)V

    .line 14
    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    if-eqz v0, :cond_14

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 15
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 16
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendPhoneBTInfo()V

    .line 17
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lf/a/i/i/q;->N(Z)V

    goto :goto_8

    :cond_15
    sget-object v0, Lf/a/i/i/q;->a0:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    invoke-virtual {p0, v0}, Lf/a/i/i/q;->S(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)V

    :goto_8
    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->getValue()I

    move-result v0

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 18
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 19
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendMirrorInBroadcast()V

    :cond_16
    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 20
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 21
    invoke-virtual {v0}, Lf/a/i/c/a;->bindVoiceServer()V

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 22
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :cond_17
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "MIRROR_CONNECTED_OPEN_VPN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, " openMirrorConnection() startNetworkShare type = "

    .line 23
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/i/i/q;->m0()Z

    :cond_18
    :goto_a
    return-void

    .line 24
    :cond_19
    throw v4

    :cond_1a
    :goto_b
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "isTransportOpen is false ,openMirrorConnection return"

    .line 25
    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public W()I
    .locals 2

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-string v0, "sendEmptyMessage openWifiService"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    return v0
.end method

.method public X(I)I
    .locals 4

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEmptyMessageDelayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms openWifiService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v1, 0x3a

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x0

    return p1
.end method

.method public Y()I
    .locals 2

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1
    :cond_0
    iget-boolean v0, p0, Lf/a/i/i/q;->j:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lf/a/i/i/q;->T:Z

    if-nez v0, :cond_1

    const-string v0, "sendEmptyMessage reOpenWifiService"

    .line 3
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "reOpenWifiService return, because isSdkInit = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/i/i/q;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " and isTransportOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/i/i/q;->T:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public Z()V
    .locals 4

    const-string v0, "EcSdkManager release()"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/i/i/q;->u:Lf/a/i/i/q$c;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf/a/i/i/q;->k:Z

    iput-boolean v1, p0, Lf/a/i/i/q;->T:Z

    iput-boolean v1, p0, Lf/a/i/i/q;->V:Z

    iput-boolean v1, p0, Lf/a/i/i/q;->j:Z

    iget-boolean v2, p0, Lf/a/i/i/q;->G:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    iget-object v3, p0, Lf/a/i/i/q;->E:Lf/a/i/i/q$e;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "unregisterReceiver wifiP2PReceiver Exception"

    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lf/a/i/i/q;->q:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/f;->b(Landroid/os/Looper;)V

    const-string v0, "EcSdkManager sendMessage RELEASE"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.easyconn.core.service.release"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a0()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/i/i/q;->K:Lf/a/i/h/d;

    iget-object v1, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lf/a/i/i/m;->j(Lf/a/i/h/d;)V

    :cond_0
    iget-object v0, p0, Lf/a/i/i/q;->d:Lf/a/i/i/n;

    if-eqz v0, :cond_1

    const-string v0, "EcQtCallBack setVideoEventListener = null"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b0(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)V
    .locals 7

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PLAY:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_STOP:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_NEXT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PREVIOUS:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    if-ne p1, v0, :cond_2

    :cond_0
    const/16 v0, 0xc8

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-wide v3, Lf/a/i/m/e;->a:J

    sub-long v3, v1, v3

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    sput-wide v1, Lf/a/i/m/e;->a:J

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendBtnEvent in shake btnCode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "btnCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "type"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p2, 0xa

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p2, 0x24

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d0(Landroid/os/Message;)Z
    .locals 6

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lf/a/i/i/x;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    check-cast p1, Lf/a/i/i/x;

    .line 1
    iget v0, p1, Lf/a/i/i/x;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf/a/i/i/q;->Y:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/i/i/q;->D:Ljava/util/Map;

    .line 3
    iget v2, p1, Lf/a/i/i/x;->d:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/i/i/x;

    if-eqz v0, :cond_1

    const-string v2, "send touch event MotionEvent.ACTION_MOVE, lastX = "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    iget v3, v0, Lf/a/i/i/x;->a:I

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "thisX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v3, p1, Lf/a/i/i/x;->a:I

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , lastY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v3, v0, Lf/a/i/i/x;->b:I

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "thisY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v3, p1, Lf/a/i/i/x;->b:I

    .line 12
    invoke-static {v2, v3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    .line 13
    iget v2, v0, Lf/a/i/i/x;->a:I

    iget v3, p1, Lf/a/i/i/x;->a:I

    if-ne v2, v3, :cond_1

    .line 14
    iget v0, v0, Lf/a/i/i/x;->b:I

    iget v2, p1, Lf/a/i/i/x;->b:I

    if-ne v0, v2, :cond_1

    const-string p1, "send touch event MotionEvent.ACTION_MOVE, point not move return"

    .line 15
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lf/a/i/i/q;->D:Ljava/util/Map;

    .line 16
    iget v2, p1, Lf/a/i/i/x;->d:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;

    .line 18
    iget v2, p1, Lf/a/i/i/x;->a:I

    .line 19
    iget v3, p1, Lf/a/i/i/x;->b:I

    .line 20
    iget p1, p1, Lf/a/i/i/x;->d:I

    .line 21
    invoke-direct {v0, v2, v3, p1}, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;-><init>(III)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;->EC_TOUCH_MOVE:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;

    invoke-virtual {p1, v0, v2}, Lnet/easyconn/ecsdk/ECSDK;->sendTouchEvent(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)I

    goto :goto_0

    :cond_2
    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;

    .line 22
    iget v3, p1, Lf/a/i/i/x;->a:I

    .line 23
    iget v4, p1, Lf/a/i/i/x;->b:I

    .line 24
    iget v5, p1, Lf/a/i/i/x;->d:I

    .line 25
    invoke-direct {v0, v3, v4, v5}, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;-><init>(III)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v3

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;->EC_TOUCH_UP:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;

    invoke-virtual {v3, v0, v4}, Lnet/easyconn/ecsdk/ECSDK;->sendTouchEvent(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)I

    iput-boolean v2, p0, Lf/a/i/i/q;->Y:Z

    iget-object v0, p0, Lf/a/i/i/q;->D:Ljava/util/Map;

    .line 26
    iget p1, p1, Lf/a/i/i/x;->d:I

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 28
    iget v3, p1, Lf/a/i/i/x;->a:I

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 30
    iget v2, p1, Lf/a/i/i/x;->b:I

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "MotionEvent.ACTION_DOWN, xPos is %d, yPos is %d. "

    invoke-static {v2, v0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lf/a/i/i/q;->Y:Z

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;

    .line 32
    iget v2, p1, Lf/a/i/i/x;->a:I

    .line 33
    iget v3, p1, Lf/a/i/i/x;->b:I

    .line 34
    iget v4, p1, Lf/a/i/i/x;->d:I

    .line 35
    invoke-direct {v0, v2, v3, v4}, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;-><init>(III)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v2

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;->EC_TOUCH_DOWN:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;

    invoke-virtual {v2, v0, v3}, Lnet/easyconn/ecsdk/ECSDK;->sendTouchEvent(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)I

    iget-object v0, p0, Lf/a/i/i/q;->D:Ljava/util/Map;

    .line 36
    iget v2, p1, Lf/a/i/i/x;->d:I

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return v1
.end method

.method public e0(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppForground->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMirrorConnectionOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/i/i/q;->V:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lf/a/i/i/q;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "sendCarStatus EC_CAR_RUN_STATUS ->"

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_RUN_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    if-eqz p1, :cond_0

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_RUN_FOREGROUND:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_RUN_BACKGROUND:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    :cond_1
    iput-boolean p1, p0, Lf/a/i/i/q;->Z:Z

    iget-object v0, p0, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    if-eqz v0, :cond_2

    const-string v1, "NetLinkService setAppForground->"

    .line 1
    invoke-static {v1, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iput-boolean p1, v0, Lnet/easyconn/netlink/service/NetLinkService;->j:Z

    .line 2
    :cond_2
    iget-object v0, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->q:Lf/a/g/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lf/a/g/j;->l(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public declared-synchronized f0(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set deviceOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lf/a/i/i/q;->O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h0(Lf/a/i/h/c;)V
    .locals 2

    iput-object p1, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    const-string p1, "EcSdkManager setMirrorConnectionListener, sdkCallBack is "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    .line 1
    iput-object v0, p1, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    .line 2
    :cond_0
    iget-object p1, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz p1, :cond_1

    .line 3
    iget v0, p0, Lf/a/i/i/q;->o:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lf/a/i/i/q;->p:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v0, v1}, Lf/a/i/h/c;->onLicenseAuthFail(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public i0(Z)V
    .locals 1

    const-string v0, "setScreenRotations:"

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lf/a/i/i/q;->n:Z

    return-void
.end method

.method public j0(Lf/a/i/h/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcSdkManager setVideoEventListener() iMirrorEventListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lf/a/i/i/q;->K:Lf/a/i/h/d;

    iget-object v0, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lf/a/i/i/m;->j(Lf/a/i/h/d;)V

    :cond_0
    iget-object v0, p0, Lf/a/i/i/q;->d:Lf/a/i/i/n;

    if-eqz v0, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcQtCallBack setVideoEventListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public k0()V
    .locals 3

    iget-object v0, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v0}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const-string v0, "startMirror begin isMirrorConnectionOpen = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/i/i/q;->V:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lf/a/i/i/q;->V:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lf/a/i/i/q;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "isOtaTransporting:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lf/a/i/i/q;->m:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lf/a/i/i/q;->i0(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "isScreenRotations:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lf/a/i/i/q;->n:Z

    invoke-static {v0, v2}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lf/a/i/i/q;->n:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lf/a/i/i/q;->i0(Z)V

    .line 1
    iput-boolean v1, p0, Lf/a/i/i/q;->m:Z

    .line 2
    iget-object v0, p0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    new-instance v1, Lf/a/i/i/q$a;

    invoke-direct {v1, p0}, Lf/a/i/i/q$a;-><init>(Lf/a/i/i/q;)V

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lf/a/i/i/m;->G:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const-string v0, "startMirror"

    .line 4
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 5
    throw v0

    :cond_4
    const-string v0, "do not startMirror isMirrorConnectionOpen = "

    .line 6
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/i/i/q;->V:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isOtaTransporting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/i/i/q;->m:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    :goto_1
    return-void
.end method

.method public l0()Z
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECSDK;->startMirror()I

    move-result v1

    const-string v2, "startMirror ret = "

    invoke-static {v2, v1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v3, -0x7

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v1, v3, :cond_10

    const/4 v3, -0x3

    if-eq v1, v3, :cond_11

    const/4 v3, -0x2

    if-eq v1, v3, :cond_11

    const/4 v3, -0x1

    if-eq v1, v3, :cond_11

    if-eqz v1, :cond_0

    const-string v3, "start Mirror failed, ret is "

    invoke-static {v3, v1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lf/a/i/i/q;->L:Lf/a/i/h/e;

    if-eqz v3, :cond_13

    const/4 v4, 0x5

    check-cast v3, Lf/a/k/g0;

    invoke-virtual {v3, v4}, Lf/a/k/g0;->i0(I)Z

    goto/16 :goto_4

    :cond_0
    iget-object v6, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startMirror iMirrorEventListener = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lf/a/i/i/q;->K:Lf/a/i/h/d;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v6, v0, Lf/a/i/i/q;->K:Lf/a/i/h/d;

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    check-cast v6, Lf/a/k/m0/r0;

    .line 1
    iget-object v8, v6, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v9, v6, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lf/a/k/m0/a;

    invoke-direct {v10, v9}, Lf/a/k/m0/a;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v8}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    invoke-virtual {v8}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WIFI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iput-boolean v4, v6, Lf/a/k/m0/r0;->s:Z

    iget-object v8, v6, Lf/a/k/m0/r0;->r:Ljava/util/concurrent/ExecutorService;

    if-nez v8, :cond_2

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x1

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v16, Lf/a/k/m0/t;->a:Lf/a/k/m0/t;

    sget-object v17, Lf/a/k/m0/s;->a:Lf/a/k/m0/s;

    move-object v9, v8

    invoke-direct/range {v9 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v8, v6, Lf/a/k/m0/r0;->r:Ljava/util/concurrent/ExecutorService;

    :cond_2
    iget-object v8, v6, Lf/a/k/m0/r0;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lf/a/k/m0/m;

    invoke-direct {v9, v6}, Lf/a/k/m0/m;-><init>(Lf/a/k/m0/r0;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 2
    iget-object v9, v8, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v9, :cond_4

    .line 3
    iput-object v6, v9, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    .line 4
    :cond_4
    iput-object v6, v8, Lf/a/i/i/q;->C:Lf/a/i/h/g;

    .line 5
    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 6
    iget-object v8, v8, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 7
    check-cast v8, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v8}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lf/a/i/l/a;->m(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v9, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 8
    iget-object v9, v9, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 9
    check-cast v9, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v9}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 10
    invoke-static {v9}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v9

    .line 11
    iget-object v9, v9, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-wide/16 v10, -0x1

    const-string v12, "key_ec_will_apk_versioncode"

    invoke-interface {v9, v12, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    if-eqz v8, :cond_5

    .line 12
    iget v9, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v12, v9

    cmp-long v9, v12, v18

    if-gez v9, :cond_5

    iget-object v9, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 13
    iget-object v9, v9, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 14
    check-cast v9, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v9}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v8, v8

    const/16 v20, 0x0

    .line 15
    invoke-static {v13}, Lf/a/i/l/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "reason = user install failed"

    move-wide/from16 v16, v8

    invoke-static/range {v13 .. v20}, Lf/a/i/l/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 16
    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 17
    iget-object v8, v8, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 18
    check-cast v8, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v8}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v10, v11}, Lf/a/i/l/a;->y(Landroid/content/Context;J)V

    :cond_5
    iget-boolean v8, v6, Lf/a/k/m0/r0;->g:Z

    if-eqz v8, :cond_6

    iput-boolean v2, v6, Lf/a/k/m0/r0;->g:Z

    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 19
    iget-object v9, v8, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 20
    check-cast v9, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v9}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lf/a/i/l/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 21
    iget-object v10, v10, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 22
    check-cast v10, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v10}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lf/a/i/l/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;->EC_OTA_CHECK_VIA_PHONE:Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;

    invoke-virtual {v8, v9, v10, v11}, Lf/a/i/i/q;->z(Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;)V

    .line 23
    :cond_6
    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 24
    iget-object v8, v8, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 25
    check-cast v8, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 26
    iget-object v8, v8, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 27
    invoke-virtual {v8}, Lnet/easyconn/framework/broadcast/BroadcastManager;->checkBtStatusOnBroadcast()V

    .line 28
    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    if-eqz v8, :cond_b

    .line 29
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/16 v10, 0x1c

    iput v10, v9, Landroid/os/Message;->what:I

    iget-object v8, v8, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 31
    iget-object v8, v8, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 32
    check-cast v8, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v8}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lf/a/i/m/g;->C(Landroid/content/Context;)Z

    move-result v8

    const-string v9, " MirrorPresenter onMirrorSucceed enableWeatherInfo = "

    invoke-static {v9, v8}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-eqz v8, :cond_8

    iget-object v8, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    if-eqz v8, :cond_7

    .line 33
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/16 v9, 0x25

    iput v9, v7, Landroid/os/Message;->what:I

    iget-object v8, v8, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_7
    throw v7

    .line 34
    :cond_8
    :goto_0
    iget-object v7, v6, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    invoke-static {v7}, Lf/a/i/m/g;->J(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v6, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    invoke-static {v7}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v6, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    invoke-static {v7}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v5, :cond_9

    goto :goto_1

    :cond_9
    iget-object v5, v6, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    invoke-static {v5}, Lf/a/i/m/g;->d0(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v6, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    invoke-static {v5}, Lf/a/i/m/g;->g0(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v6, Lf/a/k/m0/r0;->e:Landroid/content/Context;

    invoke-static {v5}, Lf/a/i/m/g;->b0(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    new-array v5, v2, [Ljava/lang/Object;

    const-string v7, "MirrorPresenter onMirrorSucceed send a2dp.acquire because all(vr and tts and Talkie) via Bluetooth"

    invoke-static {v7, v5}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    const-string v7, "MirrorPresenter onMirrorSucceed send a2dp.acquire because mirrorType is EC_MIRROR_MODE_SCREEN_MIRROR or HZFloar"

    invoke-static {v7, v5}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v5, v6, Lf/a/k/m0/r0;->c:Lf/a/i/i/q;

    .line 35
    iget-object v5, v5, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 36
    check-cast v5, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 37
    iget-object v5, v5, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 38
    invoke-virtual {v5, v4, v2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->onA2dpAcquire(ZZ)V

    goto :goto_3

    .line 39
    :cond_b
    throw v7

    :cond_c
    :goto_3
    const-string v5, "startMirror iMirrorConnectionListener = "

    .line 40
    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v5, v0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Lf/a/i/h/c;->j0()V

    :cond_d
    iget-object v5, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lf/a/i/i/m;->i()V

    iget-object v5, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    .line 41
    iput-boolean v2, v5, Lf/a/i/i/m;->k:Z

    const-string v6, "resetMirrorSize"

    .line 42
    invoke-static {v6}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput v3, v5, Lf/a/i/i/m;->w:I

    iput v3, v5, Lf/a/i/i/m;->x:I

    .line 43
    :cond_e
    iget-object v3, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v3}, Lf/a/i/m/g;->M(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v4, :cond_f

    .line 44
    iget-object v3, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    if-eqz v3, :cond_f

    check-cast v3, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 45
    iget-object v3, v3, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 46
    invoke-virtual {v3}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendPhoneBTInfo()V

    .line 47
    :cond_f
    iget-object v3, v0, Lf/a/i/i/q;->D:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto :goto_4

    :cond_10
    iget-object v3, v0, Lf/a/i/i/q;->K:Lf/a/i/h/d;

    if-eqz v3, :cond_11

    check-cast v3, Lf/a/k/m0/r0;

    .line 48
    iget-object v4, v3, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v3, v3, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lf/a/k/m0/j0;

    invoke-direct {v6, v3}, Lf/a/k/m0/j0;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :cond_11
    iget-object v3, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    iget-boolean v3, v0, Lf/a/i/i/q;->T:Z

    if-eqz v3, :cond_12

    .line 51
    iget-boolean v3, v0, Lf/a/i/i/q;->V:Z

    if-eqz v3, :cond_12

    .line 52
    iget-object v3, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_12
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "start Mirror failed, because link disconnected, stop repeat"

    invoke-static {v4, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_4
    if-nez v1, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method public m0()Z
    .locals 6

    iget-object v0, p0, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "startNetworkShare not support, return"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1
    :cond_0
    iget-boolean v0, p0, Lf/a/i/i/q;->I:Z

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "startNetworkShare ShareNetOpened, return"

    .line 2
    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AIRPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "startNetworkShare begin type = "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/m/g;->y(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "startNetworkShare not support Netlink, return false"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object v2, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/m/g;->z(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "startNetworkShare not support NetlinkWiFi, return false"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    iget-object v2, p0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/m/g;->x(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "startNetworkShare not support IpTableNetlink, return false"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    iget-object v2, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v2, Lf/a/i/m/l;

    invoke-virtual {v2, v1}, Lf/a/i/m/l;->e(Z)V

    iget-object v2, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNetworkShare end type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mNetShareManager == null is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    const/4 v3, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " netLinkService == null is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-static {v2, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    return v3

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNetworkShare ecTransportType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "not support, return"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public n0([Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    const/16 p1, 0x17

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public o0()V
    .locals 2

    const-string v0, "stopMirror"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf/a/i/h/c;->m(Z)V

    :cond_0
    iget-object v0, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public onReceive(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomProtocol onReceive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([BII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomProtocol onReceive cmdType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->getCmdType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomProtocol onReceive data not str, cmdType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->getCmdType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lf/a/i/h/c;->h0(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)V

    :cond_1
    return-void
.end method

.method public p0(Z)Z
    .locals 4

    iget-object v0, p0, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "stopNetworkShare not support, return"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1
    :cond_0
    iget-boolean v0, p0, Lf/a/i/i/q;->I:Z

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "stopNetworkShare notShareNetOpened, return"

    .line 2
    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AIRPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "stopNetworkShare begin type = "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lf/a/i/i/q;->H:Lf/a/i/h/i;

    check-cast v2, Lf/a/i/m/l;

    invoke-virtual {v2, p1}, Lf/a/i/m/l;->e(Z)V

    iget-object p1, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopNetworkShare end type = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mNetShareManager == null is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " netLinkService == null is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {p1, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    return v2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopNetworkShare ecTransportType = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "not support, return"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final q0(Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcSdkManager updateNetLinkData info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x31

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lnet/easyconn/ecsdk/ECSDK;->uploadStatistics(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public y(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)V
    .locals 2

    const-string v0, "BleAP bindBleApDevice"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "iDevice"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p2, 0x3e

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;)V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-"

    invoke-static {v0, v2}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const/4 p1, 0x3

    aput-object p3, v2, p1

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x16

    iput p1, v1, Landroid/os/Message;->what:I

    iget-object p1, p0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkOTAUpdate language = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
