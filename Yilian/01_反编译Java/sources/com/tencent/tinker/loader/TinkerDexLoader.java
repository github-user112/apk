package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public class TinkerDexLoader {
    public static final java.lang.String DEFAULT_DEX_OPTIMIZE_PATH = "odex";
    public static final java.lang.String DEX_MEAT_FILE = "assets/dex_meta.txt";
    public static final java.lang.String DEX_PATH = "dex";
    public static final java.lang.String INTERPRET_DEX_OPTIMIZE_PATH = "interpet";
    public static final java.lang.String TAG = "Tinker.TinkerDexLoader";
    public static final java.util.ArrayList<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> LOAD_DEX_LIST = new java.util.ArrayList<>();
    public static java.util.HashSet<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> classNDexInfo = new java.util.HashSet<>();
    public static boolean isVmArt = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isVmArt();

    public static boolean checkComplete(java.lang.String str, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck, java.lang.String str2, android.content.Intent intent) {
        int i;
        java.lang.String str3 = shareSecurityCheck.getMetaContentMap().get("assets/dex_meta.txt");
        if (str3 == null) {
            return true;
        }
        LOAD_DEX_LIST.clear();
        classNDexInfo.clear();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo.parseDexDiffPatchInfo(str3, arrayList);
        if (arrayList.isEmpty()) {
            return true;
        }
        java.util.HashMap map = new java.util.HashMap();
        com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo shareDexDiffPatchInfo = null;
        java.util.Iterator it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo shareDexDiffPatchInfo2 = (com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo) it.next();
                if (!isJustArtSupportDex(shareDexDiffPatchInfo2)) {
                    if (!com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo.checkDexDiffPatchInfo(shareDexDiffPatchInfo2)) {
                        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_PACKAGE_PATCH_CHECK, -3);
                        i = -8;
                        break;
                    }
                    if (isVmArt && shareDexDiffPatchInfo2.rawName.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.TEST_DEX_NAME)) {
                        shareDexDiffPatchInfo = shareDexDiffPatchInfo2;
                    } else if (isVmArt && com.tencent.tinker.loader.shareutil.ShareConstants.CLASS_N_PATTERN.matcher(shareDexDiffPatchInfo2.realName).matches()) {
                        classNDexInfo.add(shareDexDiffPatchInfo2);
                    } else {
                        map.put(shareDexDiffPatchInfo2.realName, getInfoMd5(shareDexDiffPatchInfo2));
                        LOAD_DEX_LIST.add(shareDexDiffPatchInfo2);
                    }
                }
            } else {
                if (isVmArt && (shareDexDiffPatchInfo != null || !classNDexInfo.isEmpty())) {
                    if (shareDexDiffPatchInfo != null) {
                        java.util.HashSet<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> hashSet = classNDexInfo;
                        hashSet.add(com.tencent.tinker.loader.shareutil.ShareTinkerInternals.changeTestDexToClassN(shareDexDiffPatchInfo, hashSet.size() + 1));
                    }
                    map.put(com.tencent.tinker.loader.shareutil.ShareConstants.CLASS_N_APK_NAME, "");
                }
                java.lang.String strG = e.a.c.a.a.g(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, "dex", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                java.io.File file = new java.io.File(strG);
                if (file.exists() && file.isDirectory()) {
                    java.io.File file2 = new java.io.File(e.a.c.a.a.g(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str2, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR));
                    java.util.Iterator it2 = map.keySet().iterator();
                    while (it2.hasNext()) {
                        java.io.File file3 = new java.io.File(e.a.c.a.a.e(strG, (java.lang.String) it2.next()));
                        if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file3)) {
                            java.io.File file4 = new java.io.File(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.optimizedPathFor(file3, file2));
                            if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file4) && !com.tencent.tinker.loader.shareutil.SharePatchFileUtil.shouldAcceptEvenIfIllegal(file4)) {
                                intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISSING_DEX_PATH, file4.getAbsolutePath());
                                i = -11;
                            }
                        } else {
                            intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISSING_DEX_PATH, file3.getAbsolutePath());
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

    public static void deleteOutOfDateOATFile(java.lang.String str) {
        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(str + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "odex" + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
        if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isAfterAndroidO()) {
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(str + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "dex" + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + com.tencent.tinker.loader.shareutil.ShareConstants.ANDROID_O_DEX_OPTIMIZE_PATH + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
        }
    }

    public static java.lang.String getInfoMd5(com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo shareDexDiffPatchInfo) {
        return isVmArt ? shareDexDiffPatchInfo.destMd5InArt : shareDexDiffPatchInfo.destMd5InDvm;
    }

    public static boolean isJustArtSupportDex(com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo shareDexDiffPatchInfo) {
        return !isVmArt && shareDexDiffPatchInfo.destMd5InDvm.equals("0");
    }

    public static boolean loadTinkerJars(com.tencent.tinker.loader.app.TinkerApplication tinkerApplication, java.lang.String str, java.lang.String str2, android.content.Intent intent, boolean z, boolean z2) {
        java.io.File file;
        int i;
        boolean z3;
        java.io.File file2;
        if (LOAD_DEX_LIST.isEmpty() && classNDexInfo.isEmpty()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "there is no dex to load", new java.lang.Object[0]);
            return true;
        }
        java.lang.ClassLoader classLoader = com.tencent.tinker.loader.TinkerDexLoader.class.getClassLoader();
        if (classLoader == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "classloader is null", new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -12);
            return false;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("classloader: ");
        sbO.append(classLoader.toString());
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
        java.lang.String str3 = str + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "dex" + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> it = LOAD_DEX_LIST.iterator();
        while (it.hasNext()) {
            com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo next = it.next();
            if (!isJustArtSupportDex(next)) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o(str3);
                sbO2.append(next.realName);
                java.io.File file3 = new java.io.File(sbO2.toString());
                if (tinkerApplication.isTinkerLoadVerifyFlag()) {
                    long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                    if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyDexFileMd5(file3, getInfoMd5(next))) {
                        com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -13);
                        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISMATCH_DEX_PATH, file3.getAbsolutePath());
                        return false;
                    }
                    java.lang.StringBuilder sbO3 = e.a.c.a.a.o("verify dex file:");
                    sbO3.append(file3.getPath());
                    sbO3.append(" md5, use time: ");
                    sbO3.append(java.lang.System.currentTimeMillis() - jCurrentTimeMillis);
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO3.toString(), new java.lang.Object[0]);
                }
                arrayList.add(file3);
            }
        }
        if (isVmArt && !classNDexInfo.isEmpty()) {
            java.io.File file4 = new java.io.File(e.a.c.a.a.e(str3, com.tencent.tinker.loader.shareutil.ShareConstants.CLASS_N_APK_NAME));
            long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
            if (tinkerApplication.isTinkerLoadVerifyFlag()) {
                java.util.Iterator<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> it2 = classNDexInfo.iterator();
                while (it2.hasNext()) {
                    com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo next2 = it2.next();
                    if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyDexFileMd5(file4, next2.rawName, next2.destMd5InArt)) {
                        com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -13);
                        intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_MISMATCH_DEX_PATH, file4.getAbsolutePath());
                        return false;
                    }
                }
            }
            java.lang.StringBuilder sbO4 = e.a.c.a.a.o("verify dex file:");
            sbO4.append(file4.getPath());
            sbO4.append(" md5, use time: ");
            sbO4.append(java.lang.System.currentTimeMillis() - jCurrentTimeMillis2);
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO4.toString(), new java.lang.Object[0]);
            arrayList.add(file4);
        }
        java.io.File file5 = new java.io.File(e.a.c.a.a.f(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str2));
        if (z) {
            final boolean[] zArr = {true};
            final java.lang.Throwable[] thArr = new java.lang.Throwable[1];
            try {
                java.lang.String currentInstructionSet = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getCurrentInstructionSet();
                deleteOutOfDateOATFile(str);
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "systemOTA, try parallel oat dexes, targetISA:" + currentInstructionSet, new java.lang.Object[0]);
                file2 = new java.io.File(e.a.c.a.a.f(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, "interpet"));
                z3 = false;
                com.tencent.tinker.loader.TinkerDexOptimizer.optimizeAll(tinkerApplication, arrayList, file2, true, tinkerApplication.isUseDelegateLastClassLoader(), currentInstructionSet, false, new com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback() { // from class: com.tencent.tinker.loader.TinkerDexLoader.1
                    public long start;

                    @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
                    public void onFailed(java.io.File file6, java.io.File file7, java.lang.Throwable th) {
                        zArr[0] = false;
                        thArr[0] = th;
                        java.lang.StringBuilder sbO5 = e.a.c.a.a.o("fail to optimize dex ");
                        sbO5.append(file6.getPath());
                        sbO5.append(", use time ");
                        sbO5.append(java.lang.System.currentTimeMillis() - this.start);
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(com.tencent.tinker.loader.TinkerDexLoader.TAG, sbO5.toString(), new java.lang.Object[0]);
                    }

                    @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
                    public void onStart(java.io.File file6, java.io.File file7) {
                        this.start = java.lang.System.currentTimeMillis();
                        java.lang.StringBuilder sbO5 = e.a.c.a.a.o("start to optimize dex:");
                        sbO5.append(file6.getPath());
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(com.tencent.tinker.loader.TinkerDexLoader.TAG, sbO5.toString(), new java.lang.Object[0]);
                    }

                    @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
                    public void onSuccess(java.io.File file6, java.io.File file7, java.io.File file8) {
                        java.lang.StringBuilder sbO5 = e.a.c.a.a.o("success to optimize dex ");
                        sbO5.append(file6.getPath());
                        sbO5.append(", use time ");
                        sbO5.append(java.lang.System.currentTimeMillis() - this.start);
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(com.tencent.tinker.loader.TinkerDexLoader.TAG, sbO5.toString(), new java.lang.Object[0]);
                    }
                });
            } catch (java.lang.Throwable th) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "getCurrentInstructionSet fail:" + th, new java.lang.Object[0]);
                deleteOutOfDateOATFile(str);
                intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_INTERPRET_EXCEPTION, th);
                i = -15;
                z3 = false;
            }
            if (!zArr[0]) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "parallel oat dexes failed", new java.lang.Object[0]);
                intent.putExtra(com.tencent.tinker.loader.shareutil.ShareIntentUtil.INTENT_PATCH_INTERPRET_EXCEPTION, thArr[0]);
                i = -16;
                com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, i);
                return z3;
            }
            file = file2;
        } else {
            file = file5;
        }
        try {
            com.tencent.tinker.loader.SystemClassLoaderAdder.installDexes(tinkerApplication, classLoader, file, arrayList, z2, tinkerApplication.isUseDelegateLastClassLoader());
            return true;
        } catch (java.lang.Throwable th2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "install dexes failed", new java.lang.Object[0]);
            intent.putExtra("intent_patch_exception", th2);
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -14);
            return false;
        }
    }
}
