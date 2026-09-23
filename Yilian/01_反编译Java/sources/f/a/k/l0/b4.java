package f.a.k.l0;

/* loaded from: classes.dex */
public class b4 extends f.a.k.l0.a4 {
    public android.widget.RelativeLayout J;
    public android.view.View K;
    public android.widget.TextView L;
    public android.widget.RelativeLayout M;
    public android.view.View N;
    public android.widget.TextView O;
    public android.widget.RelativeLayout P;
    public android.view.View Q;
    public android.widget.TextView R;
    public android.widget.RelativeLayout S;
    public android.view.View T;
    public android.widget.TextView U;
    public android.widget.LinearLayout V;
    public android.widget.ImageView W;
    public android.widget.LinearLayout X;
    public android.widget.ImageView Y;
    public android.widget.LinearLayout Z;
    public android.widget.ImageView a0;
    public android.widget.RelativeLayout b0;
    public android.widget.ImageView c0;
    public android.widget.LinearLayout d0;
    public android.widget.RelativeLayout e0;
    public android.widget.LinearLayout f0;
    public android.widget.RelativeLayout g0;
    public android.widget.TextView h0;
    public android.graphics.Bitmap i0;
    public android.widget.RelativeLayout k0;
    public android.widget.ImageView l0;
    public android.widget.RelativeLayout m0;
    public android.widget.TextView n0;
    public android.widget.TextView o0;
    public android.widget.RelativeLayout p0;
    public androidx.appcompat.widget.AppCompatImageView q0;
    public androidx.appcompat.widget.AppCompatImageView r0;
    public android.net.wifi.WifiManager s0;
    public java.lang.String y0;
    public boolean j0 = false;
    public android.os.Handler t0 = new android.os.Handler();
    public int u0 = 0;
    public volatile boolean v0 = false;
    public final f.a.k.d0 w0 = new f.a.k.l0.b4.a();
    public java.lang.Runnable x0 = new java.lang.Runnable() { // from class: f.a.k.l0.n2
        @Override // java.lang.Runnable
        public final void run() {
            this.a.K0();
        }
    };
    public f.a.k.n0.j z0 = null;

    public class a extends f.a.k.d0 {
        public a() {
        }

        @Override // f.a.k.d0
        public void a(android.view.View view) {
            int id = view.getId();
            if (id == net.easyconn.R.id.btn_android) {
                f.a.k.l0.b4 b4Var = f.a.k.l0.b4.this;
                if (b4Var == null) {
                    throw null;
                }
                e.e.a.g.a("TabStatusTipFragment performAndroidBtnClick");
                b4Var.Z0(true);
                return;
            }
            if (id != net.easyconn.R.id.btn_ios) {
                return;
            }
            f.a.k.l0.b4 b4Var2 = f.a.k.l0.b4.this;
            if (b4Var2 == null) {
                throw null;
            }
            e.e.a.g.a("TabStatusTipFragment performIosBtnClick");
            b4Var2.Z0(false);
        }
    }

    public static /* synthetic */ void A0(android.view.View view, int i, android.view.View view2) {
        android.graphics.Rect rect = new android.graphics.Rect();
        view.getHitRect(rect);
        rect.left -= i;
        rect.top -= i;
        rect.right += i;
        rect.bottom += i;
        view2.setTouchDelegate(new android.view.TouchDelegate(rect, view));
    }

    public /* synthetic */ void B0() {
        this.c0.setVisibility(0);
        ((android.graphics.drawable.AnimationDrawable) this.l0.getBackground()).stop();
        this.l0.setVisibility(8);
        this.k0.setVisibility(8);
    }

    public /* synthetic */ void C0(android.view.View view) {
        R0();
    }

    public /* synthetic */ void D0(android.view.View view) {
        S0();
    }

    public /* synthetic */ void F0(android.view.View view) {
        T0();
    }

    public /* synthetic */ void G0(android.view.View view) {
        if (this.B.get() instanceof f.a.k.e0) {
            ((f.a.k.e0) this.B.get()).e();
        }
    }

    public /* synthetic */ void H0(android.view.View view) {
        ((f.a.k.g0) this.B.get()).l0();
    }

    @Override // f.a.k.l0.a4, f.a.k.k0.j
    public void I() {
        e.e.a.g.a("TabStatusTipFragment onConnectTimeout");
        if (this.I) {
            e.e.a.g.a("TabStatusTipFragment onConnectTimeout, fragment hidden, ignore");
            return;
        }
        if (!net.easyconn.EcApplication.isForeground) {
            e.e.a.g.a("TabStatusTipFragment onConnectTimeout, at background, ignore");
            return;
        }
        if (!this.z) {
            e.e.a.g.a("TabStatusTipFragment onConnectTimeout, no needShowTimeout, ignore");
            this.z = true;
        } else if (!this.x.a0()) {
            e.e.a.g.a("TabStatusTipFragment Phone not Connected, ignore");
        } else {
            net.easyconn.EcApplication.getInstance().showToastCustom(net.easyconn.R.string.read_version_error, 1);
            q();
        }
    }

    public /* synthetic */ void I0(android.view.View view) {
        V0();
    }

    public /* synthetic */ void J0(android.view.View view) {
        U0();
    }

    public /* synthetic */ void L0() {
        this.k0.setVisibility(0);
        this.l0.setVisibility(0);
        this.c0.setVisibility(8);
        ((android.graphics.drawable.AnimationDrawable) this.l0.getBackground()).start();
    }

    public /* synthetic */ void M0() {
        P0(true);
    }

    public /* synthetic */ void N0() {
        y0(true);
    }

    @Override // f.a.k.l0.a4, f.a.k.l0.i3
    public void O(android.view.View view) throws android.content.res.Resources.NotFoundException {
        super.O(view);
        this.h0 = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tv_device_tag);
        androidx.appcompat.widget.AppCompatImageView appCompatImageView = (androidx.appcompat.widget.AppCompatImageView) view.findViewById(net.easyconn.R.id.btn_about);
        this.q0 = appCompatImageView;
        appCompatImageView.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.w2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.G0(view2);
            }
        });
        androidx.appcompat.widget.AppCompatImageView appCompatImageView2 = (androidx.appcompat.widget.AppCompatImageView) view.findViewById(net.easyconn.R.id.btn_back);
        this.r0 = appCompatImageView2;
        appCompatImageView2.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.u2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.H0(view2);
            }
        });
        if (w0()) {
            e.e.a.g.a("TabStatusTipFragment initUsbConnectView");
            this.J = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.tab_title_usb);
            this.K = view.findViewById(net.easyconn.R.id.tab_title_usb_chosen);
            this.L = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tab_title_usb_text);
            this.J.setVisibility(0);
            this.J.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.x2
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    this.a.F0(view2);
                }
            });
            this.V = (android.widget.LinearLayout) view.findViewById(net.easyconn.R.id.tab_content_usb_connect);
            this.W = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.usb_iv_status);
        }
        if (u0()) {
            e.e.a.g.a("TabStatusTipFragment initApConnectView");
            this.S = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.tab_title_ap_connect);
            this.T = view.findViewById(net.easyconn.R.id.tab_title_ap_connect_chosen);
            this.U = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tab_title_ap_connect_text);
            this.S.setVisibility(0);
            this.S.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    this.a.C0(view2);
                }
            });
            this.X = (android.widget.LinearLayout) view.findViewById(net.easyconn.R.id.tab_content_ap_connect);
            this.Y = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.ap_qr_iv_status);
        }
        if (v0()) {
            e.e.a.g.a("TabStatusTipFragment initBleConnectView");
            this.P = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.tab_title_ble_qr);
            this.Q = view.findViewById(net.easyconn.R.id.tab_title_ble_qr_chosen);
            this.R = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tab_title_ble_qr_text);
            this.P.setVisibility(0);
            this.P.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.m2
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    this.a.D0(view2);
                }
            });
            this.Z = (android.widget.LinearLayout) view.findViewById(net.easyconn.R.id.tab_content_ble_qr_connect);
            this.a0 = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.ble_qr_iv_status);
        }
        if (x0()) {
            e.e.a.g.a("TabStatusTipFragment initWlanQrConnectView");
            this.M = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.tab_title_wlan_qr);
            this.N = view.findViewById(net.easyconn.R.id.tab_title_wlan_qr_chosen);
            this.O = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tab_title_wlan_qr_text);
            this.M.setVisibility(0);
            this.M.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.o2
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    this.a.I0(view2);
                }
            });
            this.b0 = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.tab_content_wlan_qr_connect);
            this.c0 = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.wlan_qr_iv_status);
            this.d0 = (android.widget.LinearLayout) view.findViewById(net.easyconn.R.id.btn_chosen_android_layout);
            this.f0 = (android.widget.LinearLayout) view.findViewById(net.easyconn.R.id.btn_chosen_ios_layout);
            this.g0 = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.btn_android);
            this.e0 = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.btn_ios);
            this.k0 = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.view_btn_mask);
            this.l0 = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.img_loading_mask);
            this.m0 = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.wlan_device_layout);
            this.o0 = (android.widget.TextView) view.findViewById(net.easyconn.R.id.wlan_device_name_text);
            this.n0 = (android.widget.TextView) view.findViewById(net.easyconn.R.id.wlan_device_pre_text);
            this.p0 = (android.widget.RelativeLayout) view.findViewById(net.easyconn.R.id.wlan_device_disconnect_btn);
            final android.widget.RelativeLayout relativeLayout = this.g0;
            final int dimensionPixelSize = getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_15);
            if (relativeLayout != null) {
                final android.view.View view2 = (android.view.View) relativeLayout.getParent();
                view2.post(new java.lang.Runnable() { // from class: f.a.k.l0.t2
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.k.l0.b4.A0(relativeLayout, dimensionPixelSize, view2);
                    }
                });
            }
            final android.widget.RelativeLayout relativeLayout2 = this.e0;
            final int dimensionPixelSize2 = getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_15);
            if (relativeLayout2 != null) {
                final android.view.View view3 = (android.view.View) relativeLayout2.getParent();
                view3.post(new java.lang.Runnable() { // from class: f.a.k.l0.t2
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.k.l0.b4.A0(relativeLayout2, dimensionPixelSize2, view3);
                    }
                });
            }
            this.g0.setOnClickListener(this.w0);
            this.e0.setOnClickListener(this.w0);
            this.p0.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.r2
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view4) {
                    this.a.J0(view4);
                }
            });
        }
        int iN0 = n0();
        if (iN0 == 0) {
            R0();
        } else if (iN0 == 1) {
            V0();
        } else if (iN0 == 2) {
            S0();
        } else if (iN0 == 3) {
            T0();
        }
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
        this.u0 = i;
        this.i0 = android.graphics.BitmapFactory.decodeResource(getResources(), net.easyconn.R.drawable.tabui_ic_phone_app_logo_jsbl);
    }

    @Override // f.a.k.l0.i3
    public void P() {
        this.j0 = false;
    }

    @Override // f.a.k.l0.i3
    public void Q() {
        if (net.easyconn.EcApplication.isForeground) {
            ((f.a.k.g0) this.B.get()).o0(false);
        }
    }

    public void Q0() {
        if (this.v0 || this.j0) {
            return;
        }
        Y0();
        e.e.a.g.a("TabStatusTipFragment openAp");
    }

    @Override // f.a.k.l0.i3
    public void R() {
        this.j0 = false;
        o0();
    }

    public void R0() {
        W0(this.X, this.U, this.T);
        if (x0()) {
            X0(this.b0, this.O, this.N);
        }
        if (v0()) {
            X0(this.Z, this.R, this.Q);
        }
        if (w0()) {
            X0(this.V, this.L, this.K);
        }
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.B.get()).a.edit();
        editorEdit.putInt("key_ec_tab_status_tip", 0);
        editorEdit.commit();
    }

    @Override // f.a.k.l0.i3
    public void S() {
        if (net.easyconn.EcApplication.isForeground) {
            ((f.a.k.g0) this.B.get()).o0(true);
        }
    }

    public void S0() {
        W0(this.Z, this.R, this.Q);
        if (x0()) {
            X0(this.b0, this.O, this.N);
        }
        if (u0()) {
            X0(this.X, this.U, this.T);
        }
        if (w0()) {
            X0(this.V, this.L, this.K);
        }
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.B.get()).a.edit();
        editorEdit.putInt("key_ec_tab_status_tip", 2);
        editorEdit.commit();
    }

    @Override // f.a.k.l0.i3
    public void T() {
        android.os.Handler handler;
        if (!x0()) {
            e.e.a.g.a("TabStatusTipFragment onApStateFail openAp return npt supportQrScan");
            return;
        }
        this.j0 = false;
        if (this.v0 || (handler = this.t0) == null) {
            return;
        }
        handler.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.d3
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Q0();
            }
        }, 500L);
    }

    public void T0() {
        W0(this.V, this.L, this.K);
        if (x0()) {
            X0(this.b0, this.O, this.N);
        }
        if (v0()) {
            X0(this.Z, this.R, this.Q);
        }
        if (u0()) {
            X0(this.X, this.U, this.T);
        }
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.B.get()).a.edit();
        editorEdit.putInt("key_ec_tab_status_tip", 3);
        editorEdit.commit();
    }

    @Override // f.a.k.l0.i3
    public void U() {
    }

    public void U0() {
        final net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager = ((f.a.k.g0) this.B.get()).t.f3174d;
        android.net.wifi.p2p.WifiP2pManager wifiP2pManager = ecWifiManager.h;
        if (wifiP2pManager == null) {
            e.e.a.g.a("EcWifiManager removeGroup mP2pManager==null");
        } else {
            wifiP2pManager.requestGroupInfo(ecWifiManager.j, new android.net.wifi.p2p.WifiP2pManager.GroupInfoListener() { // from class: f.a.i.i.c
                @Override // android.net.wifi.p2p.WifiP2pManager.GroupInfoListener
                public final void onGroupInfoAvailable(android.net.wifi.p2p.WifiP2pGroup wifiP2pGroup) {
                    ecWifiManager.f(wifiP2pGroup);
                }
            });
        }
        if (this.m0 != null) {
            e.e.a.g.a("TabStatusTipFragment hideWlanDevice");
            this.m0.setVisibility(8);
        }
    }

    @Override // f.a.k.l0.i3
    public void V() {
        o0();
    }

    public void V0() {
        W0(this.b0, this.O, this.N);
        if (v0()) {
            X0(this.Z, this.R, this.Q);
        }
        if (u0()) {
            X0(this.X, this.U, this.T);
        }
        if (w0()) {
            X0(this.V, this.L, this.K);
        }
        boolean z = f.a.i.g.a.b(this.B.get()).a.getBoolean("key_ec_qr_code_mode_android", true);
        e.a.c.a.a.z("EC_QR_CODE_MODE_ANDROID = ", z);
        if (z) {
            e.e.a.g.a("TabStatusTipFragment performAndroidBtnClick");
            Z0(true);
        } else {
            e.e.a.g.a("TabStatusTipFragment performIosBtnClick");
            Z0(false);
        }
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.B.get()).a.edit();
        editorEdit.putInt("key_ec_tab_status_tip", 1);
        editorEdit.commit();
    }

    public void W0(android.view.View view, android.widget.TextView textView, android.view.View view2) {
        android.app.Activity activity;
        int i;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("TabStatusTipFragment setTabChosen content = ");
        sbO.append(this.B.get().getResources().getResourceEntryName(view.getId()));
        sbO.append(" , titleText = ");
        sbO.append(this.B.get().getResources().getResourceEntryName(textView.getId()));
        sbO.append(" , titleChosen = ");
        sbO.append(this.B.get().getResources().getResourceEntryName(view2.getId()));
        e.e.a.g.a(sbO.toString());
        view.setVisibility(0);
        view2.setVisibility(0);
        if (f.a.i.m.g.u(this.B.get()) && f.a.i.m.g.c0(this.B.get())) {
            activity = this.B.get();
            i = net.easyconn.R.color.c_t1_d;
        } else {
            activity = this.B.get();
            i = net.easyconn.R.color.c_t1;
        }
        textView.setTextColor(d.g.f.a.b(activity, i));
        textView.setTextSize(0, getResources().getDimension(net.easyconn.R.dimen.sp_30));
    }

    public void X0(android.view.View view, android.widget.TextView textView, android.view.View view2) {
        android.app.Activity activity;
        int i;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("TabStatusTipFragment setTabUnChosen content = ");
        sbO.append(this.B.get().getResources().getResourceEntryName(view.getId()));
        sbO.append(" , titleText = ");
        sbO.append(this.B.get().getResources().getResourceEntryName(textView.getId()));
        sbO.append(" , titleChosen = ");
        sbO.append(this.B.get().getResources().getResourceEntryName(view2.getId()));
        e.e.a.g.a(sbO.toString());
        view.setVisibility(8);
        view2.setVisibility(8);
        if (f.a.i.m.g.u(this.B.get()) && f.a.i.m.g.c0(this.B.get())) {
            activity = this.B.get();
            i = net.easyconn.R.color.c_t2_d;
        } else {
            activity = this.B.get();
            i = net.easyconn.R.color.c_t2;
        }
        textView.setTextColor(d.g.f.a.b(activity, i));
        textView.setTextSize(0, getResources().getDimension(net.easyconn.R.dimen.sp_24));
    }

    public void Y0() {
        android.os.Handler handler;
        e.e.a.g.a("showLoadingMask");
        if (this.k0 == null || this.l0 == null || this.c0 == null) {
            e.e.a.g.a("showLoadingMask view null !! return");
        } else {
            if (this.v0 || (handler = this.t0) == null) {
                return;
            }
            handler.post(new java.lang.Runnable() { // from class: f.a.k.l0.v2
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.L0();
                }
            });
        }
    }

    public void Z0(boolean z) {
        android.os.Handler handler;
        java.lang.Runnable runnable;
        e.a.c.a.a.z("showSwitchBtn isAndroid=", z);
        this.g0.setEnabled(!z);
        this.e0.setEnabled(z);
        this.d0.setVisibility(z ? 0 : 8);
        this.f0.setVisibility(z ? 8 : 0);
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.B.get()).a.edit();
        editorEdit.putBoolean("key_ec_qr_code_mode_android", z);
        editorEdit.apply();
        e.e.a.g.a("put EC_QR_CODE_MODE_ANDROID:" + z);
        if (z) {
            y0(false);
            if (this.v0 || (handler = this.t0) == null) {
                return;
            } else {
                runnable = new java.lang.Runnable() { // from class: f.a.k.l0.l2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.M0();
                    }
                };
            }
        } else {
            P0(false);
            if (this.v0 || (handler = this.t0) == null) {
                return;
            } else {
                runnable = new java.lang.Runnable() { // from class: f.a.k.l0.y2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.N0();
                    }
                };
            }
        }
        handler.postDelayed(runnable, 500L);
    }

    public void a1() {
        android.os.Handler handler;
        if (!x0()) {
            e.e.a.g.a("TabStatusTipFragment updateAndroidUrl return npt supportQrScan");
            return;
        }
        if (f.a.i.g.a.b(this.B.get()).a.getBoolean("key_ec_qr_code_mode_android", true)) {
            java.lang.String strK0 = k0();
            if (e.a.c.a.a.D("TabStatusTipFragment setDeviceTag updateAndroidUrl ==>** androidUrl is ", strK0, strK0) || this.v0 || (handler = this.t0) == null) {
                return;
            }
            handler.post(new java.lang.Runnable() { // from class: f.a.k.l0.z2
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.O0();
                }
            });
        }
    }

    /* renamed from: b1, reason: merged with bridge method [inline-methods] */
    public void P0(final boolean z) {
        android.os.Handler handler;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("wifiEnabled enabled=");
        sb.append(z);
        sb.append(",isDestroy = ");
        e.a.c.a.a.C(sb, this.v0);
        if (this.v0) {
            return;
        }
        if (!z) {
            if (this.s0.isWifiEnabled()) {
                this.s0.setWifiEnabled(false);
                e.e.a.g.a("TabStatusTipFragment closeWifi");
                return;
            }
            return;
        }
        if (this.s0.isWifiEnabled()) {
            o0();
        } else {
            Y0();
            Y0();
            this.s0.setWifiEnabled(true);
            e.e.a.g.a("TabStatusTipFragment openWifi");
        }
        java.lang.String strK0 = k0();
        if (!e.a.c.a.a.D("==>** androidUrl is ", strK0, strK0)) {
            O0();
        } else {
            if (this.v0 || (handler = this.t0) == null) {
                return;
            }
            handler.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.q2
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.P0(z);
                }
            }, 500L);
        }
    }

    @Override // f.a.k.l0.a4
    public void c0(java.lang.String str) {
        java.lang.String str2;
        e.a.c.a.a.w("TabStatusTipFragment setDeviceTag tag is ", str);
        android.widget.TextView textView = this.h0;
        if (textView != null) {
            textView.setText(str);
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("TabStatusTipFragment setDeviceTag lastTag is ");
        sbO.append(this.y0);
        e.e.a.g.a(sbO.toString());
        if (!android.text.TextUtils.isEmpty(str)) {
            if (!android.text.TextUtils.isEmpty(this.y0)) {
                str2 = (this.y0.contains("Carbit-") && !str.contains("Carbit-")) ? "TabStatusTipFragment setDeviceTag contains Carbit" : "TabStatusTipFragment setDeviceTag TextUtils.isEmpty(lastTag)";
            }
            e.e.a.g.a(str2);
            a1();
        }
        this.y0 = str;
    }

    @Override // f.a.k.l0.a4, f.a.k.k0.j
    public void d() {
        e.e.a.g.a("TabStatusTipFragment onReadVersionTimeout");
        net.easyconn.EcApplication.getInstance().showToastCustom(net.easyconn.R.string.read_version_error, 1);
    }

    @Override // f.a.k.l0.a4
    public void h0() {
        e.e.a.g.a("TabStatusTipFragment showReconnecting");
        if (this.I) {
            e.e.a.g.a("TabStatusTipFragment showReconnecting, fragment hidden, ignore");
            return;
        }
        net.easyconn.EcApplication.getInstance().showToastCustom(net.easyconn.R.string.exit_app_after_connect_failure, 1);
        q();
        this.z = false;
    }

    /* renamed from: i0, reason: merged with bridge method [inline-methods] */
    public void y0(final boolean z) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("apEnabled enabled=");
        sb.append(z);
        sb.append(",isDestroy = ");
        e.a.c.a.a.C(sb, this.v0);
        if (this.v0) {
            return;
        }
        if (z) {
            e.e.a.g.a("open ap");
            net.easyconn.EcApplication.getInstance().executeTask(new java.lang.Runnable() { // from class: f.a.k.l0.p2
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.z0(z);
                }
            });
        } else {
            e.e.a.g.a("close ap");
            if (t0()) {
                e.e.a.g.a("TabStatusTipFragment closeAp");
            }
        }
    }

    public void j0() {
        if (f.a.i.m.g.e(this.B.get())) {
            int iN0 = n0();
            if (iN0 == 0) {
                R0();
                return;
            }
            if (iN0 == 1) {
                V0();
            } else if (iN0 == 2) {
                S0();
            } else {
                if (iN0 != 3) {
                    return;
                }
                T0();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String k0() {
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
            java.lang.String r0 = r9.l0()
            goto L90
        L7a:
            java.lang.ref.WeakReference<android.app.Activity> r0 = r9.B
            java.lang.Object r0 = r0.get()
            android.app.Activity r0 = (android.app.Activity) r0
            java.lang.String r2 = "EC_DEVICE_NAME"
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r2, r1)
            java.lang.String r1 = r9.l0()
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
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.b4.k0():java.lang.String");
    }

    public final java.lang.String l0() {
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

    public java.lang.String m0() {
        return ((f.a.k.g0) this.B.get()).B(new net.easyconn.ecsdk.ECTypes.ECQRInfo("", "", "", "", "", "", f.a.i.m.g.f(this.B.get()) ? 2 : 1));
    }

    public int n0() {
        e.e.a.g.a("TabStatusTipFragment getLastTab");
        int i = -1;
        int i2 = f.a.i.g.a.b(this.B.get()).a.getInt("key_ec_tab_status_tip", -1);
        e.a.c.a.a.v("TabStatusTipFragment getLastTab rememberTab = ", i2);
        if (i2 == -1) {
            e.e.a.g.a("TabStatusTipFragment getLastTab rememberTab == -1");
        } else {
            if ((i2 == 0 && u0()) || ((i2 == 1 && x0()) || ((i2 == 3 && w0()) || (i2 == 2 && v0())))) {
                return i2;
            }
            e.e.a.g.a("TabStatusTipFragment getLastTab rememberTab illegal");
            android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.B.get()).a.edit();
            editorEdit.putInt("key_ec_tab_status_tip", -1);
            editorEdit.commit();
        }
        if (u0()) {
            i = 0;
        } else if (x0()) {
            i = 1;
        } else if (v0()) {
            i = 2;
        }
        int i3 = (u0() || x0() || v0() || !w0()) ? i : 3;
        e.a.c.a.a.v("TabStatusTipFragment getLastTab getDefaultTab defaultTab = ", i3);
        return i3;
    }

    public void o0() {
        android.os.Handler handler;
        e.e.a.g.a("hideLoadingMask");
        if (this.k0 == null || this.l0 == null || this.c0 == null) {
            e.e.a.g.a("hideLoadingMask view null !! return");
        } else {
            if (this.v0 || (handler = this.t0) == null) {
                return;
            }
            handler.post(new java.lang.Runnable() { // from class: f.a.k.l0.i2
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.B0();
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        j0();
    }

    @Override // f.a.k.l0.a4, androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) throws android.content.res.Resources.NotFoundException {
        e.e.a.g.a("TabStatusTipFragment onCreateView");
        this.v0 = false;
        this.I = false;
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_tab_status_tip, viewGroup, false);
        this.s0 = (android.net.wifi.WifiManager) getActivity().getApplicationContext().getSystemService("wifi");
        O(viewInflate);
        return viewInflate;
    }

    @Override // f.a.k.l0.a4, f.a.k.l0.i3, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.v0 = true;
        this.t0.removeCallbacks(this.x0);
        this.t0.removeCallbacksAndMessages(null);
        this.t0 = null;
        super.onDestroy();
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
        e.e.a.g.a("TabStatusTipFragment onResume");
        java.lang.ref.WeakReference<android.app.Activity> weakReference = this.B;
        if (weakReference == null || !((f.a.k.g0) weakReference.get()).I()) {
            java.lang.ref.WeakReference<android.app.Activity> weakReference2 = this.B;
            if (weakReference2 != null) {
                str = ((f.a.k.g0) weakReference2.get()).r == this ? "TabStatusTipFragment onResume isLaunchByUSBAttached initQrCode return " : "TabStatusTipFragment onResume initQrCode return because is not this Fragment resume";
            }
            if (this.v0 || (handler = this.t0) == null) {
                return;
            }
            handler.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.s2
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.E0();
                }
            }, 0);
            return;
        }
        e.e.a.g.a(str);
    }

    public void p0(android.widget.ImageView imageView) {
        android.graphics.Bitmap bitmapCreateBitmap;
        android.os.Handler handler;
        e.e.a.g.a("TabStatusTipFragment initDownloadQrCode");
        java.lang.String strB = ((f.a.k.g0) this.B.get()).B(new net.easyconn.ecsdk.ECTypes.ECQRInfo("", "", "", "", "", "", this.u0));
        if (e.a.c.a.a.D("TabStatusTipFragment initQrCode url = ", strB, strB)) {
            if (this.v0 || (handler = this.t0) == null) {
                return;
            }
            handler.postDelayed(this.x0, 500L);
            return;
        }
        int iG = f.a.i.m.g.G(this.B.get().getApplicationContext());
        if (iG == 3) {
            strB = e.a.c.a.a.j(new java.lang.StringBuilder(), !f.a.i.m.g.h0(this.B.get().getApplicationContext()) ? "" : f.a.i.m.g.f2936c.getProperty("URI"), strB.substring(strB.substring(0, strB.indexOf("?")).length(), strB.length()));
        }
        java.lang.String str = strB;
        e.e.a.g.a("TabStatusTipFragment initQrCode flavor = " + iG + " url = " + str);
        int dimensionPixelSize = getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_176) - (getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_8) * 2);
        if (iG == 0 || iG == 3) {
            float f2 = dimensionPixelSize;
            int iU = d.s.y.u(this.B.get().getApplicationContext(), f2);
            int iU2 = d.s.y.u(this.B.get().getApplicationContext(), f2);
            try {
                java.util.Hashtable hashtable = new java.util.Hashtable();
                hashtable.put(e.c.c.b.CHARACTER_SET, "utf-8");
                hashtable.put(e.c.c.b.ERROR_CORRECTION, e.c.c.e.b.a.H);
                hashtable.put(e.c.c.b.MARGIN, 1);
                e.c.c.d.b bVarD = f.a.i.m.h.d(new e.c.c.e.a().a(str, e.c.c.a.QR_CODE, iU, iU2, null));
                int i = bVarD.a;
                int i2 = bVarD.b;
                int[] iArr = new int[i * i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    for (int i4 = 0; i4 < i; i4++) {
                        if (bVarD.a(i4, i3)) {
                            iArr[(i3 * i) + i4] = -16777216;
                        } else {
                            iArr[(i3 * i) + i4] = -1;
                        }
                    }
                }
                bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(i, i2, android.graphics.Bitmap.Config.ARGB_8888);
                bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
            } catch (java.lang.Exception unused) {
                bitmapCreateBitmap = null;
            }
        } else {
            bitmapCreateBitmap = f.a.i.m.h.c(str, d.s.y.u(this.B.get().getApplicationContext(), dimensionPixelSize), this.i0, d.s.y.u(this.B.get().getApplicationContext(), getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_20)));
        }
        imageView.setImageBitmap(bitmapCreateBitmap);
    }

    @Override // f.a.k.l0.a4, f.a.k.k0.j
    public void q() {
        e.e.a.g.a("TabStatusTipFragment dismissConnecting");
        f.a.k.n0.j jVar = this.z0;
        if (jVar != null) {
            jVar.a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0097  */
    /* renamed from: q0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void K0() {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.b4.K0():void");
    }

    /* renamed from: r0, reason: merged with bridge method [inline-methods] */
    public void O0() {
        java.lang.String strK0 = k0();
        if (e.a.c.a.a.D("TabStatusTipFragment initWlanApAndroidQrCode  ==>** androidUrl is ", strK0, strK0)) {
            return;
        }
        android.widget.ImageView imageView = this.c0;
        if (imageView != null) {
            imageView.setImageBitmap(f.a.i.m.h.c(strK0, d.s.y.u(this.B.get().getApplicationContext(), getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_160)), this.i0, d.s.y.u(this.B.get().getApplicationContext(), getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_20))));
        } else {
            e.e.a.g.c("TabStatusTipFragment initWlanApAndroidQrCode !!error!! wlanQrIvStatus == null", new java.lang.Object[0]);
        }
    }

    public void s0() {
        java.lang.String strM0 = m0();
        if (e.a.c.a.a.D("TabStatusTipFragment initWlanApAndroidQrCode  ==>** iosUrl is ", strM0, strM0)) {
            return;
        }
        android.widget.ImageView imageView = this.c0;
        if (imageView != null) {
            imageView.setImageBitmap(f.a.i.m.h.c(strM0, d.s.y.u(this.B.get().getApplicationContext(), getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_160)), this.i0, d.s.y.u(this.B.get().getApplicationContext(), getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_20))));
        } else {
            e.e.a.g.c("TabStatusTipFragment initWlanApIosQrCode !!error!! wlanQrIvStatus == null", new java.lang.Object[0]);
        }
    }

    @Override // f.a.k.l0.a4, f.a.k.k0.j
    public void t() {
        e.e.a.g.a("TabStatusTipFragment showConnecting");
        if (this.I) {
            e.e.a.g.a("TabStatusTipFragment showConnecting, fragment hidden, ignore");
            return;
        }
        if (this.z0 == null) {
            f.a.k.n0.j jVar = new f.a.k.n0.j(this.B.get());
            jVar.a = 105;
            jVar.F = net.easyconn.R.layout.layout_connecting_tabui;
            jVar.b = 202;
            jVar.J = false;
            this.z0 = jVar;
            android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) jVar.findViewById(net.easyconn.R.id.layoutPop);
            android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) this.z0.findViewById(net.easyconn.R.id.contentContainer);
            ((android.widget.RelativeLayout) this.z0.findViewById(net.easyconn.R.id.layout_pop_root_view)).setBackgroundColor(d.g.f.a.b(this.B.get(), net.easyconn.R.color.status_tip_connecting_progress_bg));
            android.view.ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
            layoutParams.width = -2;
            frameLayout.setLayoutParams(layoutParams);
            linearLayout.setBackgroundColor(d.g.f.a.b(this.B.get(), android.R.color.transparent));
            android.view.ViewGroup.LayoutParams layoutParams2 = linearLayout.getLayoutParams();
            layoutParams2.width = -2;
            linearLayout.setLayoutParams(layoutParams2);
        }
        if (this.z0.c()) {
            return;
        }
        this.z0.d();
        this.z = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean t0() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
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
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.b4.t0():boolean");
    }

    public final boolean u0() {
        boolean z = (f.a.i.m.g.g(this.B.get()) || f.a.i.m.g.a || f.a.i.m.g.Z(this.B.get()) || (!f.a.i.m.g.D(this.B.get()) && !f.a.i.m.g.E(this.B.get()))) ? false : true;
        e.a.c.a.a.z("TabStatusTipFragment isShowApContent = ", z);
        return z;
    }

    public final boolean v0() {
        boolean Z = f.a.i.m.g.Z(this.B.get());
        e.a.c.a.a.z("TabStatusTipFragment isShowBleQrContent = ", Z);
        return Z;
    }

    public final boolean w0() {
        boolean z = f.a.i.m.g.q(this.B.get()) || f.a.i.m.g.r(this.B.get());
        e.a.c.a.a.z("TabStatusTipFragment isShowUsbContent = ", z);
        return z;
    }

    public final boolean x0() {
        boolean z = f.a.i.m.g.g(this.B.get()) || f.a.i.m.g.a;
        e.a.c.a.a.z("TabStatusTipFragment isShowWlanQrContent = ", z);
        return z;
    }

    public /* synthetic */ void z0(final boolean z) {
        if (t0()) {
            o0();
        } else {
            Y0();
            Q0();
        }
        java.lang.String strM0 = m0();
        if (!e.a.c.a.a.D("==>** iosUrl is ", strM0, strM0)) {
            this.t0.post(new java.lang.Runnable() { // from class: f.a.k.l0.a3
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.s0();
                }
            });
        } else {
            if (this.v0) {
                return;
            }
            this.t0.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.k2
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.y0(z);
                }
            }, 500L);
        }
    }
}
