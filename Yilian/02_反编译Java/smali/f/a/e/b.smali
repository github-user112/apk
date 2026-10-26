.class public Lf/a/e/b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/e/b$a;
    }
.end annotation


# static fields
.field public static g:I = 0xb798

.field public static h:I = 0x1b58


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lf/a/e/b$a;

.field public d:Landroid/content/SharedPreferences;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lf/a/e/b$a;)V
    .locals 1

    const-string v0, "DMRWorkThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/e/b;->e:Z

    iput-boolean v0, p0, Lf/a/e/b;->f:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/a/e/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lf/a/e/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lf/a/e/b;->c:Lf/a/e/b$a;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lf/a/e/b;->d:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    const-string v0, "stopEngine closeMDNS andr stopMediaRender"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 1
    const-class v0, Ld/s/y;

    monitor-enter v0

    :try_start_0
    const-string v1, "closeMDNS "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    if-eqz v1, :cond_0

    sget-object v1, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    const/4 v1, 0x0

    sput-object v1, Ld/s/y;->k:Ljavax/jmdns/JmDNS;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    sget-object v1, Ld/s/y;->h:Ljava/util/Timer;

    if-eqz v1, :cond_1

    sget-object v1, Ld/s/y;->h:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v0

    .line 2
    invoke-static {}, Lnet/easyconn/jni/PlatinumJniProxy;->stopMediaRender()I

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method public run()V
    .locals 36

    move-object/from16 v1, p0

    iget-object v0, v1, Lf/a/e/b;->c:Lf/a/e/b$a;

    check-cast v0, Lf/a/e/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lf/a/e/e;->a(I)V

    :goto_0
    iget-boolean v0, v1, Lf/a/e/b;->f:Z

    if-eqz v0, :cond_0

    goto/16 :goto_17

    .line 1
    :cond_0
    iget-boolean v0, v1, Lf/a/e/b;->e:Z

    if-nez v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lf/a/e/b;->a()Z

    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2
    :goto_1
    iget-object v0, v1, Lf/a/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    goto/16 :goto_12

    :cond_1
    iget-object v0, v1, Lf/a/e/b;->d:Landroid/content/SharedPreferences;

    const-string v4, "net_interface_name"

    const-string v5, "NULL"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v4, Lf/a/i/m/d;->c:Ljava/util/Properties;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const-string v5, "airplay_net_name"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_3

    move-object v0, v4

    :cond_3
    new-array v4, v3, [I

    .line 4
    sget v5, Lf/a/e/b;->g:I

    aput v5, v4, v2

    new-array v3, v3, [I

    sget v5, Lf/a/e/b;->h:I

    aput v5, v3, v2

    iget-object v2, v1, Lf/a/e/b;->a:Landroid/content/Context;

    iget-object v6, v1, Lf/a/e/b;->b:Ljava/lang/String;

    const-string v5, "pk"

    const-string v7, "220.68"

    const-string v8, "pw"

    const-string v9, "2.0.0.3"

    const-string v10, "rhd"

    const-string v11, "AppleTV3,2"

    const-string v12, "0x5A7FFFF0,0x1E"

    const-string v13, "vv"

    const-string v14, "false"

    const-string v15, "2"

    move-object/from16 v16, v6

    const-string v6, "DlnaHelper RegisterMyService netInterface\uff1a"

    .line 5
    invoke-static {v6, v0}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_3
    aget v17, v4, v6

    invoke-static/range {v17 .. v17}, Ld/s/y;->Q(I)Z

    move-result v17

    if-eqz v17, :cond_4

    aget v17, v4, v6

    add-int/lit8 v17, v17, 0x1

    aput v17, v4, v6

    goto :goto_3

    :cond_4
    :goto_4
    aget v17, v3, v6

    invoke-static/range {v17 .. v17}, Ld/s/y;->Q(I)Z

    move-result v17

    if-eqz v17, :cond_5

    aget v17, v3, v6

    add-int/lit8 v17, v17, 0x1

    aput v17, v3, v6

    goto :goto_4

    :cond_5
    :try_start_1
    sget-object v6, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    if-eqz v6, :cond_6

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    goto/16 :goto_e

    :cond_6
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v3

    const-string v3, ""

    const/16 v18, 0x0

    move-object/from16 v20, v3

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object v3, v0

    move-object/from16 v18, v20

    :goto_5
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v22, v5

    const-string v5, ":"

    if-eqz v21, :cond_11

    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/net/NetworkInterface;

    move-object/from16 v23, v6

    invoke-virtual/range {v21 .. v21}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v24, v5

    const-string v5, "ap"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "wlan"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    :goto_6
    move-object/from16 v25, v0

    move-object/from16 v27, v7

    goto/16 :goto_c

    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlnaHelper addrs\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-nez v6, :cond_f

    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    if-nez v4, :cond_a

    move-object v4, v5

    move-object/from16 v18, v20

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    move-object/from16 v25, v0

    move-object/from16 v6, v20

    :goto_8
    array-length v0, v4

    if-ge v3, v0, :cond_e

    aget-byte v0, v4, v3

    if-ltz v0, :cond_b

    aget-byte v0, v4, v3

    goto :goto_9

    :cond_b
    aget-byte v0, v4, v3

    add-int/lit16 v0, v0, 0x100

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v27, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_d

    move-object/from16 v0, v24

    goto :goto_a

    :cond_d
    move-object/from16 v0, v20

    :goto_a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v26

    move-object/from16 v7, v27

    goto :goto_8

    :cond_e
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v18, v6

    move-object/from16 v4, v26

    goto :goto_b

    :cond_f
    move-object/from16 v25, v0

    move-object/from16 v27, v7

    move-object/from16 v0, v25

    move-object/from16 v7, v27

    goto/16 :goto_7

    :cond_10
    move-object/from16 v25, v0

    move-object/from16 v27, v7

    :goto_b
    move-object/from16 v3, v25

    :goto_c
    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v0, v25

    move-object/from16 v7, v27

    goto/16 :goto_5

    :cond_11
    move-object/from16 v24, v5

    move-object/from16 v27, v7

    if-nez v4, :cond_12

    const/4 v0, -0x6

    goto/16 :goto_f

    :cond_12
    invoke-static {v4}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, -0x5

    goto/16 :goto_f

    :cond_13
    const-string v0, "99FD4299889422515FBD27949E4E1E21B2AF50A454499E3D4BE75A4E0F55FE63"

    const-string v3, "b08f5a79-db29-4384-b456-a4784d9e6055"

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHardwareAddress invalid, info.getMacAddress() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_d

    :cond_14
    move-object/from16 v2, v18

    :goto_d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v0, "macAddress error!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-jmdns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;Ljava/lang/String;)Ljavax/jmdns/JmDNS;

    move-result-object v5

    sput-object v5, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "ch"

    invoke-virtual {v7, v5, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "cn"

    const-string v6, "0,1,2,3"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "da"

    const-string v6, "true"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "et"

    const-string v6, "0,3,5"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v13, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ft"

    invoke-virtual {v7, v5, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "am"

    invoke-virtual {v7, v5, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "md"

    const-string v6, "0,1,2"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v10, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v8, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sr"

    const-string v6, "44100"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ss"

    const-string v6, "16"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sv"

    invoke-virtual {v7, v5, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "tp"

    const-string v6, "UDP"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "txtvers"

    const-string v6, "1"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sf"

    const-string v6, "44"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "vn"

    const-string v6, "65537"

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "vs"

    move-object/from16 v6, v27

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v22

    invoke-virtual {v7, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v28, "_raop._tcp.local."

    move-object/from16 v18, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v20

    move-object/from16 v5, v24

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, ""

    const/4 v4, 0x0

    aget v31, v19, v4

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v35, v7

    invoke-static/range {v28 .. v35}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    sput-object v4, Ld/s/y;->j:Ljavax/jmdns/ServiceInfo;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "deviceid"

    invoke-virtual {v4, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "features"

    invoke-virtual {v4, v5, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "srcvers"

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "flags"

    const-string v6, "0x44"

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v13, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "model"

    invoke-virtual {v4, v5, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v8, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v10, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "pi"

    invoke-virtual {v7, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v21

    move-object/from16 v3, v22

    invoke-virtual {v7, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "_airplay._tcp.local."

    const-string v3, ""

    const/4 v6, 0x0

    aget v8, v17, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v6, v0

    move-object v0, v7

    move-object v7, v3

    move-object v12, v4

    invoke-static/range {v5 .. v12}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    sput-object v3, Ld/s/y;->i:Ljavax/jmdns/ServiceInfo;

    sget-object v3, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    invoke-virtual {v3}, Ljavax/jmdns/JmDNS;->isClosing()Z

    move-result v3

    if-nez v3, :cond_18

    sget-object v3, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    invoke-virtual {v3}, Ljavax/jmdns/JmDNS;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_e

    :cond_16
    sget-object v3, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    sget-object v5, Ld/s/y;->j:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v3, v5}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    sget-object v3, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    invoke-virtual {v3}, Ljavax/jmdns/JmDNS;->isClosing()Z

    move-result v3

    if-nez v3, :cond_18

    sget-object v3, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    invoke-virtual {v3}, Ljavax/jmdns/JmDNS;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_e

    :cond_17
    sget-object v3, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    sget-object v5, Ld/s/y;->i:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v3, v5}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    new-instance v6, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Ljava/util/Timer;-><init>(Z)V

    sput-object v6, Ld/s/y;->h:Ljava/util/Timer;

    new-instance v7, Lf/a/e/c;

    invoke-direct {v7, v0, v4}, Lf/a/e/c;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    const-wide/16 v8, 0x7d0

    const-wide/16 v10, 0x7d0

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " roap Port port:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v19, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " airPlayPort port:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v17, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    goto :goto_f

    :cond_18
    :goto_e
    const/4 v0, 0x0

    :goto_f
    const/4 v2, 0x0

    goto :goto_11

    :catchall_0
    move-exception v0

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    :goto_10
    const-string v2, "Failed to registerService: "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-object v0, Ld/s/y;->k:Ljavax/jmdns/JmDNS;

    const/4 v0, -0x4

    .line 6
    :goto_11
    aget v3, v19, v2

    sput v3, Lf/a/e/b;->g:I

    aget v2, v17, v2

    sput v2, Lf/a/e/b;->h:I

    const-string v2, "RegisterMyService: ret = "

    invoke-static {v2, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    if-gtz v0, :cond_19

    iget-object v0, v1, Lf/a/e/b;->c:Lf/a/e/b$a;

    const/4 v2, 0x2

    check-cast v0, Lf/a/e/e;

    invoke-virtual {v0, v2}, Lf/a/e/e;->a(I)V

    :goto_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_19
    iget-object v0, v1, Lf/a/e/b;->c:Lf/a/e/b$a;

    check-cast v0, Lf/a/e/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lf/a/e/e;->a(I)V

    iget-object v0, v1, Lf/a/e/b;->a:Landroid/content/Context;

    iget-object v2, v1, Lf/a/e/b;->b:Ljava/lang/String;

    sget v3, Lf/a/e/b;->g:I

    sget v4, Lf/a/e/b;->h:I

    invoke-static {v0, v2, v3, v4}, Lnet/easyconn/jni/PlatinumJniProxy;->startMediaRender_Java(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_13

    :cond_1a
    const/4 v0, 0x0

    :goto_13
    iget-object v2, v1, Lf/a/e/b;->c:Lf/a/e/b$a;

    if-eqz v0, :cond_1b

    const/4 v3, 0x3

    goto :goto_14

    :cond_1b
    const/4 v3, 0x4

    :goto_14
    check-cast v2, Lf/a/e/e;

    invoke-virtual {v2, v3}, Lf/a/e/e;->a(I)V

    :goto_15
    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, v1, Lf/a/e/b;->e:Z

    .line 8
    :cond_1c
    monitor-enter p0

    const-wide/16 v2, 0x2710

    :try_start_4
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_16

    :catchall_2
    move-exception v0

    goto :goto_18

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_16
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-boolean v0, v1, Lf/a/e/b;->f:Z

    if-eqz v0, :cond_1d

    :goto_17
    iget-object v0, v1, Lf/a/e/b;->c:Lf/a/e/b$a;

    const/4 v2, 0x6

    check-cast v0, Lf/a/e/e;

    invoke-virtual {v0, v2}, Lf/a/e/e;->a(I)V

    const/4 v0, 0x0

    iput-object v0, v1, Lf/a/e/b;->b:Ljava/lang/String;

    const-string v0, "DMRWorkThread over..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_0

    :goto_18
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1a

    :goto_19
    throw v0

    :goto_1a
    goto :goto_19
.end method
