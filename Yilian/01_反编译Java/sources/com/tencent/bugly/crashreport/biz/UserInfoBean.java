package com.tencent.bugly.crashreport.biz;

/* loaded from: classes.dex */
public class UserInfoBean implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.tencent.bugly.crashreport.biz.UserInfoBean> CREATOR = new com.tencent.bugly.crashreport.biz.UserInfoBean.a();
    public long a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f948c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f949d;

    /* renamed from: e, reason: collision with root package name */
    public long f950e;

    /* renamed from: f, reason: collision with root package name */
    public long f951f;

    /* renamed from: g, reason: collision with root package name */
    public long f952g;
    public long h;
    public long i;
    public java.lang.String j;
    public long k;
    public boolean l;
    public java.lang.String m;
    public java.lang.String n;
    public int o;
    public int p;
    public int q;
    public java.util.Map<java.lang.String, java.lang.String> r;
    public java.util.Map<java.lang.String, java.lang.String> s;

    public static class a implements android.os.Parcelable.Creator<com.tencent.bugly.crashreport.biz.UserInfoBean> {
        @Override // android.os.Parcelable.Creator
        public com.tencent.bugly.crashreport.biz.UserInfoBean createFromParcel(android.os.Parcel parcel) {
            return new com.tencent.bugly.crashreport.biz.UserInfoBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public com.tencent.bugly.crashreport.biz.UserInfoBean[] newArray(int i) {
            return new com.tencent.bugly.crashreport.biz.UserInfoBean[i];
        }
    }

    public UserInfoBean() {
        this.k = 0L;
        this.l = false;
        this.m = "unknown";
        this.p = -1;
        this.q = -1;
        this.r = null;
        this.s = null;
    }

    public UserInfoBean(android.os.Parcel parcel) {
        this.k = 0L;
        this.l = false;
        this.m = "unknown";
        this.p = -1;
        this.q = -1;
        this.r = null;
        this.s = null;
        this.b = parcel.readInt();
        this.f948c = parcel.readString();
        this.f949d = parcel.readString();
        this.f950e = parcel.readLong();
        this.f951f = parcel.readLong();
        this.f952g = parcel.readLong();
        this.h = parcel.readLong();
        this.i = parcel.readLong();
        this.j = parcel.readString();
        this.k = parcel.readLong();
        this.l = parcel.readByte() == 1;
        this.m = parcel.readString();
        this.p = parcel.readInt();
        this.q = parcel.readInt();
        this.r = com.tencent.bugly.proguard.ha.b(parcel);
        this.s = com.tencent.bugly.proguard.ha.b(parcel);
        this.n = parcel.readString();
        this.o = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeString(this.f948c);
        parcel.writeString(this.f949d);
        parcel.writeLong(this.f950e);
        parcel.writeLong(this.f951f);
        parcel.writeLong(this.f952g);
        parcel.writeLong(this.h);
        parcel.writeLong(this.i);
        parcel.writeString(this.j);
        parcel.writeLong(this.k);
        parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
        parcel.writeString(this.m);
        parcel.writeInt(this.p);
        parcel.writeInt(this.q);
        com.tencent.bugly.proguard.ha.b(parcel, this.r);
        com.tencent.bugly.proguard.ha.b(parcel, this.s);
        parcel.writeString(this.n);
        parcel.writeInt(this.o);
    }
}
