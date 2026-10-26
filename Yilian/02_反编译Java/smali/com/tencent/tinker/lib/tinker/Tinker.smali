.class public Lcom/tencent/tinker/lib/tinker/Tinker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Tinker.Tinker"

.field public static sInstalled:Z = false

.field public static sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;


# instance fields
.field public final context:Landroid/content/Context;

.field public final customPatcher:Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;

.field public final isMainProcess:Z

.field public final isPatchProcess:Z

.field public final listener:Lcom/tencent/tinker/lib/listener/PatchListener;

.field public final loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

.field public loaded:Z

.field public final patchDirectory:Ljava/io/File;

.field public final patchInfoFile:Ljava/io/File;

.field public final patchInfoLockFile:Ljava/io/File;

.field public final patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

.field public tinkerFlags:I

.field public tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

.field public final tinkerLoadVerifyFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;ZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loaded:Z

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->context:Landroid/content/Context;

    iput-object p5, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    iput-object p3, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    iput-object p4, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    iput p2, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    iput-object p6, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    iput-object p7, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchInfoFile:Ljava/io/File;

    iput-object p8, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchInfoLockFile:Ljava/io/File;

    iput-object p9, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->customPatcher:Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;

    iput-boolean p10, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->isMainProcess:Z

    iput-boolean p12, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadVerifyFlag:Z

    iput-boolean p11, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->isPatchProcess:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;ZZZLcom/tencent/tinker/lib/tinker/Tinker$1;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/tencent/tinker/lib/tinker/Tinker;-><init>(Landroid/content/Context;ILcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;ZZZ)V

    return-void
.end method

.method public static create(Lcom/tencent/tinker/lib/tinker/Tinker;)V
    .locals 1

    sget-object v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    if-nez v0, :cond_0

    sput-object p0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    return-void

    :cond_0
    new-instance p0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "Tinker instance is already set."

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isTinkerInstalled()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstalled:Z

    return v0
.end method

.method public static with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;
    .locals 2

    sget-boolean v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstalled:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/tencent/tinker/lib/tinker/Tinker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    invoke-direct {v1, p0}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->build()Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object p0

    sput-object p0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "you must install tinker before get tinker sInstance"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cleanPatch()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->cleanPatch(Landroid/content/Context;)V

    return-void
.end method

.method public cleanPatchByPatchApk(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatchByVersion(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cleanPatchByVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomPatcher()Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->customPatcher:Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;

    return-object v0
.end method

.method public getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    return-object v0
.end method

.method public getPatchDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getPatchInfoFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchInfoFile:Ljava/io/File;

    return-object v0
.end method

.method public getPatchInfoLockFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchInfoLockFile:Ljava/io/File;

    return-object v0
.end method

.method public getPatchListener()Lcom/tencent/tinker/lib/listener/PatchListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    return-object v0
.end method

.method public getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    return-object v0
.end method

.method public getTinkerFlags()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    return v0
.end method

.method public getTinkerLoadResultIfPresent()Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    return-object v0
.end method

.method public getTinkerRomSpace()J
    .locals 4

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getFileOrDirectorySize(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public install(Landroid/content/Intent;)V
    .locals 2

    const-class v0, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;

    new-instance v1, Lcom/tencent/tinker/lib/patch/UpgradePatch;

    invoke-direct {v1}, Lcom/tencent/tinker/lib/patch/UpgradePatch;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->install(Landroid/content/Intent;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;)V

    return-void
.end method

.method public install(Landroid/content/Intent;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tinker/lib/service/AbstractResultService;",
            ">;",
            "Lcom/tencent/tinker/lib/patch/AbstractPatch;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstalled:Z

    invoke-static {p3, p2}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->setPatchProcessor(Lcom/tencent/tinker/lib/patch/AbstractPatch;Ljava/lang/Class;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerEnabled()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, p2, v1

    const-string p3, "1.9.14.26.3"

    aput-object p3, p2, v0

    const-string p3, "Tinker.Tinker"

    const-string v0, "try to install tinker, isEnable: %b, version: %s"

    invoke-static {p3, v0, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "tinker is disabled"

    invoke-static {p3, p2, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    new-instance p2, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    invoke-direct {p2}, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;-><init>()V

    iput-object p2, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->parseTinkerResult(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    iget-object p2, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    iget v2, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    iget-wide v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->costTime:J

    invoke-interface {p1, p2, v2, v3, v4}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadResult(Ljava/io/File;IJ)V

    iget-boolean p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loaded:Z

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "tinker load fail!"

    invoke-static {p3, p2, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string p2, "intentResult must not be null."

    invoke-direct {p1, p2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEnabledForDex()Z
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForDex(I)Z

    move-result v0

    return v0
.end method

.method public isEnabledForNativeLib()Z
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForNativeLib(I)Z

    move-result v0

    return v0
.end method

.method public isEnabledForResource()Z
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForResource(I)Z

    move-result v0

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->isMainProcess:Z

    return v0
.end method

.method public isPatchProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->isPatchProcess:Z

    return v0
.end method

.method public isTinkerEnabled()Z
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isTinkerLoadVerify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadVerifyFlag:Z

    return v0
.end method

.method public isTinkerLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loaded:Z

    return v0
.end method

.method public rollbackPatch()V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Tinker.Tinker"

    const-string v2, "rollbackPatch: tinker is not loaded, just return"

    invoke-static {v1, v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->killAllOtherProcess(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public setPatchServiceNotificationId(I)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->setTinkerNotificationId(I)V

    return-void
.end method

.method public setTinkerDisable()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    return-void
.end method

.method public setTinkerLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loaded:Z

    return-void
.end method
