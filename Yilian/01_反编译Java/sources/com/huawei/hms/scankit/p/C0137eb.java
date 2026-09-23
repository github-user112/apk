package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.eb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0137eb extends com.huawei.hms.scankit.p.C0132db {

    /* renamed from: f, reason: collision with root package name */
    public static int f707f = 3;

    /* renamed from: g, reason: collision with root package name */
    public static int f708g = 0;
    public static int h = 0;
    public static int i = 0;
    public static int j = 24;
    public com.huawei.hms.scankit.p.C0122bb k;

    static {
        int i2 = 1 << f707f;
        f708g = i2;
        h = i2 - 1;
        i = i2 * 5;
    }

    public C0137eb(com.huawei.hms.scankit.aiscan.common.m mVar) {
        super(mVar);
        a(com.huawei.hms.scankit.p.Bc.i);
    }

    public static int a(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    public static com.huawei.hms.scankit.p.C0122bb a(byte[] bArr, int i2, int i3, int i4, int i5, int[][] iArr) {
        int i6;
        int i7;
        int i8;
        int[] iArr2 = new int[i2 * i3];
        for (int i9 = 0; i9 < i3; i9++) {
            int iA = a(i9, 2, i3 - 3);
            for (int i10 = 0; i10 < i2; i10++) {
                int iA2 = a(i10, 2, i2 - 3);
                int i11 = iA + 2;
                int i12 = iA2 + 2;
                int i13 = iArr[i11][i12];
                if (iA == 2 && iA2 == 2) {
                    i8 = 0;
                } else if (iA == 2) {
                    i7 = iArr[i11][iA2 - 3];
                    i8 = 0;
                    i6 = 0;
                    iArr2[(i9 * i2) + i10] = (((i13 + i6) - i8) - i7) / 25;
                } else if (iA2 == 2) {
                    i8 = iArr[iA - 3][i12];
                } else {
                    int i14 = iA - 3;
                    int i15 = iA2 - 3;
                    i6 = iArr[i14][i15];
                    int i16 = iArr[i14][i12];
                    i7 = iArr[i11][i15];
                    i8 = i16;
                    iArr2[(i9 * i2) + i10] = (((i13 + i6) - i8) - i7) / 25;
                }
                i7 = 0;
                i6 = 0;
                iArr2[(i9 * i2) + i10] = (((i13 + i6) - i8) - i7) / 25;
            }
        }
        return new com.huawei.hms.scankit.p.C0122bb(i4, i5, (i4 + 31) / 32, a(bArr, iArr2, i2, i3, i4, i5));
    }

    private void a(boolean z) {
        int i2;
        if (z) {
            f707f = 2;
            i2 = 1 << 2;
        } else {
            f707f = 3;
            i2 = 1 << 3;
        }
        f708g = i2;
        h = i2 - 1;
        i = i2 * 5;
    }

    public static int[] a(int i2, int i3, int i4, byte[] bArr) {
        int i5 = (i3 * i4) + i2;
        int i6 = 0;
        int i7 = 0;
        int i8 = 255;
        int i9 = 0;
        while (i6 < f708g) {
            for (int i10 = 0; i10 < f708g; i10++) {
                int i11 = bArr[i5 + i10] & 255;
                i7 += i11;
                if (i11 < i8) {
                    i8 = i11;
                }
                if (i11 > i9) {
                    i9 = i11;
                }
            }
            if (i9 - i8 > j) {
                while (true) {
                    i6++;
                    i5 += i4;
                    if (i6 < f708g) {
                        for (int i12 = 0; i12 < f708g; i12++) {
                            i7 += bArr[i5 + i12] & 255;
                        }
                    }
                }
            }
            i6++;
            i5 += i4;
        }
        return new int[]{i7, i8, i9};
    }

    public static int[] a(byte[] bArr, int[] iArr, int i2, int i3, int i4, int i5) {
        int i6 = (i4 + 31) / 32;
        int i7 = i6 * i5;
        int[] iArr2 = new int[i7];
        for (int i8 = 0; i8 < i7; i8++) {
            iArr2[i8] = 0;
        }
        int i9 = f708g;
        for (int i10 = 0; i10 < i5; i10++) {
            int i11 = i10 / i9;
            for (int i12 = 0; i12 < i4; i12++) {
                if ((bArr[(i10 * i4) + i12] & 255) <= iArr[(i11 * i2) + (i12 / i9)]) {
                    int i13 = (i12 / 32) + (i10 * i6);
                    if (i13 < i7) {
                        iArr2[i13] = iArr2[i13] | (1 << (i12 & 31));
                    }
                }
            }
        }
        return iArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0076 A[PHI: r16
  0x0076: PHI (r16v2 int) = (r16v1 int), (r16v3 int), (r16v3 int), (r16v3 int) binds: [B:13:0x0053, B:15:0x0057, B:16:0x0059, B:18:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[][] a(byte[] r20, int r21, int r22, int r23, int r24) {
        /*
            r0 = r21
            r1 = r22
            r2 = r23
            java.lang.Class<int> r3 = int.class
            int r4 = com.huawei.hms.scankit.p.C0137eb.f708g
            int r5 = r24 - r4
            int r4 = r2 - r4
            r6 = 2
            int[] r7 = new int[r6]
            r8 = 1
            r7[r8] = r0
            r9 = 0
            r7[r9] = r1
            java.lang.Object r7 = java.lang.reflect.Array.newInstance(r3, r7)
            int[][] r7 = (int[][]) r7
            int[] r10 = new int[r6]
            r10[r8] = r0
            r10[r9] = r1
            java.lang.Object r3 = java.lang.reflect.Array.newInstance(r3, r10)
            int[][] r3 = (int[][]) r3
            r10 = 0
        L2a:
            if (r10 >= r1) goto La4
            int r11 = com.huawei.hms.scankit.p.C0137eb.f707f
            int r11 = r10 << r11
            if (r11 <= r5) goto L33
            r11 = r5
        L33:
            r12 = 0
            r13 = 0
        L35:
            if (r12 >= r0) goto L9d
            int r14 = com.huawei.hms.scankit.p.C0137eb.f707f
            int r14 = r12 << r14
            r15 = r20
            if (r14 <= r4) goto L40
            r14 = r4
        L40:
            int[] r14 = a(r14, r11, r2, r15)
            r16 = r14[r9]
            r9 = r14[r8]
            r14 = r14[r6]
            int r17 = com.huawei.hms.scankit.p.C0137eb.f707f
            int r17 = r17 * 2
            int r16 = r16 >> r17
            int r14 = r14 - r9
            int r8 = com.huawei.hms.scankit.p.C0137eb.j
            if (r14 > r8) goto L76
            int r16 = r9 / 2
            if (r10 <= 0) goto L76
            if (r12 <= 0) goto L76
            int r8 = r10 + (-1)
            r14 = r3[r8]
            r14 = r14[r12]
            r18 = r3[r10]
            int r19 = r12 + (-1)
            r18 = r18[r19]
            int r18 = r18 * 2
            int r18 = r18 + r14
            r8 = r3[r8]
            r8 = r8[r19]
            int r18 = r18 + r8
            int r8 = r18 / 4
            if (r9 >= r8) goto L76
            goto L78
        L76:
            r8 = r16
        L78:
            int r13 = r13 + r8
            r9 = r3[r10]
            r9[r12] = r8
            if (r10 != 0) goto L86
            if (r12 != 0) goto L86
            r9 = r7[r10]
            r9[r12] = r8
            goto L98
        L86:
            if (r10 != 0) goto L8d
            r8 = r7[r10]
            r8[r12] = r13
            goto L98
        L8d:
            r8 = r7[r10]
            int r9 = r10 + (-1)
            r9 = r7[r9]
            r9 = r9[r12]
            int r9 = r9 + r13
            r8[r12] = r9
        L98:
            int r12 = r12 + 1
            r8 = 1
            r9 = 0
            goto L35
        L9d:
            r15 = r20
            int r10 = r10 + 1
            r8 = 1
            r9 = 0
            goto L2a
        La4:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0137eb.a(byte[], int, int, int, int):int[][]");
    }

    @Override // com.huawei.hms.scankit.p.C0132db, com.huawei.hms.scankit.p.Za
    public com.huawei.hms.scankit.p.Za a(com.huawei.hms.scankit.aiscan.common.m mVar) {
        return new com.huawei.hms.scankit.p.C0137eb(mVar);
    }

    @Override // com.huawei.hms.scankit.p.C0132db, com.huawei.hms.scankit.p.Za
    public com.huawei.hms.scankit.p.C0122bb a() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.C0122bb c0122bbA;
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.k;
        if (c0122bb != null) {
            return c0122bb;
        }
        com.huawei.hms.scankit.aiscan.common.m mVarC = c();
        int iC = mVarC.c();
        int iA = mVarC.a();
        int i2 = i;
        if (iC < i2 || iA < i2) {
            c0122bbA = super.a();
        } else {
            byte[] bArrB = mVarC.b();
            int i3 = iC >> f707f;
            if ((h & iC) != 0) {
                i3++;
            }
            int i4 = i3;
            int i5 = iA >> f707f;
            if ((h & iA) != 0) {
                i5++;
            }
            int i6 = i5;
            c0122bbA = a(bArrB, i4, i6, iC, iA, a(bArrB, i4, i6, iC, iA));
        }
        this.k = c0122bbA;
        return this.k;
    }
}
