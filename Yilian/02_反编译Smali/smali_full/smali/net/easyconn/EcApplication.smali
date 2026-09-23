.class public Lnet/easyconn/EcApplication;
.super Lnet/easyconn/FrameworkApplication;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static instance:Lnet/easyconn/EcApplication; = null

.field public static volatile isCurrentMirror:Z = false

.field public static volatile isCurrentMirrorChannelOpen:Z = false

.field public static volatile isDiskLogEnable:Z = false

.field public static volatile isForeground:Z

.field public static mLongToast:Landroid/widget/Toast;

.field public static mShortToast:Landroid/widget/Toast;

.field public static final workService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final APP_KEY:Ljava/lang/String;

.field public final DEVICE_TYPE:I

.field public channel:Ljava/lang/String;

.field public defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public deviceFilterMap:Landroid/util/SparseIntArray;

.field public mCoustomToast:Landroid/widget/Toast;

.field public mEcCountDownTime:Lf/a/i/k/b;

.field public oldLocale:Ljava/lang/String;

.field public pushSecret:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lf/a/b;->a:Lf/a/b;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lnet/easyconn/EcApplication;->workService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/FrameworkApplication;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnet/easyconn/EcApplication;->oldLocale:Ljava/lang/String;

    const-string v0, "60b733afdd01c71b57d11fc5"

    iput-object v0, p0, Lnet/easyconn/EcApplication;->APP_KEY:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lnet/easyconn/EcApplication;->DEVICE_TYPE:I

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "EcApplication_work_thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lnet/easyconn/EcApplication;
    .locals 1

    sget-object v0, Lnet/easyconn/EcApplication;->instance:Lnet/easyconn/EcApplication;

    return-object v0
.end method

.method public static getTime()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCountDownTime()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/EcApplication;->mEcCountDownTime:Lf/a/i/k/b;

    if-nez v0, :cond_1

    new-instance v0, Lf/a/i/k/b;

    invoke-direct {v0, p0}, Lf/a/i/k/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/easyconn/EcApplication;->mEcCountDownTime:Lf/a/i/k/b;

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Lf/a/i/l/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/EcApplication;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p1}, Lnet/easyconn/FrameworkApplication;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lnet/easyconn/EcApplication;->installTinker(Landroid/content/Context;)V

    return-void
.end method

.method public executeTask(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lnet/easyconn/EcApplication;->workService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeTaskDelay(Ljava/lang/Runnable;J)V
    .locals 2

    sget-object v0, Lnet/easyconn/EcApplication;->workService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public getDeviceFilterMap()Landroid/util/SparseIntArray;
    .locals 5

    iget-object v0, p0, Lnet/easyconn/EcApplication;->deviceFilterMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/EcApplication;->deviceFilterMap:Landroid/util/SparseIntArray;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    new-instance v1, Landroid/util/SparseIntArray;

    const/16 v2, 0x46

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v3, "usb-device"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->append(II)V

    :cond_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getDeviceFilterMap error"

    invoke-static {v0, v3, v2}, Le/e/a/g;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-object v1, p0, Lnet/easyconn/EcApplication;->deviceFilterMap:Landroid/util/SparseIntArray;

    return-object v1
.end method

.method public getIsDayTheme()Z
    .locals 3

    invoke-static {}, Lnet/easyconn/FrameworkApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "EcApplicationTheme getIsDayTheme(). setDayNightTheme uiMode = "

    invoke-static {v1, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "EcApplicationTheme getIsDayTheme Dark "

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v2

    :cond_1
    const-string v0, "EcApplicationTheme getIsDayTheme Light "

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public handleLocaleChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/easyconn/EcApplication;->oldLocale:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lnet/easyconn/EcApplication;->oldLocale:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string p1, "current locale is %s, change to %s"

    invoke-static {p1, v0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/m/g;->y(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "net.easyconn.usb.netlink.status"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "error_code"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lnet/easyconn/netlink/service/NetLinkService;->l()V

    :cond_1
    invoke-virtual {p0}, Lnet/easyconn/EcApplication;->onTerminate()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_2
    return-void
.end method

.method public initBugly()V
    .locals 2

    new-instance v0, Lnet/easyconn/EcApplication$c;

    invoke-direct {v0, p0}, Lnet/easyconn/EcApplication$c;-><init>(Lnet/easyconn/EcApplication;)V

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->betaPatchListener:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    const-string v0, "900037976"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/bugly/Bugly;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public initUmeng()V
    .locals 4

    const-string v0, "tocfree"

    iput-object v0, p0, Lnet/easyconn/EcApplication;->channel:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/EcApplication;->pushSecret:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->setLogEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/EcApplication;->channel:Ljava/lang/String;

    const-string v3, "60b733afdd01c71b57d11fc5"

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/EcApplication;->channel:Ljava/lang/String;

    iget-object v2, p0, Lnet/easyconn/EcApplication;->pushSecret:Ljava/lang/String;

    invoke-static {p0, v3, v1, v0, v2}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->MANUAL:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    return-void
.end method

.method public installTinker()V
    .locals 0

    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->installTinker()V

    return-void
.end method

.method public installTinker(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Ld/o/e;->f(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnet/easyconn/EcApplication;->installTinker()V

    return-void
.end method

.method public notifyIsDayTheme(Landroid/content/res/Configuration;)Z
    .locals 2

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    const-string v0, "EcApplicationTheme onConfigurationChanged(). notifyIsDayTheme uiMode = "

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const-string p1, "EcApplicationTheme notifyIsDayTheme onChangeDark "

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v1

    :cond_1
    const-string p1, "EcApplicationTheme notifyIsDayTheme onChangeLight "

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityPause()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onActivityPause"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onActivityResume"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "application onConfigurationChanged"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lnet/easyconn/EcApplication;->handleLocaleChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/easyconn/EcApplication;->notifyIsDayTheme(Landroid/content/res/Configuration;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lnet/easyconn/EcApplication;->setDayNightTheme(Z)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->c(Landroid/content/Context;)Lf/a/i/a;

    invoke-virtual {p0}, Lnet/easyconn/EcApplication;->onCreateImpl()V

    invoke-virtual {p0}, Lnet/easyconn/EcApplication;->initUmeng()V

    invoke-direct {p0}, Lnet/easyconn/EcApplication;->initCountDownTime()V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/easyconn/EcApplication;->getIsDayTheme()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/easyconn/EcApplication;->setDayNightTheme(Z)V

    :cond_0
    return-void
.end method

.method public onCreateImpl()V
    .locals 6

    sput-object p0, Lnet/easyconn/EcApplication;->instance:Lnet/easyconn/EcApplication;

    const/4 v0, 0x0

    invoke-static {v0}, Lf/a/i/i/q;->g0(Z)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_ALL:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;->EC_LOG_OUT_LOGCAT:Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/easyconn/ecsdk/ECSDK;->setLogInfo(Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;Lnet/easyconn/ecsdk/ECTypes$ECLogOutputType;Ljava/lang/String;I)V

    new-instance v1, Lnet/easyconn/EcApplication$a;

    invoke-direct {v1, p0}, Lnet/easyconn/EcApplication$a;-><init>(Lnet/easyconn/EcApplication;)V

    .line 1
    sget-object v2, Le/e/a/g;->a:Le/e/a/h;

    .line 2
    iget-object v2, v2, Le/e/a/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Le/e/a/a;->b()Le/e/a/a$b;

    move-result-object v1

    const v2, 0x7f0d003d

    invoke-virtual {p0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/e/a/a$b;->b(Ljava/lang/String;)Le/e/a/a$b;

    invoke-virtual {v1}, Le/e/a/a$b;->a()Le/e/a/a;

    move-result-object v1

    new-instance v2, Lnet/easyconn/EcApplication$b;

    invoke-direct {v2, p0, v1}, Lnet/easyconn/EcApplication$b;-><init>(Lnet/easyconn/EcApplication;Le/e/a/d;)V

    .line 4
    sget-object v1, Le/e/a/g;->a:Le/e/a/h;

    .line 5
    iget-object v1, v1, Le/e/a/h;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v1

    const-string v2, "key_ec_disk_log_state"

    invoke-virtual {v1, v2, v0}, Lf/a/i/g/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lnet/easyconn/EcApplication;->isDiskLogEnable:Z

    invoke-virtual {p0}, Lnet/easyconn/EcApplication;->initBugly()V

    invoke-static {p0}, Lf/a/i/m/d;->e(Landroid/content/Context;)Z

    invoke-static {p0}, Le/c/b/a/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/EcApplication;->oldLocale:Ljava/lang/String;

    invoke-static {p0}, Lf/a/i/l/a;->B(Landroid/content/Context;)V

    new-instance v0, Lf/a/a;

    invoke-direct {v0, p0}, Lf/a/a;-><init>(Lnet/easyconn/EcApplication;)V

    invoke-virtual {p0, v0}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcApplication onCreate, locale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/EcApplication;->oldLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDiskLogEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lnet/easyconn/EcApplication;->isDiskLogEnable:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public onEventAirplayClick()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key_Function_Name"

    const-string v2, "airplay_click"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/easyconn/EcApplication;->getTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_ClickTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Function_Click"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventAirplayClick getTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/easyconn/EcApplication;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEventAirplayUse(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "key_AirplayUseTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AirplayUse"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventAirplayUse time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEventDlnaClick()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key_Function_Name"

    const-string v2, "dlna_click"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/easyconn/EcApplication;->getTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_ClickTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Function_Click"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventDlnaClick getTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/easyconn/EcApplication;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEventDlnaUse(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "key_DlnaUseTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DlnaUse"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventDlnaUse time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMiracastClick()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key_Function_Name"

    const-string v2, "miracast_click"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/easyconn/EcApplication;->getTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_ClickTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Function_Click"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventMiracastClick getTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/easyconn/EcApplication;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMiracastUse(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "key_MiracastUseTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MiracastUse"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventMiracastUse time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMirrorClick()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key_Function_Name"

    const-string v2, "mirror_click"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/easyconn/EcApplication;->getTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_ClickTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Function_Click"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventMirrorClick getTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/easyconn/EcApplication;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMirrorUse(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "key_MirrorUseTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MirrorUse"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventMirrorUse time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "net.easyconn.app.quit"

    invoke-static {v0, v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public regCountDownTimeCallBack(Lf/a/i/k/b$a;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/EcApplication;->mEcCountDownTime:Lf/a/i/k/b;

    invoke-virtual {v0, p1}, Lf/a/i/k/b;->a(Lf/a/i/k/b$a;)V

    return-void
.end method

.method public setDayNightTheme(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-static {p0, p1}, Lf/a/i/m/g;->l0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showLastToastCustom(Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lnet/easyconn/EcApplication;->mCoustomToast:Landroid/widget/Toast;

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/easyconn/EcApplication;->mCoustomToast:Landroid/widget/Toast;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lnet/easyconn/EcApplication;->mCoustomToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/easyconn/EcApplication;->mCoustomToast:Landroid/widget/Toast;

    const/16 v1, 0x51

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    :goto_0
    iget-object p1, p0, Lnet/easyconn/EcApplication;->mCoustomToast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    iget-object p1, p0, Lnet/easyconn/EcApplication;->mCoustomToast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lnet/easyconn/EcApplication;->mCoustomToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final showToast(II)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/EcApplication;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/EcApplication;->showLastToastCustom(Ljava/lang/String;I)V

    return-void
.end method

.method public final showToastCustom(II)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/EcApplication;->showToastCustom(Ljava/lang/String;I)V

    return-void
.end method

.method public showToastCustom(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/easyconn/EcApplication;->showLastToastCustom(Ljava/lang/String;I)V

    return-void
.end method

.method public startCountDown()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/EcApplication;->mEcCountDownTime:Lf/a/i/k/b;

    invoke-virtual {v0}, Lf/a/i/k/b;->b()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "startCountDown"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stopCountDown()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/EcApplication;->mEcCountDownTime:Lf/a/i/k/b;

    invoke-virtual {v0}, Lf/a/i/k/b;->c()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stopCountDown"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public unRegCountDownTimeCallBack()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/easyconn/EcApplication;->mEcCountDownTime:Lf/a/i/k/b;

    invoke-virtual {v0}, Lf/a/i/k/b;->d()V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "uncaughtException e = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fatal easyconn exception detail: \n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/easyconn/EcApplication;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :goto_1
    return-void
.end method
