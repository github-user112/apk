package f.a.k.l0;

/* loaded from: classes.dex */
public class z3 extends f.a.k.l0.i3 implements f.a.k.k0.h {
    public f.a.k.k0.g A;
    public f.a.k.n0.j C;
    public f.a.k.n0.j D;
    public f.a.k.n0.j F;
    public android.widget.ImageView t;
    public android.widget.ImageView u;
    public android.widget.ImageView v;
    public android.widget.TextView w;
    public android.widget.RelativeLayout x;
    public java.lang.ref.WeakReference<android.app.Activity> s = null;
    public android.net.ConnectivityManager.NetworkCallback y = null;
    public boolean z = false;
    public android.view.animation.Animation B = null;

    @Override // f.a.d
    public void E(f.a.k.k0.g gVar) {
        this.A = gVar;
    }

    @Override // f.a.k.k0.h
    public void G() {
        e.e.a.g.a("QrRegisterFragment onQuickCheckLicenseSuccess");
        this.z = false;
        this.s.get().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.a2
            @Override // java.lang.Runnable
            public final void run() {
                this.a.k0();
            }
        });
    }

    @Override // f.a.k.k0.h
    public void J() {
        e.e.a.g.a("QrRegisterFragment onQuickCheckLicenseStarted");
        this.z = true;
        this.s.get().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.x1
            @Override // java.lang.Runnable
            public final void run() throws android.content.res.Resources.NotFoundException {
                this.a.j0();
            }
        });
    }

    @Override // f.a.k.l0.i3
    public void L(android.content.Context context) {
        super.L(context);
        if (android.os.Build.VERSION.SDK_INT < 24) {
            e.e.a.g.a("QrRegisterFragment dealConnectivityAction");
            b0();
        }
    }

    public final void b0() {
        android.net.NetworkInfo activeNetworkInfo;
        e.e.a.g.a("QrRegisterFragment checkNetwork");
        android.app.Activity activity = this.s.get();
        if ((activity == null || (activeNetworkInfo = ((android.net.ConnectivityManager) activity.getSystemService("connectivity")).getActiveNetworkInfo()) == null) ? false : activeNetworkInfo.isConnected()) {
            e.e.a.g.a("QrRegisterFragment checkNetwork connected");
            n0(true);
        } else {
            e.e.a.g.a("QrRegisterFragment checkNetwork lost");
            n0(false);
        }
    }

    public final java.lang.String c0() {
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        jSONObject.put("id", (java.lang.Object) this.A.b());
        jSONObject.put("pd", (java.lang.Object) this.A.V());
        jSONObject.put("f", (java.lang.Object) java.lang.Integer.valueOf(f.a.i.m.g.G(this.s.get())));
        jSONObject.put("md", (java.lang.Object) java.lang.Integer.valueOf(f.a.i.m.g.k(this.s.get())));
        jSONObject.put("pc", (java.lang.Object) f.a.i.m.g.N(this.s.get()));
        java.lang.String jSONString = jSONObject.toJSONString();
        e.a.c.a.a.w("QrRegisterFragment generateQrString jsonString = ", jSONString);
        return jSONString;
    }

    public /* synthetic */ void d0(android.view.View view) {
        e.e.a.g.a("QrRegisterFragment back btn clicked");
        ((f.a.k.g0) this.s.get()).K();
    }

    public /* synthetic */ void e0(android.view.View view) {
        if (this.z) {
            return;
        }
        this.A.s();
    }

    public /* synthetic */ void f0(android.view.View view) {
        this.D.a();
        ((f.a.k.g0) this.s.get()).K();
    }

    public /* synthetic */ void g0(int i, java.lang.String str) {
        int iK = f.a.i.m.g.k(getContext());
        f.a.i.g.a.b(getContext()).c("key_ec_sdk_auth_state", 0);
        f.a.k.n0.j jVarA = new f.a.k.n0.j.a(this.s.get()).f(net.easyconn.R.layout.layout_pop_dialog_authfail).b(false).d(iK + "." + d.s.y.m).g().a();
        this.D = jVarA;
        jVarA.d();
        this.D.findViewById(net.easyconn.R.id.btnConfirm).setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.e2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.f0(view);
            }
        });
        this.D.findViewById(net.easyconn.R.id.btnAuthText).setOnClickListener(new f.a.k.l0.y3(this, i, iK, str));
        e.e.a.g.b("QrRegisterFragment onDefaultCheckLicenseError, errCode = %d, errMsg = %s", java.lang.Integer.valueOf(i), str);
    }

    public /* synthetic */ void h0(boolean z) {
        android.widget.TextView textView;
        java.lang.String string;
        int i;
        if (z) {
            textView = this.w;
            string = getString(net.easyconn.R.string.qr_register_confirm_text_prefix);
            i = net.easyconn.R.string.qr_register_confirm_text_not_register;
        } else {
            textView = this.w;
            string = getString(net.easyconn.R.string.qr_register_confirm_text_prefix);
            i = net.easyconn.R.string.qr_register_confirm_text_check_network;
        }
        textView.setText(string.concat(getString(i)));
    }

    public /* synthetic */ void i0() {
        net.easyconn.EcApplication.getInstance().showToast(getString(net.easyconn.R.string.qr_register_check_license_fail), 0);
        o0();
    }

    public /* synthetic */ void j0() throws android.content.res.Resources.NotFoundException {
        if (this.B == null) {
            android.view.animation.Animation animationLoadAnimation = android.view.animation.AnimationUtils.loadAnimation(this.s.get(), net.easyconn.R.anim.qr_register_update_animation);
            this.B = animationLoadAnimation;
            this.u.setAnimation(animationLoadAnimation);
            this.u.startAnimation(this.B);
            this.x.setEnabled(false);
        }
    }

    @Override // f.a.k.k0.h
    public void k(final int i, final java.lang.String str) {
        this.s.get().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.w1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.g0(i, str);
            }
        });
    }

    public /* synthetic */ void k0() {
        ((f.a.k.e0) this.s.get()).g();
    }

    public /* synthetic */ void l0() {
        this.t.setImageBitmap(f.a.i.m.h.a(c0()));
    }

    public /* synthetic */ void m0() {
        if (this.B != null) {
            this.u.clearAnimation();
            this.B = null;
            this.x.setEnabled(true);
        }
    }

    public final void n0(final boolean z) {
        e.e.a.g.a("QrRegisterFragment onNetWorkStateChange connected = " + z + ", isDetached = " + isDetached());
        if (isDetached()) {
            e.e.a.g.a("QrRegisterFragment onNetWorkStateChange is detached, return");
        } else {
            this.s.get().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.z1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.h0(z);
                }
            });
        }
    }

    public final void o0() {
        e.e.a.g.a("QrRegisterFragment updateUiOnCheckLicenseStop");
        this.s.get().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.y1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.m0();
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(android.app.Activity activity) {
        e.e.a.g.a("onAttach parameter is activity");
        super.onAttach(activity);
        if (android.os.Build.VERSION.SDK_INT < 23) {
            e.e.a.g.a("onAttachToContext");
            this.s = new java.lang.ref.WeakReference<>(activity);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_qr_register, viewGroup, false);
        super.O(viewInflate);
        android.widget.ImageView imageView = (android.widget.ImageView) viewInflate.findViewById(net.easyconn.R.id.img_qr_code);
        this.t = imageView;
        imageView.setOnClickListener(new f.a.k.l0.w3(this));
        this.u = (android.widget.ImageView) viewInflate.findViewById(net.easyconn.R.id.img_update);
        android.widget.ImageView imageView2 = (android.widget.ImageView) viewInflate.findViewById(net.easyconn.R.id.btn_back);
        this.v = imageView2;
        imageView2.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.b2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.d0(view);
            }
        });
        this.w = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.tv_qr_register_confirm_text);
        android.widget.RelativeLayout relativeLayout = (android.widget.RelativeLayout) viewInflate.findViewById(net.easyconn.R.id.btn_update);
        this.x = relativeLayout;
        relativeLayout.setEnabled(false);
        this.x.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.d2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.e0(view);
            }
        });
        e.e.a.g.a("QrRegisterFragment showQr");
        this.s.get().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.c2
            @Override // java.lang.Runnable
            public final void run() {
                this.a.l0();
            }
        });
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            e.e.a.g.a("QrRegisterFragment registerNetworkCallback");
            android.net.NetworkRequest networkRequestBuild = new android.net.NetworkRequest.Builder().addTransportType(0).addTransportType(1).build();
            android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) this.s.get().getSystemService("connectivity");
            f.a.k.l0.x3 x3Var = new f.a.k.l0.x3(this);
            this.y = x3Var;
            if (connectivityManager == null) {
                e.e.a.g.c("QrRegisterFragment registerNetworkCallback connectivityManager is null", new java.lang.Object[0]);
            } else {
                connectivityManager.registerNetworkCallback(networkRequestBuild, x3Var);
            }
        }
        b0();
        if (!this.z) {
            this.A.s();
        }
        return viewInflate;
    }

    @Override // f.a.k.l0.i3, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            e.e.a.g.a("QrRegisterFragment unRegisterNetworkCallback");
            if (this.y != null) {
                android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) this.s.get().getSystemService("connectivity");
                if (connectivityManager == null) {
                    e.e.a.g.c("QrRegisterFragment unRegisterNetworkCallback connectivityManager is null", new java.lang.Object[0]);
                } else {
                    connectivityManager.unregisterNetworkCallback(this.y);
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        f.a.k.n0.j jVar = this.C;
        if (jVar != null && jVar.c()) {
            this.C.a();
            this.C = null;
        }
        f.a.k.n0.j jVar2 = this.D;
        if (jVar2 != null && jVar2.c()) {
            this.D.a();
            this.D = null;
        }
        f.a.k.n0.j jVar3 = this.F;
        if (jVar3 == null || !jVar3.c()) {
            return;
        }
        this.F.a();
        this.F = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        e.e.a.g.a("onDetach");
        super.onDetach();
    }

    @Override // f.a.k.k0.h
    public void r(int i, java.lang.String str) {
        e.e.a.g.a("QrRegisterFragment onQuickCheckLicenseStarted");
        if (isDetached()) {
            e.e.a.g.a("QrRegisterFragment onQuickCheckLicenseStarted is detached, return");
        } else {
            this.z = false;
            this.s.get().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.v1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.i0();
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    @android.annotation.TargetApi(23)
    public void onAttach(android.content.Context context) {
        e.e.a.g.a("onAttach");
        super.onAttach(context);
        e.e.a.g.a("onAttachToContext");
        this.s = new java.lang.ref.WeakReference<>((android.app.Activity) context);
    }
}
