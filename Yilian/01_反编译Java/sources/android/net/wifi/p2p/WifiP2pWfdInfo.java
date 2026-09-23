package android.net.wifi.p2p;

/* loaded from: classes.dex */
public class WifiP2pWfdInfo implements android.os.Parcelable {
    public static final int COUPLED_SINK_SUPPORT_AT_SINK = 8;
    public static final int COUPLED_SINK_SUPPORT_AT_SOURCE = 4;
    public static final android.os.Parcelable.Creator<android.net.wifi.p2p.WifiP2pWfdInfo> CREATOR = new android.os.Parcelable.Creator<android.net.wifi.p2p.WifiP2pWfdInfo>() { // from class: android.net.wifi.p2p.WifiP2pWfdInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public android.net.wifi.p2p.WifiP2pWfdInfo createFromParcel(android.os.Parcel parcel) {
            android.net.wifi.p2p.WifiP2pWfdInfo wifiP2pWfdInfo = new android.net.wifi.p2p.WifiP2pWfdInfo();
            wifiP2pWfdInfo.readFromParcel(parcel);
            return wifiP2pWfdInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public android.net.wifi.p2p.WifiP2pWfdInfo[] newArray(int i) {
            return new android.net.wifi.p2p.WifiP2pWfdInfo[i];
        }
    };
    public static final int DEVICE_TYPE = 3;
    public static final int PRIMARY_SINK = 1;
    public static final int SECONDARY_SINK = 2;
    public static final int SESSION_AVAILABLE = 48;
    public static final int SESSION_AVAILABLE_BIT1 = 16;
    public static final int SESSION_AVAILABLE_BIT2 = 32;
    public static final int SOURCE_OR_PRIMARY_SINK = 3;
    public static final java.lang.String TAG = "WifiP2pWfdInfo";
    public static final int WFD_SOURCE = 0;
    public int mCtrlPort;
    public int mDeviceInfo;
    public int mMaxThroughput;
    public boolean mWfdEnabled;

    public WifiP2pWfdInfo() {
    }

    public WifiP2pWfdInfo(int i, int i2, int i3) {
        this.mWfdEnabled = true;
        this.mDeviceInfo = i;
        this.mCtrlPort = i2;
        this.mMaxThroughput = i3;
    }

    public WifiP2pWfdInfo(android.net.wifi.p2p.WifiP2pWfdInfo wifiP2pWfdInfo) {
        if (wifiP2pWfdInfo != null) {
            this.mWfdEnabled = wifiP2pWfdInfo.mWfdEnabled;
            this.mDeviceInfo = wifiP2pWfdInfo.mDeviceInfo;
            this.mCtrlPort = wifiP2pWfdInfo.mCtrlPort;
            this.mMaxThroughput = wifiP2pWfdInfo.mMaxThroughput;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getControlPort() {
        return this.mCtrlPort;
    }

    public java.lang.String getDeviceInfoHex() {
        return java.lang.String.format(java.util.Locale.US, "%04x%04x%04x", java.lang.Integer.valueOf(this.mDeviceInfo), java.lang.Integer.valueOf(this.mCtrlPort), java.lang.Integer.valueOf(this.mMaxThroughput));
    }

    public int getDeviceType() {
        return this.mDeviceInfo & 3;
    }

    public int getMaxThroughput() {
        return this.mMaxThroughput;
    }

    public boolean isCoupledSinkSupportedAtSink() {
        return (this.mDeviceInfo & 8) != 0;
    }

    public boolean isCoupledSinkSupportedAtSource() {
        return (this.mDeviceInfo & 8) != 0;
    }

    public boolean isEnabled() {
        return this.mWfdEnabled;
    }

    public boolean isSessionAvailable() {
        return (this.mDeviceInfo & 48) != 0;
    }

    public boolean isWfdEnabled() {
        return this.mWfdEnabled;
    }

    public void readFromParcel(android.os.Parcel parcel) {
        this.mWfdEnabled = parcel.readInt() == 1;
        this.mDeviceInfo = parcel.readInt();
        this.mCtrlPort = parcel.readInt();
        this.mMaxThroughput = parcel.readInt();
    }

    public void setControlPort(int i) {
        this.mCtrlPort = i;
    }

    public void setCoupledSinkSupportAtSink(boolean z) {
        this.mDeviceInfo = z ? this.mDeviceInfo | 8 : this.mDeviceInfo & (-9);
    }

    public void setCoupledSinkSupportAtSource(boolean z) {
        this.mDeviceInfo = z ? this.mDeviceInfo | 8 : this.mDeviceInfo & (-9);
    }

    public boolean setDeviceType(int i) {
        if (i < 0 || i > 3) {
            return false;
        }
        int i2 = this.mDeviceInfo & (-4);
        this.mDeviceInfo = i2;
        this.mDeviceInfo = i | i2;
        return true;
    }

    public void setEnabled(boolean z) {
        this.mWfdEnabled = z;
    }

    public void setMaxThroughput(int i) {
        this.mMaxThroughput = i;
    }

    public void setSessionAvailable(boolean z) {
        int i;
        if (z) {
            int i2 = this.mDeviceInfo | 16;
            this.mDeviceInfo = i2;
            i = i2 & (-33);
        } else {
            i = this.mDeviceInfo & (-49);
        }
        this.mDeviceInfo = i;
    }

    public void setWfdEnabled(boolean z) {
        this.mWfdEnabled = z;
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        stringBuffer.append("WFD enabled: ");
        stringBuffer.append(this.mWfdEnabled);
        stringBuffer.append("WFD DeviceInfo: ");
        stringBuffer.append(this.mDeviceInfo);
        stringBuffer.append("\n WFD CtrlPort: ");
        stringBuffer.append(this.mCtrlPort);
        stringBuffer.append("\n WFD MaxThroughput: ");
        stringBuffer.append(this.mMaxThroughput);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(this.mWfdEnabled ? 1 : 0);
        parcel.writeInt(this.mDeviceInfo);
        parcel.writeInt(this.mCtrlPort);
        parcel.writeInt(this.mMaxThroughput);
    }
}
