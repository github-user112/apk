package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Eb {
    public static final int[] a = {1, 1, 2};
    public final com.huawei.hms.scankit.p.Cb b = new com.huawei.hms.scankit.p.Cb();

    /* renamed from: c, reason: collision with root package name */
    public final com.huawei.hms.scankit.p.Db f515c = new com.huawei.hms.scankit.p.Db();

    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, int i2) {
        int[] iArrA = com.huawei.hms.scankit.p.Fb.a(c0117ab, i2, false, a);
        try {
            return this.f515c.a(i, c0117ab, iArrA);
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            return this.b.a(i, c0117ab, iArrA);
        }
    }
}
