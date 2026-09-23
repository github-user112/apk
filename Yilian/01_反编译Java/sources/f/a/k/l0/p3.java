package f.a.k.l0;

/* loaded from: classes.dex */
public class p3 extends androidx.fragment.app.Fragment implements android.view.SurfaceHolder.Callback, android.view.View.OnTouchListener, f.a.k.k0.d, net.easyconn.framework.broadcast.BroadcastManager.e {
    public android.view.ViewTreeObserver.OnGlobalLayoutListener A;
    public android.widget.TextView B;
    public f.a.k.k0.c C;
    public f.a.k.n0.j D;
    public f.a.k.n0.j F;
    public android.widget.FrameLayout a;
    public android.view.SurfaceView b;

    /* renamed from: c, reason: collision with root package name */
    public android.view.View f3073c;

    /* renamed from: d, reason: collision with root package name */
    public android.view.View f3074d;

    /* renamed from: e, reason: collision with root package name */
    public net.easyconn.ui.widget.EcEditText f3075e;

    /* renamed from: g, reason: collision with root package name */
    public net.easyconn.ui.widget.EcFloatButton f3077g;
    public net.easyconn.ui.widget.EcFloatMenu h;
    public boolean i;
    public int j;
    public f.a.k.n0.j p;
    public android.os.Handler z;

    /* renamed from: f, reason: collision with root package name */
    public volatile f.a.i.o.a f3076f = null;
    public java.lang.Boolean k = java.lang.Boolean.FALSE;
    public int l = 0;
    public int m = 0;
    public int n = -1;
    public int o = -1;
    public boolean q = false;
    public android.app.Activity r = null;
    public int s = 5;
    public boolean t = false;
    public int u = 0;
    public boolean v = false;
    public boolean w = false;
    public boolean x = false;
    public boolean y = false;

    public static class a extends android.os.Handler {
        public boolean a = false;
        public boolean b = false;

        /* renamed from: c, reason: collision with root package name */
        public final f.a.k.l0.p3 f3078c;

        /* renamed from: f.a.k.l0.p3$a$a, reason: collision with other inner class name */
        public class RunnableC0091a implements java.lang.Runnable {
            public RunnableC0091a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                f.a.k.l0.p3.a.this.b = false;
            }
        }

        public a(java.lang.ref.WeakReference<f.a.k.l0.p3> weakReference) {
            this.f3078c = weakReference.get();
        }

        public /* synthetic */ void a() {
            this.a = false;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0140  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r14) {
            /*
                Method dump skipped, instructions count: 399
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.p3.a.handleMessage(android.os.Message):void");
        }
    }

    @Override // f.a.k.k0.d
    public void A(final boolean z) {
        android.app.Activity activity = this.r;
        if (activity == null || this.h == null) {
            return;
        }
        activity.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.w0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Q(z);
            }
        });
    }

    @Override // f.a.k.k0.d
    public void B() {
        e.e.a.g.a("MirrorFragment hideAssistantButton");
        this.i = false;
        i0(false);
        j0(false);
    }

    @Override // f.a.k.k0.d
    public void C() {
        if (this.f3073c != null) {
            B();
            this.f3073c.setVisibility(0);
        }
    }

    @Override // f.a.k.k0.d
    public void D(net.easyconn.ecsdk.ECTypes.ECInputInfo eCInputInfo) {
        android.os.Handler handler;
        e.e.a.g.c("showKeyboard callback", new java.lang.Object[0]);
        if (this.r == null || (handler = this.z) == null) {
            return;
        }
        handler.removeMessages(1);
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = eCInputInfo;
        this.z.sendMessage(messageObtain);
    }

    @Override // f.a.d
    public void E(f.a.k.k0.c cVar) {
        this.C = cVar;
    }

    @Override // f.a.k.k0.d
    public void F(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        if (!this.t || !this.C.y()) {
            e.e.a.g.c("mirrorPlay isMirrorConnectionOpen false ,return", new java.lang.Object[0]);
        } else if (this.f3076f != null) {
            this.C.k(getActivity());
            this.f3076f.c(bArr, i, i2, i3, i4, i5);
        }
    }

    @Override // f.a.k.k0.d
    public void H(byte[] bArr, int i, int i2) {
        if (f.a.i.n.b.I) {
            e.a.c.a.a.C(e.a.c.a.a.o("MirrorFragment mirrorPlay mSurfaceAvailable = "), this.t);
        }
        if (this.t && this.C.y()) {
            if (this.f3076f != null) {
                this.C.k(getActivity());
                this.f3076f.b(bArr, i, i2);
                return;
            }
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("mirrorPlay isMirrorConnectionOpen false ,return. mSurfaceAvailable ");
        sbO.append(this.t);
        sbO.append(" isMirrorConnectionOpen + ");
        sbO.append(this.C.y());
        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3 A[ORIG_RETURN, RETURN] */
    @Override // f.a.k.k0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void K() {
        /*
            r4 = this;
            android.content.Context r0 = r4.getContext()
            boolean r0 = f.a.i.m.g.n(r0)
            if (r0 != 0) goto Lb
            return
        Lb:
            java.lang.String r0 = "MirrorFragment showAssistantButton start"
            e.e.a.g.a(r0)
            r0 = 1
            r4.i = r0
            boolean r0 = r4.x
            if (r0 != 0) goto L1d
            java.lang.String r0 = "showAssistantButton mirrorSizeChangedCalled false, return"
        L19:
            e.e.a.g.a(r0)
            return
        L1d:
            android.view.View r0 = r4.f3073c
            if (r0 == 0) goto La4
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L29
            goto La4
        L29:
            net.easyconn.ui.widget.EcFloatButton r0 = r4.f3077g
            boolean r0 = r0.p
            r4.j0(r0)
            r1 = r0 ^ 1
            r4.i0(r1)
            net.easyconn.ui.widget.EcFloatMenu r1 = r4.h
            boolean r1 = r1.i
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "MirrorFragment showAssistantButton AoaStyle = "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r3 = " showEcFloatMenu = "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            e.e.a.g.a(r2)
            r2 = 1058642330(0x3f19999a, float:0.6)
            if (r1 == 0) goto L6e
            if (r0 != 0) goto L6d
            net.easyconn.ui.widget.EcFloatButton r0 = r4.f3077g
            r1 = 0
            r0.setJustEcHome(r1)
            net.easyconn.ui.widget.EcFloatButton r0 = r4.f3077g
            r0.setJustSystemHome(r1)
        L67:
            net.easyconn.ui.widget.EcFloatButton r0 = r4.f3077g
            r0.setAlpha(r2)
            goto L76
        L6d:
            return
        L6e:
            if (r0 != 0) goto L76
            java.lang.String r0 = "MirrorFragment showAssistantButton ecFloatButton2 VISIBLE = true"
            e.e.a.g.a(r0)
            goto L67
        L76:
            net.easyconn.ui.widget.EcFloatButton r0 = r4.f3077g
            int r0 = r0.getVisibility()
            if (r0 != 0) goto La3
            java.lang.Boolean r0 = r4.k
            if (r0 != 0) goto L91
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r4.k = r0
            net.easyconn.ui.widget.EcFloatButton r0 = r4.f3077g
            f.a.k.l0.c3 r1 = new f.a.k.l0.c3
            r1.<init>()
        L8d:
            r0.post(r1)
            goto La3
        L91:
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto La3
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r4.k = r0
            net.easyconn.ui.widget.EcFloatButton r0 = r4.f3077g
            f.a.k.l0.c3 r1 = new f.a.k.l0.c3
            r1.<init>()
            goto L8d
        La3:
            return
        La4:
            java.lang.String r0 = "showAssistantButton mAuthPendingTip ing, return"
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.p3.K():void");
    }

    public void L() {
        int i;
        this.n = f.a.i.m.g.L(this.r);
        this.o = f.a.i.m.g.K(this.r);
        int iN = this.C.N();
        int iL0 = this.C.l0();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("MirrorFragment surfaceCreated ");
        sbO.append(toString());
        sbO.append(", width=");
        sbO.append(this.n);
        sbO.append(", height=");
        sbO.append(this.o);
        e.e.a.g.a(sbO.toString());
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("MirrorFragment surfaceCreated mirrorWidth=");
        sb.append(iN);
        sb.append(", mirrorHeight=");
        e.a.c.a.a.A(sb, iL0);
        final android.view.ViewGroup.LayoutParams layoutParams = this.b.getLayoutParams();
        int i2 = this.n;
        float f2 = iN;
        float f3 = i2 / f2;
        int i3 = this.o;
        float f4 = iL0;
        float f5 = i3 / f4;
        if (f3 >= f5) {
            int i4 = (int) (f5 * f2);
            int i5 = (i2 - i4) / 2;
            this.l = i5;
            if (i5 < 0) {
                i5 = 0;
            }
            this.l = i5;
            this.m = 0;
            layoutParams.width = i4;
            i = this.o;
        } else {
            i = (int) (f3 * f4);
            this.l = 0;
            int i6 = (i3 - i) / 2;
            this.m = i6;
            this.m = i6 >= 0 ? i6 : 0;
            layoutParams.width = this.n;
        }
        layoutParams.height = i;
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("MirrorFragment surfaceCreated para.width=");
        sbO2.append(layoutParams.width);
        sbO2.append(",para.height=");
        sbO2.append(layoutParams.height);
        e.e.a.g.a(sbO2.toString());
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        sb2.append("MirrorFragment surfaceCreated offsetX=");
        sb2.append(this.l);
        sb2.append(",offsetY=");
        e.a.c.a.a.A(sb2, this.m);
        this.r.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.o0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.O(layoutParams);
            }
        });
    }

    public void M() {
        if (this.q) {
            if (this.f3076f == null) {
                this.f3076f = new f.a.i.n.a(this.b, this.r);
                return;
            }
            return;
        }
        if (this.f3076f == null) {
            e.e.a.g.a("MirrorFragment new mEcVideoPlayer .");
            this.f3076f = new f.a.i.n.b(this.C.U());
        } else {
            e.e.a.g.a("MirrorFragment  mEcVideoPlayer set ios");
            ((f.a.i.n.b) this.f3076f).i = this.C.U();
        }
        ((f.a.i.n.b) this.f3076f).k = f.a.i.m.g.S(this.r);
    }

    public boolean N(android.app.Activity activity) {
        if (activity == null) {
            return false;
        }
        int height = activity.getWindow().getDecorView().getHeight();
        android.graphics.Rect rect = new android.graphics.Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        e.e.a.g.a("MirrorFragment isSoftShowing screenHeight:" + height + " rect.bottom:" + rect.bottom);
        int i = (height * 3) / 4;
        int i2 = rect.bottom;
        android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i3 = displayMetrics.heightPixels;
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        int i4 = displayMetrics.heightPixels;
        e.e.a.g.a("MirrorFragment getSoftButtonsBarHeight realHeight:" + i4 + " usableHeight:" + i3);
        return i > i2 + (i4 > i3 ? i4 - i3 : 0);
    }

    public /* synthetic */ void O(android.view.ViewGroup.LayoutParams layoutParams) {
        this.b.setLayoutParams(layoutParams);
    }

    public /* synthetic */ void P() {
        f.a.k.n0.j jVar = this.p;
        if (jVar == null || !jVar.c()) {
            return;
        }
        this.p.a();
        this.p = null;
    }

    public /* synthetic */ void Q(boolean z) {
        this.h.a(z);
    }

    public /* synthetic */ void R() {
        this.C.K(getContext());
    }

    public /* synthetic */ void S() {
        this.C.W();
    }

    public void T(android.view.View view) {
        net.easyconn.EcApplication ecApplication;
        java.lang.Runnable runnable;
        net.easyconn.ui.widget.EcFloatButton ecFloatButton = this.f3077g;
        if (ecFloatButton.n) {
            ecFloatButton.f(true);
            ecApplication = (net.easyconn.EcApplication) this.r.getApplication();
            runnable = new java.lang.Runnable() { // from class: f.a.k.l0.l0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.R();
                }
            };
        } else {
            if (!ecFloatButton.o) {
                return;
            }
            ecFloatButton.f(true);
            ecApplication = (net.easyconn.EcApplication) this.r.getApplication();
            runnable = new java.lang.Runnable() { // from class: f.a.k.l0.x0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.S();
                }
            };
        }
        ecApplication.executeTaskDelay(runnable, 360L);
    }

    public void U(int i, int i2) {
        e.e.a.g.a("MirrorFragment onSelectionChanged->start:" + i + ",end:" + i2);
        e.e.a.g.a("MirrorFragment setOnSelectChangedListenerCalled->start:" + i + ",end:" + i2);
        this.C.T(i, i2);
    }

    public /* synthetic */ void V() {
        if (this.i) {
            K();
        } else {
            B();
        }
    }

    public /* synthetic */ void W(java.lang.String str) {
        net.easyconn.ui.widget.EcEditText ecEditText = this.f3075e;
        if (ecEditText != null) {
            ecEditText.setText(str);
        }
    }

    public /* synthetic */ void X(int i, int i2) {
        net.easyconn.ui.widget.EcEditText ecEditText = this.f3075e;
        if (ecEditText != null && i >= 0 && i2 >= 0 && i <= ecEditText.length() && i2 <= this.f3075e.length()) {
            this.f3075e.setSelection(i, i2);
        }
        e.e.a.g.a("MirrorFragment setSelection: " + i + " " + i2);
    }

    public /* synthetic */ void Y(int i, int i2) {
        this.f3077g.j(i, i2);
    }

    public /* synthetic */ void Z(boolean z) {
        if (z) {
            K();
        } else {
            B();
        }
    }

    @Override // f.a.k.k0.d
    public void a() {
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.a1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.d0();
            }
        });
    }

    public /* synthetic */ void a0(int i) {
        int i2;
        java.lang.String string;
        if (isAdded()) {
            if (i == -4) {
                i2 = net.easyconn.R.string.transport_failed;
                string = getString(i2);
            } else if (i == -3) {
                net.easyconn.EcApplication.getInstance().showToast(getString(net.easyconn.R.string.network_error), 1);
                return;
            } else if (i != -2) {
                if (i != -1) {
                    string = "";
                }
                i2 = net.easyconn.R.string.transport_failed;
                string = getString(i2);
            } else {
                i2 = net.easyconn.R.string.storage_not_enough;
                string = getString(i2);
            }
            f.a.k.n0.j jVarA = new f.a.k.n0.j.a(this.r).d(string).b(false).h(net.easyconn.R.string.confirm_txt, null).a();
            this.D = jVarA;
            jVarA.d();
        }
    }

    @Override // f.a.k.k0.d
    public void b(java.lang.String str, float f2, final int i, final int i2, final int i3) {
        android.app.Activity activity = this.r;
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.n0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b0(i2, i3, i);
            }
        });
    }

    public /* synthetic */ void b0(int i, int i2, int i3) {
        if (isAdded()) {
            java.lang.String str = java.lang.String.format(java.util.Locale.getDefault(), getString(net.easyconn.R.string.ota_transporting_tip), i + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + i2);
            java.lang.StringBuilder sbO = e.a.c.a.a.o("%d");
            sbO.append(getString(net.easyconn.R.string.minute_txt));
            java.lang.String str2 = java.lang.String.format(sbO.toString(), java.lang.Integer.valueOf((i3 / 60) + 1));
            if (this.p == null) {
                f.a.k.n0.j.a aVar = new f.a.k.n0.j.a(this.r);
                aVar.b(false);
                aVar.e(102);
                aVar.k(str);
                aVar.l(getString(net.easyconn.R.string.ota_left_time_txt));
                aVar.i(str2);
                aVar.h(net.easyconn.R.string.cancel_txt, new f.a.k.l0.o3(this));
                f.a.k.n0.j jVarA = aVar.a();
                this.p = jVarA;
                jVarA.d();
            }
            this.p.setPercentText(str2);
        }
    }

    @Override // f.a.k.k0.d
    public void c(final java.lang.String str) {
        android.app.Activity activity = this.r;
        if (activity != null) {
            activity.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.v0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.W(str);
                }
            });
        }
    }

    public /* synthetic */ void c0(boolean z) {
        l0();
    }

    public /* synthetic */ void d0() {
        this.F = new f.a.k.n0.j.a(getActivity()).e(100).c(net.easyconn.R.string.ota_install_error).h(net.easyconn.R.string.confirm_txt, new f.a.k.n0.j.c() { // from class: f.a.k.l0.y0
            @Override // f.a.k.n0.j.c
            public final void a(boolean z) {
                this.a.c0(z);
            }
        }).a().d();
    }

    public /* synthetic */ void e0() throws java.lang.InterruptedException {
        java.lang.String str;
        for (int i = 0; i < 5; i++) {
            e.e.a.g.a("MirrorFragment open.");
            boolean zY = this.C.y();
            e.a.c.a.a.z("MirrorFragment open. isMirrorConnectionOpen = ", zY);
            if (zY) {
                boolean zA = this.f3076f.a(this.C.N(), this.C.l0(), this.b.getHolder().getSurface());
                e.a.c.a.a.z("MirrorFragment open. openResult = ", zA);
                if (zA) {
                    this.C.i0();
                    return;
                }
                e.e.a.g.a("MirrorFragment open wait start");
                try {
                    java.lang.Thread.sleep(400L);
                } catch (java.lang.InterruptedException e2) {
                    e2.printStackTrace();
                }
                str = "MirrorFragment open wait end";
            } else {
                e.e.a.g.a("MirrorFragment open wait start1");
                try {
                    java.lang.Thread.sleep(400L);
                } catch (java.lang.InterruptedException e3) {
                    e3.printStackTrace();
                }
                str = "MirrorFragment open wait end1";
            }
            e.e.a.g.a(str);
        }
    }

    public void f0() {
    }

    @Override // f.a.k.k0.d
    public void g() {
        android.app.Activity activity = this.r;
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.z0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.P();
            }
        });
    }

    public void g0(boolean z) {
        java.lang.String str;
        if (z) {
            if (this.b.getVisibility() == 8) {
                return;
            }
            this.b.setVisibility(8);
            str = "MirrorFragment onHidden SurfaceView set GONE";
        } else {
            if (this.b.getVisibility() == 0) {
                return;
            }
            this.b.setVisibility(0);
            str = "MirrorFragment onHidden SurfaceView set VISIBLE";
        }
        e.e.a.g.a(str);
    }

    @Override // f.a.k.k0.d
    public void h(final int i, java.lang.String str) {
        android.app.Activity activity = this.r;
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.q0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a0(i);
            }
        });
    }

    public void h0() {
        android.widget.FrameLayout frameLayout = this.a;
        if (frameLayout == null || this.A == null) {
            return;
        }
        frameLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this.A);
        this.A = null;
    }

    @Override // f.a.k.k0.d
    public void i() {
        android.view.View view = this.f3073c;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void i0(boolean z) {
        if (this.f3077g != null) {
            e.a.c.a.a.z("MirrorFragment set EcFloatButton Visible = ", z);
            this.f3077g.setVisibility(z ? 0 : 4);
        }
    }

    @Override // f.a.k.k0.d
    public void j(boolean z, int i) {
    }

    public void j0(boolean z) {
        if (this.h != null) {
            e.a.c.a.a.z("MirrorFragment set EcFloatMenu Visible = ", z);
            this.h.setVisibility(z ? 0 : 8);
        }
    }

    public void k0() {
        if (f.a.i.m.g.n(getContext())) {
            final int width = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_button_left", -100);
            final int i = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_button_top", -100);
            if (i == -100 && width == -100) {
                width = (this.j - this.f3077g.getWidth()) / 3;
                i = 0;
            }
            e.e.a.g.a("setFloatButtonDefaultPosition finalLeft = " + width + " finalTop = " + i);
            net.easyconn.ui.widget.EcFloatButton ecFloatButton = this.f3077g;
            if (ecFloatButton != null) {
                ecFloatButton.post(new java.lang.Runnable() { // from class: f.a.k.l0.p0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.Y(width, i);
                    }
                });
            }
        }
    }

    @Override // f.a.k.k0.d
    public void l(int i, int i2, int i3) {
        int i4;
        int i5;
        this.x = true;
        if (f.a.i.m.g.n(getContext())) {
            if (this.C.U()) {
                e.e.a.g.a("MirrorFragment mirrorSizeChanged width is isIosStream, return");
                return;
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("MirrorFragment mirrorSizeChanged width = ");
            sb.append(i);
            sb.append(" height = ");
            sb.append(i2);
            sb.append(" direction = ");
            e.a.c.a.a.A(sb, i3);
            int width = this.b.getWidth();
            int height = this.b.getHeight();
            int iL = f.a.i.m.g.L(this.r);
            int iK = f.a.i.m.g.K(this.r);
            int iN = this.C.N();
            float f2 = i;
            int i6 = (int) ((((width - iN) / iN) * f2) + f2);
            int iL0 = (int) ((f2 * ((height - r5) / this.C.l0())) + i2);
            int i7 = iL - i6;
            int i8 = iK - iL0;
            if (i7 <= 0) {
                i7 = 0;
            }
            if (i8 <= 0) {
                i8 = 0;
            }
            if (i7 > i8) {
                i4 = i7 / 2;
                i5 = 1;
            } else {
                i4 = i8 / 2;
                i5 = 0;
            }
            int iU = d.s.y.u(this.r, 80);
            if (i5 == 1) {
                iU = (iL * 12) / 100;
            }
            e.e.a.g.a("MirrorFragment mirrorSizeChanged blackWidth = " + i7 + " blackHeight = " + i8 + " blackMargin = " + i4 + " threshold = " + iU);
            boolean zBooleanValue = (!f.a.i.m.g.h0(getContext()) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f.a.i.m.g.f2936c.getProperty("SHOW_FLOAT_BUTTON_ONLY", "false"))).booleanValue();
            e.a.c.a.a.z("MirrorFragment mirrorSizeChanged onlyShowFloatButton = ", zBooleanValue);
            boolean z = !zBooleanValue && i4 >= iU;
            if (!z) {
                i5 = 0;
            }
            this.h.setMenuOrientation(i5);
            e.e.a.g.a("MirrorFragment showMenu = " + z);
            this.w = z;
            this.f3077g.l(z);
            if (!this.y) {
                this.f3077g.l(false);
            }
            this.r.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.r0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.V();
                }
            });
        }
    }

    public void l0() {
        ((net.easyconn.EcApplication) this.r.getApplicationContext()).executeTask(new java.lang.Runnable() { // from class: f.a.k.l0.f0
            @Override // java.lang.Runnable
            public final void run() throws java.lang.InterruptedException {
                this.a.e0();
            }
        });
    }

    @Override // f.a.k.k0.d
    public void n() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(android.app.Activity activity) {
        e.e.a.g.a("MirrorFragment onAttach parameter is activity");
        super.onAttach(activity);
        if (android.os.Build.VERSION.SDK_INT < 23) {
            e.e.a.g.a("MirrorFragment onAttachToContext");
            this.r = activity;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        this.z = new f.a.k.l0.p3.a(new java.lang.ref.WeakReference(this));
        java.lang.StringBuilder sbO = e.a.c.a.a.o("MirrorFragment onCreate mHandler = ");
        sbO.append(this.z);
        e.e.a.g.a(sbO.toString());
    }

    @Override // androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_mirror, viewGroup, false);
        e.e.a.g.a("MirrorFragment initKeyBoardStateListener");
        this.a = (android.widget.FrameLayout) viewInflate.findViewById(net.easyconn.R.id.surfaceView_container);
        this.A = new f.a.k.l0.m3(this);
        this.a.getViewTreeObserver().addOnGlobalLayoutListener(this.A);
        this.q = false;
        e.a.c.a.a.C(e.a.c.a.a.o("MirrorFragment enableSoftDecode = "), this.q);
        if (this.q) {
            viewInflate.findViewById(net.easyconn.R.id.videoSurfaceView).setVisibility(8);
            android.view.SurfaceView surfaceView = (android.view.SurfaceView) viewInflate.findViewById(net.easyconn.R.id.softSurfaceView);
            this.b = surfaceView;
            ((net.easyconn.framework.video.SoftSurfaceView) surfaceView).setCallback(this);
            ((net.easyconn.framework.video.SoftSurfaceView) this.b).setRenderer(1);
            this.b.setVisibility(0);
        } else {
            android.view.SurfaceView surfaceView2 = (android.view.SurfaceView) viewInflate.findViewById(net.easyconn.R.id.videoSurfaceView);
            this.b = surfaceView2;
            surfaceView2.getHolder().addCallback(this);
        }
        this.b.setOnTouchListener(this);
        net.easyconn.ui.widget.EcEditText ecEditText = (net.easyconn.ui.widget.EcEditText) viewInflate.findViewById(net.easyconn.R.id.txtInput);
        this.f3075e = ecEditText;
        ecEditText.addTextChangedListener(new f.a.k.l0.k3(this));
        this.f3075e.setOnEditorActionListener(new f.a.k.l0.l3(this));
        this.f3075e.setOnSelectChangedListener(new net.easyconn.ui.widget.EcEditText.a() { // from class: f.a.k.l0.u0
            @Override // net.easyconn.ui.widget.EcEditText.a
            public final void a(int i, int i2) {
                this.a.U(i, i2);
            }
        });
        this.f3073c = viewInflate.findViewById(net.easyconn.R.id.aoa_auth_pending_tip_content);
        this.f3074d = viewInflate.findViewById(net.easyconn.R.id.wifi_low_speed_tip_content);
        if (f.a.i.m.g.S(getContext())) {
            e.e.a.g.a("MirrorFragment addFpsTextView");
            android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 5, 0, 0);
            layoutParams.gravity = 81;
            android.widget.TextView textView = new android.widget.TextView(getContext());
            this.B = textView;
            textView.setTextColor(com.umeng.analytics.pro.bi.a);
            this.B.setLayoutParams(layoutParams);
            this.B.setVisibility(0);
            this.B.setTextSize(20.0f);
            this.a.addView(this.B);
            android.os.Handler handler = this.z;
            if (handler != null) {
                handler.sendEmptyMessage(0);
            }
        }
        if (f.a.i.m.g.n(getContext())) {
            int iL = f.a.i.m.g.L(this.r);
            int iK = f.a.i.m.g.K(this.r);
            e.e.a.g.a("MirrorFragment AreaView: width=" + iL + " height=" + iK);
            this.f3077g = (net.easyconn.ui.widget.EcFloatButton) viewInflate.findViewById(net.easyconn.R.id.ecFloatButton);
            this.h = (net.easyconn.ui.widget.EcFloatMenu) viewInflate.findViewById(net.easyconn.R.id.ecFloatMenu);
            this.f3077g.setScreenWidth(iL);
            this.f3077g.setScreenHeight(iK);
            this.j = iL;
            this.f3077g.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.b1
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    this.a.T(view);
                }
            });
            this.f3077g.setEcFloatMenu(this.h);
            boolean zI = this.C.I();
            boolean zL = this.C.l();
            e.e.a.g.a("MirrorFragment initFloatButton isShowSystemHomeButton = " + zI + " isShowYiJiaButton = " + zL);
            if (!zI && !zL) {
                B();
            } else if (zI) {
                net.easyconn.ui.widget.EcFloatButton ecFloatButton = this.f3077g;
                if (zL) {
                    ecFloatButton.setJustEcHome(false);
                    this.f3077g.setJustSystemHome(false);
                    this.h.h(true);
                    this.h.g(true);
                } else {
                    ecFloatButton.setJustSystemHome(true);
                }
            } else {
                this.f3077g.setJustEcHome(true);
            }
            this.h.setMenuButtonClickListener(new f.a.k.l0.n3(this));
        }
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        h0();
        super.onDestroy();
        e.e.a.g.a("MirrorFragment onDestroy.");
        this.C.onDestroy();
        this.f3076f = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        e.e.a.g.a("MirrorFragment onDestroyView");
        this.C.B();
        this.C.onDestroyView();
        f.a.k.n0.j jVar = this.F;
        if (jVar != null && jVar.c()) {
            this.F.a();
            this.F = null;
        }
        f.a.k.n0.j jVar2 = this.p;
        if (jVar2 != null && jVar2.c()) {
            this.p.a();
            this.p = null;
        }
        f.a.k.n0.j jVar3 = this.D;
        if (jVar3 != null && jVar3.c()) {
            this.D.a();
            this.D = null;
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        e.e.a.g.a("MirrorFragment onDetach");
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        e.a.c.a.a.z("MirrorFragment onHiddenChanged hidden=", z);
        super.onHiddenChanged(z);
        g0(z);
    }

    @Override // f.a.k.k0.d
    public void onMirrorRequestReconnect() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        p();
        e.e.a.g.a("MirrorFragment onPause.");
        this.C.w(true);
        if (f.a.i.m.g.n(getContext())) {
            this.f3077g.c();
            B();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        e.e.a.g.a("MirrorFragment onResume.");
        e.e.a.g.a("MirrorFragment onResumeImpl.");
        this.C.w(false);
        this.C.onStart();
        M();
        this.C.p();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        e.e.a.g.a("MirrorFragment onStop.");
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
        net.easyconn.ui.widget.EcFloatMenu ecFloatMenu;
        net.easyconn.ui.widget.EcFloatButton ecFloatButton = this.f3077g;
        if (ecFloatButton != null && !ecFloatButton.J) {
            this.f3077g.f(this.h.getMenuCount() != 0);
        }
        if (!f.a.i.m.g.T(this.r) && (ecFloatMenu = this.h) != null && ecFloatMenu.getVisibility() == 0 && (!this.h.i || !this.f3077g.p)) {
            return true;
        }
        float fP = f.a.i.m.g.P(this.r);
        if (motionEvent.getActionMasked() != 2) {
            int actionIndex = motionEvent.getActionIndex();
            this.C.d0(new f.a.i.i.x(((int) (motionEvent.getX(actionIndex) * fP)) - this.l, ((int) (motionEvent.getY(actionIndex) * fP)) - this.m, motionEvent.getActionMasked(), motionEvent.getPointerId(actionIndex)));
            return true;
        }
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            if (i < this.s) {
                this.C.d0(new f.a.i.i.x(((int) (motionEvent.getX(i) * fP)) - this.l, ((int) (motionEvent.getY(i) * fP)) - this.m, motionEvent.getActionMasked(), motionEvent.getPointerId(i)));
            }
        }
        return true;
    }

    @Override // f.a.k.k0.d
    public void p() {
        android.os.Handler handler;
        e.e.a.g.c("hideKeyboard callback", new java.lang.Object[0]);
        if (this.r == null || (handler = this.z) == null) {
            return;
        }
        handler.removeMessages(1);
        this.z.sendEmptyMessage(2);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(android.view.SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("MirrorFragment surfaceChanged ");
        sbO.append(toString());
        e.e.a.g.a(sbO.toString());
        if (surfaceHolder == null) {
            L();
            M();
            l0();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(android.view.SurfaceHolder surfaceHolder) {
        e.e.a.g.a("MirrorFragment  surfaceCreated .");
        this.t = true;
        L();
        M();
        if (surfaceHolder == null) {
            return;
        }
        l0();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(android.view.SurfaceHolder surfaceHolder) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("MirrorFragment surfaceDestroyed ");
        sbO.append(toString());
        e.e.a.g.a(sbO.toString());
        this.t = false;
        net.easyconn.ui.widget.EcFloatButton ecFloatButton = this.f3077g;
        if (ecFloatButton != null) {
            this.k = java.lang.Boolean.FALSE;
            ecFloatButton.i((int) ecFloatButton.getX(), (int) this.f3077g.getY(), false);
        }
        this.C.p0();
        if (this.f3076f != null) {
            this.f3076f.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00d4  */
    @Override // f.a.k.k0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void u(boolean r7) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.p3.u(boolean):void");
    }

    @Override // f.a.k.k0.d
    public void w() {
        android.view.View view = this.f3074d;
        if (view != null) {
            view.setVisibility(8);
        }
        if (getContext() != null) {
            net.easyconn.EcApplication.getInstance().showToast(net.easyconn.R.string.wifi_low_speed_tip, 0);
        }
    }

    @Override // f.a.k.k0.d
    public void y(final int i, final int i2) {
        android.app.Activity activity = this.r;
        if (activity != null) {
            activity.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.m0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.X(i, i2);
                }
            });
        }
    }

    @Override // f.a.k.k0.d
    public void z() {
        android.view.View view = this.f3074d;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @android.annotation.TargetApi(23)
    public void onAttach(android.content.Context context) {
        e.e.a.g.a("MirrorFragment onAttach");
        super.onAttach(context);
        e.e.a.g.a("MirrorFragment onAttachToContext");
        this.r = (android.app.Activity) context;
    }
}
