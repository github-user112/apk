.class public Lcom/tencent/bugly/crashreport/crash/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/m;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/Thread;

.field public final synthetic c:Ljava/lang/Throwable;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:[B

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Lcom/tencent/bugly/crashreport/crash/m;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/crash/m;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->h:Lcom/tencent/bugly/crashreport/crash/m;

    iput-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->a:Z

    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->c:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->e:[B

    iput-boolean p7, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->f:Z

    iput-boolean p8, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "post a throwable %b"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->h:Lcom/tencent/bugly/crashreport/crash/m;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/m;->a(Lcom/tencent/bugly/crashreport/crash/m;)Lcom/tencent/bugly/crashreport/crash/q;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->b:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->c:Ljava/lang/Throwable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->e:[B

    iget-boolean v9, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->f:Z

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/bugly/crashreport/crash/q;->b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const-string v0, "clear user datas"

    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->h:Lcom/tencent/bugly/crashreport/crash/m;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/m;->b(Lcom/tencent/bugly/crashreport/crash/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/m$a;->c:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "java catch error: %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
