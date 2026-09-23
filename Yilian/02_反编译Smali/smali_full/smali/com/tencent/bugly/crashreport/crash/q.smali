.class public Lcom/tencent/bugly/crashreport/crash/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:Ljava/lang/Object;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lcom/tencent/bugly/crashreport/crash/j;

.field public final e:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field public final f:Lcom/tencent/bugly/crashreport/common/info/a;

.field public g:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public h:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public i:Z

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/q;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/j;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/crashreport/common/info/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->i:Z

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/q;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->d:Lcom/tencent/bugly/crashreport/crash/j;

    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/q;->e:Lcom/tencent/bugly/crashreport/common/strategy/c;

    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n[Message over limit size:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", has been cutted!]"

    invoke-static {v0, p1, p0}, Le/a/c/a/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/lang/Throwable;Z)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p2, v1}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "stack frame :%d, has cause %b"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v3, v3

    const-string v4, ""

    if-lez v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    move-object v6, p2

    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_4

    if-eq v6, p2, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_3

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    aget-object p2, p2, v5

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n......"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nCaused by:\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/tencent/bugly/crashreport/crash/m;->f:I

    invoke-static {v6, p3}, Lcom/tencent/bugly/crashreport/crash/q;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/m;->g()Lcom/tencent/bugly/crashreport/crash/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/m;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    new-array p3, v5, [Ljava/lang/Object;

    const-string v0, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    invoke-static {v0, p3}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p3, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    goto :goto_3

    :cond_5
    move-object p3, v4

    :goto_3
    invoke-static {v2, v4, p3}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    sget p3, Lcom/tencent/bugly/crashreport/crash/m;->f:I

    invoke-static {p2, p3}, Lcom/tencent/bugly/crashreport/crash/q;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    :goto_4
    iget-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ha;->c([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;ZLjava/lang/String;[B)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->d:Lcom/tencent/bugly/crashreport/crash/j;

    invoke-virtual {p2, p1}, Lcom/tencent/bugly/crashreport/crash/j;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p4, :cond_2

    array-length v2, p4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "UserData"

    :try_start_1
    invoke-interface {p2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v2, :cond_4

    iput-object p4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Y:[B

    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->C()I

    move-result p2

    iput p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:I

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->v()I

    move-result p2

    iput p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:I

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/util/Map;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "handle crash error %s"

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_4
    return-void
.end method

.method private a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;ZLjava/lang/Thread;Z)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->h()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->j()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->e()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->x()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->y()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->z()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->g()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->n()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/d;->f()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:J

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->c:Landroid/content/Context;

    sget v1, Lcom/tencent/bugly/crashreport/crash/m;->e:I

    sget-object v2, Lcom/tencent/bugly/crashreport/crash/m;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/ha;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/ga;->b()[B

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "user log size:%d"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    :goto_1
    iput p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->A()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    sget p2, Lcom/tencent/bugly/crashreport/crash/m;->f:I

    invoke-static {p4, p2, v2}, Lcom/tencent/bugly/proguard/ha;->a(ZIZ)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object p2, p2, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->q()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->p()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide p3, p2, Lcom/tencent/bugly/crashreport/common/info/a;->e:J

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:J

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->E()Z

    move-result p2

    iput-boolean p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Z

    return-void
.end method

.method private a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "uncaughtException"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private a(Ljava/lang/Thread;)Z
    .locals 3

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/q;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/q;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/crashreport/crash/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/bugly/crashreport/crash/q;->a:Ljava/lang/String;

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static b(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-lez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v5, p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "\n[Stack over limit size :"

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, " , has been cutted !]"

    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "\n"

    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "gen stack error %s"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "We can do nothing with a null throwable."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    invoke-direct {p0, v0, p3, p1, p6}, Lcom/tencent/bugly/crashreport/crash/q;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;ZLjava/lang/Thread;Z)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tencent/bugly/crashreport/crash/q;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/lang/Throwable;Z)V

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/tencent/bugly/crashreport/crash/q;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;ZLjava/lang/String;[B)V

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->j:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "java crash handler over %d, no need set."

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/q;->i:Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    const-class v1, Lcom/tencent/bugly/crashreport/crash/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.android.internal.os.RuntimeInit$UncaughtHandler"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "backup system java handler: %s"

    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    :goto_0
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_1

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "backup java handler: %s"

    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->j:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->j:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "registered java monitor: %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z

    iget-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/q;->i:Z

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "java changed to %b"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/q;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/q;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "current process die"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->i:Z

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "close java monitor!"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugly"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Java monitor to unregister: %s"

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/q;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "sys default last handle end!"

    const-string v6, "sys default last handle start!"

    const-string v7, "system handle end!"

    const-string v8, "system handle start!"

    const-string v9, "crashreport last handle end!"

    const-string v10, "crashreport last handle start!"

    const/4 v11, 0x0

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v0, v13

    const-string v12, "Java Crash Happen cause by %s(%d)"

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p1}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v11, [Ljava/lang/Object;

    const-string v12, "this class has handled this exception"

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    new-array v0, v11, [Ljava/lang/Object;

    const-string v12, "call system handler"

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-array v0, v11, [Ljava/lang/Object;

    const-string v12, "Java Catch Happen"

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    :try_start_0
    iget-boolean v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    const-string v0, "Java crash handler is disable. Just return."

    :try_start_1
    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_5

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    invoke-direct {v1, v0}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p2}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void

    :cond_6
    :try_start_2
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->e:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_7

    const-string v0, "no remote but still store!"

    :try_start_3
    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->e:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v12, "JAVA_CRASH"

    const-string v13, "JAVA_CATCH"

    if-nez v0, :cond_c

    :try_start_4
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->e:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_c

    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    :try_start_5
    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v0, v14}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v4, :cond_8

    move-object v15, v12

    goto :goto_2

    :cond_8
    move-object v15, v13

    :goto_2
    invoke-static {}, Lcom/tencent/bugly/proguard/ha;->a()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {p2 .. p2}, Lcom/tencent/bugly/proguard/ha;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v20}, Lcom/tencent/bugly/crashreport/crash/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_b

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_9

    invoke-direct {v1, v0}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_a

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p2}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    return-void

    :cond_c
    :try_start_6
    invoke-virtual/range {p0 .. p6}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_10

    const-string v0, "pkg crash datas fail!"

    :try_start_7
    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_f

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_d

    invoke-direct {v1, v0}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_e

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p2}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_f
    :goto_4
    return-void

    :cond_10
    if-eqz v4, :cond_11

    goto :goto_5

    :cond_11
    move-object v12, v13

    :goto_5
    :try_start_8
    invoke-static {}, Lcom/tencent/bugly/proguard/ha;->a()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v14, v14, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lcom/tencent/bugly/proguard/ha;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lcom/tencent/bugly/crashreport/crash/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/q;->d:Lcom/tencent/bugly/crashreport/crash/j;

    invoke-virtual {v12, v0}, Lcom/tencent/bugly/crashreport/crash/j;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result v12

    if-nez v12, :cond_12

    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/q;->d:Lcom/tencent/bugly/crashreport/crash/j;

    const-wide/16 v13, 0xbb8

    invoke-virtual {v12, v0, v13, v14, v4}, Lcom/tencent/bugly/crashreport/crash/j;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V

    :cond_12
    if-eqz v4, :cond_13

    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/q;->d:Lcom/tencent/bugly/crashreport/crash/j;

    invoke-virtual {v12, v0}, Lcom/tencent/bugly/crashreport/crash/j;->e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_13
    if-eqz v4, :cond_19

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_14

    invoke-direct {v1, v0}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_15

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p2}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v12

    if-nez v12, :cond_16

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_16
    if-eqz v4, :cond_19

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_17

    invoke-direct {v1, v0}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :cond_17
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_18

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :cond_18
    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p2}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_19
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    if-eqz v4, :cond_1d

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v4, :cond_1b

    invoke-direct {v1, v4}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_7

    :cond_1a
    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v6, v4}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/q;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v5, v2}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1b
    :goto_7
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v4, :cond_1c

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v8, v4}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/q;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v7, v2}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1c
    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v10, v4}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p2}, Lcom/tencent/bugly/crashreport/crash/q;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v9, v2}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1d
    :goto_8
    throw v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    sget-object v0, Lcom/tencent/bugly/crashreport/crash/q;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/q;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->G()Z

    move-result v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/bugly/crashreport/crash/q;->b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
