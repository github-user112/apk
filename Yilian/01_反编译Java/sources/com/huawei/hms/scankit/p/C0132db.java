package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.db, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0132db extends com.huawei.hms.scankit.p.Za {
    public static final byte[] b = new byte[0];

    /* renamed from: c, reason: collision with root package name */
    public static int f694c = -1;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f695d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f696e;

    public C0132db(com.huawei.hms.scankit.aiscan.common.m mVar) {
        super(mVar);
        this.f695d = b;
        this.f696e = new int[32];
    }

    public static int a(int[] iArr, boolean z) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = iArr.length;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (iArr[i4] > i) {
                i = iArr[i4];
                i3 = i4;
            }
            if (iArr[i4] > i2) {
                i2 = iArr[i4];
            }
        }
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            int i8 = i7 - i3;
            int i9 = iArr[i7] * i8 * i8;
            if (i9 > i6) {
                i5 = i7;
                i6 = i9;
            }
        }
        if (i3 <= i5) {
            int i10 = i3;
            i3 = i5;
            i5 = i10;
        }
        int i11 = i3 - i5;
        if (i11 <= length / 16) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int i12 = i3 - 1;
        int i13 = i12;
        int i14 = -1;
        while (i12 > i5) {
            int i15 = i12 - i5;
            int i16 = (i2 - iArr[i12]) * (i3 - i12) * i15 * i15;
            if (i16 > i14) {
                i13 = i12;
                i14 = i16;
            }
            i12--;
        }
        if (z) {
            if (i13 < 10 && i14 < 100000 && i11 < 10) {
                z2 = true;
            }
            com.huawei.hms.scankit.p.Bc.o = z2;
        }
        return i13 << 3;
    }

    private void a(int i) {
        if (this.f695d.length < i) {
            this.f695d = new byte[i];
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.f696e[i2] = 0;
        }
    }

    @Override // com.huawei.hms.scankit.p.Za
    public com.huawei.hms.scankit.p.Za a(com.huawei.hms.scankit.aiscan.common.m mVar) {
        return new com.huawei.hms.scankit.p.C0132db(mVar);
    }

    @Override // com.huawei.hms.scankit.p.Za
    public com.huawei.hms.scankit.p.C0117ab a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.aiscan.common.m mVarC = c();
        int iC = mVarC.c();
        if (c0117ab == null || c0117ab.d() < iC) {
            c0117ab = new com.huawei.hms.scankit.p.C0117ab(iC);
        } else {
            c0117ab.a();
        }
        a(iC);
        byte[] bArrA = mVarC.a(i, this.f695d);
        int[] iArr = this.f696e;
        for (int i2 = 0; i2 < iC; i2++) {
            int i3 = (bArrA[i2] & 255) >> 3;
            iArr[i3] = iArr[i3] + 1;
        }
        int iA = a(iArr, false);
        if (iC < 3) {
            for (int i4 = 0; i4 < iC; i4++) {
                if ((bArrA[i4] & 255) < iA) {
                    c0117ab.d(i4);
                }
            }
        } else {
            int i5 = 1;
            int i6 = bArrA[0] & 255;
            int i7 = bArrA[1] & 255;
            while (i5 < iC - 1) {
                int i8 = i5 + 1;
                int i9 = bArrA[i8] & 255;
                if ((((i7 * 4) - i6) - i9) / 2 < iA) {
                    c0117ab.d(i5);
                }
                i6 = i7;
                i5 = i8;
                i7 = i9;
            }
        }
        return c0117ab;
    }

    @Override // com.huawei.hms.scankit.p.Za
    public com.huawei.hms.scankit.p.C0122bb a() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.aiscan.common.m mVarC = c();
        int iC = mVarC.c();
        int iA = mVarC.a();
        a(iC);
        int[] iArr = this.f696e;
        for (int i = 1; i < 5; i++) {
            byte[] bArrA = mVarC.a((iA * i) / 5, this.f695d);
            int i2 = (iC * 4) / 5;
            for (int i3 = iC / 5; i3 < i2; i3++) {
                int i4 = (bArrA[i3] & 255) >> 3;
                iArr[i4] = iArr[i4] + 1;
            }
        }
        int iA2 = a(iArr, true);
        byte[] bArrB = mVarC.b();
        int i5 = (iC + 31) / 32;
        int[] iArr2 = new int[i5 * iA];
        for (int i6 = 0; i6 < iA; i6++) {
            int i7 = i6 * iC;
            for (int i8 = 0; i8 < iC; i8++) {
                if ((bArrB[i7 + i8] & 255) < iA2) {
                    int i9 = (i6 * i5) + (i8 >> 5);
                    iArr2[i9] = iArr2[i9] | (1 << (i8 & 31));
                }
            }
        }
        return new com.huawei.hms.scankit.p.C0122bb(iC, iA, i5, iArr2);
    }
}
