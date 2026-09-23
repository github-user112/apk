package f.a.k.l0;

/* loaded from: classes.dex */
public class v3 extends f.a.k.l0.i3 implements f.a.k.k0.f {
    public static java.lang.String Q;
    public static android.graphics.Bitmap R;
    public static java.lang.String S;
    public static android.graphics.Bitmap T;
    public android.widget.TextView A;
    public android.widget.TextView B;
    public android.content.Context C;
    public android.content.SharedPreferences D;
    public android.net.wifi.WifiManager F;
    public f.a.k.k0.e I;
    public f.a.k.n0.j K;
    public f.a.k.n0.j L;
    public f.a.k.n0.j M;
    public f.a.k.n0.j N;
    public f.a.k.n0.j O;
    public java.lang.String P;
    public android.widget.RelativeLayout s;
    public android.widget.ImageView t;
    public android.widget.RelativeLayout u;
    public android.widget.ImageView v;
    public android.widget.ImageView w;
    public android.widget.ImageView x;
    public android.widget.ImageView y;
    public android.widget.TextView z;
    public android.os.Handler G = new android.os.Handler();
    public java.lang.ref.WeakReference<android.app.Activity> H = null;
    public volatile boolean J = false;

    public class a implements android.view.View.OnClickListener {
        public int a = 0;
        public final /* synthetic */ int b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f3082c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f3083d;

        public a(int i, int i2, java.lang.String str) {
            this.b = i;
            this.f3082c = i2;
            this.f3083d = str;
        }

        public /* synthetic */ void a(boolean z) {
            this.a = 0;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            int i = this.a + 1;
            this.a = i;
            if (i >= 5) {
                f.a.k.l0.v3 v3Var = f.a.k.l0.v3.this;
                f.a.k.n0.j jVar = new f.a.k.n0.j(v3Var.H.get());
                jVar.a = 103;
                jVar.J = false;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed:");
                sbO.append(this.b);
                jVar.w = sbO.toString();
                jVar.x = java.lang.String.format("UUID:%s\nPhone's IMEI:%s\nChannel:%s\nErrorMsg:%s", d.s.y.m, d.s.y.u, java.lang.Integer.toString(this.f3082c), this.f3083d);
                f.a.k.n0.j.c cVar = new f.a.k.n0.j.c() { // from class: f.a.k.l0.o1
                    @Override // f.a.k.n0.j.c
                    public final void a(boolean z) {
                        this.a.a(z);
                    }
                };
                jVar.b = 200;
                jVar.B = "OK";
                jVar.u = cVar;
                jVar.d();
                v3Var.L = jVar;
            }
        }
    }

    public class b implements f.a.k.n0.j.d {
        public final /* synthetic */ java.lang.String a;

        public b(java.lang.String str) {
            this.a = str;
        }

        @Override // f.a.k.n0.j.d
        public void a(boolean z) {
            int iW = f.a.i.l.a.w(f.a.k.l0.v3.this.H.get().getApplicationContext(), this.a, "net.easyconn.fileProvider");
            if (iW != 65536) {
                e.a.c.a.a.v("installApkFilePreCheck fail:", iW);
                f.a.k.l0.v3 v3Var = f.a.k.l0.v3.this;
                f.a.k.n0.j jVar = new f.a.k.n0.j(v3Var.H.get());
                jVar.a = 100;
                jVar.x = jVar.G.getString(net.easyconn.R.string.ota_install_error);
                jVar.b = 200;
                jVar.B = jVar.G.getString(net.easyconn.R.string.confirm_txt);
                jVar.u = null;
                jVar.d();
                v3Var.O = jVar;
            }
            f.a.k.l0.v3.this.I.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 5, "EC_MAIN_DISCOVER_NEW_VERSION_UPDATE");
        }

        @Override // f.a.k.n0.j.d
        public void b() {
        }
    }

    @Override // f.a.d
    public void E(f.a.k.k0.e eVar) {
        this.I = eVar;
    }

    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public void d0(final boolean z) throws java.lang.NumberFormatException, java.io.UnsupportedEncodingException {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("enabled=");
        sb.append(z);
        sb.append(",isDestroy = ");
        e.a.c.a.a.C(sb, this.J);
        if (!z) {
            e.e.a.g.a("close ap");
            return;
        }
        e.e.a.g.a("open ap");
        java.lang.String strB = ((f.a.k.g0) this.H.get()).B(new net.easyconn.ecsdk.ECTypes.ECQRInfo("", "", "", "", "", "", 1));
        S = strB;
        S = strB;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("==>** iosUrl is ");
        sbO.append(S);
        e.e.a.g.a(sbO.toString());
        if (android.text.TextUtils.isEmpty(S)) {
            if (this.J) {
                return;
            }
            this.G.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.q1
                @Override // java.lang.Runnable
                public final void run() throws java.lang.NumberFormatException, java.io.UnsupportedEncodingException {
                    this.a.d0(z);
                }
            }, 500L);
        } else {
            android.graphics.Bitmap bitmapB = f.a.i.m.h.b(S, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISMATCH_DEX);
            T = bitmapB;
            this.y.setImageBitmap(bitmapB);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String b0() {
        /*
            r11 = this;
            android.content.Context r0 = r11.C
            boolean r0 = f.a.i.m.g.s(r0)
            java.lang.String r1 = ""
            r2 = 0
            if (r0 != 0) goto L63
            android.content.Context r0 = r11.C
            int r0 = f.a.i.m.g.G(r0)
            r3 = 1
            if (r0 == r3) goto L23
            r3 = 2
            if (r0 != r3) goto L18
            goto L23
        L18:
            java.lang.String r0 = f.a.i.m.d.a()
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto L5e
            goto L6f
        L23:
            android.content.Context r0 = r11.C
            java.lang.String r0 = f.a.i.m.g.O(r0)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto L5e
            android.content.Context r3 = r11.C
            android.content.ContentResolver r3 = r3.getContentResolver()
            java.lang.String r4 = "android_id"
            java.lang.String r3 = android.provider.Settings.Secure.getString(r3, r4)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto L43
            java.lang.String r3 = android.os.Build.SERIAL
        L43:
            int r4 = r3.length()
            r5 = 4
            if (r4 >= r5) goto L4c
            r8 = r1
            goto L70
        L4c:
            java.lang.String r4 = "-"
            java.lang.StringBuilder r0 = e.a.c.a.a.q(r0, r4)
            java.lang.String r3 = r3.substring(r2, r5)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            goto L6f
        L5e:
            java.lang.String r0 = r11.c0()
            goto L6f
        L63:
            android.content.SharedPreferences r0 = r11.D
            java.lang.String r3 = r11.c0()
            java.lang.String r4 = "EC_DEVICE_NAME"
            java.lang.String r0 = r0.getString(r4, r3)
        L6f:
            r8 = r0
        L70:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "==>** deviceName is "
            r0.append(r3)
            r0.append(r8)
            java.lang.String r0 = r0.toString()
            e.e.a.g.a(r0)
            net.easyconn.ecsdk.ECTypes$ECQRInfo r0 = new net.easyconn.ecsdk.ECTypes$ECQRInfo
            r10 = 8
            java.lang.String r4 = ""
            java.lang.String r5 = ""
            java.lang.String r6 = ""
            java.lang.String r7 = ""
            java.lang.String r9 = ""
            r3 = r0
            r3.<init>(r4, r5, r6, r7, r8, r9, r10)
            java.lang.ref.WeakReference<android.app.Activity> r3 = r11.H
            java.lang.Object r3 = r3.get()
            f.a.k.g0 r3 = (f.a.k.g0) r3
            java.lang.String r0 = r3.B(r0)
            if (r0 == 0) goto Lf5
            java.util.Locale r3 = java.util.Locale.ROOT
            java.lang.String r3 = r0.toLowerCase(r3)
            java.lang.String r4 = "sn="
            boolean r3 = r3.contains(r4)
            if (r3 != 0) goto Lf5
            java.lang.String r3 = "&sn="
            java.lang.StringBuilder r0 = e.a.c.a.a.q(r0, r3)
            java.lang.ref.WeakReference<android.app.Activity> r3 = r11.H
            java.lang.Object r3 = r3.get()
            f.a.k.g0 r3 = (f.a.k.g0) r3
            net.easyconn.framework.sdkservice.EasyConnectService r3 = r3.t
            r4 = 0
            if (r3 != 0) goto Lc6
            goto Lee
        Lc6:
            java.lang.String r3 = r3.a()
            if (r3 == 0) goto Ldc
            java.lang.String r4 = "UTF-8"
            java.nio.charset.Charset r4 = java.nio.charset.Charset.forName(r4)
            byte[] r3 = r3.getBytes(r4)
            java.lang.String r4 = "MD5"
            java.lang.String r4 = d.s.y.N(r3, r4)
        Ldc:
            if (r4 != 0) goto Ldf
            goto Le0
        Ldf:
            r1 = r4
        Le0:
            int r3 = r1.length()
            r4 = 8
            if (r3 <= r4) goto Led
            java.lang.String r4 = r1.substring(r2, r4)
            goto Lee
        Led:
            r4 = r1
        Lee:
            r0.append(r4)
            java.lang.String r0 = r0.toString()
        Lf5:
            f.a.k.l0.v3.Q = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.v3.b0():java.lang.String");
    }

    public final java.lang.String c0() {
        java.lang.String string = android.provider.Settings.Secure.getString(this.C.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
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

    public void e() {
        e.e.a.g.a("==> show QrCodeFragment !");
    }

    public /* synthetic */ void e0(int i, java.lang.String str, android.view.View view) {
        this.I.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 22, java.lang.String.valueOf(i) + str);
        this.K.a();
        ((f.a.k.g0) this.H.get()).K();
    }

    public /* synthetic */ void g0(java.lang.String str) {
        this.y.setImageBitmap(f.a.i.m.h.b(str, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISMATCH_DEX));
    }

    public void h0(java.lang.String str) {
        java.lang.String str2;
        if (this.H == null) {
            e.e.a.g.c("QrCodeFragment not attached to a context", new java.lang.Object[0]);
            return;
        }
        if (!isAdded()) {
            e.e.a.g.c("QrCodeFragment not added, return", new java.lang.Object[0]);
            return;
        }
        this.B.setText(java.lang.String.format(getString(net.easyconn.R.string.device_tag_txt), str));
        e.e.a.g.a("QrCodeFragment setDeviceTag lastTag is " + this.P);
        if (!android.text.TextUtils.isEmpty(str)) {
            if (!android.text.TextUtils.isEmpty(this.P)) {
                str2 = (this.P.contains("Carbit-") && !str.contains("Carbit-")) ? "QrCodeFragment setDeviceTag contains Carbit" : "QrCodeFragment setDeviceTag TextUtils.isEmpty(lastTag)";
            }
            e.e.a.g.a(str2);
            m0();
        }
        this.P = str;
    }

    public void i0(final int i, final java.lang.String str) {
        if (this.H.get() == null) {
            return;
        }
        int iK = f.a.i.m.g.k(getContext());
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putInt("key_ec_sdk_auth_state", 0);
        editorEdit.commit();
        f.a.k.n0.j jVar = new f.a.k.n0.j(this.H.get());
        jVar.a = 105;
        jVar.F = net.easyconn.R.layout.layout_pop_dialog_authfail;
        jVar.J = false;
        jVar.x = iK + "." + d.s.y.m;
        jVar.b = 202;
        this.K = jVar;
        jVar.d();
        this.K.findViewById(net.easyconn.R.id.btnConfirm).setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.p1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.e0(i, str, view);
            }
        });
        this.K.findViewById(net.easyconn.R.id.btnAuthText).setOnClickListener(new f.a.k.l0.v3.a(i, iK, str));
        e.e.a.g.b("errCode = %d, errMsg = %s", java.lang.Integer.valueOf(i), str);
    }

    public void j0(int i, java.lang.String str) {
        java.lang.String[] strArrSplit;
        if (this.H.get() == null) {
            return;
        }
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putInt("key_ec_sdk_auth_state", 1);
        editorEdit.commit();
        int iK = f.a.i.m.g.k(getContext());
        if (i == 8224) {
            java.lang.String str2 = (android.text.TextUtils.isEmpty(str) || (strArrSplit = str.split(":")) == null || strArrSplit.length - 1 != 1) ? str : strArrSplit[1];
            f.a.k.n0.j jVar = new f.a.k.n0.j(this.H.get());
            jVar.a = 103;
            jVar.w = "Registration Successful!";
            jVar.x = java.lang.String.format("UUID:%s\nPhone's IMEI:%s\nChannel:%s\nAuthorization remaining:%s", d.s.y.m, d.s.y.u, java.lang.Integer.toString(iK), str2);
            jVar.b = 200;
            jVar.B = "OK";
            jVar.u = null;
            jVar.d();
            this.M = jVar;
        }
        e.e.a.g.b("authCode = %d, authMsg = %s, phoneimei = %s", java.lang.Integer.valueOf(i), str, d.s.y.u);
    }

    public void k0(java.lang.String str, java.lang.String str2) {
        if (str == null) {
            return;
        }
        f.a.k.n0.j jVar = new f.a.k.n0.j(this.H.get());
        jVar.a = 103;
        jVar.w = jVar.G.getString(net.easyconn.R.string.install_new_version_txt);
        jVar.x = str2;
        f.a.k.l0.v3.b bVar = new f.a.k.l0.v3.b(str);
        jVar.b = 201;
        jVar.C = jVar.G.getString(net.easyconn.R.string.update_txt);
        jVar.D = jVar.G.getString(net.easyconn.R.string.cancel_txt);
        jVar.t = bVar;
        this.N = jVar;
        jVar.d();
    }

    /* renamed from: l0, reason: merged with bridge method [inline-methods] */
    public void f0(final boolean z) throws java.lang.NumberFormatException, java.io.UnsupportedEncodingException {
        if (this.J) {
            e.e.a.g.a("showSwitchBtn isDestroy return it.");
            return;
        }
        e.a.c.a.a.z("isAndroid=", z);
        this.s.setEnabled(!z);
        this.u.setEnabled(z);
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.C).a.edit();
        editorEdit.putBoolean("key_ec_qr_code_mode_android", z);
        editorEdit.apply();
        if (!z) {
            this.s.setBackgroundResource(net.easyconn.R.drawable.qr_button_bg_none);
            this.t.setBackgroundResource(net.easyconn.R.drawable.android_no);
            this.z.setTextColor(android.graphics.Color.parseColor("#4dffffff"));
            this.A.setTextColor(android.graphics.Color.parseColor("#ffffffff"));
            this.u.setBackgroundResource(net.easyconn.R.drawable.qr_button_bg);
            this.v.setBackgroundResource(net.easyconn.R.drawable.ios_yes);
            this.F.setWifiEnabled(false);
            d0(true);
            return;
        }
        this.s.setBackgroundResource(net.easyconn.R.drawable.qr_button_bg);
        this.t.setBackgroundResource(net.easyconn.R.drawable.android_yes);
        this.z.setTextColor(android.graphics.Color.parseColor("#ffffffff"));
        this.A.setTextColor(android.graphics.Color.parseColor("#4dffffff"));
        this.u.setBackgroundResource(net.easyconn.R.drawable.qr_button_bg_none);
        this.v.setBackgroundResource(net.easyconn.R.drawable.ios_no);
        d0(false);
        this.F.setWifiEnabled(true);
        Q = b0();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("==>** androidUrl is ");
        sbO.append(Q);
        e.e.a.g.a(sbO.toString());
        if (android.text.TextUtils.isEmpty(Q)) {
            this.G.postDelayed(new java.lang.Runnable() { // from class: f.a.k.l0.s1
                @Override // java.lang.Runnable
                public final void run() throws java.lang.NumberFormatException, java.io.UnsupportedEncodingException {
                    this.a.f0(z);
                }
            }, 500L);
            return;
        }
        android.graphics.Bitmap bitmapB = f.a.i.m.h.b(Q, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISMATCH_DEX);
        R = bitmapB;
        this.y.setImageBitmap(bitmapB);
    }

    public final void m0() {
        android.os.Handler handler;
        if (f.a.i.g.a.b(this.H.get()).a.getBoolean("key_ec_qr_code_mode_android", true)) {
            final java.lang.String strB0 = b0();
            if (e.a.c.a.a.D("QrCodeFragment setDeviceTag updateAndroidUrl ==>** androidUrl is ", strB0, strB0) || (handler = this.G) == null || this.y == null) {
                return;
            }
            handler.post(new java.lang.Runnable() { // from class: f.a.k.l0.r1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.g0(strB0);
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(android.app.Activity activity) {
        e.e.a.g.a("onAttach parameter is activity");
        super.onAttach(activity);
        if (android.os.Build.VERSION.SDK_INT < 23) {
            e.e.a.g.a("onAttachToContext");
            this.H = new java.lang.ref.WeakReference<>(activity);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) throws java.lang.NumberFormatException, java.io.UnsupportedEncodingException {
        boolean zE;
        boolean zE2;
        this.J = false;
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_qr_scan, viewGroup, false);
        android.content.Context context = getContext();
        this.C = context;
        this.D = context.getSharedPreferences("EC_DEVICE_NAME", 0);
        this.F = (android.net.wifi.WifiManager) getActivity().getApplicationContext().getSystemService("wifi");
        super.O(viewInflate);
        this.s = (android.widget.RelativeLayout) viewInflate.findViewById(net.easyconn.R.id.qr_android_btn);
        this.t = (android.widget.ImageView) viewInflate.findViewById(net.easyconn.R.id.qr_android_btn_img);
        this.u = (android.widget.RelativeLayout) viewInflate.findViewById(net.easyconn.R.id.qr_ios_btn);
        this.v = (android.widget.ImageView) viewInflate.findViewById(net.easyconn.R.id.qr_ios_btn_img);
        this.z = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.qr_android_btn_txt);
        this.A = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.qr_ios_btn_txt);
        android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.fragment_qr_txt1);
        java.lang.Boolean bool = f.a.i.m.g.h;
        if (bool != null) {
            zE = bool.booleanValue();
        } else {
            zE = e.a.c.a.a.E(f.a.i.m.g.f2936c, "ENABLE_APP_IOS_USB", "true");
            f.a.i.m.g.h = java.lang.Boolean.valueOf(zE);
            java.lang.StringBuilder sbO = e.a.c.a.a.o("get ios is usb = ");
            sbO.append(f.a.i.m.g.h);
            e.e.a.g.a(sbO.toString());
        }
        if (!zE) {
            java.lang.Boolean bool2 = f.a.i.m.g.f2940g;
            if (bool2 != null) {
                zE2 = bool2.booleanValue();
            } else {
                zE2 = e.a.c.a.a.E(f.a.i.m.g.f2936c, "ENABLE_APP_ANDROID_USB", "true");
                f.a.i.m.g.f2940g = java.lang.Boolean.valueOf(zE2);
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("get android is usb = ");
                sbO2.append(f.a.i.m.g.f2940g);
                e.e.a.g.a(sbO2.toString());
            }
            if (!zE2) {
                textView.setVisibility(8);
            }
        }
        this.y = (android.widget.ImageView) viewInflate.findViewById(net.easyconn.R.id.fragment_qr_img);
        this.x = (android.widget.ImageView) viewInflate.findViewById(net.easyconn.R.id.btn_qr_help);
        this.w = (android.widget.ImageView) viewInflate.findViewById(net.easyconn.R.id.btn_qr_exit);
        this.B = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.tv_device_tag);
        this.x.setOnClickListener(new f.a.k.l0.r3(this));
        this.w.setOnClickListener(new f.a.k.l0.s3(this));
        this.s.setOnClickListener(new f.a.k.l0.t3(this));
        this.u.setOnClickListener(new f.a.k.l0.u3(this));
        f0(f.a.i.g.a.b(this.C).a.getBoolean("key_ec_qr_code_mode_android", true));
        e.e.a.g.a("==> show QrCodeFragment !");
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.J = true;
        f.a.k.n0.j jVar = this.K;
        if (jVar != null && jVar.c()) {
            this.K.a();
            this.K = null;
        }
        f.a.k.n0.j jVar2 = this.L;
        if (jVar2 != null && jVar2.c()) {
            this.L.a();
            this.L = null;
        }
        f.a.k.n0.j jVar3 = this.M;
        if (jVar3 != null && jVar3.c()) {
            this.M.a();
            this.M = null;
        }
        f.a.k.n0.j jVar4 = this.N;
        if (jVar4 != null && jVar4.c()) {
            this.N.a();
            this.N = null;
        }
        if (this.O == null || !this.N.c()) {
            return;
        }
        this.O.a();
        this.O = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        e.e.a.g.a("onDetach");
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    @android.annotation.TargetApi(23)
    public void onAttach(android.content.Context context) {
        e.e.a.g.a("onAttach");
        super.onAttach(context);
        e.e.a.g.a("onAttachToContext");
        this.H = new java.lang.ref.WeakReference<>((android.app.Activity) context);
    }
}
