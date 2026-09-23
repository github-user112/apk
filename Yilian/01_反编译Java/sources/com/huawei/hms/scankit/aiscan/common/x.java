package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class x implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.huawei.hms.scankit.aiscan.common.x> CREATOR = new com.huawei.hms.scankit.aiscan.common.w();
    public final java.lang.String a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final int f428c;

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.scankit.aiscan.common.z[] f429d;

    /* renamed from: e, reason: collision with root package name */
    public com.huawei.hms.scankit.aiscan.common.BarcodeFormat f430e;

    /* renamed from: f, reason: collision with root package name */
    public final long f431f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f432g;
    public final boolean h;
    public final float i;
    public int j;
    public java.util.List<android.graphics.Rect> k;
    public boolean l;
    public int m;
    public java.util.List<android.graphics.Rect> n;

    public x(float f2) {
        this.f432g = false;
        this.i = f2;
        this.a = null;
        this.b = new byte[0];
        this.f428c = 0;
        this.f429d = new com.huawei.hms.scankit.aiscan.common.z[0];
        this.f430e = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.NONE;
        this.f431f = 0L;
        this.h = false;
        this.j = 0;
        this.l = false;
        this.m = 0;
        this.k = new java.util.ArrayList();
        this.n = new java.util.ArrayList();
    }

    public x(android.os.Parcel parcel) {
        this.f432g = false;
        this.a = parcel.readString();
        this.b = parcel.createByteArray();
        this.f428c = parcel.readInt();
        this.f429d = (com.huawei.hms.scankit.aiscan.common.z[]) parcel.createTypedArray(com.huawei.hms.scankit.aiscan.common.z.CREATOR);
        this.f430e = (com.huawei.hms.scankit.aiscan.common.BarcodeFormat) parcel.readParcelable(com.huawei.hms.scankit.aiscan.common.x.class.getClassLoader());
        this.f431f = parcel.readLong();
        this.f432g = parcel.readInt() == 1;
        this.h = parcel.readInt() == 1;
        this.i = parcel.readFloat();
        this.j = parcel.readInt();
        if (this.k == null) {
            this.k = new java.util.ArrayList();
        }
        parcel.readList(this.k, com.huawei.hms.scankit.aiscan.common.x.class.getClassLoader());
    }

    public x(java.lang.String str, byte[] bArr, int i, com.huawei.hms.scankit.aiscan.common.z[] zVarArr, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, long j) {
        this.f432g = false;
        this.a = str;
        this.b = bArr;
        this.f428c = i;
        this.f429d = zVarArr;
        this.f430e = barcodeFormat;
        this.f431f = j;
        this.i = 1.0f;
        this.h = false;
    }

    public x(java.lang.String str, byte[] bArr, com.huawei.hms.scankit.aiscan.common.z[] zVarArr, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat) {
        this(str, bArr, zVarArr, barcodeFormat, java.lang.System.currentTimeMillis());
    }

    public x(java.lang.String str, byte[] bArr, com.huawei.hms.scankit.aiscan.common.z[] zVarArr, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, long j) {
        this(str, bArr, bArr == null ? 0 : bArr.length * 8, zVarArr, barcodeFormat, j);
    }

    public void a() {
        this.f429d = new com.huawei.hms.scankit.aiscan.common.z[0];
    }

    public void a(float f2) {
        int i;
        if (f2 < 50.0f) {
            i = 2;
        } else if (f2 < 90.0f) {
            i = 1;
        } else if (f2 < 140.0f) {
            i = 0;
        } else if (f2 < 190.0f) {
            i = -1;
        } else if (f2 > 255.0f) {
            return;
        } else {
            i = -2;
        }
        this.j = i;
    }

    public void a(int i) {
        this.m = i;
    }

    public void a(com.huawei.hms.scankit.p.C0187ob c0187ob) {
        int iD = (int) c0187ob.d();
        int iE = (int) c0187ob.e();
        this.k.add(new android.graphics.Rect(iD, iE, ((int) c0187ob.f()) + iD, ((int) c0187ob.c()) + iE));
    }

    public void a(boolean z) {
        this.l = z;
    }

    public void a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        com.huawei.hms.scankit.aiscan.common.z[] zVarArr2 = this.f429d;
        if (zVarArr2 == null) {
            this.f429d = zVarArr;
            return;
        }
        if (zVarArr == null || zVarArr.length <= 0) {
            return;
        }
        com.huawei.hms.scankit.aiscan.common.z[] zVarArr3 = new com.huawei.hms.scankit.aiscan.common.z[zVarArr2.length + zVarArr.length];
        java.lang.System.arraycopy(zVarArr2, 0, zVarArr3, 0, zVarArr2.length);
        java.lang.System.arraycopy(zVarArr, 0, zVarArr3, zVarArr2.length, zVarArr.length);
        this.f429d = zVarArr3;
    }

    public com.huawei.hms.scankit.aiscan.common.BarcodeFormat b() {
        return this.f430e;
    }

    public void b(float f2) {
        int i;
        if (f2 < 50.0f) {
            i = 2;
        } else if (f2 < 90.0f) {
            i = 1;
        } else if (f2 < 140.0f) {
            i = 0;
        } else if (f2 < 190.0f) {
            i = -1;
        } else if (f2 > 255.0f) {
            return;
        } else {
            i = -2;
        }
        this.m = i;
    }

    public void b(com.huawei.hms.scankit.p.C0187ob c0187ob) {
        int iD = (int) c0187ob.d();
        int iE = (int) c0187ob.e();
        this.n.add(new android.graphics.Rect(iD, iE, ((int) c0187ob.f()) + iD, ((int) c0187ob.c()) + iE));
    }

    public void b(boolean z) {
        this.f432g = z;
    }

    public void b(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        this.f429d = zVarArr;
    }

    public java.util.List<android.graphics.Rect> c() {
        return this.k;
    }

    public int d() {
        return this.j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.util.List<android.graphics.Rect> e() {
        return this.n;
    }

    public int f() {
        return this.m;
    }

    public byte[] g() {
        return this.b;
    }

    public com.huawei.hms.scankit.aiscan.common.z[] h() {
        return this.f429d;
    }

    public java.lang.String i() {
        return this.a;
    }

    public float j() {
        return this.i;
    }

    public boolean k() {
        return this.l;
    }

    public java.lang.String toString() {
        return this.a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeByteArray(this.b);
        parcel.writeInt(this.f428c);
        parcel.writeTypedArray(this.f429d, i);
        parcel.writeParcelable(this.f430e, i);
        parcel.writeLong(this.f431f);
        parcel.writeInt(this.f432g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeFloat(this.i);
        parcel.writeInt(this.j);
        parcel.writeList(this.k);
    }
}
