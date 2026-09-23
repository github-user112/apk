package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.cc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0128cc {
    public final int a;
    public final byte[] b;

    public C0128cc(int i, byte[] bArr) {
        this.a = i;
        this.b = bArr;
    }

    public static com.huawei.hms.scankit.p.C0128cc[] a(byte[] bArr, com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc) throws java.lang.Exception {
        if (bArr.length != c0242zc.d()) {
            try {
                throw new java.lang.IllegalArgumentException();
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        com.huawei.hms.scankit.p.C0242zc.b bVarA = c0242zc.a(enumC0198qc);
        com.huawei.hms.scankit.p.C0242zc.a[] aVarArrA = bVarA.a();
        int iA = 0;
        for (com.huawei.hms.scankit.p.C0242zc.a aVar : aVarArrA) {
            iA += aVar.a();
        }
        com.huawei.hms.scankit.p.C0128cc[] c0128ccArr = new com.huawei.hms.scankit.p.C0128cc[iA];
        int i = 0;
        for (com.huawei.hms.scankit.p.C0242zc.a aVar2 : aVarArrA) {
            int i2 = 0;
            while (i2 < aVar2.a()) {
                int iB = aVar2.b();
                c0128ccArr[i] = new com.huawei.hms.scankit.p.C0128cc(iB, new byte[bVarA.b() + iB]);
                i2++;
                i++;
            }
        }
        int length = c0128ccArr[0].b.length;
        int i3 = iA - 1;
        while (i3 >= 0 && c0128ccArr[i3].b.length != length) {
            i3--;
        }
        return a(c0128ccArr, bArr, length, bVarA, i, i3 + 1);
    }

    public static com.huawei.hms.scankit.p.C0128cc[] a(com.huawei.hms.scankit.p.C0128cc[] c0128ccArr, byte[] bArr, int i, com.huawei.hms.scankit.p.C0242zc.b bVar, int i2, int i3) {
        int iB = i - bVar.b();
        int i4 = 0;
        for (int i5 = 0; i5 < iB; i5++) {
            int i6 = 0;
            while (i6 < i2) {
                c0128ccArr[i6].b[i5] = bArr[i4];
                i6++;
                i4++;
            }
        }
        int i7 = i3;
        while (i7 < i2) {
            c0128ccArr[i7].b[iB] = bArr[i4];
            i7++;
            i4++;
        }
        int length = c0128ccArr[0].b.length;
        while (iB < length) {
            int i8 = 0;
            while (i8 < i2) {
                int i9 = i8 < i3 ? iB : iB + 1;
                if (i8 >= 0) {
                    try {
                        if (i8 < c0128ccArr.length && com.huawei.hms.scankit.util.b.a(c0128ccArr[i8].b, i9) && com.huawei.hms.scankit.util.b.a(bArr, i4)) {
                            c0128ccArr[i8].b[i9] = bArr[i4];
                            i8++;
                            i4++;
                        }
                    } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
                        throw e2;
                    }
                }
                throw new java.lang.ArrayIndexOutOfBoundsException();
            }
            iB++;
        }
        return c0128ccArr;
    }

    public byte[] a() {
        return this.b;
    }

    public int b() {
        return this.a;
    }
}
