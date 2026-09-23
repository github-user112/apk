package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class s extends com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub {
    public static volatile com.huawei.hms.scankit.s a = new com.huawei.hms.scankit.s();
    public android.graphics.Point b;

    /* renamed from: c, reason: collision with root package name */
    public int f881c = 0;

    /* renamed from: d, reason: collision with root package name */
    public android.graphics.Rect f882d;

    private com.huawei.hms.scankit.aiscan.common.r a(byte[] bArr, int i, int i2, int i3) {
        if (i3 == 0) {
            byte[] bArr2 = new byte[bArr.length];
            for (int i4 = 0; i4 < i2; i4++) {
                for (int i5 = 0; i5 < i; i5++) {
                    bArr2[(((i5 * i2) + i2) - i4) - 1] = bArr[(i4 * i) + i5];
                }
            }
            return a(bArr2, i2, i);
        }
        if (i3 == 2) {
            byte[] bArr3 = new byte[bArr.length];
            for (int i6 = 0; i6 < i2; i6++) {
                for (int i7 = 0; i7 < i; i7++) {
                    bArr3[(((i - 1) - i7) * i2) + i6] = bArr[(i6 * i) + i7];
                }
            }
            return a(bArr3, i2, i);
        }
        if (i3 != 3) {
            return a(bArr, i, i2);
        }
        byte[] bArr4 = new byte[bArr.length];
        for (int i8 = 0; i8 < i2; i8++) {
            for (int i9 = 0; i9 < i; i9++) {
                bArr4[(((((i2 - 1) - i8) * i) + i) - 1) - i9] = bArr[(i8 * i) + i9];
            }
        }
        return a(bArr4, i, i2);
    }

    public static com.huawei.hms.scankit.s a() {
        return a;
    }

    public synchronized android.graphics.Rect a(int i, int i2) {
        int iMin;
        int i3;
        int i4;
        iMin = java.lang.Math.min(i, i2);
        i3 = (i - iMin) / 2;
        i4 = (i2 - iMin) / 2;
        return new android.graphics.Rect(i3, i4, i3 + iMin, iMin + i4);
    }

    public com.huawei.hms.scankit.aiscan.common.r a(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        if (b(i, i2) == null) {
            return null;
        }
        double dMin = java.lang.Math.min(i, i2);
        java.lang.Double.isNaN(dMin);
        int i11 = (int) (dMin * 0.8d);
        int i12 = (i - i11) / 2;
        int i13 = (i2 - i11) / 2;
        android.graphics.Rect rect = this.f882d;
        if (rect == null) {
            i3 = i12;
            i4 = i11;
        } else {
            if (rect.left == -1 && rect.right == -1 && rect.top == -1 && rect.bottom == -1) {
                double d2 = i;
                java.lang.Double.isNaN(d2);
                i11 = (int) (d2 * 0.85d);
                i12 = (i - i11) / 2;
                double d3 = i2;
                java.lang.Double.isNaN(d3);
                i10 = (int) (0.8d * d3);
                java.lang.Double.isNaN(d3);
                i13 = (int) (d3 * 0.1d);
            } else {
                double dMin2 = java.lang.Math.min(i, i2);
                java.lang.Double.isNaN(dMin2);
                i11 = (int) (dMin2 * 0.9d);
                i12 = (i - i11) / 2;
                android.graphics.Rect rect2 = this.f882d;
                android.graphics.Rect rect3 = new android.graphics.Rect(rect2.left, rect2.top, rect2.right, rect2.bottom);
                int iMax = java.lang.Math.max(i, i2);
                android.graphics.Point point = this.b;
                if (point != null) {
                    i9 = point.x;
                    i8 = point.y;
                } else {
                    i8 = iMax;
                    i9 = i8;
                }
                float fMax = iMax / java.lang.Math.max(i9, i8);
                android.graphics.Rect rect4 = this.f882d;
                int i14 = (int) (rect4.top * fMax);
                rect3.top = i14;
                rect3.bottom = (int) (rect4.bottom * fMax);
                float f2 = i2 / 14.0f;
                if (i14 > f2) {
                    i14 -= (int) f2;
                }
                i13 = i14 < 0 ? 0 : i14;
                i10 = rect3.bottom - i13;
                if (i13 + i10 > i2) {
                    i13 = (i2 - i11) / 2;
                    i3 = i12;
                    i4 = i11;
                }
            }
            int i15 = i12;
            i4 = i11;
            i11 = i10;
            i3 = i15;
        }
        com.huawei.hms.scankit.util.a.a("ScanSize", "top:" + i13 + "scanSizeHeight" + i11 + "mHeight:" + i2);
        if (i2 < i13 + i11) {
            i5 = i2;
            i6 = 0;
        } else {
            i5 = i11;
            i6 = i13;
        }
        if (i < i3 + i4) {
            i7 = i;
            i3 = 0;
        } else {
            i7 = i4;
        }
        return new com.huawei.hms.scankit.aiscan.common.r(bArr, i, i2, i3, i6, i7, i5, false);
    }

    public synchronized android.graphics.Rect b(int i, int i2) {
        android.graphics.Rect rect = new android.graphics.Rect(a(i, i2));
        android.graphics.Point point = new android.graphics.Point(i, i2);
        android.graphics.Point point2 = this.b;
        if (point2 == null) {
            return null;
        }
        int i3 = point2.x;
        int i4 = point2.y;
        if (i3 < i4) {
            int i5 = rect.left;
            int i6 = point.y;
            rect.left = (i5 * i6) / i3;
            rect.right = (rect.right * i6) / i3;
            int i7 = rect.top;
            int i8 = point.x;
            rect.top = (i7 * i8) / i4;
            rect.bottom = (rect.bottom * i8) / i4;
        } else {
            int i9 = rect.top;
            int i10 = point.y;
            rect.top = (i9 * i10) / i4;
            rect.bottom = (rect.bottom * i10) / i4;
            int i11 = rect.left;
            int i12 = point.x;
            rect.left = (i11 * i12) / i3;
            rect.right = (rect.right * i12) / i3;
        }
        return rect;
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate
    public com.huawei.hms.scankit.aiscan.common.x[] decode(byte[] bArr, int i, int i2, int i3, int i4, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper != null && (com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper) instanceof android.os.Bundle)) {
            android.os.Bundle bundle = (android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper);
            this.b = (android.graphics.Point) bundle.getParcelable("Screen");
            this.f882d = (android.graphics.Rect) bundle.getParcelable("Rect");
        }
        if (this.f882d == null) {
            this.f882d = new android.graphics.Rect(-1, -1, -1, -1);
        }
        if (this.b == null) {
            this.b = new android.graphics.Point(1080, 1920);
        }
        com.huawei.hms.scankit.aiscan.common.r rVarA = a(bArr, i, i2, i3);
        byte[] bArrB = rVarA.b();
        com.huawei.hms.scankit.E e2 = new com.huawei.hms.scankit.E(rVarA.c(), rVarA.a(), i4);
        int i5 = this.f881c;
        this.f881c = i5 + 1;
        return com.huawei.hms.scankit.k.b(bArrB, e2.a(i5));
    }
}
