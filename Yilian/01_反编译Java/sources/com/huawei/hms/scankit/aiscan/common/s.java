package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class s extends com.huawei.hms.scankit.aiscan.common.m {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f423c;

    /* renamed from: d, reason: collision with root package name */
    public final int f424d;

    /* renamed from: e, reason: collision with root package name */
    public final int f425e;

    /* renamed from: f, reason: collision with root package name */
    public final int f426f;

    /* renamed from: g, reason: collision with root package name */
    public final int f427g;

    public s(int i, int i2, int[] iArr) {
        super(i, i2);
        this.f424d = i;
        this.f425e = i2;
        this.f426f = 0;
        this.f427g = 0;
        int i3 = i * i2;
        this.f423c = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = iArr[i4];
            if (((-16777216) & i5) == 0) {
                i5 = -1;
            }
            this.f423c[i4] = (byte) (((((i5 & 255) * 117) + ((((i5 >> 8) & 255) * 601) + (((i5 >> 16) & 255) * com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISSING_PATCH_INFO))) + 512) >> 10);
        }
    }

    public s(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) throws java.lang.Exception {
        super(i5, i6);
        if (i5 + i3 > i || i6 + i4 > i2) {
            try {
                throw new java.lang.IllegalArgumentException("Crop rectangle does not fit within image data.");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        this.f423c = bArr;
        this.f424d = i;
        this.f425e = i2;
        this.f426f = i3;
        this.f427g = i4;
    }

    @Override // com.huawei.hms.scankit.aiscan.common.m
    public com.huawei.hms.scankit.aiscan.common.m a(int i, int i2, int i3, int i4) {
        return new com.huawei.hms.scankit.aiscan.common.s(this.f423c, this.f424d, this.f425e, this.f426f + i, this.f427g + i2, i3, i4);
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
        java.lang.System.arraycopy(this.f423c, ((i + this.f427g) * this.f424d) + this.f426f, bArr, 0, iC);
        return bArr;
    }

    @Override // com.huawei.hms.scankit.aiscan.common.m
    public com.huawei.hms.scankit.aiscan.common.m b(int i, int i2, int i3, int i4) {
        int i5 = this.f425e;
        int i6 = this.f424d;
        if (i5 <= i6) {
            byte[] bArr = new byte[i * i2];
            java.lang.System.arraycopy(this.f423c, 0, bArr, i4 * i, i5 * i6);
            int i7 = this.f424d;
            return new com.huawei.hms.scankit.aiscan.common.r(bArr, i7, i2, this.f426f, this.f427g, i7, i2, false);
        }
        byte[] bArr2 = new byte[i * i2];
        for (int i8 = 0; i8 < this.f425e; i8++) {
            byte[] bArr3 = this.f423c;
            int i9 = this.f424d;
            java.lang.System.arraycopy(bArr3, i8 * i9, bArr2, (i8 * i) + i3, i9);
        }
        return new com.huawei.hms.scankit.aiscan.common.r(bArr2, i, i2, this.f426f, this.f427g, i, i2, false);
    }

    @Override // com.huawei.hms.scankit.aiscan.common.m
    public byte[] b() {
        int iC = c();
        int iA = a();
        if (iC == this.f424d && iA == this.f425e) {
            return this.f423c;
        }
        int i = iC * iA;
        byte[] bArr = new byte[i];
        int i2 = this.f427g;
        int i3 = this.f424d;
        int i4 = (i2 * i3) + this.f426f;
        if (iC == i3) {
            java.lang.System.arraycopy(this.f423c, i4, bArr, 0, i);
            return bArr;
        }
        for (int i5 = 0; i5 < iA; i5++) {
            java.lang.System.arraycopy(this.f423c, i4, bArr, i5 * iC, iC);
            i4 += this.f424d;
        }
        return bArr;
    }
}
