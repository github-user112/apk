package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class F {
    public final com.huawei.hms.scankit.p.C0122bb a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f380c;

    /* renamed from: d, reason: collision with root package name */
    public final int f381d;

    /* renamed from: e, reason: collision with root package name */
    public final int f382e;

    /* renamed from: f, reason: collision with root package name */
    public final int f383f;

    /* renamed from: g, reason: collision with root package name */
    public final int f384g;

    public F(com.huawei.hms.scankit.p.C0122bb c0122bb) {
        this(c0122bb, 10, c0122bb.d() / 2, c0122bb.b() / 2);
    }

    public F(com.huawei.hms.scankit.p.C0122bb c0122bb, int i, int i2, int i3) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        this.a = c0122bb;
        this.b = c0122bb.b();
        int iD = c0122bb.d();
        this.f380c = iD;
        int i4 = i / 2;
        int i5 = i2 - i4;
        this.f381d = i5;
        int i6 = i2 + i4;
        this.f382e = i6;
        int i7 = i3 - i4;
        this.f384g = i7;
        int i8 = i3 + i4;
        this.f383f = i8;
        if (i7 < 0 || i5 < 0 || i8 >= this.b || i6 >= iD) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    private com.huawei.hms.scankit.aiscan.common.z a(float f2, float f3, float f4, float f5) {
        int iA = com.huawei.hms.scankit.aiscan.common.n.a(com.huawei.hms.scankit.aiscan.common.n.a(f2, f3, f4, f5));
        float f6 = iA;
        float f7 = (f4 - f2) / f6;
        float f8 = (f5 - f3) / f6;
        for (int i = 0; i < iA; i++) {
            float f9 = i;
            int iA2 = com.huawei.hms.scankit.aiscan.common.n.a((f9 * f7) + f2);
            int iA3 = com.huawei.hms.scankit.aiscan.common.n.a((f9 * f8) + f3);
            if (this.a.b(iA2, iA3)) {
                return new com.huawei.hms.scankit.aiscan.common.z(iA2, iA3);
            }
        }
        return null;
    }

    private void a(int[] iArr) {
        boolean z = true;
        while (true) {
            if ((!z && iArr[8] == 1) || iArr[3] >= this.b) {
                return;
            }
            boolean zA = a(iArr[0], iArr[1], iArr[3], true);
            if (zA) {
                iArr[3] = iArr[3] + 1;
                iArr[5] = 1;
                iArr[8] = 1;
            } else if (iArr[8] != 1) {
                iArr[3] = iArr[3] + 1;
            }
            z = zA;
        }
    }

    private boolean a(int i, int i2, int i3, boolean z) {
        if (z) {
            while (i <= i2) {
                if (this.a.b(i, i3)) {
                    return true;
                }
                i++;
            }
            return false;
        }
        while (i <= i2) {
            if (this.a.b(i3, i)) {
                return true;
            }
            i++;
        }
        return false;
    }

    private com.huawei.hms.scankit.aiscan.common.z[] a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2, com.huawei.hms.scankit.aiscan.common.z zVar3, com.huawei.hms.scankit.aiscan.common.z zVar4) {
        float fB = zVar.b();
        float fC = zVar.c();
        float fB2 = zVar2.b();
        float fC2 = zVar2.c();
        float fB3 = zVar3.b();
        float fC3 = zVar3.c();
        float fB4 = zVar4.b();
        float fC4 = zVar4.c();
        return fB < ((float) this.f380c) / 2.0f ? new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z(fB4 - 1.0f, fC4 + 1.0f), new com.huawei.hms.scankit.aiscan.common.z(fB2 + 1.0f, fC2 + 1.0f), new com.huawei.hms.scankit.aiscan.common.z(fB3 - 1.0f, fC3 - 1.0f), new com.huawei.hms.scankit.aiscan.common.z(fB + 1.0f, fC - 1.0f)} : new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z(fB4 + 1.0f, fC4 + 1.0f), new com.huawei.hms.scankit.aiscan.common.z(fB2 + 1.0f, fC2 - 1.0f), new com.huawei.hms.scankit.aiscan.common.z(fB3 - 1.0f, fC3 + 1.0f), new com.huawei.hms.scankit.aiscan.common.z(fB - 1.0f, fC - 1.0f)};
    }

    private com.huawei.hms.scankit.aiscan.common.z[] b(int[] iArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i = iArr[1] - iArr[0];
        com.huawei.hms.scankit.aiscan.common.z zVarA = null;
        com.huawei.hms.scankit.aiscan.common.z zVarA2 = null;
        for (int i2 = 1; zVarA2 == null && i2 < i; i2++) {
            zVarA2 = a(iArr[0], iArr[3] - i2, iArr[0] + i2, iArr[3]);
        }
        if (zVarA2 == null) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        com.huawei.hms.scankit.aiscan.common.z zVarA3 = null;
        for (int i3 = 1; zVarA3 == null && i3 < i; i3++) {
            zVarA3 = a(iArr[0], iArr[2] + i3, iArr[0] + i3, iArr[2]);
        }
        if (zVarA3 == null) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        com.huawei.hms.scankit.aiscan.common.z zVarA4 = null;
        for (int i4 = 1; zVarA4 == null && i4 < i; i4++) {
            zVarA4 = a(iArr[1], iArr[2] + i4, iArr[1] - i4, iArr[2]);
        }
        if (zVarA4 == null) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        for (int i5 = 1; zVarA == null && i5 < i; i5++) {
            zVarA = a(iArr[1], iArr[3] - i5, iArr[1] - i5, iArr[3]);
        }
        if (zVarA != null) {
            return a(zVarA, zVarA2, zVarA4, zVarA3);
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private void c(int[] iArr) {
        boolean z = true;
        while (true) {
            if ((!z && iArr[9] == 1) || iArr[0] < 0) {
                return;
            }
            boolean zA = a(iArr[2], iArr[3], iArr[0], false);
            if (zA) {
                iArr[0] = iArr[0] - 1;
                iArr[5] = 1;
                iArr[9] = 1;
            } else if (iArr[9] != 1) {
                iArr[0] = iArr[0] - 1;
            }
            z = zA;
        }
    }

    private void d(int[] iArr) {
        boolean zA = true;
        while (true) {
            if ((!zA && iArr[7] == 1) || iArr[1] >= this.f380c) {
                return;
            }
            zA = a(iArr[2], iArr[3], iArr[1], false);
            if (zA) {
                iArr[1] = iArr[1] + 1;
                iArr[5] = 1;
                iArr[7] = 1;
            } else if (iArr[7] != 1) {
                iArr[1] = iArr[1] + 1;
            }
        }
    }

    private void e(int[] iArr) {
        boolean z = true;
        while (true) {
            if ((!z && iArr[10] == 1) || iArr[2] < 0) {
                return;
            }
            boolean zA = a(iArr[0], iArr[1], iArr[2], true);
            if (zA) {
                iArr[2] = iArr[2] - 1;
                iArr[5] = 1;
                iArr[10] = 1;
            } else if (iArr[10] != 1) {
                iArr[2] = iArr[2] - 1;
            }
            z = zA;
        }
    }

    public com.huawei.hms.scankit.aiscan.common.z[] a() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr = {this.f381d, this.f382e, this.f384g, this.f383f, 0, 1, 0, 0, 0, 0, 0};
        while (true) {
            if (iArr[5] != 1) {
                break;
            }
            iArr[5] = 0;
            d(iArr);
            if (iArr[1] >= this.f380c) {
                iArr[4] = 1;
                break;
            }
            a(iArr);
            if (iArr[3] >= this.b) {
                iArr[4] = 1;
                break;
            }
            c(iArr);
            if (iArr[0] < 0) {
                iArr[4] = 1;
                break;
            }
            e(iArr);
            if (iArr[2] < 0) {
                iArr[4] = 1;
                break;
            }
            if (iArr[5] == 1) {
                iArr[6] = 1;
            }
        }
        if (iArr[4] == 1 || iArr[6] != 1) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        return b(iArr);
    }
}
