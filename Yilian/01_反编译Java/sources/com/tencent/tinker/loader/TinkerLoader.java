package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public class TinkerLoader extends com.tencent.tinker.loader.AbstractTinkerLoader {
    public static final java.lang.String TAG = "Tinker.TinkerLoader";
    public com.tencent.tinker.loader.shareutil.SharePatchInfo patchInfo;

    private boolean checkSafeModeCount(com.tencent.tinker.loader.app.TinkerApplication tinkerApplication) {
        int safeModeCount = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getSafeModeCount(tinkerApplication);
        if (safeModeCount >= 2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.setSafeModeCount(tinkerApplication, 0);
            return false;
        }
        tinkerApplication.setUseSafeMode(true);
        com.tencent.tinker.loader.shareutil.ShareTinkerInternals.setSafeModeCount(tinkerApplication, safeModeCount + 1);
        return true;
    }

    private void tryLoadPatchFilesInternal(com.tencent.tinker.loader.app.TinkerApplication tinkerApplication, android.content.Intent intent) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        int i;
        java.lang.String str;
        java.lang.String str2;
        boolean z;
        com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck;
        int i2;
        int i3;
        int tinkerFlags = tinkerApplication.getTinkerFlags();
        if (!com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabled(tinkerFlags)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles: tinker is disable, just return", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -1);
            return;
        }
        if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isInPatchProcess(tinkerApplication)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles: we don't load patch with :patch process itself, just return", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -1);
            return;
        }
        java.io.File patchDirectory = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(tinkerApplication);
        if (patchDirectory == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:getPatchDirectory == null", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -2);
            return;
        }
        java.lang.String absolutePath = patchDirectory.getAbsolutePath();
        if (!patchDirectory.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, e.a.c.a.a.e("tryLoadPatchFiles:patch dir not exist:", absolutePath), new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -2);
            return;
        }
        java.io.File patchInfoFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoFile(absolutePath);
        if (!patchInfoFile.exists()) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("tryLoadPatchFiles:patch info not exist:");
            sbO.append(patchInfoFile.getAbsolutePath());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, sbO.toString(), new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -3);
            return;
        }
        java.io.File patchInfoLockFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoLockFile(absolutePath);
        com.tencent.tinker.loader.shareutil.SharePatchInfo andCheckPropertyWithLock = com.tencent.tinker.loader.shareutil.SharePatchInfo.readAndCheckPropertyWithLock(patchInfoFile, patchInfoLockFile);
        this.patchInfo = andCheckPropertyWithLock;
        if (andCheckPropertyWithLock == null) {
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -4);
            return;
        }
        boolean z2 = andCheckPropertyWithLock.isProtectedApp;
        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_IS_PROTECTED_APP, z2);
        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_USE_CUSTOM_PATCH, this.patchInfo.useCustomPatch);
        com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo = this.patchInfo;
        java.lang.String str3 = sharePatchInfo.oldVersion;
        java.lang.String str4 = sharePatchInfo.newVersion;
        java.lang.String str5 = sharePatchInfo.oatDir;
        if (str3 == null || str4 == null || str5 == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:onPatchInfoCorrupted", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -4);
            return;
        }
        boolean zIsInMainProcess = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isInMainProcess(tinkerApplication);
        java.lang.String str6 = this.patchInfo.versionToRemove;
        if (zIsInMainProcess) {
            if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNullOrNil(str6)) {
                i = tinkerFlags;
            } else if (str4.equals(str6)) {
                i = tinkerFlags;
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "found new version clean patch mark and we are in main process, delete patch file now.", new java.lang.Object[0]);
                java.lang.String patchVersionDirectory = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(str4);
                if (patchVersionDirectory != null) {
                    boolean zEquals = str3.equals(str4);
                    if (zEquals) {
                        str3 = "";
                    }
                    com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo2 = this.patchInfo;
                    sharePatchInfo2.oldVersion = str3;
                    sharePatchInfo2.newVersion = str3;
                    sharePatchInfo2.versionToRemove = "";
                    com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, sharePatchInfo2, patchInfoLockFile);
                    java.lang.String str7 = absolutePath + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + patchVersionDirectory;
                    if (zEquals) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerInternals.killProcessExceptMain(tinkerApplication);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDirAsync(str7);
                        com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -2);
                        return;
                    }
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDirAsync(str7);
                    str4 = str3;
                }
            } else {
                i = tinkerFlags;
                if (str3.equals(str6)) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "found old version clean patch mark and we are in main process, delete patch file now.", new java.lang.Object[0]);
                    java.lang.String patchVersionDirectory2 = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(str3);
                    if (patchVersionDirectory2 != null) {
                        com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo3 = this.patchInfo;
                        sharePatchInfo3.oldVersion = str4;
                        sharePatchInfo3.newVersion = str4;
                        sharePatchInfo3.versionToRemove = "";
                        com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, sharePatchInfo3, patchInfoLockFile);
                        java.lang.String str8 = absolutePath + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + patchVersionDirectory2;
                        com.tencent.tinker.loader.shareutil.ShareTinkerInternals.killProcessExceptMain(tinkerApplication);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDirAsync(str8);
                        str3 = str4;
                    }
                } else {
                    com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo4 = this.patchInfo;
                    sharePatchInfo4.versionToRemove = "";
                    com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, sharePatchInfo4, patchInfoLockFile);
                }
            }
            if (this.patchInfo.isRemoveInterpretOATDir) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "tryLoadPatchFiles: isRemoveInterpretOATDir is true, try to delete interpret optimize files", new java.lang.Object[0]);
                com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo5 = this.patchInfo;
                sharePatchInfo5.isRemoveInterpretOATDir = false;
                com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, sharePatchInfo5, patchInfoLockFile);
                com.tencent.tinker.loader.shareutil.ShareTinkerInternals.killProcessExceptMain(tinkerApplication);
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDirAsync(e.a.c.a.a.f(absolutePath, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(str4)) + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "interpet");
            }
        } else {
            i = tinkerFlags;
        }
        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_OLD_VERSION, str3);
        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_NEW_VERSION, str4);
        boolean z3 = !str3.equals(str4);
        boolean zEquals2 = str5.equals(com.tencent.tinker.loader.shareutil.ShareConstants.CHANING_DEX_OPTIMIZE_PATH);
        java.lang.String currentOatMode = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getCurrentOatMode(tinkerApplication, str5);
        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_OAT_DIR, currentOatMode);
        if (z3 && zIsInMainProcess) {
            str3 = str4;
        }
        if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNullOrNil(str3)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:version is blank, wait main process to restart", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -5);
            return;
        }
        java.lang.String patchVersionDirectory3 = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(str3);
        if (patchVersionDirectory3 == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:patchName is null", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -6);
            return;
        }
        java.lang.String strF = e.a.c.a.a.f(absolutePath, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, patchVersionDirectory3);
        java.io.File file = new java.io.File(strF);
        if (!file.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:onPatchVersionDirectoryNotFound", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -6);
            return;
        }
        java.lang.String patchVersionFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionFile(str3);
        java.io.File file2 = patchVersionFile != null ? new java.io.File(file.getAbsolutePath(), patchVersionFile) : null;
        if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file2)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:onPatchVersionFileNotFound", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -7);
            return;
        }
        com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck2 = new com.tencent.tinker.loader.shareutil.ShareSecurityCheck(tinkerApplication);
        int i4 = i;
        int iCheckTinkerPackage = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.checkTinkerPackage(tinkerApplication, i4, file2, shareSecurityCheck2);
        if (iCheckTinkerPackage != 0) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:checkTinkerPackage", new java.lang.Object[0]);
            intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_PACKAGE_PATCH_CHECK, iCheckTinkerPackage);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -8);
            return;
        }
        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_PACKAGE_CONFIG, shareSecurityCheck2.getPackagePropertiesIfPresent());
        boolean zIsTinkerEnabledForDex = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForDex(i4);
        boolean zIsArkHotRuning = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isArkHotRuning();
        if (!zIsArkHotRuning && zIsTinkerEnabledForDex && !com.tencent.tinker.loader.TinkerDexLoader.checkComplete(strF, shareSecurityCheck2, currentOatMode, intent)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:dex check fail", new java.lang.Object[0]);
            return;
        }
        boolean zIsTinkerEnabledForArkHot = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForArkHot(i4);
        if (zIsArkHotRuning && zIsTinkerEnabledForArkHot && !com.tencent.tinker.loader.TinkerArkHotLoader.checkComplete(strF, shareSecurityCheck2, intent)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:dex check fail", new java.lang.Object[0]);
            return;
        }
        if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForNativeLib(i4) && !com.tencent.tinker.loader.TinkerSoLoader.checkComplete(strF, shareSecurityCheck2, intent)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:native lib check fail", new java.lang.Object[0]);
            return;
        }
        boolean zIsTinkerEnabledForResource = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForResource(i4);
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:isEnabledForResource:" + zIsTinkerEnabledForResource, new java.lang.Object[0]);
        if (zIsTinkerEnabledForResource && !com.tencent.tinker.loader.TinkerResourceLoader.checkComplete(tinkerApplication, strF, shareSecurityCheck2, intent)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:resource check fail", new java.lang.Object[0]);
            return;
        }
        boolean z4 = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isVmArt() && com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isSystemOTA(this.patchInfo.fingerPrint) && android.os.Build.VERSION.SDK_INT >= 21 && !com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isAfterAndroidO();
        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_SYSTEM_OTA, z4);
        if (zIsInMainProcess) {
            if (z3) {
                this.patchInfo.oldVersion = str3;
            }
            if (zEquals2) {
                com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo6 = this.patchInfo;
                sharePatchInfo6.oatDir = currentOatMode;
                sharePatchInfo6.isRemoveInterpretOATDir = true;
            }
        }
        if (!checkSafeModeCount(tinkerApplication)) {
            if (!zIsInMainProcess) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:checkSafeModeCount fail, but we are not in main process, mark the patch to be deleted and continue load patch.", new java.lang.Object[0]);
                com.tencent.tinker.loader.shareutil.ShareTinkerInternals.cleanPatch(tinkerApplication);
                return;
            }
            com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo7 = this.patchInfo;
            sharePatchInfo7.oldVersion = "";
            sharePatchInfo7.newVersion = "";
            sharePatchInfo7.versionToRemove = "";
            com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, sharePatchInfo7, patchInfoLockFile);
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.killProcessExceptMain(tinkerApplication);
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDirAsync(absolutePath + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + patchVersionDirectory3);
            intent.putExtra("intent_patch_exception", new com.tencent.tinker.loader.TinkerRuntimeException("checkSafeModeCount fail"));
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -25);
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:checkSafeModeCount fail, patch was deleted.", new java.lang.Object[0]);
            return;
        }
        if (zIsTinkerEnabledForResource && !com.tencent.tinker.loader.TinkerResourceLoader.loadTinkerResources(tinkerApplication, strF, intent)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:onPatchLoadResourcesFail", new java.lang.Object[0]);
            return;
        }
        if (zIsArkHotRuning || !zIsTinkerEnabledForDex) {
            str = strF;
            str2 = "tryLoadPatchFiles:onReWritePatchInfoCorrupted";
            z = zIsInMainProcess;
            shareSecurityCheck = shareSecurityCheck2;
        } else {
            str = strF;
            z = zIsInMainProcess;
            shareSecurityCheck = shareSecurityCheck2;
            boolean zLoadTinkerJars = com.tencent.tinker.loader.TinkerDexLoader.loadTinkerJars(tinkerApplication, strF, currentOatMode, intent, z4, z2);
            if (z4) {
                com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo8 = this.patchInfo;
                sharePatchInfo8.fingerPrint = android.os.Build.FINGERPRINT;
                sharePatchInfo8.oatDir = zLoadTinkerJars ? "interpet" : "odex";
                if (!com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, this.patchInfo, patchInfoLockFile)) {
                    com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -19);
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:onReWritePatchInfoCorrupted", new java.lang.Object[0]);
                    return;
                } else {
                    str2 = "tryLoadPatchFiles:onReWritePatchInfoCorrupted";
                    i3 = 0;
                    intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_OAT_DIR, this.patchInfo.oatDir);
                    zEquals2 = false;
                }
            } else {
                str2 = "tryLoadPatchFiles:onReWritePatchInfoCorrupted";
                i3 = 0;
            }
            if (!zLoadTinkerJars) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:onPatchLoadDexesFail", new java.lang.Object[i3]);
                return;
            }
        }
        if (zIsArkHotRuning && zIsTinkerEnabledForArkHot && !com.tencent.tinker.loader.TinkerArkHotLoader.loadTinkerArkHot(tinkerApplication, str, intent)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:onPatchLoadArkApkFail", new java.lang.Object[0]);
            return;
        }
        if ((zIsTinkerEnabledForDex || zIsTinkerEnabledForArkHot) && zIsTinkerEnabledForResource) {
            com.tencent.tinker.loader.hotplug.ComponentHotplug.install(tinkerApplication, shareSecurityCheck);
        }
        if (!com.tencent.tinker.loader.AppInfoChangedBlocker.tryStart(tinkerApplication)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tryLoadPatchFiles:AppInfoChangedBlocker install fail.", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -28);
            return;
        }
        if (!z || (!z3 && !zEquals2)) {
            i2 = 0;
        } else if (!com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, this.patchInfo, patchInfoLockFile)) {
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -19);
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, str2, new java.lang.Object[0]);
            return;
        } else {
            i2 = 0;
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.killProcessExceptMain(tinkerApplication);
        }
        com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, i2);
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "tryLoadPatchFiles: load end, ok!", new java.lang.Object[i2]);
    }

    @Override // com.tencent.tinker.loader.AbstractTinkerLoader
    public android.content.Intent tryLoad(com.tencent.tinker.loader.app.TinkerApplication tinkerApplication) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, "tryLoad test test", new java.lang.Object[0]);
        android.content.Intent intent = new android.content.Intent();
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        tryLoadPatchFilesInternal(tinkerApplication, intent);
        com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentPatchCostTime(intent, android.os.SystemClock.elapsedRealtime() - jElapsedRealtime);
        return intent;
    }
}
