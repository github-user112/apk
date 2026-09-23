package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class r extends com.huawei.hms.scankit.aiscan.common.m {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f418c;

    /* renamed from: d, reason: collision with root package name */
    public final int f419d;

    /* renamed from: e, reason: collision with root package name */
    public final int f420e;

    /* renamed from: f, reason: collision with root package name */
    public final int f421f;

    /* renamed from: g, reason: collision with root package name */
    public final int f422g;

    public r(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, boolean z) throws java.lang.Exception {
        super(i5, i6);
        if (i3 + i5 > i || i4 + i6 > i2) {
            try {
                throw new java.lang.IllegalArgumentException("Crop rectangle does not fit within image data.");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        this.f418c = bArr;
        this.f419d = i;
        this.f420e = i2;
        this.f421f = i3;
        this.f422g = i4;
        if (z) {
            a(i5, i6);
        }
    }

    private void a(int i, int i2) {
        byte[] bArr = this.f418c;
        int i3 = (this.f422g * this.f419d) + this.f421f;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = (i / 2) + i3;
            int i6 = (i3 + i) - 1;
            int i7 = i3;
            while (i7 < i5) {
                if (com.huawei.hms.scankit.util.b.a(bArr, i7) && com.huawei.hms.scankit.util.b.a(bArr, i6)) {
                    byte b = bArr[i7];
                    bArr[i7] = bArr[i6];
                    bArr[i6] = b;
                }
                i7++;
                i6--;
            }
            i4++;
            i3 += this.f419d;
        }
    }

    @Override // com.huawei.hms.scankit.aiscan.common.m
    public com.huawei.hms.scankit.aiscan.common.m a(int i, int i2, int i3, int i4) {
        return new com.huawei.hms.scankit.aiscan.common.r(this.f418c, this.f419d, this.f420e, this.f421f + i, this.f422g + i2, i3, i4, false);
    }

    @Override // com.huawei.hms.scankit.aiscan.common.m
    public byte[] a(int i, byte[] bArr) throws java.lang.Exception {
        if (i < 0 || i >= a()) {
            try {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("Requested row is outside the image: ");
                sb.append(i);
                throw new java.lang.IllegalArgumentException(sb.toString());
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        int iC = c();
        if (bArr == null || bArr.length < iC) {
            bArr = new byte[iC];
        }
        java.lang.System.arraycopy(this.f418c, ((i + this.f422g) * this.f419d) + this.f421f, bArr, 0, iC);
        return bArr;
    }

    @Override // com.huawei.hms.scankit.aiscan.common.m
    public com.huawei.hms.scankit.aiscan.common.m b(int i, int i2, int i3, int i4) {
        int i5 = this.f420e;
        int i6 = this.f419d;
        if (i5 <= i6) {
            byte[] bArr = new byte[i * i2];
            java.lang.System.arraycopy(this.f418c, 0, bArr, i4 * i, i5 * i6);
            int i7 = this.f419d;
            return new com.huawei.hms.scankit.aiscan.common.r(bArr, i7, i2, this.f421f, this.f422g, i7, i2, false);
        }
        byte[] bArr2 = new byte[i * i2];
        for (int i8 = 0; i8 < this.f420e; i8++) {
            byte[] bArr3 = this.f418c;
            int i9 = this.f419d;
            java.lang.System.arraycopy(bArr3, i8 * i9, bArr2, (i8 * i) + i3, i9);
        }
        return new com.huawei.hms.scankit.aiscan.common.r(bArr2, i, i2, this.f421f, this.f422g, i, i2, false);
    }

    @Override // com.huawei.hms.scankit.aiscan.common.m
    public byte[] b() {
        int iC = c();
        int iA = a();
        if (iC == this.f419d && iA == this.f420e) {
            return this.f418c;
        }
        int i = iC * iA;
        byte[] bArr = new byte[i];
        int i2 = this.f422g;
        int i3 = this.f419d;
        int i4 = (i2 * i3) + this.f421f;
        if (iC == i3) {
            try {
                java.lang.System.arraycopy(this.f418c, i4, bArr, 0, i);
                return bArr;
            } catch (java.lang.ArrayIndexOutOfBoundsException | java.lang.Exception unused) {
                return null;
            }
        }
        for (int i5 = 0; i5 < iA; i5++) {
            try {
                java.lang.System.arraycopy(this.f418c, i4, bArr, i5 * iC, iC);
                i4 += this.f419d;
            } catch (java.lang.ArrayIndexOutOfBoundsException | java.lang.Exception unused2) {
                return null;
            }
        }
        return bArr;
    }
}
