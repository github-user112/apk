package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public class z implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.huawei.hms.scankit.aiscan.common.z> CREATOR = new com.huawei.hms.scankit.aiscan.common.y();
    public final float a;
    public final float b;

    /* renamed from: c, reason: collision with root package name */
    public int f433c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f434d;

    public z(float f2, float f3) {
        this.f433c = 0;
        this.f434d = false;
        this.a = f2;
        this.b = f3;
    }

    public z(float f2, float f3, int i) {
        this.f433c = 0;
        this.f434d = false;
        this.a = f2;
        this.b = f3;
        this.f433c = i;
    }

    public z(float f2, float f3, boolean z) {
        this.f433c = 0;
        this.f434d = false;
        this.a = f2;
        this.b = f3;
        this.f434d = z;
    }

    public z(android.os.Parcel parcel) {
        this.f433c = 0;
        this.f434d = false;
        this.a = parcel.readFloat();
        this.b = parcel.readFloat();
    }

    public static float a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2) {
        return com.huawei.hms.scankit.aiscan.common.n.a(zVar.a, zVar.b, zVar2.a, zVar2.b);
    }

    public static float a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2, com.huawei.hms.scankit.aiscan.common.z zVar3) {
        float f2 = zVar2.a;
        float f3 = zVar2.b;
        return ((zVar.b - f3) * (zVar3.a - f2)) - ((zVar.a - f2) * (zVar3.b - f3));
    }

    public static void a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        float fA = a(zVarArr[0], zVarArr[1]);
        float fA2 = a(zVarArr[1], zVarArr[2]);
        float fA3 = a(zVarArr[0], zVarArr[2]);
        int[] iArrA = a(fA2, fA, fA3);
        int i = iArrA[0];
        int i2 = iArrA[1];
        int i3 = iArrA[2];
        com.huawei.hms.scankit.aiscan.common.z zVar = zVarArr[i];
        com.huawei.hms.scankit.aiscan.common.z zVar2 = zVarArr[i2];
        com.huawei.hms.scankit.aiscan.common.z zVar3 = zVarArr[i3];
        float[] fArr = {fA2, fA3, fA};
        if (com.huawei.hms.scankit.p.Bc.f494f % 2 == 0 && fArr[i2] / fArr[i] < 1.1d) {
            zVar = zVarArr[i];
            zVar2 = zVarArr[i2];
            zVar3 = zVarArr[i3];
        }
        if (a(zVar2, zVar, zVar3) < 0.0f) {
            com.huawei.hms.scankit.aiscan.common.z zVar4 = zVar3;
            zVar3 = zVar2;
            zVar2 = zVar4;
        }
        zVarArr[0] = zVar2;
        zVarArr[1] = zVar;
        zVarArr[2] = zVar3;
    }

    public static int[] a(float f2, float f3, float f4) {
        int i;
        int i2;
        int i3;
        if (f2 < f3 || f2 < f4) {
            if (f4 >= f2 && f4 >= f3) {
                i = 1;
                if (f2 > f3) {
                    i2 = 0;
                    i3 = 2;
                } else {
                    i2 = 2;
                }
            } else if (f2 > f2) {
                i = 2;
                i2 = 0;
                i3 = 1;
            } else {
                i = 2;
                i2 = 1;
            }
            i3 = 0;
        } else if (f3 > f4) {
            i = 0;
            i2 = 2;
            i3 = 1;
        } else {
            i = 0;
            i2 = 1;
            i3 = 2;
        }
        return new int[]{i, i2, i3};
    }

    public int a() {
        return this.f433c;
    }

    public final float b() {
        return this.a;
    }

    public final float c() {
        return this.b;
    }

    public boolean d() {
        return this.f434d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.huawei.hms.scankit.aiscan.common.z)) {
            return false;
        }
        com.huawei.hms.scankit.aiscan.common.z zVar = (com.huawei.hms.scankit.aiscan.common.z) obj;
        return ((double) java.lang.Math.abs(this.a - zVar.a)) < 1.0E-4d && ((double) java.lang.Math.abs(this.b - zVar.b)) < 1.0E-4d;
    }

    public final int hashCode() {
        return java.lang.Float.floatToIntBits(this.b) + (java.lang.Float.floatToIntBits(this.a) * 31);
    }

    public final java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("(");
        sbO.append(this.a);
        sbO.append(',');
        sbO.append(this.b);
        sbO.append(')');
        return sbO.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeFloat(this.a);
        parcel.writeFloat(this.b);
    }
}
