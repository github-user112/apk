package com.tencent.bugly.crashreport.common.info;

/* loaded from: classes.dex */
public class PlugInBean implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.tencent.bugly.crashreport.common.info.PlugInBean> CREATOR = new com.tencent.bugly.crashreport.common.info.PlugInBean.a();
    public final java.lang.String a;
    public final java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.String f962c;

    public static class a implements android.os.Parcelable.Creator<com.tencent.bugly.crashreport.common.info.PlugInBean> {
        @Override // android.os.Parcelable.Creator
        public com.tencent.bugly.crashreport.common.info.PlugInBean createFromParcel(android.os.Parcel parcel) {
            return new com.tencent.bugly.crashreport.common.info.PlugInBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public com.tencent.bugly.crashreport.common.info.PlugInBean[] newArray(int i) {
            return new com.tencent.bugly.crashreport.common.info.PlugInBean[i];
        }
    }

    public PlugInBean(android.os.Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.f962c = parcel.readString();
    }

    public PlugInBean(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.a = str;
        this.b = str2;
        this.f962c = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("plid:");
        sbO.append(this.a);
        sbO.append(" plV:");
        sbO.append(this.b);
        sbO.append(" plUUID:");
        sbO.append(this.f962c);
        return sbO.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f962c);
    }
}
