package com.tencent.bugly.beta.upgrade;

/* loaded from: classes.dex */
public class BetaUploadStrategy implements android.os.Parcelable, android.os.Parcelable.Creator<com.tencent.bugly.beta.upgrade.BetaUploadStrategy> {
    public static final android.os.Parcelable.Creator<com.tencent.bugly.beta.upgrade.BetaUploadStrategy> CREATOR = new com.tencent.bugly.beta.upgrade.BetaUploadStrategy();
    public com.tencent.bugly.proguard.wa a;
    public long b;

    public BetaUploadStrategy() {
        com.tencent.bugly.proguard.wa waVar = new com.tencent.bugly.proguard.wa();
        this.a = waVar;
        waVar.f1162e = true;
        waVar.f1163f = true;
        java.lang.String str = com.tencent.bugly.crashreport.common.strategy.StrategyBean.a;
        waVar.f1164g = str;
        waVar.h = str;
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        this.a.k = jCurrentTimeMillis;
        this.b = jCurrentTimeMillis;
    }

    public BetaUploadStrategy(android.os.Parcel parcel) {
        this.a = (com.tencent.bugly.proguard.wa) com.tencent.bugly.proguard.N.a(parcel.createByteArray(), com.tencent.bugly.proguard.wa.class);
        this.b = parcel.readLong();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public com.tencent.bugly.beta.upgrade.BetaUploadStrategy createFromParcel(android.os.Parcel parcel) {
        return new com.tencent.bugly.beta.upgrade.BetaUploadStrategy(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public com.tencent.bugly.beta.upgrade.BetaUploadStrategy[] newArray(int i) {
        return new com.tencent.bugly.beta.upgrade.BetaUploadStrategy[i];
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeByteArray(com.tencent.bugly.proguard.N.a((com.tencent.bugly.proguard.AbstractC0254m) this.a));
        parcel.writeLong(this.b);
    }
}
