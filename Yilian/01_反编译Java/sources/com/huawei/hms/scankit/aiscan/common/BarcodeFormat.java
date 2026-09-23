package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public enum BarcodeFormat implements android.os.Parcelable {
    AZTEC,
    CODABAR,
    CODE_39,
    CODE_93,
    CODE_128,
    DATA_MATRIX,
    EAN_8,
    EAN_13,
    ITF,
    PDF_417,
    QR_CODE,
    UPC_A,
    UPC_E,
    UPC_EAN_EXTENSION,
    NONE;

    public static final android.os.Parcelable.Creator<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.scankit.aiscan.common.BarcodeFormat>() { // from class: com.huawei.hms.scankit.aiscan.common.b
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.huawei.hms.scankit.aiscan.common.BarcodeFormat createFromParcel(android.os.Parcel parcel) {
            return com.huawei.hms.scankit.aiscan.common.BarcodeFormat.values()[parcel.readInt()];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.huawei.hms.scankit.aiscan.common.BarcodeFormat[] newArray(int i) {
            return new com.huawei.hms.scankit.aiscan.common.BarcodeFormat[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(ordinal());
    }
}
