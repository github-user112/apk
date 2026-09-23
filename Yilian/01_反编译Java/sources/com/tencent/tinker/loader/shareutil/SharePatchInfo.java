package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class SharePatchInfo {
    public static final java.lang.String DEFAULT_DIR = "odex";
    public static final java.lang.String FINGER_PRINT = "print";
    public static final java.lang.String IS_PROTECTED_APP = "is_protected_app";
    public static final java.lang.String IS_REMOVE_INTERPRET_OAT_DIR = "is_remove_interpret_oat_dir";
    public static final int MAX_EXTRACT_ATTEMPTS = 2;
    public static final java.lang.String NEW_VERSION = "new";
    public static final java.lang.String OAT_DIR = "dir";
    public static final java.lang.String OLD_VERSION = "old";
    public static final java.lang.String TAG = "Tinker.PatchInfo";
    public static final java.lang.String USE_CUSTOM_FILE_PATCH = "use_custom_file_patch";
    public static final java.lang.String VERSION_TO_REMOVE = "version_to_remove";
    public java.lang.String fingerPrint;
    public boolean isProtectedApp;
    public boolean isRemoveInterpretOATDir;
    public java.lang.String newVersion;
    public java.lang.String oatDir;
    public java.lang.String oldVersion;
    public boolean useCustomPatch;
    public java.lang.String versionToRemove;

    public SharePatchInfo(java.lang.String str, java.lang.String str2, boolean z, boolean z2, java.lang.String str3, java.lang.String str4, java.lang.String str5, boolean z3) {
        this.oldVersion = str;
        this.newVersion = str2;
        this.isProtectedApp = z;
        this.versionToRemove = str3;
        this.fingerPrint = str4;
        this.oatDir = str5;
        this.isRemoveInterpretOATDir = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00bb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00eb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tencent.tinker.loader.shareutil.SharePatchInfo readAndCheckProperty(java.io.File r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.loader.shareutil.SharePatchInfo.readAndCheckProperty(java.io.File):com.tencent.tinker.loader.shareutil.SharePatchInfo");
    }

    public static com.tencent.tinker.loader.shareutil.SharePatchInfo readAndCheckPropertyWithLock(java.io.File file, java.io.File file2) {
        com.tencent.tinker.loader.shareutil.ShareFileLockHelper fileLock = null;
        if (file == null || file2 == null) {
            return null;
        }
        java.io.File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            try {
                fileLock = com.tencent.tinker.loader.shareutil.ShareFileLockHelper.getFileLock(file2);
                com.tencent.tinker.loader.shareutil.SharePatchInfo andCheckProperty = readAndCheckProperty(file);
                if (fileLock != null) {
                    try {
                        fileLock.close();
                    } catch (java.io.IOException e2) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "releaseInfoLock error", e2);
                    }
                }
                return andCheckProperty;
            } catch (java.lang.Throwable th) {
                if (fileLock != null) {
                    try {
                        fileLock.close();
                    } catch (java.io.IOException e3) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "releaseInfoLock error", e3);
                    }
                }
                throw th;
            }
        } catch (java.lang.Exception e4) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("readAndCheckPropertyWithLock fail", e4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x009d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean rewritePatchInfoFile(java.io.File r8, com.tencent.tinker.loader.shareutil.SharePatchInfo r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFile(java.io.File, com.tencent.tinker.loader.shareutil.SharePatchInfo):boolean");
    }

    public static boolean rewritePatchInfoFileWithLock(java.io.File file, com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo, java.io.File file2) {
        if (file == null || sharePatchInfo == null || file2 == null) {
            return false;
        }
        java.io.File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        com.tencent.tinker.loader.shareutil.ShareFileLockHelper fileLock = null;
        try {
            try {
                fileLock = com.tencent.tinker.loader.shareutil.ShareFileLockHelper.getFileLock(file2);
                boolean zRewritePatchInfoFile = rewritePatchInfoFile(file, sharePatchInfo);
                if (fileLock != null) {
                    try {
                        fileLock.close();
                    } catch (java.io.IOException e2) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "releaseInfoLock error", e2);
                    }
                }
                return zRewritePatchInfoFile;
            } catch (java.lang.Throwable th) {
                if (fileLock != null) {
                    try {
                        fileLock.close();
                    } catch (java.io.IOException e3) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "releaseInfoLock error", e3);
                    }
                }
                throw th;
            }
        } catch (java.lang.Exception e4) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("rewritePatchInfoFileWithLock fail", e4);
        }
    }
}
