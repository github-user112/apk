package com.tencent.bugly.crashreport.common.strategy;

/* loaded from: classes.dex */
public class StrategyBean implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.tencent.bugly.crashreport.common.strategy.StrategyBean> CREATOR = new com.tencent.bugly.crashreport.common.strategy.StrategyBean.a();
    public static java.lang.String a = "https://android.bugly.qq.com/rqd/async";
    public static java.lang.String b = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.String f969c;

    /* renamed from: d, reason: collision with root package name */
    public long f970d;

    /* renamed from: e, reason: collision with root package name */
    public long f971e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f972f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f973g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public long o;
    public long p;
    public java.lang.String q;
    public java.lang.String r;
    public java.lang.String s;
    public java.util.Map<java.lang.String, java.lang.String> t;
    public int u;
    public long v;
    public long w;

    public static class a implements android.os.Parcelable.Creator<com.tencent.bugly.crashreport.common.strategy.StrategyBean> {
        @Override // android.os.Parcelable.Creator
        public com.tencent.bugly.crashreport.common.strategy.StrategyBean createFromParcel(android.os.Parcel parcel) {
            return new com.tencent.bugly.crashreport.common.strategy.StrategyBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public com.tencent.bugly.crashreport.common.strategy.StrategyBean[] newArray(int i) {
            return new com.tencent.bugly.crashreport.common.strategy.StrategyBean[i];
        }
    }

    public StrategyBean() {
        this.f970d = -1L;
        this.f971e = -1L;
        this.f972f = true;
        this.f973g = true;
        this.h = true;
        this.i = true;
        this.j = false;
        this.k = true;
        this.l = true;
        this.m = true;
        this.n = true;
        this.p = 30000L;
        this.q = a;
        this.r = b;
        this.u = 10;
        this.v = 300000L;
        this.w = -1L;
        this.f971e = java.lang.System.currentTimeMillis();
        java.lang.StringBuilder sbR = e.a.c.a.a.r("S(", "@L@L", "@)");
        f969c = sbR.toString();
        sbR.setLength(0);
        sbR.append("*^");
        sbR.append("@K#K");
        sbR.append("@!");
        this.s = sbR.toString();
    }

    public StrategyBean(android.os.Parcel parcel) {
        this.f970d = -1L;
        this.f971e = -1L;
        boolean z = true;
        this.f972f = true;
        this.f973g = true;
        this.h = true;
        this.i = true;
        this.j = false;
        this.k = true;
        this.l = true;
        this.m = true;
        this.n = true;
        this.p = 30000L;
        this.q = a;
        this.r = b;
        this.u = 10;
        this.v = 300000L;
        this.w = -1L;
        try {
            f969c = "S(@L@L@)";
            this.f971e = parcel.readLong();
            this.f972f = parcel.readByte() == 1;
            this.f973g = parcel.readByte() == 1;
            this.h = parcel.readByte() == 1;
            this.q = parcel.readString();
            this.r = parcel.readString();
            this.s = parcel.readString();
            this.t = com.tencent.bugly.proguard.ha.b(parcel);
            this.i = parcel.readByte() == 1;
            this.j = parcel.readByte() == 1;
            this.m = parcel.readByte() == 1;
            this.n = parcel.readByte() == 1;
            this.p = parcel.readLong();
            this.k = parcel.readByte() == 1;
            if (parcel.readByte() != 1) {
                z = false;
            }
            this.l = z;
            this.o = parcel.readLong();
            this.u = parcel.readInt();
            this.v = parcel.readLong();
            this.w = parcel.readLong();
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeLong(this.f971e);
        parcel.writeByte(this.f972f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f973g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.h ? (byte) 1 : (byte) 0);
        parcel.writeString(this.q);
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        com.tencent.bugly.proguard.ha.b(parcel, this.t);
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.m ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.n ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.p);
        parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.o);
        parcel.writeInt(this.u);
        parcel.writeLong(this.v);
        parcel.writeLong(this.w);
    }
}
