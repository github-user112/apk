package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Ub {
    public static final float[][] a = (float[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) float.class, com.huawei.hms.scankit.p.Vb.b.length, 8);

    static {
        int i;
        int i2 = 0;
        while (true) {
            int[] iArr = com.huawei.hms.scankit.p.Vb.b;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = iArr[i2];
            int i4 = i3 & 1;
            int i5 = 0;
            while (i5 < 8) {
                float f2 = 0.0f;
                while (true) {
                    i = i3 & 1;
                    if (i == i4) {
                        f2 += 1.0f;
                        i3 >>= 1;
                    }
                }
                a[i2][(8 - i5) - 1] = f2 / 17.0f;
                i5++;
                i4 = i;
            }
            i2++;
        }
    }

    public static int a(int[] iArr) {
        int iD = d(e(iArr));
        return iD != -1 ? iD : c(iArr);
    }

    public static int b(int[] iArr) {
        long j = 0;
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[i]; i2++) {
                int i3 = 1;
                long j2 = j << 1;
                if (i % 2 != 0) {
                    i3 = 0;
                }
                j = j2 | i3;
            }
        }
        return (int) j;
    }

    public static int c(int[] iArr) {
        int iA = com.huawei.hms.scankit.aiscan.common.n.a(iArr);
        float[] fArr = new float[8];
        if (iA > 1) {
            for (int i = 0; i < 8; i++) {
                fArr[i] = iArr[i] / iA;
            }
        }
        float f2 = Float.MAX_VALUE;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            float[][] fArr2 = a;
            if (i3 >= fArr2.length) {
                return i2;
            }
            float f3 = 0.0f;
            float[] fArr3 = fArr2[i3];
            for (int i4 = 0; i4 < 8; i4++) {
                float f4 = fArr3[i4] - fArr[i4];
                f3 += f4 * f4;
                if (f3 >= f2) {
                    break;
                }
            }
            if (f3 < f2) {
                i2 = com.huawei.hms.scankit.p.Vb.b[i3];
                f2 = f3;
            }
            i3++;
        }
    }

    public static int d(int[] iArr) {
        int iB = b(iArr);
        if (com.huawei.hms.scankit.p.Vb.a(iB) == -1) {
            return -1;
        }
        return iB;
    }

    public static int[] e(int[] iArr) {
        float fA = com.huawei.hms.scankit.aiscan.common.n.a(iArr);
        int[] iArr2 = new int[8];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 17; i3++) {
            if (iArr[i2] + i <= ((i3 * fA) / 17.0f) + (fA / 34.0f)) {
                i += iArr[i2];
                i2++;
            }
            iArr2[i2] = iArr2[i2] + 1;
        }
        return iArr2;
    }
}
