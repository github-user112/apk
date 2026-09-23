.class public Lcom/tencent/bugly/crashreport/crash/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/tencent/bugly/crashreport/crash/p;


# instance fields
.field public b:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field public c:Lcom/tencent/bugly/crashreport/common/info/a;

.field public d:Lcom/tencent/bugly/crashreport/crash/j;

.field public e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/m;->g()Lcom/tencent/bugly/crashreport/crash/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/p;->b:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/m;->r:Lcom/tencent/bugly/crashreport/crash/j;

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/p;->d:Lcom/tencent/bugly/crashreport/crash/j;

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p;->e:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/proguard/Z;->c()Lcom/tencent/bugly/proguard/Z;

    move-result-object p1

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/p$a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/crash/p$a;-><init>(Lcom/tencent/bugly/crashreport/crash/p;)V

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/Z;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a()Lcom/tencent/bugly/crashreport/crash/p;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/p;->a:Lcom/tencent/bugly/crashreport/crash/p;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/crash/p;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/p;->a:Lcom/tencent/bugly/crashreport/crash/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/p;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/crash/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/p;->a:Lcom/tencent/bugly/crashreport/crash/p;

    :cond_0
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/p;->a:Lcom/tencent/bugly/crashreport/crash/p;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/crashreport/crash/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/p;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/bugly/crashreport/crash/p;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/tencent/bugly/crashreport/crash/p;->b(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/Z;->c()Lcom/tencent/bugly/proguard/Z;

    move-result-object v0

    new-instance v8, Lcom/tencent/bugly/crashreport/crash/p$b;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/p$b;-><init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v8}, Lcom/tencent/bugly/proguard/Z;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[ExtraCrashManager] Trying to notify Bugly agents."

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "com.tencent.bugly.proguard.o"

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "com.tencent.bugly"

    :try_start_1
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "sdkPackageName"

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v1, v3, v2, v4}, Lcom/tencent/bugly/proguard/ha;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "[ExtraCrashManager] Bugly game agent has been notified."

    :try_start_3
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[ExtraCrashManager] no game agent"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    const-string v12, "[ExtraCrashManager] Successfully handled."

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v13, v1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v14, 0x0

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v14

    const-string v0, "[ExtraCrashManager] Unknown extra crash type: %d"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string v1, "H5"

    goto :goto_1

    :cond_2
    const-string v1, "Cocos"

    goto :goto_1

    :cond_3
    const-string v1, "Unity"

    :goto_1
    move-object v15, v1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v15, v1, v14

    const-string v6, "[ExtraCrashManager] %s Crash Happen"

    invoke-static {v6, v1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, v8, Lcom/tencent/bugly/crashreport/crash/p;->b:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    const-string v1, "[ExtraCrashManager] There is no remote strategy, but still store it."

    :try_start_1
    new-array v6, v14, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, v8, Lcom/tencent/bugly/crashreport/crash/p;->b:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    iget-boolean v6, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "\n"

    if-nez v6, :cond_5

    :try_start_2
    iget-object v6, v8, Lcom/tencent/bugly/crashreport/crash/p;->b:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v6}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_5

    const-string v0, "[ExtraCrashManager] Crash report was closed by remote. Will not upload to Bugly , print local for helpful!"

    :try_start_3
    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/ha;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 p1, v15

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lcom/tencent/bugly/crashreport/crash/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_5
    const-string v6, "[ExtraCrashManager] %s report is disabled."

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    goto :goto_2

    :cond_6
    :try_start_4
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    if-nez v1, :cond_8

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v15, v0, v14

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_7
    :try_start_5
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->k:Z

    if-nez v1, :cond_8

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v15, v0, v14

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_8
    :goto_2
    if-ne v0, v3, :cond_9

    const/4 v3, 0x5

    goto :goto_3

    :cond_9
    move v3, v0

    :goto_3
    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v0, v7

    move-object/from16 v7, p6

    :try_start_6
    invoke-direct/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/p;->c(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_a

    const-string v0, "[ExtraCrashManager] Failed to package crash data."

    :try_start_7
    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_a
    :try_start_8
    invoke-static {}, Lcom/tencent/bugly/proguard/ha;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p1, v15

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v0

    move-object/from16 p6, v1

    invoke-static/range {p1 .. p6}, Lcom/tencent/bugly/crashreport/crash/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    iget-object v0, v8, Lcom/tencent/bugly/crashreport/crash/p;->d:Lcom/tencent/bugly/crashreport/crash/j;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/j;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v8, Lcom/tencent/bugly/crashreport/crash/p;->d:Lcom/tencent/bugly/crashreport/crash/j;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/tencent/bugly/crashreport/crash/j;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_b
    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_c
    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_4
    return-void

    :catchall_1
    move-exception v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v12, v1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw v0
.end method

.method private c(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->j()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->x()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->y()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

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

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/p;->e:Landroid/content/Context;

    sget v2, Lcom/tencent/bugly/crashreport/crash/m;->e:I

    sget-object v3, Lcom/tencent/bugly/crashreport/crash/m;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/ha;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    iput p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, p2, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->A()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p2, p3}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-static {p2, p4}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    const-string p4, "\n"

    invoke-virtual {p5, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    array-length v1, p4

    if-lez v1, :cond_1

    aget-object p2, p4, p3

    goto :goto_0

    :cond_0
    move-object p5, p2

    :cond_1
    :goto_0
    iput-object p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object p5, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-object p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ha;->c([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->G()Z

    move-result p2

    sget p4, Lcom/tencent/bugly/crashreport/crash/m;->f:I

    invoke-static {p2, p4, p3}, Lcom/tencent/bugly/proguard/ha;->a(ZIZ)Ljava/util/Map;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object p2, p2, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    iput-object p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->q()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide p2, p1, Lcom/tencent/bugly/crashreport/common/info/a;->e:J

    iput-wide p2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:J

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->E()Z

    move-result p1

    iput-boolean p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Z

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/m;->g()Lcom/tencent/bugly/crashreport/crash/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/m;->f()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p;->d:Lcom/tencent/bugly/crashreport/crash/j;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/crash/j;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->C()I

    move-result p1

    iput p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:I

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->v()I

    move-result p1

    iput p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:I

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/util/Map;

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/bugly/proguard/ga;->b()[B

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    iget-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    :cond_3
    if-eqz p6, :cond_4

    iget-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    invoke-interface {p1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    return-object v0
.end method
