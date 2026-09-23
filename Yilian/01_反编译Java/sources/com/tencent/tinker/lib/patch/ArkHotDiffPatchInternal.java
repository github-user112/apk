package com.tencent.tinker.lib.patch;

/* loaded from: classes.dex */
public class ArkHotDiffPatchInternal extends com.tencent.tinker.lib.patch.BasePatchInternal {
    public static final java.lang.String TAG = "Tinker.ArkHotDiffPatchInternal";
    public static java.util.ArrayList<com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo> arkPatchList = new java.util.ArrayList<>();

    public static boolean extractArkHotLibrary(android.content.Context context, java.lang.String str, java.io.File file, int i) throws java.lang.Throwable {
        java.util.zip.ZipFile zipFile;
        java.lang.String str2;
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        java.util.zip.ZipFile zipFile2 = null;
        try {
            try {
                zipFile = new java.util.zip.ZipFile(file);
            } catch (java.lang.Throwable th) {
                th = th;
            }
        } catch (java.io.IOException e2) {
            e = e2;
        }
        try {
            java.util.Iterator<com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo> it = arkPatchList.iterator();
            while (it.hasNext()) {
                com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo next = it.next();
                java.lang.String str3 = next.path;
                if (str3.equals("")) {
                    str2 = next.name;
                } else {
                    str2 = str3 + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + next.name;
                }
                java.lang.String str4 = next.patchMd5;
                if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkIfMd5Valid(str4)) {
                    tinkerWith.getPatchReporter().onPatchPackageCheckFail(file, com.tencent.tinker.lib.patch.BasePatchInternal.getMetaCorruptedCode(i));
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                    return false;
                }
                java.io.File file2 = new java.io.File(str + next.name);
                if (!file2.exists()) {
                    file2.getParentFile().mkdirs();
                } else if (!str4.equals(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(file2))) {
                    file2.delete();
                }
                if (!com.tencent.tinker.lib.patch.BasePatchInternal.extract(zipFile, zipFile.getEntry(str2), file2, str4, false)) {
                    tinkerWith.getPatchReporter().onPatchTypeExtractFail(file, file2, next.name, i);
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                    return false;
                }
            }
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
            return true;
        } catch (java.io.IOException e3) {
            e = e3;
            throw new com.tencent.tinker.loader.TinkerRuntimeException("patch " + com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i) + " extract failed (" + e.getMessage() + ").", e);
        } catch (java.lang.Throwable th2) {
            th = th2;
            zipFile2 = zipFile;
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile2);
            throw th;
        }
    }

    public static boolean patchArkHotLibraryExtract(android.content.Context context, java.lang.String str, java.lang.String str2, java.io.File file) {
        java.lang.String strG = e.a.c.a.a.g(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, "arkHot", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
        arkPatchList.clear();
        com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo.parseDiffPatchInfo(str2, arkPatchList);
        return extractArkHotLibrary(context, strG, file, 8);
    }

    public static boolean tryRecoverArkHotLibrary(com.tencent.tinker.lib.tinker.Tinker tinker, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck, android.content.Context context, java.lang.String str, java.io.File file) {
        java.lang.String str2 = shareSecurityCheck.getMetaContentMap().get("assets/arkHot_meta.txt");
        if (str2 == null) {
            return true;
        }
        patchArkHotLibraryExtract(context, str, str2, file);
        return true;
    }
}
