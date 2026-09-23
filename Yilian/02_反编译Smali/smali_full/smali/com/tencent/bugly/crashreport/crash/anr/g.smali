.class public Lcom/tencent/bugly/crashreport/crash/anr/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/tencent/bugly/crashreport/crash/anr/g;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/app/ActivityManager;

.field public final e:Lcom/tencent/bugly/crashreport/common/info/a;

.field public final f:Lcom/tencent/bugly/proguard/Z;

.field public final g:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field public final h:Lcom/tencent/bugly/crashreport/crash/j;

.field public final i:Ljava/lang/Object;

.field public j:Ljava/lang/String;

.field public k:Landroid/os/FileObserver;

.field public l:Z

.field public m:Lcom/tencent/bugly/proguard/ja;

.field public n:I

.field public o:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/proguard/Z;Lcom/tencent/bugly/proguard/J;Lcom/tencent/bugly/crashreport/crash/j;Lcom/tencent/bugly/BuglyStrategy$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p7, 0x0

    invoke-direct {p5, p7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->i:Ljava/lang/Object;

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->o:J

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ha;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p5

    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->c:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/ActivityManager;

    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->d:Landroid/app/ActivityManager;

    const-string p5, "bugly"

    invoke-virtual {p1, p5, p7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->f:Lcom/tencent/bugly/proguard/Z;

    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->g:Lcom/tencent/bugly/crashreport/common/strategy/c;

    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->h:Lcom/tencent/bugly/crashreport/crash/j;

    return-void
.end method

.method private a(Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/lang/String;Ljava/util/Map;)Lcom/tencent/bugly/crashreport/crash/anr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/bugly/crashreport/crash/anr/a;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/anr/a;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/anr/a;-><init>()V

    iput-wide p2, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->c:J

    if-eqz p1, :cond_0

    iget-object p2, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p2}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    const-string p2, ""

    if-eqz p1, :cond_1

    iget-object p3, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p3, p2

    :goto_1
    iput-object p3, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->f:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p2, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    :cond_2
    iput-object p2, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->e:Ljava/lang/String;

    iput-object p5, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->b:Ljava/util/Map;

    iput-object p4, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->g:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "main stack is null , some error may be encountered."

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->g:Ljava/lang/String;

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    iget-wide p2, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->c:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p2, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->d:Ljava/lang/String;

    const/4 p4, 0x1

    aput-object p2, p1, p4

    iget-object p2, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    const/4 p4, 0x2

    aput-object p2, p1, p4

    iget-object p2, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->g:Ljava/lang/String;

    const/4 p4, 0x3

    aput-object p2, p1, p4

    iget-object p2, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->f:Ljava/lang/String;

    const/4 p4, 0x4

    aput-object p2, p1, p4

    iget-object p2, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->e:Ljava/lang/String;

    const/4 p4, 0x5

    aput-object p2, p1, p4

    const/4 p2, 0x6

    iget-object p4, v0, Lcom/tencent/bugly/crashreport/crash/anr/a;->b:Ljava/util/Map;

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p3

    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "anr time:%d\ntrace file:%s\nproc:%s\nmain stack:%s\nshort msg:%s\nlong msg:%s\n threads:%d"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/proguard/Z;Lcom/tencent/bugly/proguard/J;Lcom/tencent/bugly/crashreport/crash/j;Lcom/tencent/bugly/BuglyStrategy$a;)Lcom/tencent/bugly/crashreport/crash/anr/g;
    .locals 9

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/anr/g;->a:Lcom/tencent/bugly/crashreport/crash/anr/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/anr/g;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/tencent/bugly/crashreport/crash/anr/g;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/proguard/Z;Lcom/tencent/bugly/proguard/J;Lcom/tencent/bugly/crashreport/crash/j;Lcom/tencent/bugly/BuglyStrategy$a;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/anr/g;->a:Lcom/tencent/bugly/crashreport/crash/anr/g;

    :cond_0
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->a:Lcom/tencent/bugly/crashreport/crash/anr/g;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/crashreport/crash/anr/g;)Lcom/tencent/bugly/proguard/Z;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->f:Lcom/tencent/bugly/proguard/Z;

    return-object p0
.end method

.method private a(Ljava/util/List;J)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/anr/i;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\n>>>>> \u4ee5\u4e0b\u4e3aanr\u8fc7\u7a0b\u4e2d\u4e3b\u7ebf\u7a0b\u5806\u6808\u8bb0\u5f55\uff0c\u53ef\u6839\u636e\u5806\u6808\u51fa\u73b0\u6b21\u6570\u63a8\u6d4b\u5728\u8be5\u5806\u6808\u963b\u585e\u7684\u65f6\u95f4\uff0c\u51fa\u73b0\u6b21\u6570\u8d8a\u591a\u5bf9anr\u8d21\u732e\u8d8a\u5927\uff0c\u8d8a\u53ef\u80fd\u662f\u9020\u6210anr\u7684\u539f\u56e0 >>>>>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n>>>>> Thread Stack Traces Records Start >>>>>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/crashreport/crash/anr/i;

    const-string v3, "Thread name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/crash/anr/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/crash/anr/i;->a()J

    move-result-wide v4

    sub-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    const-string v6, "before "

    goto :goto_1

    :cond_1
    const-string v6, "after "

    :goto_1
    const-string v7, "Got "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "anr:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/crash/anr/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const v3, 0x18c00

    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string p1, "\n<<<<< Thread Stack Traces Records End <<<<<\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_3
    const-string p1, "main thread stack not enable"

    return-object p1
.end method

.method private a(JLjava/lang/String;)V
    .locals 10

    const-string v0, "anr time:%s"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    const-string v3, "Disable record main stack trace."

    :try_start_2
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/ja;->a()V

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ha;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->F()Z

    move-result v0

    sget v3, Lcom/tencent/bugly/crashreport/crash/m;->f:I

    invoke-static {v0, v3, v2}, Lcom/tencent/bugly/proguard/ha;->a(ZIZ)Ljava/util/Map;

    move-result-object v9

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/anr/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->d:Landroid/app/ActivityManager;

    const-wide/16 v3, 0x5208

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->d:Landroid/app/ActivityManager;

    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v0, v3, v4}, Lcom/tencent/bugly/crashreport/crash/anr/h;->a(Landroid/app/ActivityManager;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, v0

    if-nez v5, :cond_3

    const-string p1, "proc state is invisible or not my proc!"

    :try_start_4
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-direct {p0, v2}, Lcom/tencent/bugly/crashreport/crash/anr/g;->d(Z)Z

    return-void

    :cond_3
    move-object v3, p0

    move-object v4, p3

    move-wide v6, p1

    :try_start_5
    invoke-direct/range {v3 .. v9}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->i:Ljava/lang/Object;

    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p2, :cond_4

    const-string p2, "Finish anr process."

    :try_start_7
    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    invoke-virtual {p2, v1}, Lcom/tencent/bugly/proguard/ja;->b(Z)V

    :cond_4
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_b
    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/Throwable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/tencent/bugly/crashreport/crash/anr/g;->d(Z)Z

    return-void

    :catchall_3
    move-exception p1

    invoke-direct {p0, v2}, Lcom/tencent/bugly/crashreport/crash/anr/g;->d(Z)Z

    throw p1
.end method

.method public static synthetic a(Lcom/tencent/bugly/crashreport/crash/anr/g;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/bugly/crashreport/crash/anr/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLcom/tencent/bugly/crashreport/crash/anr/a;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p4, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "AnrBean is null. Cannot set trace file for it."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v3, "trace file:%s"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bugly_trace_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "trace file exists"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "/data/anr/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p4, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v4}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "backup trace isOK:%s"

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "trace file rename :%s"

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    if-eqz v4, :cond_3

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/ja;->b()Ljava/util/List;

    move-result-object p1

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(Ljava/util/List;J)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "save main stack trace"

    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/32 p2, 0x7fffffff

    invoke-static {v2, p1, p2, p3, v1}, Lcom/tencent/bugly/proguard/ca;->a(Ljava/io/File;Ljava/lang/String;JZ)Z

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/tencent/bugly/crashreport/crash/anr/a;->d:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "trace file is null or not exists, just ignore"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/lang/String;Ljava/util/Map;)Lcom/tencent/bugly/crashreport/crash/anr/a;

    move-result-object p2

    const/4 p5, 0x0

    new-array p6, p5, [Ljava/lang/Object;

    const-string v0, "found visible anr , start to upload!"

    invoke-static {v0, p6}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(Ljava/lang/String;JLcom/tencent/bugly/crashreport/crash/anr/a;)V

    invoke-virtual {p0, p2}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(Lcom/tencent/bugly/crashreport/crash/anr/a;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, p5, [Ljava/lang/Object;

    const-string p2, "pack anr fail!"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/m;->g()Lcom/tencent/bugly/crashreport/crash/m;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/tencent/bugly/crashreport/crash/m;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    iget-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v2, 0x0

    cmp-long p6, v0, v2

    new-array p5, p5, [Ljava/lang/Object;

    if-ltz p6, :cond_1

    const-string p6, "backup anr record success!"

    invoke-static {p6, p5}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p6, "backup anr record fail!"

    invoke-static {p6, p5}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p3, p4}, Lcom/tencent/bugly/proguard/ha;->a(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    iget-object v5, p2, Lcom/tencent/bugly/crashreport/crash/anr/a;->g:Ljava/lang/String;

    const-string v1, "ANR"

    const-string v4, "main"

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/crash/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->h:Lcom/tencent/bugly/crashreport/crash/j;

    invoke-virtual {p2, p1}, Lcom/tencent/bugly/crashreport/crash/j;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->h:Lcom/tencent/bugly/crashreport/crash/j;

    const-wide/16 p3, 0xbb8

    const/4 p5, 0x1

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/tencent/bugly/crashreport/crash/j;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V

    :cond_2
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->h:Lcom/tencent/bugly/crashreport/crash/j;

    invoke-virtual {p2, p1}, Lcom/tencent/bugly/crashreport/crash/j;->e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    return-void
.end method

.method private a(J)Z
    .locals 6

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->o:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x2710

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "should not process ANR too Fre in %dms"

    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return p1

    :cond_0
    iput-wide p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->o:J

    return v2
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized b()Lcom/tencent/bugly/crashreport/crash/anr/g;
    .locals 2

    const-class v0, Lcom/tencent/bugly/crashreport/crash/anr/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/anr/g;->a:Lcom/tencent/bugly/crashreport/crash/anr/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic b(Lcom/tencent/bugly/crashreport/crash/anr/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->i()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "manual_bugly_trace_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic c(Lcom/tencent/bugly/crashreport/crash/anr/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->d(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "read trace first dump for create time!"

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p1, v2}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v1

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_1

    iget-wide v5, v1, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    const-string v1, "trace dump fail could not get time!"

    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(J)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v5, v6, p1}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "handle anr error %s"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private declared-synchronized c(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->l:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "user change anr %b"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic d(Lcom/tencent/bugly/crashreport/crash/anr/g;)Lcom/tencent/bugly/crashreport/common/info/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    return-object p0
.end method

.method private d(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "tryChangeAnrState to %s, success:%s"

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method private i()V
    .locals 5

    sget-wide v0, Lcom/tencent/bugly/crashreport/crash/m;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Lcom/tencent/bugly/proguard/ha;->b()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    const-string v1, "bugly_trace_"

    const-string v4, ".txt"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/tencent/bugly/proguard/ca;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    const-string v1, "manual_bugly_trace_"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/tencent/bugly/proguard/ca;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    const-string v1, "main_stack_record_"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/tencent/bugly/proguard/ca;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    const-string v4, ".txt.merged"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/tencent/bugly/proguard/ca;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/tencent/bugly/proguard/ja;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ja;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->H()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/ja;->a(Z)V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Bugly-ThreadMonitor"

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->n:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ja;->c()Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "start when started!"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->j()V

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/anr/g$c;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/bugly/crashreport/crash/anr/g$c;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/g;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->k:Landroid/os/FileObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "startWatchingPrivateAnrDir! dumFilePath is %s"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x1

    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->j:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->f:Lcom/tencent/bugly/proguard/Z;

    new-instance v2, Lcom/tencent/bugly/crashreport/crash/anr/g$d;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/crashreport/crash/anr/g$d;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/g;)V

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/Z;->a(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->k:Landroid/os/FileObserver;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startWatchingPrivateAnrDir failed!"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ja;->d()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->m:Lcom/tencent/bugly/proguard/ja;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized m()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "close when closed!"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->l()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "stopWatchingPrivateAnrDir"

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->k:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->k:Landroid/os/FileObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "close anr monitor!"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "stop anr monitor failed!"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/crashreport/crash/anr/a;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 4

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->j()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->x()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->y()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->z()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->g()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->n()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->f()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:J

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/d;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->c:Landroid/content/Context;

    sget v2, Lcom/tencent/bugly/crashreport/crash/m;->e:I

    sget-object v3, Lcom/tencent/bugly/crashreport/crash/m;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/ha;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->A()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "ANR_EXCEPTION"

    :try_start_1
    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "BUGLY_CR_01"

    :try_start_2
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "\n"

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-lez v1, :cond_2

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    const-string v1, "GET_FAIL"

    :goto_0
    :try_start_4
    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iget-wide v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->c:J

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ha;->c([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    :cond_3
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->b:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "main(1)"

    :try_start_5
    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->q()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->p()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iget-object p1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object p1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->N:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->e:J

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:J

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->E()Z

    move-result p1

    iput-boolean p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Z

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/d;->f(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->h:Lcom/tencent/bugly/crashreport/crash/j;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/crash/j;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    :cond_4
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->C()I

    move-result p1

    iput p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:I

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->v()I

    move-result p1

    iput p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:I

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/util/Map;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->e:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/bugly/proguard/ga;->b()[B

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public declared-synchronized a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 1

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "customer decides whether to open or close."

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->g()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->k()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "anr is processing, return"

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->d:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/anr/h;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "proc is not in anr, wait next check"

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->d(Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x1

    invoke-static {p3, p1, v0}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p1, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    const-string v3, "main"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v4, "\n\n"

    const-string v5, "\n"

    const-string v6, " :\n"

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_1

    array-length v9, v2

    if-lt v9, v7, :cond_1

    const-string v9, "\"main\" tid="

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v8

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v1

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p1, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    array-length v9, v9

    if-lt v9, v7, :cond_2

    const-string v9, "\""

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" tid="

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    invoke-static {p2, p1, p3}, Lcom/tencent/bugly/proguard/ca;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p3, p1, v1

    const-string p2, "not found trace dump for %s"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1
.end method

.method public b(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/g;->c(Z)V

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->e()Z

    move-result p1

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->c()Z

    move-result v0

    if-eq p1, v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "anr changed to %b"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(Z)V

    :cond_2
    return-void
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->k:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "start when started!"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/anr/g$a;

    const-string v2, "/data/anr/"

    const/16 v3, 0x8

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/bugly/crashreport/crash/anr/g$a;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/g;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->k:Landroid/os/FileObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "start anr monitor!"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->f:Lcom/tencent/bugly/proguard/Z;

    new-instance v2, Lcom/tencent/bugly/crashreport/crash/anr/g$b;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/crashreport/crash/anr/g$b;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/g;)V

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/Z;->a(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->k:Landroid/os/FileObserver;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "start anr monitor failed!"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "close when closed!"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->k:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g;->k:Landroid/os/FileObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "close anr monitor!"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "stop anr monitor failed!"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    const-string v1, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/ha;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
