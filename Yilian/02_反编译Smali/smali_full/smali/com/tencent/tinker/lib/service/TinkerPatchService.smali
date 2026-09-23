.class public Lcom/tencent/tinker/lib/service/TinkerPatchService;
.super Landroid/app/IntentService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/lib/service/TinkerPatchService$InnerService;
    }
.end annotation


# static fields
.field public static final PATCH_PATH_EXTRA:Ljava/lang/String; = "patch_path_extra"

.field public static final PATCH_USE_EMERGENCY_MODE:Ljava/lang/String; = "patch_use_emergency_mode"

.field public static final RESULT_CLASS_EXTRA:Ljava/lang/String; = "patch_result_class"

.field public static final RUNNING_MARKER_FILE_RELPATH_PREFIX:Ljava/lang/String; = "patch_service_status/running_"

.field public static final TAG:Ljava/lang/String; = "Tinker.TinkerPatchService"

.field public static notificationId:I = -0x42bfb85d

.field public static resultServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tinker/lib/service/AbstractResultService;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsPatchApplying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static upgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->sIsPatchApplying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "TinkerPatchService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->notificationId:I

    return v0
.end method

.method public static doApplyPatch(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    sget-object v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->sIsPatchApplying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v3, "Tinker.TinkerPatchService"

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "TinkerPatchService doApplyPatch is running by another runner."

    invoke-static {v3, p1, p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->markRunning(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchServiceStart(Landroid/content/Intent;)V

    if-nez p1, :cond_1

    const-string p1, "TinkerPatchService received a null intent, ignoring."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {p0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->unmarkRunning(Landroid/content/Context;)V

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->getPatchPathExtra(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string p1, "TinkerPatchService can\'t get the path extra, ignoring."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->unmarkRunning(Landroid/content/Context;)V

    return-void

    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->getPatchUseEmergencyMode(Landroid/content/Intent;)Z

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x0

    new-instance v9, Lcom/tencent/tinker/lib/service/PatchResult;

    invoke-direct {v9}, Lcom/tencent/tinker/lib/service/PatchResult;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v10, Lcom/tencent/tinker/lib/service/TinkerPatchService;->upgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/tencent/tinker/lib/service/TinkerPatchService;->upgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    invoke-virtual {v10, p0, v4, v5, v9}, Lcom/tencent/tinker/lib/patch/AbstractPatch;->tryPatch(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v10

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v10, "upgradePatchProcessor is null."

    invoke-direct {v8, v10}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    :try_start_4
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v10

    invoke-interface {v10, v3, v8}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchException(Ljava/io/File;Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v6

    invoke-interface {v6, v3, v10, v11, v12}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchResult(Ljava/io/File;ZJ)V

    iput-boolean v10, v9, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    iput-object v4, v9, Lcom/tencent/tinker/lib/service/PatchResult;->rawPatchFilePath:Ljava/lang/String;

    iput-boolean v5, v9, Lcom/tencent/tinker/lib/service/PatchResult;->useEmergencyMode:Z

    iput-wide v11, v9, Lcom/tencent/tinker/lib/service/PatchResult;->totalCostTime:J

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getCustomPatcher()Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    iput v2, v9, Lcom/tencent/tinker/lib/service/PatchResult;->type:I

    iput-object v8, v9, Lcom/tencent/tinker/lib/service/PatchResult;->e:Ljava/lang/Throwable;

    invoke-static {p0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->unmarkRunning(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->sIsPatchApplying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->getPatchResultExtra(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v9, p1}, Lcom/tencent/tinker/lib/service/AbstractResultService;->runResultService(Landroid/content/Context;Lcom/tencent/tinker/lib/service/PatchResult;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {p0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->unmarkRunning(Landroid/content/Context;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {p0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->unmarkRunning(Landroid/content/Context;)V

    throw p1
.end method

.method public static getPatchPathExtra(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "patch_path_extra"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "getPatchPathExtra, but intent is null"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPatchResultExtra(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "patch_result_class"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "getPatchResultExtra, but intent is null"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPatchUseEmergencyMode(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "patch_use_emergency_mode"

    invoke-static {p0, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "getPatchUseEmergencyMode, but intent is null"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private increasingPriority()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "Tinker.TinkerPatchService"

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "for system version >= Android O, we just ignore increasingPriority job to avoid crash or toasts."

    invoke-static {v2, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "ZUK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "for ZUK device, we just ignore increasingPriority job to avoid crash."

    invoke-static {v2, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "try to increase patch process priority"

    invoke-static {v2, v3, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_2

    sget v3, Lcom/tencent/tinker/lib/service/TinkerPatchService;->notificationId:I

    invoke-virtual {p0, v3, v0}, Landroid/app/IntentService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    sget v3, Lcom/tencent/tinker/lib/service/TinkerPatchService;->notificationId:I

    invoke-virtual {p0, v3, v0}, Landroid/app/IntentService;->startForeground(ILandroid/app/Notification;)V

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/tencent/tinker/lib/service/TinkerPatchService$InnerService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to increase patch process priority error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static isRunning(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/tencent/tinker/lib/util/TinkerServiceInternals;->getTinkerPatchServiceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    return v0

    :cond_5
    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "patch_service_status/running_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_6
    :goto_1
    return v0
.end method

.method public static markRunning(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "patch_service_status/running_"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Tinker.TinkerPatchService"

    const-string v2, "Fail to create running marker file."

    invoke-static {v1, p0, v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static runPatchService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->runPatchService(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static runPatchService(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Tinker.TinkerPatchService"

    const-string v3, "run patch service..."

    invoke-static {v2, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tencent/tinker/lib/service/TinkerPatchService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "patch_path_extra"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "patch_use_emergency_mode"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p1, Lcom/tencent/tinker/lib/service/TinkerPatchService;->resultServiceClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "patch_result_class"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "run patch service fail, exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setPatchProcessor(Lcom/tencent/tinker/lib/patch/AbstractPatch;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tinker/lib/patch/AbstractPatch;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tinker/lib/service/AbstractResultService;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->upgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    sput-object p1, Lcom/tencent/tinker/lib/service/TinkerPatchService;->resultServiceClass:Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Tinker.TinkerPatchService"

    const-string v1, "patch processor class not found."

    invoke-static {v0, p0, v1, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setTinkerNotificationId(I)V
    .locals 0

    sput p0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->notificationId:I

    return-void
.end method

.method public static unmarkRunning(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "patch_service_status/running_"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->increasingPriority()V

    invoke-static {p0, p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->doApplyPatch(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
