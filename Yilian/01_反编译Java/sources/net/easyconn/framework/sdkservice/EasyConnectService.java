package net.easyconn.framework.sdkservice;

import f.a.i.i.m.e;
import f.a.i.i.q.b;
import f.a.i.i.q.d;

/* loaded from: classes.dex */
public class EasyConnectService extends android.app.Service {
    public volatile f.a.i.i.q a;
    public android.content.Context b;

    /* renamed from: d, reason: collision with root package name */
    public net.easyconn.framework.sdkservice.EcWifiManager f3174d;

    /* renamed from: e, reason: collision with root package name */
    public f.a.i.c.a f3175e;

    /* renamed from: f, reason: collision with root package name */
    public net.easyconn.framework.broadcast.BroadcastManager f3176f;

    /* renamed from: g, reason: collision with root package name */
    public f.a.i.e.a f3177g;
    public net.easyconn.framework.sdkservice.EasyConnectService.c h;
    public net.easyconn.framework.sdkservice.EasyConnectService.a i;
    public f.a.i.p.e j;
    public android.content.ServiceConnection m;
    public net.easyconn.netlink.service.NetLinkService n;
    public f.a.i.i.s o;
    public f.a.i.i.r p;
    public f.a.g.j q;
    public f.a.f.e r;
    public f.a.f.a s;

    /* renamed from: c, reason: collision with root package name */
    public final android.os.IBinder f3173c = new net.easyconn.framework.sdkservice.EasyConnectService.b();
    public volatile boolean k = false;
    public boolean l = false;

    public interface a {
    }

    public class b extends android.os.Binder {
        public b() {
        }
    }

    public class c extends android.content.BroadcastReceiver {
        public c(f.a.i.i.f fVar) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String action = intent.getAction();
            if (e.a.c.a.a.D("EasyConnectService onReceive action = ", action, action)) {
                return;
            }
            android.hardware.usb.UsbDevice usbDevice = (android.hardware.usb.UsbDevice) intent.getParcelableExtra("device");
            e.a.c.a.a.C(e.a.c.a.a.o("EasyConnectService onReceive device is "), usbDevice != null);
            if (usbDevice != null && net.easyconn.framework.sdkservice.EasyConnectService.this.a != null && net.easyconn.framework.sdkservice.EasyConnectService.this.a.P != usbDevice.getVendorId() && net.easyconn.framework.sdkservice.EasyConnectService.this.a.Q != usbDevice.getProductId()) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("EasyConnectService the detached device is not current connected phone! ecSdkManager.getConnectedVendorID() = ");
                sbO.append(net.easyconn.framework.sdkservice.EasyConnectService.this.a.P);
                sbO.append(", device.getVendorId() = ");
                sbO.append(usbDevice.getVendorId());
                sbO.append(", ecSdkManager.getConnectedProductID() = ");
                sbO.append(net.easyconn.framework.sdkservice.EasyConnectService.this.a.Q);
                sbO.append(", device.getProductId() = ");
                sbO.append(usbDevice.getProductId());
                e.e.a.g.a(sbO.toString());
                return;
            }
            char c2 = 65535;
            if (action.hashCode() == -1608292967 && action.equals("android.hardware.usb.action.USB_DEVICE_DETACHED")) {
                c2 = 0;
            }
            if (c2 != 0) {
                return;
            }
            e.e.a.g.a("[EasyConnectService]有USB设备拔出");
            if (net.easyconn.framework.sdkservice.EasyConnectService.this.a != null) {
                net.easyconn.framework.sdkservice.EasyConnectService.this.a.C();
                net.easyconn.framework.sdkservice.EasyConnectService.this.a.f0(false);
            }
        }
    }

    public interface d {
    }

    public java.lang.String a() {
        if (this.f3177g == null) {
            b();
        }
        return this.f3177g.getUuid();
    }

    public void b() {
        try {
            f.a.i.e.a aVar = (f.a.i.e.a) initialization("AbstractLicenseManager", android.content.Context.class).newInstance(this.b);
            this.f3177g = aVar;
            aVar.getUuid();
        } catch (java.lang.Exception e2) {
            e.e.a.g.c(e2.getMessage(), new java.lang.Object[0]);
        }
    }

    public void c() {
        e.e.a.g.a("killNetlinkProcess begin");
        if (f.a.i.m.g.x(this)) {
            f.a.i.p.e eVar = this.j;
            if (eVar != null) {
                eVar.a();
            }
        } else if (this.a != null) {
            this.a.p0(false);
        }
        e.e.a.g.a("killNetlinkProcess end");
    }

    public void d(boolean z) {
        f.a.g.j jVar;
        if (android.os.Build.VERSION.SDK_INT >= 28 && (jVar = this.q) != null) {
            if (jVar == null) {
                throw null;
            }
            e.e.a.g.c("BtHidManager notifyTransportOpen isTransportOpen = " + z, new java.lang.Object[0]);
            jVar.h = z;
            if (z) {
                jVar.a();
            }
        }
    }

    public void e(int i) {
        f.a.g.j jVar;
        if (android.os.Build.VERSION.SDK_INT >= 28 && (jVar = this.q) != null) {
            boolean z = i == 4099;
            if (jVar == null) {
                throw null;
            }
            e.e.a.g.c("BtHidManager setBtHidCheckResult isCorrect = " + z, new java.lang.Object[0]);
            if (z) {
                jVar.o = true;
            } else if (jVar.h && jVar.l == 1) {
                jVar.o = false;
            }
        }
    }

    public void f(java.lang.String str) {
        e.a.c.a.a.w("EasyConnectService openWifiService ip = ", str);
        if (this.a == null || !this.a.j || this.a.T) {
            return;
        }
        e.e.a.g.a("EasyConnectService onBleWifiConnected reOpenWifiService");
        this.a.E();
        this.a.W();
        f.a.i.i.q qVar = this.a;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = str;
        messageObtain.what = 65;
        qVar.r.sendMessage(messageObtain);
    }

    public void g() {
        e.e.a.g.a("startEcWifiChannelScan");
        f.a.i.i.q qVar = this.a;
        if (f.a.i.m.g.F(qVar.a)) {
            java.lang.String property = !f.a.i.m.g.h0(qVar.a) ? "" : f.a.i.m.g.f2936c.getProperty("LIST_NET_CARD_MDNS_PUBLISH");
            boolean zH = f.a.i.m.g.H(qVar.a);
            e.e.a.g.c("listNetCardMdnsPublish = " + property + " , force = " + zH, new java.lang.Object[0]);
            if (android.text.TextUtils.isEmpty(property)) {
                net.easyconn.ecsdk.ECSDK.getInstance().openWiFiService();
            } else {
                net.easyconn.ecsdk.ECSDK.getInstance().openWiFiService(property, zH);
            }
        }
        if (!f.a.i.m.g.s(this.b)) {
            e.e.a.g.a("startEcWifiChannelScan wifi direct not support");
            return;
        }
        if (this.f3174d.f3179d) {
            e.e.a.g.a("startEcWifiChannelScan wifi direct already group formed");
            return;
        }
        net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager = this.f3174d;
        if (f.a.i.m.g.s(ecWifiManager.a)) {
            if (ecWifiManager.i == null) {
                e.e.a.g.a("startP2pSearchForce() wifiManager is null, return");
                return;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("startP2pSearchForce() step1, isWifiEnabled:");
            sbO.append(ecWifiManager.i.isWifiEnabled());
            sbO.append(" mWifiP2pSearching is ");
            sbO.append(ecWifiManager.k);
            sbO.append("; ecSdkManager.isTransportOpen() is ");
            e.a.c.a.a.C(sbO, ecWifiManager.f3182g.T);
            ecWifiManager.q = false;
            if (ecWifiManager.h == null || !ecWifiManager.i.isWifiEnabled() || ecWifiManager.k) {
                return;
            }
            e.e.a.g.a("startP2pSearchForce() step2");
            ecWifiManager.h.discoverPeers(ecWifiManager.j, new f.a.i.i.u(ecWifiManager));
        }
    }

    public void h() {
        e.e.a.g.a("stopEcWifiChannelScan");
        net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager = this.f3174d;
        if (f.a.i.m.g.s(ecWifiManager.a) && ecWifiManager.h != null && ecWifiManager.f3182g.T) {
            e.e.a.g.a("stopP2pSearch(), removeCallbacks p2pScan postDelayed");
            ecWifiManager.t.removeCallbacks(ecWifiManager.u);
            ecWifiManager.h.stopPeerDiscovery(ecWifiManager.j, new f.a.i.i.v(ecWifiManager));
        }
        if (f.a.i.m.g.F(this.a.a)) {
            net.easyconn.ecsdk.ECSDK.getInstance().closeWiFiService();
        }
    }

    public void i() {
        e.e.a.g.a("stopOTAUpdate");
        f.a.i.i.q qVar = this.a;
        if (qVar == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECSDK.getInstance().stopOTAUpdate();
        f.a.i.h.g gVar = qVar.C;
        if (gVar != null) {
            gVar.c();
        }
    }

    @androidx.annotation.Keep
    public java.lang.reflect.Constructor initialization(java.lang.String str, java.lang.Class<?>... clsArr) {
        java.lang.String string = getPackageManager().getServiceInfo(new android.content.ComponentName(this.b, (java.lang.Class<?>) net.easyconn.framework.sdkservice.EasyConnectService.class), 128).metaData.getString(str);
        e.e.a.g.b("initManager mate-data name is %s.", string);
        return java.lang.Class.forName(string).getDeclaredConstructor(clsArr);
    }

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        e.e.a.g.a("onBind()");
        return this.f3173c;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        e.e.a.g.a("EasyConnectService onCreate()");
        this.b = this;
        b();
        this.a = new f.a.i.i.q(this.b);
        f.a.i.i.q qVar = this.a;
        f.a.i.i.f fVar = new f.a.i.i.f(this);
        net.easyconn.ecsdk.ECTypes.ECAuthentication ecAuthentication = this.f3177g.getEcAuthentication();
        if (qVar == null) {
            throw null;
        }
        e.e.a.g.a("sdkmanager init");
        qVar.u = fVar;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("sn = ");
        sbO.append(ecAuthentication.uuid);
        e.e.a.g.a(sbO.toString());
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("EasyConnectService");
        qVar.f2900e = handlerThread;
        handlerThread.start();
        f.a.i.i.q.d dVar = qVar.new d(qVar.f2900e.getLooper());
        qVar.r = dVar;
        f.a.i.i.m mVar = qVar.b;
        mVar.f2894e = dVar;
        android.os.HandlerThread handlerThread2 = new android.os.HandlerThread("EasyconnectPageListThread");
        mVar.f2895f = handlerThread2;
        handlerThread2.start();
        mVar.f2896g = mVar.new e(mVar.f2895f.getLooper());
        android.os.Handler handler = qVar.r;
        handler.sendMessage(handler.obtainMessage(0, ecAuthentication));
        android.os.HandlerThread handlerThread3 = new android.os.HandlerThread("EasyconnectNetworkThread");
        qVar.f2901f = handlerThread3;
        handlerThread3.start();
        qVar.q = qVar.new b(qVar.f2901f.getLooper());
        android.os.HandlerThread handlerThread4 = new android.os.HandlerThread("EasyConnectTouchEventThread");
        qVar.f2902g = handlerThread4;
        handlerThread4.start();
        qVar.s = new f.a.i.i.o(qVar, qVar.f2902g.getLooper());
        android.os.HandlerThread handlerThread5 = new android.os.HandlerThread("EasyConnectServiceForNonProcess");
        qVar.h = handlerThread5;
        handlerThread5.start();
        qVar.t = new f.a.i.i.p(qVar, qVar.h.getLooper());
        try {
            this.f3175e = (f.a.i.c.a) initialization("AbstractEcAudioManager", f.a.i.i.q.class, android.content.Context.class).newInstance(this.a, this.b);
            e.e.a.g.a("initEcAudioManager initialization success");
        } catch (java.lang.Exception e2) {
            e.e.a.g.c(e.a.c.a.a.J(e2, e.a.c.a.a.o("initEcAudioManager initialization fail e = ")), new java.lang.Object[0]);
            this.f3175e = new net.easyconn.framework.ecaudio.StandardEcAudioManager(this.a, this.b);
        }
        this.f3175e.init();
        f.a.i.i.q qVar2 = this.a;
        f.a.i.c.a aVar = this.f3175e;
        f.a.i.i.m mVar2 = qVar2.b;
        if (mVar2 != null) {
            mVar2.o = aVar;
        }
        if (this.f3174d == null) {
            this.f3174d = new net.easyconn.framework.sdkservice.EcWifiManager(this.b, this.a);
        }
        this.h = new net.easyconn.framework.sdkservice.EasyConnectService.c(null);
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
        getApplicationContext().registerReceiver(this.h, intentFilter);
        if (f.a.i.m.g.x(this)) {
            this.j = new f.a.i.p.e(this.b);
            f.a.i.i.q qVar3 = this.a;
            f.a.i.p.e eVar = this.j;
            qVar3.A = eVar;
            eVar.f2980c = qVar3;
        } else if (f.a.i.m.g.y(this)) {
            this.m = new f.a.i.i.g(this);
            bindService(new android.content.Intent(getApplicationContext(), (java.lang.Class<?>) net.easyconn.netlink.service.NetLinkService.class), this.m, 1);
        }
        if (f.a.i.m.g.I(this)) {
            this.o = new f.a.i.i.s(new f.a.i.i.h(this));
            android.content.IntentFilter intentFilter2 = new android.content.IntentFilter();
            intentFilter2.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
            intentFilter2.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
            intentFilter2.addAction(net.easyconn.broadcast.UsbIntentReceiver.ACTION_USB_DEVICE_PERMISSION);
            registerReceiver(this.o, intentFilter2);
            e.e.a.g.a("EasyConnectService initEcUsbAttachManager");
            f.a.i.i.r rVar = new f.a.i.i.r(this);
            this.p = rVar;
            rVar.a(this.a);
        }
        if (f.a.i.m.g.T(this) && android.os.Build.VERSION.SDK_INT >= 28 && this.q == null) {
            f.a.g.j jVar = new f.a.g.j(this);
            this.q = jVar;
            jVar.p = new f.a.i.i.i(this);
        }
        if (f.a.i.m.g.Z(this)) {
            if (android.os.Build.VERSION.SDK_INT < 21) {
                e.e.a.g.a("The current SDK version does not support BLE");
                return;
            }
            if (this.r == null) {
                this.r = new f.a.f.e(this);
            }
            this.r.i = new f.a.i.i.k(this);
            f.a.i.i.q qVar4 = this.a;
            f.a.i.i.l lVar = new f.a.i.i.l(this);
            if (qVar4 == null) {
                throw null;
            }
            e.e.a.g.a("BleAP startBleApService");
            android.os.Handler handler2 = qVar4.r;
            handler2.sendMessage(handler2.obtainMessage(60, lVar));
            if (this.s == null) {
                this.s = new f.a.f.a(this);
            }
            this.s.f2848e = new f.a.i.i.j(this);
        }
    }

    @Override // android.app.Service
    public void onDestroy() throws java.lang.NoSuchFieldException {
        f.a.g.j jVar;
        e.e.a.g.a("EasyConnectService onDestroy()");
        if (this.f3176f != null) {
            if (this.a != null && this.a.H() != net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_MAX) {
                this.f3176f.sendMirrorOutBroadcast();
            }
            this.f3176f.release();
            this.f3176f.unregisterAll();
        }
        net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager = this.f3174d;
        if (ecWifiManager != null) {
            if (f.a.i.m.g.s(ecWifiManager.a) && ecWifiManager.h != null) {
                e.e.a.g.a("stopP2pSearchForce(), removeCallbacks p2pScan postDelayed");
                ecWifiManager.q = true;
                ecWifiManager.t.removeCallbacks(ecWifiManager.u);
                ecWifiManager.h.stopPeerDiscovery(ecWifiManager.j, new f.a.i.i.w(ecWifiManager));
            }
            net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager2 = this.f3174d;
            if (ecWifiManager2.x != null) {
                e.a.c.a.a.C(e.a.c.a.a.o("unregisterReceiver wifiStatusBroadCastReceiver isRegister = "), ecWifiManager2.y);
                if (ecWifiManager2.y) {
                    ecWifiManager2.a.unregisterReceiver(ecWifiManager2.x);
                }
                ecWifiManager2.y = false;
                ecWifiManager2.x = null;
            }
            android.os.Handler handler = ecWifiManager2.t;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        }
        f.a.i.c.a aVar = this.f3175e;
        if (aVar != null) {
            aVar.release();
        }
        e.e.a.g.a("EasyConnectService closeDeviceWithoutUnbindTransportDevice start");
        if (this.a != null) {
            this.a.D();
            this.a.Z();
        }
        e.e.a.g.a("EasyConnectService closeDeviceWithoutUnbindTransportDevice end");
        android.content.ServiceConnection serviceConnection = this.m;
        if (serviceConnection != null) {
            unbindService(serviceConnection);
        }
        if (this.h != null) {
            getApplicationContext().unregisterReceiver(this.h);
        }
        if (f.a.i.m.g.I(this)) {
            f.a.i.i.r rVar = this.p;
            if (rVar != null) {
                rVar.a(null);
                this.p = null;
            }
            f.a.i.i.s sVar = this.o;
            if (sVar != null) {
                unregisterReceiver(sVar);
            }
        }
        if (f.a.i.m.g.T(this) && (jVar = this.q) != null) {
            jVar.l(false);
            f.a.g.j.d dVar = jVar.f2863c;
            if (dVar != null) {
                dVar.removeCallbacksAndMessages(null);
            }
            f.a.g.j.b bVar = jVar.f2864d;
            if (bVar != null) {
                jVar.b.unregisterReceiver(bVar);
                jVar.f2864d = null;
            }
            f.a.g.h hVar = jVar.a;
            if (hVar != null) {
                hVar.e();
                hVar.j = false;
                hVar.k = false;
                hVar.i = null;
                hVar.f2861f = null;
                hVar.f2860e = null;
            }
            this.q = null;
        }
        f.a.f.a aVar2 = this.s;
        if (aVar2 != null) {
            aVar2.f2847d.removeCallbacksAndMessages(null);
            aVar2.f2848e = null;
            aVar2.l();
            e.e.a.g.a("BleNetworkManager unRegisterReceiver()");
            if (aVar2.r != null) {
                aVar2.f2846c.getApplicationContext().unregisterReceiver(aVar2.r);
            }
            this.s = null;
        }
        f.a.f.e eVar = this.r;
        if (eVar != null) {
            eVar.b.removeCallbacksAndMessages(null);
            this.r = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int i, int i2) {
        e.e.a.g.a("onStartCommand()");
        return 1;
    }

    @Override // android.app.Service
    public boolean onUnbind(android.content.Intent intent) {
        e.e.a.g.a("onUnbind()");
        return super.onUnbind(intent);
    }
}
