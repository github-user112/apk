package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class h {
    public static final com.huawei.hms.scankit.aiscan.common.h a = new com.huawei.hms.scankit.aiscan.common.h(4201, 4096, 1);
    public static final com.huawei.hms.scankit.aiscan.common.h b = new com.huawei.hms.scankit.aiscan.common.h(com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_DRM_KEYS_RESTORED, 1024, 1);

    /* renamed from: c, reason: collision with root package name */
    public static final com.huawei.hms.scankit.aiscan.common.h f403c = new com.huawei.hms.scankit.aiscan.common.h(67, 64, 1);

    /* renamed from: d, reason: collision with root package name */
    public static final com.huawei.hms.scankit.aiscan.common.h f404d = new com.huawei.hms.scankit.aiscan.common.h(19, 16, 1);

    /* renamed from: e, reason: collision with root package name */
    public static final com.huawei.hms.scankit.aiscan.common.h f405e = new com.huawei.hms.scankit.aiscan.common.h(285, 256, 0);

    /* renamed from: f, reason: collision with root package name */
    public static final com.huawei.hms.scankit.aiscan.common.h f406f;

    /* renamed from: g, reason: collision with root package name */
    public static final com.huawei.hms.scankit.aiscan.common.h f407g;
    public static final com.huawei.hms.scankit.aiscan.common.h h;
    public final int[] i;
    public final int[] j;
    public final com.huawei.hms.scankit.aiscan.common.i k;
    public final com.huawei.hms.scankit.aiscan.common.i l;
    public final int m;
    public final int n;
    public final int o;

    static {
        com.huawei.hms.scankit.aiscan.common.h hVar = new com.huawei.hms.scankit.aiscan.common.h(com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISMATCH_LIB, 256, 1);
        f406f = hVar;
        f407g = hVar;
        h = f403c;
    }

    public h(int i, int i2, int i3) {
        this.n = i;
        this.m = i2;
        this.o = i3;
        this.i = new int[i2];
        this.j = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.i[i5] = i4;
            i4 *= 2;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.j[this.i[i6]] = i6;
        }
        this.k = new com.huawei.hms.scankit.aiscan.common.i(this, new int[]{0});
        this.l = new com.huawei.hms.scankit.aiscan.common.i(this, new int[]{1});
    }

    public static int a(int i, int i2) {
        return i ^ i2;
    }

    public int a() {
        return this.o;
    }

    public int a(int i) {
        if (com.huawei.hms.scankit.util.b.a(this.i, i)) {
            return this.i[i];
        }
        return -1;
    }

    public int b(int i) {
        if (i != 0) {
            return this.i[(this.m - this.j[i]) - 1];
        }
        try {
            throw new java.lang.ArithmeticException();
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    public com.huawei.hms.scankit.aiscan.common.i b() {
        return this.l;
    }

    public com.huawei.hms.scankit.aiscan.common.i b(int i, int i2) throws java.lang.Exception {
        if (i < 0) {
            try {
                throw new java.lang.IllegalArgumentException();
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        if (i2 == 0) {
            return this.k;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new com.huawei.hms.scankit.aiscan.common.i(this, iArr);
    }

    public int c() {
        return this.m;
    }

    public int c(int i) {
        if (i != 0) {
            return this.j[i];
        }
        try {
            throw new java.lang.IllegalArgumentException();
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    public int c(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.i;
        int[] iArr2 = this.j;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.m - 1)];
    }

    public com.huawei.hms.scankit.aiscan.common.i d() {
        return this.k;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("GF(0x");
        sbO.append(java.lang.Integer.toHexString(this.n));
        sbO.append(',');
        sbO.append(this.m);
        sbO.append(')');
        return sbO.toString();
    }
}
