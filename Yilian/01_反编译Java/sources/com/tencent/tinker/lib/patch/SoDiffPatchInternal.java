package com.tencent.tinker.lib.patch;

/* loaded from: classes.dex */
public class SoDiffPatchInternal extends com.tencent.tinker.lib.patch.BasePatchInternal {
    public static final java.lang.String TAG = "Tinker.BsDiffPatchInternal";

    public static boolean extractBsDiffInternals(android.content.Context context, java.lang.String str, java.lang.String str2, java.io.File file, int i, boolean z) throws java.io.IOException {
        java.util.zip.ZipFile zipFile;
        java.util.zip.ZipFile zipFile2;
        java.util.zip.ZipFile zipFile3;
        java.lang.String str3;
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter;
        int metaCorruptedCode;
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter2;
        java.lang.String str4;
        java.io.InputStream inputStream;
        java.io.InputStream inputStream2;
        java.lang.String str5 = str;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo.parseDiffPatchInfo(str2, arrayList);
        if (arrayList.isEmpty()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "extract patch list is empty! type:%s:", com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i));
            return true;
        }
        java.io.File file2 = new java.io.File(str5);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        android.content.pm.ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "applicationInfo == null!!!!", new java.lang.Object[0]);
            return false;
        }
        try {
            zipFile3 = new java.util.zip.ZipFile(applicationInfo.sourceDir);
            try {
                zipFile = new java.util.zip.ZipFile(file);
            } catch (java.lang.Throwable th) {
                th = th;
                zipFile2 = zipFile3;
                zipFile = null;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            zipFile = null;
            zipFile2 = null;
        }
        try {
            java.util.Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo shareBsDiffPatchInfo = (com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo) it.next();
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                if (shareBsDiffPatchInfo.path.equals("")) {
                    str3 = shareBsDiffPatchInfo.name;
                } else {
                    str3 = shareBsDiffPatchInfo.path + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + shareBsDiffPatchInfo.name;
                }
                java.lang.String str6 = shareBsDiffPatchInfo.md5;
                if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkIfMd5Valid(str6)) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    java.util.Iterator it2 = it;
                    sb.append(shareBsDiffPatchInfo.path);
                    sb.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                    sb.append(shareBsDiffPatchInfo.name);
                    java.io.File file3 = new java.io.File(str5 + sb.toString());
                    if (!file3.exists()) {
                        file3.getParentFile().mkdirs();
                    } else if (str6.equals(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(file3))) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "bsdiff file %s is already exist, and md5 match, just continue", file3.getPath());
                        it = it2;
                    } else {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "have a mismatch corrupted dex " + file3.getPath(), new java.lang.Object[0]);
                        file3.delete();
                    }
                    java.lang.String str7 = shareBsDiffPatchInfo.patchMd5;
                    java.util.zip.ZipEntry entry = zipFile.getEntry(str3);
                    if (entry == null) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch entry is null. path:" + str3, new java.lang.Object[0]);
                        patchReporter2 = tinkerWith.getPatchReporter();
                        str4 = shareBsDiffPatchInfo.name;
                    } else if (str7.equals("0")) {
                        if (com.tencent.tinker.lib.patch.BasePatchInternal.extract(zipFile, entry, file3, str6, false)) {
                            str5 = str;
                            it = it2;
                        } else {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "Failed to extract file " + file3.getPath(), new java.lang.Object[0]);
                            patchReporter2 = tinkerWith.getPatchReporter();
                            str4 = shareBsDiffPatchInfo.name;
                        }
                    } else if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkIfMd5Valid(str7)) {
                        java.util.zip.ZipEntry entry2 = zipFile3.getEntry(str3);
                        if (entry2 == null) {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "apk entry is null. path:" + str3, new java.lang.Object[0]);
                            patchReporter2 = tinkerWith.getPatchReporter();
                            str4 = shareBsDiffPatchInfo.name;
                        } else {
                            java.lang.String str8 = shareBsDiffPatchInfo.rawCrc;
                            java.lang.String strValueOf = java.lang.String.valueOf(entry2.getCrc());
                            if (strValueOf.equals(str8)) {
                                try {
                                    java.io.InputStream inputStream3 = zipFile3.getInputStream(entry2);
                                    try {
                                        inputStream = zipFile.getInputStream(entry);
                                        try {
                                            com.tencent.tinker.lib.filepatch.FilePatchFactory.getFilePatcher(context, z).patchFast(inputStream3, inputStream, file3);
                                            com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream3);
                                            com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream);
                                            if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyFileMd5(file3, str6)) {
                                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "Failed to recover diff file " + file3.getPath(), new java.lang.Object[0]);
                                                tinkerWith.getPatchReporter().onPatchTypeExtractFail(file, file3, shareBsDiffPatchInfo.name, i);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(file3);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                                return false;
                                            }
                                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "success recover bsdiff file: %s, use time: %d", file3.getPath(), java.lang.Long.valueOf(java.lang.System.currentTimeMillis() - jCurrentTimeMillis));
                                            str5 = str;
                                            it = it2;
                                        } catch (java.lang.Throwable th3) {
                                            th = th3;
                                            inputStream2 = inputStream3;
                                            com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream2);
                                            com.tencent.tinker.commons.util.IOHelper.closeQuietly(inputStream);
                                            throw th;
                                        }
                                    } catch (java.lang.Throwable th4) {
                                        th = th4;
                                        inputStream2 = inputStream3;
                                        inputStream = null;
                                    }
                                } catch (java.lang.Throwable th5) {
                                    th = th5;
                                    inputStream = null;
                                    inputStream2 = null;
                                }
                            } else {
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "apk entry %s crc is not equal, expect crc: %s, got crc: %s", str3, str8, strValueOf);
                                patchReporter2 = tinkerWith.getPatchReporter();
                                str4 = shareBsDiffPatchInfo.name;
                            }
                        }
                    } else {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "meta file md5 mismatch, type:%s, name: %s, md5: %s", com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i), shareBsDiffPatchInfo.name, str7);
                        patchReporter = tinkerWith.getPatchReporter();
                        metaCorruptedCode = com.tencent.tinker.lib.patch.BasePatchInternal.getMetaCorruptedCode(i);
                    }
                    patchReporter2.onPatchTypeExtractFail(file, file3, str4, i);
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                    return false;
                }
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "meta file md5 mismatch, type:%s, name: %s, md5: %s", com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i), shareBsDiffPatchInfo.name, shareBsDiffPatchInfo.md5);
                patchReporter = tinkerWith.getPatchReporter();
                metaCorruptedCode = com.tencent.tinker.lib.patch.BasePatchInternal.getMetaCorruptedCode(i);
                patchReporter.onPatchPackageCheckFail(file, metaCorruptedCode);
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                return false;
            }
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile3);
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
            return true;
        } catch (java.lang.Throwable th6) {
            th = th6;
            zipFile2 = zipFile3;
            try {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("patch " + com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i) + " extract failed (" + th.getMessage() + ").", th);
            } catch (java.lang.Throwable th7) {
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile2);
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                throw th7;
            }
        }
    }

    public static boolean patchLibraryExtractViaBsDiff(android.content.Context context, java.lang.String str, java.lang.String str2, java.io.File file, boolean z) {
        return extractBsDiffInternals(context, e.a.c.a.a.g(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, "lib", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR), str2, file, 5, z);
    }

    public static boolean tryRecoverLibraryFiles(com.tencent.tinker.lib.tinker.Tinker tinker, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck, android.content.Context context, java.lang.String str, java.io.File file, boolean z, com.tencent.tinker.lib.service.PatchResult patchResult) {
        if (!tinker.isEnabledForNativeLib()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch recover, library is not enabled", new java.lang.Object[0]);
            return true;
        }
        java.lang.String str2 = shareSecurityCheck.getMetaContentMap().get("assets/so_meta.txt");
        if (str2 == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "patch recover, library is not contained", new java.lang.Object[0]);
            return true;
        }
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        boolean zPatchLibraryExtractViaBsDiff = patchLibraryExtractViaBsDiff(context, str, str2, file, z);
        long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime() - jElapsedRealtime;
        patchResult.soCostTime = jElapsedRealtime2;
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "recover lib result:%b, cost:%d", java.lang.Boolean.valueOf(zPatchLibraryExtractViaBsDiff), java.lang.Long.valueOf(jElapsedRealtime2));
        return zPatchLibraryExtractViaBsDiff;
    }
}
