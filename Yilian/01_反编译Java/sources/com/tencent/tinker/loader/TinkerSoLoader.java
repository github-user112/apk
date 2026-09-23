package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public class TinkerSoLoader {
    public static final java.lang.String SO_MEAT_FILE = "assets/so_meta.txt";
    public static final java.lang.String SO_PATH = "lib";
    public static final java.lang.String TAG = "Tinker.TinkerSoLoader";

    public static boolean checkComplete(java.lang.String str, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck, android.content.Intent intent) {
        java.lang.String str2 = shareSecurityCheck.getMetaContentMap().get("assets/so_meta.txt");
        if (str2 == null) {
            return true;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo.parseDiffPatchInfo(str2, arrayList);
        if (arrayList.isEmpty()) {
            return true;
        }
        java.lang.String strG = e.a.c.a.a.g(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, "lib", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
        java.util.HashMap map = new java.util.HashMap();
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo shareBsDiffPatchInfo = (com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo) it.next();
            if (!com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo.checkDiffPatchInfo(shareBsDiffPatchInfo)) {
                intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_PACKAGE_PATCH_CHECK, -4);
                com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -8);
                return false;
            }
            map.put(shareBsDiffPatchInfo.path + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + shareBsDiffPatchInfo.name, shareBsDiffPatchInfo.md5);
        }
        java.io.File file = new java.io.File(strG);
        if (!file.exists() || !file.isDirectory()) {
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -17);
            return false;
        }
        java.util.Iterator it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            java.io.File file2 = new java.io.File(e.a.c.a.a.e(strG, (java.lang.String) it2.next()));
            if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file2)) {
                com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -18);
                intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISSING_LIB_PATH, file2.getAbsolutePath());
                return false;
            }
        }
        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_LIBS_PATH, map);
        return true;
    }
}
