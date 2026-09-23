package f.a.i.i;

/* loaded from: classes.dex */
public class f implements f.a.i.i.q.c {
    public final /* synthetic */ net.easyconn.framework.sdkservice.EasyConnectService a;

    public f(net.easyconn.framework.sdkservice.EasyConnectService easyConnectService) {
        this.a = easyConnectService;
    }

    public void a() {
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.a;
        if (easyConnectService == null) {
            throw null;
        }
        try {
            easyConnectService.f3176f = (net.easyconn.framework.broadcast.BroadcastManager) easyConnectService.initialization("BroadcastManager", android.content.Context.class).newInstance(easyConnectService.b);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("initBroadcastManager initialization fail e = ");
            sbO.append(e2.toString());
            e.e.a.g.a(sbO.toString());
            easyConnectService.f3176f = new net.easyconn.framework.broadcast.BroadcastManager(easyConnectService.b);
        }
        easyConnectService.f3176f.registerAll();
        easyConnectService.f3176f.sendBroadcast(net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_CARCONTROL_REQUEST);
        f.a.i.i.q qVar = easyConnectService.a;
        net.easyconn.framework.broadcast.BroadcastManager broadcastManager = easyConnectService.f3176f;
        f.a.i.i.m mVar = qVar.b;
        if (mVar != null) {
            mVar.p = broadcastManager;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("initEcSdkManager onComplete mBroadcastManagerListener = ");
        sbO2.append(this.a.i);
        e.e.a.g.c(sbO2.toString(), new java.lang.Object[0]);
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService2 = this.a;
        net.easyconn.framework.sdkservice.EasyConnectService.a aVar = easyConnectService2.i;
        if (aVar != null) {
            ((f.a.k.h0) aVar).a();
            this.a.l = true;
        } else {
            easyConnectService2.l = false;
        }
        this.a.k = true;
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService3 = this.a;
        net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager = easyConnectService3.f3174d;
        if (ecWifiManager == null && ecWifiManager == null) {
            easyConnectService3.f3174d = new net.easyconn.framework.sdkservice.EcWifiManager(easyConnectService3.b, easyConnectService3.a);
        }
        net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager2 = this.a.f3174d;
        if (ecWifiManager2 != null) {
            ecWifiManager2.f3179d = ecWifiManager2.f3180e.get() != 0;
            if (ecWifiManager2.f3179d || this.a.f3174d.e() || this.a.f3174d.w) {
                this.a.a.W();
            }
        }
    }
}
