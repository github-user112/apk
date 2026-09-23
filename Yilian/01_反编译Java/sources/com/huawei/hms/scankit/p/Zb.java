package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Zb {
    public static final com.huawei.hms.scankit.p.Rb a = new com.huawei.hms.scankit.p.Rb();

    public static int a(com.huawei.hms.scankit.p.Nb nb, int i, int i2, boolean z) {
        int i3 = z ? 1 : -1;
        int i4 = i - i3;
        com.huawei.hms.scankit.p.Kb kbA = a(nb, i4) ? nb.a(i4).a(i2) : null;
        if (kbA != null) {
            return z ? kbA.b() : kbA.d();
        }
        com.huawei.hms.scankit.p.Kb kbB = nb.a(i).b(i2);
        if (kbB != null) {
            return z ? kbB.d() : kbB.b();
        }
        if (a(nb, i4)) {
            kbB = nb.a(i4).b(i2);
        }
        if (kbB != null) {
            return z ? kbB.b() : kbB.d();
        }
        int i5 = 0;
        while (true) {
            i -= i3;
            if (!a(nb, i)) {
                com.huawei.hms.scankit.p.Jb jbD = nb.d();
                return z ? jbD.e() : jbD.c();
            }
            for (com.huawei.hms.scankit.p.Kb kb : nb.a(i).b()) {
                if (kb != null) {
                    return ((kb.b() - kb.d()) * i3 * i5) + (z ? kb.b() : kb.d());
                }
            }
            i5++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0022, code lost:
    
        r0 = -r0;
        r8 = !r8;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(com.huawei.hms.scankit.p.C0122bb r5, int r6, int r7, boolean r8, int r9, int r10) {
        /*
            if (r8 == 0) goto L4
            r0 = -1
            goto L5
        L4:
            r0 = 1
        L5:
            r1 = 0
            r2 = r9
        L7:
            r3 = 2
            if (r1 >= r3) goto L28
        La:
            if (r8 == 0) goto Lf
            if (r2 < r6) goto L22
            goto L11
        Lf:
            if (r2 >= r7) goto L22
        L11:
            boolean r4 = r5.b(r2, r10)
            if (r8 != r4) goto L22
            int r4 = r9 - r2
            int r4 = java.lang.Math.abs(r4)
            if (r4 <= r3) goto L20
            return r9
        L20:
            int r2 = r2 + r0
            goto La
        L22:
            int r0 = -r0
            r8 = r8 ^ 1
            int r1 = r1 + 1
            goto L7
        L28:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Zb.a(com.huawei.hms.scankit.p.bb, int, int, boolean, int, int):int");
    }

    public static int a(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    public static int a(int[] iArr, int[] iArr2, int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if ((iArr2 == null || iArr2.length <= (i / 2) + 3) && i >= 0 && i <= 512) {
            return a.a(iArr, i, iArr2);
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static com.huawei.hms.scankit.aiscan.common.C0106e a(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = iArr3.length;
        int[] iArr5 = new int[length];
        int i2 = 100;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            for (int i4 = 0; i4 < length; i4++) {
                iArr[iArr3[i4]] = iArr4[i4][iArr5[i4]];
            }
            try {
                return a(iArr, i, iArr2, map);
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                if (length == 0) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        break;
                    }
                    if (iArr5[i5] < iArr4[i5].length - 1) {
                        iArr5[i5] = iArr5[i5] + 1;
                        break;
                    }
                    iArr5[i5] = 0;
                    if (i5 == length - 1) {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                    }
                    i5++;
                }
                i2 = i3;
            }
        }
    }

    public static com.huawei.hms.scankit.aiscan.common.C0106e a(com.huawei.hms.scankit.p.Nb nb, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Ib[][] ibArrA = a(nb);
        a(nb, ibArrA);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int[] iArr = new int[nb.a() * nb.c()];
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        for (int i = 0; i < nb.c(); i++) {
            int i2 = 0;
            while (i2 < nb.a()) {
                int i3 = i2 + 1;
                int[] iArrA = ibArrA[i][i3].a();
                int iA = (nb.a() * i) + i2;
                if (iArrA.length == 0) {
                    arrayList.add(java.lang.Integer.valueOf(iA));
                } else if (iArrA.length == 1) {
                    iArr[iA] = iArrA[0];
                } else {
                    arrayList3.add(java.lang.Integer.valueOf(iA));
                    arrayList2.add(iArrA);
                }
                i2 = i3;
            }
        }
        int size = arrayList2.size();
        int[][] iArr2 = new int[size][];
        for (int i4 = 0; i4 < size; i4++) {
            iArr2[i4] = (int[]) arrayList2.get(i4);
        }
        return a(nb.b(), iArr, com.huawei.hms.scankit.p.Vb.a(arrayList), com.huawei.hms.scankit.p.Vb.a(arrayList3), iArr2, map);
    }

    public static com.huawei.hms.scankit.aiscan.common.C0106e a(com.huawei.hms.scankit.p.C0122bb c0122bb, com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2, com.huawei.hms.scankit.aiscan.common.z zVar3, com.huawei.hms.scankit.aiscan.common.z zVar4, int i, int i2, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Nb nbB;
        com.huawei.hms.scankit.p.Pb pbA = null;
        com.huawei.hms.scankit.p.Pb pbA2 = null;
        com.huawei.hms.scankit.p.Jb jb = new com.huawei.hms.scankit.p.Jb(c0122bb, zVar, zVar2, zVar3, zVar4);
        boolean z = true;
        while (true) {
            if (zVar != null) {
                pbA = a(c0122bb, jb, zVar, true, i, i2);
            }
            if (zVar3 != null) {
                pbA2 = a(c0122bb, jb, zVar3, false, i, i2);
            }
            nbB = b(pbA, pbA2);
            if (nbB == null) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            com.huawei.hms.scankit.p.Jb jbD = nbB.d();
            if (!z || jbD == null || (jbD.f() >= jb.f() && jbD.d() <= jb.d())) {
                break;
            }
            jb = jbD;
            z = false;
        }
        nbB.a(jb);
        int iA = nbB.a() + 1;
        nbB.a(0, pbA);
        nbB.a(iA, pbA2);
        a(nbB, pbA, jb, iA, c0122bb, i, i2);
        return a(nbB, map);
    }

    public static com.huawei.hms.scankit.aiscan.common.C0106e a(int[] iArr, int i, int[] iArr2, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (iArr.length == 0) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int i2 = 1 << (i + 1);
        int iA = a(iArr, iArr2, i2);
        a(iArr, i2);
        com.huawei.hms.scankit.aiscan.common.C0106e c0106eA = com.huawei.hms.scankit.p.Mb.a(iArr, java.lang.String.valueOf(i), map);
        c0106eA.b(java.lang.Integer.valueOf(iA));
        c0106eA.a(java.lang.Integer.valueOf(iArr2.length));
        return c0106eA;
    }

    public static com.huawei.hms.scankit.p.Hb a(com.huawei.hms.scankit.p.Pb pb, com.huawei.hms.scankit.p.Pb pb2) {
        com.huawei.hms.scankit.p.Hb hbC;
        com.huawei.hms.scankit.p.Hb hbC2;
        if (pb == null || (hbC = pb.c()) == null) {
            if (pb2 == null) {
                return null;
            }
            return pb2.c();
        }
        if (pb2 == null || (hbC2 = pb2.c()) == null || hbC.a() == hbC2.a() || hbC.b() == hbC2.b() || hbC.c() == hbC2.c()) {
            return hbC;
        }
        return null;
    }

    public static com.huawei.hms.scankit.p.Jb a(com.huawei.hms.scankit.p.Pb pb) {
        int[] iArrD;
        if (pb == null || (iArrD = pb.d()) == null) {
            return null;
        }
        int iB = b(iArrD);
        int i = 0;
        int i2 = 0;
        for (int i3 : iArrD) {
            i2 += iB - i3;
            if (i3 > 0) {
                break;
            }
        }
        com.huawei.hms.scankit.p.Kb[] kbArrB = pb.b();
        for (int i4 = 0; i2 > 0 && kbArrB[i4] == null; i4++) {
            i2--;
        }
        for (int length = iArrD.length - 1; length >= 0; length--) {
            i += iB - iArrD[length];
            if (iArrD[length] > 0) {
                break;
            }
        }
        for (int length2 = kbArrB.length - 1; i > 0 && kbArrB[length2] == null; length2--) {
            i--;
        }
        return pb.a().a(i2, i, pb.e());
    }

    public static com.huawei.hms.scankit.p.Kb a(com.huawei.hms.scankit.p.C0122bb c0122bb, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        int iA;
        int iA2;
        int iA3 = a(c0122bb, i, i2, z, i3, i4);
        int[] iArrB = b(c0122bb, i, i2, z, iA3, i4);
        if (iArrB == null) {
            return null;
        }
        int iA4 = com.huawei.hms.scankit.aiscan.common.n.a(iArrB);
        if (z) {
            i7 = iA3 + iA4;
        } else {
            for (int i8 = 0; i8 < iArrB.length / 2; i8++) {
                int i9 = iArrB[i8];
                iArrB[i8] = iArrB[(iArrB.length - 1) - i8];
                iArrB[(iArrB.length - 1) - i8] = i9;
            }
            iA3 -= iA4;
            i7 = iA3;
        }
        if (a(iA4, i5, i6) && (iA2 = com.huawei.hms.scankit.p.Vb.a((iA = com.huawei.hms.scankit.p.Ub.a(iArrB)))) != -1) {
            return new com.huawei.hms.scankit.p.Kb(iA3, i7, b(iA), iA2);
        }
        return null;
    }

    public static com.huawei.hms.scankit.p.Pb a(com.huawei.hms.scankit.p.C0122bb c0122bb, com.huawei.hms.scankit.p.Jb jb, com.huawei.hms.scankit.aiscan.common.z zVar, boolean z, int i, int i2) {
        com.huawei.hms.scankit.p.Pb pb = new com.huawei.hms.scankit.p.Pb(jb, z);
        int i3 = 0;
        while (i3 < 2) {
            int i4 = i3 == 0 ? 1 : -1;
            int iB = (int) zVar.b();
            for (int iC = (int) zVar.c(); iC <= jb.d() && iC >= jb.f(); iC += i4) {
                com.huawei.hms.scankit.p.Kb kbA = a(c0122bb, 0, c0122bb.d(), z, iB, iC, i, i2);
                if (kbA != null) {
                    pb.a(iC, kbA);
                    iB = z ? kbA.d() : kbA.b();
                }
            }
            i3++;
        }
        return pb;
    }

    public static void a(com.huawei.hms.scankit.p.Nb nb, com.huawei.hms.scankit.p.Pb pb, com.huawei.hms.scankit.p.Jb jb, int i, com.huawei.hms.scankit.p.C0122bb c0122bb, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        com.huawei.hms.scankit.p.Ob ob;
        boolean z = pb != null;
        int i8 = i2;
        int i9 = i3;
        for (int i10 = 1; i10 <= i; i10++) {
            int i11 = z ? i10 : i - i10;
            if (nb.a(i11) == null) {
                com.huawei.hms.scankit.p.Ob pb2 = (i11 == 0 || i11 == i) ? new com.huawei.hms.scankit.p.Pb(jb, i11 == 0) : new com.huawei.hms.scankit.p.Ob(jb);
                nb.a(i11, pb2);
                int i12 = -1;
                int i13 = i8;
                int iMax = i9;
                int iF = jb.f();
                int i14 = -1;
                while (iF <= jb.d()) {
                    int iA = a(nb, i11, iF, z);
                    if (iA >= 0 && iA <= jb.c()) {
                        i4 = iA;
                    } else if (i14 == i12) {
                        i5 = i14;
                        i6 = iF;
                        i7 = i13;
                        ob = pb2;
                        i13 = i7;
                        i4 = i5;
                        iF = i6 + 1;
                        pb2 = ob;
                        i14 = i4;
                        i12 = -1;
                    } else {
                        i4 = i14;
                    }
                    i5 = i14;
                    int i15 = iF;
                    int i16 = iMax;
                    int i17 = i13;
                    ob = pb2;
                    com.huawei.hms.scankit.p.Kb kbA = a(c0122bb, jb.e(), jb.c(), z, i4, i15, i17, i16);
                    i6 = i15;
                    if (kbA != null) {
                        ob.a(i6, kbA);
                        int iMin = java.lang.Math.min(i17, kbA.f());
                        iMax = java.lang.Math.max(i16, kbA.f());
                        i13 = iMin;
                        iF = i6 + 1;
                        pb2 = ob;
                        i14 = i4;
                        i12 = -1;
                    } else {
                        iMax = i16;
                        i7 = i17;
                        i13 = i7;
                        i4 = i5;
                        iF = i6 + 1;
                        pb2 = ob;
                        i14 = i4;
                        i12 = -1;
                    }
                }
                i8 = i13;
                i9 = iMax;
            }
        }
    }

    public static void a(com.huawei.hms.scankit.p.Nb nb, com.huawei.hms.scankit.p.Ib[][] ibArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Ib ib = ibArr[0][1];
        int[] iArrA = ib.a();
        int iC = (nb.c() * nb.a()) - c(nb.b());
        if (iArrA.length == 0) {
            if (iC < 1 || iC > 928) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
        } else if (iArrA[0] == iC) {
            return;
        }
        ib.a(iC);
    }

    public static void a(int[] iArr, int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (iArr.length < 4) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int i2 = iArr[0];
        if (i2 > iArr.length) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        if (i2 == 0) {
            if (i >= iArr.length) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            iArr[0] = iArr.length - i;
        }
    }

    public static boolean a(int i, int i2, int i3) {
        return i2 + (-2) <= i && i <= i3 + 2;
    }

    public static boolean a(com.huawei.hms.scankit.p.Nb nb, int i) {
        return i >= 0 && i <= nb.a() + 1;
    }

    public static int[] a(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i & 1;
            if (i4 != i2) {
                i3--;
                if (i3 < 0) {
                    return iArr;
                }
                i2 = i4;
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }

    public static com.huawei.hms.scankit.p.Ib[][] a(com.huawei.hms.scankit.p.Nb nb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iC;
        com.huawei.hms.scankit.p.Ib[][] ibArr = (com.huawei.hms.scankit.p.Ib[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) com.huawei.hms.scankit.p.Ib.class, nb.c(), nb.a() + 2);
        for (int i = 0; i < ibArr.length; i++) {
            for (int i2 = 0; i2 < ibArr[i].length; i2++) {
                ibArr[i][i2] = new com.huawei.hms.scankit.p.Ib();
            }
        }
        int i3 = 0;
        for (com.huawei.hms.scankit.p.Ob ob : nb.e()) {
            if (ob != null) {
                for (com.huawei.hms.scankit.p.Kb kb : ob.b()) {
                    if (kb != null && (iC = kb.c()) >= 0 && iC < ibArr.length) {
                        ibArr[iC][i3].a(kb.e());
                    }
                }
            }
            i3++;
        }
        return ibArr;
    }

    public static int b(int i) {
        return a(a(i));
    }

    public static int b(int[] iArr) {
        int iMax = -1;
        for (int i : iArr) {
            iMax = java.lang.Math.max(iMax, i);
        }
        return iMax;
    }

    public static com.huawei.hms.scankit.p.Nb b(com.huawei.hms.scankit.p.Pb pb, com.huawei.hms.scankit.p.Pb pb2) {
        com.huawei.hms.scankit.p.Hb hbA;
        if ((pb == null && pb2 == null) || (hbA = a(pb, pb2)) == null) {
            return null;
        }
        return new com.huawei.hms.scankit.p.Nb(hbA, com.huawei.hms.scankit.p.Jb.a(a(pb), a(pb2)));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] b(com.huawei.hms.scankit.p.C0122bb r8, int r9, int r10, boolean r11, int r12, int r13) {
        /*
            r0 = 8
            int[] r1 = new int[r0]
            r2 = 1
            if (r11 == 0) goto L9
            r3 = 1
            goto La
        L9:
            r3 = -1
        La:
            r4 = 0
            r6 = r11
            r5 = 0
        Ld:
            if (r11 == 0) goto L12
            if (r12 >= r10) goto L2b
            goto L14
        L12:
            if (r12 < r9) goto L2b
        L14:
            if (r5 >= r0) goto L2b
            boolean r7 = r8.b(r12, r13)
            if (r7 != r6) goto L23
            r7 = r1[r5]
            int r7 = r7 + r2
            r1[r5] = r7
            int r12 = r12 + r3
            goto Ld
        L23:
            int r5 = r5 + 1
            if (r6 != 0) goto L29
            r6 = 1
            goto Ld
        L29:
            r6 = 0
            goto Ld
        L2b:
            if (r5 == r0) goto L38
            if (r11 == 0) goto L30
            r9 = r10
        L30:
            if (r12 != r9) goto L36
            r8 = 7
            if (r5 != r8) goto L36
            goto L38
        L36:
            r8 = 0
            return r8
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Zb.b(com.huawei.hms.scankit.p.bb, int, int, boolean, int, int):int[]");
    }

    public static int c(int i) {
        return 2 << i;
    }
}
