package net.easyconn.ecsdk.ebt;

/* loaded from: classes.dex */
public interface IEBTRfCommHandle {
    int getRfCommClient();

    int recvData(int i, byte[] bArr);

    int registerRfCommServer(byte[] bArr);

    int sendData(int i, byte[] bArr);

    void unregisterRfCommServer(byte[] bArr);
}
