.class public final Lcom/tencent/bugly/proguard/k0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Thread;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/bugly/proguard/k0;->a:Ljava/lang/Thread;

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/bugly/proguard/k0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/tencent/bugly/proguard/k0;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/tencent/bugly/proguard/k0;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/tencent/bugly/proguard/k0;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/tencent/bugly/proguard/k0;->f:Ljava/util/Map;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/au;->a()Lcom/tencent/bugly/proguard/au;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "[ExtraCrashManager] Extra crash manager has not been initialized."

    .line 9
    .line 10
    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/au;->a()Lcom/tencent/bugly/proguard/au;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/tencent/bugly/proguard/k0;->a:Ljava/lang/Thread;

    .line 23
    .line 24
    iget v4, p0, Lcom/tencent/bugly/proguard/k0;->b:I

    .line 25
    .line 26
    iget-object v5, p0, Lcom/tencent/bugly/proguard/k0;->c:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v6, p0, Lcom/tencent/bugly/proguard/k0;->d:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v7, p0, Lcom/tencent/bugly/proguard/k0;->e:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v8, p0, Lcom/tencent/bugly/proguard/k0;->f:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static/range {v2 .. v8}, Lcom/tencent/bugly/proguard/au;->a(Lcom/tencent/bugly/proguard/au;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_0
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->b(Ljava/lang/Throwable;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/tencent/bugly/proguard/k0;->c:Ljava/lang/String;

    .line 51
    .line 52
    aput-object v2, v0, v1

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    iget-object v2, p0, Lcom/tencent/bugly/proguard/k0;->d:Ljava/lang/String;

    .line 56
    .line 57
    aput-object v2, v0, v1

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    iget-object v2, p0, Lcom/tencent/bugly/proguard/k0;->e:Ljava/lang/String;

    .line 61
    .line 62
    aput-object v2, v0, v1

    .line 63
    .line 64
    const-string v1, "[ExtraCrashManager] Crash error %s %s %s"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method
