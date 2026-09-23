package f.a.k;

/* loaded from: classes.dex */
public class g0 extends d.b.k.h implements f.a.i.h.e, f.a.k.e0, f.a.k.f0, f.a.i.h.h, net.easyconn.framework.broadcast.BroadcastManager.c {
    public boolean B;
    public f.a.k.j0 C;
    public int G;
    public android.util.DisplayMetrics H;
    public boolean K;
    public boolean L;
    public boolean M;
    public f.a.i.m.i P;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f3029c;

    /* renamed from: d, reason: collision with root package name */
    public d.j.d.y f3030d;

    /* renamed from: e, reason: collision with root package name */
    public android.widget.RelativeLayout f3031e;

    /* renamed from: f, reason: collision with root package name */
    public f.a.k.l0.a4 f3032f;

    /* renamed from: g, reason: collision with root package name */
    public f.a.k.l0.v3 f3033g;
    public f.a.k.m0.v0 h;
    public f.a.k.m0.t0 i;
    public androidx.fragment.app.Fragment j;
    public f.a.k.m0.r0 k;
    public f.a.k.m0.u0 l;
    public androidx.fragment.app.Fragment m;
    public androidx.fragment.app.Fragment n;
    public androidx.fragment.app.Fragment o;
    public androidx.fragment.app.Fragment p;
    public androidx.fragment.app.Fragment q;
    public androidx.fragment.app.Fragment r;
    public f.a.i.i.q s;
    public net.easyconn.framework.sdkservice.EasyConnectService t;
    public f.a.i.j.c u;
    public android.widget.ImageView w;
    public android.widget.ImageView x;
    public android.widget.TextView y;
    public android.os.Handler v = new android.os.Handler();
    public volatile boolean z = false;
    public boolean A = false;
    public android.content.Intent D = null;
    public android.content.Intent F = null;
    public boolean I = false;
    public boolean J = false;
    public android.content.ServiceConnection N = new f.a.k.g0.a();
    public f.a.k.d0 O = new f.a.k.g0.b();
    public boolean Q = false;
    public boolean R = false;

    public class a implements android.content.ServiceConnection {
        public a() {
        }

        public void a(android.os.IBinder iBinder, android.content.ComponentName componentName) {
            f.a.k.g0 g0Var = f.a.k.g0.this;
            g0Var.t = net.easyconn.framework.sdkservice.EasyConnectService.this;
            g0Var.k0();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(final android.content.ComponentName componentName, final android.os.IBinder iBinder) {
            e.e.a.g.a("[SdkService] ServiceConnection");
            ((net.easyconn.EcApplication) f.a.k.g0.this.getApplication()).executeTask(new java.lang.Runnable() { // from class: f.a.k.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(iBinder, componentName);
                }
            });
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(android.content.ComponentName componentName) {
            e.e.a.g.a("[SdkService] onServiceDisconnected");
        }
    }

    public class b extends f.a.k.d0 {
        public b() {
        }

        @Override // f.a.k.d0
        public void a(android.view.View view) {
            switch (view.getId()) {
                case net.easyconn.R.id.btn_main_exit /* 2131296375 */:
                    f.a.k.g0.this.l0();
                    break;
                case net.easyconn.R.id.btn_main_help /* 2131296376 */:
                    f.a.k.g0.this.u0();
                    f.a.i.j.c cVar = f.a.k.g0.this.u;
                    if (cVar != null) {
                        cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 3, "EC_MAIN_TO_ABOUT");
                        break;
                    }
                    break;
            }
        }
    }

    public void A() {
        if (this.P == null) {
            e.e.a.g.c(" resReplaceFactory == null return!!", new java.lang.Object[0]);
            return;
        }
        e.e.a.g.a("MainActivity doReplaceRes");
        f.a.i.m.i iVar = this.P;
        android.content.Context context = this.f3029c;
        java.util.Iterator<f.a.i.m.k> it = iVar.f2944e.iterator();
        while (it.hasNext()) {
            it.next().a(context.getApplicationContext());
        }
    }

    public synchronized void A0() {
        if (this.n == null) {
            this.n = new f.a.k.l0.c4();
        }
        w0(this.n);
    }

    public java.lang.String B(net.easyconn.ecsdk.ECTypes.ECQRInfo eCQRInfo) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("==>** getQrInfoUrl : ");
        sbO.append(eCQRInfo.toString());
        e.e.a.g.a(sbO.toString());
        if (this.s == null) {
            return "";
        }
        e.e.a.g.a("==>** getQrInfoUrl : has ecSdkManager");
        if (this.s == null) {
            throw null;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("==>**ECSDK.getInstance().generateQRCodeUrl(info) info is ");
        sbO2.append(eCQRInfo.toString());
        e.e.a.g.a(sbO2.toString());
        java.lang.String strGenerateQRCodeUrl = net.easyconn.ecsdk.ECSDK.getInstance().generateQRCodeUrl(eCQRInfo);
        e.a.c.a.a.w("==>**ECSDK.getInstance().generateQRCodeUrl(info) url is ", strGenerateQRCodeUrl);
        return strGenerateQRCodeUrl;
    }

    public void B0() {
        android.os.Handler handler;
        if (this.f3032f == null || !this.J || (handler = this.v) == null) {
            return;
        }
        handler.post(new java.lang.Runnable() { // from class: f.a.k.g
            @Override // java.lang.Runnable
            public final void run() {
                this.a.g0();
            }
        });
        this.v.postAtTime(new java.lang.Runnable() { // from class: f.a.k.u
            @Override // java.lang.Runnable
            public final void run() {
                this.a.h0();
            }
        }, android.os.SystemClock.uptimeMillis() + 10000);
    }

    public void C() {
        android.os.Handler handler;
        final android.widget.RelativeLayout relativeLayout = (android.widget.RelativeLayout) findViewById(net.easyconn.R.id.layout_loading_mask);
        if (relativeLayout != null && relativeLayout.getVisibility() == 0) {
            e.e.a.g.a("onFirstFrame hide mask");
            if (!this.J || (handler = this.v) == null) {
                return;
            }
            handler.post(new java.lang.Runnable() { // from class: f.a.k.f
                @Override // java.lang.Runnable
                public final void run() {
                    relativeLayout.setVisibility(8);
                }
            });
        }
    }

    public void D() {
        int iG = f.a.i.m.g.G(this);
        e.a.c.a.a.v("hideStatusNaviBar flavor is ", iG);
        if (iG == 0 || iG == 4 || iG == 3) {
            java.util.Properties properties = f.a.i.m.d.f2935c;
            boolean zBooleanValue = true;
            if (properties != null) {
                java.lang.String property = properties.getProperty("fullScreen");
                try {
                    if (!android.text.TextUtils.isEmpty(property)) {
                        zBooleanValue = java.lang.Boolean.valueOf(property).booleanValue();
                    }
                } catch (java.lang.Exception unused) {
                }
            }
            e.a.c.a.a.z("hideStatusNaviBar fullScreen is ", zBooleanValue);
            if (!zBooleanValue) {
                return;
            }
        }
        getWindow().getDecorView().setSystemUiVisibility(5638);
    }

    public void E() {
        f.a.k.m0.v0 v0Var;
        if (this.f3032f == null) {
            if (f.a.i.m.g.e(this.f3029c)) {
                this.f3032f = new f.a.k.l0.b4();
                v0Var = new f.a.k.m0.s0(this.f3032f, new android.os.Handler(), this.u);
            } else {
                this.f3032f = new f.a.k.l0.a4();
                v0Var = new f.a.k.m0.v0(this.f3032f, new android.os.Handler(), this.u);
            }
            this.h = v0Var;
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("initStatusTipFragment easyConnectService = ");
        sbO.append(this.t);
        e.e.a.g.a(sbO.toString());
        if (this.t != null && f.a.i.m.g.e(getApplicationContext()) && f.a.i.m.g.s(getApplicationContext())) {
            if (f.a.i.m.g.g(getApplicationContext()) || f.a.i.m.g.a) {
                e.e.a.g.a("MainActivity initStatusTipFragment setWlanDeviceShow");
                net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager = this.t.f3174d;
                b0(ecWifiManager.n, ecWifiManager.o);
            }
        }
    }

    public boolean F() {
        return false;
    }

    public boolean G() {
        return false;
    }

    public boolean H() {
        return false;
    }

    public boolean I() {
        java.lang.String str;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("currentIntent=");
        sbO.append(this.D);
        e.e.a.g.a(sbO.toString());
        android.content.Intent intent = this.D;
        if (intent == null) {
            str = "isLaunchByUSBAttached intent is null";
        } else {
            if (intent.getAction() != null) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("isLaunchByUSBAttached intent action = ");
                sbO2.append(intent.getAction());
                e.e.a.g.a(sbO2.toString());
                return "android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(intent.getAction());
            }
            str = "isLaunchByUSBAttached intent action is null";
        }
        e.e.a.g.a(str);
        return false;
    }

    public boolean J() {
        return false;
    }

    public void K() {
        e.e.a.g.a("MainActivity killEasyConnect()");
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.t;
        if (easyConnectService != null) {
            easyConnectService.c();
            f.a.i.c.a aVar = this.t.f3175e;
            if (aVar != null) {
                aVar.unRegisterListener();
            }
            net.easyconn.framework.broadcast.BroadcastManager broadcastManager = this.t.f3176f;
            if (broadcastManager != null) {
                broadcastManager.removeBroadcastListener();
            }
            net.easyconn.framework.sdkservice.EasyConnectService easyConnectService2 = this.t;
            if (easyConnectService2 == null) {
                throw null;
            }
            e.e.a.g.a("removeBroadcastManagerListener");
            easyConnectService2.i = null;
            net.easyconn.framework.sdkservice.EasyConnectService easyConnectService3 = this.t;
            if (easyConnectService3 == null) {
                throw null;
            }
            e.e.a.g.a("removeWifiStateListener");
            easyConnectService3.f3174d.g(null);
        }
        if (this.B) {
            e.e.a.g.a("MainActivity killEasyConnect() unbindService");
            unbindService(this.N);
            this.B = false;
        }
        androidx.fragment.app.Fragment fragment = this.j;
        if (fragment != null) {
            f.a.k.l0.p3 p3Var = (f.a.k.l0.p3) fragment;
            if (p3Var.f3076f != null) {
                p3Var.f3076f.close();
                p3Var.f3076f = null;
            }
        }
        if (this.u != null) {
            net.easyconn.EcApplication.getInstance().executeTask(new java.lang.Runnable() { // from class: f.a.k.v
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Q();
                }
            });
        }
        finish();
        getApplication().onTerminate();
    }

    public void L() {
        z0();
        if (f.a.i.m.g.a) {
            f.a.k.l0.v3 v3Var = this.f3033g;
            if (v3Var != null && v3Var == null) {
                throw null;
            }
            return;
        }
        f.a.k.l0.a4 a4Var = this.f3032f;
        if (a4Var != null) {
            a4Var.h0();
        }
    }

    public /* synthetic */ void M() {
        z0();
        if (f.a.i.m.g.a) {
            this.i.onLicenseAuthFail(-101, getString(net.easyconn.R.string.unexpected_uuid));
        } else {
            this.h.onLicenseAuthFail(-101, getString(net.easyconn.R.string.unexpected_uuid));
        }
    }

    public void N(java.lang.String str) {
        android.widget.TextView textView;
        androidx.fragment.app.Fragment fragment = this.r;
        if (fragment == null || !(fragment instanceof f.a.k.l0.q3)) {
            return;
        }
        f.a.k.l0.q3 q3Var = (f.a.k.l0.q3) fragment;
        if (str == null || (textView = q3Var.d0) == null) {
            return;
        }
        textView.setText(java.lang.String.format(q3Var.getString(net.easyconn.R.string.device_sn), str));
    }

    public /* synthetic */ void P() {
        this.u.f();
        this.u.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 0, "EC_ICON_CLICK");
    }

    public /* synthetic */ void Q() {
        this.u.h();
        this.u = null;
    }

    public /* synthetic */ void R() {
        this.t.g();
    }

    public void S() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("mirrorConnectionOpen goto now isForeground = ");
        sbO.append(net.easyconn.EcApplication.isForeground);
        sbO.append(" isMirrorConnectionOpen = ");
        e.a.c.a.a.C(sbO, this.s.V);
        if (net.easyconn.EcApplication.isForeground && this.s.V) {
            x0();
        }
    }

    public /* synthetic */ void T() {
        e.e.a.g.a("mirrorConnectionOpen goto executeTaskDelay");
        this.s.r0(this.u.e());
        this.u.c();
        this.t.h();
    }

    public /* synthetic */ void U() {
        this.u.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 53, "EC_HU_BACK");
    }

    public void V() {
        f.a.i.i.q qVar = this.s;
        net.easyconn.ecsdk.ECTypes.ECSystemKeyCode eCSystemKeyCode = net.easyconn.ecsdk.ECTypes.ECSystemKeyCode.EC_SYSTEM_KEYCODE_BACK;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 27;
        messageObtain.obj = eCSystemKeyCode;
        qVar.r.sendMessage(messageObtain);
    }

    public /* synthetic */ void W() {
        this.s.b0(net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_APP_BACK, net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK);
    }

    public /* synthetic */ void X() {
        this.u.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 1, "EC_HU_BACK_QUIT");
    }

    public /* synthetic */ void Y() {
        this.u.h();
        this.u = null;
    }

    @Override // f.a.k.f0
    public void a() {
        android.widget.ImageView imageView = this.w;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    public /* synthetic */ void a0() {
        E();
        e.e.a.g.a("Get EcSdkManager Instance. runOnUiThread begin");
        if (!y() && this.r == null && !x()) {
            z0();
        }
        if (f.a.i.m.g.a) {
            f.a.k.m0.t0 t0Var = this.i;
            if (t0Var != null) {
                t0Var.q0(getApplicationContext(), this.s);
                return;
            }
            return;
        }
        f.a.k.m0.v0 v0Var = this.h;
        if (v0Var != null) {
            v0Var.q0(getApplicationContext(), this.s);
        }
    }

    @Override // f.a.k.e0
    public void c() {
        if (this.r instanceof f.a.k.l0.p3) {
            return;
        }
        z0();
        f.a.k.l0.a4 a4Var = this.f3032f;
        if (a4Var != null) {
            a4Var.e();
        }
    }

    @Override // f.a.k.e0
    public void e() {
        u0();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001b A[PHI: r0
  0x001b: PHI (r0v1 java.io.File) = (r0v0 java.io.File), (r0v4 java.io.File) binds: [B:3:0x000b, B:6:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e0() throws java.lang.Throwable {
        /*
            r2 = this;
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "/etc/ec_logo.png"
            r0.<init>(r1)
            boolean r1 = r0.exists()
            if (r1 == 0) goto Le
            goto L1b
        Le:
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "/sdcard/easyconn/ec_logo.png"
            r0.<init>(r1)
            boolean r1 = r0.exists()
            if (r1 == 0) goto L20
        L1b:
            android.graphics.Bitmap r0 = d.s.y.G(r0)
            goto L21
        L20:
            r0 = 0
        L21:
            f.a.k.l r1 = new f.a.k.l
            r1.<init>()
            r2.runOnUiThread(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.g0.e0():void");
    }

    @Override // f.a.k.f0
    public void f() {
        android.widget.ImageView imageView = this.w;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }

    public /* synthetic */ void f0() {
        e.e.a.g.a("showWelcomeView postDelayed end");
        this.f3031e.setVisibility(8);
    }

    @Override // f.a.k.e0
    public void g() {
        if (this.z) {
            x0();
            return;
        }
        if (x()) {
            return;
        }
        z0();
        f.a.k.l0.a4 a4Var = this.f3032f;
        if (a4Var != null) {
            a4Var.e();
        }
    }

    public /* synthetic */ void g0() {
        this.f3032f.t();
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public java.lang.Object getSystemService(java.lang.String str) {
        e.a.c.a.a.w("MainActivity getSystemService = ", str);
        return (this.R || "window".equals(str) || "search".equals(str) || "layout_inflater".equals(str)) ? super.getSystemService(str) : getApplicationContext().getSystemService(str);
    }

    @Override // f.a.k.e0
    public void h() {
        f.a.i.j.c cVar = this.u;
        if (cVar != null) {
            cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 30, "EC_QR_CODE_PAGE_BACK");
        }
        z0();
    }

    public /* synthetic */ void h0() {
        f.a.k.l0.a4 a4Var = this.f3032f;
        if (a4Var != null) {
            a4Var.e();
            this.f3032f.q();
            this.f3032f.I();
        }
    }

    @Override // f.a.k.e0
    public void i() {
        n0();
    }

    public boolean i0(int i) {
        android.os.Handler handler;
        android.os.Handler handler2;
        e.a.c.a.a.v("mirrorConnection Disconnected, reason is ", i);
        this.z = false;
        net.easyconn.EcApplication.isCurrentMirrorChannelOpen = false;
        this.s.M();
        if (this.r instanceof f.a.k.l0.p3) {
            if (this.J && (handler2 = this.v) != null) {
                handler2.post(new f.a.k.b0(this));
            }
            if (i == 3) {
                if (this.J && (handler = this.v) != null) {
                    handler.post(new f.a.k.c0(this));
                }
                return false;
            }
        }
        ((net.easyconn.EcApplication) getApplication()).executeTaskDelay(new java.lang.Runnable() { // from class: f.a.k.h
            @Override // java.lang.Runnable
            public final void run() {
                this.a.R();
            }
        }, 1000L);
        if (this.s.H() == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING) {
            this.s.r.sendEmptyMessage(35);
        }
        return false;
    }

    @Override // f.a.k.f0
    public void j() {
        android.widget.ImageView imageView = this.x;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }

    public void j0() {
        android.os.Handler handler;
        e.e.a.g.a("onAppExit");
        this.z = false;
        net.easyconn.EcApplication.isCurrentMirrorChannelOpen = false;
        this.s.M();
        if (!this.J || (handler = this.v) == null) {
            return;
        }
        handler.post(new f.a.k.c0(this));
    }

    public void k0() {
        f.a.i.h.c cVar;
        java.lang.String str;
        this.t.f3174d.g(new f.a.k.i0(this));
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.t;
        f.a.k.h0 h0Var = new f.a.k.h0(this);
        if (easyConnectService == null) {
            throw null;
        }
        e.e.a.g.a("setBroadcastManagerListener broadcastManagerListener = " + h0Var);
        easyConnectService.i = h0Var;
        if (easyConnectService.k && !easyConnectService.l) {
            ((f.a.k.h0) easyConnectService.i).a();
            e.e.a.g.a("setBroadcastManagerListener execute OnInitComplete");
        }
        this.t.f3175e.setmPermissionRequestListener(this);
        this.s = this.t.a;
        if (net.easyconn.EcApplication.isForeground) {
            this.s.e0(true);
        }
        android.content.Intent intent = getIntent();
        android.content.Intent intent2 = this.F;
        if (intent2 != null) {
            this.F = null;
            intent = intent2;
        }
        this.C.d(intent, this.s);
        if (!f.a.i.m.g.a ? (cVar = this.h) != null : (cVar = this.i) != null) {
            this.s.h0(cVar);
        }
        f.a.i.i.q qVar = this.s;
        qVar.L = this;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("EcSdkManager setMirrorStateListener, iMirrorStateListener is ");
        sbO.append(qVar.L);
        sbO.append(" this.managerClass.hashCode = ");
        sbO.append(qVar.hashCode());
        e.e.a.g.a(sbO.toString());
        e.e.a.g.a("EcSdkManager sdkCallBack = " + qVar.b);
        f.a.i.i.m mVar = qVar.b;
        if (mVar != null) {
            e.e.a.g.a("EcCallBack setMirrorStateListener = " + this);
            mVar.F = this;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("EcSdkManager sdkQtCallBack = ");
        sbO2.append(qVar.b);
        e.e.a.g.a(sbO2.toString());
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Get EcSdkManager Instance. ecSdkManager.isMirrorConnectionOpen() is ");
        e.a.c.a.a.C(sb, this.s.V);
        if (this.s.V) {
            runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.x0();
                }
            });
        } else if (this.s.k) {
            B0();
        } else if (!this.s.l) {
            e.e.a.g.a("onEasyconnServiceConnected easyConnectService.startEcWifiChannelScan");
            this.t.g();
            android.hardware.usb.UsbManager usbManager = (android.hardware.usb.UsbManager) getSystemService("usb");
            java.util.HashMap<java.lang.String, android.hardware.usb.UsbDevice> deviceList = usbManager.getDeviceList();
            android.util.SparseIntArray deviceFilterMap = net.easyconn.EcApplication.getInstance().getDeviceFilterMap();
            e.e.a.g.b("device list size = %d, device filter size = %d", java.lang.Integer.valueOf(deviceList.size()), java.lang.Integer.valueOf(deviceFilterMap.size()));
            for (android.hardware.usb.UsbDevice usbDevice : deviceList.values()) {
                e.e.a.g.a("device=" + usbDevice);
                java.lang.String strE0 = f.a.i.m.g.e0(getApplicationContext());
                if (!android.text.TextUtils.isEmpty(strE0) && usbDevice.getDeviceName().contains(strE0)) {
                    str = "[MainActivity]device filter";
                } else if (F()) {
                    str = "[MainActivity]device filter2";
                } else if (deviceFilterMap.get(usbDevice.getVendorId(), -1) < 0) {
                    str = "[MainActivity]device not in deviceFilterMap";
                } else if (usbDevice.getInterfaceCount() == 1 && usbDevice.getInterface(0).getInterfaceClass() == 8) {
                    str = "the attached usb device is Mass Storage Device";
                } else if (usbManager.hasPermission(usbDevice)) {
                    e.e.a.g.a("[MainActivity] hasPermission true");
                    if (f.a.i.m.g.I(this)) {
                        e.e.a.g.a("onOpenDevice return");
                    } else {
                        f.a.k.j0 j0Var = this.C;
                        if (j0Var != null) {
                            j0Var.f3036d = usbDevice;
                            j0Var.c();
                        }
                    }
                } else {
                    e.e.a.g.a("[MainActivity] hasPermission false");
                    if (m0()) {
                        break;
                    } else {
                        runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.a.L();
                            }
                        });
                    }
                }
                e.e.a.g.a(str);
            }
        } else if (f.a.i.m.g.a) {
            f.a.k.m0.t0 t0Var = this.i;
            f.a.i.i.q qVar2 = this.s;
            t0Var.onLicenseAuthFail(qVar2.o, qVar2.p);
        } else {
            f.a.k.m0.v0 v0Var = this.h;
            f.a.i.i.q qVar3 = this.s;
            v0Var.onLicenseAuthFail(qVar3.o, qVar3.p);
        }
        if (this.s != null) {
            runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.x
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Z();
                }
            });
        }
        final java.lang.String strA = this.t.a();
        if (strA == null || android.text.TextUtils.isEmpty(strA)) {
            runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.M();
                }
            });
        } else if (!f.a.i.m.g.n(this.f3029c)) {
            runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.p
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.N(strA);
                }
            });
        }
        runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.r
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a0();
            }
        });
        if (this.t.f3174d.b) {
            f.a.i.j.c cVar2 = this.u;
            java.lang.String strA2 = this.t.a();
            if (cVar2 == null) {
                throw null;
            }
            e.e.a.g.a("postStatsInfo");
            f.a.i.j.c.i = strA2;
            cVar2.f2922e.execute(new f.a.i.j.d(cVar2));
        }
        this.K = this.t.f3174d.f3178c;
        this.L = this.t.f3174d.f3178c && this.t.f3174d.e();
        this.M = this.t.f3174d.w;
    }

    @Override // f.a.k.e0
    public void l() {
        A0();
        this.u.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 2, "EC_MAIN_WIFI_HELP_CLICK");
    }

    public void l0() {
        f.a.i.j.c cVar;
        int i;
        java.lang.String str;
        e.e.a.g.a("MainActivity onMainExitSingleClick()");
        if (this.x.getVisibility() != 0) {
            cVar = this.u;
            if (cVar != null) {
                i = 21;
                str = "EC_CONNECT_FAILED_BACK";
                cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, i, str);
            }
        } else {
            cVar = this.u;
            if (cVar != null) {
                i = 4;
                str = "EC_MAIN_BACK_BTN";
                cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, i, str);
            }
        }
        K();
    }

    @Override // f.a.k.e0
    public void m() {
        v0();
    }

    public boolean m0() {
        return false;
    }

    @Override // f.a.k.e0
    public void n() {
        z0();
        this.u.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 6, "EC_WIFI_HELP_BACK");
    }

    public void n0() {
        f.a.i.j.c cVar = this.u;
        if (cVar != null) {
            cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 45, "EC_ABOUT_BACK");
        }
        if (this.z) {
            x0();
            return;
        }
        z0();
        f.a.k.l0.a4 a4Var = this.f3032f;
        if (a4Var != null) {
            a4Var.e();
        }
    }

    @Override // f.a.k.f0
    public void o() {
        android.widget.ImageView imageView = this.x;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    public void o0(boolean z) {
        e.e.a.g.a("sendQrLinkBroadcast begin");
        net.easyconn.framework.broadcast.BroadcastManager.sendQrLinkBroadcast(getApplicationContext(), z);
        e.e.a.g.a("sendQrLinkBroadcast end");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002c  */
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBackPressed() {
        /*
            r4 = this;
            java.lang.String r0 = "MainActivity onBackPressed()"
            e.e.a.g.a(r0)
            android.app.Application r0 = r4.getApplication()
            net.easyconn.EcApplication r0 = (net.easyconn.EcApplication) r0
            f.a.k.o r1 = new f.a.k.o
            r1.<init>()
            r0.executeTask(r1)
            androidx.fragment.app.Fragment r0 = r4.r
            boolean r1 = r0 instanceof f.a.k.l0.h3
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1f
            r4.z0()
            goto L26
        L1f:
            boolean r0 = r0 instanceof f.a.k.l0.g3
            if (r0 == 0) goto L28
            r4.n0()
        L26:
            r0 = 1
            goto L29
        L28:
            r0 = 0
        L29:
            if (r0 == 0) goto L2c
            return
        L2c:
            androidx.fragment.app.Fragment r0 = r4.r
            boolean r0 = r0 instanceof f.a.k.l0.p3
            if (r0 == 0) goto L57
            int r0 = r4.G
            net.easyconn.ecsdk.ECTypes$ECStatusMessage r1 = net.easyconn.ecsdk.ECTypes.ECStatusMessage.EC_STATUS_MESSAGE_APP_BACKGROUND_SAME
            int r1 = r1.getValue()
            if (r0 != r1) goto L48
            android.app.Application r0 = r4.getApplication()
            net.easyconn.EcApplication r0 = (net.easyconn.EcApplication) r0
            f.a.k.t r1 = new f.a.k.t
            r1.<init>()
            goto L53
        L48:
            android.app.Application r0 = r4.getApplication()
            net.easyconn.EcApplication r0 = (net.easyconn.EcApplication) r0
            f.a.k.m r1 = new f.a.k.m
            r1.<init>()
        L53:
            r0.executeTask(r1)
            return
        L57:
            boolean r0 = r4.Q
            if (r0 != 0) goto L79
            r4.Q = r2
            android.app.Application r0 = r4.getApplication()
            net.easyconn.EcApplication r0 = (net.easyconn.EcApplication) r0
            f.a.k.w r1 = new f.a.k.w
            r1.<init>()
            r0.executeTask(r1)
            r4.z = r3
            net.easyconn.EcApplication.isCurrentMirrorChannelOpen = r3
            f.a.i.i.q r0 = r4.s
            if (r0 == 0) goto L76
            r0.M()
        L76:
            r4.K()
        L79:
            super.onBackPressed()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.g0.onBackPressed():void");
    }

    @Override // d.b.k.h, d.j.d.l, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.pm.PackageManager.NameNotFoundException, java.lang.IllegalArgumentException {
        super.onConfigurationChanged(configuration);
        if (f.a.i.m.g.u(getApplicationContext())) {
            e.e.a.g.a("MainActivity onConfigurationChanged doReplaceRes");
            net.easyconn.EcApplication.getInstance().setDayNightTheme(net.easyconn.EcApplication.getInstance().notifyIsDayTheme(configuration));
            A();
        }
        int i = configuration.orientation;
        if (f.a.i.m.g.q == i) {
            e.e.a.g.a("onConfigurationChanged, but same orientation, return it");
            return;
        }
        if (i == 2 || i == 1) {
            e.a.c.a.a.v("onConfigurationChanged:", i);
            f.a.i.i.q qVar = this.s;
            if (qVar != null) {
                qVar.i0(true);
            }
            if (f.a.i.m.g.q != i) {
                f.a.i.m.g.q = i;
            }
            onWindowFocusChanged(true);
            androidx.fragment.app.Fragment fragment = this.j;
            if (fragment != null) {
                ((f.a.k.l0.p3) fragment).h0();
            }
            java.util.List<androidx.fragment.app.Fragment> listJ = this.f3030d.J();
            d.j.d.y yVar = this.f3030d;
            if (yVar == null) {
                throw null;
            }
            d.j.d.a aVar = new d.j.d.a(yVar);
            for (androidx.fragment.app.Fragment fragment2 : listJ) {
                d.j.d.y yVar2 = fragment2.mFragmentManager;
                if (yVar2 != null && yVar2 != aVar.q) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("Cannot remove Fragment attached to a different FragmentManager. Fragment ");
                    sbO.append(fragment2.toString());
                    sbO.append(" is already attached to a FragmentManager.");
                    throw new java.lang.IllegalStateException(sbO.toString());
                }
                aVar.b(new d.j.d.g0.a(3, fragment2));
            }
            aVar.c();
            listJ.clear();
            this.f3032f = null;
            this.f3033g = null;
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.m = null;
            this.n = null;
            this.o = null;
            this.p = null;
            androidx.fragment.app.Fragment fragment3 = this.r;
            this.r = null;
            f.a.i.i.q qVar2 = this.s;
            if (qVar2 == null) {
                e.e.a.g.c("showNowFragment ecSdkManager is null", new java.lang.Object[0]);
                return;
            }
            e.e.a.g.a("closeMirrorConnection begin");
            qVar2.V = false;
            net.easyconn.ecsdk.ECSDK.getInstance().closeMirrorConnection();
            e.e.a.g.a("closeMirrorConnection end");
            f.a.i.i.q qVar3 = this.s;
            qVar3.V(qVar3.H());
            if (fragment3 != null) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("old mCurrentFragment：");
                sbO2.append(fragment3.getClass());
                e.e.a.g.a(sbO2.toString());
                if (!(fragment3 instanceof f.a.k.l0.a4) && !(fragment3 instanceof f.a.k.l0.v3)) {
                    if (fragment3 instanceof f.a.k.l0.p3) {
                        return;
                    }
                    if (fragment3 instanceof f.a.k.l0.h3) {
                        v0();
                        return;
                    }
                    if (fragment3 instanceof f.a.k.l0.c4) {
                        A0();
                        return;
                    }
                    if (fragment3 instanceof f.a.k.l0.j3) {
                        x();
                        return;
                    }
                    if (fragment3 instanceof f.a.k.l0.g3) {
                        u0();
                        return;
                    }
                    if (fragment3 instanceof f.a.k.l0.z3) {
                        y0();
                        return;
                    }
                    if (!f.a.i.m.g.a0(this)) {
                        z0();
                    }
                    if (y() || x()) {
                        return;
                    }
                }
            } else {
                if (!f.a.i.m.g.a0(this)) {
                    z0();
                }
                if (y() || x()) {
                    return;
                }
            }
            z0();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    @Override // d.b.k.h, d.j.d.l, androidx.activity.ComponentActivity, d.g.e.e, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r6) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.g0.onCreate(android.os.Bundle):void");
    }

    @Override // d.b.k.h, d.j.d.l, android.app.Activity
    public void onDestroy() {
        if (G()) {
            super.onDestroy();
            return;
        }
        net.easyconn.EcApplication.isCurrentMirror = false;
        this.J = false;
        f.a.k.j0 j0Var = this.C;
        if (j0Var != null) {
            e.e.a.g.a("[UsbAttachManager]onDestroy()");
            if (j0Var.f3037e != null) {
                j0Var.a.get().getApplicationContext().unregisterReceiver(j0Var.f3037e);
            }
            j0Var.b = null;
            this.C = null;
        }
        if (f.a.i.m.d.f() && f.a.i.m.d.g()) {
            getWindow().clearFlags(128);
        }
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.t;
        if (easyConnectService != null) {
            easyConnectService.c();
            f.a.i.c.a aVar = this.t.f3175e;
            if (aVar != null) {
                aVar.unRegisterListener();
            }
            net.easyconn.framework.broadcast.BroadcastManager broadcastManager = this.t.f3176f;
            if (broadcastManager != null) {
                broadcastManager.removeBroadcastListener();
            }
            net.easyconn.framework.sdkservice.EasyConnectService easyConnectService2 = this.t;
            if (easyConnectService2 == null) {
                throw null;
            }
            e.e.a.g.a("removeBroadcastManagerListener");
            easyConnectService2.i = null;
            net.easyconn.framework.sdkservice.EasyConnectService easyConnectService3 = this.t;
            if (easyConnectService3 == null) {
                throw null;
            }
            e.e.a.g.a("removeWifiStateListener");
            easyConnectService3.f3174d.g(null);
        }
        f.a.i.i.q qVar = this.s;
        if (qVar != null) {
            e.e.a.g.a("EcSdkManager removeMirrorStateListener");
            qVar.L = null;
            f.a.i.i.m mVar = qVar.b;
            if (mVar != null) {
                e.e.a.g.a("EcCallBack setMirrorStateListener = null");
                mVar.F = null;
            }
            f.a.i.i.q qVar2 = this.s;
            if (qVar2 == null) {
                throw null;
            }
            e.e.a.g.a("EcSdkManager removeMirrorConnectionListener");
            qVar2.M = null;
            f.a.i.i.m mVar2 = qVar2.b;
            if (mVar2 != null) {
                mVar2.m = null;
            }
            f.a.i.i.q qVar3 = this.s;
            f.a.i.i.m mVar3 = qVar3.b;
            if (mVar3 != null) {
                mVar3.q = null;
            }
            qVar3.C = null;
            this.s.a0();
            this.s.D();
            this.s.f0(false);
            e.e.a.g.a("ecSdkManager.closeDevice();");
        }
        if (this.B) {
            e.e.a.g.a("MainActivity onDestroy() unbindService");
            unbindService(this.N);
            this.B = false;
        }
        this.N = null;
        this.t = null;
        androidx.fragment.app.Fragment fragment = this.j;
        if (fragment != null) {
            f.a.k.l0.p3 p3Var = (f.a.k.l0.p3) fragment;
            if (p3Var.f3076f != null) {
                p3Var.f3076f.close();
                p3Var.f3076f = null;
            }
        }
        if (this.u != null) {
            net.easyconn.EcApplication.getInstance().executeTask(new java.lang.Runnable() { // from class: f.a.k.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Y();
                }
            });
        }
        if (f.a.i.m.g.a) {
            this.i = null;
        } else {
            this.h = null;
        }
        this.r = null;
        this.v.removeCallbacksAndMessages(null);
        this.v = null;
        super.onDestroy();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onDestroy() MainActivity is ");
        sbO.append(toString());
        e.e.a.g.a(sbO.toString());
    }

    @Override // d.b.k.h, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, android.view.KeyEvent keyEvent) {
        if (i != 82) {
            return super.onKeyDown(i, keyEvent);
        }
        e.e.a.g.a("onKeyDown KEYCODE_MENU intercept");
        return true;
    }

    @Override // d.j.d.l, android.app.Activity
    public void onNewIntent(android.content.Intent intent) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onNewIntent intent action = ");
        sbO.append(intent.getAction());
        e.e.a.g.a(sbO.toString());
        super.onNewIntent(intent);
        if (J()) {
            e.e.a.g.a("isUsbAttachWhenMirror return");
            return;
        }
        this.D = intent;
        if (I()) {
            if (!net.easyconn.EcApplication.isForeground) {
                e.e.a.g.a("onNewIntent minimizeUI by usb attached background");
                moveTaskToBack(true);
            }
            e.e.a.g.a("onNewIntent launch by usb attached");
            f.a.i.i.q qVar = this.s;
            if (qVar == null) {
                w();
                return;
            }
            this.C.d(intent, qVar);
            if (f.a.i.m.g.I(this)) {
                e.e.a.g.a("onOpenDevice return");
                return;
            }
            f.a.k.j0 j0Var = this.C;
            if (j0Var != null) {
                j0Var.c();
            }
        }
    }

    @Override // d.j.d.l, android.app.Activity
    public void onPause() {
        super.onPause();
        e.e.a.g.a("MainActivity onPause");
    }

    @Override // d.j.d.l, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, java.lang.String[] strArr, int[] iArr) {
        if (i != 10001) {
            if (i == 10002 && iArr.length > 0) {
                for (int i2 = 0; i2 < iArr.length; i2++) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("permission ");
                    sbO.append(strArr[i2]);
                    sbO.append(", grantResult index = ");
                    sbO.append(i2);
                    sbO.append(", result = ");
                    sbO.append(iArr[i2]);
                    e.e.a.g.a(sbO.toString());
                }
                return;
            }
            return;
        }
        e.e.a.g.a("onRequestPermissionsResult AudioRecordPermission EC_PERMISSION_REQ_CODE_RECORD_AUDIO");
        if (iArr.length <= 0 || iArr[0] != 0) {
            e.e.a.g.a("AudioRecordPermission EC_PERMISSION_RECORD_AUDIO permission denied!");
            f.a.i.i.q qVar = this.s;
            if (qVar == null) {
                throw null;
            }
            android.os.Message messageObtain = android.os.Message.obtain();
            messageObtain.what = 11;
            qVar.r.sendMessage(messageObtain);
        } else {
            this.t.f3175e.startRecord();
        }
        this.I = false;
        e.e.a.g.a("onRequestPermissionsResult AudioRecordPermission EC_PERMISSION_REQ_CODE_RECORD_AUDIO end");
    }

    @Override // d.j.d.l, android.app.Activity
    public void onResume() {
        super.onResume();
        if (I()) {
            e.e.a.g.a("MainActivity onResume return");
            return;
        }
        net.easyconn.EcApplication.isForeground = true;
        e.e.a.g.a("MainActivity onResume");
        f.a.i.i.q qVar = this.s;
        if (qVar != null) {
            qVar.e0(true);
        }
        if (this.r instanceof f.a.k.l0.g3) {
            return;
        }
        f.a.i.i.q qVar2 = this.s;
        if (qVar2 != null && qVar2.V) {
            e.e.a.g.a("EcSdkManager instance is already, start mirror fragment now!");
            x0();
            return;
        }
        f.a.i.i.q qVar3 = this.s;
        if (qVar3 != null && qVar3.k) {
            B0();
            return;
        }
        if (this.F != null) {
            e.e.a.g.a("onResume backgroundIntent ");
            android.content.Intent intent = this.F;
            f.a.i.i.q qVar4 = this.s;
            if (qVar4 == null) {
                w();
            } else {
                this.C.d(intent, qVar4);
                if (f.a.i.m.g.I(this)) {
                    e.e.a.g.a("onOpenDevice return");
                } else {
                    f.a.k.j0 j0Var = this.C;
                    if (j0Var != null) {
                        j0Var.c();
                    }
                }
            }
            this.F = null;
        }
    }

    @Override // d.b.k.h, d.j.d.l, android.app.Activity
    public void onStart() {
        boolean zE;
        android.os.Handler handler;
        super.onStart();
        if (I()) {
            e.e.a.g.a("MainActivity onStart return");
            return;
        }
        e.e.a.g.a("MainActivity onStart");
        net.easyconn.framework.broadcast.BroadcastManager.sendBroadcast(getApplicationContext(), net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_APP_RESUME);
        if (this.f3031e == null) {
            this.f3031e = (android.widget.RelativeLayout) findViewById(net.easyconn.R.id.welcome_layout);
        }
        if (this.f3031e == null) {
            return;
        }
        if (f.a.i.m.g.h0(getApplicationContext())) {
            zE = e.a.c.a.a.E(f.a.i.m.g.f2936c, "ENABLE_WELCOME_LOGO_CUSTOM", "false");
            f.a.i.m.g.s = zE;
        } else {
            zE = java.lang.Boolean.valueOf("false").booleanValue();
        }
        if (zE && f.a.i.m.g.G(getApplicationContext()) == 0) {
            ((net.easyconn.EcApplication) getApplication()).executeTask(new java.lang.Runnable() { // from class: f.a.k.n
                @Override // java.lang.Runnable
                public final void run() throws java.lang.Throwable {
                    this.a.e0();
                }
            });
        } else {
            d0(null);
        }
        if (f.a.i.m.g.G(this) == 0) {
            ((android.widget.TextView) this.f3031e.findViewById(net.easyconn.R.id.app_hz_product_tip_text)).setVisibility(0);
        }
        if (!this.A) {
            if ((!f.a.i.m.g.h0(this) ? java.lang.Boolean.valueOf("true") : java.lang.Boolean.valueOf(f.a.i.m.g.f2936c.getProperty("SHOW_WELCOME_FIRST_TIME", "true"))).booleanValue()) {
                this.f3031e.setVisibility(0);
                e.e.a.g.a("showWelcomeView postDelayed start");
                if (this.J && (handler = this.v) != null) {
                    handler.postDelayed(new java.lang.Runnable() { // from class: f.a.k.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.a.f0();
                        }
                    }, 2000L);
                }
            }
        }
        this.A = true;
    }

    @Override // d.b.k.h, d.j.d.l, android.app.Activity
    public void onStop() {
        super.onStop();
        if (H()) {
            e.e.a.g.a("MainActivity onStop isIgnoreOnStop, return");
            return;
        }
        e.e.a.g.a("MainActivity onStop");
        if (net.easyconn.EcApplication.isForeground) {
            net.easyconn.framework.broadcast.BroadcastManager.sendBroadcast(getApplicationContext(), net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_APP_PAUSE);
        }
        net.easyconn.EcApplication.isForeground = false;
        f.a.i.i.q qVar = this.s;
        if (qVar != null) {
            qVar.e0(false);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            D();
        }
    }

    /* renamed from: p0, reason: merged with bridge method [inline-methods] */
    public void Z() {
        f.a.k.l0.v3 v3Var;
        f.a.k.l0.v3 v3Var2;
        f.a.k.l0.a4 a4Var;
        e.e.a.g.a("setDeviceTagText");
        if (f.a.i.m.g.e(this.f3029c)) {
            if (this.s != null && (a4Var = this.f3032f) != null) {
                a4Var.c0(java.lang.String.format(getString(net.easyconn.R.string.device_name), this.s.G()));
            }
            if (f.a.i.m.g.a && (v3Var2 = this.f3033g) != null && v3Var2.isAdded()) {
                this.f3033g.h0(this.s.G());
                return;
            }
            return;
        }
        if (this.s != null) {
            this.y.setText(java.lang.String.format(getString(net.easyconn.R.string.device_tag_txt), this.s.G()));
            f.a.k.l0.a4 a4Var2 = this.f3032f;
            if (a4Var2 != null && a4Var2.isAdded()) {
                this.f3032f.c0(java.lang.String.format(getString(net.easyconn.R.string.device_tag_txt), this.s.G()));
            }
        }
        if (f.a.i.m.g.a && (v3Var = this.f3033g) != null && v3Var.isAdded()) {
            this.f3033g.h0(this.s.G());
        }
    }

    @Override // f.a.k.f0
    public void q() {
        android.widget.TextView textView = this.y;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* renamed from: q0, reason: merged with bridge method [inline-methods] */
    public void c0(java.lang.String str) {
        f.a.k.l0.v3 v3Var;
        f.a.k.l0.v3 v3Var2;
        e.a.c.a.a.w("setDeviceTagText name = ", str);
        if (f.a.i.m.g.e(this.f3029c)) {
            f.a.k.l0.a4 a4Var = this.f3032f;
            if (a4Var != null) {
                a4Var.c0(java.lang.String.format(getString(net.easyconn.R.string.device_name), str));
            }
            if (f.a.i.m.g.a && (v3Var2 = this.f3033g) != null && v3Var2.isAdded()) {
                this.f3033g.h0(str);
                return;
            }
            return;
        }
        this.y.setText(java.lang.String.format(getString(net.easyconn.R.string.device_tag_txt), str));
        f.a.k.l0.a4 a4Var2 = this.f3032f;
        if (a4Var2 != null && a4Var2.isAdded()) {
            this.f3032f.c0(java.lang.String.format(getString(net.easyconn.R.string.device_tag_txt), str));
        }
        if (f.a.i.m.g.a && (v3Var = this.f3033g) != null && v3Var.isAdded()) {
            this.f3033g.h0(str);
        }
    }

    public void r0(android.widget.ImageView imageView) {
        imageView.setImageResource((f.a.i.m.g.u(this.f3029c) && f.a.i.m.g.c0(this.f3029c)) ? java.util.Locale.getDefault().getLanguage().equals(java.util.Locale.ENGLISH.getLanguage()) ? net.easyconn.R.drawable.welcome_logo_d : net.easyconn.R.drawable.tabui_welcome_logo_cn_d : java.util.Locale.getDefault().getLanguage().equals(java.util.Locale.ENGLISH.getLanguage()) ? net.easyconn.R.drawable.welcome_logo : net.easyconn.R.drawable.tabui_welcome_logo_cn);
    }

    /* renamed from: s0, reason: merged with bridge method [inline-methods] */
    public void d0(android.graphics.Bitmap bitmap) {
        if (bitmap == null) {
            android.widget.ImageView imageView = (android.widget.ImageView) this.f3031e.findViewById(net.easyconn.R.id.app_product_welcome_logo);
            if (f.a.i.m.g.e(this.f3029c)) {
                r0(imageView);
            } else if (java.util.Locale.getDefault().getLanguage().equals(java.util.Locale.ENGLISH.getLanguage())) {
                imageView.setImageResource(net.easyconn.R.drawable.welcome_logo);
            } else {
                imageView.setImageResource(net.easyconn.R.drawable.welcome_logo_cn);
            }
            imageView.setVisibility(0);
            return;
        }
        android.view.View viewFindViewById = this.f3031e.findViewById(net.easyconn.R.id.hz_product_welcome_logo);
        android.widget.ImageView imageView2 = (android.widget.ImageView) this.f3031e.findViewById(net.easyconn.R.id.app_product_welcome_logo1);
        if (f.a.i.m.g.e(this.f3029c)) {
            r0(imageView2);
        } else if (java.util.Locale.getDefault().getLanguage().equals(java.util.Locale.ENGLISH.getLanguage())) {
            imageView2.setImageResource(net.easyconn.R.drawable.welcome_logo);
        } else {
            imageView2.setImageResource(net.easyconn.R.drawable.welcome_logo_cn);
        }
        ((android.widget.ImageView) this.f3031e.findViewById(net.easyconn.R.id.app_product_welcome_logo2)).setImageBitmap(bitmap);
        viewFindViewById.setVisibility(0);
    }

    /* renamed from: t0, reason: merged with bridge method [inline-methods] */
    public void b0(boolean z, android.net.wifi.p2p.WifiP2pDevice wifiP2pDevice) {
        f.a.k.l0.a4 a4Var;
        e.a.c.a.a.z("MainActivity setWlanDeviceShow isConnected = ", z);
        if (!z && (a4Var = this.f3032f) != null) {
            f.a.k.l0.b4 b4Var = (f.a.k.l0.b4) a4Var;
            if (b4Var.m0 != null) {
                e.e.a.g.a("TabStatusTipFragment hideWlanDevice");
                b4Var.m0.setVisibility(8);
            }
        }
        if (!z || wifiP2pDevice == null) {
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("MainActivity setWlanDeviceShow p2pDevice.deviceName = ");
        sbO.append(wifiP2pDevice.deviceName);
        e.e.a.g.a(sbO.toString());
        f.a.k.l0.a4 a4Var2 = this.f3032f;
        if (a4Var2 != null) {
            f.a.k.l0.b4 b4Var2 = (f.a.k.l0.b4) a4Var2;
            java.lang.String str = wifiP2pDevice.deviceName;
            if (b4Var2.m0 != null) {
                e.e.a.g.a("TabStatusTipFragment showWlanDevice");
                b4Var2.m0.setVisibility(0);
            }
            if (b4Var2.o0 != null) {
                if (e.a.c.a.a.D("TabStatusTipFragment showWlanDevice deviceName = ", str, str)) {
                    b4Var2.n0.setText(net.easyconn.R.string.tab_status_tip_wlan_already_connected_no_name);
                } else {
                    b4Var2.n0.setText(net.easyconn.R.string.tab_status_tip_wlan_already_connected);
                    b4Var2.o0.setText(java.lang.String.format(b4Var2.getString(net.easyconn.R.string.tab_status_tip_quotation_marks), str));
                }
            }
        }
    }

    public synchronized void u0() {
        if (this.t == null) {
            e.e.a.g.c("showAboutFragment now easyConnectService not bind compile, return", new java.lang.Object[0]);
            return;
        }
        if (this.p == null) {
            f.a.k.l0.g3 g3Var = new f.a.k.l0.g3();
            this.p = g3Var;
            new f.a.k.m0.q0(this, g3Var, this.u, this.t);
        }
        w0(this.p);
    }

    public synchronized void v0() {
        if (this.m == null) {
            this.m = new f.a.k.l0.h3();
        }
        w0(this.m);
    }

    public void w() {
        e.e.a.g.a("[bindSdkService]");
        this.B = bindService(new android.content.Intent(this.f3029c, (java.lang.Class<?>) net.easyconn.framework.sdkservice.EasyConnectService.class), this.N, 1);
        e.a.c.a.a.C(e.a.c.a.a.o("[bindSdkService] mBound = "), this.B);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007e A[Catch: all -> 0x00e8, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x001d, B:8:0x0027, B:10:0x002b, B:12:0x0038, B:13:0x0040, B:20:0x0070, B:22:0x007e, B:27:0x00a4, B:29:0x00aa, B:31:0x00d1, B:33:0x00d7, B:35:0x00e0, B:34:0x00dd, B:23:0x008e, B:25:0x0094, B:26:0x009a, B:14:0x0044, B:16:0x004a, B:18:0x005a, B:19:0x0068, B:39:0x00e7), top: B:45:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008e A[Catch: all -> 0x00e8, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x001d, B:8:0x0027, B:10:0x002b, B:12:0x0038, B:13:0x0040, B:20:0x0070, B:22:0x007e, B:27:0x00a4, B:29:0x00aa, B:31:0x00d1, B:33:0x00d7, B:35:0x00e0, B:34:0x00dd, B:23:0x008e, B:25:0x0094, B:26:0x009a, B:14:0x0044, B:16:0x004a, B:18:0x005a, B:19:0x0068, B:39:0x00e7), top: B:45:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00aa A[Catch: all -> 0x00e8, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x001d, B:8:0x0027, B:10:0x002b, B:12:0x0038, B:13:0x0040, B:20:0x0070, B:22:0x007e, B:27:0x00a4, B:29:0x00aa, B:31:0x00d1, B:33:0x00d7, B:35:0x00e0, B:34:0x00dd, B:23:0x008e, B:25:0x0094, B:26:0x009a, B:14:0x0044, B:16:0x004a, B:18:0x005a, B:19:0x0068, B:39:0x00e7), top: B:45:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00dd A[Catch: all -> 0x00e8, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x001d, B:8:0x0027, B:10:0x002b, B:12:0x0038, B:13:0x0040, B:20:0x0070, B:22:0x007e, B:27:0x00a4, B:29:0x00aa, B:31:0x00d1, B:33:0x00d7, B:35:0x00e0, B:34:0x00dd, B:23:0x008e, B:25:0x0094, B:26:0x009a, B:14:0x0044, B:16:0x004a, B:18:0x005a, B:19:0x0068, B:39:0x00e7), top: B:45:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void w0(androidx.fragment.app.Fragment r6) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.g0.w0(androidx.fragment.app.Fragment):void");
    }

    public boolean x() {
        int i = f.a.i.g.a.b(getApplicationContext()).a.getInt("key_show_guide_page", 1);
        e.a.c.a.a.v("showGuideFragment is ", i);
        if (i != 1) {
            return false;
        }
        int iG = f.a.i.m.g.G(this);
        if (!((iG == 1 || iG == 2 ? f.a.i.m.g.h0(this) : f.a.i.m.g.h0(this)) ? java.lang.Boolean.valueOf(f.a.i.m.g.f2936c.getProperty("ENABLE_LAUNCH_UI", "false")) : java.lang.Boolean.valueOf("false")).booleanValue()) {
            return false;
        }
        synchronized (this) {
            e.e.a.g.a("showGuideFragment");
            if (this.o == null) {
                this.o = new f.a.k.l0.j3();
            }
            w0(this.o);
            this.y.setVisibility(8);
        }
        return true;
    }

    public synchronized void x0() {
        this.t.f3176f.setOnBroadcastListener(this);
        if (this.j == null) {
            int i = this.s.W;
            int i2 = this.s.X;
            e.e.a.g.a("getMirrorFragment");
            this.j = new f.a.k.l0.p3();
        }
        if (this.k == null) {
            this.k = new f.a.k.m0.r0(this, (f.a.k.k0.d) this.j, new android.os.Handler(), this.s, this.u);
        }
        this.s.j0(this.k);
        w0(this.j);
        this.y.setVisibility(8);
        e.e.a.g.e("Open Mirror Connection OK, show Mirror Fragment now.", new java.lang.Object[0]);
    }

    public boolean y() {
        if (!f.a.i.m.g.a0(this)) {
            return false;
        }
        java.lang.String strB = f.a.i.m.d.b(getApplicationContext());
        if (e.a.c.a.a.D("isLocalLicenseFileExists licensePath is ", strB, strB)) {
            strB = getFilesDir().getPath();
        }
        e.e.a.g.a("isLocalLicenseFileExists path is " + strB);
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(strB, "/carbit_license_");
        sbQ.append(f.a.i.m.g.k(this));
        boolean zExists = new java.io.File(sbQ.toString()).exists();
        e.a.c.a.a.z("isLocalLicenseFile exists is ", zExists);
        if (zExists) {
            return false;
        }
        y0();
        return true;
    }

    public synchronized void y0() {
        if (this.t == null) {
            e.e.a.g.c("showQrRegisterFragment easyConnectService is null, return", new java.lang.Object[0]);
            return;
        }
        if (this.q == null) {
            this.q = new f.a.k.l0.z3();
        }
        if (this.l == null) {
            this.l = new f.a.k.m0.u0(this, (f.a.k.k0.h) this.q, this.t);
        }
        if (this.s != null) {
            this.s.h0(this.l);
        }
        w0(this.q);
        this.y.setVisibility(8);
    }

    public void z() {
    }

    public synchronized void z0() {
        f.a.i.i.q qVar;
        f.a.i.h.c cVar;
        if (f.a.i.m.g.a) {
            if (this.f3033g == null) {
                this.f3033g = new f.a.k.l0.v3();
                this.i = new f.a.k.m0.t0(this.f3033g, new android.os.Handler(), this.u);
            }
            w0(this.f3033g);
            this.y.setVisibility(8);
        } else {
            E();
            if (this.f3032f != null) {
                w0(this.f3032f);
                this.f3032f.e();
            } else {
                e.e.a.g.c("mStatusTipFragment is null, return", new java.lang.Object[0]);
            }
        }
        if (this.s != null) {
            if (f.a.i.m.g.a) {
                qVar = this.s;
                cVar = this.i;
            } else {
                qVar = this.s;
                cVar = this.h;
            }
            qVar.h0(cVar);
            Z();
        }
    }
}
