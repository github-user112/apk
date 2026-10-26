.class public Lg/a/b/b/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Landroid/content/Context; = null

.field public static b:Z = false

.field public static c:Lg/a/b/b/a/d;

.field public static d:Ljava/lang/Object;

.field public static e:Landroid/os/HandlerThread;

.field public static f:Landroid/os/Handler;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static volatile i:Lg/a/b/b/a/c;

.field public static volatile j:Lg/a/b/b/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/a/b/b/a/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lg/a/b/b/a/c;
    .locals 2

    const-class v0, Lg/a/b/b/a/c;

    sget-object v1, Lg/a/b/b/a/c;->i:Lg/a/b/b/a/c;

    if-nez v1, :cond_0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lg/a/b/b/a/c;->a:Landroid/content/Context;

    new-instance v1, Lg/a/b/b/a/c;

    invoke-direct {v1}, Lg/a/b/b/a/c;-><init>()V

    sput-object v1, Lg/a/b/b/a/c;->i:Lg/a/b/b/a/c;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    sget-object v1, Lg/a/b/b/a/c;->j:Lg/a/b/b/a/a;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lg/a/b/b/a/c;->a:Landroid/content/Context;

    .line 1
    new-instance p0, Landroid/os/HandlerThread;

    const-string v1, "SqlWorkThread"

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lg/a/b/b/a/c;->e:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance p0, Lg/a/b/b/a/b;

    sget-object v1, Lg/a/b/b/a/c;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lg/a/b/b/a/b;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lg/a/b/b/a/c;->f:Landroid/os/Handler;

    .line 2
    new-instance p0, Lg/a/b/b/a/a;

    sget-object v1, Lg/a/b/b/a/c;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lg/a/b/b/a/a;-><init>(Landroid/content/Context;)V

    sput-object p0, Lg/a/b/b/a/c;->j:Lg/a/b/b/a/a;

    invoke-static {}, Lg/a/b/b/a/c;->c()V

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    :goto_1
    sget-object p0, Lg/a/b/b/a/c;->i:Lg/a/b/b/a/c;

    return-object p0
.end method

.method public static c()V
    .locals 8

    const-string v0, "persist.sys.identifierid.supported"

    .line 1
    const-class v1, Ljava/lang/String;

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const-string v0, "unknown"

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const-string v0, "0"

    :goto_0
    const-string v1, "1"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lg/a/b/b/a/c;->b:Z

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/String;)V
    .locals 9

    sget-object v0, Lg/a/b/b/a/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lg/a/b/b/a/c;->f:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    const-string v5, "appid"

    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p2, Lg/a/b/b/a/c;->f:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x7d0

    :try_start_1
    sget-object p2, Lg/a/b/b/a/c;->d:Ljava/lang/Object;

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long p2, v7, v5

    if-gez p2, :cond_8

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    goto :goto_2

    :cond_2
    sget-object p1, Lg/a/b/b/a/c;->g:Ljava/lang/String;

    if-eqz p1, :cond_3

    sput-object p2, Lg/a/b/b/a/c;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, "VMS_IDLG_SDK_Client"

    const-string v1, "get aaid failed"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    sput-object p2, Lg/a/b/b/a/c;->g:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object p1, Lg/a/b/b/a/c;->g:Ljava/lang/String;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "VMS_IDLG_SDK_Client"

    const-string p2, "get vaid failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    sget-object p1, Lg/a/b/b/a/c;->g:Ljava/lang/String;

    sput-object p1, Lg/a/b/b/a/c;->h:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string p1, "VMS_IDLG_SDK_Client"

    const-string p2, "query timeout"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
