.class public final Lcom/tencent/bugly/proguard/at;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field private static D:Lcom/tencent/bugly/proguard/at; = null

.field public static a:I = 0x0

.field public static b:Z = false

.field public static d:I = 0x2

.field public static e:Z = false

.field public static f:I = 0x5000

.field public static g:I = 0xbb8

.field public static h:I = 0x5000

.field public static i:J = 0xc800000L

.field public static j:J = 0x240c8400L

.field public static k:Ljava/lang/String; = null

.field public static l:Z = false

.field public static m:Ljava/lang/String; = null

.field public static n:I = 0x1388

.field public static o:Z = true

.field public static p:Z = false

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/Boolean;

.field public B:I

.field public C:Z

.field public final c:Landroid/content/Context;

.field public final s:Lcom/tencent/bugly/proguard/as;

.field public final t:Lcom/tencent/bugly/proguard/av;

.field public final u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field public final v:Lcom/tencent/bugly/proguard/ac;

.field public final w:Lcom/tencent/bugly/proguard/ak;

.field public final x:Lcom/tencent/bugly/proguard/ay;

.field public y:Lcom/tencent/bugly/BuglyStrategy$a;

.field public z:Lcom/tencent/bugly/proguard/aw;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ak;ZLcom/tencent/bugly/BuglyStrategy$a;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1f

    .line 5
    .line 6
    iput v0, p0, Lcom/tencent/bugly/proguard/at;->B:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/at;->C:Z

    .line 10
    .line 11
    const/16 v0, 0x3ec

    .line 12
    .line 13
    sput v0, Lcom/tencent/bugly/proguard/at;->a:I

    .line 14
    .line 15
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/tencent/bugly/proguard/at;->c:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iput-object v3, p0, Lcom/tencent/bugly/proguard/at;->v:Lcom/tencent/bugly/proguard/ac;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/tencent/bugly/proguard/at;->w:Lcom/tencent/bugly/proguard/ak;

    .line 28
    .line 29
    iput-object p4, p0, Lcom/tencent/bugly/proguard/at;->y:Lcom/tencent/bugly/BuglyStrategy$a;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->z:Lcom/tencent/bugly/proguard/aw;

    .line 33
    .line 34
    move-object v4, v3

    .line 35
    invoke-static {}, Lcom/tencent/bugly/proguard/ai;->a()Lcom/tencent/bugly/proguard/ai;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object v5, v4

    .line 40
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    new-instance v1, Lcom/tencent/bugly/proguard/as;

    .line 45
    .line 46
    move-object v6, p4

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/as;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ai;Lcom/tencent/bugly/proguard/w;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/BuglyStrategy$a;)V

    .line 48
    .line 49
    .line 50
    move-object v4, v5

    .line 51
    iput-object v1, p0, Lcom/tencent/bugly/proguard/at;->s:Lcom/tencent/bugly/proguard/as;

    .line 52
    .line 53
    move-object v3, v1

    .line 54
    move-object v1, v2

    .line 55
    invoke-static {v1}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance p1, Lcom/tencent/bugly/proguard/av;

    .line 60
    .line 61
    invoke-direct {p1, v1, v3, v4, v2}, Lcom/tencent/bugly/proguard/av;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/as;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/aa;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    move-object v5, p2

    .line 68
    move v6, p3

    .line 69
    invoke-static/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/as;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/ak;ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    move-object p2, v2

    .line 74
    move-object v2, v1

    .line 75
    move-object v1, v3

    .line 76
    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 77
    .line 78
    iput-object p1, p2, Lcom/tencent/bugly/proguard/aa;->N:Lcom/tencent/bugly/proguard/q;

    .line 79
    .line 80
    sget-object p1, Lcom/tencent/bugly/proguard/ay;->f:Lcom/tencent/bugly/proguard/ay;

    .line 81
    .line 82
    if-nez p1, :cond_0

    .line 83
    .line 84
    move-object v3, v1

    .line 85
    new-instance v1, Lcom/tencent/bugly/proguard/ay;

    .line 86
    .line 87
    move-object v6, v3

    .line 88
    move-object v3, v4

    .line 89
    move-object v4, p2

    .line 90
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/ay;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/ak;Lcom/tencent/bugly/proguard/as;)V

    .line 91
    .line 92
    .line 93
    sput-object v1, Lcom/tencent/bugly/proguard/ay;->f:Lcom/tencent/bugly/proguard/ay;

    .line 94
    .line 95
    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/ay;->f:Lcom/tencent/bugly/proguard/ay;

    .line 96
    .line 97
    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    .line 98
    .line 99
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/at;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/at;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy$a;)Lcom/tencent/bugly/proguard/at;
    .locals 3

    const-class v0, Lcom/tencent/bugly/proguard/at;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/tencent/bugly/proguard/at;

    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/tencent/bugly/proguard/at;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ak;ZLcom/tencent/bugly/BuglyStrategy$a;)V

    sput-object v1, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/at;)Lcom/tencent/bugly/proguard/av;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/bugly/proguard/at;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/at;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 9
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/j0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/tencent/bugly/proguard/j0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->s:Lcom/tencent/bugly/proguard/as;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/as;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    return-void
.end method

.method public final declared-synchronized a(ZZZ)V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/av;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/at;->e()V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/at;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/av;->b()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/at;->d()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/at;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/tencent/bugly/proguard/i0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2}, Lcom/tencent/bugly/proguard/i0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ay;->b(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/tencent/bugly/proguard/i0;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2}, Lcom/tencent/bugly/proguard/i0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ay;->b(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final declared-synchronized h()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    const/16 v3, 0x1e

    .line 7
    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    .line 10
    :try_start_0
    const-string v1, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x1

    .line 17
    new-array v4, v4, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object v3, v4, v0

    .line 20
    .line 21
    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const-wide/16 v3, 0x1388

    .line 25
    .line 26
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/ap;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    move v1, v2

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    :goto_1
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    throw v0

    .line 48
    :cond_1
    monitor-exit p0

    .line 49
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/tencent/bugly/proguard/ay;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/bugly/proguard/at;->B:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/bugly/proguard/at;->B:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method
