.class public final Lcom/tencent/tinker/loader/AppInfoChangedBlocker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Tinker.AppInfoChangedBlocker"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchMHObject(Landroid/content/Context;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mH"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public static interceptHandler(Landroid/os/Handler;)V
    .locals 4

    const-class v0, Landroid/os/Handler;

    const-string v1, "mCallback"

    invoke-static {v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler$Callback;

    instance-of v2, v1, Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/tencent/tinker/loader/AppInfoChangedBlocker$HackerCallback;-><init>(Landroid/os/Handler$Callback;Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Tinker.AppInfoChangedBlocker"

    const-string v1, "Already intercepted, skip rest logic."

    invoke-static {v0, v1, p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static tryStart(Landroid/app/Application;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "Tinker.AppInfoChangedBlocker"

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_0

    const-string p0, "tryStart: SDK_INT is less than 26, skip rest logic."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v3, "tryStart called."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/tencent/tinker/loader/AppInfoChangedBlocker;->fetchMHObject(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tinker/loader/AppInfoChangedBlocker;->interceptHandler(Landroid/os/Handler;)V

    const-string p0, "tryStart done."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "AppInfoChangedBlocker start failed, simply ignore."

    invoke-static {v2, p0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
