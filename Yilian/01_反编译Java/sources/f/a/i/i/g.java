package f.a.i.i;

/* loaded from: classes.dex */
public class g implements android.content.ServiceConnection {
    public final /* synthetic */ net.easyconn.framework.sdkservice.EasyConnectService a;

    public g(net.easyconn.framework.sdkservice.EasyConnectService easyConnectService) {
        this.a = easyConnectService;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
        e.e.a.g.a("NetLinkService onServiceConnected");
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.a;
        easyConnectService.n = net.easyconn.netlink.service.NetLinkService.this;
        if (easyConnectService.a != null) {
            f.a.i.i.q qVar = this.a.a;
            net.easyconn.framework.sdkservice.EasyConnectService easyConnectService2 = this.a;
            net.easyconn.netlink.service.NetLinkService netLinkService = easyConnectService2.n;
            qVar.R = netLinkService;
            netLinkService.h = null;
            netLinkService.f3208g = qVar;
            boolean z = easyConnectService2.a.Z;
            e.a.c.a.a.z("NetLinkService setAppForground->", z);
            netLinkService.j = z;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(android.content.ComponentName componentName) {
        e.e.a.g.a("NetLinkService onServiceDisconnected");
    }
}
