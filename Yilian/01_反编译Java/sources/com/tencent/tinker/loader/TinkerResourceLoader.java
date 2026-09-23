package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public class TinkerResourceLoader {
    public static final java.lang.String RESOURCE_FILE = "resources.apk";
    public static final java.lang.String RESOURCE_META_FILE = "assets/res_meta.txt";
    public static final java.lang.String RESOURCE_PATH = "res";
    public static final java.lang.String TAG = "Tinker.ResourceLoader";
    public static com.tencent.tinker.loader.shareutil.ShareResPatchInfo resPatchInfo = new com.tencent.tinker.loader.shareutil.ShareResPatchInfo();

    public static boolean checkComplete(android.content.Context context, java.lang.String str, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck, android.content.Intent intent) {
        java.lang.String str2 = shareSecurityCheck.getMetaContentMap().get("assets/res_meta.txt");
        if (str2 == null) {
            return true;
        }
        com.tencent.tinker.loader.shareutil.ShareResPatchInfo.parseResPatchInfoFirstLine(str2, resPatchInfo);
        com.tencent.tinker.loader.shareutil.ShareResPatchInfo shareResPatchInfo = resPatchInfo;
        if (shareResPatchInfo.resArscMd5 == null) {
            return true;
        }
        if (!com.tencent.tinker.loader.shareutil.ShareResPatchInfo.checkResPatchInfo(shareResPatchInfo)) {
            intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_PACKAGE_PATCH_CHECK, -8);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -8);
            return false;
        }
        java.lang.String strG = e.a.c.a.a.g(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, "res", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
        java.io.File file = new java.io.File(strG);
        if (!file.exists() || !file.isDirectory()) {
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -21);
            return false;
        }
        if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(new java.io.File(e.a.c.a.a.e(strG, "resources.apk")))) {
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -22);
            return false;
        }
        try {
            com.tencent.tinker.loader.TinkerResourcePatcher.isResourceCanPatch(context);
            return true;
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "resource hook check failed.", th);
            intent.putExtra("intent_patch_exception", th);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -23);
            return false;
        }
    }

    public static boolean loadTinkerResources(com.tencent.tinker.loader.app.TinkerApplication tinkerApplication, java.lang.String str, android.content.Intent intent) {
        int i;
        com.tencent.tinker.loader.shareutil.ShareResPatchInfo shareResPatchInfo = resPatchInfo;
        if (shareResPatchInfo == null || shareResPatchInfo.resArscMd5 == null) {
            return true;
        }
        java.lang.String str2 = str + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "res" + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "resources.apk";
        java.io.File file = new java.io.File(str2);
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        if (!tinkerApplication.isTinkerLoadVerifyFlag()) {
            try {
                com.tencent.tinker.loader.TinkerResourcePatcher.monkeyPatchExistingResources(tinkerApplication, str2, false);
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "monkeyPatchExistingResources resource file:" + str2 + ", use time: " + (java.lang.System.currentTimeMillis() - jCurrentTimeMillis), new java.lang.Object[0]);
                return true;
            } catch (java.lang.Throwable th) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "install resources failed", new java.lang.Object[0]);
                try {
                    com.tencent.tinker.loader.SystemClassLoaderAdder.uninstallPatchDex(tinkerApplication.getClassLoader());
                } catch (java.lang.Throwable unused) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "uninstallPatchDex failed", th);
                }
                intent.putExtra("intent_patch_exception", th);
                i = -23;
            }
        } else {
            if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkResourceArscMd5(file, resPatchInfo.resArscMd5)) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("verify resource file:");
                sbO.append(file.getPath());
                sbO.append(" md5, use time: ");
                sbO.append(java.lang.System.currentTimeMillis() - jCurrentTimeMillis);
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
                com.tencent.tinker.loader.TinkerResourcePatcher.monkeyPatchExistingResources(tinkerApplication, str2, false);
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "monkeyPatchExistingResources resource file:" + str2 + ", use time: " + (java.lang.System.currentTimeMillis() - jCurrentTimeMillis), new java.lang.Object[0]);
                return true;
            }
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Failed to load resource file, path: ");
            sbO2.append(file.getPath());
            sbO2.append(", expect md5: ");
            sbO2.append(resPatchInfo.resArscMd5);
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, sbO2.toString(), new java.lang.Object[0]);
            i = -24;
        }
        com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, i);
        return false;
    }
}
