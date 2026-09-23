package com.tencent.bugly.beta.upgrade;

/* loaded from: classes.dex */
public class BetaGrayStrategy implements android.os.Parcelable, android.os.Parcelable.Creator<com.tencent.bugly.beta.upgrade.BetaGrayStrategy> {
    public static final android.os.Parcelable.Creator<com.tencent.bugly.beta.upgrade.BetaGrayStrategy> CREATOR = new com.tencent.bugly.beta.upgrade.BetaGrayStrategy();
    public com.tencent.bugly.proguard.B a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public long f914c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f915d;

    /* renamed from: e, reason: collision with root package name */
    public long f916e;

    public BetaGrayStrategy() {
        this.b = 0;
        this.f914c = -1L;
        this.f915d = false;
        this.f916e = -1L;
    }

    public BetaGrayStrategy(android.os.Parcel parcel) {
        this.b = 0;
        this.f914c = -1L;
        this.f915d = false;
        this.f916e = -1L;
        this.a = (com.tencent.bugly.proguard.B) com.tencent.bugly.proguard.N.a(parcel.createByteArray(), com.tencent.bugly.proguard.B.class);
        this.b = parcel.readInt();
        this.f914c = parcel.readLong();
        this.f915d = 1 == parcel.readByte();
        this.f916e = parcel.readLong();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public com.tencent.bugly.beta.upgrade.BetaGrayStrategy createFromParcel(android.os.Parcel parcel) {
        return new com.tencent.bugly.beta.upgrade.BetaGrayStrategy(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public com.tencent.bugly.beta.upgrade.BetaGrayStrategy[] newArray(int i) {
        return new com.tencent.bugly.beta.upgrade.BetaGrayStrategy[i];
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeByteArray(com.tencent.bugly.proguard.N.a((com.tencent.bugly.proguard.AbstractC0254m) this.a));
        parcel.writeInt(this.b);
        parcel.writeLong(this.f914c);
        parcel.writeByte(this.f915d ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f916e);
    }
}
