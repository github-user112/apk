package f.a.i.i;

/* loaded from: classes.dex */
public class u implements android.net.wifi.p2p.WifiP2pManager.ActionListener {
    public final /* synthetic */ net.easyconn.framework.sdkservice.EcWifiManager a;

    public u(net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager) {
        this.a = ecWifiManager;
    }

    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
    public void onFailure(int i) {
        e.a.c.a.a.v(" discover peers fail, p2pScan 30000 reason is ", i);
        net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager = this.a;
        ecWifiManager.m = false;
        ecWifiManager.t.postDelayed(ecWifiManager.u, 30000L);
    }

    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
    public void onSuccess() {
        e.e.a.g.a(" start discover peers success ");
        this.a.m = true;
    }
}
