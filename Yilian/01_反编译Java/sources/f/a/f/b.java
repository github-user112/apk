package f.a.f;

/* loaded from: classes.dex */
public class b implements java.lang.Runnable {
    public final /* synthetic */ f.a.f.a a;

    public b(f.a.f.a aVar) {
        this.a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() throws java.lang.InterruptedException {
        int i = 0;
        while (i < 20) {
            android.net.wifi.WifiInfo connectionInfo = this.a.f2849f.getConnectionInfo();
            if (connectionInfo != null) {
                java.lang.String ssid = connectionInfo.getSSID();
                java.lang.String ipAddress = android.text.format.Formatter.formatIpAddress(connectionInfo.getIpAddress());
                java.lang.StringBuilder sbR = e.a.c.a.a.r("BleNetworkManager onWifiConnected ssid = ", ssid, ", connectApSsid = ");
                sbR.append(this.a.j);
                sbR.append(", ipAddress = ");
                sbR.append(ipAddress);
                e.e.a.g.a(sbR.toString());
                if (android.text.TextUtils.equals(ssid, "\"" + this.a.j + "\"") && !android.text.TextUtils.equals(ipAddress, "0.0.0.0")) {
                    f.a.f.a.c cVar = this.a.f2848e;
                    if (cVar != null) {
                        e.e.a.g.a("EasyConnectService onBleWifiConnected");
                        ((f.a.i.i.j) cVar).a.f(ipAddress);
                    }
                    this.a.h = false;
                    this.a.p = false;
                    return;
                }
            }
            try {
                java.lang.Thread.sleep(500L);
                i++;
                e.a.c.a.a.v("BleNetworkManager onWifiConnected getIP retryCount= ", i);
            } catch (java.lang.InterruptedException e2) {
                throw new java.lang.RuntimeException(e2);
            }
        }
    }
}
