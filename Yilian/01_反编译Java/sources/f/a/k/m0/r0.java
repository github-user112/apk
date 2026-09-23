package f.a.k.m0;

/* loaded from: classes.dex */
public class r0 implements f.a.k.k0.c, f.a.i.h.d, f.a.i.h.g, net.easyconn.framework.broadcast.BroadcastManager.d {
    public final f.a.k.k0.d a;
    public final android.os.Handler b;

    /* renamed from: c, reason: collision with root package name */
    public final f.a.i.i.q f3097c;

    /* renamed from: d, reason: collision with root package name */
    public final f.a.i.j.c f3098d;

    /* renamed from: e, reason: collision with root package name */
    public android.content.Context f3099e;
    public net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] h;
    public java.lang.String i;
    public android.os.Bundle j;
    public android.os.Bundle k;
    public int m;
    public boolean p;
    public int q;
    public java.util.concurrent.ExecutorService r;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3100f = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3101g = true;
    public boolean l = false;
    public boolean n = false;
    public boolean o = false;
    public volatile boolean s = false;

    public r0(android.content.Context context, f.a.k.k0.d dVar, android.os.Handler handler, f.a.i.i.q qVar, f.a.i.j.c cVar) {
        this.f3099e = context;
        this.a = dVar;
        dVar.E(this);
        this.b = handler;
        this.f3097c = qVar;
        this.f3098d = cVar;
        ((net.easyconn.framework.sdkservice.EasyConnectService) qVar.a).f3176f.setOnMediaCodecStateRequestListener((f.a.k.l0.p3) dVar);
        ((net.easyconn.framework.sdkservice.EasyConnectService) qVar.a).f3176f.setOnKeyCodeActionListener(this);
    }

    public static /* synthetic */ java.lang.Thread m(java.lang.Runnable runnable) {
        return new java.lang.Thread(runnable, "Mirror_Presenter_Ping_Service");
    }

    public void A(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr) {
        if (eCOTAUpdateSoftwareArr != null) {
            int length = eCOTAUpdateSoftwareArr.length;
            java.lang.String[] strArr = new java.lang.String[length];
            for (int i = 0; i < eCOTAUpdateSoftwareArr.length; i++) {
                strArr[i] = eCOTAUpdateSoftwareArr[i].softwareId;
            }
            this.l = true;
            this.f3097c.n0(strArr, length);
            f.a.i.l.a.x(((net.easyconn.framework.sdkservice.EasyConnectService) this.f3097c.a).getApplication().getApplicationContext());
        }
    }

    @Override // f.a.k.k0.c
    public void B() {
        this.f3101g = false;
        this.f3097c.m = false;
        ((net.easyconn.EcApplication) this.f3099e.getApplicationContext()).executeTask(new java.lang.Runnable() { // from class: f.a.k.m0.l
            @Override // java.lang.Runnable
            public final void run() {
                this.a.v();
            }
        });
        this.a.g();
    }

    @Override // f.a.k.k0.c
    public void H(net.easyconn.ecsdk.ECTypes.ECBtnCode eCBtnCode, net.easyconn.ecsdk.ECTypes.ECBtnEventType eCBtnEventType) {
        this.f3097c.b0(eCBtnCode, eCBtnEventType);
    }

    @Override // f.a.k.k0.c
    public boolean I() {
        int iG = f.a.i.m.g.G(((net.easyconn.framework.sdkservice.EasyConnectService) this.f3097c.a).getApplication().getApplicationContext());
        if (iG == 0) {
            return true;
        }
        if (iG == 1 || iG == 2) {
            return (!f.a.i.m.g.h0(((net.easyconn.framework.sdkservice.EasyConnectService) this.f3097c.a).getApplication().getApplicationContext()) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f.a.i.m.g.f2936c.getProperty("ENABLE_FLOAT_MENU_SYSTEM_HOME", "false"))).booleanValue();
        }
        return iG != 3 ? true : true;
    }

    @Override // f.a.k.k0.c
    public void K(android.content.Context context) {
        e.e.a.g.a("backToDesktop start");
        android.content.Intent intent = new android.content.Intent("android.intent.action.MAIN");
        intent.setFlags(268435456);
        intent.addCategory("android.intent.category.HOME");
        context.startActivity(intent);
        this.f3098d.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 12, "EC_MIRROR_SUCCEED_MENU_HOME");
        e.e.a.g.a("backToDesktop end");
    }

    @Override // f.a.i.h.g
    public void M(int i, java.lang.String str) {
        net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr;
        this.f3097c.m = false;
        this.a.g();
        if (i == -1 || i == -4) {
            this.f3097c.k0();
        }
        if (str == null || (eCOTAUpdateSoftwareArr = this.h) == null) {
            return;
        }
        for (net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware eCOTAUpdateSoftware : eCOTAUpdateSoftwareArr) {
            if (str.equalsIgnoreCase(eCOTAUpdateSoftware.softwareId)) {
                this.a.h(i, eCOTAUpdateSoftware.softwareName);
                return;
            }
        }
    }

    @Override // f.a.k.k0.c
    public int N() {
        return this.f3097c.W;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c4 A[SYNTHETIC] */
    @Override // f.a.i.h.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void S(java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, int r22) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.m0.r0.S(java.lang.String, java.lang.String, java.lang.String, java.lang.String, int):void");
    }

    @Override // f.a.k.k0.c
    public void T(int i, int i2) {
        f.a.i.i.q qVar = this.f3097c;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 32;
        messageObtain.arg1 = i;
        messageObtain.arg2 = i2;
        qVar.r.sendMessage(messageObtain);
    }

    @Override // f.a.k.k0.c
    public boolean U() {
        net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportTypeH = this.f3097c.H();
        return eCTransportTypeH == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_EAP || eCTransportTypeH == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_WIFI_APP || eCTransportTypeH == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_WIFI_AIRPLAY || eCTransportTypeH == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_MUX || eCTransportTypeH == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_AIRPLAY;
    }

    @Override // f.a.k.k0.c
    public void W() {
        if (this.f3097c == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECSDK.getInstance().openAppPage(net.easyconn.ecsdk.ECTypes.ECAppPage.EC_APP_PAGE_MAIN);
        this.f3098d.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 11, "EC_MIRROR_SUCCEED_MENU_EC");
    }

    @Override // f.a.k.k0.c
    public void X(net.easyconn.ecsdk.ECTypes.ECSystemKeyCode eCSystemKeyCode) {
        f.a.i.i.q qVar = this.f3097c;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 27;
        messageObtain.obj = eCSystemKeyCode;
        qVar.r.sendMessage(messageObtain);
    }

    @Override // f.a.i.h.g
    public void c() {
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0204  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(boolean r5, int r6) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.m0.r0.d(boolean, int):void");
    }

    @Override // f.a.k.k0.c
    public void d0(f.a.i.i.x xVar) {
        f.a.i.i.q qVar = this.f3097c;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = xVar;
        messageObtain.what = 7;
        qVar.s.sendMessage(messageObtain);
    }

    public /* synthetic */ void e() {
        this.a.u(false);
    }

    public /* synthetic */ void f() {
        this.a.u(false);
    }

    public /* synthetic */ void g() {
        this.a.u(true);
    }

    public /* synthetic */ void h() {
        this.a.u(false);
    }

    public /* synthetic */ void i() {
        this.a.u(false);
    }

    @Override // f.a.k.k0.c
    public void i0() {
        this.f3097c.k0();
    }

    @Override // f.a.i.h.g
    public void j(java.lang.String str, float f2, int i, int i2) {
        if (str == null || this.h == null) {
            return;
        }
        if (this.l) {
            this.f3097c.m = true;
            this.b.postDelayed(new java.lang.Runnable() { // from class: f.a.k.m0.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.q();
                }
            }, 100L);
            this.l = false;
        }
        for (net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware eCOTAUpdateSoftware : this.h) {
            if (str.equalsIgnoreCase(eCOTAUpdateSoftware.softwareId)) {
                this.a.b(eCOTAUpdateSoftware.softwareName, f2, i, this.m, this.h.length);
                return;
            }
        }
    }

    @Override // f.a.k.k0.c
    public void k(android.content.Context context) {
        ((f.a.k.g0) context).C();
    }

    @Override // f.a.k.k0.c
    public boolean k0() {
        return (!f.a.i.m.g.h0(((net.easyconn.framework.sdkservice.EasyConnectService) this.f3097c.a).getApplication().getApplicationContext()) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f.a.i.m.g.f2936c.getProperty("ENABLE_FLOAT_MENU_LANDSCAPE", "false"))).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    @Override // f.a.k.k0.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean l() {
        /*
            r5 = this;
            f.a.i.i.q r0 = r5.f3097c
            android.content.Context r0 = r0.a
            net.easyconn.framework.sdkservice.EasyConnectService r0 = (net.easyconn.framework.sdkservice.EasyConnectService) r0
            android.app.Application r0 = r0.getApplication()
            android.content.Context r0 = r0.getApplicationContext()
            int r0 = f.a.i.m.g.G(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L37
            if (r0 == r1) goto L24
            r3 = 2
            if (r0 == r3) goto L24
            r3 = 3
            if (r0 == r3) goto L37
            r3 = 4
            if (r0 == r3) goto L37
            f.a.i.i.q r0 = r5.f3097c
            goto L26
        L24:
            f.a.i.i.q r0 = r5.f3097c
        L26:
            android.content.Context r0 = r0.a
            net.easyconn.framework.sdkservice.EasyConnectService r0 = (net.easyconn.framework.sdkservice.EasyConnectService) r0
            android.app.Application r0 = r0.getApplication()
            android.content.Context r0 = r0.getApplicationContext()
            boolean r1 = f.a.i.m.g.w(r0)
            goto L8f
        L37:
            f.a.i.i.q r0 = r5.f3097c
            f.a.i.i.m r3 = r0.b
            net.easyconn.ecsdk.ECTypes$ECTransportType r3 = r3.b()
            net.easyconn.ecsdk.ECTypes$ECTransportType r4 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDROID_USB_ADB
            if (r3 == r4) goto L6e
            f.a.i.i.m r3 = r0.b
            net.easyconn.ecsdk.ECTypes$ECTransportType r3 = r3.b()
            net.easyconn.ecsdk.ECTypes$ECTransportType r4 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDORID_USB_AOA
            if (r3 == r4) goto L6e
            f.a.i.i.m r3 = r0.b
            net.easyconn.ecsdk.ECTypes$ECTransportType r3 = r3.b()
            net.easyconn.ecsdk.ECTypes$ECTransportType r4 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDROID_WIFI
            if (r3 == r4) goto L6e
            f.a.i.i.m r3 = r0.b
            net.easyconn.ecsdk.ECTypes$ECTransportType r3 = r3.b()
            net.easyconn.ecsdk.ECTypes$ECTransportType r4 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_MUX
            if (r3 == r4) goto L6e
            f.a.i.i.m r0 = r0.b
            net.easyconn.ecsdk.ECTypes$ECTransportType r0 = r0.b()
            net.easyconn.ecsdk.ECTypes$ECTransportType r3 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_WIFI_APP
            if (r0 != r3) goto L6c
            goto L6e
        L6c:
            r0 = 0
            goto L6f
        L6e:
            r0 = 1
        L6f:
            if (r0 == 0) goto L8e
            java.util.Properties r0 = f.a.i.m.d.f2935c
            if (r0 != 0) goto L77
        L75:
            r0 = 0
            goto L8b
        L77:
            java.lang.String r3 = "float_show_app_to_front"
            java.lang.String r0 = r0.getProperty(r3)
            boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L75
            if (r3 != 0) goto L75
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Exception -> L75
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Exception -> L75
        L8b:
            if (r0 == 0) goto L8e
            goto L8f
        L8e:
            r1 = 0
        L8f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.m0.r0.l():boolean");
    }

    @Override // f.a.k.k0.c
    public int l0() {
        return this.f3097c.X;
    }

    @Override // f.a.k.k0.c
    public void n() {
        this.f3101g = false;
        this.f3097c.m = false;
        ((net.easyconn.EcApplication) this.f3099e.getApplicationContext()).executeTask(new java.lang.Runnable() { // from class: f.a.k.m0.n
            @Override // java.lang.Runnable
            public final void run() {
                this.a.t();
            }
        });
        this.f3097c.k0();
        this.a.g();
    }

    public void o() throws java.lang.InterruptedException {
        java.lang.String strJ = this.f3097c.J();
        int i = 0;
        while (this.s) {
            try {
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                int iPing = net.easyconn.ecsdk.ECSDK.getInstance().ping(strJ, 250);
                long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis() - jCurrentTimeMillis;
                boolean z = jCurrentTimeMillis2 > ((long) 200);
                if (z) {
                    i++;
                    e.e.a.g.a("Ping ip:" + strJ + " pingTime:" + jCurrentTimeMillis2 + " timeoutCount:" + i);
                } else {
                    i = 0;
                }
                if (i >= 3) {
                    android.os.Handler handler = this.b;
                    final f.a.k.k0.d dVar = this.a;
                    dVar.getClass();
                    handler.post(new java.lang.Runnable() { // from class: f.a.k.m0.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            dVar.w();
                        }
                    });
                    this.f3098d.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 10, "EC_MIRROR_SUCCEED_WIFI_LOW_SPEED_TIP");
                    i = 0;
                }
                if (iPing == -6) {
                    e.e.a.g.a("Ping has no permission");
                    return;
                }
                if (z) {
                    android.os.Handler handler2 = this.b;
                    final f.a.k.k0.d dVar2 = this.a;
                    dVar2.getClass();
                    handler2.postDelayed(new java.lang.Runnable() { // from class: f.a.k.m0.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            dVar2.z();
                        }
                    }, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                }
                java.lang.Thread.sleep(2000L);
            } catch (java.lang.Exception e2) {
                e.e.a.g.c(e.a.c.a.a.I(e2, e.a.c.a.a.r("Ping ip ", strJ, "; Exception: ")), new java.lang.Object[0]);
                return;
            }
        }
    }

    @Override // f.a.k.k0.c
    public void o0(int i, int i2) {
        f.a.i.i.q qVar = this.f3097c;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 33;
        messageObtain.arg1 = i;
        messageObtain.arg2 = i2;
        qVar.r.sendMessage(messageObtain);
    }

    @Override // f.a.c
    public void onDestroy() {
        f.a.i.j.c cVar = this.f3098d;
        if (cVar != null) {
            cVar.g();
        }
        android.content.Context context = this.f3097c.a;
        if (((net.easyconn.framework.sdkservice.EasyConnectService) context).f3176f != null) {
            ((net.easyconn.framework.sdkservice.EasyConnectService) context).f3176f.removeOnMediaCodecStateRequestListener();
            ((net.easyconn.framework.sdkservice.EasyConnectService) this.f3097c.a).f3176f.removeKeyCodeActionListener();
        }
        this.a.E(null);
    }

    @Override // f.a.k.k0.c
    public void onDestroyView() {
        e.e.a.g.a("removeVideoEventListener and removeOTAUpdateListener");
        this.f3097c.a0();
        f.a.i.i.q qVar = this.f3097c;
        f.a.i.i.m mVar = qVar.b;
        if (mVar != null) {
            mVar.q = null;
        }
        qVar.C = null;
    }

    @Override // f.a.i.h.g
    public void onOTAUpdateRequestDownload(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i) {
        this.m = 1;
        this.h = eCOTAUpdateSoftwareArr;
        A(eCOTAUpdateSoftwareArr);
    }

    @Override // f.a.c
    public void onStart() {
    }

    @Override // f.a.k.k0.c
    public void p() {
        d(this.p, this.q);
    }

    @Override // f.a.k.k0.c
    public void p0() {
        this.s = false;
        this.f3097c.o0();
    }

    public /* synthetic */ void q() {
        this.f3097c.o0();
    }

    @Override // f.a.k.k0.c
    public void r(java.lang.String str) {
        f.a.i.i.q qVar = this.f3097c;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 31;
        messageObtain.obj = str;
        qVar.r.sendMessage(messageObtain);
    }

    public void t() {
        ((net.easyconn.framework.sdkservice.EasyConnectService) this.f3097c.a).i();
    }

    @Override // f.a.i.h.g
    public void u(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i, net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr2, int i2) {
        e.a.c.a.a.v("onCheckResult downloadableLength = ", i);
        if (eCOTAUpdateSoftwareArr != null) {
            this.m = 1;
            this.h = eCOTAUpdateSoftwareArr;
            A(eCOTAUpdateSoftwareArr);
        }
    }

    public void v() {
        ((net.easyconn.framework.sdkservice.EasyConnectService) this.f3097c.a).i();
    }

    @Override // f.a.k.k0.c
    public void w(boolean z) {
        if (this.f3097c.T) {
            if (z) {
                this.f3100f = true;
                ((net.easyconn.framework.sdkservice.EasyConnectService) this.f3097c.a).f3176f.sendMirrorPauseBroadcast();
            } else if (this.f3100f) {
                this.f3100f = false;
                ((net.easyconn.framework.sdkservice.EasyConnectService) this.f3097c.a).f3176f.sendMirrorResumeBroadcast();
            }
        }
    }

    public void x(int i) {
        this.f3101g = true;
        this.a.A(false);
        android.os.Handler handler = this.b;
        f.a.k.k0.d dVar = this.a;
        dVar.getClass();
        handler.post(new f.a.k.m0.g(dVar));
        android.os.Handler handler2 = this.b;
        final f.a.k.k0.d dVar2 = this.a;
        dVar2.getClass();
        handler2.post(new java.lang.Runnable() { // from class: f.a.k.m0.b
            @Override // java.lang.Runnable
            public final void run() {
                dVar2.n();
            }
        });
        this.p = false;
        this.q = -1;
        e.a.c.a.a.v(" MirrorPresenter onMirrorDisconnected reason = ", i);
    }

    @Override // f.a.k.k0.c
    public boolean y() {
        f.a.i.i.q qVar = this.f3097c;
        if (qVar != null) {
            return qVar.V;
        }
        return false;
    }
}
