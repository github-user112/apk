package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.gb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0147gb {
    public final int a;
    public final byte[] b;

    public C0147gb(int i, byte[] bArr) {
        this.a = i;
        this.b = bArr;
    }

    public static com.huawei.hms.scankit.p.C0147gb[] a(byte[] bArr, com.huawei.hms.scankit.p.C0182nb c0182nb) {
        com.huawei.hms.scankit.p.C0182nb.b bVarC = c0182nb.c();
        com.huawei.hms.scankit.p.C0182nb.a[] aVarArrA = bVarC.a();
        int iA = 0;
        for (com.huawei.hms.scankit.p.C0182nb.a aVar : aVarArrA) {
            iA += aVar.a();
        }
        com.huawei.hms.scankit.p.C0147gb[] c0147gbArr = new com.huawei.hms.scankit.p.C0147gb[iA];
        int i = 0;
        for (com.huawei.hms.scankit.p.C0182nb.a aVar2 : aVarArrA) {
            int i2 = 0;
            while (i2 < aVar2.a()) {
                int iB = aVar2.b();
                c0147gbArr[i] = new com.huawei.hms.scankit.p.C0147gb(iB, new byte[bVarC.b() + iB]);
                i2++;
                i++;
            }
        }
        int length = c0147gbArr[0].b.length - bVarC.b();
        int i3 = length - 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = 0;
            while (i6 < i) {
                c0147gbArr[i6].b[i5] = bArr[i4];
                i6++;
                i4++;
            }
        }
        boolean z = c0182nb.g() == 24;
        int i7 = z ? 8 : i;
        int i8 = 0;
        while (i8 < i7) {
            c0147gbArr[i8].b[i3] = bArr[i4];
            i8++;
            i4++;
        }
        int length2 = c0147gbArr[0].b.length;
        while (length < length2) {
            int i9 = 0;
            while (i9 < i) {
                int i10 = z ? (i9 + 8) % i : i9;
                c0147gbArr[i10].b[(!z || i10 <= 7) ? length : length - 1] = bArr[i4];
                i9++;
                i4++;
            }
            length++;
        }
        if (i4 == bArr.length) {
            return c0147gbArr;
        }
        throw new java.lang.IllegalArgumentException();
    }

    public byte[] a() {
        return this.b;
    }

    public int b() {
        return this.a;
    }
}
