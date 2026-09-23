package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class b implements net.easyconn.ecsdk.IECHIDDevice {
    public net.easyconn.ecsdk.ebt.IEBTHIDHandle a;

    public b(net.easyconn.ecsdk.ebt.IEBTHIDHandle iEBTHIDHandle) {
        this.a = iEBTHIDHandle;
    }

    @Override // net.easyconn.ecsdk.IECHIDDevice
    public boolean register(int i, int i2) {
        return true;
    }

    @Override // net.easyconn.ecsdk.IECHIDDevice
    public boolean sendHIDDescriptor(int i, byte[] bArr, int i2) {
        return true;
    }

    @Override // net.easyconn.ecsdk.IECHIDDevice
    public boolean sendHIDEvent(int i, byte[] bArr, int i2) {
        if (i2 == 3) {
            this.a.onKeyCodeData(net.easyconn.ecsdk.ECSDKTool.byteToInt(java.util.Arrays.copyOfRange(bArr, 1, 3)));
            return true;
        }
        byte[] bArrCopyOfRange = java.util.Arrays.copyOfRange(bArr, 2, 3);
        byte[] bArrCopyOfRange2 = java.util.Arrays.copyOfRange(bArr, 3, 5);
        byte[] bArrCopyOfRange3 = java.util.Arrays.copyOfRange(bArr, 5, 7);
        byte[] bArrCopyOfRange4 = java.util.Arrays.copyOfRange(bArr, 1, 2);
        net.easyconn.ecsdk.ECTypes.ECTouchEventData eCTouchEventData = new net.easyconn.ecsdk.ECTypes.ECTouchEventData(net.easyconn.ecsdk.ECSDKTool.byteToInt(bArrCopyOfRange2), net.easyconn.ecsdk.ECSDKTool.byteToInt(bArrCopyOfRange3), 0);
        eCTouchEventData.slot = (net.easyconn.ecsdk.ECSDKTool.byteToInt(bArrCopyOfRange) & 3) > 0 ? (net.easyconn.ecsdk.ECSDKTool.byteToInt(bArrCopyOfRange) - 3) >> 2 : net.easyconn.ecsdk.ECSDKTool.byteToInt(bArrCopyOfRange) >> 2;
        this.a.onTouchEventData(eCTouchEventData, net.easyconn.ecsdk.ECTypes.ECTouchEventType.values()[net.easyconn.ecsdk.ECSDKTool.byteToInt(bArrCopyOfRange4)]);
        return true;
    }

    @Override // net.easyconn.ecsdk.IECHIDDevice
    public boolean unRegister(int i) {
        return true;
    }
}
