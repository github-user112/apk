package com.tencent.tinker.lib.tinker;

/* loaded from: classes.dex */
public class TinkerLoadResult {
    public static final java.lang.String TAG = "Tinker.TinkerLoadResult";
    public long costTime;
    public java.lang.String currentVersion;
    public java.io.File dexDirectory;
    public java.util.HashMap<java.lang.String, java.lang.String> dexes;
    public java.io.File libraryDirectory;
    public java.util.HashMap<java.lang.String, java.lang.String> libs;
    public int loadCode;
    public java.lang.String oatDir;
    public java.util.HashMap<java.lang.String, java.lang.String> packageConfig;
    public com.tencent.tinker.loader.shareutil.SharePatchInfo patchInfo;
    public java.io.File patchVersionDirectory;
    public java.io.File patchVersionFile;
    public java.io.File resourceDirectory;
    public java.io.File resourceFile;
    public boolean systemOTA;
    public boolean useInterpretMode;
    public boolean versionChanged;

    public java.lang.String getPackageConfigByName(java.lang.String str) {
        java.util.HashMap<java.lang.String, java.lang.String> map = this.packageConfig;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean parseTinkerResult(android.content.Context context, android.content.Intent intent) {
        java.io.File file;
        java.io.File file2;
        java.lang.String str;
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter;
        java.io.File file3;
        int i;
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter2;
        java.io.File file4;
        int i2;
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        this.loadCode = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentReturnCode(intent);
        this.costTime = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentPatchCostTime(intent);
        this.systemOTA = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getBooleanExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_SYSTEM_OTA, false);
        java.lang.String stringExtra = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_OAT_DIR);
        this.oatDir = stringExtra;
        this.useInterpretMode = "interpet".equals(stringExtra);
        boolean zIsMainProcess = tinkerWith.isMainProcess();
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "parseTinkerResult loadCode:%d, process name:%s, main process:%b, systemOTA:%b, fingerPrint:%s, oatDir:%s, useInterpretMode:%b", java.lang.Integer.valueOf(this.loadCode), com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getProcessName(context), java.lang.Boolean.valueOf(zIsMainProcess), java.lang.Boolean.valueOf(this.systemOTA), android.os.Build.FINGERPRINT, this.oatDir, java.lang.Boolean.valueOf(this.useInterpretMode));
        java.lang.String stringExtra2 = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_OLD_VERSION);
        java.lang.String stringExtra3 = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_NEW_VERSION);
        java.io.File patchDirectory = tinkerWith.getPatchDirectory();
        java.io.File patchInfoFile = tinkerWith.getPatchInfoFile();
        if (stringExtra2 == null || stringExtra3 == null) {
            file = patchInfoFile;
            file2 = patchDirectory;
            str = stringExtra3;
        } else {
            if (zIsMainProcess) {
                this.currentVersion = stringExtra3;
            } else {
                this.currentVersion = stringExtra2;
            }
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "parseTinkerResult oldVersion:%s, newVersion:%s, current:%s", stringExtra2, stringExtra3, this.currentVersion);
            java.lang.String patchVersionDirectory = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(this.currentVersion);
            if (!com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNullOrNil(patchVersionDirectory)) {
                this.patchVersionDirectory = new java.io.File(patchDirectory.getAbsolutePath() + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + patchVersionDirectory);
                this.patchVersionFile = new java.io.File(this.patchVersionDirectory.getAbsolutePath(), com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionFile(this.currentVersion));
                this.dexDirectory = new java.io.File(this.patchVersionDirectory, "dex");
                this.libraryDirectory = new java.io.File(this.patchVersionDirectory, "lib");
                this.resourceDirectory = new java.io.File(this.patchVersionDirectory, "res");
                this.resourceFile = new java.io.File(this.resourceDirectory, "resources.apk");
            }
            file = patchInfoFile;
            file2 = patchDirectory;
            this.patchInfo = new com.tencent.tinker.loader.shareutil.SharePatchInfo(stringExtra2, stringExtra3, com.tencent.tinker.loader.shareutil.ShareIntentUtil.getBooleanExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_IS_PROTECTED_APP, false), com.tencent.tinker.loader.shareutil.ShareIntentUtil.getBooleanExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_USE_CUSTOM_PATCH, false), "", android.os.Build.FINGERPRINT, this.oatDir, false);
            str = stringExtra3;
            this.versionChanged = !stringExtra2.equals(str);
        }
        java.lang.Throwable intentPatchException = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentPatchException(intent);
        if (intentPatchException != null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "Tinker load have exception loadCode:%d", java.lang.Integer.valueOf(this.loadCode));
            int i3 = this.loadCode;
            int i4 = -1;
            if (i3 == -25) {
                i4 = -4;
            } else if (i3 == -23) {
                i4 = -3;
            } else if (i3 != -20 && i3 == -14) {
                i4 = -2;
            }
            tinkerWith.getLoadReporter().onLoadException(intentPatchException, i4);
            return false;
        }
        int i5 = this.loadCode;
        if (i5 == -10000) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "can't get the right intent return code", new java.lang.Object[0]);
            throw new com.tencent.tinker.loader.TinkerRuntimeException("can't get the right intent return code");
        }
        if (i5 == -24) {
            java.io.File file5 = this.resourceFile;
            if (file5 == null) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "resource file md5 mismatch, but patch resource file not found!", new java.lang.Object[0]);
                throw new com.tencent.tinker.loader.TinkerRuntimeException("resource file md5 mismatch, but patch resource file not found!");
            }
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch resource file md5 is mismatch: %s", file5.getAbsolutePath());
            tinkerWith.getLoadReporter().onLoadFileMd5Mismatch(this.resourceFile, 6);
        } else if (i5 != -22) {
            if (i5 != -21) {
                switch (i5) {
                    case com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_PATCH_REWRITE_PATCH_INFO_FAIL /* -19 */:
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "rewrite patch info file corrupted", new java.lang.Object[0]);
                        tinkerWith.getLoadReporter().onLoadPatchInfoCorrupted(stringExtra2, str, file);
                        break;
                    case com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_PATCH_VERSION_LIB_FILE_NOT_EXIST /* -18 */:
                        java.lang.String stringExtra4 = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISSING_LIB_PATH);
                        if (stringExtra4 == null) {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch lib file not found, but path is null!!!!", new java.lang.Object[0]);
                            throw new com.tencent.tinker.loader.TinkerRuntimeException("patch lib file not found, but path is null!!!!");
                        }
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch lib file not found:%s", stringExtra4);
                        loadReporter2 = tinkerWith.getLoadReporter();
                        file4 = new java.io.File(stringExtra4);
                        i2 = 5;
                        loadReporter2.onLoadFileNotFound(file4, i2, false);
                        break;
                    case com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_PATCH_VERSION_LIB_DIRECTORY_NOT_EXIST /* -17 */:
                        if (this.patchVersionDirectory == null) {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch lib file directory not found, warning why the path is null!!!!", new java.lang.Object[0]);
                            throw new com.tencent.tinker.loader.TinkerRuntimeException("patch lib file directory not found, warning why the path is null!!!!");
                        }
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch lib file directory not found:%s", this.libraryDirectory.getAbsolutePath());
                        loadReporter = tinkerWith.getLoadReporter();
                        file3 = this.libraryDirectory;
                        i = 5;
                        break;
                    case com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_PATCH_OTA_INTERPRET_ONLY_EXCEPTION /* -16 */:
                        tinkerWith.getLoadReporter().onLoadInterpret(2, com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentInterpretException(intent));
                        break;
                    case com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_PATCH_GET_OTA_INSTRUCTION_SET_EXCEPTION /* -15 */:
                        tinkerWith.getLoadReporter().onLoadInterpret(1, com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentInterpretException(intent));
                        break;
                    default:
                        switch (i5) {
                            case com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_PATCH_VERSION_DEX_MD5_MISMATCH /* -13 */:
                                java.lang.String stringExtra5 = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISMATCH_DEX_PATH);
                                if (stringExtra5 == null) {
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch dex file md5 is mismatch, but path is null!!!!", new java.lang.Object[0]);
                                    throw new com.tencent.tinker.loader.TinkerRuntimeException("patch dex file md5 is mismatch, but path is null!!!!");
                                }
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch dex file md5 is mismatch: %s", stringExtra5);
                                tinkerWith.getLoadReporter().onLoadFileMd5Mismatch(new java.io.File(stringExtra5), 3);
                                break;
                            case com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_PATCH_VERSION_DEX_CLASSLOADER_NULL /* -12 */:
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch dex load fail, classloader is null", new java.lang.Object[0]);
                                break;
                            case com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_PATCH_VERSION_DEX_OPT_FILE_NOT_EXIST /* -11 */:
                                java.lang.String stringExtra6 = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISSING_DEX_PATH);
                                if (stringExtra6 == null) {
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch dex opt file not found, but path is null!!!!", new java.lang.Object[0]);
                                    throw new com.tencent.tinker.loader.TinkerRuntimeException("patch dex opt file not found, but path is null!!!!");
                                }
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch dex opt file not found:%s", stringExtra6);
                                loadReporter2 = tinkerWith.getLoadReporter();
                                file4 = new java.io.File(stringExtra6);
                                i2 = 4;
                                loadReporter2.onLoadFileNotFound(file4, i2, false);
                                break;
                            case com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_PATCH_VERSION_DEX_FILE_NOT_EXIST /* -10 */:
                                java.lang.String stringExtra7 = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(intent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISSING_DEX_PATH);
                                if (stringExtra7 == null) {
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch dex file not found, but path is null!!!!", new java.lang.Object[0]);
                                    throw new com.tencent.tinker.loader.TinkerRuntimeException("patch dex file not found, but path is null!!!!");
                                }
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch dex file not found:%s", stringExtra7);
                                tinkerWith.getLoadReporter().onLoadFileNotFound(new java.io.File(stringExtra7), 3, false);
                                break;
                            case -9:
                                java.io.File file6 = this.dexDirectory;
                                if (file6 == null) {
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch dex file directory not found, warning why the path is null!!!!", new java.lang.Object[0]);
                                    throw new com.tencent.tinker.loader.TinkerRuntimeException("patch dex file directory not found, warning why the path is null!!!!");
                                }
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch dex file directory not found:%s", file6.getAbsolutePath());
                                tinkerWith.getLoadReporter().onLoadFileNotFound(this.dexDirectory, 3, true);
                                break;
                            case -8:
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch package check fail", new java.lang.Object[0]);
                                if (this.patchVersionFile == null) {
                                    throw new com.tencent.tinker.loader.TinkerRuntimeException("error patch package check fail , but file is null");
                                }
                                tinkerWith.getLoadReporter().onLoadPackageCheckFail(this.patchVersionFile, intent.getIntExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_PACKAGE_PATCH_CHECK, com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_GET_INTENT_FAIL));
                                break;
                            case -7:
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch version file not found, current version:%s", this.currentVersion);
                                if (this.patchVersionFile == null) {
                                    throw new com.tencent.tinker.loader.TinkerRuntimeException("error load patch version file not exist, but file is null");
                                }
                                tinkerWith.getLoadReporter().onLoadFileNotFound(this.patchVersionFile, 1, false);
                                break;
                            case -6:
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch version directory not found, current version:%s", this.currentVersion);
                                tinkerWith.getLoadReporter().onLoadFileNotFound(this.patchVersionDirectory, 1, true);
                                break;
                            case -5:
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "path info blank, wait main process to restart", new java.lang.Object[0]);
                                break;
                            case -4:
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "path info corrupted", new java.lang.Object[0]);
                                tinkerWith.getLoadReporter().onLoadPatchInfoCorrupted(stringExtra2, str, file);
                                break;
                            case -3:
                            case -2:
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "can't find patch file, is ok, just return", new java.lang.Object[0]);
                                break;
                            case -1:
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tinker is disable, just return", new java.lang.Object[0]);
                                break;
                            case 0:
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "oh yeah, tinker load all success", new java.lang.Object[0]);
                                tinkerWith.setTinkerLoaded(true);
                                this.dexes = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentPatchDexPaths(intent);
                                this.libs = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentPatchLibsPaths(intent);
                                this.packageConfig = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentPackageConfig(intent);
                                if (this.useInterpretMode) {
                                    tinkerWith.getLoadReporter().onLoadInterpret(0, null);
                                }
                                if (zIsMainProcess && this.versionChanged) {
                                    tinkerWith.getLoadReporter().onLoadPatchVersionChanged(stringExtra2, str, file2, this.patchVersionDirectory.getName());
                                }
                                return true;
                        }
                }
            } else {
                if (this.patchVersionDirectory == null) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch resource file directory not found, warning why the path is null!!!!", new java.lang.Object[0]);
                    throw new com.tencent.tinker.loader.TinkerRuntimeException("patch resource file directory not found, warning why the path is null!!!!");
                }
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch resource file directory not found:%s", this.resourceDirectory.getAbsolutePath());
                loadReporter = tinkerWith.getLoadReporter();
                file3 = this.resourceDirectory;
                i = 6;
            }
            loadReporter.onLoadFileNotFound(file3, i, true);
        } else {
            if (this.patchVersionDirectory == null) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch resource file not found, warning why the path is null!!!!", new java.lang.Object[0]);
                throw new com.tencent.tinker.loader.TinkerRuntimeException("patch resource file not found, warning why the path is null!!!!");
            }
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch resource file not found:%s", this.resourceFile.getAbsolutePath());
            tinkerWith.getLoadReporter().onLoadFileNotFound(this.resourceFile, 6, false);
        }
        return false;
    }
}
