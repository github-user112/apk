.class public final Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/TinkerResourcePatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceInsuranceHandlerCallback"
.end annotation


# static fields
.field public static final LAUNCH_ACTIVITY_LIFECYCLE_ITEM_CLASSNAME:Ljava/lang/String; = "android.app.servertransaction.LaunchActivityItem"


# instance fields
.field public final EXECUTE_TRANSACTION:I

.field public final LAUNCH_ACTIVITY:I

.field public final RELAUNCH_ACTIVITY:I

.field public final mContext:Landroid/content/Context;

.field public mGetCallbacksMethod:Ljava/lang/reflect/Method;

.field public final mOriginalCallback:Landroid/os/Handler$Callback;

.field public final mPatchResApkPath:Ljava/lang/String;

.field public mSkipInterceptExecuteTransaction:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler$Callback;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Handler$Callback;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mGetCallbacksMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mSkipInterceptExecuteTransaction:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mPatchResApkPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mOriginalCallback:Landroid/os/Handler$Callback;

    const/16 p1, 0x64

    const-string p2, "LAUNCH_ACTIVITY"

    invoke-direct {p0, p4, p2, p1}, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->fetchMessageId(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->LAUNCH_ACTIVITY:I

    const/16 p1, 0x7e

    const-string p2, "RELAUNCH_ACTIVITY"

    invoke-direct {p0, p4, p2, p1}, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->fetchMessageId(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->RELAUNCH_ACTIVITY:I

    const/16 p1, 0x1c

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9f

    const-string p2, "EXECUTE_TRANSACTION "

    invoke-direct {p0, p4, p2, p1}, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->fetchMessageId(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->EXECUTE_TRANSACTION:I

    return-void
.end method

.method private fetchMessageId(Ljava/lang/Class;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return p3
.end method

.method private hackMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mPatchResApkPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->access$000(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Tinker.ResourcePatcher"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    goto/16 :goto_3

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    iget v4, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->LAUNCH_ACTIVITY:I

    if-eq v0, v4, :cond_7

    iget v4, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->RELAUNCH_ACTIVITY:I

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->EXECUTE_TRANSACTION:I

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mSkipInterceptExecuteTransaction:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_4

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "transaction is null, skip rest insurance logic."

    invoke-static {v1, v0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mGetCallbacksMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    :try_start_0
    const-string v0, "getCallbacks"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {p1, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mGetCallbacksMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mGetCallbacksMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "fail to find getLifecycleStateRequest method, skip rest insurance logic."

    invoke-static {v1, v0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mSkipInterceptExecuteTransaction:Z

    goto :goto_0

    :cond_6
    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.servertransaction.LaunchActivityItem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    goto :goto_2

    :catchall_1
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "fail to call getLifecycleStateRequest method, skip rest insurance logic."

    invoke-static {v1, v0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_8

    :try_start_2
    iget-object p1, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mPatchResApkPath:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/tencent/tinker/loader/TinkerResourcePatcher;->monkeyPatchExistingResources(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "fail to ensure patched resources available after it\'s modified."

    invoke-static {v1, p1, v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    return v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->hackMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerResourcePatcher$ResourceInsuranceHandlerCallback;->mOriginalCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
