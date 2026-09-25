.class public final Lcom/baidu/carlifevehicle/logxfer/QrFallback;
.super Ljava/lang/Object;
.source "QrFallback.java"


# static fields
.field private static final CONNLOG:Ljava/lang/String; = "com.baidu.carlifevehicle.ConnLog"

.field private static final TAG:Ljava/lang/String; = "CarLifeNoBt"

.field private static sArmed:Z

.field private static sShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->sArmed:Z

    .line 30
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->sShown:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static ctx()Landroid/content/Context;
    .locals 6

    .line 83
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 85
    if-nez v2, :cond_0

    .line 86
    return-object v0

    .line 88
    :cond_0
    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 6

    .line 97
    :try_start_0
    const-string v0, "com.baidu.carlifevehicle.ConnLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-string v1, "logLine"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    const-string v0, "CarLifeNoBt"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void
.end method

.method public static onLinkUp()V
    .locals 2

    .line 64
    :try_start_0
    sget-boolean v0, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->sShown:Z

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->sShown:Z

    .line 68
    sput-boolean v0, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->sArmed:Z

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/carlifevehicle/logxfer/QrFallback$1;

    invoke-direct {v1}, Lcom/baidu/carlifevehicle/logxfer/QrFallback$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 79
    :goto_0
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 38
    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 42
    const-string p1, ""

    .line 44
    :cond_1
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    return-void

    .line 48
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->sArmed:Z

    .line 49
    sput-boolean v1, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->sShown:Z

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v2, "ssid"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v2, "pass"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[\u65e0\u84dd\u7259\u76f4\u8fde] \u4e8c\u7ef4\u7801\u5df2\u4e0a\u5c4f: \u8bf7\u7528\u624b\u673a\u76f8\u673a/\u5fae\u4fe1\u626b\u7801\u52a0\u5165 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[\u65e0\u84dd\u7259\u76f4\u8fde] \u4e8c\u7ef4\u7801\u4e0a\u5c4f\u5931\u8d25(\u4e0d\u5f71\u54cd\u624b\u52a8\u5165\u7ec4): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->log(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 39
    :cond_3
    :goto_1
    return-void
.end method
