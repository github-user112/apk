package com.tencent.tinker.ziputils.ziputil;

/* loaded from: classes.dex */
public class TinkerZipUtil {
    public static final int BUFFER_SIZE = 4096;

    public static void extractLargeModifyFile(com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry, java.io.File file, long j, com.tencent.tinker.ziputils.ziputil.TinkerZipOutputStream tinkerZipOutputStream) throws java.lang.Throwable {
        com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry2 = new com.tencent.tinker.ziputils.ziputil.TinkerZipEntry(tinkerZipEntry);
        tinkerZipEntry2.setMethod(0);
        tinkerZipEntry2.setSize(file.length());
        tinkerZipEntry2.setCompressedSize(file.length());
        tinkerZipEntry2.setCrc(j);
        java.io.BufferedInputStream bufferedInputStream = null;
        try {
            java.io.BufferedInputStream bufferedInputStream2 = new java.io.BufferedInputStream(new java.io.FileInputStream(file));
            try {
                tinkerZipOutputStream.putNextEntry(new com.tencent.tinker.ziputils.ziputil.TinkerZipEntry(tinkerZipEntry2));
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = bufferedInputStream2.read(bArr);
                    if (i == -1) {
                        tinkerZipOutputStream.closeEntry();
                        bufferedInputStream2.close();
                        return;
                    }
                    tinkerZipOutputStream.write(bArr, 0, i);
                }
            } catch (java.lang.Throwable th) {
                th = th;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static void extractTinkerEntry(com.tencent.tinker.ziputils.ziputil.TinkerZipFile tinkerZipFile, com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry, com.tencent.tinker.ziputils.ziputil.TinkerZipOutputStream tinkerZipOutputStream) throws java.lang.Throwable {
        java.io.InputStream inputStream;
        try {
            inputStream = tinkerZipFile.getInputStream(tinkerZipEntry);
            try {
                tinkerZipOutputStream.putNextEntry(new com.tencent.tinker.ziputils.ziputil.TinkerZipEntry(tinkerZipEntry));
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i == -1) {
                        tinkerZipOutputStream.closeEntry();
                        inputStream.close();
                        return;
                    }
                    tinkerZipOutputStream.write(bArr, 0, i);
                }
            } catch (java.lang.Throwable th) {
                th = th;
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    public static boolean validateZipEntryName(java.io.File file, java.lang.String str) {
        if (str != null && !str.isEmpty()) {
            try {
                java.lang.String canonicalPath = file.getCanonicalPath();
                return new java.io.File(file, str).getCanonicalPath().startsWith(canonicalPath + java.io.File.separator);
            } catch (java.lang.Throwable unused) {
            }
        }
        return false;
    }
}
