package com.tencent.tinker.lib.patch;

/* loaded from: classes.dex */
public class ResDiffPatchInternal extends com.tencent.tinker.lib.patch.BasePatchInternal {
    public static final java.lang.String TAG = "Tinker.ResDiffPatchInternal";

    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v10 */
    public static boolean checkAndExtractResourceLargeFile(android.content.Context context, java.lang.String str, java.io.File file, java.io.File file2, java.io.File file3, com.tencent.tinker.loader.shareutil.ShareResPatchInfo shareResPatchInfo, int i, boolean z) throws java.io.IOException {
        java.util.zip.ZipFile zipFile;
        java.util.zip.ZipFile zipFile2;
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter;
        java.io.File file4;
        java.io.InputStream inputStream;
        java.io.InputStream inputStream2;
        java.io.File file5 = file2;
        com.tencent.tinker.loader.shareutil.ShareResPatchInfo shareResPatchInfo2 = shareResPatchInfo;
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        try {
            java.util.zip.ZipFile zipFile3 = new java.util.zip.ZipFile(str);
            try {
                java.util.zip.ZipEntry entry = zipFile3.getEntry(com.tencent.tinker.loader.shareutil.ShareConstants.RES_ARSC);
                java.io.File file6 = new java.io.File(file, com.tencent.tinker.loader.shareutil.ShareConstants.RES_ARSC);
                ?? r13 = 0;
                if (entry == null) {
                    try {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "resources apk entry is null. path:resources.arsc", new java.lang.Object[0]);
                        tinkerWith.getPatchReporter().onPatchTypeExtractFail(file3, file6, com.tencent.tinker.loader.shareutil.ShareConstants.RES_ARSC, i);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(null);
                        return false;
                    } catch (java.lang.Throwable th) {
                        th = th;
                        zipFile = null;
                    }
                } else {
                    java.lang.String strValueOf = java.lang.String.valueOf(entry.getCrc());
                    if (!strValueOf.equals(shareResPatchInfo2.arscBaseCrc)) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "resources.arsc's crc is not equal, expect crc: %s, got crc: %s", shareResPatchInfo2.arscBaseCrc, strValueOf);
                        tinkerWith.getPatchReporter().onPatchTypeExtractFail(file3, file6, com.tencent.tinker.loader.shareutil.ShareConstants.RES_ARSC, i);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(null);
                        return false;
                    }
                    if (shareResPatchInfo2.largeModRes.isEmpty() && shareResPatchInfo2.storeRes.isEmpty()) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "no large modify or store resources, just return", new java.lang.Object[0]);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(null);
                        return true;
                    }
                    zipFile = new java.util.zip.ZipFile(file3);
                    try {
                        for (java.lang.String str2 : shareResPatchInfo2.storeRes.keySet()) {
                            long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                            java.io.File file7 = new java.io.File(file5, str2);
                            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.ensureFileDirectory(file7);
                            java.util.zip.ZipEntry entry2 = zipFile.getEntry(str2);
                            if (entry2 == null) {
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "store patch entry is null. path:" + str2, new java.lang.Object[0]);
                                tinkerWith.getPatchReporter().onPatchTypeExtractFail(file3, file7, str2, i);
                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                return false;
                            }
                            com.tencent.tinker.lib.patch.BasePatchInternal.extract(zipFile, entry2, file7, null, false);
                            if (entry2.getSize() != file7.length()) {
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "resource meta file size mismatch, type:%s, name: %s, patch size: %d, file size; %d", com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i), str2, java.lang.Long.valueOf(entry2.getSize()), java.lang.Long.valueOf(file7.length()));
                                tinkerWith.getPatchReporter().onPatchPackageCheckFail(file3, com.tencent.tinker.lib.patch.BasePatchInternal.getMetaCorruptedCode(i));
                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                return false;
                            }
                            shareResPatchInfo2.storeRes.put(str2, file7);
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "success recover store file:%s, file size:%d, use time:%d", file7.getPath(), java.lang.Long.valueOf(file7.length()), java.lang.Long.valueOf(java.lang.System.currentTimeMillis() - jCurrentTimeMillis2));
                        }
                        java.util.Iterator<java.lang.String> it = shareResPatchInfo2.largeModRes.iterator();
                        while (it.hasNext()) {
                            java.lang.String next = it.next();
                            long jCurrentTimeMillis3 = java.lang.System.currentTimeMillis();
                            com.tencent.tinker.loader.shareutil.ShareResPatchInfo.LargeModeInfo largeModeInfo = shareResPatchInfo2.largeModMap.get(next);
                            if (largeModeInfo == null) {
                                java.lang.Object[] objArr = new java.lang.Object[2];
                                objArr[r13] = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i);
                                objArr[1] = next;
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "resource not found largeModeInfo, type:%s, name: %s", objArr);
                                tinkerWith.getPatchReporter().onPatchPackageCheckFail(file3, com.tencent.tinker.lib.patch.BasePatchInternal.getMetaCorruptedCode(i));
                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                return r13;
                            }
                            java.io.File file8 = new java.io.File(file5, next);
                            largeModeInfo.file = file8;
                            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.ensureFileDirectory(file8);
                            if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkIfMd5Valid(largeModeInfo.md5)) {
                                java.util.zip.ZipEntry entry3 = zipFile.getEntry(next);
                                if (entry3 == null) {
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "large mod patch entry is null. path:" + next, new java.lang.Object[0]);
                                    patchReporter = tinkerWith.getPatchReporter();
                                    file4 = largeModeInfo.file;
                                } else {
                                    java.util.zip.ZipEntry entry4 = zipFile3.getEntry(next);
                                    if (entry4 == null) {
                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "resources apk entry is null. path:" + next, new java.lang.Object[0]);
                                        patchReporter = tinkerWith.getPatchReporter();
                                        file4 = largeModeInfo.file;
                                    } else {
                                        try {
                                            java.io.InputStream inputStream3 = zipFile3.getInputStream(entry4);
                                            try {
                                                inputStream2 = zipFile.getInputStream(entry3);
                                                long j = jCurrentTimeMillis;
                                                java.util.Iterator<java.lang.String> it2 = it;
                                                try {
                                                    com.tencent.tinker.lib.filepatch.FilePatchFactory.getFilePatcher(context, z).patchFast(inputStream3, inputStream2, largeModeInfo.file);
                                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream3);
                                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream2);
                                                    if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyFileMd5(largeModeInfo.file, largeModeInfo.md5)) {
                                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "success recover large modify file:%s, file size:%d, use time:%d", largeModeInfo.file.getPath(), java.lang.Long.valueOf(largeModeInfo.file.length()), java.lang.Long.valueOf(java.lang.System.currentTimeMillis() - jCurrentTimeMillis3));
                                                        file5 = file2;
                                                        shareResPatchInfo2 = shareResPatchInfo;
                                                        it = it2;
                                                        jCurrentTimeMillis = j;
                                                        r13 = 0;
                                                    } else {
                                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "Failed to recover large modify file:%s", largeModeInfo.file.getPath());
                                                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(largeModeInfo.file);
                                                        patchReporter = tinkerWith.getPatchReporter();
                                                        file4 = largeModeInfo.file;
                                                    }
                                                } catch (java.lang.Throwable th2) {
                                                    th = th2;
                                                    inputStream = inputStream3;
                                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream);
                                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream2);
                                                    throw th;
                                                }
                                            } catch (java.lang.Throwable th3) {
                                                th = th3;
                                                inputStream = inputStream3;
                                                inputStream2 = null;
                                                com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream);
                                                com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream2);
                                                throw th;
                                            }
                                        } catch (java.lang.Throwable th4) {
                                            th = th4;
                                            inputStream = null;
                                        }
                                    }
                                }
                                patchReporter.onPatchTypeExtractFail(file3, file4, next, i);
                            } else {
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "resource meta file md5 mismatch, type:%s, name: %s, md5: %s", com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i), next, largeModeInfo.md5);
                                tinkerWith.getPatchReporter().onPatchPackageCheckFail(file3, com.tencent.tinker.lib.patch.BasePatchInternal.getMetaCorruptedCode(i));
                            }
                            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                            return false;
                        }
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "success recover all large modify and store resources use time:%d", java.lang.Long.valueOf(java.lang.System.currentTimeMillis() - jCurrentTimeMillis));
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                        return true;
                    } catch (java.lang.Throwable th5) {
                        th = th5;
                    }
                }
                zipFile2 = zipFile3;
            } catch (java.lang.Throwable th6) {
                th = th6;
                zipFile2 = zipFile3;
                zipFile = null;
            }
        } catch (java.lang.Throwable th7) {
            th = th7;
            zipFile = null;
            zipFile2 = null;
        }
        try {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("patch " + com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i) + " extract failed (" + th.getMessage() + ").", th);
        } catch (java.lang.Throwable th8) {
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile2);
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
            throw th8;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3 */
    public static boolean extractResourceDiffInternals(android.content.Context context, java.lang.String str, java.lang.String str2, java.io.File file, int i, boolean z) throws java.lang.NumberFormatException {
        com.tencent.tinker.ziputils.ziputil.TinkerZipOutputStream tinkerZipOutputStream;
        com.tencent.tinker.ziputils.ziputil.TinkerZipFile tinkerZipFile;
        java.io.File file2 = file;
        int i2 = i;
        com.tencent.tinker.loader.shareutil.ShareResPatchInfo shareResPatchInfo = new com.tencent.tinker.loader.shareutil.ShareResPatchInfo();
        com.tencent.tinker.loader.shareutil.ShareResPatchInfo.parseAllResPatchInfo(str2, shareResPatchInfo);
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "res dir: %s, meta: %s", str, shareResPatchInfo.toString());
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkIfMd5Valid(shareResPatchInfo.resArscMd5)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "resource meta file md5 mismatch, type:%s, md5: %s", com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i), shareResPatchInfo.resArscMd5);
            tinkerWith.getPatchReporter().onPatchPackageCheckFail(file2, com.tencent.tinker.lib.patch.BasePatchInternal.getMetaCorruptedCode(i));
            return false;
        }
        java.io.File file3 = new java.io.File(str);
        java.io.File file4 = new java.io.File(file3, "res_temp");
        java.io.File file5 = new java.io.File(file3, "resources.apk");
        if (!file5.exists()) {
            file5.getParentFile().mkdirs();
        } else {
            if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkResourceArscMd5(file5, shareResPatchInfo.resArscMd5)) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "resource file %s is already exist, and md5 match, just return true", file5.getPath());
                return true;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("have a mismatch corrupted resource ");
            sbO.append(file5.getPath());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, sbO.toString(), new java.lang.Object[0]);
            file5.delete();
        }
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "applicationInfo == null!!!!", new java.lang.Object[0]);
                return false;
            }
            java.lang.String str3 = applicationInfo.sourceDir;
            if (!checkAndExtractResourceLargeFile(context, str3, file3, file4, file, shareResPatchInfo, i, z)) {
                return false;
            }
            com.tencent.tinker.ziputils.ziputil.TinkerZipOutputStream tinkerZipOutputStream2 = null;
            try {
                try {
                    com.tencent.tinker.ziputils.ziputil.TinkerZipOutputStream tinkerZipOutputStream3 = new com.tencent.tinker.ziputils.ziputil.TinkerZipOutputStream(new java.io.BufferedOutputStream(new java.io.FileOutputStream(file5)));
                    try {
                        file5.setReadOnly();
                        com.tencent.tinker.ziputils.ziputil.TinkerZipFile tinkerZipFile2 = new com.tencent.tinker.ziputils.ziputil.TinkerZipFile(str3);
                        try {
                            tinkerZipFile = new com.tencent.tinker.ziputils.ziputil.TinkerZipFile(file2);
                            try {
                                java.util.Enumeration<? extends com.tencent.tinker.ziputils.ziputil.TinkerZipEntry> enumerationEntries = tinkerZipFile2.entries();
                                int i3 = 0;
                                while (enumerationEntries.hasMoreElements()) {
                                    com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntryNextElement = enumerationEntries.nextElement();
                                    if (tinkerZipEntryNextElement == null) {
                                        throw new com.tencent.tinker.loader.TinkerRuntimeException("zipEntry is null when get from oldApk");
                                    }
                                    java.lang.String name = tinkerZipEntryNextElement.getName();
                                    if (!name.contains("../") && com.tencent.tinker.loader.shareutil.ShareResPatchInfo.checkFileInPattern(shareResPatchInfo.patterns, name) && !shareResPatchInfo.deleteRes.contains(name) && !shareResPatchInfo.modRes.contains(name) && !shareResPatchInfo.largeModRes.contains(name) && !name.equals(com.tencent.tinker.loader.shareutil.ShareConstants.RES_MANIFEST)) {
                                        com.tencent.tinker.ziputils.ziputil.TinkerZipUtil.extractTinkerEntry(tinkerZipFile2, tinkerZipEntryNextElement, tinkerZipOutputStream3);
                                        i3++;
                                    }
                                }
                                com.tencent.tinker.ziputils.ziputil.TinkerZipEntry entry = tinkerZipFile2.getEntry(com.tencent.tinker.loader.shareutil.ShareConstants.RES_MANIFEST);
                                if (entry == null) {
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "manifest patch entry is null. path:AndroidManifest.xml", new java.lang.Object[0]);
                                    tinkerWith.getPatchReporter().onPatchTypeExtractFail(file2, file5, com.tencent.tinker.loader.shareutil.ShareConstants.RES_MANIFEST, i2);
                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipOutputStream3);
                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile2);
                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(file4);
                                    return false;
                                }
                                com.tencent.tinker.ziputils.ziputil.TinkerZipUtil.extractTinkerEntry(tinkerZipFile2, entry, tinkerZipOutputStream3);
                                int i4 = i3 + 1;
                                java.util.Iterator<java.lang.String> it = shareResPatchInfo.largeModRes.iterator();
                                int i5 = 0;
                                while (it.hasNext()) {
                                    try {
                                        java.lang.String next = it.next();
                                        com.tencent.tinker.ziputils.ziputil.TinkerZipEntry entry2 = tinkerZipFile2.getEntry(next);
                                        if (entry2 == null) {
                                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "large patch entry is null. path:" + next, new java.lang.Object[i5]);
                                            tinkerWith.getPatchReporter().onPatchTypeExtractFail(file2, file5, next, i2);
                                            com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipOutputStream3);
                                            com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile2);
                                            com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile);
                                            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(file4);
                                            return i5;
                                        }
                                        com.tencent.tinker.loader.shareutil.ShareResPatchInfo.LargeModeInfo largeModeInfo = shareResPatchInfo.largeModMap.get(next);
                                        com.tencent.tinker.ziputils.ziputil.TinkerZipUtil.extractLargeModifyFile(entry2, largeModeInfo.file, largeModeInfo.crc, tinkerZipOutputStream3);
                                        i4++;
                                        i5 = 0;
                                        file2 = file;
                                        i2 = i;
                                    } catch (java.lang.Throwable th) {
                                        th = th;
                                        tinkerZipOutputStream2 = tinkerZipFile2;
                                        tinkerZipOutputStream = tinkerZipOutputStream2;
                                        tinkerZipOutputStream2 = tinkerZipOutputStream3;
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipOutputStream2);
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipOutputStream);
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile);
                                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(file4);
                                        throw th;
                                    }
                                }
                                java.util.Iterator<java.lang.String> it2 = shareResPatchInfo.addRes.iterator();
                                while (it2.hasNext()) {
                                    try {
                                        try {
                                            java.lang.String next2 = it2.next();
                                            com.tencent.tinker.ziputils.ziputil.TinkerZipEntry entry3 = tinkerZipFile.getEntry(next2);
                                            if (entry3 == null) {
                                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "add patch entry is null. path:" + next2, new java.lang.Object[0]);
                                                tinkerWith.getPatchReporter().onPatchTypeExtractFail(file, file5, next2, i);
                                                com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipOutputStream3);
                                                com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile2);
                                                com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(file4);
                                                return false;
                                            }
                                            file2 = i;
                                            if (shareResPatchInfo.storeRes.containsKey(next2)) {
                                                com.tencent.tinker.ziputils.ziputil.TinkerZipUtil.extractLargeModifyFile(entry3, shareResPatchInfo.storeRes.get(next2), entry3.getCrc(), tinkerZipOutputStream3);
                                            } else {
                                                com.tencent.tinker.ziputils.ziputil.TinkerZipUtil.extractTinkerEntry(tinkerZipFile, entry3, tinkerZipOutputStream3);
                                            }
                                            i4++;
                                        } catch (java.lang.Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (java.lang.Throwable th3) {
                                        th = th3;
                                        tinkerZipOutputStream2 = tinkerZipFile2;
                                        tinkerZipOutputStream = tinkerZipOutputStream2;
                                        tinkerZipOutputStream2 = tinkerZipOutputStream3;
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipOutputStream2);
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipOutputStream);
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile);
                                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(file4);
                                        throw th;
                                    }
                                }
                                java.util.Iterator<java.lang.String> it3 = shareResPatchInfo.modRes.iterator();
                                while (it3.hasNext()) {
                                    java.lang.String next3 = it3.next();
                                    com.tencent.tinker.ziputils.ziputil.TinkerZipEntry entry4 = tinkerZipFile.getEntry(next3);
                                    if (entry4 == null) {
                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "mod patch entry is null. path:" + next3, new java.lang.Object[0]);
                                        tinkerWith.getPatchReporter().onPatchTypeExtractFail(file, file5, next3, i);
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipOutputStream3);
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile2);
                                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile);
                                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(file4);
                                        return false;
                                    }
                                    if (shareResPatchInfo.storeRes.containsKey(next3)) {
                                        com.tencent.tinker.ziputils.ziputil.TinkerZipUtil.extractLargeModifyFile(entry4, shareResPatchInfo.storeRes.get(next3), entry4.getCrc(), tinkerZipOutputStream3);
                                    } else {
                                        com.tencent.tinker.ziputils.ziputil.TinkerZipUtil.extractTinkerEntry(tinkerZipFile, entry4, tinkerZipOutputStream3);
                                    }
                                    i4++;
                                }
                                tinkerZipOutputStream3.setComment(tinkerZipFile2.getComment());
                                try {
                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipOutputStream3);
                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile2);
                                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(tinkerZipFile);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(file4);
                                    if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkResourceArscMd5(file5, shareResPatchInfo.resArscMd5)) {
                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "final new resource file:%s, entry count:%d, size:%d", file5.getAbsolutePath(), java.lang.Integer.valueOf(i4), java.lang.Long.valueOf(file5.length()));
                                        return true;
                                    }
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "check final new resource file fail path:%s, entry count:%d, size:%d", file5.getAbsolutePath(), java.lang.Integer.valueOf(i4), java.lang.Long.valueOf(file5.length()));
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(file5);
                                    tinkerWith.getPatchReporter().onPatchTypeExtractFail(file, file5, "resources.apk", i);
                                    return false;
                                } catch (java.lang.Throwable th4) {
                                    th = th4;
                                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("patch ");
                                    sbO2.append(com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i));
                                    sbO2.append(" extract failed (");
                                    sbO2.append(th.getMessage());
                                    sbO2.append(").");
                                    throw new com.tencent.tinker.loader.TinkerRuntimeException(sbO2.toString(), th);
                                }
                            } catch (java.lang.Throwable th5) {
                                th = th5;
                            }
                        } catch (java.lang.Throwable th6) {
                            th = th6;
                            tinkerZipFile = null;
                        }
                    } catch (java.lang.Throwable th7) {
                        th = th7;
                        tinkerZipFile = null;
                    }
                } catch (java.lang.Throwable th8) {
                    th = th8;
                    tinkerZipOutputStream = null;
                    tinkerZipFile = null;
                }
            } catch (java.lang.Throwable th9) {
                th = th9;
            }
        } catch (java.lang.Throwable th10) {
            th = th10;
        }
    }

    public static boolean patchResourceExtractViaResourceDiff(android.content.Context context, java.lang.String str, java.lang.String str2, java.io.File file, boolean z) {
        if (extractResourceDiffInternals(context, e.a.c.a.a.g(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, "res", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR), str2, file, 6, z)) {
            return true;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch recover, extractDiffInternals fail", new java.lang.Object[0]);
        return false;
    }

    public static boolean tryRecoverResourceFiles(com.tencent.tinker.lib.tinker.Tinker tinker, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck, android.content.Context context, java.lang.String str, java.io.File file, boolean z, com.tencent.tinker.lib.service.PatchResult patchResult) {
        if (!tinker.isEnabledForResource()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch recover, resource is not enabled", new java.lang.Object[0]);
            return true;
        }
        java.lang.String str2 = shareSecurityCheck.getMetaContentMap().get("assets/res_meta.txt");
        if (str2 == null || str2.length() == 0) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch recover, resource is not contained", new java.lang.Object[0]);
            return true;
        }
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        boolean zPatchResourceExtractViaResourceDiff = patchResourceExtractViaResourceDiff(context, str, str2, file, z);
        long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime() - jElapsedRealtime;
        patchResult.resCostTime = jElapsedRealtime2;
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "recover resource result:%b, cost:%d", java.lang.Boolean.valueOf(zPatchResourceExtractViaResourceDiff), java.lang.Long.valueOf(jElapsedRealtime2));
        return zPatchResourceExtractViaResourceDiff;
    }
}
