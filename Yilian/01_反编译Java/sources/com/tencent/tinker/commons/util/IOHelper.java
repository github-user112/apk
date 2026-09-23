package com.tencent.tinker.commons.util;

/* loaded from: classes.dex */
public final class IOHelper {
    public static void closeQuietly(java.lang.Object obj) {
        if (obj == null) {
            return;
        }
        try {
            if (obj instanceof java.io.Closeable) {
                ((java.io.Closeable) obj).close();
            } else if (obj instanceof java.lang.AutoCloseable) {
                ((java.lang.AutoCloseable) obj).close();
            } else if (obj instanceof java.util.zip.ZipFile) {
                ((java.util.zip.ZipFile) obj).close();
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void copyStream(java.io.InputStream inputStream, java.io.OutputStream outputStream) throws java.io.IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (i <= 0) {
                outputStream.flush();
                return;
            }
            outputStream.write(bArr, 0, i);
        }
    }
}
