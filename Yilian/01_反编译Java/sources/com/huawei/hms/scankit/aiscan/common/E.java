package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public class E {
    public static float a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr, com.huawei.hms.scankit.aiscan.common.z[] zVarArr2) {
        float fB = Float.MAX_VALUE;
        float fB2 = Float.MIN_VALUE;
        float fB3 = Float.MIN_VALUE;
        float fB4 = Float.MAX_VALUE;
        float fC = Float.MIN_VALUE;
        float fC2 = Float.MAX_VALUE;
        for (com.huawei.hms.scankit.aiscan.common.z zVar : zVarArr) {
            if (zVar.b() > fB3) {
                fB3 = zVar.b();
            }
            if (zVar.b() < fB4) {
                fB4 = zVar.b();
            }
            if (zVar.c() > fC) {
                fC = zVar.c();
            }
            if (zVar.c() < fC2) {
                fC2 = zVar.c();
            }
        }
        float fC3 = Float.MAX_VALUE;
        float fC4 = Float.MIN_VALUE;
        for (com.huawei.hms.scankit.aiscan.common.z zVar2 : zVarArr2) {
            if (zVar2.b() > fB2) {
                fB2 = zVar2.b();
            }
            if (zVar2.b() < fB) {
                fB = zVar2.b();
            }
            if (zVar2.c() > fC4) {
                fC4 = zVar2.c();
            }
            if (zVar2.c() < fC3) {
                fC3 = zVar2.c();
            }
        }
        float f2 = (fB2 < fB3 ? fB2 : fB3) - (fB > fB4 ? fB : fB4);
        float f3 = (fC4 < fC ? fC4 : fC) - (fC3 > fC2 ? fC3 : fC2);
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f3 < 0.0f) {
            f3 = 0.0f;
        }
        float f4 = f2 * f3;
        return f4 / ((((fC4 - fC3) * (fB2 - fB)) + ((fC - fC2) * (fB3 - fB4))) - f4);
    }

    public static java.util.List<com.huawei.hms.scankit.aiscan.common.x> a(java.util.List<com.huawei.hms.scankit.aiscan.common.x> list) {
        for (int i = 0; i < list.size() - 1; i++) {
            for (int size = list.size() - 1; size > i; size--) {
                if (list.get(i).i().equals(list.get(size).i()) && a(r2.h(), r3.h()) > 0.5d) {
                    list.remove(size);
                }
            }
        }
        return list;
    }
}
