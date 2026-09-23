package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class DataSourceUtil {
    public static void closeQuietly(com.google.android.exoplayer2.upstream.DataSource dataSource) {
        if (dataSource != null) {
            try {
                dataSource.close();
            } catch (java.io.IOException unused) {
            }
        }
    }

    public static byte[] readExactly(com.google.android.exoplayer2.upstream.DataSource dataSource, int i) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = dataSource.read(bArr, i2, i - i2);
            if (i3 == -1) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder(56);
                sb.append("Not enough data could be read: ");
                sb.append(i2);
                sb.append(" < ");
                sb.append(i);
                throw new java.lang.IllegalStateException(sb.toString());
            }
            i2 += i3;
        }
        return bArr;
    }

    public static byte[] readToEnd(com.google.android.exoplayer2.upstream.DataSource dataSource) {
        byte[] bArrCopyOf = new byte[1024];
        int i = 0;
        int i2 = 0;
        while (i != -1) {
            if (i2 == bArrCopyOf.length) {
                bArrCopyOf = java.util.Arrays.copyOf(bArrCopyOf, bArrCopyOf.length * 2);
            }
            i = dataSource.read(bArrCopyOf, i2, bArrCopyOf.length - i2);
            if (i != -1) {
                i2 += i;
            }
        }
        return java.util.Arrays.copyOf(bArrCopyOf, i2);
    }
}
