package com.tencent.tinker.commons.util;

/* loaded from: classes.dex */
public final class DigestUtil {
    public DigestUtil() {
        throw new java.lang.UnsupportedOperationException();
    }

    public static long getCRC32(java.io.File file) throws java.lang.Throwable {
        java.io.BufferedInputStream bufferedInputStream = null;
        try {
            java.io.BufferedInputStream bufferedInputStream2 = new java.io.BufferedInputStream(new java.io.FileInputStream(file));
            try {
                long crc32 = getCRC32(bufferedInputStream2);
                com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream2);
                return crc32;
            } catch (java.lang.Throwable th) {
                th = th;
                bufferedInputStream = bufferedInputStream2;
                com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedInputStream);
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static long getCRC32(java.io.InputStream inputStream) throws java.io.IOException {
        java.util.zip.CRC32 crc32 = new java.util.zip.CRC32();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (i <= 0) {
                return crc32.getValue();
            }
            crc32.update(bArr, 0, i);
        }
    }

    public static long getCRC32(byte[] bArr, int i, int i2) {
        java.util.zip.CRC32 crc32 = new java.util.zip.CRC32();
        crc32.update(bArr, i, i2);
        return crc32.getValue();
    }
}
