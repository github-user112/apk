package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.vc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0222vc {
    public static final int[][] a = {new int[]{21522, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};
    public final com.huawei.hms.scankit.p.EnumC0198qc b;

    /* renamed from: c, reason: collision with root package name */
    public final byte f840c;

    public C0222vc(int i) {
        this.b = com.huawei.hms.scankit.p.EnumC0198qc.a((i >> 3) & 3);
        this.f840c = (byte) (i & 7);
    }

    public static com.huawei.hms.scankit.p.C0222vc a(int i, int i2) {
        com.huawei.hms.scankit.p.C0222vc c0222vcC = c(i, i2);
        return c0222vcC != null ? c0222vcC : c(i ^ 21522, i2 ^ 21522);
    }

    public static int b(int i, int i2) {
        return java.lang.Integer.bitCount(i ^ i2);
    }

    public static com.huawei.hms.scankit.p.C0222vc c(int i, int i2) {
        int iB;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        for (int[] iArr : a) {
            int i5 = iArr[0];
            if (i5 == i || i5 == i2) {
                return new com.huawei.hms.scankit.p.C0222vc(iArr[1]);
            }
            int iB2 = b(i, i5);
            if (iB2 < i3) {
                i4 = iArr[1];
                i3 = iB2;
            }
            if (i != i2 && (iB = b(i2, i5)) < i3) {
                i4 = iArr[1];
                i3 = iB;
            }
        }
        if (i3 <= 3) {
            return new com.huawei.hms.scankit.p.C0222vc(i4);
        }
        return null;
    }

    public byte a() {
        return this.f840c;
    }

    public com.huawei.hms.scankit.p.EnumC0198qc b() {
        return this.b;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.huawei.hms.scankit.p.C0222vc)) {
            return false;
        }
        com.huawei.hms.scankit.p.C0222vc c0222vc = (com.huawei.hms.scankit.p.C0222vc) obj;
        return this.b == c0222vc.b && this.f840c == c0222vc.f840c;
    }

    public int hashCode() {
        return (this.b.ordinal() << 3) | this.f840c;
    }
}
