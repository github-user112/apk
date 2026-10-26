.class public Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "Tinker.TinkerLoadResult"


# instance fields
.field public costTime:J

.field public currentVersion:Ljava/lang/String;

.field public dexDirectory:Ljava/io/File;

.field public dexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public libraryDirectory:Ljava/io/File;

.field public libs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loadCode:I

.field public oatDir:Ljava/lang/String;

.field public packageConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

.field public patchVersionDirectory:Ljava/io/File;

.field public patchVersionFile:Ljava/io/File;

.field public resourceDirectory:Ljava/io/File;

.field public resourceFile:Ljava/io/File;

.field public systemOTA:Z

.field public useInterpretMode:Z

.field public versionChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageConfigByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->packageConfig:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public parseTinkerResult(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentReturnCode(Landroid/content/Intent;)I

    move-result v3

    iput v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchCostTime(Landroid/content/Intent;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->costTime:J

    const-string v3, "intent_patch_system_ota"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->systemOTA:Z

    const-string v3, "intent_patch_oat_dir"

    invoke-static {v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->oatDir:Ljava/lang/String;

    const-string v5, "interpet"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->useInterpretMode:Z

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->isMainProcess()Z

    move-result v3

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    iget-boolean v6, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->systemOTA:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v5, v9

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    iget-object v6, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->oatDir:Ljava/lang/String;

    const/4 v11, 0x5

    aput-object v6, v5, v11

    iget-boolean v6, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->useInterpretMode:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v12, 0x6

    aput-object v6, v5, v12

    const-string v6, "Tinker.TinkerLoadResult"

    const-string v13, "parseTinkerResult loadCode:%d, process name:%s, main process:%b, systemOTA:%b, fingerPrint:%s, oatDir:%s, useInterpretMode:%b"

    invoke-static {v6, v13, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "intent_patch_old_version"

    invoke-static {v1, v5}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "intent_patch_new_version"

    invoke-static {v1, v13}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchInfoFile()Ljava/io/File;

    move-result-object v13

    if-eqz v5, :cond_2

    if-eqz v15, :cond_2

    if-eqz v3, :cond_0

    iput-object v15, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v5, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    :goto_0
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v5, v12, v4

    aput-object v15, v12, v7

    iget-object v11, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    aput-object v11, v12, v8

    const-string v11, "parseTinkerResult oldVersion:%s, newVersion:%s, current:%s"

    invoke-static {v6, v11, v12}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v11, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v12, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v12, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v10, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v10, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    const-string v11, "dex"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->dexDirectory:Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v10, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    const-string v11, "lib"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libraryDirectory:Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v10, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    const-string v11, "res"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceDirectory:Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v10, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceDirectory:Ljava/io/File;

    const-string v11, "resources.apk"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    :cond_1
    const-string v8, "intent_is_protected_app"

    invoke-static {v1, v8, v4}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v16

    const-string v8, "intent_use_custom_patch"

    invoke-static {v1, v8, v4}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v17

    new-instance v8, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    sget-object v19, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v10, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->oatDir:Ljava/lang/String;

    const/16 v21, 0x0

    const-string v18, ""

    move-object v11, v13

    move-object v13, v8

    move-object v12, v14

    move-object v14, v5

    move-object/from16 v22, v15

    move-object/from16 v20, v10

    invoke-direct/range {v13 .. v21}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v8, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    move-object/from16 v8, v22

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v7

    iput-boolean v10, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->versionChanged:Z

    goto :goto_1

    :cond_2
    move-object v11, v13

    move-object v12, v14

    move-object v8, v15

    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchException(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_7

    new-array v1, v7, [Ljava/lang/Object;

    iget v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "Tinker load have exception loadCode:%d"

    invoke-static {v6, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    const/16 v3, -0x19

    const/4 v5, -0x1

    if-eq v1, v3, :cond_5

    const/16 v3, -0x17

    if-eq v1, v3, :cond_4

    const/16 v3, -0x14

    if-eq v1, v3, :cond_6

    const/16 v3, -0xe

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, -0x2

    goto :goto_2

    :cond_4
    const/4 v5, -0x3

    goto :goto_2

    :cond_5
    const/4 v5, -0x4

    :cond_6
    :goto_2
    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    invoke-interface {v1, v10, v5}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadException(Ljava/lang/Throwable;I)V

    return v4

    :cond_7
    iget v10, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    const/16 v13, -0x2710

    if-eq v10, v13, :cond_18

    const/16 v14, -0x18

    if-eq v10, v14, :cond_16

    const/16 v14, -0x16

    if-eq v10, v14, :cond_14

    const/16 v14, -0x15

    if-eq v10, v14, :cond_12

    packed-switch v10, :pswitch_data_0

    const-string v14, "intent_patch_missing_dex_path"

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_0
    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "oh yeah, tinker load all success"

    invoke-static {v6, v10, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lcom/tencent/tinker/lib/tinker/Tinker;->setTinkerLoaded(Z)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchDexPaths(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->dexes:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchLibsPaths(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libs:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPackageConfig(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->packageConfig:Ljava/util/HashMap;

    iget-boolean v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->useInterpretMode:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadInterpret(ILjava/lang/Throwable;)V

    :cond_8
    if-eqz v3, :cond_9

    iget-boolean v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->versionChanged:Z

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v8, v12, v2}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPatchVersionChanged(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    :cond_9
    return v7

    :pswitch_1
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "tinker is disable, just return"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "can\'t find patch file, is ok, just return"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_3
    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "path info corrupted"

    invoke-static {v6, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "path info blank, wait main process to restart"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    aput-object v3, v1, v4

    const-string v3, "patch version directory not found, current version:%s"

    invoke-static {v6, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    invoke-interface {v1, v2, v7, v7}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_6

    :pswitch_6
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    aput-object v3, v1, v4

    const-string v3, "patch version file not found, current version:%s"

    invoke-static {v6, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    invoke-interface {v1, v2, v7, v4}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_6

    :cond_a
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "error load patch version file not exist, but file is null"

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "patch package check fail"

    invoke-static {v6, v5, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    if-eqz v3, :cond_b

    const-string v3, "intent_patch_package_patch_check"

    invoke-virtual {v1, v3, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    invoke-interface {v2, v3, v1}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPackageCheckFail(Ljava/io/File;I)V

    goto/16 :goto_6

    :cond_b
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "error patch package check fail , but file is null"

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_8
    iget-object v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->dexDirectory:Ljava/io/File;

    if-eqz v1, :cond_c

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "patch dex file directory not found:%s"

    invoke-static {v6, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->dexDirectory:Ljava/io/File;

    invoke-interface {v1, v2, v9, v7}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_6

    :cond_c
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch dex file directory not found, warning why the path is null!!!!"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9
    invoke-static {v1, v14}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "patch dex file not found:%s"

    invoke-static {v6, v5, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v9, v4}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_6

    :cond_d
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch dex file not found, but path is null!!!!"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_a
    invoke-static {v1, v14}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "patch dex opt file not found:%s"

    invoke-static {v6, v5, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    goto/16 :goto_3

    :cond_e
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch dex opt file not found, but path is null!!!!"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_b
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch dex load fail, classloader is null"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_c
    const-string v3, "intent_patch_mismatch_dex_path"

    invoke-static {v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "patch dex file md5 is mismatch: %s"

    invoke-static {v6, v5, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v9}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileMd5Mismatch(Ljava/io/File;I)V

    goto/16 :goto_6

    :cond_f
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch dex file md5 is mismatch, but path is null!!!!"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_d
    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentInterpretException(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v2, v7, v1}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadInterpret(ILjava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_e
    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentInterpretException(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadInterpret(ILjava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_f
    iget-object v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    if-eqz v1, :cond_10

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libraryDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "patch lib file directory not found:%s"

    invoke-static {v6, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libraryDirectory:Ljava/io/File;

    const/4 v3, 0x5

    goto :goto_5

    :cond_10
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch lib file directory not found, warning why the path is null!!!!"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_10
    const-string v3, "intent_patch_missing_lib_path"

    invoke-static {v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "patch lib file not found:%s"

    invoke-static {v6, v5, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    :goto_3
    invoke-interface {v2, v3, v1, v4}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_6

    :cond_11
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch lib file not found, but path is null!!!!"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_11
    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "rewrite patch info file corrupted"

    invoke-static {v6, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    invoke-interface {v1, v5, v8, v11}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPatchInfoCorrupted(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_6

    :cond_12
    iget-object v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    if-eqz v1, :cond_13

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "patch resource file directory not found:%s"

    invoke-static {v6, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceDirectory:Ljava/io/File;

    const/4 v3, 0x6

    :goto_5
    invoke-interface {v1, v2, v3, v7}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto :goto_6

    :cond_13
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch resource file directory not found, warning why the path is null!!!!"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    iget-object v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    if-eqz v1, :cond_15

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "patch resource file not found:%s"

    invoke-static {v6, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3, v4}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto :goto_6

    :cond_15
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch resource file not found, warning why the path is null!!!!"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    iget-object v1, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    if-eqz v1, :cond_17

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "patch resource file md5 is mismatch: %s"

    invoke-static {v6, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileMd5Mismatch(Ljava/io/File;I)V

    :goto_6
    return v4

    :cond_17
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "resource file md5 mismatch, but patch resource file not found!"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "can\'t get the right intent return code"

    invoke-static {v6, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xd
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
