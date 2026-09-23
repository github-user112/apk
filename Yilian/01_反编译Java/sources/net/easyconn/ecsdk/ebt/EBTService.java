package net.easyconn.ecsdk.ebt;

/* loaded from: classes.dex */
public abstract class EBTService {
    public static final java.lang.String TAG = "ecsdk:ebtservice";
    public final android.content.Context mContext;
    public net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack mCallBack = null;
    public net.easyconn.ecsdk.ECTypes.ECTransportType mType = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_MAX;

    public EBTService(android.content.Context context) {
        this.mContext = context;
    }

    public native int native_bindTransport(net.easyconn.ecsdk.ebt.IEBTRfCommHandle iEBTRfCommHandle);

    public native int native_registerCallBack(net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack iEBTServiceCallBack);

    public native int native_setBTBuildNetCarIp(java.lang.String str);

    public native int native_setRequestBuildNetRly(java.lang.String str, net.easyconn.ecsdk.ECTypes.EBTRequestBuildNetRly eBTRequestBuildNetRly);

    public int setBTBuildNetCarIp(java.lang.String str) {
        return native_setBTBuildNetCarIp(str);
    }

    public int setRequestBuildNetRly(java.lang.String str, net.easyconn.ecsdk.ECTypes.EBTRequestBuildNetRly eBTRequestBuildNetRly) {
        if (str != null && eBTRequestBuildNetRly != null) {
            return native_setRequestBuildNetRly(str, eBTRequestBuildNetRly);
        }
        android.util.Log.e(TAG, "setRequestBuildNetRly failed, param is null");
        return -2;
    }

    public int startService(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack iEBTServiceCallBack, java.lang.Boolean bool) {
        return 0;
    }

    public void stopService() {
    }
}
