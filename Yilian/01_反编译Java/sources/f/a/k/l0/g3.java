package f.a.k.l0;

/* loaded from: classes.dex */
public class g3 extends androidx.fragment.app.Fragment implements f.a.k.k0.b {
    public android.widget.TextView a;
    public android.widget.TextView b;

    /* renamed from: c, reason: collision with root package name */
    public android.widget.TextView f3045c;

    /* renamed from: d, reason: collision with root package name */
    public android.widget.LinearLayout f3046d;

    /* renamed from: e, reason: collision with root package name */
    public android.widget.TextView f3047e;

    /* renamed from: f, reason: collision with root package name */
    public f.a.k.n0.j f3048f;

    /* renamed from: g, reason: collision with root package name */
    public android.view.View f3049g;
    public android.view.View h;
    public android.widget.Button i;
    public android.widget.TextView j;
    public f.a.k.k0.a k;
    public f.a.k.n0.j m;
    public f.a.k.n0.j n;
    public f.a.k.n0.j o;
    public f.a.k.n0.j p;
    public f.a.k.n0.j q;
    public f.a.k.n0.j r;
    public f.a.k.n0.j s;
    public f.a.k.n0.j t;
    public android.widget.TextView v;
    public f.a.k.n0.j w;
    public boolean l = false;
    public java.lang.StringBuffer u = new java.lang.StringBuffer();

    public class a implements android.view.View.OnTouchListener {
        public float a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public float f3050c;

        /* renamed from: d, reason: collision with root package name */
        public float f3051d;

        /* renamed from: e, reason: collision with root package name */
        public float f3052e;

        /* renamed from: f, reason: collision with root package name */
        public float f3053f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ android.view.WindowManager.LayoutParams f3054g;
        public final /* synthetic */ android.view.WindowManager h;
        public final /* synthetic */ android.view.View i;

        public a(f.a.k.l0.g3 g3Var, android.view.WindowManager.LayoutParams layoutParams, android.view.WindowManager windowManager, android.view.View view) {
            this.f3054g = layoutParams;
            this.h = windowManager;
            this.i = view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
            float rawY;
            int action = motionEvent.getAction();
            if (action == 0) {
                this.a = motionEvent.getRawX();
                rawY = motionEvent.getRawY();
            } else {
                if (action != 2) {
                    return false;
                }
                this.f3050c = motionEvent.getRawX();
                float rawY2 = motionEvent.getRawY();
                this.f3051d = rawY2;
                float f2 = this.f3050c - this.a;
                this.f3052e = f2;
                float f3 = rawY2 - this.b;
                this.f3053f = f3;
                android.view.WindowManager.LayoutParams layoutParams = this.f3054g;
                layoutParams.x = (int) (layoutParams.x + f2);
                layoutParams.y = (int) (layoutParams.y + f3);
                this.h.updateViewLayout(this.i, layoutParams);
                this.a = this.f3050c;
                rawY = this.f3051d;
            }
            this.b = rawY;
            return false;
        }
    }

    public static /* synthetic */ void N(android.view.View view, int i, android.view.View view2) {
        android.graphics.Rect rect = new android.graphics.Rect();
        view.getHitRect(rect);
        rect.left -= i;
        rect.top -= i;
        rect.right += i;
        rect.bottom += i;
        view2.setTouchDelegate(new android.view.TouchDelegate(rect, view));
    }

    @Override // f.a.d
    public void E(f.a.k.k0.a aVar) {
        this.k = aVar;
    }

    public void L() {
    }

    public /* synthetic */ void M() {
        f.a.k.n0.j jVar = this.f3048f;
        if (jVar != null) {
            jVar.a();
            this.f3048f = null;
        }
    }

    public /* synthetic */ void O(android.widget.TextView textView, android.view.WindowManager windowManager, android.view.View view, android.view.WindowManager.LayoutParams layoutParams) {
        textView.setText(this.u.toString());
        windowManager.updateViewLayout(view, layoutParams);
    }

    public /* synthetic */ void P(final android.widget.TextView textView, final android.view.WindowManager windowManager, final android.view.View view, final android.view.WindowManager.LayoutParams layoutParams, java.lang.String str) {
        this.u.append(str);
        this.u.append("\n");
        getActivity().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.m
            @Override // java.lang.Runnable
            public final void run() {
                this.a.O(textView, windowManager, view, layoutParams);
            }
        });
    }

    public void Q(android.view.WindowManager windowManager, android.view.View view, android.view.View view2) {
        this.v = null;
        f.a.i.f.a.logger.a = null;
        windowManager.removeViewImmediate(view);
    }

    public void R(android.view.View view) {
        if (f.a.i.m.g.e(getActivity().getApplicationContext())) {
            f.a.k.n0.j jVar = new f.a.k.n0.j(getActivity());
            jVar.a = 105;
            jVar.F = net.easyconn.R.layout.layout_pop_icp_qr;
            jVar.J = true;
            jVar.b = 202;
            this.n = jVar;
            ((android.widget.RelativeLayout) jVar.findViewById(net.easyconn.R.id.layout_pop_root_view)).setBackgroundColor(d.g.f.a.b(getActivity(), net.easyconn.R.color.status_tip_connecting_progress_bg));
            ((android.widget.LinearLayout) this.n.findViewById(net.easyconn.R.id.layoutPop)).setBackgroundColor(d.g.f.a.b(getActivity(), android.R.color.transparent));
        } else {
            f.a.k.n0.j jVar2 = new f.a.k.n0.j(getActivity());
            jVar2.N = net.easyconn.R.drawable.pop_dialog_custom_service_shape;
            jVar2.a = 105;
            jVar2.F = net.easyconn.R.layout.layout_pop_icp_qr_black;
            jVar2.J = true;
            jVar2.b = 202;
            this.n = jVar2;
        }
        this.n.d();
        this.n.findViewById(net.easyconn.R.id.pop_custom_service_iknow_tv).setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.n
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.Z(view2);
            }
        });
    }

    public void S(android.view.View view) {
        android.view.View viewFindViewById;
        android.view.View.OnClickListener onClickListener;
        if (f.a.i.m.g.e(getActivity().getApplicationContext())) {
            f.a.k.n0.j jVar = new f.a.k.n0.j(getActivity());
            jVar.a = 105;
            jVar.F = net.easyconn.R.layout.layout_pop_custom_service_tabui;
            jVar.J = true;
            jVar.b = 202;
            this.m = jVar;
            ((android.widget.RelativeLayout) jVar.findViewById(net.easyconn.R.id.layout_pop_root_view)).setBackgroundColor(d.g.f.a.b(getActivity(), net.easyconn.R.color.status_tip_connecting_progress_bg));
            ((android.widget.LinearLayout) this.m.findViewById(net.easyconn.R.id.layoutPop)).setBackgroundColor(d.g.f.a.b(getActivity(), android.R.color.transparent));
            this.m.d();
            viewFindViewById = this.m.findViewById(net.easyconn.R.id.pop_custom_service_iknow_tv);
            onClickListener = new android.view.View.OnClickListener() { // from class: f.a.k.l0.v
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    this.a.W(view2);
                }
            };
        } else {
            f.a.k.n0.j jVar2 = new f.a.k.n0.j(getActivity());
            jVar2.N = net.easyconn.R.drawable.pop_dialog_custom_service_shape;
            jVar2.a = 105;
            jVar2.F = net.easyconn.R.layout.layout_pop_custom_service;
            jVar2.J = true;
            jVar2.b = 202;
            jVar2.d();
            this.m = jVar2;
            viewFindViewById = jVar2.findViewById(net.easyconn.R.id.pop_custom_service_iknow_tv);
            onClickListener = new android.view.View.OnClickListener() { // from class: f.a.k.l0.j
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    this.a.X(view2);
                }
            };
        }
        viewFindViewById.setOnClickListener(onClickListener);
    }

    public /* synthetic */ void T(android.view.View view) {
        this.k.O();
    }

    public void U(android.view.View view) {
        if (this.f3047e.getVisibility() == 0) {
            this.f3046d.setVisibility(0);
            this.f3047e.setVisibility(8);
        } else if (this.f3049g.getVisibility() == 0) {
            this.f3049g.setVisibility(8);
            this.f3046d.setVisibility(0);
        } else {
            if (getActivity() == null || !(getActivity() instanceof f.a.k.e0)) {
                return;
            }
            ((f.a.k.e0) getActivity()).i();
        }
    }

    public /* synthetic */ void V(android.view.View view) {
        if (this.l) {
            return;
        }
        this.k.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 41, "EC_ABOUT_OTA_BTN");
        this.k.Y();
    }

    public /* synthetic */ void W(android.view.View view) {
        this.m.a();
    }

    public /* synthetic */ void X(android.view.View view) {
        this.m.a();
    }

    public /* synthetic */ void Y(float f2, java.lang.String str) {
        java.lang.String str2 = java.lang.String.format(java.util.Locale.ENGLISH, "%d%%", java.lang.Integer.valueOf((int) (100.0f * f2)));
        if (this.f3048f == null) {
            f.a.k.n0.j jVarA = new f.a.k.n0.j.a(getActivity()).b(false).e(102).j(net.easyconn.R.string.update_new_version_txt).l(str).i(str2).h(net.easyconn.R.string.cancel_txt, new f.a.k.l0.e3(this)).a();
            this.f3048f = jVarA;
            jVarA.d();
        }
        this.f3048f.setPercentText(str2);
        if (f2 == 1.0d) {
            this.f3048f.a();
            this.f3048f = null;
        }
    }

    public /* synthetic */ void Z(android.view.View view) {
        this.n.a();
    }

    @Override // f.a.k.k0.b
    public void a() {
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.y
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c0();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void a0(int r5) {
        /*
            r4 = this;
            boolean r0 = r4.isAdded()
            if (r0 == 0) goto L72
            r0 = -4
            r1 = 80000(0x13880, float:1.12104E-40)
            if (r5 == r0) goto L5a
            r0 = -3
            if (r5 == r0) goto L52
            r0 = -2
            if (r5 == r0) goto L1e
            r0 = -1
            if (r5 == r0) goto L5a
            if (r5 == 0) goto L1a
            java.lang.String r5 = ""
            goto L6a
        L1a:
            r5 = 2131558444(0x7f0d002c, float:1.8742204E38)
            goto L55
        L1e:
            r5 = 2131558537(0x7f0d0089, float:1.8742393E38)
            java.lang.String r5 = r4.getString(r5)
            f.a.k.n0.j$a r0 = new f.a.k.n0.j$a
            d.j.d.l r2 = r4.getActivity()
            r0.<init>(r2)
            f.a.k.n0.j$a r5 = r0.d(r5)
            r0 = 0
            f.a.k.n0.j$a r5 = r5.b(r0)
            r0 = 2131558447(0x7f0d002f, float:1.874221E38)
            r2 = 0
            f.a.k.n0.j$a r5 = r5.h(r0, r2)
            f.a.k.n0.j r5 = r5.a()
            r4.q = r5
            r5.d()
            f.a.k.k0.a r5 = r4.k
            r0 = 44
            java.lang.String r2 = "EC_ABOUT_OTA_STORAGE_NOT_ENOUGH"
            r5.a(r1, r0, r2)
            return
        L52:
            r5 = 2131558491(0x7f0d005b, float:1.87423E38)
        L55:
            java.lang.String r5 = r4.getString(r5)
            goto L6a
        L5a:
            r5 = 2131558460(0x7f0d003c, float:1.8742236E38)
            java.lang.String r5 = r4.getString(r5)
            f.a.k.k0.a r0 = r4.k
            r2 = 43
            java.lang.String r3 = "EC_ABOUT_OTA_DOWNLOAD_FAILED"
            r0.a(r1, r2, r3)
        L6a:
            net.easyconn.EcApplication r0 = net.easyconn.EcApplication.getInstance()
            r1 = 1
            r0.showToast(r5, r1)
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.g3.a0(int):void");
    }

    public /* synthetic */ void b0() {
        f.a.k.n0.j jVarA = new f.a.k.n0.j.a(getActivity()).b(false).e(100).c(net.easyconn.R.string.ota_relaunch_app_txt).h(net.easyconn.R.string.confirm_txt, new f.a.k.l0.f3(this)).a();
        this.r = jVarA;
        jVarA.d();
    }

    public /* synthetic */ void c0() {
        this.w = new f.a.k.n0.j.a(getActivity()).e(100).c(net.easyconn.R.string.ota_install_error).h(net.easyconn.R.string.confirm_txt, null).a().d();
    }

    public /* synthetic */ void d0(android.view.View view) {
        this.t.a();
    }

    public /* synthetic */ void e0(android.widget.CompoundButton compoundButton, boolean z) {
        this.k.z(z);
    }

    @Override // f.a.k.k0.b
    public void f(final int i) {
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.b
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a0(i);
            }
        });
    }

    public void f0(android.widget.CompoundButton compoundButton, boolean z) {
        if (!z) {
            android.widget.TextView textView = this.v;
            if (textView != null) {
                textView.callOnClick();
                return;
            }
            return;
        }
        if (android.os.Build.VERSION.SDK_INT < 23 || android.provider.Settings.canDrawOverlays(getActivity())) {
            n0();
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("package:");
        sbO.append(getActivity().getPackageName());
        startActivityForResult(new android.content.Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", android.net.Uri.parse(sbO.toString())), 0);
    }

    public void g0(android.widget.CompoundButton compoundButton, boolean z) {
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putBoolean("key_ec_show_fps_state", z);
        editorEdit.apply();
    }

    public void h0(android.widget.CompoundButton compoundButton, boolean z) {
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putBoolean("key_ec_save_h264_state", z);
        editorEdit.apply();
    }

    public void i0(android.widget.CompoundButton compoundButton, boolean z) {
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putBoolean("key_ec_save_pcm_state", z);
        editorEdit.apply();
    }

    public void j0(android.widget.CompoundButton compoundButton, boolean z) {
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putBoolean("key_ec_save_record_pcm_state", z);
        editorEdit.apply();
    }

    public void k0(android.widget.CompoundButton compoundButton, boolean z) {
        f.a.i.n.b.I = z;
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putBoolean("key_ec_print_decode_logcat_state", z);
        editorEdit.apply();
    }

    public /* synthetic */ void l0() {
        this.l = false;
    }

    @Override // f.a.k.k0.b
    public void m(final java.lang.String str, final float f2) {
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.u
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Y(f2, str);
            }
        });
    }

    public /* synthetic */ void m0(int i) {
        int i2;
        java.lang.String string;
        if (isAdded()) {
            if (i != -4) {
                if (i == -3) {
                    f.a.k.n0.j jVarA = new f.a.k.n0.j.a(getActivity()).d(getString(net.easyconn.R.string.storage_not_enough)).b(false).h(net.easyconn.R.string.confirm_txt, null).a();
                    this.p = jVarA;
                    jVarA.d();
                    return;
                }
                if (i == -2) {
                    string = "检测失败";
                } else if (i == -1) {
                    i2 = net.easyconn.R.string.network_error;
                } else if (i != 0) {
                    string = "";
                } else {
                    i2 = net.easyconn.R.string.check_update_none;
                }
                net.easyconn.EcApplication.getInstance().showToast(string, 1);
                this.l = true;
                ((net.easyconn.EcApplication) getActivity().getApplication()).executeTaskDelay(new java.lang.Runnable() { // from class: f.a.k.l0.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.l0();
                    }
                }, 5000L);
            }
            i2 = net.easyconn.R.string.download_failed;
            string = getString(i2);
            net.easyconn.EcApplication.getInstance().showToast(string, 1);
            this.l = true;
            ((net.easyconn.EcApplication) getActivity().getApplication()).executeTaskDelay(new java.lang.Runnable() { // from class: f.a.k.l0.x
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.l0();
                }
            }, 5000L);
        }
    }

    public void n0() {
        final android.view.WindowManager windowManager = (android.view.WindowManager) getActivity().getSystemService("window");
        final android.view.WindowManager.LayoutParams layoutParams = new android.view.WindowManager.LayoutParams();
        layoutParams.width = (int) (getActivity().getResources().getDimension(net.easyconn.R.dimen.dp_400) * getActivity().getResources().getDisplayMetrics().density);
        layoutParams.height = -2;
        layoutParams.format = -2;
        layoutParams.gravity = 51;
        layoutParams.flags = 262176;
        layoutParams.type = android.os.Build.VERSION.SDK_INT >= 26 ? 2038 : com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND;
        final android.view.View viewInflate = android.view.LayoutInflater.from(getActivity()).inflate(net.easyconn.R.layout.overlay_audio, (android.view.ViewGroup) null);
        final android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.text);
        windowManager.addView(viewInflate, layoutParams);
        f.a.i.f.a.logger.a = new f.a.i.f.a.InterfaceC0082a() { // from class: f.a.k.l0.h
            @Override // f.a.i.f.a.InterfaceC0082a
            public final void a(java.lang.String str) {
                this.a.P(textView, windowManager, viewInflate, layoutParams, str);
            }
        };
        android.widget.TextView textView2 = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.close);
        this.v = textView2;
        textView2.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.c
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.Q(windowManager, viewInflate, view);
            }
        });
        viewInflate.setOnTouchListener(new f.a.k.l0.g3.a(this, layoutParams, windowManager, viewInflate));
    }

    @Override // f.a.k.k0.b
    public void o(boolean z, java.lang.String str, java.lang.String str2) {
        f.a.k.n0.j jVar = new f.a.k.n0.j(getActivity());
        jVar.a = 105;
        jVar.F = net.easyconn.R.layout.layout_runtime_info;
        jVar.J = false;
        jVar.b = 202;
        int dimension = (int) (getResources().getDimension(net.easyconn.R.dimen.dp_50) * getActivity().getResources().getDisplayMetrics().density);
        ((android.view.ViewGroup) jVar.f3112c.getParent().getParent()).setPadding(0, dimension, 0, dimension);
        this.t = jVar;
        jVar.d();
        this.t.findViewById(net.easyconn.R.id.btn_back).setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.p
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.d0(view);
            }
        });
        ((android.widget.Switch) this.t.findViewById(net.easyconn.R.id.log_switcher)).setChecked(z);
        ((android.widget.Switch) this.t.findViewById(net.easyconn.R.id.log_switcher)).setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: f.a.k.l0.a0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z2) {
                this.a.e0(compoundButton, z2);
            }
        });
        android.widget.TextView textView = (android.widget.TextView) this.t.findViewById(net.easyconn.R.id.tv_information);
        ((android.widget.Switch) this.t.findViewById(net.easyconn.R.id.log_audio_switcher)).setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: f.a.k.l0.w
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z2) {
                this.a.f0(compoundButton, z2);
            }
        });
        android.widget.Switch r1 = (android.widget.Switch) this.t.findViewById(net.easyconn.R.id.show_fps_switcher);
        r1.setChecked(f.a.i.g.a.b(getContext()).a.getBoolean("key_ec_show_fps_state", false));
        r1.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: f.a.k.l0.f
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z2) {
                this.a.g0(compoundButton, z2);
            }
        });
        android.widget.Switch r12 = (android.widget.Switch) this.t.findViewById(net.easyconn.R.id.save_h264_switcher);
        r12.setChecked(f.a.i.g.a.b(getContext()).a.getBoolean("key_ec_save_h264_state", false));
        r12.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: f.a.k.l0.e
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z2) {
                this.a.h0(compoundButton, z2);
            }
        });
        android.widget.Switch r13 = (android.widget.Switch) this.t.findViewById(net.easyconn.R.id.save_pcm_switcher);
        r13.setChecked(f.a.i.g.a.b(getContext()).a.getBoolean("key_ec_save_pcm_state", false));
        r13.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: f.a.k.l0.o
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z2) {
                this.a.i0(compoundButton, z2);
            }
        });
        android.widget.Switch r14 = (android.widget.Switch) this.t.findViewById(net.easyconn.R.id.save_record_pcm_switcher);
        r14.setChecked(f.a.i.g.a.b(getContext()).a.getBoolean("key_ec_save_record_pcm_state", false));
        r14.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: f.a.k.l0.d
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z2) {
                this.a.j0(compoundButton, z2);
            }
        });
        android.widget.Switch r15 = (android.widget.Switch) this.t.findViewById(net.easyconn.R.id.print_decode_logcat);
        r15.setChecked(f.a.i.g.a.b(getContext()).a.getBoolean("key_ec_print_decode_logcat_state", false));
        r15.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: f.a.k.l0.q
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z2) {
                this.a.k0(compoundButton, z2);
            }
        });
        ((android.widget.TextView) this.t.findViewById(net.easyconn.R.id.sdk_version_txt)).setText(this.k.R());
        textView.setText(str);
        ((android.widget.TextView) this.t.findViewById(net.easyconn.R.id.tv_pwd)).setText(str2);
    }

    public final void o0() {
        if ((!f.a.i.m.g.h0(getContext().getApplicationContext()) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f.a.i.m.g.f2936c.getProperty("ENABLE_SHOW_AUTH_STATE", "false"))).booleanValue()) {
            if (f.a.i.g.a.b(getContext()).a.getInt("key_ec_sdk_auth_state", 0) == 1) {
                this.a.setText(net.easyconn.R.string.auth_state_ok);
            } else {
                this.a.setText("");
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) throws android.content.res.Resources.NotFoundException {
        android.view.View viewInflate = layoutInflater.inflate(f.a.i.m.g.e(getActivity().getApplicationContext()) ? net.easyconn.R.layout.fragment_about_tab_status : net.easyconn.R.layout.fragment_about, viewGroup, false);
        this.a = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.fragment_about_auth_state);
        this.b = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.fragment_about_version_tv);
        this.f3045c = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.fragment_about_sn_tv);
        this.f3046d = (android.widget.LinearLayout) viewInflate.findViewById(net.easyconn.R.id.fragment_about_main_panel);
        android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.fragment_about_disclaimer);
        this.f3047e = textView;
        textView.setMovementMethod(android.text.method.ScrollingMovementMethod.getInstance());
        this.f3049g = viewInflate.findViewById(net.easyconn.R.id.user_set_decode_mode_settings);
        this.j = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.fragment_about_icp_tv);
        android.view.View viewFindViewById = getActivity().findViewById(net.easyconn.R.id.tv_version_number);
        this.h = viewFindViewById;
        viewFindViewById.setVisibility(8);
        final android.widget.TextView textView2 = this.j;
        if (textView2 != null) {
            final int dimensionPixelSize = getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_25);
            if (textView2 != null) {
                final android.view.View view = (android.view.View) textView2.getParent();
                view.post(new java.lang.Runnable() { // from class: f.a.k.l0.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.k.l0.g3.N(textView2, dimensionPixelSize, view);
                    }
                });
            }
            this.j.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.g
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    this.a.R(view2);
                }
            });
        }
        if (f.a.i.m.g.G(getActivity().getApplicationContext()) == 0 || f.a.i.m.g.G(getActivity().getApplicationContext()) == 3) {
            android.widget.TextView textView3 = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.fragment_about_custom_service);
            textView3.setVisibility(0);
            textView3.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.s
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    this.a.S(view2);
                }
            });
        }
        this.f3045c.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.i
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.T(view2);
            }
        });
        viewInflate.findViewById(net.easyconn.R.id.fragment_about_back).setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.t
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.U(view2);
            }
        });
        android.widget.Button button = (android.widget.Button) viewInflate.findViewById(net.easyconn.R.id.fragment_about_check_update_btn);
        this.i = button;
        button.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.k
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                this.a.V(view2);
            }
        });
        if ((!f.a.i.m.g.h0(getContext().getApplicationContext()) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f.a.i.m.g.f2936c.getProperty("HIDE_CHECK_UPDATE_BUTTON", "false"))).booleanValue()) {
            this.i.setVisibility(8);
        }
        try {
            java.lang.String[] strArrSplit = "7.0.1-9011d330b-202404121051".split("-");
            this.b.setText(java.lang.String.format("%s%s[%d].%s-%s", getString(net.easyconn.R.string.version_txt), "tocfree", java.lang.Integer.valueOf(f.a.i.m.g.k(getContext().getApplicationContext())), strArrSplit[0], strArrSplit[1]));
        } catch (java.lang.Exception unused) {
            this.b.setText(java.lang.String.format("%s%s", getString(net.easyconn.R.string.version_txt), "7.0.1-9011d330b-202404121051"));
        }
        this.f3045c.setText(java.lang.String.format(getString(net.easyconn.R.string.device_sn), this.k.b()));
        o0();
        L();
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.k.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        f.a.k.n0.j jVar = this.o;
        if (jVar != null && jVar.c()) {
            this.o.a();
            this.o = null;
        }
        f.a.k.n0.j jVar2 = this.f3048f;
        if (jVar2 != null && jVar2.c()) {
            this.f3048f.a();
            this.f3048f = null;
        }
        f.a.k.n0.j jVar3 = this.s;
        if (jVar3 != null && jVar3.c()) {
            this.s.a();
            this.s = null;
        }
        f.a.k.n0.j jVar4 = this.w;
        if (jVar4 != null && jVar4.c()) {
            this.w.a();
            this.w = null;
        }
        f.a.k.n0.j jVar5 = this.t;
        if (jVar5 != null && jVar5.c()) {
            this.t.a();
            this.t = null;
        }
        f.a.k.n0.j jVar6 = this.r;
        if (jVar6 != null && jVar6.c()) {
            this.r.a();
            this.r = null;
        }
        f.a.k.n0.j jVar7 = this.q;
        if (jVar7 != null && jVar7.c()) {
            this.q.a();
            this.q = null;
        }
        f.a.k.n0.j jVar8 = this.p;
        if (jVar8 != null && jVar8.c()) {
            this.p.a();
            this.p = null;
        }
        f.a.k.n0.j jVar9 = this.m;
        if (jVar9 == null || !jVar9.c()) {
            return;
        }
        this.m.a();
        this.m = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            this.k.E();
            return;
        }
        o0();
        android.view.View view = this.h;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.k.onStart();
    }

    @Override // f.a.k.k0.b
    public void s(final int i) {
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.z
            @Override // java.lang.Runnable
            public final void run() {
                this.a.m0(i);
            }
        });
    }

    @Override // f.a.k.k0.b
    public void v() {
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.l
            @Override // java.lang.Runnable
            public final void run() {
                this.a.M();
            }
        });
    }

    @Override // f.a.k.k0.b
    public void x() {
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.l0.a
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b0();
            }
        });
    }
}
