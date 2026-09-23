package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class IoUtils {
    public static final int BUFF_SIZE = 4096;
    public static final int MAX_SIZE = 16777216;

    public static void close(android.database.Cursor cursor) {
        if (cursor != null) {
            cursor.close();
        }
    }

    public static void closeSecure(java.io.Closeable closeable) throws java.io.IOException {
        if (closeable == null) {
            com.huawei.hms.framework.common.Logger.w("IOUtil", "closeable is null");
            return;
        }
        try {
            closeable.close();
        } catch (java.io.IOException e2) {
            com.huawei.hms.framework.common.Logger.w("IOUtil", "closeSecure IOException", e2);
        }
    }

    public static void closeSecure(java.io.InputStream inputStream) throws java.io.IOException {
        closeSecure((java.io.Closeable) inputStream);
    }

    public static void closeSecure(java.io.OutputStream outputStream) throws java.io.IOException {
        closeSecure((java.io.Closeable) outputStream);
    }

    public static void closeSecure(java.io.Reader reader) throws java.io.IOException {
        closeSecure((java.io.Closeable) reader);
    }

    public static void closeSecure(java.io.Writer writer) throws java.io.IOException {
        closeSecure((java.io.Closeable) writer);
    }

    public static long copy(java.io.InputStream inputStream, java.io.OutputStream outputStream) throws java.io.IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (-1 == i) {
                return j;
            }
            if (j > 16777216) {
                throw new java.io.IOException("input data too large for byte.");
            }
            outputStream.write(bArr, 0, i);
            j += i;
        }
    }

    public static byte[] toByteArray(java.io.InputStream inputStream) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
