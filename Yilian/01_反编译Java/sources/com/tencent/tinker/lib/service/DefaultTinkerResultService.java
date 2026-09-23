package com.tencent.tinker.lib.service;

/* loaded from: classes.dex */
public class DefaultTinkerResultService extends com.tencent.tinker.lib.service.AbstractResultService {
    public static final java.lang.String TAG = "Tinker.DefaultTinkerResultService";

    public boolean checkIfNeedKill(com.tencent.tinker.lib.service.PatchResult patchResult) {
        com.tencent.tinker.lib.tinker.TinkerLoadResult tinkerLoadResultIfPresent;
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(getApplicationContext());
        if (!tinkerWith.isTinkerLoaded() || (tinkerLoadResultIfPresent = tinkerWith.getTinkerLoadResultIfPresent()) == null) {
            return true;
        }
        java.lang.String str = tinkerLoadResultIfPresent.currentVersion;
        java.lang.String str2 = patchResult.patchVersion;
        return str2 == null || !str2.equals(str);
    }

    public void deleteRawPatchFile(java.io.File file) {
        if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "deleteRawPatchFile rawFile path: %s", file.getPath());
            java.lang.String name = file.getName();
            if (!name.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_BASE_NAME) || !name.endsWith(".apk")) {
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(file);
                return;
            }
            java.io.File parentFile = file.getParentFile();
            if (parentFile.getName().startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_BASE_NAME)) {
                java.io.File parentFile2 = parentFile.getParentFile();
                if (parentFile2.getName().equals(com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_DIRECTORY_NAME) || parentFile2.getName().equals(com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_DIRECTORY_NAME_SPEC)) {
                    return;
                }
            }
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(file);
        }
    }

    @Override // com.tencent.tinker.lib.service.AbstractResultService
    public void onPatchResult(com.tencent.tinker.lib.service.PatchResult patchResult) {
        if (patchResult == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "DefaultTinkerResultService received null result!!!!", new java.lang.Object[0]);
            return;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "DefaultTinkerResultService received a result:%s ", patchResult.toString());
        com.tencent.tinker.lib.util.TinkerServiceInternals.killTinkerPatchServiceProcess(getApplicationContext());
        if (patchResult.isSuccess) {
            deleteRawPatchFile(new java.io.File(patchResult.rawPatchFilePath));
            if (checkIfNeedKill(patchResult)) {
                android.os.Process.killProcess(android.os.Process.myPid());
            } else {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "I have already install the newly patch version!", new java.lang.Object[0]);
            }
        }
    }
}
