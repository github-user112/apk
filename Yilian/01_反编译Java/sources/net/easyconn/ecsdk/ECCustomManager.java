package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class ECCustomManager extends net.easyconn.ecsdk.ECCustomProtocol {
    public static final net.easyconn.ecsdk.ECCustomManager a = new net.easyconn.ecsdk.ECCustomManager();
    public static final net.easyconn.ecsdk.ECCustomManager.a b = new net.easyconn.ecsdk.ECCustomManager.a();

    /* renamed from: c, reason: collision with root package name */
    public static final java.util.HashMap<java.lang.Integer, net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse> f3149c = new java.util.HashMap<>();

    /* renamed from: d, reason: collision with root package name */
    public static volatile boolean f3150d = false;

    public static class a implements net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse {
        @Override // net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse
        public void onError(int i, int i2, java.lang.String str) {
            net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse iCustomDataResponse;
            synchronized (net.easyconn.ecsdk.ECCustomManager.f3149c) {
                iCustomDataResponse = (net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse) net.easyconn.ecsdk.ECCustomManager.f3149c.get(java.lang.Integer.valueOf(i));
                net.easyconn.ecsdk.ECCustomManager.f3149c.remove(java.lang.Integer.valueOf(i));
            }
            if (iCustomDataResponse != null) {
                iCustomDataResponse.onError(i, i2, str);
            }
        }

        @Override // net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse
        public void onReceive(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData) {
            net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse iCustomDataResponse;
            int rspSeq = eCCustomData.getRspSeq();
            synchronized (net.easyconn.ecsdk.ECCustomManager.f3149c) {
                iCustomDataResponse = (net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse) net.easyconn.ecsdk.ECCustomManager.f3149c.get(java.lang.Integer.valueOf(rspSeq));
                net.easyconn.ecsdk.ECCustomManager.f3149c.remove(java.lang.Integer.valueOf(rspSeq));
            }
            if (iCustomDataResponse != null) {
                iCustomDataResponse.onReceive(eCCustomData);
            }
        }

        @Override // net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse
        public void onTimeout(int i) {
            net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse iCustomDataResponse;
            synchronized (net.easyconn.ecsdk.ECCustomManager.f3149c) {
                iCustomDataResponse = (net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse) net.easyconn.ecsdk.ECCustomManager.f3149c.get(java.lang.Integer.valueOf(i));
                net.easyconn.ecsdk.ECCustomManager.f3149c.remove(java.lang.Integer.valueOf(i));
            }
            if (iCustomDataResponse != null) {
                iCustomDataResponse.onTimeout(i);
            }
        }
    }

    public static net.easyconn.ecsdk.ECCustomManager c() {
        if (!f3150d) {
            net.easyconn.ecsdk.ECCustomManager eCCustomManager = a;
            synchronized (eCCustomManager) {
                if (!f3150d) {
                    eCCustomManager.native_setCustomDataResponse(b);
                    f3150d = true;
                }
            }
        }
        return a;
    }

    private native int native_registerCustomDataReceiver(net.easyconn.ecsdk.ECCustomProtocol.ICustomDataReceiver iCustomDataReceiver);

    private native int native_replyCustomData(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData, int i);

    private native int native_sendCustomData(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData);

    private native int native_sendCustomData2(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData, int i, net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse iCustomDataResponse);

    private native void native_setCustomDataResponse(net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse iCustomDataResponse);

    public void b() {
        java.util.HashMap<java.lang.Integer, net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse> map = f3149c;
        synchronized (map) {
            map.clear();
        }
    }

    @Override // net.easyconn.ecsdk.ECCustomProtocol
    public int registerCustomDataReceiver(net.easyconn.ecsdk.ECCustomProtocol.ICustomDataReceiver iCustomDataReceiver) {
        return native_registerCustomDataReceiver(iCustomDataReceiver);
    }

    @Override // net.easyconn.ecsdk.ECCustomProtocol
    public int replyCustomData(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData, int i) {
        if (eCCustomData != null) {
            return native_replyCustomData(eCCustomData, i);
        }
        android.util.Log.e("ecsdk", "replyCustomData data is null");
        return -2;
    }

    @Override // net.easyconn.ecsdk.ECCustomProtocol
    public int sendCustomData(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData) {
        if (eCCustomData != null) {
            return native_sendCustomData(eCCustomData);
        }
        android.util.Log.e("ecsdk", "sendCustomData data is null");
        return -2;
    }

    @Override // net.easyconn.ecsdk.ECCustomProtocol
    public int sendCustomData(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData, int i, net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse iCustomDataResponse) {
        if (eCCustomData == null) {
            android.util.Log.e("ecsdk", "sendCustomData data is null");
            return -2;
        }
        int iNative_sendCustomData2 = native_sendCustomData2(eCCustomData, i, iCustomDataResponse);
        if (iCustomDataResponse != null) {
            java.util.HashMap<java.lang.Integer, net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse> map = f3149c;
            synchronized (map) {
                map.put(java.lang.Integer.valueOf(eCCustomData.getReqSeq()), iCustomDataResponse);
            }
        }
        return iNative_sendCustomData2;
    }
}
