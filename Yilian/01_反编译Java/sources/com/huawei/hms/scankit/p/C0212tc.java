package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.tc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0212tc {
    public static final int[] a = {1, 3, 1, 1};
    public static final int[] b = {1, 1, 3, 1};

    /* renamed from: c, reason: collision with root package name */
    public static boolean f825c = false;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f826d = false;

    /* renamed from: e, reason: collision with root package name */
    public static final com.huawei.hms.scankit.p.C0212tc.b f827e = new com.huawei.hms.scankit.p.C0212tc.b();

    /* renamed from: f, reason: collision with root package name */
    public final com.huawei.hms.scankit.p.C0122bb f828f;
    public final com.huawei.hms.scankit.aiscan.common.A j;

    /* renamed from: g, reason: collision with root package name */
    public final java.util.List<com.huawei.hms.scankit.p.C0202rc> f829g = new java.util.ArrayList();
    public final int[] i = new int[5];
    public final java.util.List<com.huawei.hms.scankit.p.C0202rc> h = new java.util.ArrayList();

    /* renamed from: com.huawei.hms.scankit.p.tc$a */
    public static final class a implements java.util.Comparator<com.huawei.hms.scankit.p.C0202rc>, java.io.Serializable {
        public final float a;

        public a(float f2) {
            this.a = f2;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(com.huawei.hms.scankit.p.C0202rc c0202rc, com.huawei.hms.scankit.p.C0202rc c0202rc2) {
            int iA = defpackage.a.a(c0202rc2.a(), c0202rc.a());
            return iA == 0 ? java.lang.Float.compare(java.lang.Math.abs(c0202rc.e() - this.a), java.lang.Math.abs(c0202rc2.e() - this.a)) : iA;
        }
    }

    /* renamed from: com.huawei.hms.scankit.p.tc$b */
    public static final class b implements java.util.Comparator<com.huawei.hms.scankit.p.C0202rc>, java.io.Serializable {
        public b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(com.huawei.hms.scankit.p.C0202rc c0202rc, com.huawei.hms.scankit.p.C0202rc c0202rc2) {
            return java.lang.Float.compare(c0202rc.e(), c0202rc2.e());
        }
    }

    /* renamed from: com.huawei.hms.scankit.p.tc$c */
    public static final class c implements java.util.Comparator<com.huawei.hms.scankit.p.C0202rc>, java.io.Serializable {
        public final float a;

        public c(float f2) {
            this.a = f2;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(com.huawei.hms.scankit.p.C0202rc c0202rc, com.huawei.hms.scankit.p.C0202rc c0202rc2) {
            return java.lang.Float.compare(java.lang.Math.abs(c0202rc2.e() - this.a), java.lang.Math.abs(c0202rc.e() - this.a));
        }
    }

    public C0212tc(com.huawei.hms.scankit.p.C0122bb c0122bb, com.huawei.hms.scankit.aiscan.common.A a2) {
        this.f828f = c0122bb;
        this.j = a2;
    }

    public static double a(com.huawei.hms.scankit.p.C0202rc c0202rc, com.huawei.hms.scankit.p.C0202rc c0202rc2) {
        double dB = c0202rc.b() - c0202rc2.b();
        double dC = c0202rc.c() - c0202rc2.c();
        java.lang.Double.isNaN(dB);
        java.lang.Double.isNaN(dB);
        java.lang.Double.isNaN(dC);
        java.lang.Double.isNaN(dC);
        return (dC * dC) + (dB * dB);
    }

    private float a(int i, int i2, int i3, int i4) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.f828f;
        int iB = c0122bb.b();
        int[] iArrD = d();
        if (c(i, i2, i3, iArrD)) {
            return Float.NaN;
        }
        int i5 = i + 1;
        while (i5 < iB && !c0122bb.b(i2, i5) && iArrD[1] <= i3) {
            iArrD[1] = iArrD[1] + 1;
            i5++;
        }
        if (i5 < 0 || iArrD[1] > i3) {
            return Float.NaN;
        }
        while (i5 < iB && c0122bb.b(i2, i5)) {
            iArrD[2] = iArrD[2] + 1;
            i5++;
        }
        if (i5 == iB) {
            return Float.NaN;
        }
        while (i5 < iB && !c0122bb.b(i2, i5) && iArrD[3] < i3) {
            iArrD[3] = iArrD[3] + 1;
            i5++;
        }
        if (i5 == iB || iArrD[3] >= i3) {
            return Float.NaN;
        }
        while (i5 < iB && c0122bb.b(i2, i5) && iArrD[4] < i3) {
            iArrD[4] = iArrD[4] + 1;
            i5++;
        }
        if (iArrD[4] >= i3 || java.lang.Math.abs(((((iArrD[0] + iArrD[1]) + iArrD[2]) + iArrD[3]) + iArrD[4]) - i4) * 5 >= i4 * 2) {
            return Float.NaN;
        }
        if (com.huawei.hms.scankit.p.Bc.f492d) {
            if (a(iArrD, true)) {
                return a(iArrD, i5);
            }
            return Float.NaN;
        }
        if (a(iArrD, false)) {
            return a(iArrD, i5);
        }
        return Float.NaN;
    }

    private float a(int i, int i2, int i3, int i4, int i5) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.f828f;
        int iB = c0122bb.b();
        int i6 = i2;
        while (i6 <= i3) {
            int[] iArrD = d();
            int i7 = i;
            while (i7 >= 0 && !c0122bb.b(i6, i7) && iArrD[1] <= i4) {
                iArrD[1] = iArrD[1] + 1;
                i7--;
            }
            if (i7 >= 0) {
                double d2 = iArrD[1];
                double d3 = i4;
                java.lang.Double.isNaN(d3);
                double d4 = d3 * 1.5d;
                if (d2 > d4) {
                    continue;
                } else {
                    while (i7 >= 0 && c0122bb.b(i6, i7) && iArrD[0] <= i4) {
                        iArrD[0] = iArrD[0] + 1;
                        i7--;
                    }
                    if (iArrD[0] > i4 / 2) {
                        continue;
                    } else {
                        int i8 = i + 1;
                        while (i8 < iB && !c0122bb.b(i6, i8) && iArrD[1] <= i4) {
                            iArrD[1] = iArrD[1] + 1;
                            i8++;
                        }
                        if (i8 >= 0 && iArrD[1] <= d4) {
                            while (i8 < iB && c0122bb.b(i6, i8)) {
                                iArrD[2] = iArrD[2] + 1;
                                i8++;
                            }
                            if (java.lang.Math.abs(((iArrD[0] + iArrD[1]) + iArrD[2]) - i5) * 5 < i5 * 2 && b(iArrD)) {
                                return (i8 - (iArrD[1] / 2)) - iArrD[2];
                            }
                        }
                    }
                }
            }
            i6 += i3 - i2;
        }
        return Float.NaN;
    }

    private float a(int i, int i2, int i3, int i4, boolean z) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.f828f;
        int iD = c0122bb.d();
        int[] iArrD = d();
        if (a(i, i2, i3, iArrD)) {
            return Float.NaN;
        }
        int i5 = i + 1;
        while (i5 < iD && c0122bb.b(i5, i2)) {
            iArrD[2] = iArrD[2] + 1;
            i5++;
        }
        if (i5 == iD) {
            return Float.NaN;
        }
        while (i5 < iD && !c0122bb.b(i5, i2) && iArrD[3] < i3) {
            iArrD[3] = iArrD[3] + 1;
            i5++;
        }
        if (i5 == iD || iArrD[3] >= i3) {
            return Float.NaN;
        }
        while (i5 < iD && c0122bb.b(i5, i2) && iArrD[4] < i3) {
            iArrD[4] = iArrD[4] + 1;
            i5++;
        }
        if (iArrD[4] >= i3 && !f826d && !f825c) {
            return Float.NaN;
        }
        if ((java.lang.Math.abs(((((iArrD[0] + iArrD[1]) + iArrD[2]) + iArrD[3]) + iArrD[4]) - i4) * 5 < i4 || f826d || f825c) && a(iArrD, z)) {
            return a(iArrD, i5);
        }
        return Float.NaN;
    }

    public static float a(int[] iArr, int i) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    public static float a(int[] iArr, int[] iArr2, float f2) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f3 = i;
        float f4 = f3 / i2;
        float f5 = f2 * f4;
        float f6 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f7 = iArr2[i4] * f4;
            float f8 = iArr[i4];
            float f9 = f8 > f7 ? f8 - f7 : f7 - f8;
            if (f9 > f5) {
                return Float.POSITIVE_INFINITY;
            }
            f6 += f9;
        }
        return f6 / f3;
    }

    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private void a(int r11, int r12, int r13) {
        /*
            r10 = this;
            r0 = 5
            int[] r1 = new int[r0]
            int r2 = r11 + (-1)
        L5:
            if (r2 >= r12) goto L5e
            r10.a(r1)
            int[] r3 = new int[r0]
            r4 = 0
            r3[r4] = r4
            r5 = 1
            r3[r5] = r2
            r6 = 2
            r3[r6] = r4
            r7 = 3
            r3[r7] = r13
            r7 = 4
            r3[r7] = r11
            r8 = 0
        L1c:
            if (r8 >= r13) goto L39
            r3[r6] = r8
            com.huawei.hms.scankit.p.bb r9 = r10.f828f
            boolean r9 = r9.b(r8, r2)
            if (r9 == 0) goto L2c
            r10.a(r1, r3)
            goto L33
        L2c:
            boolean r9 = r10.b(r1, r3)
            if (r9 == 0) goto L33
            goto L37
        L33:
            r8 = r3[r6]
            r11 = r3[r7]
        L37:
            int r8 = r8 + r5
            goto L1c
        L39:
            boolean r5 = b(r1)
            if (r5 == 0) goto L4e
            r3 = r3[r4]
            r5 = r13
        L42:
            if (r3 <= r6) goto L4a
            r7 = r1[r3]
            int r5 = r5 - r7
            int r3 = r3 + (-1)
            goto L42
        L4a:
            r10.b(r1, r2, r5)
            goto L4f
        L4e:
            r5 = r13
        L4f:
            boolean r3 = a(r1, r4)
            if (r3 == 0) goto L5c
            boolean r3 = r10.a(r1, r2, r5, r4)
            if (r3 == 0) goto L5c
            r11 = 2
        L5c:
            int r2 = r2 + r11
            goto L5
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0212tc.a(int, int, int):void");
    }

    private void a(int[] iArr, int[] iArr2) {
        if ((iArr2[0] & 1) == 1) {
            iArr2[0] = iArr2[0] + 1;
        }
        if (iArr2[0] >= 0 && iArr2[0] < iArr.length) {
            int i = iArr2[0];
            iArr[i] = iArr[i] + 1;
        }
        if (iArr2[2] == iArr2[3] - 1 && iArr2[0] == 4) {
            if (a(iArr, false)) {
                boolean zA = a(iArr, iArr2[1], iArr2[2], false);
                if (zA) {
                    iArr2[4] = 2;
                }
                if (!zA) {
                    zA = a(iArr, iArr2[1], iArr2[2]);
                }
                if (zA) {
                    iArr2[0] = 0;
                    a(iArr);
                    while (iArr2[2] < this.f828f.d() && !this.f828f.b(iArr2[2], iArr2[1])) {
                        iArr2[2] = iArr2[2] + 1;
                    }
                }
            }
            if (com.huawei.hms.scankit.p.Bc.f492d && a(iArr, true) && a(iArr, iArr2[1], iArr2[2], true)) {
                iArr2[0] = 0;
                a(iArr);
            }
        }
    }

    private boolean a(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int[] iArrD = d();
        int i6 = 0;
        while (i >= i6 && i2 >= i6 && this.f828f.b(i2 - i6, i - i6)) {
            iArrD[2] = iArrD[2] + 1;
            i6++;
        }
        if (iArrD[2] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && !this.f828f.b(i2 - i6, i - i6)) {
            iArrD[1] = iArrD[1] + 1;
            i6++;
        }
        if (iArrD[1] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && this.f828f.b(i2 - i6, i - i6)) {
            iArrD[0] = iArrD[0] + 1;
            i6++;
        }
        if (iArrD[0] == 0) {
            return false;
        }
        int iB = this.f828f.b();
        int iD = this.f828f.d();
        int i7 = 1;
        while (true) {
            int i8 = i + i7;
            if (i8 >= iB || (i5 = i2 + i7) >= iD || !this.f828f.b(i5, i8)) {
                break;
            }
            iArrD[2] = iArrD[2] + 1;
            i7++;
        }
        while (true) {
            int i9 = i + i7;
            if (i9 >= iB || (i4 = i2 + i7) >= iD || this.f828f.b(i4, i9)) {
                break;
            }
            iArrD[3] = iArrD[3] + 1;
            i7++;
        }
        if (iArrD[3] == 0) {
            return false;
        }
        while (true) {
            int i10 = i + i7;
            if (i10 >= iB || (i3 = i2 + i7) >= iD || !this.f828f.b(i3, i10)) {
                break;
            }
            iArrD[4] = iArrD[4] + 1;
            i7++;
        }
        if (iArrD[4] == 0) {
            return false;
        }
        return c(iArrD);
    }

    private boolean a(int i, int i2, int i3, int[] iArr) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.f828f;
        while (i >= 0 && c0122bb.b(i, i2)) {
            iArr[2] = iArr[2] + 1;
            i--;
        }
        if (i < 0) {
            return true;
        }
        while (i >= 0 && !c0122bb.b(i, i2) && iArr[1] <= i3) {
            iArr[1] = iArr[1] + 1;
            i--;
        }
        if (i < 0 || iArr[1] > i3) {
            return true;
        }
        while (i >= 0 && c0122bb.b(i, i2) && iArr[0] <= i3) {
            iArr[0] = iArr[0] + 1;
            i--;
        }
        return (iArr[0] <= i3 || f826d || f825c) ? false : true;
    }

    private boolean a(boolean z, float f2, float f3, float f4) {
        int i = 0;
        while (true) {
            if (i >= this.h.size()) {
                break;
            }
            com.huawei.hms.scankit.p.C0202rc c0202rc = this.h.get(i);
            if (c0202rc.a(f4, f2, f3)) {
                this.h.set(i, c0202rc.a(f2, f3, f4, false));
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            com.huawei.hms.scankit.p.C0202rc c0202rc2 = new com.huawei.hms.scankit.p.C0202rc(f3, f2, f4, false);
            this.h.add(c0202rc2);
            com.huawei.hms.scankit.aiscan.common.A a2 = this.j;
            if (a2 != null) {
                a2.a(c0202rc2);
            }
        }
        return true;
    }

    public static boolean a(int[] iArr, boolean z) {
        float f2;
        float f3;
        e();
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        if (z && com.huawei.hms.scankit.p.Bc.f492d) {
            f2 = 0.75f;
            f3 = 1.0f;
        } else {
            f2 = 0.5f;
            f3 = 3.0f;
        }
        float f4 = i / 7.0f;
        float f5 = f2 * f4;
        if (java.lang.Math.abs(f4 - iArr[0]) < f5 && java.lang.Math.abs(f4 - iArr[1]) < f5 && java.lang.Math.abs((3.0f * f4) - iArr[2]) < f3 * f5 && java.lang.Math.abs(f4 - iArr[3]) < f5 && java.lang.Math.abs(f4 - iArr[4]) < f5) {
            return true;
        }
        if (!z) {
            return false;
        }
        int[] iArr2 = new int[iArr.length - 1];
        int i4 = 0;
        while (i4 < iArr.length - 1) {
            int i5 = i4 + 1;
            iArr2[i4] = iArr[i5];
            i4 = i5;
        }
        int[] iArr3 = new int[iArr.length - 1];
        for (int i6 = 0; i6 < iArr.length - 1; i6++) {
            iArr3[i6] = iArr[i6];
        }
        float fA = a(iArr2, a, 0.5f);
        float fA2 = a(iArr3, b, 0.5f);
        f825c = fA < 0.3f;
        boolean z2 = fA2 < 0.3f;
        f826d = z2;
        return f825c || z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.scankit.p.C0202rc[] a(boolean r27) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0212tc.a(boolean):com.huawei.hms.scankit.p.rc[]");
    }

    private float b(int i, int i2, int i3, int i4) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.f828f;
        int iB = c0122bb.b();
        int[] iArrD = d();
        if (d(i, i2, i3, iArrD)) {
            return Float.NaN;
        }
        int i5 = i + 1;
        while (i5 < iB && !c0122bb.b(i2, i5) && iArrD[3] <= i3) {
            iArrD[3] = iArrD[3] + 1;
            i5++;
        }
        if (i5 < 0 || iArrD[3] > i3) {
            return Float.NaN;
        }
        while (i5 < iB && c0122bb.b(i2, i5)) {
            iArrD[4] = iArrD[4] + 1;
            i5++;
        }
        if (iArrD[4] <= i3 && java.lang.Math.abs(((((iArrD[0] + iArrD[1]) + iArrD[2]) + iArrD[3]) + iArrD[4]) - i4) * 5 < i4 * 2 && a(iArrD, true)) {
            return a(iArrD, i5);
        }
        return Float.NaN;
    }

    private float b(int i, int i2, int i3, int i4, boolean z) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.f828f;
        int iB = c0122bb.b();
        int[] iArrD = d();
        if (b(i, i2, i3, iArrD)) {
            return Float.NaN;
        }
        int i5 = i + 1;
        while (i5 < iB && c0122bb.b(i2, i5)) {
            iArrD[2] = iArrD[2] + 1;
            i5++;
        }
        if (i5 == iB) {
            return Float.NaN;
        }
        while (i5 < iB && !c0122bb.b(i2, i5) && iArrD[3] < i3) {
            iArrD[3] = iArrD[3] + 1;
            i5++;
        }
        if (i5 == iB || iArrD[3] >= i3) {
            return Float.NaN;
        }
        while (i5 < iB && c0122bb.b(i2, i5) && iArrD[4] < i3) {
            iArrD[4] = iArrD[4] + 1;
            i5++;
        }
        if (iArrD[4] >= i3 && !f826d && !f825c) {
            return Float.NaN;
        }
        int i6 = iArrD[0] + iArrD[1] + iArrD[2] + iArrD[3] + iArrD[4];
        if (z) {
            if (java.lang.Math.abs(i6 - i4) * 5 >= i4 * 3 && !f826d && !f825c) {
                return Float.NaN;
            }
        } else if (i6 >= i4 * 3 || i6 * 3 <= i4) {
            return Float.NaN;
        }
        if (a(iArrD, z)) {
            return a(iArrD, i5);
        }
        return Float.NaN;
    }

    private boolean b(int i, int i2, int i3, int[] iArr) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.f828f;
        while (i >= 0 && c0122bb.b(i2, i)) {
            iArr[2] = iArr[2] + 1;
            i--;
        }
        if (i < 0) {
            return true;
        }
        while (i >= 0 && !c0122bb.b(i2, i) && iArr[1] <= i3) {
            iArr[1] = iArr[1] + 1;
            i--;
        }
        if (i < 0 || iArr[1] > i3) {
            return true;
        }
        while (i >= 0 && c0122bb.b(i2, i) && iArr[0] <= i3) {
            iArr[0] = iArr[0] + 1;
            i--;
        }
        return (iArr[0] <= i3 || f826d || f825c) ? false : true;
    }

    public static boolean b(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f2 = i / 7.0f;
        float f3 = 0.5f * f2;
        return java.lang.Math.abs(f2 - ((float) iArr[0])) < f3 && java.lang.Math.abs((5.0f * f2) - ((float) iArr[1])) < f3 && java.lang.Math.abs(f2 - ((float) iArr[2])) < f3;
    }

    private boolean b(int[] iArr, int[] iArr2) {
        if ((iArr2[0] & 1) != 0) {
            int i = iArr2[0];
            iArr[i] = iArr[i] + 1;
        } else if (iArr2[0] == 4) {
            if (a(iArr, false)) {
                boolean zA = a(iArr, iArr2[1], iArr2[2], false);
                if (zA) {
                    iArr2[4] = 2;
                }
                if (!zA) {
                    zA = a(iArr, iArr2[1], iArr2[2]);
                }
                if (zA) {
                    iArr2[0] = 0;
                    a(iArr);
                    return true;
                }
            }
            if (b(iArr)) {
                int i2 = iArr2[2];
                for (int i3 = iArr2[0]; i3 > 2; i3--) {
                    i2 -= iArr[i3];
                }
                if (b(iArr, iArr2[1], i2)) {
                    d(iArr);
                    iArr2[0] = 3;
                    return true;
                }
            }
            if (com.huawei.hms.scankit.p.Bc.f492d && a(iArr, true) && a(iArr, iArr2[1], iArr2[2], true)) {
                iArr2[0] = 0;
                a(iArr);
                return true;
            }
            d(iArr);
            iArr2[0] = 3;
        } else {
            int i4 = iArr2[0] + 1;
            iArr2[0] = i4;
            iArr[i4] = iArr[i4] + 1;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.scankit.p.C0202rc[] b() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0212tc.b():com.huawei.hms.scankit.p.rc[]");
    }

    private boolean c(int i, int i2, int i3, int[] iArr) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.f828f;
        while (i >= 0 && !c0122bb.b(i2, i) && iArr[1] <= i3) {
            iArr[1] = iArr[1] + 1;
            i--;
        }
        if (i < 0 || iArr[1] > i3) {
            return true;
        }
        while (i >= 0 && c0122bb.b(i2, i) && iArr[0] <= i3) {
            iArr[0] = iArr[0] + 1;
            i--;
        }
        return iArr[0] > i3;
    }

    public static boolean c(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f2 = i / 7.0f;
        float f3 = 0.75f * f2;
        return java.lang.Math.abs(f2 - ((float) iArr[0])) < f3 && java.lang.Math.abs(f2 - ((float) iArr[1])) < f3 && java.lang.Math.abs((f2 * 3.0f) - ((float) iArr[2])) < 3.0f * f3 && java.lang.Math.abs(f2 - ((float) iArr[3])) < f3 && java.lang.Math.abs(f2 - ((float) iArr[4])) < f3;
    }

    private com.huawei.hms.scankit.p.C0202rc[] c() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.C0202rc[] c0202rcArrA = this.f829g.size() > 2 ? a(true) : null;
        if (this.f829g.size() == 2) {
            int i = this.f829g.get(0).e() > this.f829g.get(1).e() ? 0 : 1;
            if (java.lang.Math.max(this.f829g.get(0).e(), this.f829g.get(1).e()) / java.lang.Math.min(this.f829g.get(0).e(), this.f829g.get(1).e()) > 1.5d) {
                com.huawei.hms.scankit.p.C0202rc c0202rc = this.f829g.get(i);
                this.f829g.clear();
                this.f829g.add(c0202rc);
            }
        }
        if (this.f829g.size() == 1 && this.h.size() > 1) {
            c0202rcArrA = g();
        }
        if (this.f829g.size() == 1 && this.h.size() == 1) {
            this.f829g.addAll(this.h);
            this.h.clear();
        }
        if (this.f829g.size() == 2) {
            try {
                c0202rcArrA = h();
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                c0202rcArrA = b();
            }
        }
        if (this.f829g.size() != 0) {
            return c0202rcArrA;
        }
        this.f829g.addAll(this.h);
        return this.f829g.size() < 20 ? a(false) : f();
    }

    private boolean d(int i, int i2, int i3, int[] iArr) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.f828f;
        while (i >= 0 && !c0122bb.b(i2, i) && iArr[3] <= i3) {
            iArr[3] = iArr[3] + 1;
            i--;
        }
        if (i >= 0 && iArr[3] <= i3) {
            while (i >= 0 && c0122bb.b(i2, i) && iArr[2] <= i3) {
                iArr[2] = iArr[2] + 1;
                i--;
            }
            if (i >= 0 && iArr[2] <= i3) {
                while (i >= 0 && !c0122bb.b(i2, i) && iArr[1] <= i3) {
                    iArr[1] = iArr[1] + 1;
                    i--;
                }
                if (i >= 0 && iArr[1] <= i3) {
                    while (i >= 0 && c0122bb.b(i2, i) && iArr[0] <= i3) {
                        iArr[0] = iArr[0] + 1;
                        i--;
                    }
                    return iArr[0] > i3;
                }
            }
        }
        return true;
    }

    private int[] d() {
        a(this.i);
        return this.i;
    }

    public static void e() {
        f825c = false;
        f826d = false;
    }

    private com.huawei.hms.scankit.p.C0202rc[] f() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int size = this.f829g.size();
        if (size < 3) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        float fE = 0.0f;
        if (size > 3) {
            java.util.Iterator<com.huawei.hms.scankit.p.C0202rc> it = this.f829g.iterator();
            float f2 = 0.0f;
            float f3 = 0.0f;
            while (it.hasNext()) {
                float fE2 = it.next().e();
                f2 += fE2;
                f3 += fE2 * fE2;
            }
            float f4 = f2 / size;
            float fSqrt = (float) java.lang.Math.sqrt((f3 / r0) - (f4 * f4));
            java.util.Collections.sort(this.f829g, new com.huawei.hms.scankit.p.C0212tc.c(f4));
            float fMax = java.lang.Math.max(0.2f * f4, fSqrt);
            int i = 0;
            while (i < this.f829g.size() && this.f829g.size() > 3) {
                if (java.lang.Math.abs(this.f829g.get(i).e() - f4) > fMax) {
                    this.f829g.remove(i);
                    i--;
                }
                i++;
            }
        }
        if (this.f829g.size() > 3) {
            java.util.Iterator<com.huawei.hms.scankit.p.C0202rc> it2 = this.f829g.iterator();
            while (it2.hasNext()) {
                fE += it2.next().e();
            }
            java.util.Collections.sort(this.f829g, new com.huawei.hms.scankit.p.C0212tc.a(fE / this.f829g.size()));
            java.util.List<com.huawei.hms.scankit.p.C0202rc> list = this.f829g;
            list.subList(3, list.size()).clear();
        }
        double[] dArr = {a(this.f829g.get(0), this.f829g.get(1)), a(this.f829g.get(1), this.f829g.get(2)), a(this.f829g.get(0), this.f829g.get(2))};
        java.util.Arrays.sort(dArr);
        if (java.lang.Math.abs(((dArr[1] + dArr[0]) - dArr[2]) / (java.lang.Math.sqrt(dArr[1]) * (java.lang.Math.sqrt(dArr[0]) * 2.0d))) <= 0.25d) {
            return new com.huawei.hms.scankit.p.C0202rc[]{this.f829g.get(0), this.f829g.get(1), this.f829g.get(2)};
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private com.huawei.hms.scankit.p.C0202rc[] g() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        java.util.Collections.sort(this.h, f827e);
        double[] dArr = new double[3];
        com.huawei.hms.scankit.p.C0202rc[] c0202rcArr = new com.huawei.hms.scankit.p.C0202rc[3];
        int i = 0;
        double d2 = Double.MAX_VALUE;
        while (i < this.f829g.size()) {
            com.huawei.hms.scankit.p.C0202rc c0202rc = this.f829g.get(i);
            float fE = c0202rc.e();
            int i2 = 0;
            while (i2 < this.h.size() - 1) {
                com.huawei.hms.scankit.p.C0202rc c0202rc2 = this.h.get(i2);
                double dE = c0202rc2.e() / fE;
                if (dE <= 1.25d && dE >= 0.75d) {
                    double dA = a(c0202rc, c0202rc2);
                    if (java.lang.Math.sqrt(dA) >= fE * 13.0f) {
                        int i3 = i2 + 1;
                        while (i3 < this.h.size()) {
                            com.huawei.hms.scankit.p.C0202rc c0202rc3 = this.h.get(i3);
                            int i4 = i;
                            double dE2 = c0202rc3.e() / fE;
                            if (dE2 <= 1.25d && dE2 >= 0.75d) {
                                dArr[0] = dA;
                                dArr[1] = a(c0202rc2, c0202rc3);
                                dArr[2] = a(c0202rc, c0202rc3);
                                java.util.Arrays.sort(dArr);
                                double dAbs = (java.lang.Math.abs(dArr[2] - (dArr[0] * 2.0d)) + java.lang.Math.abs(dArr[2] - (dArr[1] * 2.0d))) / dArr[2];
                                double dSqrt = ((dArr[1] + dArr[0]) - dArr[2]) / (java.lang.Math.sqrt(dArr[1]) * (java.lang.Math.sqrt(dArr[0]) * 2.0d));
                                if (dAbs < d2 && java.lang.Math.abs(dSqrt) < 0.2d) {
                                    c0202rcArr[0] = c0202rc;
                                    c0202rcArr[1] = c0202rc2;
                                    c0202rcArr[2] = c0202rc3;
                                    d2 = dAbs;
                                }
                                i3++;
                                i = i4;
                            }
                            i3++;
                            i = i4;
                        }
                    }
                }
                i2++;
                i = i;
            }
            i++;
        }
        if (d2 != Double.MAX_VALUE) {
            return c0202rcArr;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private com.huawei.hms.scankit.p.C0202rc[] h() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.C0202rc c0202rc;
        com.huawei.hms.scankit.p.C0202rc c0202rc2;
        double d2;
        char c2 = 0;
        com.huawei.hms.scankit.p.C0202rc c0202rc3 = this.f829g.get(0);
        char c3 = 1;
        com.huawei.hms.scankit.p.C0202rc c0202rc4 = this.f829g.get(1);
        com.huawei.hms.scankit.p.C0202rc c0202rc5 = this.f829g.get(1);
        double dA = a(c0202rc3, c0202rc4);
        double[] dArr = new double[3];
        float fMin = java.lang.Math.min(c0202rc3.e(), c0202rc4.e());
        java.util.Collections.sort(this.f829g, new com.huawei.hms.scankit.p.C0212tc.c(fMin));
        int i = 0;
        double d3 = Double.MAX_VALUE;
        while (i < this.h.size()) {
            com.huawei.hms.scankit.p.C0202rc c0202rc6 = this.h.get(i);
            float fE = c0202rc6.e();
            if (fE > 1.25f * fMin || fE < 0.75f * fMin) {
                c0202rc = c0202rc3;
                c0202rc2 = c0202rc4;
                d2 = dA;
            } else {
                dArr[c2] = dA;
                dArr[c3] = a(c0202rc4, c0202rc6);
                dArr[2] = a(c0202rc3, c0202rc6);
                java.util.Arrays.sort(dArr);
                double dAbs = (java.lang.Math.abs(dArr[2] - (dArr[c2] * 2.0d)) + java.lang.Math.abs(dArr[2] - (dArr[c3] * 2.0d))) / dArr[2];
                double dSqrt = ((dArr[c3] + dArr[c2]) - dArr[2]) / (java.lang.Math.sqrt(dArr[c3]) * (java.lang.Math.sqrt(dArr[c2]) * 2.0d));
                if (!com.huawei.hms.scankit.p.Bc.f492d || java.lang.Math.abs(dSqrt) >= 0.25d) {
                    c0202rc = c0202rc3;
                    c0202rc2 = c0202rc4;
                    d2 = dA;
                } else {
                    boolean z = c0202rc3.b() < ((float) this.f828f.d()) * 0.3f && c0202rc4.b() > ((float) this.f828f.d()) * 0.7f;
                    boolean z2 = c0202rc4.b() < ((float) this.f828f.d()) * 0.3f && c0202rc3.b() > ((float) this.f828f.d()) * 0.7f;
                    boolean z3 = c0202rc3.c() < ((float) this.f828f.b()) * 0.3f && c0202rc4.c() > ((float) this.f828f.b()) * 0.7f;
                    c0202rc2 = c0202rc4;
                    boolean z4 = c0202rc4.c() < ((float) this.f828f.b()) * 0.3f && c0202rc3.c() > ((float) this.f828f.b()) * 0.7f;
                    c0202rc = c0202rc3;
                    boolean z5 = c0202rc6.b() < ((float) this.f828f.d()) * 0.3f || c0202rc6.b() > ((float) this.f828f.d()) * 0.7f;
                    d2 = dA;
                    boolean z6 = c0202rc6.c() < ((float) this.f828f.b()) * 0.3f || c0202rc6.c() > ((float) this.f828f.b()) * 0.7f;
                    if (((z || z2) && !z5) || ((z3 || z4) && !z6)) {
                    }
                }
                if (dAbs < d3 && java.lang.Math.abs(dSqrt) < 0.25d) {
                    c0202rc5 = c0202rc6;
                    d3 = dAbs;
                }
            }
            i++;
            c0202rc4 = c0202rc2;
            c0202rc3 = c0202rc;
            dA = d2;
            c2 = 0;
            c3 = 1;
        }
        if (d3 == Double.MAX_VALUE) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        this.f829g.add(c0202rc5);
        return new com.huawei.hms.scankit.p.C0202rc[]{this.f829g.get(0), this.f829g.get(1), this.f829g.get(2)};
    }

    public final com.huawei.hms.scankit.p.C0217uc a() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iB = this.f828f.b();
        int iD = this.f828f.d();
        int i = (iB * 3) / 388;
        if (i < 3) {
            i = 3;
        }
        if (com.huawei.hms.scankit.p.Bc.i) {
            i = 2;
        }
        a(i, iB, iD);
        com.huawei.hms.scankit.p.C0202rc[] c0202rcArrC = c();
        if (c0202rcArrC == null) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        com.huawei.hms.scankit.aiscan.common.z.a(c0202rcArrC);
        double dA = a(c0202rcArrC[0], c0202rcArrC[1]);
        double dSqrt = java.lang.Math.sqrt(a(c0202rcArrC[1], c0202rcArrC[2])) * java.lang.Math.sqrt(dA);
        double d2 = this.f828f.d() * this.f828f.b();
        java.lang.Double.isNaN(d2);
        if (d2 / dSqrt <= 900.0d) {
            return new com.huawei.hms.scankit.p.C0217uc(c0202rcArrC);
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public final void a(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 0;
        }
    }

    public final boolean a(int[] iArr, int i, int i2) {
        int i3 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        float fA = a(iArr, i2);
        float fB = b(i, (int) fA, iArr[2], i3, false);
        if (java.lang.Float.isNaN(fB)) {
            fB = a(i, (int) ((fA - (iArr[2] / 2)) - (iArr[1] / 2)), (int) ((iArr[2] / 2) + fA + (iArr[3] / 2)), iArr[1] + iArr[2] + iArr[3], i3);
        }
        if (java.lang.Float.isNaN(fB)) {
            return false;
        }
        return a(false, fB, fA, i3 / 7.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(int[] r17, int r18, int r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0212tc.a(int[], int, int, boolean):boolean");
    }

    public final boolean b(int[] iArr, int i, int i2) {
        int i3 = iArr[0] + iArr[1] + iArr[2];
        float f2 = i2 - (i3 / 2);
        int i4 = (int) f2;
        float fA = a(i, i4, iArr[1], i3);
        if (java.lang.Float.isNaN(fA)) {
            fA = a(i, (int) (f2 - ((iArr[1] * 2) / 5)), (int) (((iArr[1] * 2) / 5) + f2), iArr[1], i3);
            if (java.lang.Float.isNaN(fA) && com.huawei.hms.scankit.p.Bc.f492d) {
                fA = b(i, i4, iArr[1], i3);
            }
        }
        if (java.lang.Float.isNaN(fA)) {
            return false;
        }
        return a(false, fA, f2, i3 / 7.0f);
    }

    public final void d(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }
}
