package com.tencent.tinker.lib.patch;

/* loaded from: classes.dex */
public class BasePatchInternal {
    public static final java.lang.String ARKHOT_META_FILE = "assets/arkHot_meta.txt";
    public static final java.lang.String DEX_META_FILE = "assets/dex_meta.txt";
    public static final java.lang.String DEX_OPTIMIZE_PATH = "odex";
    public static final java.lang.String DEX_PATH = "dex";
    public static final int MAX_EXTRACT_ATTEMPTS = 2;
    public static final java.lang.String RES_META_FILE = "assets/res_meta.txt";
    public static final java.lang.String SO_META_FILE = "assets/so_meta.txt";
    public static final java.lang.String SO_PATH = "lib";
    public static final java.lang.String TAG = "Tinker.BasePatchInternal";
    public static final int TYPE_ARKHOT_SO = 8;
    public static final int TYPE_CLASS_N_DEX = 7;
    public static final int TYPE_DEX = 3;
    public static final int TYPE_LIBRARY = 5;
    public static final int TYPE_RESOURCE = 6;

    public static boolean extract(java.util.zip.ZipFile zipFile, java.util.zip.ZipEntry zipEntry, java.io.File file, java.lang.String str, boolean z) throws java.lang.Throwable {
        java.io.BufferedInputStream bufferedInputStream;
        int i = 0;
        boolean z2 = false;
        while (i < 2 && !z2) {
            i++;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("try Extracting ");
            sbO.append(file.getPath());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
            java.io.BufferedOutputStream bufferedOutputStream = null;
            try {
                bufferedInputStream = new java.io.BufferedInputStream(zipFile.getInputStream(zipEntry));
                try {
                    java.io.BufferedOutputStream bufferedOutputStream2 = new java.io.BufferedOutputStream(new java.io.FileOutputStream(file));
                    try {
                        file.setReadOnly();
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i2 = bufferedInputStream.read(bArr);
                            if (i2 <= 0) {
                                break;
                            }
                            bufferedOutputStream2.write(bArr, 0, i2);
                        }
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedOutputStream2);
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream);
                        boolean zVerifyDexFileMd5 = str != null ? z ? com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyDexFileMd5(file, str) : com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyFileMd5(file, str) : true;
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "isExtractionSuccessful: %b", java.lang.Boolean.valueOf(zVerifyDexFileMd5));
                        if (!zVerifyDexFileMd5 && (!file.delete() || file.exists())) {
                            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Failed to delete corrupted dex ");
                            sbO2.append(file.getPath());
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, sbO2.toString(), new java.lang.Object[0]);
                        }
                        z2 = zVerifyDexFileMd5;
                    } catch (java.lang.Throwable th) {
                        th = th;
                        bufferedOutputStream = bufferedOutputStream2;
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedOutputStream);
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream);
                        throw th;
                    }
                } catch (java.lang.Throwable th2) {
                    th = th2;
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
                bufferedInputStream = null;
            }
        }
        return z2;
    }

    public static int getMetaCorruptedCode(int i) {
        if (i == 3) {
            return -3;
        }
        if (i == 5) {
            return -4;
        }
        return i == 6 ? -8 : 0;
    }
}
