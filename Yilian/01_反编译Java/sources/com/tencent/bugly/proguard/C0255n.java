package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0255n {
    public static final byte[] a;
    public static final byte[] b;

    static {
        byte[] bArr = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
        byte[] bArr2 = new byte[256];
        byte[] bArr3 = new byte[256];
        for (int i = 0; i < 256; i++) {
            bArr2[i] = bArr[i >>> 4];
            bArr3[i] = bArr[i & 15];
        }
        a = bArr2;
        b = bArr3;
    }

    public static boolean a(byte b2, byte b3) {
        return b2 == b3;
    }

    public static boolean a(int i, int i2) {
        return i == i2;
    }

    public static boolean a(long j, long j2) {
        return j == j2;
    }

    public static boolean a(java.lang.Object obj, java.lang.Object obj2) {
        return obj.equals(obj2);
    }

    public static boolean a(boolean z, boolean z2) {
        return z == z2;
    }

    public static byte[] a(java.nio.ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        byte[] bArr = new byte[iPosition];
        java.lang.System.arraycopy(byteBuffer.array(), 0, bArr, 0, iPosition);
        return bArr;
    }
}
