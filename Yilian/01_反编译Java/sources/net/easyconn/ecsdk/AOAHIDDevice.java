package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class AOAHIDDevice implements net.easyconn.ecsdk.IECHIDDevice {
    public static final java.lang.String TAG = "ecsdk";
    public android.hardware.usb.UsbDeviceConnection mConn;
    public android.hardware.usb.UsbInterface mInterface;
    public final int ACCESSORY_REGISTER_HID = 54;
    public final int ACCESSORY_UNREGISTER_HID = 55;
    public final int ACCESSORY_SET_HID_REPORT_DESC = 56;
    public final int ACCESSORY_SEND_HID_EVENT = 57;

    public AOAHIDDevice(android.hardware.usb.UsbDeviceConnection usbDeviceConnection, android.hardware.usb.UsbInterface usbInterface) {
        this.mConn = null;
        this.mInterface = null;
        this.mConn = usbDeviceConnection;
        this.mInterface = usbInterface;
    }

    private int controlTransfer(int i, int i2, int i3, byte[] bArr, int i4) {
        android.hardware.usb.UsbDeviceConnection usbDeviceConnection = this.mConn;
        if (usbDeviceConnection == null) {
            android.util.Log.d("ecsdk", "[AOAHIDDevice]controlTransfer error:UsbDeviceConnection is null");
            return -1;
        }
        int iControlTransfer = usbDeviceConnection.controlTransfer(64, i, i2, i3, bArr, i4, 500);
        if (iControlTransfer < 0) {
            android.util.Log.e("ecsdk", "[AOAHIDDevice]controlTransfer error:transfer error,ret=" + iControlTransfer);
        }
        return iControlTransfer;
    }

    private int getMaxPacketSize() {
        if (this.mInterface == null) {
            android.util.Log.d("ecsdk", "[AOAHIDDevice]getMaxPacketSize error:mInterface is null");
        }
        android.hardware.usb.UsbEndpoint usbEndpoint = null;
        android.hardware.usb.UsbEndpoint usbEndpoint2 = null;
        for (int i = 0; i < this.mInterface.getEndpointCount(); i++) {
            android.hardware.usb.UsbEndpoint endpoint = this.mInterface.getEndpoint(i);
            if (endpoint.getDirection() == 128) {
                usbEndpoint = endpoint;
            } else {
                usbEndpoint2 = endpoint;
            }
        }
        if (usbEndpoint != null && usbEndpoint2 != null) {
            return usbEndpoint2.getMaxPacketSize();
        }
        android.util.Log.d("ecsdk", "cann't find in and out endpoint");
        return -1;
    }

    @Override // net.easyconn.ecsdk.IECHIDDevice
    public boolean register(int i, int i2) {
        int iControlTransfer = controlTransfer(54, i, i2, null, 0);
        if (iControlTransfer >= 0) {
            return true;
        }
        android.util.Log.d("ecsdk", "[AOAHIDDevice]register: error:fail is ret=" + iControlTransfer + ",deviceId=" + i + ",descriptorSize=" + i2);
        return false;
    }

    @Override // net.easyconn.ecsdk.IECHIDDevice
    public boolean sendHIDDescriptor(int i, byte[] bArr, int i2) {
        int maxPacketSize = getMaxPacketSize();
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i2 - i3;
            int i5 = i4 > maxPacketSize ? maxPacketSize : i4;
            byte[] bArr2 = new byte[i5];
            java.lang.System.arraycopy(bArr, i3, bArr2, 0, i5);
            int iControlTransfer = controlTransfer(56, i, i3, bArr2, i5);
            i3 += i5;
            if (iControlTransfer < 0) {
                android.util.Log.d("ecsdk", "[AOAHIDDevice]sendHidDescriptor:error,ret=" + iControlTransfer);
                return false;
            }
        }
        return true;
    }

    @Override // net.easyconn.ecsdk.IECHIDDevice
    public boolean sendHIDEvent(int i, byte[] bArr, int i2) {
        int iControlTransfer = controlTransfer(57, i, 0, bArr, i2);
        if (iControlTransfer >= 0) {
            return true;
        }
        android.util.Log.d("ecsdk", "[AOAHIDDevice]sendHidEvent:error,ret=" + iControlTransfer);
        return false;
    }

    @Override // net.easyconn.ecsdk.IECHIDDevice
    public boolean unRegister(int i) {
        int iControlTransfer = controlTransfer(55, i, 0, null, 0);
        if (iControlTransfer >= 0) {
            return true;
        }
        android.util.Log.d("ecsdk", "[AOAHIDDevice]unRegisertHid: error:fail is ret=" + iControlTransfer);
        return false;
    }
}
