package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0214u {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static byte a(char c2) {
        return (byte) "0123456789ABCDEF".indexOf(c2);
    }

    public static java.lang.String a(int i) {
        byte[] bArr = new byte[i];
        new java.security.SecureRandom().nextBytes(bArr);
        return a(bArr);
    }

    public static java.lang.String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            com.huawei.hms.scankit.p.T.c("HexUtil", "byteArray is empty");
            return "";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(a[(b & 240) >> 4]);
            sb.append(a[b & com.umeng.analytics.pro.bw.m]);
        }
        return sb.toString();
    }

    public static byte[] a() {
        byte[] bArr = new byte[16];
        new java.security.SecureRandom().nextBytes(bArr);
        return bArr;
    }

    public static byte[] a(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        java.lang.String upperCase = str.toUpperCase(java.util.Locale.ENGLISH);
        int length = upperCase.length() / 2;
        char[] charArray = upperCase.toCharArray();
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (a(charArray[i2 + 1]) | (a(charArray[i2]) << 4));
        }
        return bArr;
    }
}
