.class public Lf/a/i/p/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/p/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/p/e$h;,
        Lf/a/i/p/e$g;,
        Lf/a/i/p/e$i;
    }
.end annotation


# static fields
.field public static final j:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lf/a/i/p/d;

.field public c:Lf/a/i/h/f;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lf/a/i/p/e$a;

    invoke-direct {v1}, Lf/a/i/p/e$a;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/a/i/p/e$b;

    invoke-direct {v0, p0}, Lf/a/i/p/e$b;-><init>(Lf/a/i/p/e;)V

    iput-object v0, p0, Lf/a/i/p/e;->d:Ljava/lang/Runnable;

    new-instance v0, Lf/a/i/p/e$c;

    invoke-direct {v0, p0}, Lf/a/i/p/e$c;-><init>(Lf/a/i/p/e;)V

    iput-object v0, p0, Lf/a/i/p/e;->e:Ljava/lang/Runnable;

    new-instance v0, Lf/a/i/p/e$d;

    invoke-direct {v0, p0}, Lf/a/i/p/e$d;-><init>(Lf/a/i/p/e;)V

    iput-object v0, p0, Lf/a/i/p/e;->f:Ljava/lang/Runnable;

    new-instance v0, Lf/a/i/p/e$e;

    invoke-direct {v0, p0}, Lf/a/i/p/e$e;-><init>(Lf/a/i/p/e;)V

    iput-object v0, p0, Lf/a/i/p/e;->g:Ljava/lang/Runnable;

    const-string v0, "while true\ndo delay=1\nsleep $delay\nservice=`ps| grep net.easyconn | grep -v grep`\nif [ ! \"$service\" ];then \nadb-ec -P 5039 ghost iptables -t nat -F\nadb-ec -P 5039 ghost ip route del default via 172.16.1.1\necho \"exit ok\"\nbreak\nfi \necho $service\nsleep $delay\ndone\n"

    iput-object v0, p0, Lf/a/i/p/e;->h:Ljava/lang/String;

    new-instance v0, Lf/a/i/p/e$f;

    invoke-direct {v0, p0}, Lf/a/i/p/e$f;-><init>(Lf/a/i/p/e;)V

    iput-object v0, p0, Lf/a/i/p/e;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Lf/a/i/p/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/i/p/e;->b:Lf/a/i/p/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/i/p/d;->c()V

    .line 2
    :cond_0
    iget-object v0, p0, Lf/a/i/p/e;->b:Lf/a/i/p/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/i/p/d;->e()V

    :cond_1
    sget-object v0, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lf/a/i/p/e;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lf/a/i/p/e;->e:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lf/a/i/p/e;->e:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lf/a/i/p/e;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf/a/i/p/e;->b:Lf/a/i/p/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/i/p/d;->c()V

    :cond_0
    new-instance v0, Lf/a/i/p/d;

    iget-object v1, p0, Lf/a/i/p/e;->a:Landroid/content/Context;

    const-string v2, "127.0.0.1"

    invoke-direct {v0, v1, v2, p0}, Lf/a/i/p/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/i/p/e;)V

    iput-object v0, p0, Lf/a/i/p/e;->b:Lf/a/i/p/d;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lf/a/i/p/e;->e:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lf/a/i/p/e;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf/a/i/p/e;->b:Lf/a/i/p/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/i/p/d;->c()V

    :cond_0
    new-instance v0, Lf/a/i/p/d;

    iget-object v1, p0, Lf/a/i/p/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lf/a/i/p/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/i/p/e;)V

    iput-object v0, p0, Lf/a/i/p/e;->b:Lf/a/i/p/d;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public d()V
    .locals 7

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->queryTime()Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ECTimeInfo "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lf/a/i/p/e;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lf/a/i/p/e$g;

    iget-wide v4, v0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->gmtTime:J

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd.HHmmss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "NetShareManager dateLongToString:"

    invoke-static {v4, v0}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {v3, p0, v0}, Lf/a/i/p/e$g;-><init>(Lf/a/i/p/e;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NetShareManager usbStart onStart"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
