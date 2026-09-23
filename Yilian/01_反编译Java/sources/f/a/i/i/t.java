package f.a.i.i;

/* loaded from: classes.dex */
public class t implements android.net.wifi.p2p.WifiP2pManager.ActionListener {
    public t(net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager) {
    }

    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
    public void onFailure(int i) {
        e.a.c.a.a.v("EcWifiManager deleteGroup onFailure reason = ", i);
    }

    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
    public void onSuccess() {
        e.e.a.g.a("EcWifiManager deleteGroup success ");
    }
}
