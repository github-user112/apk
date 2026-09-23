package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public class TinkerArkHotLoader {
    public static final java.lang.String ARKHOT_PATH = "arkHot";
    public static final java.lang.String ARK_MEAT_FILE = "assets/arkHot_meta.txt";
    public static final java.lang.String TAG = "Tinker.TinkerArkHotLoader";
    public static java.util.HashSet<com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo> arkHotApkInfo = new java.util.HashSet<>();
    public static boolean isArkHotRuning = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isArkHotRuning();

    public static boolean checkComplete(java.lang.String str, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck, android.content.Intent intent) {
        int i;
        java.lang.String str2 = shareSecurityCheck.getMetaContentMap().get("assets/arkHot_meta.txt");
        if (str2 == null) {
            return true;
        }
        arkHotApkInfo.clear();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo.parseDiffPatchInfo(str2, arrayList);
        if (arrayList.isEmpty()) {
            return true;
        }
        java.util.HashMap map = new java.util.HashMap(1);
        java.util.Iterator it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo shareArkHotDiffPatchInfo = (com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo) it.next();
                if (!com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo.checkDiffPatchInfo(shareArkHotDiffPatchInfo)) {
                    intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_PACKAGE_PATCH_CHECK, -3);
                    i = -8;
                    break;
                }
                if (isArkHotRuning && "patch.apk".equals(shareArkHotDiffPatchInfo.name)) {
                    arkHotApkInfo.add(shareArkHotDiffPatchInfo);
                }
            } else {
                if (isArkHotRuning && !arkHotApkInfo.isEmpty()) {
                    map.put("patch.apk", "");
                }
                java.lang.String strG = e.a.c.a.a.g(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, "arkHot", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                java.io.File file = new java.io.File(strG);
                if (file.exists() && file.isDirectory()) {
                    java.util.Iterator it2 = map.keySet().iterator();
                    while (it2.hasNext()) {
                        java.io.File file2 = new java.io.File(e.a.c.a.a.e(strG, (java.lang.String) it2.next()));
                        if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file2)) {
                            try {
                                intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISSING_DEX_PATH, file2.getCanonicalPath());
                            } catch (java.io.IOException e2) {
                                e2.printStackTrace();
                            }
                            i = -10;
                        }
                    }
                    intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_DEXES_PATH, map);
                    return true;
                }
                i = -9;
            }
        }
        com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, i);
        return false;
    }

    @android.annotation.TargetApi(14)
    public static boolean loadTinkerArkHot(com.tencent.tinker.loader.app.TinkerApplication tinkerApplication, java.lang.String str, android.content.Intent intent) {
        int i;
        if (arkHotApkInfo.isEmpty()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "there is no apk to load", new java.lang.Object[0]);
            return true;
        }
        dalvik.system.PathClassLoader pathClassLoader = (dalvik.system.PathClassLoader) com.tencent.tinker.loader.TinkerArkHotLoader.class.getClassLoader();
        if (pathClassLoader != null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("classloader: ");
            sbO.append(pathClassLoader.toString());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
            java.lang.String str2 = str + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "arkHot" + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR;
            java.util.ArrayList arrayList = new java.util.ArrayList();
            if (isArkHotRuning && !arkHotApkInfo.isEmpty()) {
                arrayList.add(new java.io.File(e.a.c.a.a.e(str2, "patch.apk")));
            }
            try {
                com.tencent.tinker.loader.SystemClassLoaderAdder.installApk(pathClassLoader, arrayList);
                return true;
            } catch (java.lang.Throwable th) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "install dexes failed", new java.lang.Object[0]);
                intent.putExtra("intent_patch_exception", th);
                i = -14;
            }
        } else {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "classloader is null", new java.lang.Object[0]);
            i = -12;
        }
        com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, i);
        return false;
    }
}
