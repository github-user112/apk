package com.tencent.tinker.lib.tinker;

/* loaded from: classes.dex */
public class TinkerApplicationHelper {
    public static final java.lang.String TAG = "Tinker.TinkerApplicationHelper";

    public static void cleanPatch(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerInternals.cleanPatch(applicationLike.getApplication());
    }

    public static java.lang.String getCurrentVersion(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        android.content.Intent tinkerResultIntent = applicationLike.getTinkerResultIntent();
        if (tinkerResultIntent == null) {
            return null;
        }
        java.lang.String stringExtra = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(tinkerResultIntent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_OLD_VERSION);
        java.lang.String stringExtra2 = com.tencent.tinker.loader.shareutil.ShareIntentUtil.getStringExtra(tinkerResultIntent, com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_NEW_VERSION);
        boolean zIsInMainProcess = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isInMainProcess(applicationLike.getApplication());
        if (stringExtra == null || stringExtra2 == null) {
            return null;
        }
        return zIsInMainProcess ? stringExtra2 : stringExtra;
    }

    public static java.util.HashMap<java.lang.String, java.lang.String> getLoadDexesAndMd5(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        android.content.Intent tinkerResultIntent = applicationLike.getTinkerResultIntent();
        if (tinkerResultIntent != null && com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentReturnCode(tinkerResultIntent) == 0) {
            return com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentPatchDexPaths(tinkerResultIntent);
        }
        return null;
    }

    public static java.util.HashMap<java.lang.String, java.lang.String> getLoadLibraryAndMd5(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        android.content.Intent tinkerResultIntent = applicationLike.getTinkerResultIntent();
        if (tinkerResultIntent != null && com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentReturnCode(tinkerResultIntent) == 0) {
            return com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentPatchLibsPaths(tinkerResultIntent);
        }
        return null;
    }

    public static java.util.HashMap<java.lang.String, java.lang.String> getPackageConfigs(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        android.content.Intent tinkerResultIntent = applicationLike.getTinkerResultIntent();
        if (tinkerResultIntent != null && com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentReturnCode(tinkerResultIntent) == 0) {
            return com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentPackageConfig(tinkerResultIntent);
        }
        return null;
    }

    public static java.io.File getTinkerPatchDirectory(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        return com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(applicationLike.getApplication());
    }

    public static boolean isTinkerEnableAll(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        return com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledAll(applicationLike.getTinkerFlags());
    }

    public static boolean isTinkerEnableForDex(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        return com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForDex(applicationLike.getTinkerFlags());
    }

    public static boolean isTinkerEnableForNativeLib(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        return com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForNativeLib(applicationLike.getTinkerFlags());
    }

    public static boolean isTinkerEnableForResource(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        return com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForResource(applicationLike.getTinkerFlags());
    }

    public static boolean isTinkerLoadSuccess(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        if (applicationLike == null || applicationLike.getApplication() == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerApplication is null");
        }
        android.content.Intent tinkerResultIntent = applicationLike.getTinkerResultIntent();
        return tinkerResultIntent != null && com.tencent.tinker.loader.shareutil.ShareIntentUtil.getIntentReturnCode(tinkerResultIntent) == 0;
    }

    public static void loadArmLibrary(com.tencent.tinker.entry.ApplicationLike applicationLike, java.lang.String str) {
        if (str == null || str.isEmpty() || applicationLike == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("libName or context is null!");
        }
        if (isTinkerEnableForNativeLib(applicationLike) && loadLibraryFromTinker(applicationLike, "lib/armeabi", str)) {
            return;
        }
        java.lang.System.loadLibrary(str);
    }

    public static void loadArmV7aLibrary(com.tencent.tinker.entry.ApplicationLike applicationLike, java.lang.String str) {
        if (str == null || str.isEmpty() || applicationLike == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("libName or context is null!");
        }
        if (isTinkerEnableForNativeLib(applicationLike) && loadLibraryFromTinker(applicationLike, "lib/armeabi-v7a", str)) {
            return;
        }
        java.lang.System.loadLibrary(str);
    }

    public static boolean loadLibraryFromTinker(com.tencent.tinker.entry.ApplicationLike applicationLike, java.lang.String str, java.lang.String str2) {
        java.util.HashMap<java.lang.String, java.lang.String> loadLibraryAndMd5;
        java.io.File patchDirectory;
        if (!str2.startsWith("lib")) {
            str2 = e.a.c.a.a.e("lib", str2);
        }
        if (!str2.endsWith(".so")) {
            str2 = e.a.c.a.a.e(str2, ".so");
        }
        java.lang.String strF = e.a.c.a.a.f(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str2);
        if (!isTinkerEnableForNativeLib(applicationLike) || !isTinkerEnableForNativeLib(applicationLike) || (loadLibraryAndMd5 = getLoadLibraryAndMd5(applicationLike)) == null) {
            return false;
        }
        java.lang.String currentVersion = getCurrentVersion(applicationLike);
        if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNullOrNil(currentVersion) || (patchDirectory = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(applicationLike.getApplication())) == null) {
            return false;
        }
        java.lang.String str3 = new java.io.File(patchDirectory.getAbsolutePath() + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(currentVersion)).getAbsolutePath() + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "lib";
        java.util.Iterator<java.util.Map.Entry<java.lang.String, java.lang.String>> it = loadLibraryAndMd5.entrySet().iterator();
        while (it.hasNext()) {
            java.lang.String key = it.next().getKey();
            if (key.equals(strF)) {
                java.lang.String strF2 = e.a.c.a.a.f(str3, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, key);
                java.io.File file = new java.io.File(strF2);
                if (!file.exists()) {
                    continue;
                } else {
                    if (!applicationLike.getTinkerLoadVerifyFlag() || com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyFileMd5(file, loadLibraryAndMd5.get(key))) {
                        java.lang.System.load(strF2);
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "loadLibraryFromTinker success:" + strF2, new java.lang.Object[0]);
                        return true;
                    }
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, e.a.c.a.a.e("loadLibraryFromTinker md5mismatch fail:", strF2), new java.lang.Object[0]);
                }
            }
        }
        return false;
    }
}
