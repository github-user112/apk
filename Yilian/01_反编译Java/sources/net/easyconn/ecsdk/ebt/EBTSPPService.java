package net.easyconn.ecsdk.ebt;

/* loaded from: classes.dex */
public class EBTSPPService extends net.easyconn.ecsdk.ebt.EBTService {
    public final net.easyconn.ecsdk.ebt.EBTSPPService.EBTRfCommHandle mRfCommHandle;
    public boolean mRfServiceStatus;

    public static class EBTRfCommHandle implements net.easyconn.ecsdk.ebt.IEBTRfCommHandle {
        public android.bluetooth.BluetoothAdapter mBluetoothAdapter;
        public android.bluetooth.BluetoothSocket mClientSocket;
        public java.lang.String mRfCommServiceName;
        public android.bluetooth.BluetoothServerSocket mServiceSocket;

        public EBTRfCommHandle() {
            this.mServiceSocket = null;
            this.mClientSocket = null;
            this.mBluetoothAdapter = android.bluetooth.BluetoothAdapter.getDefaultAdapter();
            this.mRfCommServiceName = "ECRfComm";
        }

        private void closeClient() throws java.io.IOException {
            if (this.mClientSocket != null) {
                try {
                    android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, "mClientSocket  close");
                    this.mClientSocket.close();
                } catch (java.lang.Exception unused) {
                }
            }
        }

        @Override // net.easyconn.ecsdk.ebt.IEBTRfCommHandle
        public int getRfCommClient() throws java.io.IOException {
            java.lang.String str;
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "socketAccept");
            if (this.mServiceSocket == null) {
                str = "mServiceSocket is null";
            } else {
                try {
                    closeClient();
                    android.bluetooth.BluetoothSocket bluetoothSocketAccept = this.mServiceSocket.accept();
                    this.mClientSocket = bluetoothSocketAccept;
                    return java.lang.System.identityHashCode(bluetoothSocketAccept);
                } catch (java.lang.Exception e2) {
                    str = "socketAccept mServiceSocket accept error " + e2;
                }
            }
            android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, str);
            return -1;
        }

        @Override // net.easyconn.ecsdk.ebt.IEBTRfCommHandle
        public int recvData(int i, byte[] bArr) throws java.io.IOException {
            java.lang.String string;
            android.bluetooth.BluetoothSocket bluetoothSocket = this.mClientSocket;
            int i2 = 0;
            if (bluetoothSocket == null) {
                string = "socketRead mClientSocket is null";
            } else {
                if (i == java.lang.System.identityHashCode(bluetoothSocket)) {
                    try {
                        java.io.InputStream inputStream = this.mClientSocket.getInputStream();
                        while (i2 != bArr.length) {
                            i2 += inputStream.read(bArr, i2, bArr.length - i2);
                        }
                    } catch (java.lang.Exception e2) {
                        android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, "socketRead read error " + e2);
                    }
                    return i2;
                }
                java.lang.StringBuilder sbP = e.a.c.a.a.p("socketRead sock = ", i, " no match mClientSocket = ");
                sbP.append(java.lang.System.identityHashCode(this.mClientSocket));
                string = sbP.toString();
            }
            android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, string);
            return 0;
        }

        @Override // net.easyconn.ecsdk.ebt.IEBTRfCommHandle
        public int registerRfCommServer(byte[] bArr) throws java.io.IOException {
            if (this.mBluetoothAdapter != null && bArr.length == 16) {
                try {
                    java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(bArr);
                    android.bluetooth.BluetoothServerSocket bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord = this.mBluetoothAdapter.listenUsingInsecureRfcommWithServiceRecord(this.mRfCommServiceName, new java.util.UUID(byteBufferWrap.getLong(), byteBufferWrap.getLong()));
                    this.mServiceSocket = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord;
                    return java.lang.System.identityHashCode(bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord);
                } catch (java.lang.Exception e2) {
                    android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, "listenSocketWithSDPServiceRecord error", e2);
                }
            }
            return -1;
        }

        @Override // net.easyconn.ecsdk.ebt.IEBTRfCommHandle
        public int sendData(int i, byte[] bArr) throws java.io.IOException {
            java.lang.String str;
            android.bluetooth.BluetoothSocket bluetoothSocket = this.mClientSocket;
            if (bluetoothSocket == null) {
                str = "socketWrite mClientSocket is null";
            } else {
                if (i != java.lang.System.identityHashCode(bluetoothSocket)) {
                    java.lang.StringBuilder sbP = e.a.c.a.a.p("socketWrite sock = ", i, " no match mClientSocket = ");
                    sbP.append(java.lang.System.identityHashCode(this.mClientSocket));
                    android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, sbP.toString());
                }
                try {
                    this.mClientSocket.getOutputStream().write(bArr);
                    return bArr.length;
                } catch (java.lang.Exception e2) {
                    str = "socketWrite read error " + e2;
                }
            }
            android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, str);
            return 0;
        }

        @Override // net.easyconn.ecsdk.ebt.IEBTRfCommHandle
        public void unregisterRfCommServer(byte[] bArr) throws java.io.IOException {
            closeClient();
            if (this.mServiceSocket != null) {
                try {
                    android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, "mServiceSocket  close");
                    this.mServiceSocket.close();
                } catch (java.lang.Exception unused) {
                }
            }
        }
    }

    public EBTSPPService(android.content.Context context) {
        super(context);
        this.mRfServiceStatus = false;
        this.mRfCommHandle = new net.easyconn.ecsdk.ebt.EBTSPPService.EBTRfCommHandle();
    }

    private boolean isBluetoothEnabled() {
        android.bluetooth.BluetoothAdapter defaultAdapter = android.bluetooth.BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null) {
            return defaultAdapter.isEnabled();
        }
        android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, "device doesn`t support bluetooth");
        return false;
    }

    @Override // net.easyconn.ecsdk.ebt.EBTService
    public int startService(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack iEBTServiceCallBack, java.lang.Boolean bool) {
        if (!isBluetoothEnabled()) {
            android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, "startService bluetooth is disenabled");
            return -1;
        }
        if (this.mRfServiceStatus) {
            android.util.Log.w(net.easyconn.ecsdk.ebt.EBTService.TAG, "startService service is started");
            return -1;
        }
        if (native_registerCallBack(iEBTServiceCallBack) != 0 || native_bindTransport(this.mRfCommHandle) != 0) {
            return -1;
        }
        this.mRfServiceStatus = true;
        this.mType = eCTransportType;
        return 0;
    }

    @Override // net.easyconn.ecsdk.ebt.EBTService
    public void stopService() {
        if (!this.mRfServiceStatus) {
            android.util.Log.w(net.easyconn.ecsdk.ebt.EBTService.TAG, "startService service no started");
        }
        net.easyconn.ecsdk.ECSDK.getInstance().unbindDirectTransportDevice(this.mType);
        this.mRfServiceStatus = false;
    }
}
