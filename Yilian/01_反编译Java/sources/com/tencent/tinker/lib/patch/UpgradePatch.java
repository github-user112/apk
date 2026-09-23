package com.tencent.tinker.lib.patch;

/* loaded from: classes.dex */
public class UpgradePatch extends com.tencent.tinker.lib.patch.AbstractPatch {
    public static final java.lang.String TAG = "Tinker.UpgradePatch";

    @Override // com.tencent.tinker.lib.patch.AbstractPatch
    public boolean tryPatch(android.content.Context context, java.lang.String str, boolean z, com.tencent.tinker.lib.service.PatchResult patchResult) throws java.lang.Throwable {
        com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo;
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        java.io.File file = new java.io.File(str);
        if (!tinkerWith.isTinkerEnabled() || !com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnableWithSharedPreferences(context)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:patch is disabled, just return", new java.lang.Object[0]);
            return false;
        }
        if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:patch file is not found, just return", new java.lang.Object[0]);
            return false;
        }
        com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck = new com.tencent.tinker.loader.shareutil.ShareSecurityCheck(context);
        int iCheckTinkerPackage = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.checkTinkerPackage(context, tinkerWith.getTinkerFlags(), file, shareSecurityCheck);
        if (iCheckTinkerPackage != 0) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:onPatchPackageCheckFail", new java.lang.Object[0]);
            tinkerWith.getPatchReporter().onPatchPackageCheckFail(file, iCheckTinkerPackage);
            return false;
        }
        java.lang.String md5 = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(file);
        if (md5 == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:patch md5 is null, just return", new java.lang.Object[0]);
            return false;
        }
        patchResult.patchVersion = md5;
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "UpgradePatch tryPatch:patchMd5:%s", md5);
        java.lang.String absolutePath = tinkerWith.getPatchDirectory().getAbsolutePath();
        java.io.File patchInfoLockFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoLockFile(absolutePath);
        java.io.File patchInfoFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoFile(absolutePath);
        java.util.HashMap<java.lang.String, java.lang.String> packagePropertiesIfPresent = shareSecurityCheck.getPackagePropertiesIfPresent();
        if (packagePropertiesIfPresent == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch packageProperties is null, do we process a valid patch apk ?", new java.lang.Object[0]);
            return false;
        }
        java.lang.String str2 = packagePropertiesIfPresent.get("is_protected_app");
        boolean z2 = (str2 == null || str2.isEmpty() || "0".equals(str2)) ? false : true;
        java.lang.String str3 = packagePropertiesIfPresent.get("use_custom_file_patch");
        boolean z3 = (str3 == null || str3.isEmpty() || "0".equals(str3)) ? false : true;
        com.tencent.tinker.loader.shareutil.SharePatchInfo andCheckPropertyWithLock = com.tencent.tinker.loader.shareutil.SharePatchInfo.readAndCheckPropertyWithLock(patchInfoFile, patchInfoLockFile);
        if (andCheckPropertyWithLock == null) {
            sharePatchInfo = new com.tencent.tinker.loader.shareutil.SharePatchInfo("", md5, z2, z3, "", android.os.Build.FINGERPRINT, "odex", false);
        } else {
            if (andCheckPropertyWithLock.oldVersion == null || andCheckPropertyWithLock.newVersion == null || andCheckPropertyWithLock.oatDir == null) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:onPatchInfoCorrupted", new java.lang.Object[0]);
                tinkerWith.getPatchReporter().onPatchInfoCorrupted(file, andCheckPropertyWithLock.oldVersion, andCheckPropertyWithLock.newVersion);
                return false;
            }
            if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkIfMd5Valid(md5)) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:onPatchVersionCheckFail md5 %s is valid", md5);
                tinkerWith.getPatchReporter().onPatchVersionCheckFail(file, andCheckPropertyWithLock, md5);
                return false;
            }
            boolean zEquals = andCheckPropertyWithLock.oatDir.equals("interpet");
            if (!zEquals && !com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNullOrNil(andCheckPropertyWithLock.newVersion) && andCheckPropertyWithLock.newVersion.equals(md5) && !andCheckPropertyWithLock.newVersion.equals(andCheckPropertyWithLock.versionToRemove)) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch already applied, md5: %s", md5);
                com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(context).onPatchResetMaxCheck(md5);
                return true;
            }
            java.lang.String str4 = zEquals ? com.tencent.tinker.loader.shareutil.ShareConstants.CHANING_DEX_OPTIMIZE_PATH : andCheckPropertyWithLock.oatDir;
            if (!md5.equals(andCheckPropertyWithLock.newVersion) && !andCheckPropertyWithLock.newVersion.equals(andCheckPropertyWithLock.oldVersion)) {
                java.lang.String str5 = andCheckPropertyWithLock.newVersion;
                andCheckPropertyWithLock.newVersion = andCheckPropertyWithLock.oldVersion;
                com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, andCheckPropertyWithLock, patchInfoLockFile);
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(new java.io.File(absolutePath, com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(str5)));
            }
            sharePatchInfo = new com.tencent.tinker.loader.shareutil.SharePatchInfo(andCheckPropertyWithLock.oldVersion, md5, z2, z3, md5.equals(andCheckPropertyWithLock.versionToRemove) ? "" : andCheckPropertyWithLock.versionToRemove, android.os.Build.FINGERPRINT, str4, false);
        }
        java.lang.String strF = e.a.c.a.a.f(absolutePath, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(md5));
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "UpgradePatch tryPatch:patchVersionDirectory:%s", strF);
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(strF, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
        sbQ.append(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionFile(md5));
        java.io.File file2 = new java.io.File(sbQ.toString());
        try {
            if (!md5.equals(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(file2))) {
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.copyFileUsingStream(file, file2);
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "UpgradePatch copy patch file, src file: %s size: %d, dest file: %s size:%d", file.getAbsolutePath(), java.lang.Long.valueOf(file.length()), file2.getAbsolutePath(), java.lang.Long.valueOf(file2.length()));
            }
            if (!com.tencent.tinker.lib.patch.DexDiffPatchInternal.tryRecoverDexFiles(tinkerWith, shareSecurityCheck, context, strF, file2, z, patchResult)) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:new patch recover, try patch dex failed", new java.lang.Object[0]);
                return false;
            }
            if (!com.tencent.tinker.lib.patch.ArkHotDiffPatchInternal.tryRecoverArkHotLibrary(tinkerWith, shareSecurityCheck, context, strF, file2)) {
                return false;
            }
            if (!com.tencent.tinker.lib.patch.SoDiffPatchInternal.tryRecoverLibraryFiles(tinkerWith, shareSecurityCheck, context, strF, file2, z3, patchResult)) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:new patch recover, try patch library failed", new java.lang.Object[0]);
                return false;
            }
            if (!com.tencent.tinker.lib.patch.ResDiffPatchInternal.tryRecoverResourceFiles(tinkerWith, shareSecurityCheck, context, strF, file2, z3, patchResult)) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:new patch recover, try patch resource failed", new java.lang.Object[0]);
                return false;
            }
            if (!com.tencent.tinker.lib.patch.DexDiffPatchInternal.waitAndCheckDexOptFile(file, tinkerWith)) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:new patch recover, check dex opt file failed", new java.lang.Object[0]);
                return false;
            }
            if (com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, sharePatchInfo, patchInfoLockFile)) {
                com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(context).onPatchResetMaxCheck(md5);
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "UpgradePatch tryPatch: done, it is ok", new java.lang.Object[0]);
                return true;
            }
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:new patch recover, rewrite patch info failed", new java.lang.Object[0]);
            tinkerWith.getPatchReporter().onPatchInfoCorrupted(file, sharePatchInfo.oldVersion, sharePatchInfo.newVersion);
            return false;
        } catch (java.io.IOException unused) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "UpgradePatch tryPatch:copy patch file fail from %s to %s", file.getPath(), file2.getPath());
            tinkerWith.getPatchReporter().onPatchTypeExtractFail(file, file2, file.getName(), 1);
            return false;
        }
    }
}
