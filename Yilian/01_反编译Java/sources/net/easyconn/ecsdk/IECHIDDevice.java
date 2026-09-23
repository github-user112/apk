package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public interface IECHIDDevice {
    public static final int EC_BLEHID_TYPE_AOA = 0;
    public static final int EC_BLEHID_TYPE_BLE = 1;

    boolean register(int i, int i2);

    boolean sendHIDDescriptor(int i, byte[] bArr, int i2);

    boolean sendHIDEvent(int i, byte[] bArr, int i2);

    boolean unRegister(int i);
}
