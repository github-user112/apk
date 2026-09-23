.class public Lcom/tencent/tinker/lib/patch/UpgradePatch;
.super Lcom/tencent/tinker/lib/patch/AbstractPatch;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "Tinker.UpgradePatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/lib/patch/AbstractPatch;-><init>()V

    return-void
.end method


# virtual methods
.method public tryPatch(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/tinker/lib/service/PatchResult;)Z
    .locals 27

    move-object/from16 v7, p1

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerEnabled()Z

    move-result v0

    const-string v10, "Tinker.UpgradePatch"

    const/4 v11, 0x0

    if-eqz v0, :cond_16

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnableWithSharedPreferences(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch:patch file is not found, just return"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v11

    :cond_1
    new-instance v12, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;

    invoke-direct {v12, v7}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getTinkerFlags()I

    move-result v0

    invoke-static {v7, v0, v9, v12}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->checkTinkerPackage(Landroid/content/Context;ILjava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)I

    move-result v0

    if-eqz v0, :cond_2

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "UpgradePatch tryPatch:onPatchPackageCheckFail"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v1

    invoke-interface {v1, v9, v0}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;I)V

    return v11

    :cond_2
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch:patch md5 is null, just return"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v11

    :cond_3
    move-object/from16 v5, p4

    iput-object v6, v5, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v6, v1, v11

    const-string v2, "UpgradePatch tryPatch:patchMd5:%s"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v12}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getPackagePropertiesIfPresent()Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_4

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch packageProperties is null, do we process a valid patch apk ?"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v11

    :cond_4
    const-string v13, "is_protected_app"

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "0"

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x1

    const/16 v16, 0x1

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_0
    const-string v13, "use_custom_file_patch"

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    const/16 v22, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    const/16 v22, 0x0

    :goto_1
    invoke-static {v3, v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->readAndCheckPropertyWithLock(Ljava/io/File;Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    if-eqz v13, :cond_d

    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    if-eqz v13, :cond_d

    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    if-nez v13, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v11

    const-string v1, "UpgradePatch tryPatch:onPatchVersionCheckFail md5 %s is valid"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v0

    invoke-interface {v0, v9, v2, v6}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;)V

    return v11

    :cond_8
    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    const-string v14, "interpet"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-static {v14}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iget-object v15, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v6, v1, v11

    const-string v2, "patch already applied, md5: %s"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->getInstance(Landroid/content/Context;)Lcom/tencent/tinker/lib/util/UpgradePatchRetry;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->onPatchResetMaxCheck(Ljava/lang/String;)Z

    return v0

    :cond_9
    if-eqz v13, :cond_a

    const-string v13, "changing"

    goto :goto_2

    :cond_a
    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    :goto_2
    move-object/from16 v20, v13

    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iput-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z

    :cond_b
    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, ""

    goto :goto_3

    :cond_c
    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    :goto_3
    move-object/from16 v18, v13

    new-instance v23, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    sget-object v19, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v13, v23

    move-object v15, v6

    move/from16 v17, v22

    invoke-direct/range {v13 .. v21}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_d
    :goto_4
    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch:onPatchInfoCorrupted"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v0

    iget-object v1, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-interface {v0, v9, v1, v2}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_e
    new-instance v23, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    sget-object v19, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/16 v21, 0x0

    const-string v14, ""

    const-string v18, ""

    const-string v20, "odex"

    move-object/from16 v13, v23

    move-object v15, v6

    move/from16 v17, v22

    invoke-direct/range {v13 .. v21}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v14, "/"

    invoke-static {v1, v14, v2}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v15, v1, v11

    const-string v2, "UpgradePatch tryPatch:patchVersionDirectory:%s"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    invoke-static {v15, v14}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v9, v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    const-string v1, "UpgradePatch copy patch file, src file: %s size: %d, dest file: %s size:%d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v11

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x2

    aput-object v0, v14, v16

    const/4 v0, 0x3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v0

    invoke-static {v10, v1, v14}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    move-object v0, v8

    move-object v1, v12

    move-object v14, v2

    move-object/from16 v2, p1

    move-object/from16 v24, v3

    move-object v3, v15

    move-object/from16 v25, v4

    move-object v4, v14

    move/from16 v5, p3

    move-object/from16 v26, v6

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->tryRecoverDexFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v0

    if-nez v0, :cond_10

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch:new patch recover, try patch dex failed"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v11

    :cond_10
    invoke-static {v8, v12, v7, v15, v14}, Lcom/tencent/tinker/lib/patch/ArkHotDiffPatchInternal;->tryRecoverArkHotLibrary(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_11

    return v11

    :cond_11
    move-object v0, v8

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v4, v14

    move/from16 v5, v22

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/tinker/lib/patch/SoDiffPatchInternal;->tryRecoverLibraryFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v0

    if-nez v0, :cond_12

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch:new patch recover, try patch library failed"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v11

    :cond_12
    move-object v0, v8

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v4, v14

    move/from16 v5, v22

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/tinker/lib/patch/ResDiffPatchInternal;->tryRecoverResourceFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v0

    if-nez v0, :cond_13

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch:new patch recover, try patch resource failed"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v11

    :cond_13
    invoke-static {v9, v8}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->waitAndCheckDexOptFile(Ljava/io/File;Lcom/tencent/tinker/lib/tinker/Tinker;)Z

    move-result v0

    if-nez v0, :cond_14

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch:new patch recover, check dex opt file failed"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v11

    :cond_14
    move-object/from16 v1, v24

    move-object/from16 v0, v25

    invoke-static {v1, v13, v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_15

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch:new patch recover, rewrite patch info failed"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v0

    iget-object v1, v13, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iget-object v2, v13, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-interface {v0, v9, v1, v2}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->getInstance(Landroid/content/Context;)Lcom/tencent/tinker/lib/util/UpgradePatchRetry;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->onPatchResetMaxCheck(Ljava/lang/String;)Z

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch: done, it is ok"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-object v14, v2

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "UpgradePatch tryPatch:copy patch file fail from %s to %s"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v14, v2, v0}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    return v11

    :cond_16
    :goto_6
    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "UpgradePatch tryPatch:patch is disabled, just return"

    invoke-static {v10, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v11
.end method
