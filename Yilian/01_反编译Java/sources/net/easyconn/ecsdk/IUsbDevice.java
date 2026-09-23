package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public interface IUsbDevice {
    void close();

    int open();

    int read(java.nio.ByteBuffer byteBuffer, int i);

    int write(java.nio.ByteBuffer byteBuffer, int i);
}
