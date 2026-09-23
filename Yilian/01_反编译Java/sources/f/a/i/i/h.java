package f.a.i.i;

/* loaded from: classes.dex */
public class h implements f.a.i.i.s.a {
    public final /* synthetic */ net.easyconn.framework.sdkservice.EasyConnectService a;

    public h(net.easyconn.framework.sdkservice.EasyConnectService easyConnectService) {
        this.a = easyConnectService;
    }

    public void a(android.hardware.usb.UsbDevice usbDevice) {
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.a;
        if (easyConnectService == null) {
            throw null;
        }
        e.e.a.g.a("EasyConnectService openDevice usbDevice = " + usbDevice);
        f.a.i.i.r rVar = easyConnectService.p;
        if (rVar != null) {
            rVar.f2907c = usbDevice;
            e.a.c.a.a.z("[EcUsbAttachManager] start openDevice showBackgroundTip = ", true);
            if (rVar.b.O) {
                e.e.a.g.c("[EcUsbAttachManager] >>error openDevice ecSdkManager.isDeviceOpen() = true, return", new java.lang.Object[0]);
                return;
            }
            boolean zU = rVar.b.U(rVar.f2907c);
            rVar.b.f0(zU);
            rVar.f2909e = zU;
            if (zU) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("[EcUsbAttachManager] openDevice success! Device is ");
                sbO.append(rVar.f2907c);
                e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            } else {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("[EcUsbAttachManager] openDevice failed! Device is ");
                sbO2.append(rVar.f2907c);
                e.e.a.g.c(sbO2.toString(), new java.lang.Object[0]);
            }
        }
    }
}
