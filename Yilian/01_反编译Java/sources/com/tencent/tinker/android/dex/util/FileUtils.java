package com.tencent.tinker.android.dex.util;

/* loaded from: classes.dex */
public final class FileUtils {
    public static boolean hasArchiveSuffix(java.lang.String str) {
        return str.endsWith(".zip") || str.endsWith(com.tencent.tinker.loader.shareutil.ShareConstants.JAR_SUFFIX) || str.endsWith(".apk");
    }

    public static byte[] readFile(java.io.File file) throws java.lang.Throwable {
        if (!file.exists()) {
            throw new java.lang.RuntimeException(file + ": file not found");
        }
        if (!file.isFile()) {
            throw new java.lang.RuntimeException(file + ": not a file");
        }
        if (!file.canRead()) {
            throw new java.lang.RuntimeException(file + ": file not readable");
        }
        long length = file.length();
        int i = (int) length;
        if (i != length) {
            throw new java.lang.RuntimeException(file + ": file too long");
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(i);
        java.io.BufferedInputStream bufferedInputStream = null;
        try {
            java.io.BufferedInputStream bufferedInputStream2 = new java.io.BufferedInputStream(new java.io.FileInputStream(file));
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = bufferedInputStream2.read(bArr);
                    if (i2 > 0) {
                        byteArrayOutputStream.write(bArr, 0, i2);
                    } else {
                        try {
                            break;
                        } catch (java.lang.Exception unused) {
                        }
                    }
                }
                bufferedInputStream2.close();
                return byteArrayOutputStream.toByteArray();
            } catch (java.lang.Throwable th) {
                th = th;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (java.lang.Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static byte[] readFile(java.lang.String str) {
        return readFile(new java.io.File(str));
    }

    public static byte[] readStream(java.io.InputStream inputStream) {
        return readStream(inputStream, 32768);
    }

    public static byte[] readStream(java.io.InputStream inputStream, int i) throws java.io.IOException {
        if (i <= 0) {
            i = 32768;
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(i);
        byte[] bArr = new byte[8192];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 <= 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }
}
