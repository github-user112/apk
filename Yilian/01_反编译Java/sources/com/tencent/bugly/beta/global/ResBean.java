package com.tencent.bugly.beta.global;

/* loaded from: classes.dex */
public class ResBean implements android.os.Parcelable, android.os.Parcelable.Creator<com.tencent.bugly.beta.global.ResBean> {
    public static com.tencent.bugly.beta.global.ResBean a;

    /* renamed from: c, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.String> f901c = new java.util.concurrent.ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.String f902d = "#273238";

    /* renamed from: e, reason: collision with root package name */
    public final java.lang.String f903e = "#757575";
    public static final java.lang.String[] b = {"IMG_title", "VAL_style", "tacticsSource", "h5"};
    public static final android.os.Parcelable.Creator<com.tencent.bugly.beta.global.ResBean> CREATOR = new com.tencent.bugly.beta.global.ResBean();

    public ResBean() {
    }

    public ResBean(android.os.Parcel parcel) {
        try {
            for (java.lang.String str : b) {
                this.f901c.put(str, parcel.readString());
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public java.lang.String a(java.lang.String str) {
        return this.f901c.get(str);
    }

    public void a(java.lang.String str, java.lang.Object obj) {
        if (obj instanceof java.lang.String) {
            this.f901c.put(str, (java.lang.String) obj);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public com.tencent.bugly.beta.global.ResBean createFromParcel(android.os.Parcel parcel) {
        return new com.tencent.bugly.beta.global.ResBean(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public com.tencent.bugly.beta.global.ResBean[] newArray(int i) {
        return new com.tencent.bugly.beta.global.ResBean[0];
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        for (java.lang.String str : b) {
            parcel.writeString(this.f901c.get(str));
        }
    }
}
