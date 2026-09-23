package f.a.k.l0;

/* loaded from: classes.dex */
public class q3 extends f.a.k.l0.a4 {
    public androidx.appcompat.widget.AppCompatImageView K;
    public androidx.appcompat.widget.AppCompatImageView L;
    public android.widget.TextView N;
    public android.widget.LinearLayout O;
    public android.widget.RelativeLayout P;
    public android.widget.TextView Q;
    public android.widget.RelativeLayout R;
    public android.widget.TextView S;
    public android.net.wifi.WifiManager U;
    public android.widget.RelativeLayout Y;
    public android.widget.ImageView Z;
    public android.widget.RelativeLayout b0;
    public android.widget.TextView c0;
    public android.widget.TextView d0;
    public f.a.k.l0.q3.c e0;
    public java.lang.String g0;
    public boolean J = false;
    public boolean M = true;
    public android.os.Handler T = new android.os.Handler();
    public volatile boolean V = false;
    public int W = 0;
    public boolean X = false;
    public volatile boolean a0 = true;
    public java.lang.Runnable f0 = new java.lang.Runnable() { // from class: f.a.k.l0.i1
        @Override // java.lang.Runnable
        public final void run() {
            this.a.u0();
        }
    };
    public f.a.k.n0.j h0 = null;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.a.k.l0.q3.this.Y.setVisibility(0);
            ((android.graphics.drawable.AnimationDrawable) f.a.k.l0.q3.this.Z.getBackground()).start();
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((android.graphics.drawable.AnimationDrawable) f.a.k.l0.q3.this.Z.getBackground()).stop();
            f.a.k.l0.q3.this.Y.setVisibility(8);
        }
    }

    public class c extends android.content.BroadcastReceiver {
        public c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            if (net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_ANDROID_TAB.equalsIgnoreCase(intent.getAction())) {
                e.e.a.g.a("Receive Switch to Android : BROADCAST_ANDROID_TAG");
                f.a.k.l0.q3.this.B0();
            } else if (net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_IOS_TAB.equalsIgnoreCase(intent.getAction())) {
                e.e.a.g.a("Receive Switch to IOS : BROADCAST_IOS_TAG");
                f.a.k.l0.q3.this.C0();
            }
        }
    }

    /* renamed from: A0, reason: merged with bridge method [inline-methods] */
    public void v0() {
        if (this.V || this.X) {
            return;
        }
        E0();
        e.e.a.g.a("NewStatusTipFragment openAp");
    }

    public void B0() {
        this.P.setBackgroundResource(net.easyconn.R.drawable.connection_type_bg_focus);
        this.Q.setTextColor(d.g.f.a.b(this.B.get(), net.easyconn.R.color.white));
        this.R.setBackgroundResource(android.R.color.transparent);
        this.S.setTextColor(d.g.f.a.b(this.B.get(), net.easyconn.R.color.white_50));
        F0(true);
    }

    public void C0() {
        this.P.setBackgroundResource(android.R.color.transparent);
        this.Q.setTextColor(d.g.f.a.b(this.B.get(), net.easyconn.R.color.white_50));
        this.R.setBackgroundResource(net.easyconn.R.drawable.connection_type_bg_focus);
        this.S.setTextColor(d.g.f.a.b(this.B.get(), net.easyconn.R.color.white));
        F0(false);
    }

    public void D0(android.widget.RelativeLayout relativeLayout) {
        int i;
        android.view.WindowManager windowManager = (android.view.WindowManager) getActivity().getSystemService("window");
        android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            android.widget.RelativeLayout.LayoutParams layoutParams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            int i2 = displayMetrics.widthPixels;
            float f2 = displayMetrics.density;
            double d2 = i2 / f2;
            java.lang.Double.isNaN(d2);
            int i3 = (int) (d2 * 0.03d);
            int i4 = displayMetrics.heightPixels;
            if (i4 > i2) {
                double d3 = i4 / f2;
                java.lang.Double.isNaN(d3);
                layoutParams.setMargins(0, 0, 0, (int) (d3 * 0.03d));
                i = 13;
            } else {
                layoutParams.setMargins(i3, 0, i3, i3);
                i = 20;
            }
            layoutParams.addRule(i);
            layoutParams.addRule(12);
            relativeLayout.setLayoutParams(layoutParams);
        }
    }

    public void E0() {
        android.os.Handler handler;
        e.e.a.g.a("showLoadingMask");
        if (this.Y == null) {
            e.e.a.g.a("showLoadingMask viewLoadingMask is null!!");
        } else {
            if (this.V || (handler = this.T) == null) {
                return;
            }
            handler.post(new f.a.k.l0.q3.a());
        }
    }

    public void F0(boolean z) {
        android.os.Handler handler;
        java.lang.Runnable runnable;
        e.a.c.a.a.z("isAndroid=", z);
        this.P.setEnabled(!z);
        this.R.setEnabled(z);
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.B.get()).a.edit();
        editorEdit.putBoolean("key_ec_qr_code_mode_android", z);
        editorEdit.apply();
        if (z) {
            o0(false);
            if (this.V || (handler = this.T) == null) {
                return;
            } else {
                runnable = new java.lang.Runnable() { // from class: f.a.k.l0.j1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.w0();
                    }
                };
            }
        } else {
            z0(false);
            if (this.V || (handler = this.T) == null) {
                return;
            } else {
                runnable = new java.lang.Runnable() { // from class: f.a.k.l0.n1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.x0();
                    }
                };
            }
        }
        handler.postDelayed(runnable, 500L);
    }

    public void G0() {
        android.os.Handler handler;
        if (!this.J) {
            e.e.a.g.a("NewStatusTipFragment updateAndroidUrl return npt supportQrScan");
            return;
        }
        if (f.a.i.g.a.b(this.B.get()).a.getBoolean("key_ec_qr_code_mode_android", true)) {
            final java.lang.String strJ0 = j0();
            if (e.a.c.a.a.D("NewStatusTipFragment setDeviceTag updateAndroidUrl ==>** androidUrl is ", strJ0, strJ0) || this.V || (handler = this.T) == null) {
                return;
            }
            handler.post(new java.lang.Runnable() { // from class: f.a.k.l0.e1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.y0(strJ0);
                }
            });
        }
    }

    /* renamed from: H0, reason: merged with bridge method [inline-methods] */
    public void z0(final boolean z) {
        android.os.Handler handler;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("wifiEnabled enabled=");
        sb.append(z);
        sb.append(",isDestroy = ");
        e.a.c.a.a.C(sb, this.V);
        if (this.V) {
            return;
        }
        if (!z) {
            if (this.U.isWifiEnabled()) {
                this.U.setWifiEnabled(false);
                e.e.a.g.a("NewStatusTipFragment closeWifi");
                return;
            }
            return;
        }
        if (this.U.isWifiEnabled()) {
            l0();
        } else {
            E0();
            E0();
            this.U.setWifiEnabled(true);
            e.e.a.g.a("NewStatusTipFragment openWifi");
        }
        java.lang.String strJ0 = j0();
        if (!e.a.c.a.a.D("==>** androidUrl is ", strJ0, strJ0)) {
            this.s.setImageBitmap(d.s.y.t(this.B.get().getApplicationContext(), strJ0));
        } else {
            if (this.V || (handler = this.T) == null) {
                return;
            }
            handler.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.c1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.z0(z);
                }
            }, 500L);
        }
    }

    @Override // f.a.k.l0.a4, f.a.k.k0.j
    public void I() {
        e.e.a.g.a("NewStatusTipFragment onConnectTimeout");
        if (this.I) {
            e.e.a.g.a("NewStatusTipFragment onConnectTimeout, fragment hidden, ignore");
            return;
        }
        if (!net.easyconn.EcApplication.isForeground) {
            e.e.a.g.a("NewStatusTipFragment onConnectTimeout, at background, ignore");
            return;
        }
        if (!this.a0) {
            e.e.a.g.a("NewStatusTipFragment onConnectTimeout, no needShowTimeout, ignore");
            this.a0 = true;
        } else if (!this.x.a0()) {
            e.e.a.g.a("NewStatusTipFragment Phone not Connected, ignore");
        } else {
            net.easyconn.EcApplication.getInstance().showToastCustom(net.easyconn.R.string.read_version_error, 1);
            q();
        }
    }

    @Override // f.a.k.l0.a4, f.a.k.l0.i3
    public void O(android.view.View view) throws android.content.res.Resources.NotFoundException {
        super.O(view);
        this.Y = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.view_loading_mask);
        this.Z = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.img_loading_mask);
        this.J = f.a.i.m.g.g(this.B.get());
        e.a.c.a.a.C(e.a.c.a.a.o("NewStatusTipFragment supportQrScan = "), this.J);
        if (!this.M) {
            e.e.a.g.a("NewStatusTipFragment !supportTouch initView");
            this.b0 = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.layout_no_touch_about);
            this.c0 = (android.widget.TextView) view.findViewById(net.easyconn.R.id.layout_about_version_tv);
            this.d0 = (android.widget.TextView) view.findViewById(net.easyconn.R.id.layout_about_sn_tv);
            D0(this.b0);
            android.widget.TextView textView = this.c0;
            try {
                java.lang.String[] strArrSplit = "7.0.1-9011d330b-202404121051".split("-");
                textView.setText(java.lang.String.format("%s%s[%d].%s-%s", getString(net.easyconn.R.string.version_txt), "tocfree", java.lang.Integer.valueOf(f.a.i.m.g.k(getContext().getApplicationContext())), strArrSplit[0], strArrSplit[1]));
            } catch (java.lang.Exception unused) {
                textView.setText(java.lang.String.format("%s%s", getString(net.easyconn.R.string.version_txt), "7.0.1-9011d330b-202404121051"));
            }
            this.Y.getBackground().setAlpha(200);
        }
        androidx.appcompat.widget.AppCompatImageView appCompatImageView = (androidx.appcompat.widget.AppCompatImageView) view.findViewById(net.easyconn.R.id.btn_about);
        this.K = appCompatImageView;
        appCompatImageView.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.l1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.q0(view2);
            }
        });
        androidx.appcompat.widget.AppCompatImageView appCompatImageView2 = (androidx.appcompat.widget.AppCompatImageView) view.findViewById(net.easyconn.R.id.btn_back);
        this.L = appCompatImageView2;
        appCompatImageView2.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.m1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.r0(view2);
            }
        });
        this.N = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tv_device_tag);
        android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) view.findViewById(net.easyconn.R.id.layout_connection_type);
        this.O = linearLayout;
        if (this.J) {
            linearLayout.setVisibility(0);
            this.t.setGravity(8388611);
            this.t.setText(net.easyconn.R.string.status_tip_new_confirm_text_for_qr_scan);
        }
        android.widget.RelativeLayout relativeLayout = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.layout_connection_type_android);
        this.P = relativeLayout;
        relativeLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.k1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.s0(view2);
            }
        });
        this.Q = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tv_connection_type_android);
        android.widget.RelativeLayout relativeLayout2 = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.layout_connection_type_ios);
        this.R = relativeLayout2;
        relativeLayout2.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.t0(view2);
            }
        });
        this.S = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tv_connection_type_ios);
        int i = f.a.i.m.g.q(this.B.get()) ? 16 : 0;
        if (f.a.i.m.g.r(this.B.get())) {
            i |= 32;
        }
        if (f.a.i.m.g.s(this.B.get())) {
            i |= 8;
        }
        if (f.a.i.m.g.D(this.B.get()) || f.a.i.m.g.E(this.B.get())) {
            int i2 = i | 4;
            i = f.a.i.m.g.f(this.B.get()) ? i2 | 2 : i2 | 1;
        }
        e.a.c.a.a.v("generateQrAction action = ", i);
        this.W = i;
        e.e.a.g.a(java.lang.String.format("mAction is %x", java.lang.Integer.valueOf(i)));
    }

    @Override // f.a.k.l0.i3
    public void P() {
        this.X = false;
    }

    @Override // f.a.k.l0.i3
    public void Q() {
        if (net.easyconn.EcApplication.isForeground) {
            ((f.a.k.g0) this.B.get()).o0(false);
        }
    }

    @Override // f.a.k.l0.i3
    public void R() {
        this.X = false;
        l0();
    }

    @Override // f.a.k.l0.i3
    public void S() {
        if (net.easyconn.EcApplication.isForeground) {
            ((f.a.k.g0) this.B.get()).o0(true);
        }
    }

    @Override // f.a.k.l0.i3
    public void T() {
        android.os.Handler handler;
        if (!this.J) {
            e.e.a.g.a("NewStatusTipFragment onApStateFail openAp return npt supportQrScan");
            return;
        }
        this.X = false;
        if (this.V || (handler = this.T) == null) {
            return;
        }
        handler.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.h1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.v0();
            }
        }, 500L);
    }

    @Override // f.a.k.l0.i3
    public void U() {
    }

    @Override // f.a.k.l0.i3
    public void V() {
        l0();
    }

    @Override // f.a.k.l0.a4
    public void c0(java.lang.String str) {
        java.lang.String str2;
        e.a.c.a.a.w("NewStatusTipFragment setDeviceTag tag is ", str);
        android.widget.TextView textView = this.N;
        if (textView != null) {
            textView.setText(str);
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("NewStatusTipFragment setDeviceTag lastTag is ");
        sbO.append(this.g0);
        e.e.a.g.a(sbO.toString());
        if (!android.text.TextUtils.isEmpty(str)) {
            if (!android.text.TextUtils.isEmpty(this.g0)) {
                str2 = (this.g0.contains("Carbit-") && !str.contains("Carbit-")) ? "NewStatusTipFragment setDeviceTag contains Carbit" : "NewStatusTipFragment setDeviceTag TextUtils.isEmpty(lastTag)";
            }
            e.e.a.g.a(str2);
            G0();
        }
        this.g0 = str;
    }

    @Override // f.a.k.l0.a4, f.a.k.k0.j
    public void d() {
        e.e.a.g.a("NewStatusTipFragment onReadVersionTimeout");
        net.easyconn.EcApplication.getInstance().showToastCustom(net.easyconn.R.string.read_version_error, 1);
    }

    @Override // f.a.k.l0.a4, f.a.k.k0.j
    public void e() {
        e.a.c.a.a.C(e.a.c.a.a.o("NewStatusTipFragment showInitView, isHide is "), this.I);
        f.a.k.f0 f0Var = this.y;
        if (f0Var != null) {
            f0Var.o();
            this.y.a();
            this.y.q();
        }
        android.widget.ImageView imageView = this.u;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        android.widget.TextView textView = this.t;
        if (textView != null) {
            textView.setText(this.J ? net.easyconn.R.string.status_tip_new_confirm_text_for_qr_scan : net.easyconn.R.string.status_tip_new_confirm_text);
        }
    }

    @Override // f.a.k.l0.a4
    public void h0() {
        e.e.a.g.a("NewStatusTipFragment showReconnecting");
        if (this.I) {
            e.e.a.g.a("NewStatusTipFragment showReconnecting, fragment hidden, ignore");
            return;
        }
        net.easyconn.EcApplication.getInstance().showToastCustom(net.easyconn.R.string.exit_app_after_connect_failure, 1);
        q();
        this.a0 = false;
    }

    /* renamed from: i0, reason: merged with bridge method [inline-methods] */
    public void o0(final boolean z) {
        android.os.Handler handler;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("apEnabled enabled=");
        sb.append(z);
        sb.append(",isDestroy = ");
        e.a.c.a.a.C(sb, this.V);
        if (this.V) {
            return;
        }
        if (!z) {
            e.e.a.g.a("close ap");
            if (n0()) {
                e.e.a.g.a("NewStatusTipFragment closeAp");
                return;
            }
            return;
        }
        e.e.a.g.a("open ap");
        if (n0()) {
            l0();
        } else {
            E0();
            if (!this.V && !this.X) {
                E0();
                e.e.a.g.a("NewStatusTipFragment openAp");
            }
        }
        java.lang.String strB = ((f.a.k.g0) this.B.get()).B(new net.easyconn.ecsdk.ECTypes.ECQRInfo("", "", "", "", "", "", f.a.i.m.g.f(this.B.get()) ? 2 : 1));
        if (!e.a.c.a.a.D("==>** iosUrl is ", strB, strB)) {
            this.s.setImageBitmap(d.s.y.t(this.B.get().getApplicationContext(), strB));
        } else {
            if (this.V || (handler = this.T) == null) {
                return;
            }
            handler.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.f1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.o0(z);
                }
            }, 500L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String j0() {
        /*
            r9 = this;
            java.lang.ref.WeakReference<android.app.Activity> r0 = r9.B
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            boolean r0 = f.a.i.m.g.s(r0)
            r1 = 0
            if (r0 != 0) goto L7a
            java.lang.ref.WeakReference<android.app.Activity> r0 = r9.B
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            int r0 = f.a.i.m.g.G(r0)
            r2 = 1
            if (r0 == r2) goto L2d
            r2 = 2
            if (r0 != r2) goto L22
            goto L2d
        L22:
            java.lang.String r0 = f.a.i.m.d.a()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L75
            goto L90
        L2d:
            java.lang.ref.WeakReference<android.app.Activity> r0 = r9.B
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            java.lang.String r0 = f.a.i.m.g.O(r0)
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L75
            java.lang.ref.WeakReference<android.app.Activity> r2 = r9.B
            java.lang.Object r2 = r2.get()
            android.app.Activity r2 = (android.app.Activity) r2
            android.content.ContentResolver r2 = r2.getContentResolver()
            java.lang.String r3 = "android_id"
            java.lang.String r2 = android.provider.Settings.Secure.getString(r2, r3)
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 == 0) goto L59
            java.lang.String r2 = android.os.Build.SERIAL
        L59:
            int r3 = r2.length()
            r4 = 4
            if (r3 >= r4) goto L63
            java.lang.String r0 = ""
            goto L90
        L63:
            java.lang.String r3 = "-"
            java.lang.StringBuilder r0 = e.a.c.a.a.q(r0, r3)
            java.lang.String r1 = r2.substring(r1, r4)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto L90
        L75:
            java.lang.String r0 = r9.k0()
            goto L90
        L7a:
            java.lang.ref.WeakReference<android.app.Activity> r0 = r9.B
            java.lang.Object r0 = r0.get()
            android.app.Activity r0 = (android.app.Activity) r0
            java.lang.String r2 = "EC_DEVICE_NAME"
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r2, r1)
            java.lang.String r1 = r9.k0()
            java.lang.String r0 = r0.getString(r2, r1)
        L90:
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "==>** deviceName is "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            e.e.a.g.a(r0)
            net.easyconn.ecsdk.ECTypes$ECQRInfo r0 = new net.easyconn.ecsdk.ECTypes$ECQRInfo
            r8 = 8
            java.lang.String r2 = ""
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            java.lang.String r5 = ""
            java.lang.String r7 = ""
            r1 = r0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            java.lang.ref.WeakReference<android.app.Activity> r1 = r9.B
            java.lang.Object r1 = r1.get()
            f.a.k.g0 r1 = (f.a.k.g0) r1
            java.lang.String r0 = r1.B(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.q3.j0():java.lang.String");
    }

    public final java.lang.String k0() {
        java.lang.String string = android.provider.Settings.Secure.getString(this.B.get().getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
        if (android.text.TextUtils.isEmpty(string)) {
            string = android.os.Build.SERIAL;
        }
        if (string.length() < 4) {
            return "";
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Carbit-");
        sbO.append(string.substring(0, 4));
        return sbO.toString();
    }

    public void l0() {
        android.os.Handler handler;
        e.e.a.g.a("hideLoadingMask");
        if (this.Y == null) {
            e.e.a.g.a("hideLoadingMask viewLoadingMask is null!!");
        } else {
            if (this.V || (handler = this.T) == null) {
                return;
            }
            handler.post(new f.a.k.l0.q3.b());
        }
    }

    /* renamed from: m0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void u0() {
        android.graphics.Bitmap bitmapBuildBitmap;
        android.os.Handler handler;
        if (this.V) {
            return;
        }
        if (this.J) {
            if (net.easyconn.EcApplication.isForeground) {
                if (f.a.i.g.a.b(this.B.get()).a.getBoolean("key_ec_qr_code_mode_android", true)) {
                    B0();
                    return;
                } else {
                    C0();
                    return;
                }
            }
            return;
        }
        e.e.a.g.a("initQrCode not support qr link");
        java.lang.String strB = ((f.a.k.g0) this.B.get()).B(new net.easyconn.ecsdk.ECTypes.ECQRInfo("", "", "", "", "", "", this.W));
        if (e.a.c.a.a.D("initQrCode url = ", strB, strB)) {
            if (this.V || (handler = this.T) == null) {
                return;
            }
            handler.postDelayed(this.f0, 500L);
            return;
        }
        int iG = f.a.i.m.g.G(this.B.get().getApplicationContext());
        if (iG == 3) {
            strB = e.a.c.a.a.j(new java.lang.StringBuilder(), !f.a.i.m.g.h0(this.B.get().getApplicationContext()) ? "" : f.a.i.m.g.f2936c.getProperty("URI"), strB.substring(strB.substring(0, strB.indexOf("?")).length(), strB.length()));
        }
        e.e.a.g.a("initQrCode flavor = " + iG + " url = " + strB);
        int dimensionPixelSize = getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_154) - (getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_8) * 2);
        android.widget.ImageView imageView = this.s;
        android.content.Context applicationContext = this.B.get().getApplicationContext();
        int iU = d.s.y.u(this.B.get().getApplicationContext(), (float) dimensionPixelSize);
        e.e.a.g.a("createQRCode, text = " + strB + ", size = " + iU);
        try {
            bitmapBuildBitmap = com.huawei.hms.hmsscankit.ScanUtil.buildBitmap(strB, com.huawei.hms.ml.scan.HmsScanBase.QRCODE_SCAN_TYPE, iU, iU, new com.huawei.hms.ml.scan.HmsBuildBitmapOption.Creator().setBitmapColor(d.g.f.a.b(applicationContext, android.R.color.black)).setBitmapBackgroundColor(d.g.f.a.b(applicationContext, android.R.color.white)).setBitmapMargin(0).create());
        } catch (com.huawei.hms.hmsscankit.WriterException e2) {
            e2.printStackTrace();
            e.e.a.g.c("HmsScanUtils createQRCode e = " + e2, new java.lang.Object[0]);
            bitmapBuildBitmap = null;
        }
        imageView.setImageBitmap(bitmapBuildBitmap);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean n0() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            r6 = this;
            d.j.d.l r0 = r6.getActivity()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = 0
            d.j.d.l r2 = r6.getActivity()
            android.content.Context r2 = r2.getApplicationContext()
            java.lang.String r3 = "wifi"
            java.lang.Object r2 = r2.getSystemService(r3)
            android.net.wifi.WifiManager r2 = (android.net.wifi.WifiManager) r2
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.NoSuchMethodException -> L26
            java.lang.String r4 = "getWifiApState"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.NoSuchMethodException -> L26
            java.lang.reflect.Method r0 = r3.getMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L26
            goto L2a
        L26:
            r3 = move-exception
            r3.printStackTrace()
        L2a:
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.reflect.InvocationTargetException -> L37 java.lang.IllegalAccessException -> L3c
            java.lang.Object r0 = r0.invoke(r2, r3)     // Catch: java.lang.reflect.InvocationTargetException -> L37 java.lang.IllegalAccessException -> L3c
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.reflect.InvocationTargetException -> L37 java.lang.IllegalAccessException -> L3c
            int r0 = r0.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L37 java.lang.IllegalAccessException -> L3c
            goto L41
        L37:
            r0 = move-exception
            r0.printStackTrace()
            goto L40
        L3c:
            r0 = move-exception
            r0.printStackTrace()
        L40:
            r0 = 0
        L41:
            java.lang.String r2 = "wifi sharing state -> "
            e.a.c.a.a.v(r2, r0)
            r2 = 12
            if (r0 == r2) goto L4e
            r2 = 13
            if (r0 != r2) goto L4f
        L4e:
            r1 = 1
        L4f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.q3.n0():boolean");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        boolean zN = f.a.i.m.g.n(getContext());
        this.M = zN;
        if (zN) {
            return;
        }
        this.e0 = new f.a.k.l0.q3.c();
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction(net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_ANDROID_TAB);
        intentFilter.addAction(net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_IOS_TAB);
        getActivity().registerReceiver(this.e0, intentFilter);
    }

    @Override // f.a.k.l0.a4, androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) throws android.content.res.Resources.NotFoundException {
        this.V = false;
        this.I = false;
        this.M = f.a.i.m.g.n(getContext());
        e.a.c.a.a.C(e.a.c.a.a.o("NewStatusTipFragment supportTouch = "), this.M);
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_status_tip_new, viewGroup, false);
        if (!this.M) {
            viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_status_tip_new_no_touch, viewGroup, false);
        }
        this.U = (android.net.wifi.WifiManager) getActivity().getApplicationContext().getSystemService("wifi");
        O(viewInflate);
        e();
        return viewInflate;
    }

    @Override // f.a.k.l0.a4, f.a.k.l0.i3, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.V = true;
        this.T.removeCallbacks(this.f0);
        this.T.removeCallbacksAndMessages(null);
        this.T = null;
        if (this.e0 != null) {
            getActivity().unregisterReceiver(this.e0);
        }
    }

    @Override // f.a.k.l0.a4, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            q();
        }
    }

    @Override // f.a.k.l0.a4, f.a.k.l0.i3, androidx.fragment.app.Fragment
    public void onResume() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        android.os.Handler handler;
        java.lang.String str;
        super.onResume();
        e.e.a.g.a("NewStatusTipFragment onResume");
        java.lang.ref.WeakReference<android.app.Activity> weakReference = this.B;
        if (weakReference == null || !((f.a.k.g0) weakReference.get()).I()) {
            java.lang.ref.WeakReference<android.app.Activity> weakReference2 = this.B;
            if (weakReference2 != null) {
                str = ((f.a.k.g0) weakReference2.get()).r == this ? "NewStatusTipFragment onResume isLaunchByUSBAttached initQrCode return " : "NewStatusTipFragment onResume initQrCode return because is not this Fragment resume";
            }
            if (this.V || (handler = this.T) == null) {
                return;
            }
            handler.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.d1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.p0();
                }
            }, 0);
            return;
        }
        e.e.a.g.a(str);
    }

    @Override // f.a.k.l0.a4, f.a.k.k0.j
    public void q() {
        e.e.a.g.a("NewStatusTipFragment dismissConnecting");
        f.a.k.n0.j jVar = this.h0;
        if (jVar != null) {
            jVar.a();
        }
    }

    public /* synthetic */ void q0(android.view.View view) {
        if (this.B.get() instanceof f.a.k.e0) {
            ((f.a.k.e0) this.B.get()).e();
        }
    }

    public /* synthetic */ void r0(android.view.View view) {
        ((f.a.k.g0) this.B.get()).l0();
    }

    public /* synthetic */ void s0(android.view.View view) {
        B0();
    }

    @Override // f.a.k.l0.a4, f.a.k.k0.j
    public void t() {
        e.e.a.g.a("NewStatusTipFragment showConnecting");
        if (this.I) {
            e.e.a.g.a("NewStatusTipFragment showConnecting, fragment hidden, ignore");
            return;
        }
        if (this.h0 == null) {
            f.a.k.n0.j jVar = new f.a.k.n0.j(this.B.get());
            jVar.a = 105;
            jVar.F = net.easyconn.R.layout.layout_connecting;
            jVar.b = 202;
            jVar.J = false;
            this.h0 = jVar;
            android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) jVar.findViewById(net.easyconn.R.id.layoutPop);
            android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) this.h0.findViewById(net.easyconn.R.id.contentContainer);
            ((android.widget.RelativeLayout) this.h0.findViewById(net.easyconn.R.id.layout_pop_root_view)).setBackgroundColor(d.g.f.a.b(this.B.get(), net.easyconn.R.color.status_tip_connecting_progress_bg));
            android.view.ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
            layoutParams.width = -2;
            frameLayout.setLayoutParams(layoutParams);
            linearLayout.setBackgroundColor(d.g.f.a.b(this.B.get(), android.R.color.transparent));
            android.view.ViewGroup.LayoutParams layoutParams2 = linearLayout.getLayoutParams();
            layoutParams2.width = -2;
            linearLayout.setLayoutParams(layoutParams2);
        }
        if (this.h0.c()) {
            return;
        }
        this.h0.d();
        this.a0 = true;
    }

    public /* synthetic */ void t0(android.view.View view) {
        C0();
    }

    public /* synthetic */ void w0() {
        z0(true);
    }

    public /* synthetic */ void x0() {
        o0(true);
    }

    public /* synthetic */ void y0(java.lang.String str) {
        this.s.setImageBitmap(d.s.y.t(this.B.get().getApplicationContext(), str));
    }
}
