.class public Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/lib/tinker/Tinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public listener:Lcom/tencent/tinker/lib/listener/PatchListener;

.field public loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

.field public final mainProcess:Z

.field public patchDirectory:Ljava/io/File;

.field public patchInfoFile:Ljava/io/File;

.field public patchInfoLockFile:Ljava/io/File;

.field public final patchProcess:Z

.field public patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

.field public patcher:Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;

.field public status:I

.field public tinkerLoadVerifyFlag:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isInMainProcess(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->mainProcess:Z

    invoke-static {p1}, Lcom/tencent/tinker/lib/util/TinkerServiceInternals;->isInTinkerPatchServiceProcess(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchProcess:Z

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchDirectory:Ljava/io/File;

    const/4 v0, 0x0

    const-string v1, "Tinker.Tinker"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "patchDirectory is null!"

    invoke-static {v1, v0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchInfoFile:Ljava/io/File;

    iget-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchInfoLockFile:Ljava/io/File;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchDirectory:Ljava/io/File;

    aput-object v2, p1, v0

    const-string v0, "tinker patch directory: %s"

    invoke-static {v1, v0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/tencent/tinker/lib/tinker/Tinker;
    .locals 15

    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    iput v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    :cond_2
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/tinker/lib/listener/DefaultPatchListener;

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/listener/DefaultPatchListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    :cond_3
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    :cond_4
    new-instance v0, Lcom/tencent/tinker/lib/tinker/Tinker;

    iget-object v2, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    iget-object v4, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    iget-object v6, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    iget-object v7, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchDirectory:Ljava/io/File;

    iget-object v8, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchInfoFile:Ljava/io/File;

    iget-object v9, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchInfoLockFile:Ljava/io/File;

    iget-object v10, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patcher:Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;

    iget-boolean v11, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->mainProcess:Z

    iget-boolean v12, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchProcess:Z

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/tencent/tinker/lib/tinker/Tinker;-><init>(Landroid/content/Context;ILcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;ZZZLcom/tencent/tinker/lib/tinker/Tinker$1;)V

    return-object v0
.end method

.method public customPatcher(Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patcher:Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;

    return-object p0
.end method

.method public listener(Lcom/tencent/tinker/lib/listener/PatchListener;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "listener is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "listener must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadReport(Lcom/tencent/tinker/lib/reporter/LoadReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "loadReporter is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "loadReporter must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patchReporter(Lcom/tencent/tinker/lib/reporter/PatchReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "patchReporter is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "patchReporter must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tinkerFlags(I)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "tinkerFlag is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tinkerLoadVerifyFlag(Ljava/lang/Boolean;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "tinkerLoadVerifyFlag is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "tinkerLoadVerifyFlag must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
