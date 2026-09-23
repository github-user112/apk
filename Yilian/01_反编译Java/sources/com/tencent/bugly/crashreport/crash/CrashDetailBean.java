package com.tencent.bugly.crashreport.crash;

/* loaded from: classes.dex */
public class CrashDetailBean implements android.os.Parcelable, java.lang.Comparable<com.tencent.bugly.crashreport.crash.CrashDetailBean> {
    public static final android.os.Parcelable.Creator<com.tencent.bugly.crashreport.crash.CrashDetailBean> CREATOR = new com.tencent.bugly.crashreport.crash.CrashDetailBean.a();
    public java.lang.String A;
    public java.lang.String B;
    public long C;
    public long D;
    public long E;
    public long F;
    public long G;
    public long H;
    public long I;
    public long J;
    public long K;
    public java.lang.String L;
    public java.lang.String M;
    public java.lang.String N;
    public java.lang.String O;
    public java.lang.String P;
    public long Q;
    public boolean R;
    public java.util.Map<java.lang.String, java.lang.String> S;
    public java.util.Map<java.lang.String, java.lang.String> T;
    public int U;
    public int V;
    public java.util.Map<java.lang.String, java.lang.String> W;
    public java.util.Map<java.lang.String, java.lang.String> X;
    public byte[] Y;
    public java.lang.String Z;
    public long a;
    public java.lang.String aa;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f982c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f983d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f984e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f985f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f986g;
    public java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> h;
    public java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> i;
    public boolean j;
    public boolean k;
    public int l;
    public java.lang.String m;
    public java.lang.String n;
    public java.lang.String o;
    public java.lang.String p;
    public java.lang.String q;
    public long r;
    public java.lang.String s;
    public int t;
    public java.lang.String u;
    public java.lang.String v;
    public java.lang.String w;
    public java.lang.String x;
    public byte[] y;
    public java.util.Map<java.lang.String, java.lang.String> z;

    public static class a implements android.os.Parcelable.Creator<com.tencent.bugly.crashreport.crash.CrashDetailBean> {
        @Override // android.os.Parcelable.Creator
        public com.tencent.bugly.crashreport.crash.CrashDetailBean createFromParcel(android.os.Parcel parcel) {
            return new com.tencent.bugly.crashreport.crash.CrashDetailBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public com.tencent.bugly.crashreport.crash.CrashDetailBean[] newArray(int i) {
            return new com.tencent.bugly.crashreport.crash.CrashDetailBean[i];
        }
    }

    public CrashDetailBean() {
        this.a = -1L;
        this.b = 0;
        this.f982c = java.util.UUID.randomUUID().toString();
        this.f983d = false;
        this.f984e = "";
        this.f985f = "";
        this.f986g = "";
        this.h = null;
        this.i = null;
        this.j = false;
        this.k = false;
        this.l = 0;
        this.m = "";
        this.n = "";
        this.o = "";
        this.p = "";
        this.q = "";
        this.r = -1L;
        this.s = null;
        this.t = 0;
        this.u = "";
        this.v = "";
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = -1L;
        this.J = -1L;
        this.K = -1L;
        this.L = "";
        this.M = "";
        this.N = "";
        this.O = "";
        this.P = "";
        this.Q = -1L;
        this.R = false;
        this.S = null;
        this.T = null;
        this.U = -1;
        this.V = -1;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.aa = null;
    }

    public CrashDetailBean(android.os.Parcel parcel) {
        this.a = -1L;
        this.b = 0;
        this.f982c = java.util.UUID.randomUUID().toString();
        this.f983d = false;
        this.f984e = "";
        this.f985f = "";
        this.f986g = "";
        this.h = null;
        this.i = null;
        this.j = false;
        this.k = false;
        this.l = 0;
        this.m = "";
        this.n = "";
        this.o = "";
        this.p = "";
        this.q = "";
        this.r = -1L;
        this.s = null;
        this.t = 0;
        this.u = "";
        this.v = "";
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = -1L;
        this.J = -1L;
        this.K = -1L;
        this.L = "";
        this.M = "";
        this.N = "";
        this.O = "";
        this.P = "";
        this.Q = -1L;
        this.R = false;
        this.S = null;
        this.T = null;
        this.U = -1;
        this.V = -1;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.aa = null;
        this.b = parcel.readInt();
        this.f982c = parcel.readString();
        this.f983d = parcel.readByte() == 1;
        this.f984e = parcel.readString();
        this.f985f = parcel.readString();
        this.f986g = parcel.readString();
        this.j = parcel.readByte() == 1;
        this.k = parcel.readByte() == 1;
        this.l = parcel.readInt();
        this.m = parcel.readString();
        this.n = parcel.readString();
        this.o = parcel.readString();
        this.p = parcel.readString();
        this.q = parcel.readString();
        this.r = parcel.readLong();
        this.s = parcel.readString();
        this.t = parcel.readInt();
        this.u = parcel.readString();
        this.v = parcel.readString();
        this.w = parcel.readString();
        this.z = com.tencent.bugly.proguard.ha.b(parcel);
        this.A = parcel.readString();
        this.B = parcel.readString();
        this.C = parcel.readLong();
        this.D = parcel.readLong();
        this.E = parcel.readLong();
        this.F = parcel.readLong();
        this.G = parcel.readLong();
        this.H = parcel.readLong();
        this.L = parcel.readString();
        this.M = parcel.readString();
        this.N = parcel.readString();
        this.O = parcel.readString();
        this.P = parcel.readString();
        this.Q = parcel.readLong();
        this.R = parcel.readByte() == 1;
        this.S = com.tencent.bugly.proguard.ha.b(parcel);
        this.h = com.tencent.bugly.proguard.ha.a(parcel);
        this.i = com.tencent.bugly.proguard.ha.a(parcel);
        this.U = parcel.readInt();
        this.V = parcel.readInt();
        this.W = com.tencent.bugly.proguard.ha.b(parcel);
        this.X = com.tencent.bugly.proguard.ha.b(parcel);
        this.Y = parcel.createByteArray();
        this.y = parcel.createByteArray();
        this.Z = parcel.readString();
        this.aa = parcel.readString();
        this.x = parcel.readString();
        this.I = parcel.readLong();
        this.J = parcel.readLong();
        this.K = parcel.readLong();
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return 1;
        }
        long j = this.r - crashDetailBean.r;
        if (j > 0) {
            return 1;
        }
        return j < 0 ? -1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeString(this.f982c);
        parcel.writeByte(this.f983d ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f984e);
        parcel.writeString(this.f985f);
        parcel.writeString(this.f986g);
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeString(this.o);
        parcel.writeString(this.p);
        parcel.writeString(this.q);
        parcel.writeLong(this.r);
        parcel.writeString(this.s);
        parcel.writeInt(this.t);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        com.tencent.bugly.proguard.ha.b(parcel, this.z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeLong(this.C);
        parcel.writeLong(this.D);
        parcel.writeLong(this.E);
        parcel.writeLong(this.F);
        parcel.writeLong(this.G);
        parcel.writeLong(this.H);
        parcel.writeString(this.L);
        parcel.writeString(this.M);
        parcel.writeString(this.N);
        parcel.writeString(this.O);
        parcel.writeString(this.P);
        parcel.writeLong(this.Q);
        parcel.writeByte(this.R ? (byte) 1 : (byte) 0);
        com.tencent.bugly.proguard.ha.b(parcel, this.S);
        com.tencent.bugly.proguard.ha.a(parcel, this.h);
        com.tencent.bugly.proguard.ha.a(parcel, this.i);
        parcel.writeInt(this.U);
        parcel.writeInt(this.V);
        com.tencent.bugly.proguard.ha.b(parcel, this.W);
        com.tencent.bugly.proguard.ha.b(parcel, this.X);
        parcel.writeByteArray(this.Y);
        parcel.writeByteArray(this.y);
        parcel.writeString(this.Z);
        parcel.writeString(this.aa);
        parcel.writeString(this.x);
        parcel.writeLong(this.I);
        parcel.writeLong(this.J);
        parcel.writeLong(this.K);
    }
}
