package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class DetailRect implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.huawei.hms.hmsscankit.DetailRect> CREATOR = new com.huawei.hms.hmsscankit.a();
    public static final java.lang.String CUSTOMED_FLAG = "CustomedFlag";
    public static final java.lang.String DEEPLINK_BACK_COLOR = "DeepLinkColor";
    public static final java.lang.String DEEPLINK_JUMP_FLAG = "DeepLinkJumpFlag";
    public static final java.lang.String DEEPLINK_VALUE = "DeepLinkValue";
    public static final int DEFALT_HMS_SCAN_VERSIONU = 0;
    public static final java.lang.String FORMAT_FLAG = "FormatValue";
    public static int HMSSCAN_SDK_VALUE = 3;
    public static final java.lang.String PHOTO_MODE = "PhotoMode";
    public static final java.lang.String RECT_FLAG = "RectValue";
    public static final java.lang.String RETURN_BITMAP = "return_bitmap";
    public static final java.lang.String SCAN_LOCAL_DECODER = "localdecoder";
    public static final java.lang.String SCAN_NEW_UI = "localui";
    public static final java.lang.String SCAN_OFFSCEEN_FLAG = "ScanOffSceenFlag";
    public static final java.lang.String TYPE_TRANS = "TransType";
    public static final int VALUE_HMS_SCAN_VERSION = 3;
    public int height;
    public int width;

    public DetailRect() {
    }

    public DetailRect(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public DetailRect(android.os.Parcel parcel) {
        this.width = parcel.readInt();
        this.height = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
    }
}
