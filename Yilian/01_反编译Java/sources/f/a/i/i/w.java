package f.a.i.i;

/* loaded from: classes.dex */
public class w implements android.net.wifi.p2p.WifiP2pManager.ActionListener {
    public w(net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager) {
    }

    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
    public void onFailure(int i) {
        e.a.c.a.a.v("force stop discover peers fail, reason is ", i);
    }

    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
    public void onSuccess() {
        e.e.a.g.a("force stop discover peers success ");
    }
}
