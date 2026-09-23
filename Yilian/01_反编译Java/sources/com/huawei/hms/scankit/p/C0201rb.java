package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.rb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0201rb extends com.huawei.hms.scankit.p.Ab {
    public static final char[] a = "0123456789-$:/.+ABCD".toCharArray();
    public static final int[] b = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f794c = {'A', 'B', 'C', 'D'};

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.StringBuilder f795d = new java.lang.StringBuilder(20);

    /* renamed from: e, reason: collision with root package name */
    public int[] f796e = new int[80];

    /* renamed from: f, reason: collision with root package name */
    public int f797f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f798g;

    private void a(int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        try {
            this.f796e[this.f797f] = i;
            int i2 = this.f797f + 1;
            this.f797f = i2;
            if (i2 >= this.f796e.length) {
                int[] iArr = new int[i2 * 2];
                java.lang.System.arraycopy(this.f796e, 0, iArr, 0, i2);
                this.f796e = iArr;
            }
        } catch (java.lang.NumberFormatException unused) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    private void a(com.huawei.hms.scankit.p.C0117ab c0117ab) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i = 0;
        this.f797f = 0;
        int iC = c0117ab.c(0);
        this.f798g = iC;
        int iD = c0117ab.d();
        if (iC >= iD) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        boolean z = true;
        while (iC < iD) {
            if (c0117ab.a(iC) != z) {
                i++;
            } else {
                a(i);
                z = !z;
                i = 1;
            }
            iC++;
        }
        a(i);
    }

    public static boolean a(char[] cArr, char c2) {
        if (cArr != null) {
            for (char c3 : cArr) {
                if (c3 == c2) {
                    return true;
                }
            }
        }
        return false;
    }

    private int[] a() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iB = b();
        this.f795d.setLength(0);
        int i = iB;
        do {
            int iB2 = b(i);
            if (iB2 == -1) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            this.f795d.append((char) iB2);
            i += 8;
            if (this.f795d.length() > 1 && a(f794c, a[iB2])) {
                break;
            }
        } while (i < this.f797f);
        int i2 = this.f796e[i - 1];
        int i3 = 0;
        for (int i4 = -8; i4 < -1; i4++) {
            i3 += this.f796e[i + i4];
        }
        if (i < this.f797f && i2 < i3 / 2) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        c(iB);
        return new int[]{iB, i};
    }

    private int b() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        for (int i = 1; i < this.f797f; i += 2) {
            int iB = b(i);
            if (iB != -1 && a(f794c, a[iB])) {
                int i2 = 0;
                for (int i3 = i; i3 < i + 7; i3++) {
                    i2 += this.f796e[i3];
                }
                if (i == 1 || this.f796e[i - 1] >= i2 / 2) {
                    return i;
                }
            }
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private int b(int i) {
        int i2 = i + 7;
        if (i2 >= this.f797f) {
            return -1;
        }
        int[] iArr = this.f796e;
        java.util.HashSet hashSet = new java.util.HashSet();
        for (int i3 = i; i3 < i2; i3++) {
            hashSet.add(java.lang.Integer.valueOf(iArr[i3]));
        }
        java.util.Iterator it = hashSet.iterator();
        int i4 = 0;
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue += ((java.lang.Integer) it.next()).intValue();
        }
        if (hashSet.size() > 0) {
            int size = iIntValue / hashSet.size();
            int i5 = 128;
            int i6 = 0;
            for (int i7 = 0; i7 < 7; i7++) {
                i5 >>= 1;
                if (iArr[i + i7] > size) {
                    i6 |= i5;
                }
            }
            while (true) {
                int[] iArr2 = b;
                if (i4 >= iArr2.length) {
                    break;
                }
                if (iArr2[i4] == i6) {
                    return i4;
                }
                i4++;
            }
        }
        return -1;
    }

    private void c(int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr = {0, 0, 0, 0};
        int[] iArr2 = {0, 0, 0, 0};
        int length = this.f795d.length() - 1;
        int i2 = 0;
        int i3 = i;
        int i4 = 0;
        while (true) {
            int i5 = b[this.f795d.charAt(i4)];
            for (int i6 = 6; i6 >= 0; i6--) {
                int i7 = ((i5 & 1) * 2) + (i6 & 1);
                iArr[i7] = iArr[i7] + this.f796e[i3 + i6];
                iArr2[i7] = iArr2[i7] + 1;
                i5 >>= 1;
            }
            if (i4 >= length) {
                break;
            }
            i3 += 8;
            i4++;
        }
        float[] fArr = new float[4];
        float[] fArr2 = new float[4];
        for (int i8 = 0; i8 < 2; i8++) {
            fArr2[i8] = 0.0f;
            int i9 = i8 + 2;
            fArr2[i9] = ((iArr[i9] / iArr2[i9]) + (iArr[i8] / iArr2[i8])) / 2.0f;
            fArr[i8] = fArr2[i9];
            fArr[i9] = ((iArr[i9] * 2.0f) + 1.5f) / iArr2[i9];
        }
        loop3: while (true) {
            int i10 = b[this.f795d.charAt(i2)];
            for (int i11 = 6; i11 >= 0; i11--) {
                int i12 = ((i10 & 1) * 2) + (i11 & 1);
                float f2 = this.f796e[i + i11];
                if (f2 < fArr2[i12] || f2 > fArr[i12]) {
                    break loop3;
                }
                i10 >>= 1;
            }
            if (i2 >= length) {
                return;
            }
            i += 8;
            i2++;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    @Override // com.huawei.hms.scankit.p.Ab
    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        java.util.Arrays.fill(this.f796e, 0);
        a(c0117ab);
        int[] iArrA = a();
        int i2 = iArrA[0];
        int i3 = iArrA[1];
        for (int i4 = 0; i4 < this.f795d.length(); i4++) {
            java.lang.StringBuilder sb = this.f795d;
            sb.setCharAt(i4, a[sb.charAt(i4)]);
        }
        if (!a(f794c, this.f795d.charAt(0))) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        java.lang.StringBuilder sb2 = this.f795d;
        if (!a(f794c, sb2.charAt(sb2.length() - 1))) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        if (this.f795d.length() <= 3) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int i5 = this.f798g;
        for (int i6 = 0; i6 < i2; i6++) {
            i5 += this.f796e[i6];
        }
        float f2 = i5;
        while (i2 < i3 - 1) {
            i5 += this.f796e[i2];
            i2++;
        }
        float f3 = i;
        return new com.huawei.hms.scankit.aiscan.common.x(this.f795d.toString(), null, new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z(f2, f3), new com.huawei.hms.scankit.aiscan.common.z(i5, f3)}, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODABAR);
    }
}
