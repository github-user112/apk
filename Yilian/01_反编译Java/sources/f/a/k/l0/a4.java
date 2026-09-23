package f.a.k.l0;

/* loaded from: classes.dex */
public class a4 extends f.a.k.l0.i3 implements f.a.k.k0.j {
    public android.text.SpannableStringBuilder A;
    public f.a.k.n0.j C;
    public f.a.k.n0.j D;
    public f.a.k.n0.j F;
    public f.a.k.n0.j G;
    public f.a.k.n0.j H;
    public android.widget.ImageView s;
    public android.widget.TextView t;
    public android.widget.ImageView u;
    public android.widget.TextView v;
    public android.view.View w;
    public f.a.k.k0.i x;
    public f.a.k.f0 y;
    public volatile boolean z = true;
    public java.lang.ref.WeakReference<android.app.Activity> B = null;
    public boolean I = true;

    public class a extends android.text.style.ClickableSpan {
        public a() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(android.view.View view) {
            f.a.k.l0.a4 a4Var = f.a.k.l0.a4.this;
            if (a4Var.B.get() instanceof f.a.k.e0) {
                ((f.a.k.e0) a4Var.B.get()).l();
            }
            view.postInvalidateDelayed(250L);
        }
    }

    public class b implements android.view.View.OnClickListener {
        public int a = 0;
        public final /* synthetic */ int b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f3039c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f3040d;

        public b(int i, int i2, java.lang.String str) {
            this.b = i;
            this.f3039c = i2;
            this.f3040d = str;
        }

        public /* synthetic */ void a(boolean z) {
            this.a = 0;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            int i = this.a + 1;
            this.a = i;
            if (i >= 5) {
                f.a.k.l0.a4 a4Var = f.a.k.l0.a4.this;
                f.a.k.n0.j jVar = new f.a.k.n0.j(a4Var.B.get());
                jVar.a = 103;
                jVar.J = false;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed:");
                sbO.append(this.b);
                jVar.w = sbO.toString();
                jVar.x = java.lang.String.format("UUID:%s\nPhone's IMEI:%s\nChannel:%s\nErrorMsg:%s", d.s.y.m, d.s.y.u, java.lang.Integer.toString(this.f3039c), this.f3040d);
                f.a.k.n0.j.c cVar = new f.a.k.n0.j.c() { // from class: f.a.k.l0.f2
                    @Override // f.a.k.n0.j.c
                    public final void a(boolean z) {
                        this.a.a(z);
                    }
                };
                jVar.b = 200;
                jVar.B = "OK";
                jVar.u = cVar;
                jVar.d();
                a4Var.D = jVar;
            }
        }
    }

    public class c implements f.a.k.n0.j.d {
        public final /* synthetic */ java.lang.String a;

        public c(java.lang.String str) {
            this.a = str;
        }

        @Override // f.a.k.n0.j.d
        public void a(boolean z) {
            int iW = f.a.i.l.a.w(f.a.k.l0.a4.this.B.get().getApplicationContext(), this.a, "net.easyconn.fileProvider");
            if (iW != 65536) {
                e.a.c.a.a.v("installApkFilePreCheck fail:", iW);
                f.a.k.l0.a4 a4Var = f.a.k.l0.a4.this;
                f.a.k.n0.j jVar = new f.a.k.n0.j(a4Var.B.get());
                jVar.a = 100;
                jVar.x = jVar.G.getString(net.easyconn.R.string.ota_install_error);
                jVar.b = 200;
                jVar.B = jVar.G.getString(net.easyconn.R.string.confirm_txt);
                jVar.u = null;
                jVar.d();
                a4Var.H = jVar;
            }
            f.a.k.l0.a4.this.x.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 5, "EC_MAIN_DISCOVER_NEW_VERSION_UPDATE");
        }

        @Override // f.a.k.n0.j.d
        public void b() {
        }
    }

    @Override // f.a.d
    public void E(f.a.k.k0.i iVar) {
        this.x = iVar;
    }

    @Override // f.a.k.k0.j
    public void I() {
        e.e.a.g.a("StatusTipFragment onConnectTimeout");
        if (this.I) {
            e.e.a.g.a("StatusTipFragment onConnectTimeout, fragment hidden, ignore");
            return;
        }
        if (!net.easyconn.EcApplication.isForeground) {
            e.e.a.g.a("StatusTipFragment onConnectTimeout, at background, ignore");
            return;
        }
        if (!this.z) {
            e.e.a.g.a("StatusTipFragment onConnectTimeout, no needShowTimeout, ignore");
            this.z = true;
        } else if (!this.x.a0()) {
            e.e.a.g.a("StatusTipFragment Phone not Connected, ignore");
        } else {
            net.easyconn.EcApplication.getInstance().showToastCustom(net.easyconn.R.string.read_version_error, 1);
            q();
        }
    }

    @Override // f.a.k.l0.i3
    public void O(android.view.View view) throws android.content.res.Resources.NotFoundException {
        android.content.res.Resources resources;
        int i;
        super.O(view);
        view.findViewById(net.easyconn.R.id.fragment_status_tip_text_part1);
        this.w = view.findViewById(net.easyconn.R.id.fragment_status_tip_text_part2);
        this.s = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.iv_status);
        this.t = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tv_status_tip);
        this.u = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.fragment_status_tip_progressbar);
        android.widget.TextView textView = (android.widget.TextView) view.findViewById(net.easyconn.R.id.tv_vice_status_tip);
        this.v = textView;
        int iG = f.a.i.m.g.G(this.B.get().getApplicationContext());
        textView.setText(getResources().getString((iG == 0 || iG == 3) ? net.easyconn.R.string.install_open_tip_hz : net.easyconn.R.string.install_open_tip));
        this.w.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.h2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.a0(view2);
            }
        });
        this.y = (f.a.k.f0) this.B.get();
        this.A = new android.text.SpannableStringBuilder();
        int iG2 = f.a.i.m.g.G(this.B.get().getApplicationContext());
        boolean zF = f.a.i.m.g.F(this.B.get().getApplicationContext());
        if (iG2 == 0 || iG2 == 3) {
            resources = getResources();
            i = zF ? net.easyconn.R.string.unplugin_tip_hz : net.easyconn.R.string.unplugin_tip_usb_hz;
        } else {
            resources = getResources();
            i = zF ? net.easyconn.R.string.unplugin_tip : net.easyconn.R.string.unplugin_tip_usb;
        }
        java.lang.String string = resources.getString(i);
        this.A.append((java.lang.CharSequence) string);
        int iIndexOf = string.indexOf("Wi-Fi");
        if (iIndexOf < 0) {
            return;
        }
        int i2 = iIndexOf + 5;
        this.A.setSpan(new f.a.k.l0.a4.a(), iIndexOf, i2, 33);
        this.A.setSpan(new android.text.style.ForegroundColorSpan(android.graphics.Color.parseColor("#1EA0FF")), iIndexOf, i2, 33);
    }

    public /* synthetic */ void a0(android.view.View view) {
        if (this.B.get() instanceof f.a.k.e0) {
            ((f.a.k.e0) this.B.get()).m();
        }
    }

    public /* synthetic */ void b0(int i, java.lang.String str, android.view.View view) {
        this.x.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 22, java.lang.String.valueOf(i) + str);
        this.C.a();
        ((f.a.k.g0) this.B.get()).K();
    }

    public void c0(java.lang.String str) {
    }

    @Override // f.a.k.k0.j
    public void d() {
    }

    public void d0() {
        h0();
    }

    @Override // f.a.k.k0.j
    public void e() {
        e.a.c.a.a.C(e.a.c.a.a.o("showInitView, isHide is "), this.I);
        f.a.k.f0 f0Var = this.y;
        if (f0Var != null) {
            if (!this.I) {
                f0Var.j();
            }
            this.y.f();
        }
        android.widget.ImageView imageView = this.u;
        if (imageView != null) {
            imageView.setVisibility(8);
            this.t.setMovementMethod(android.text.method.LinkMovementMethod.getInstance());
            this.t.setText(this.A);
            this.w.setVisibility(0);
        }
    }

    public void e0(final int i, final java.lang.String str) {
        if (this.B.get() == null) {
            return;
        }
        int iK = f.a.i.m.g.k(getContext());
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putInt("key_ec_sdk_auth_state", 0);
        editorEdit.commit();
        f.a.k.n0.j jVar = new f.a.k.n0.j(this.B.get());
        jVar.a = 105;
        jVar.F = net.easyconn.R.layout.layout_pop_dialog_authfail;
        jVar.J = false;
        jVar.x = iK + "." + d.s.y.m;
        jVar.b = 202;
        this.C = jVar;
        jVar.d();
        this.C.findViewById(net.easyconn.R.id.btnConfirm).setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.g2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.b0(i, str, view);
            }
        });
        this.C.findViewById(net.easyconn.R.id.btnAuthText).setOnClickListener(new f.a.k.l0.a4.b(i, iK, str));
        e.e.a.g.b("errCode = %d, errMsg = %s", java.lang.Integer.valueOf(i), str);
    }

    public void f0(int i, java.lang.String str) {
        java.lang.String[] strArrSplit;
        if (this.B.get() == null) {
            return;
        }
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putInt("key_ec_sdk_auth_state", 1);
        editorEdit.commit();
        int iK = f.a.i.m.g.k(getContext());
        if (i == 8224) {
            java.lang.String str2 = (android.text.TextUtils.isEmpty(str) || (strArrSplit = str.split(":")) == null || strArrSplit.length - 1 != 1) ? str : strArrSplit[1];
            f.a.k.n0.j jVar = new f.a.k.n0.j(this.B.get());
            jVar.a = 103;
            jVar.w = "Registration Successful!";
            jVar.x = java.lang.String.format("UUID:%s\nPhone's IMEI:%s\nChannel:%s\nAuthorization remaining:%s", d.s.y.m, d.s.y.u, java.lang.Integer.toString(iK), str2);
            jVar.b = 200;
            jVar.B = "OK";
            jVar.u = null;
            jVar.d();
            this.F = jVar;
        }
        e.e.a.g.b("authCode = %d, authMsg = %s, phoneimei = %s", java.lang.Integer.valueOf(i), str, d.s.y.u);
    }

    public void g0(java.lang.String str, java.lang.String str2) {
        java.lang.ref.WeakReference<android.app.Activity> weakReference;
        if (str == null || (weakReference = this.B) == null || weakReference.get() == null) {
            return;
        }
        f.a.k.n0.j jVar = new f.a.k.n0.j(this.B.get());
        jVar.a = 103;
        jVar.w = jVar.G.getString(net.easyconn.R.string.install_new_version_txt);
        jVar.x = str2;
        f.a.k.l0.a4.c cVar = new f.a.k.l0.a4.c(str);
        jVar.b = 201;
        jVar.C = jVar.G.getString(net.easyconn.R.string.update_txt);
        jVar.D = jVar.G.getString(net.easyconn.R.string.cancel_txt);
        jVar.t = cVar;
        this.G = jVar;
        jVar.d();
    }

    public void h0() {
        e.e.a.g.a("showReconnecting");
        f.a.k.f0 f0Var = this.y;
        if (f0Var != null) {
            f0Var.o();
            this.y.f();
        }
        if (this.t != null) {
            e.e.a.g.a("showReconnecting please reset");
            this.t.setText(net.easyconn.R.string.exit_app_after_connect_failure);
        }
        android.widget.ImageView imageView = this.u;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        android.view.View view = this.w;
        if (view != null) {
            view.setVisibility(8);
        }
        q();
        this.z = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(android.app.Activity activity) {
        e.e.a.g.a("onAttach parameter is activity");
        super.onAttach(activity);
        if (android.os.Build.VERSION.SDK_INT < 23) {
            e.e.a.g.a("onAttachToContext");
            this.B = new java.lang.ref.WeakReference<>(activity);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) throws android.content.res.Resources.NotFoundException {
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_status_tip, viewGroup, false);
        O(viewInflate);
        e();
        this.I = false;
        return viewInflate;
    }

    @Override // f.a.k.l0.i3, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        e.e.a.g.a("StatusTipFragment onDestroy.");
        this.y = null;
        this.x.onDestroy();
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
        if (jVar3 != null && jVar3.c()) {
            this.F.a();
            this.F = null;
        }
        f.a.k.n0.j jVar4 = this.G;
        if (jVar4 != null && jVar4.c()) {
            this.G.a();
            this.G = null;
        }
        f.a.k.n0.j jVar5 = this.H;
        if (jVar5 == null || !jVar5.c()) {
            return;
        }
        this.H.a();
        this.H = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        e.e.a.g.a("onDetach");
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        e.a.c.a.a.z("onHiddenChanged hidden=", z);
        this.I = z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        e.e.a.g.a("StatusTipFragment onPause.");
    }

    @Override // f.a.k.l0.i3, androidx.fragment.app.Fragment
    public void onResume() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        super.onResume();
        e.e.a.g.a("StatusTipFragment onResume.");
        this.x.onStart();
    }

    @Override // f.a.k.k0.j
    public void q() {
    }

    @Override // f.a.k.k0.j
    public void t() {
        e.e.a.g.a("showConnecting");
        f.a.k.f0 f0Var = this.y;
        if (f0Var != null) {
            f0Var.o();
            this.y.a();
        }
        android.widget.TextView textView = this.t;
        if (textView != null) {
            textView.setText(net.easyconn.R.string.connecting_tip);
        }
        android.widget.ImageView imageView = this.u;
        if (imageView != null) {
            imageView.setVisibility(0);
            ((android.graphics.drawable.AnimationDrawable) this.u.getBackground()).start();
        }
        android.view.View view = this.w;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @android.annotation.TargetApi(23)
    public void onAttach(android.content.Context context) {
        e.e.a.g.a("onAttach");
        super.onAttach(context);
        e.e.a.g.a("onAttachToContext");
        this.B = new java.lang.ref.WeakReference<>((android.app.Activity) context);
    }
}
