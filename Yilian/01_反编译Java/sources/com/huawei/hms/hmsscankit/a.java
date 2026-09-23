package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class a implements android.os.Parcelable.Creator<com.huawei.hms.hmsscankit.DetailRect> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public com.huawei.hms.hmsscankit.DetailRect createFromParcel(android.os.Parcel parcel) {
        return new com.huawei.hms.hmsscankit.DetailRect(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public com.huawei.hms.hmsscankit.DetailRect[] newArray(int i) {
        return new com.huawei.hms.hmsscankit.DetailRect[i];
    }
}
