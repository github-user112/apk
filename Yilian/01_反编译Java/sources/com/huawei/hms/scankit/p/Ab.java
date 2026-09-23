package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public abstract class Ab implements com.huawei.hms.scankit.aiscan.common.t {
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

    /* JADX WARN: Removed duplicated region for block: B:20:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0048 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a r10, com.huawei.hms.scankit.p.C0117ab r11, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> r12, int r13, int r14) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        /*
            r9 = this;
            r0 = 0
        L1:
            r1 = 3
            if (r0 >= r1) goto L4b
            r2 = 1
            if (r0 != 0) goto Lc
            com.huawei.hms.scankit.p.ab r11 = r10.a(r13, r11)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L48
            goto L24
        Lc:
            if (r0 != r2) goto L18
            com.huawei.hms.scankit.p.bb r1 = r10.b()
            com.huawei.hms.scankit.p.ab r11 = r1.a(r13, r11)
            r1 = 1
            goto L24
        L18:
            r3 = 2
            if (r0 != r3) goto L24
            boolean r3 = com.huawei.hms.scankit.p.Bc.o
            if (r3 != 0) goto L20
            goto L48
        L20:
            com.huawei.hms.scankit.p.ab r11 = r10.a(r13, r2)
        L24:
            int[] r3 = r11.c()
            boolean r3 = a(r3)
            if (r3 != 0) goto L2f
            goto L48
        L2f:
            boolean r3 = com.huawei.hms.scankit.p.Bc.f491c
            if (r3 != 0) goto L35
            r5 = 1
            goto L36
        L35:
            r5 = r1
        L36:
            r3 = r9
            r4 = r11
            r6 = r12
            r7 = r13
            r8 = r14
            com.huawei.hms.scankit.aiscan.common.x r1 = r3.a(r4, r5, r6, r7, r8)
            if (r1 == 0) goto L48
            java.lang.String r2 = r1.i()
            if (r2 == 0) goto L48
            return r1
        L48:
            int r0 = r0 + 1
            goto L1
        L4b:
            r10 = 0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Ab.a(com.huawei.hms.scankit.p._a, com.huawei.hms.scankit.p.ab, java.util.Map, int, int):com.huawei.hms.scankit.aiscan.common.x");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p.C0117ab r19, int r20, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> r21, int r22, int r23) {
        /*
            r18 = this;
            r0 = r23
            r1 = 0
            r3 = r20
            r2 = r21
            r4 = 0
        L8:
            if (r4 >= r3) goto La5
            if (r4 != 0) goto Lf
            r19.b()
        Lf:
            r5 = 1
            if (r4 != r5) goto L15
            r19.h()
        L15:
            r6 = 2
            if (r4 != r6) goto L1e
            r19.f()
            r19.i()
        L1e:
            r7 = 0
        L1f:
            if (r7 >= r6) goto L9b
            if (r7 != r5) goto L47
            r19.g()
            if (r2 == 0) goto L47
            com.huawei.hms.scankit.aiscan.common.d r8 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.NEED_RESULT_POINT_CALLBACK
            boolean r8 = r2.containsKey(r8)
            if (r8 == 0) goto L47
            java.util.EnumMap r8 = new java.util.EnumMap
            java.lang.Class<com.huawei.hms.scankit.aiscan.common.d> r9 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.class
            r8.<init>(r9)
            r8.putAll(r2)
            com.huawei.hms.scankit.aiscan.common.d r2 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.NEED_RESULT_POINT_CALLBACK
            r8.remove(r2)
            r9 = r19
            r10 = r22
            r2 = r8
            r8 = r18
            goto L4d
        L47:
            r8 = r18
            r9 = r19
            r10 = r22
        L4d:
            com.huawei.hms.scankit.aiscan.common.x r11 = r8.a(r10, r9, r2)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            if (r7 != r5) goto L89
            com.huawei.hms.scankit.aiscan.common.z[] r12 = r11.h()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            if (r12 == 0) goto L89
            com.huawei.hms.scankit.aiscan.common.z r13 = new com.huawei.hms.scankit.aiscan.common.z     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            float r14 = (float) r0     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            r15 = r12[r1]     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            float r15 = r15.b()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            float r15 = r14 - r15
            r16 = 1065353216(0x3f800000, float:1.0)
            float r15 = r15 - r16
            r17 = r12[r1]     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            float r6 = r17.c()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            r13.<init>(r15, r6)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            r12[r1] = r13     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            com.huawei.hms.scankit.aiscan.common.z r6 = new com.huawei.hms.scankit.aiscan.common.z     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            r13 = r12[r5]     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            float r13 = r13.b()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            float r14 = r14 - r13
            float r14 = r14 - r16
            r13 = r12[r5]     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            float r13 = r13.c()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            r6.<init>(r14, r13)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            r12[r5] = r6     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
        L89:
            boolean r6 = a(r11, r0)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L91
            if (r6 != 0) goto L90
            goto L97
        L90:
            return r11
        L91:
            if (r7 != r5) goto L97
            r19.g()
        L97:
            int r7 = r7 + 1
            r6 = 2
            goto L1f
        L9b:
            r8 = r18
            r9 = r19
            r10 = r22
            int r4 = r4 + 1
            goto L8
        La5:
            r8 = r18
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Ab.a(com.huawei.hms.scankit.p.ab, int, java.util.Map, int, int):com.huawei.hms.scankit.aiscan.common.x");
    }

    public static void a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, int[] iArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = iArr.length;
        java.util.Arrays.fill(iArr, 0, length, 0);
        int iD = c0117ab.d();
        if (i >= iD) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        boolean z = !c0117ab.a(i);
        int i2 = 0;
        while (i < iD) {
            if (c0117ab.a(i) == z) {
                i2++;
                if (i2 == length) {
                    break;
                }
                if (i2 < 0 || i2 >= iArr.length) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                iArr[i2] = 1;
                z = !z;
            } else {
                if (i2 < 0 || i2 >= iArr.length) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                iArr[i2] = iArr[i2] + 1;
            }
            i++;
        }
        if (i2 != length) {
            if (i2 != length - 1 || i != iD) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
        }
    }

    public static boolean a(com.huawei.hms.scankit.aiscan.common.x xVar, int i) {
        com.huawei.hms.scankit.aiscan.common.z[] zVarArrH = xVar.h();
        double dB = zVarArrH[0].b();
        double dB2 = zVarArrH[1].b();
        java.lang.Double.isNaN(dB2);
        java.lang.Double.isNaN(dB);
        double dAbs = java.lang.Math.abs(dB2 - dB);
        double d2 = i;
        java.lang.Double.isNaN(d2);
        return dAbs / d2 > 0.4d;
    }

    public static boolean a(int[] iArr) {
        int iBitCount = 0;
        int i = 0;
        for (int i2 = 0; i2 < iArr.length && iBitCount < 20; i2++) {
            iBitCount += java.lang.Integer.bitCount((i | (iArr[i2] << 1)) ^ iArr[i2]);
            i = (iArr[i2] >> 31) & 1;
        }
        return iBitCount >= 20;
    }

    private com.huawei.hms.scankit.aiscan.common.x b(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iE = _aVar.e();
        int iC = _aVar.c();
        com.huawei.hms.scankit.p.C0117ab c0117ab = new com.huawei.hms.scankit.p.C0117ab(iE);
        int iMax = java.lang.Math.max(1, iC >> 5);
        int iIntValue = iC / 2;
        if (map != null && map.containsKey(com.huawei.hms.scankit.aiscan.common.EnumC0105d.PHOTO_MODE_NUM)) {
            iIntValue += (((java.lang.Integer) map.get(com.huawei.hms.scankit.aiscan.common.EnumC0105d.PHOTO_MODE_NUM)).intValue() * iMax) / 3;
        }
        int i = iIntValue;
        int i2 = 0;
        while (i2 < 15) {
            int i3 = i2 + 1;
            int i4 = i3 / 2;
            if (!((i2 & 1) == 0)) {
                i4 = -i4;
            }
            int i5 = (i4 * iMax) + i;
            if (i5 < 0 || i5 >= iC) {
                break;
            }
            com.huawei.hms.scankit.aiscan.common.x xVarA = a(_aVar, c0117ab, map, i5, iE);
            if (xVarA != null && xVarA.i() != null) {
                return xVarA;
            }
            i2 = i3;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public abstract com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map);

    @Override // com.huawei.hms.scankit.aiscan.common.t
    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        return b(_aVar, map);
    }
}
