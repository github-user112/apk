package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class H {
    public static float a(int i, int i2, com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        float fAbs;
        float f2;
        float fAbs2;
        float f3;
        float f4 = 1.0f;
        if (zVarArr.length < 3) {
            return 1.0f;
        }
        int i3 = 0;
        for (com.huawei.hms.scankit.aiscan.common.z zVar : zVarArr) {
            if (zVar.d()) {
                i3++;
            }
        }
        if (com.huawei.hms.scankit.p.Bc.a && !com.huawei.hms.scankit.p.Bc.b && i3 < 2) {
            return 1.0f;
        }
        float fB = zVarArr[0].b();
        float fB2 = zVarArr[1].b();
        float fB3 = zVarArr[2].b();
        float fC = zVarArr[0].c();
        float fC2 = zVarArr[1].c();
        float fC3 = zVarArr[2].c();
        com.huawei.hms.scankit.aiscan.common.z zVarA = a(fB, fC, fB2, fC2, fB3, fC3);
        float fB4 = zVarA.b();
        float fC4 = zVarA.c();
        float fMax = java.lang.Math.max(java.lang.Math.max(java.lang.Math.max(fB, fB2), fB3), fB4);
        float fMin = java.lang.Math.min(java.lang.Math.min(java.lang.Math.min(fB, fB2), fB3), fB4);
        float fMax2 = java.lang.Math.max(java.lang.Math.max(java.lang.Math.max(fC, fC2), fC3), fC4);
        float fMin2 = java.lang.Math.min(java.lang.Math.min(java.lang.Math.min(fC, fC2), fC3), fC4);
        int iMin = (int) (java.lang.Math.min(i2, i) * 0.85f);
        int i4 = (i - iMin) / 2;
        int i5 = (i2 - iMin) / 2;
        android.graphics.Rect rect = new android.graphics.Rect(i4, i5, iMin + i4, iMin + i5);
        if (fMin < rect.left && fMin2 < rect.top && fMax > rect.right && fMax2 > rect.bottom) {
            return 1.0f;
        }
        float fAbs3 = java.lang.Math.abs(fMin2 - rect.top);
        float fAbs4 = java.lang.Math.abs(fMin - rect.left);
        float fAbs5 = java.lang.Math.abs(fMax - rect.right);
        float fAbs6 = java.lang.Math.abs(fMax2 - rect.bottom);
        float f5 = (rect.left + rect.right) / 2.0f;
        float f6 = (rect.top + rect.bottom) / 2.0f;
        float fMin3 = java.lang.Math.min(java.lang.Math.min(java.lang.Math.min(fAbs4, fAbs5), fAbs3), fAbs6);
        if (0.01f > java.lang.Math.abs(fAbs4 - fMin3)) {
            fAbs = java.lang.Math.abs(f5 - rect.left) * 1.0f;
            f3 = f5 - fMin;
        } else {
            if (0.01f <= java.lang.Math.abs(fAbs5 - fMin3)) {
                if (0.01f <= java.lang.Math.abs(fAbs3 - fMin3)) {
                    if (0.01f > java.lang.Math.abs(fAbs6 - fMin3)) {
                        fAbs = java.lang.Math.abs(f6 - rect.bottom) * 1.0f;
                        f2 = f6 - fMax2;
                    }
                    return java.lang.Math.min(f4, 2.0f) * 0.9f;
                }
                fAbs = java.lang.Math.abs(f6 - rect.top) * 1.0f;
                f2 = f6 - fMin2;
                fAbs2 = java.lang.Math.abs(f2);
                f4 = fAbs / fAbs2;
                return java.lang.Math.min(f4, 2.0f) * 0.9f;
            }
            fAbs = java.lang.Math.abs(f5 - rect.right) * 1.0f;
            f3 = f5 - fMax;
        }
        fAbs2 = java.lang.Math.abs(f3);
        f4 = fAbs / fAbs2;
        return java.lang.Math.min(f4, 2.0f) * 0.9f;
    }

    public static com.huawei.hms.scankit.aiscan.common.z a(float f2, float f3, float f4, float f5, float f6, float f7) {
        return new com.huawei.hms.scankit.aiscan.common.z((f2 + f6) - f4, (f3 + f7) - f5);
    }

    public static float b(int i, int i2, com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        float fAbs;
        float f2;
        float fAbs2;
        float f3;
        float f4 = 1.0f;
        if (zVarArr.length < 3) {
            return 1.0f;
        }
        float fB = zVarArr[0].b();
        float fB2 = zVarArr[1].b();
        float fB3 = zVarArr[2].b();
        float fC = zVarArr[0].c();
        float fC2 = zVarArr[1].c();
        float fC3 = zVarArr[2].c();
        float fMax = java.lang.Math.max(java.lang.Math.max(fB, fB2), fB3);
        float fMin = java.lang.Math.min(java.lang.Math.min(fB, fB2), fB3);
        float fMax2 = java.lang.Math.max(java.lang.Math.max(fC, fC2), fC3);
        float fMin2 = java.lang.Math.min(java.lang.Math.min(fC, fC2), fC3);
        int iMin = (int) (java.lang.Math.min(i2, i) * 0.1f);
        android.graphics.Rect rect = new android.graphics.Rect(iMin, iMin, i - iMin, i2 - iMin);
        if (fMin < rect.left && fMin2 < rect.top && fMax > rect.right && fMax2 > rect.bottom) {
            return 1.0f;
        }
        float fAbs3 = java.lang.Math.abs(fMax - rect.right);
        float fAbs4 = java.lang.Math.abs(fMax2 - rect.bottom);
        float fAbs5 = java.lang.Math.abs(fMin2 - rect.top);
        float fAbs6 = java.lang.Math.abs(fMin - rect.left);
        float f5 = (rect.left + rect.right) / 2.0f;
        float f6 = (rect.top + rect.bottom) / 2.0f;
        float fMin3 = java.lang.Math.min(java.lang.Math.min(java.lang.Math.min(fAbs6, fAbs3), fAbs5), fAbs4);
        if (0.01f > java.lang.Math.abs(fAbs6 - fMin3)) {
            fAbs = java.lang.Math.abs(f5 - rect.left);
            f3 = f5 - fMin;
        } else {
            if (0.01f <= java.lang.Math.abs(fAbs3 - fMin3)) {
                if (0.01f <= java.lang.Math.abs(fAbs5 - fMin3)) {
                    if (0.01f > java.lang.Math.abs(fAbs4 - fMin3)) {
                        fAbs = java.lang.Math.abs(f6 - rect.bottom);
                        f2 = f6 - fMax2;
                    }
                    return java.lang.Math.min(f4, 2.0f) * 0.9f;
                }
                fAbs = java.lang.Math.abs(f6 - rect.top);
                f2 = f6 - fMin2;
                fAbs2 = java.lang.Math.abs(f2);
                f4 = fAbs / fAbs2;
                return java.lang.Math.min(f4, 2.0f) * 0.9f;
            }
            fAbs = java.lang.Math.abs(f5 - rect.right);
            f3 = f5 - fMax;
        }
        fAbs2 = java.lang.Math.abs(f3);
        f4 = fAbs / fAbs2;
        return java.lang.Math.min(f4, 2.0f) * 0.9f;
    }
}
