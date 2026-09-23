.class public Lf/a/k/m0/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/k/k0/a;
.implements Lf/a/i/h/g;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lf/a/i/l/a;

.field public final c:Lf/a/k/k0/b;

.field public final d:Lf/a/i/j/c;

.field public final e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

.field public f:Z

.field public g:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

.field public h:Z

.field public i:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/k/k0/b;Lf/a/i/j/c;Lnet/easyconn/framework/sdkservice/EasyConnectService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/m0/q0;->h:Z

    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lf/a/k/m0/q0;->i:[J

    iput-object p1, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    iput-object p2, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {p2, p0}, Lf/a/d;->E(Ljava/lang/Object;)V

    iput-object p3, p0, Lf/a/k/m0/q0;->d:Lf/a/i/j/c;

    iput-object p4, p0, Lf/a/k/m0/q0;->e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    new-instance p2, Lf/a/i/l/a;

    invoke-direct {p2, p1}, Lf/a/i/l/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lf/a/k/m0/q0;->b:Lf/a/i/l/a;

    return-void
.end method


# virtual methods
.method public E()V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/m0/d;

    invoke-direct {v1, p0}, Lf/a/k/m0/d;-><init>(Lf/a/k/m0/q0;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lf/a/k/m0/q0;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/k/m0/q0;->b:Lf/a/i/l/a;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lf/a/i/l/a;->a:Z

    return-void
.end method

.method public M(ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lf/a/k/k0/b;->v()V

    iget-object p2, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {p2, p1}, Lf/a/k/k0/b;->f(I)V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 9

    iget-object v0, p0, Lf/a/k/m0/q0;->i:[J

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lf/a/k/m0/q0;->i:[J

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v1

    iget-object v0, p0, Lf/a/k/m0/q0;->i:[J

    aget-wide v4, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    sub-long/2addr v0, v6

    cmp-long v6, v4, v0

    if-ltz v6, :cond_4

    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lf/a/k/m0/q0;->i:[J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1
    invoke-static {v1}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    .line 2
    :goto_0
    invoke-virtual {v1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v5, v2

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    sget-boolean v2, Lnet/easyconn/EcApplication;->isDiskLogEnable:Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v5, p0, Lf/a/k/m0/q0;->e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v5, :cond_3

    .line 4
    iget-object v6, v5, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g:Lf/a/i/e/a;

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->b()V

    :cond_2
    iget-object v5, v5, Lnet/easyconn/framework/sdkservice/EasyConnectService;->g:Lf/a/i/e/a;

    invoke-virtual {v5}, Lf/a/i/e/a;->getLicensePwd()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v4

    .line 5
    :goto_2
    invoke-interface {v1, v2, v0, v5}, Lf/a/k/k0/b;->o(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_ALL:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;->EC_LOG_OUT_LOGCAT:Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;

    const/16 v5, 0x1f

    invoke-virtual {v0, v1, v2, v4, v5}, Lnet/easyconn/ecsdk/ECSDK;->setLogInfo(Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;Ljava/lang/String;I)V

    iget-object v0, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    const-string v1, "SDK_Logcat = true"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method public R()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    iget-object v0, v1, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {v0}, Lf/a/k/k0/b;->v()V

    iget-object v0, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/l/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {v0, v11}, Lf/a/i/l/a;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lf/a/i/l/a;->y(Landroid/content/Context;J)V

    :cond_0
    iget-object v0, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    const-string v2, "net.easyconn.fileProvider"

    invoke-static {v0, v11, v2}, Lf/a/i/l/a;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_1

    const-string v2, "installApkFilePreCheck fail:"

    invoke-static {v2, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iget-object v0, v1, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {v0}, Lf/a/k/k0/b;->a()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lf/a/i/i/q;->I()J

    move-result-wide v2

    iget-object v0, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/l/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "key_ec_airplay_versioncode"

    if-eqz v0, :cond_4

    iget-object v0, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 2
    iget-object v2, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/m/g;->i(Landroid/content/Context;)I

    move-result v2

    if-le v0, v2, :cond_3

    int-to-long v2, v0

    goto :goto_0

    :cond_3
    int-to-long v2, v2

    goto :goto_0

    :cond_4
    const-string v4, "key_ec_sdk_versioncode"

    :goto_0
    move-wide v12, v2

    iget-object v0, v1, Lf/a/k/m0/q0;->g:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    array-length v2, v0

    const/4 v14, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v5, v0, v3

    iget-object v6, v5, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v0, v5, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->versionCode:I

    move v15, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_2
    :try_start_0
    invoke-static {}, Lf/a/i/l/a;->n()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v11, v0, v14, v2}, Lf/a/i/l/a;->C(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v0, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    int-to-long v7, v15

    .line 3
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4
    iget-object v0, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-wide v5, v12

    invoke-static/range {v2 .. v9}, Lf/a/i/l/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZ)V

    if-nez p5, :cond_7

    iget-object v0, v1, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {v0}, Lf/a/k/k0/b;->x()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unzip "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lf/a/i/l/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v5, v15

    const/4 v0, 0x0

    move-object/from16 v3, p1

    move-wide v15, v5

    move-wide v5, v12

    move-object v10, v7

    move-wide v7, v15

    move-object v12, v9

    move v9, v0

    invoke-static/range {v2 .. v9}, Lf/a/i/l/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZ)V

    invoke-static {v12, v11, v10}, Le/a/c/a/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lf/a/i/l/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public Y()V
    .locals 6

    iget-object v0, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "connectivity"

    .line 1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 2
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v4, ""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "EXCLUDE_NETWORK_TYPES"

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currNetworkType: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";excludeNetworkTypes: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "updateApp isNetworkConnected false"

    .line 4
    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lf/a/k/k0/b;->f(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lf/a/k/m0/q0;->e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 5
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "updateApp ecConnectService.getEcSdkManager() is null, return to avoid null pointer exception."

    .line 6
    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v0, p0, Lf/a/k/m0/q0;->e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 7
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 8
    iget-object v1, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v1, :cond_5

    .line 9
    iput-object p0, v1, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    .line 10
    :cond_5
    iput-object p0, v0, Lf/a/i/i/q;->C:Lf/a/i/h/g;

    .line 11
    iget-object v0, p0, Lf/a/k/m0/q0;->e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 12
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 13
    iget-object v1, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/l/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/l/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;->EC_OTA_CHECK_VIA_NETWORK:Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/i/q;->z(Ljava/lang/String;Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateCheckMode;)V

    iget-boolean v0, p0, Lf/a/k/m0/q0;->h:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-boolean v0, p0, Lf/a/k/m0/q0;->f:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/m0/q0;->f:Z

    const-string v0, "updateApp batchCheckUpdate"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/m0/e;

    invoke-direct {v1, p0}, Lf/a/k/m0/e;-><init>(Lf/a/k/m0/q0;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/q0;->d:Lf/a/i/j/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/q0;->e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {v0}, Lf/a/k/k0/b;->v()V

    return-void
.end method

.method public synthetic d()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/q0;->e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i()V

    return-void
.end method

.method public synthetic e()V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/q0;->b:Lf/a/i/l/a;

    new-instance v1, Lf/a/k/m0/p0;

    invoke-direct {v1, p0}, Lf/a/k/m0/p0;-><init>(Lf/a/k/m0/q0;)V

    invoke-virtual {v0, v1}, Lf/a/i/l/a;->a(Lf/a/i/l/a$d;)V

    return-void
.end method

.method public j(Ljava/lang/String;FII)V
    .locals 4

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Object;

    const-string v0, " sid = "

    const-string v1, " progress = "

    invoke-static {v0, p1, v1}, Le/a/c/a/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p3, p3, [Ljava/lang/Object;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, p2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p3, v3

    const-string v2, "%d%%"

    invoke-static {v1, v2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, v3

    invoke-static {p1, p4}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-object p3, p0, Lf/a/k/m0/q0;->g:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    array-length p4, p3

    :goto_0
    if-ge v3, p4, :cond_2

    aget-object v0, p3, v3

    iget-object v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    iget-object p3, v0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareName:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lf/a/k/k0/b;->m(Ljava/lang/String;F)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onOTAUpdateRequestDownload([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public u([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
    .locals 6

    const-string p4, "onCheckResult downloadableLength = "

    invoke-static {p4, p2}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/l/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    if-eqz v1, :cond_0

    iget-object v5, v4, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    iget-object p1, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    iget-object p2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->packagePath:Ljava/lang/String;

    invoke-static {p1, p2}, Lf/a/i/l/a;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long p3, p1

    invoke-static {p2, p3, p4}, Lf/a/i/l/a;->y(Landroid/content/Context;J)V

    :cond_2
    iget-object p1, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    iget-object p2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->packagePath:Ljava/lang/String;

    const-string p3, "net.easyconn.fileProvider"

    invoke-static {p1, p2, p3}, Lf/a/i/l/a;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/high16 p2, 0x10000

    if-eq p1, p2, :cond_3

    const-string p2, "installApkFilePreCheck fail:"

    invoke-static {p2, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iget-object p1, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {p1}, Lf/a/k/k0/b;->a()V

    :cond_3
    return-void

    :cond_4
    if-gtz p2, :cond_5

    iget-object p1, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {p1, p2}, Lf/a/k/k0/b;->f(I)V

    return-void

    :cond_5
    iput-object p1, p0, Lf/a/k/m0/q0;->g:[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    if-eqz p1, :cond_b

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {p3}, Lf/a/i/l/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_8

    aget-object v1, p1, v0

    iget-object v1, v1, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/l/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/l/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_9

    iget-object p1, p0, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {p1, p4}, Lf/a/k/k0/b;->f(I)V

    return-void

    :cond_9
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lf/a/k/m0/q0;->e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 1
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/String;

    aput-object p3, v0, p4

    .line 2
    invoke-virtual {p1, v0, p2}, Lf/a/i/i/q;->n0([Ljava/lang/String;I)V

    iget-object p1, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/l/a;->x(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateApp onCheckResult startOTAUpdate ec apk = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p3, p1, [Ljava/lang/String;

    iget-object p4, p0, Lf/a/k/m0/q0;->e:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object p4, p4, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 4
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p4, p2, p1}, Lf/a/i/i/q;->n0([Ljava/lang/String;I)V

    const-string p2, "updateApp onCheckResult startOTAUpdate length = "

    invoke-static {p2, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public z(Z)V
    .locals 4

    sput-boolean p1, Lnet/easyconn/EcApplication;->isDiskLogEnable:Z

    iget-object v0, p0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_ec_disk_log_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_ALL:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;->EC_LOG_OUT_FILE:Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;

    const/4 v2, 0x7

    const-string v3, "/sdcard/logger"

    invoke-virtual {p1, v0, v1, v3, v2}, Lnet/easyconn/ecsdk/ECSDK;->setLogInfo(Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;Ljava/lang/String;I)V

    return-void
.end method
