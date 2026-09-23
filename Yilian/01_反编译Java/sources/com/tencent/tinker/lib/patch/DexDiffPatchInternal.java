package com.tencent.tinker.lib.patch;

/* loaded from: classes.dex */
public class DexDiffPatchInternal extends com.tencent.tinker.lib.patch.BasePatchInternal {
    public static final int MAX_WAIT_COUNT = 120;
    public static final java.lang.String TAG = "Tinker.DexDiffPatchInternal";
    public static final int WAIT_ASYN_OAT_TIME = 10000;
    public static java.util.ArrayList<java.io.File> optFiles = new java.util.ArrayList<>();
    public static java.util.ArrayList<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> patchList = new java.util.ArrayList<>();
    public static java.util.HashMap<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo, java.io.File> classNDexInfo = new java.util.HashMap<>();
    public static boolean isVmArt = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isVmArt();

    public static boolean checkAllDexOptFile(java.util.ArrayList<java.io.File> arrayList, int i) {
        java.util.Iterator<java.io.File> it = arrayList.iterator();
        while (it.hasNext()) {
            java.io.File next = it.next();
            if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(next) && !com.tencent.tinker.loader.shareutil.SharePatchFileUtil.shouldAcceptEvenIfIllegal(next)) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "parallel dex optimizer file %s is not exist, just wait %d times", next.getName(), java.lang.Integer.valueOf(i));
                return false;
            }
        }
        return true;
    }

    public static boolean checkClassNDexFiles(java.lang.String str) {
        classNDexInfo.clear();
        boolean z = false;
        if (!patchList.isEmpty() && isVmArt) {
            java.util.Iterator<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> it = patchList.iterator();
            com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo shareDexDiffPatchInfo = null;
            java.io.File file = null;
            while (it.hasNext()) {
                com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo next = it.next();
                java.lang.StringBuilder sbO = e.a.c.a.a.o(str);
                sbO.append(next.realName);
                java.io.File file2 = new java.io.File(sbO.toString());
                if (com.tencent.tinker.loader.shareutil.ShareConstants.CLASS_N_PATTERN.matcher(file2.getName()).matches()) {
                    classNDexInfo.put(next, file2);
                }
                if (next.rawName.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.TEST_DEX_NAME)) {
                    shareDexDiffPatchInfo = next;
                    file = file2;
                }
            }
            if (shareDexDiffPatchInfo != null) {
                java.util.HashMap<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo, java.io.File> map = classNDexInfo;
                map.put(com.tencent.tinker.loader.shareutil.ShareTinkerInternals.changeTestDexToClassN(shareDexDiffPatchInfo, map.size() + 1), file);
            }
            java.io.File file3 = new java.io.File(str, com.tencent.tinker.loader.shareutil.ShareConstants.CLASS_N_APK_NAME);
            if (file3.exists()) {
                java.util.Iterator<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> it2 = classNDexInfo.keySet().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = true;
                        break;
                    }
                    com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo next2 = it2.next();
                    if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyDexFileMd5(file3, next2.rawName, next2.destMd5InArt)) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "verify dex file md5 error, entry name; %s, file len: %d", next2.rawName, java.lang.Long.valueOf(file3.length()));
                        break;
                    }
                }
                if (!z) {
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(file3);
                }
            }
            if (z) {
                java.util.Iterator<java.io.File> it3 = classNDexInfo.values().iterator();
                while (it3.hasNext()) {
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(it3.next());
                }
            }
        }
        return z;
    }

    public static boolean dexOptimizeDexFiles(android.content.Context context, java.util.List<java.io.File> list, java.lang.String str, java.io.File file, boolean z, com.tencent.tinker.lib.service.PatchResult patchResult) {
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        optFiles.clear();
        if (list != null) {
            java.io.File file2 = new java.io.File(str);
            if (!file2.exists() && !file2.mkdirs()) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch recover, make optimizeDexDirectoryFile fail", new java.lang.Object[0]);
                return false;
            }
            java.util.Iterator<java.io.File> it = list.iterator();
            while (it.hasNext()) {
                optFiles.add(new java.io.File(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.optimizedPathFor(it.next(), file2)));
            }
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch recover, try to optimize dex file count:%d, optimizeDexDirectory:%s", java.lang.Integer.valueOf(list.size()), str);
            final java.util.Vector vector = new java.util.Vector();
            final java.lang.Throwable[] thArr = new java.lang.Throwable[1];
            if (patchResult != null) {
                patchResult.dexoptTriggerTime = java.lang.System.currentTimeMillis();
            }
            final boolean[] zArr = {false};
            com.tencent.tinker.loader.TinkerDexOptimizer.optimizeAll(context, list, file2, com.tencent.tinker.loader.app.TinkerApplication.getInstance().isUseDelegateLastClassLoader(), z, new com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback() { // from class: com.tencent.tinker.lib.patch.DexDiffPatchInternal.1
                public long startTime;

                @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
                public void onFailed(java.io.File file3, java.io.File file4, java.lang.Throwable th) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(com.tencent.tinker.lib.patch.DexDiffPatchInternal.TAG, "fail to parallel optimize dex %s use time %d", file3.getPath(), java.lang.Long.valueOf(java.lang.System.currentTimeMillis() - this.startTime));
                    vector.add(file3);
                    thArr[0] = th;
                }

                @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
                public void onStart(java.io.File file3, java.io.File file4) {
                    this.startTime = java.lang.System.currentTimeMillis();
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(com.tencent.tinker.lib.patch.DexDiffPatchInternal.TAG, "start to parallel optimize dex %s, size: %d", file3.getPath(), java.lang.Long.valueOf(file3.length()));
                }

                @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
                public void onSuccess(java.io.File file3, java.io.File file4, java.io.File file5) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(com.tencent.tinker.lib.patch.DexDiffPatchInternal.TAG, "success to parallel optimize dex %s, opt file:%s, opt file size: %d, use time %d", file3.getPath(), file5.getPath(), java.lang.Long.valueOf(file5.length()), java.lang.Long.valueOf(java.lang.System.currentTimeMillis() - this.startTime));
                    if (file5.exists()) {
                        return;
                    }
                    synchronized (zArr) {
                        zArr[0] = true;
                    }
                }
            });
            if (patchResult != null) {
                synchronized (zArr) {
                    patchResult.isOatGenerated = !zArr[0];
                }
            }
            if (!vector.isEmpty()) {
                tinkerWith.getPatchReporter().onPatchDexOptFail(file, vector, thArr[0]);
                return false;
            }
        }
        return true;
    }

    public static boolean extractDexDiffInternals(android.content.Context context, java.lang.String str, java.lang.String str2, java.io.File file, int i) throws java.io.IOException {
        java.util.zip.ZipFile zipFile;
        java.lang.String str3;
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter;
        int metaCorruptedCode;
        java.lang.String str4;
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter2;
        java.lang.String str5;
        java.lang.String str6 = str;
        patchList.clear();
        com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo.parseDexDiffPatchInfo(str2, patchList);
        int i2 = 1;
        char c2 = 0;
        if (patchList.isEmpty()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "extract patch list is empty! type:%s:", com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i));
            return true;
        }
        java.io.File file2 = new java.io.File(str6);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        java.util.zip.ZipFile zipFile2 = null;
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "applicationInfo == null!!!!", new java.lang.Object[0]);
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(null);
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(null);
                return false;
            }
            java.util.zip.ZipFile zipFile3 = new java.util.zip.ZipFile(applicationInfo.sourceDir);
            try {
                zipFile = new java.util.zip.ZipFile(file);
                try {
                    if (checkClassNDexFiles(str)) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "class n dex file %s is already exist, and md5 match, just continue", com.tencent.tinker.loader.shareutil.ShareConstants.CLASS_N_APK_NAME);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                        return true;
                    }
                    java.util.Iterator<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> it = patchList.iterator();
                    while (it.hasNext()) {
                        com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo next = it.next();
                        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                        if (next.path.equals("")) {
                            str3 = next.rawName;
                        } else {
                            str3 = next.path + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + next.rawName;
                        }
                        java.lang.String str7 = next.dexDiffMd5;
                        java.lang.String str8 = next.oldDexCrC;
                        if (isVmArt || !next.destMd5InDvm.equals("0")) {
                            java.lang.String str9 = isVmArt ? next.destMd5InArt : next.destMd5InDvm;
                            if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkIfMd5Valid(str9)) {
                                java.util.Iterator<com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo> it2 = it;
                                java.io.File file3 = new java.io.File(str6 + next.realName);
                                if (!file3.exists()) {
                                    str4 = "meta file md5 invalid, type:%s, name: %s, md5: %s";
                                    file3.getParentFile().mkdirs();
                                } else if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyDexFileMd5(file3, str9)) {
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "dex file %s is already exist, and md5 match, just continue", file3.getPath());
                                    str6 = str;
                                    it = it2;
                                    i2 = 1;
                                    c2 = 0;
                                } else {
                                    str4 = "meta file md5 invalid, type:%s, name: %s, md5: %s";
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "have a mismatch corrupted dex " + file3.getPath(), new java.lang.Object[0]);
                                    file3.delete();
                                }
                                java.util.zip.ZipEntry entry = zipFile.getEntry(str3);
                                java.util.zip.ZipEntry entry2 = zipFile3.getEntry(str3);
                                java.lang.String str10 = str9;
                                if (str8.equals("0")) {
                                    if (entry == null) {
                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch entry is null. path:" + str3, new java.lang.Object[0]);
                                        patchReporter2 = tinkerWith.getPatchReporter();
                                        str5 = next.rawName;
                                    } else {
                                        if (!extractDexFile(zipFile, entry, file3, next)) {
                                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "Failed to extract raw patch file " + file3.getPath(), new java.lang.Object[0]);
                                            patchReporter2 = tinkerWith.getPatchReporter();
                                            str5 = next.rawName;
                                        }
                                        str6 = str;
                                        it = it2;
                                        i2 = 1;
                                        c2 = 0;
                                    }
                                    patchReporter2.onPatchTypeExtractFail(file, file3, str5, i);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                    return false;
                                }
                                if (!str7.equals("0")) {
                                    if (entry == null) {
                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch entry is null. path:" + str3, new java.lang.Object[0]);
                                        patchReporter2 = tinkerWith.getPatchReporter();
                                        str5 = next.rawName;
                                    } else if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkIfMd5Valid(str7)) {
                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, str4, com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i), next.rawName, str7);
                                        patchReporter = tinkerWith.getPatchReporter();
                                        metaCorruptedCode = com.tencent.tinker.lib.patch.BasePatchInternal.getMetaCorruptedCode(i);
                                    } else if (entry2 == null) {
                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "apk entry is null. path:" + str3, new java.lang.Object[0]);
                                        patchReporter2 = tinkerWith.getPatchReporter();
                                        str5 = next.rawName;
                                    } else {
                                        java.lang.String strValueOf = java.lang.String.valueOf(entry2.getCrc());
                                        if (strValueOf.equals(str8)) {
                                            patchDexFile(zipFile3, zipFile, entry2, entry, next, file3);
                                            if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyDexFileMd5(file3, str10)) {
                                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "Failed to recover dex file when verify patched dex: " + file3.getPath(), new java.lang.Object[0]);
                                                tinkerWith.getPatchReporter().onPatchTypeExtractFail(file, file3, next.rawName, i);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(file3);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                                return false;
                                            }
                                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "success recover dex file: %s, size: %d, use time: %d", file3.getPath(), java.lang.Long.valueOf(file3.length()), java.lang.Long.valueOf(java.lang.System.currentTimeMillis() - jCurrentTimeMillis));
                                            str6 = str;
                                            it = it2;
                                            i2 = 1;
                                            c2 = 0;
                                        } else {
                                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "apk entry %s crc is not equal, expect crc: %s, got crc: %s", str3, str8, strValueOf);
                                            patchReporter2 = tinkerWith.getPatchReporter();
                                            str5 = next.rawName;
                                        }
                                    }
                                    patchReporter2.onPatchTypeExtractFail(file, file3, str5, i);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                    return false;
                                }
                                if (isVmArt) {
                                    if (entry2 == null) {
                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "apk entry is null. path:" + str3, new java.lang.Object[0]);
                                        patchReporter2 = tinkerWith.getPatchReporter();
                                        str5 = next.rawName;
                                    } else {
                                        java.lang.String strValueOf2 = java.lang.String.valueOf(entry2.getCrc());
                                        if (strValueOf2.equals(str8)) {
                                            extractDexFile(zipFile3, entry2, file3, next);
                                            if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyDexFileMd5(file3, str10)) {
                                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "Failed to recover dex file when verify patched dex: " + file3.getPath(), new java.lang.Object[0]);
                                                tinkerWith.getPatchReporter().onPatchTypeExtractFail(file, file3, next.rawName, i);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(file3);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                                return false;
                                            }
                                        } else {
                                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "apk entry %s crc is not equal, expect crc: %s, got crc: %s", str3, str8, strValueOf2);
                                            patchReporter2 = tinkerWith.getPatchReporter();
                                            str5 = next.rawName;
                                        }
                                    }
                                    patchReporter2.onPatchTypeExtractFail(file, file3, str5, i);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                    return false;
                                }
                                str6 = str;
                                it = it2;
                                i2 = 1;
                                c2 = 0;
                            } else {
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "meta file md5 invalid, type:%s, name: %s, md5: %s", com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i), next.rawName, str9);
                                patchReporter = tinkerWith.getPatchReporter();
                                metaCorruptedCode = com.tencent.tinker.lib.patch.BasePatchInternal.getMetaCorruptedCode(i);
                            }
                            patchReporter.onPatchPackageCheckFail(file, metaCorruptedCode);
                            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                            return false;
                        }
                        java.lang.Object[] objArr = new java.lang.Object[i2];
                        objArr[c2] = str3;
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch dex %s is only for art, just continue", objArr);
                    }
                    boolean zMergeClassNDexFiles = mergeClassNDexFiles(context, file, str6);
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                    return zMergeClassNDexFiles;
                } catch (java.lang.Throwable th) {
                    th = th;
                    zipFile2 = zipFile3;
                    try {
                        throw new com.tencent.tinker.loader.TinkerRuntimeException("patch " + com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i) + " extract failed (" + th.getMessage() + ").", th);
                    } catch (java.lang.Throwable th2) {
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile2);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                        throw th2;
                    }
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
                zipFile = null;
            }
        } catch (java.lang.Throwable th4) {
            th = th4;
            zipFile = null;
        }
    }

    public static boolean extractDexFile(java.util.zip.ZipFile zipFile, java.util.zip.ZipEntry zipEntry, java.io.File file, com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo shareDexDiffPatchInfo) {
        java.lang.String str = isVmArt ? shareDexDiffPatchInfo.destMd5InArt : shareDexDiffPatchInfo.destMd5InDvm;
        return (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isRawDexFile(shareDexDiffPatchInfo.rawName) && shareDexDiffPatchInfo.isJarMode) ? extractDexToJar(zipFile, zipEntry, file, str) : com.tencent.tinker.lib.patch.BasePatchInternal.extract(zipFile, zipEntry, file, str, true);
    }

    public static boolean extractDexToJar(java.util.zip.ZipFile zipFile, java.util.zip.ZipEntry zipEntry, java.io.File file, java.lang.String str) throws java.lang.Throwable {
        java.util.zip.ZipOutputStream zipOutputStream;
        int i = 0;
        boolean zVerifyDexFileMd5 = false;
        while (i < 2 && !zVerifyDexFileMd5) {
            i++;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("try Extracting ");
            sbO.append(file.getPath());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
            java.io.BufferedInputStream bufferedInputStream = null;
            try {
                zipOutputStream = new java.util.zip.ZipOutputStream(new java.io.BufferedOutputStream(new java.io.FileOutputStream(file)));
                try {
                    if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(33, true)) {
                        file.setReadOnly();
                    }
                    java.io.BufferedInputStream bufferedInputStream2 = new java.io.BufferedInputStream(zipFile.getInputStream(zipEntry));
                    try {
                        byte[] bArr = new byte[4096];
                        zipOutputStream.putNextEntry(new java.util.zip.ZipEntry("classes.dex"));
                        while (true) {
                            int i2 = bufferedInputStream2.read(bArr);
                            if (i2 == -1) {
                                break;
                            }
                            zipOutputStream.write(bArr, 0, i2);
                        }
                        zipOutputStream.closeEntry();
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream2);
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(zipOutputStream);
                        zVerifyDexFileMd5 = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyDexFileMd5(file, str);
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "isExtractionSuccessful: %b", java.lang.Boolean.valueOf(zVerifyDexFileMd5));
                        if (!zVerifyDexFileMd5 && (!file.delete() || file.exists())) {
                            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Failed to delete corrupted dex ");
                            sbO2.append(file.getPath());
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, sbO2.toString(), new java.lang.Object[0]);
                        }
                    } catch (java.lang.Throwable th) {
                        th = th;
                        bufferedInputStream = bufferedInputStream2;
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream);
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(zipOutputStream);
                        throw th;
                    }
                } catch (java.lang.Throwable th2) {
                    th = th2;
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
                zipOutputStream = null;
            }
        }
        return zVerifyDexFileMd5;
    }

    public static java.util.zip.ZipEntry makeStoredZipEntry(java.util.zip.ZipEntry zipEntry, java.lang.String str) {
        java.util.zip.ZipEntry zipEntry2 = new java.util.zip.ZipEntry(str);
        zipEntry2.setMethod(0);
        zipEntry2.setCompressedSize(zipEntry.getSize());
        zipEntry2.setSize(zipEntry.getSize());
        zipEntry2.setCrc(zipEntry.getCrc());
        return zipEntry2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0155  */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.io.InputStream, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v17, types: [java.io.BufferedInputStream, java.io.InputStream, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean mergeClassNDexFiles(android.content.Context r14, java.io.File r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.lib.patch.DexDiffPatchInternal.mergeClassNDexFiles(android.content.Context, java.io.File, java.lang.String):boolean");
    }

    public static boolean patchDexExtractViaDexDiff(android.content.Context context, java.lang.String str, java.lang.String str2, java.io.File file, boolean z, com.tencent.tinker.lib.service.PatchResult patchResult) {
        java.lang.String strG = e.a.c.a.a.g(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, "dex", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
        if (!extractDexDiffInternals(context, strG, str2, file, 3)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch recover, extractDiffInternals fail", new java.lang.Object[0]);
            return false;
        }
        java.io.File[] fileArrListFiles = new java.io.File(strG).listFiles();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (fileArrListFiles != null) {
            for (java.io.File file2 : fileArrListFiles) {
                java.lang.String name = file2.getName();
                if (file2.isFile() && (name.endsWith(com.tencent.tinker.loader.shareutil.ShareConstants.DEX_SUFFIX) || name.endsWith(com.tencent.tinker.loader.shareutil.ShareConstants.JAR_SUFFIX) || name.endsWith(".apk"))) {
                    arrayList.add(file2);
                }
            }
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "legal files to do dexopt: " + arrayList, new java.lang.Object[0]);
        return dexOptimizeDexFiles(context, arrayList, str + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "odex" + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, file, z, patchResult);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void patchDexFile(java.util.zip.ZipFile zipFile, java.util.zip.ZipFile zipFile2, java.util.zip.ZipEntry zipEntry, java.util.zip.ZipEntry zipEntry2, com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo shareDexDiffPatchInfo, java.io.File file) throws java.lang.Throwable {
        java.io.BufferedInputStream bufferedInputStream;
        java.io.BufferedInputStream bufferedInputStream2;
        java.io.BufferedInputStream bufferedInputStream3;
        java.util.zip.ZipEntry nextEntry;
        java.io.BufferedInputStream bufferedInputStream4 = null;
        try {
            bufferedInputStream2 = new java.io.BufferedInputStream(zipFile.getInputStream(zipEntry));
            if (zipEntry2 != null) {
                try {
                    bufferedInputStream3 = new java.io.BufferedInputStream(zipFile2.getInputStream(zipEntry2));
                } catch (java.lang.Throwable th) {
                    th = th;
                    bufferedInputStream = null;
                    bufferedInputStream4 = bufferedInputStream2;
                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream4);
                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream);
                    throw th;
                }
            } else {
                bufferedInputStream3 = null;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            bufferedInputStream = null;
        }
        try {
            if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(33, true)) {
                file.setReadOnly();
            }
            boolean zIsRawDexFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isRawDexFile(shareDexDiffPatchInfo.rawName);
            if (!zIsRawDexFile || shareDexDiffPatchInfo.isJarMode) {
                try {
                    java.util.zip.ZipOutputStream zipOutputStream = new java.util.zip.ZipOutputStream(new java.io.BufferedOutputStream(new java.io.FileOutputStream(file)));
                    try {
                        zipOutputStream.putNextEntry(new java.util.zip.ZipEntry("classes.dex"));
                        if (zIsRawDexFile) {
                            new com.tencent.tinker.commons.dexpatcher.DexPatchApplier(bufferedInputStream2, bufferedInputStream3).executeAndSaveTo(zipOutputStream);
                        } else {
                            try {
                                java.util.zip.ZipInputStream zipInputStream = new java.util.zip.ZipInputStream(bufferedInputStream2);
                                do {
                                    try {
                                        nextEntry = zipInputStream.getNextEntry();
                                        if (nextEntry == null) {
                                            break;
                                        }
                                    } catch (java.lang.Throwable th3) {
                                        th = th3;
                                        bufferedInputStream4 = zipInputStream;
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream4);
                                        throw th;
                                    }
                                } while (!"classes.dex".equals(nextEntry.getName()));
                                if (nextEntry == null) {
                                    throw new com.tencent.tinker.loader.TinkerRuntimeException("can't recognize zip dex format file:" + file.getAbsolutePath());
                                }
                                new com.tencent.tinker.commons.dexpatcher.DexPatchApplier(zipInputStream, bufferedInputStream3).executeAndSaveTo(zipOutputStream);
                                com.tencent.tinker.commons.util.IOHelper.closeQuietly(zipInputStream);
                            } catch (java.lang.Throwable th4) {
                                th = th4;
                            }
                        }
                        zipOutputStream.closeEntry();
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(zipOutputStream);
                    } catch (java.lang.Throwable th5) {
                        th = th5;
                        bufferedInputStream4 = zipOutputStream;
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream4);
                        throw th;
                    }
                } catch (java.lang.Throwable th6) {
                    th = th6;
                }
            } else {
                new com.tencent.tinker.commons.dexpatcher.DexPatchApplier(bufferedInputStream2, bufferedInputStream3).executeAndSaveTo(file);
            }
            com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream2);
            com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream3);
        } catch (java.lang.Throwable th7) {
            bufferedInputStream4 = bufferedInputStream2;
            bufferedInputStream = bufferedInputStream3;
            th = th7;
            com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream4);
            com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream);
            throw th;
        }
    }

    public static boolean tryRecoverDexFiles(com.tencent.tinker.lib.tinker.Tinker tinker, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck, android.content.Context context, java.lang.String str, java.io.File file, boolean z, com.tencent.tinker.lib.service.PatchResult patchResult) {
        if (!tinker.isEnabledForDex()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch recover, dex is not enabled", new java.lang.Object[0]);
            return true;
        }
        java.lang.String str2 = shareSecurityCheck.getMetaContentMap().get("assets/dex_meta.txt");
        if (str2 == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch recover, dex is not contained", new java.lang.Object[0]);
            return true;
        }
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        boolean zPatchDexExtractViaDexDiff = patchDexExtractViaDexDiff(context, str, str2, file, z, patchResult);
        long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime() - jElapsedRealtime;
        patchResult.dexCostTime = jElapsedRealtime2;
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "recover dex result:%b, cost:%d", java.lang.Boolean.valueOf(zPatchDexExtractViaDexDiff), java.lang.Long.valueOf(jElapsedRealtime2));
        return zPatchDexExtractViaDexDiff;
    }

    public static boolean waitAndCheckDexOptFile(java.io.File file, com.tencent.tinker.lib.tinker.Tinker tinker) throws java.lang.InterruptedException {
        if (optFiles.isEmpty()) {
            return true;
        }
        int size = patchList.size() * 30;
        if (size > 120) {
            size = 120;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "raw dex count: %d, dex opt dex count: %d, final wait times: %d", java.lang.Integer.valueOf(patchList.size()), java.lang.Integer.valueOf(optFiles.size()), java.lang.Integer.valueOf(size));
        int i = 0;
        while (i < size) {
            i++;
            if (!checkAllDexOptFile(optFiles, i)) {
                try {
                    java.lang.Thread.sleep(10000L);
                } catch (java.lang.InterruptedException e2) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "thread sleep InterruptedException e:" + e2, new java.lang.Object[0]);
                }
            }
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<java.io.File> it = optFiles.iterator();
        while (it.hasNext()) {
            java.io.File next = it.next();
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "check dex optimizer file exist: %s, size %d", next.getPath(), java.lang.Long.valueOf(next.length()));
            if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(next) && !com.tencent.tinker.loader.shareutil.SharePatchFileUtil.shouldAcceptEvenIfIllegal(next)) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "final parallel dex optimizer file %s is not exist, return false", next.getName());
                arrayList.add(next);
            }
        }
        if (!arrayList.isEmpty()) {
            tinker.getPatchReporter().onPatchDexOptFail(file, arrayList, new com.tencent.tinker.loader.TinkerRuntimeException(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_DEX_OAT_EXIST_FAIL));
            return false;
        }
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            java.util.Iterator<java.io.File> it2 = optFiles.iterator();
            java.lang.Throwable th = null;
            while (it2.hasNext()) {
                java.io.File next2 = it2.next();
                if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.shouldAcceptEvenIfIllegal(next2)) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "check dex optimizer file format: %s, size %d", next2.getName(), java.lang.Long.valueOf(next2.length()));
                    try {
                        if (com.tencent.tinker.loader.shareutil.ShareElfFile.getFileTypeByMagic(next2) == 1) {
                            try {
                                com.tencent.tinker.commons.util.IOHelper.closeQuietly(new com.tencent.tinker.loader.shareutil.ShareElfFile(next2));
                            } finally {
                                th = th;
                                try {
                                } finally {
                                }
                            }
                        } else {
                            continue;
                        }
                    } catch (java.io.IOException unused) {
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                tinker.getPatchReporter().onPatchDexOptFail(file, arrayList, th == null ? new com.tencent.tinker.loader.TinkerRuntimeException(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_DEX_OAT_FORMAT_FAIL) : new com.tencent.tinker.loader.TinkerRuntimeException(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_DEX_OAT_FORMAT_FAIL, th));
                return false;
            }
        }
        return true;
    }
}
