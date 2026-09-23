package f.a.i.i;

/* loaded from: classes.dex */
public class l implements net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack {
    public final /* synthetic */ net.easyconn.framework.sdkservice.EasyConnectService a;

    public l(net.easyconn.framework.sdkservice.EasyConnectService easyConnectService) {
        this.a = easyConnectService;
    }

    @Override // net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack
    public void onPhoneAPInfo(net.easyconn.ecsdk.ECTypes.EBTNetInfo eBTNetInfo) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        e.e.a.g.a("EasyConnectService onPhoneAPInfo ebtNetInfo = " + eBTNetInfo);
        f.a.f.a aVar = this.a.s;
        java.lang.String str = eBTNetInfo.ssid;
        java.lang.String str2 = eBTNetInfo.pwd;
        if (aVar == null) {
            throw null;
        }
        e.e.a.g.a("BleNetworkManager openWifiAndConnectForBleAp ssid = " + str + ", password = " + str2);
        aVar.k(true);
        aVar.p = true;
        aVar.j(str, str2);
    }

    @Override // net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack
    public void onPhoneBuildNetFinish() {
        e.e.a.g.a("EasyConnectService onPhoneBuildNetFinish");
        this.a.f(android.text.format.Formatter.formatIpAddress(((android.net.wifi.WifiManager) this.a.b.getSystemService("wifi")).getDhcpInfo().serverAddress));
    }

    @Override // net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack
    public void onRequestBuildNet(net.easyconn.ecsdk.ECTypes.EBTClientInfo eBTClientInfo) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        e.e.a.g.a("EasyConnectService onRequestBuildNet ebtClientInfo = " + eBTClientInfo);
        if (eBTClientInfo.phoneType == 0) {
            f.a.i.i.q qVar = this.a.a;
            java.lang.String str = eBTClientInfo.phoneID;
            net.easyconn.ecsdk.ECTypes.EBTRequestBuildNetRly eBTRequestBuildNetRly = new net.easyconn.ecsdk.ECTypes.EBTRequestBuildNetRly(2);
            if (qVar == null) {
                throw null;
            }
            e.e.a.g.a("BleAP setBTRequestBuildNetRly");
            java.util.HashMap map = new java.util.HashMap();
            map.put("phoneId", str);
            map.put("rly", eBTRequestBuildNetRly);
            android.os.Message messageObtain = android.os.Message.obtain();
            messageObtain.obj = map;
            messageObtain.what = 64;
            qVar.r.sendMessage(messageObtain);
            return;
        }
        f.a.f.a aVar = this.a.s;
        java.lang.String str2 = eBTClientInfo.phoneID;
        if (aVar == null) {
            throw null;
        }
        e.e.a.g.a("BleNetworkManager openApAndConnectForBleAp phoneId = " + str2);
        aVar.k(false);
        aVar.q = true;
        aVar.l = str2;
        aVar.i = true;
        aVar.m(false);
    }

    @Override // net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack
    public void onRequestBuildNetCancel() {
        e.e.a.g.a("EasyConnectService onRequestBuildNetCancel");
    }
}
