package f.a.k.m0;

/* loaded from: classes.dex */
public class q0 implements f.a.k.k0.a, f.a.i.h.g {
    public android.content.Context a;
    public f.a.i.l.a b;

    /* renamed from: c, reason: collision with root package name */
    public final f.a.k.k0.b f3092c;

    /* renamed from: d, reason: collision with root package name */
    public final f.a.i.j.c f3093d;

    /* renamed from: e, reason: collision with root package name */
    public final net.easyconn.framework.sdkservice.EasyConnectService f3094e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3095f;

    /* renamed from: g, reason: collision with root package name */
    public net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] f3096g;
    public boolean h = true;
    public long[] i = new long[5];

    public q0(android.content.Context context, f.a.k.k0.b bVar, f.a.i.j.c cVar, net.easyconn.framework.sdkservice.EasyConnectService easyConnectService) {
        this.a = context;
        this.f3092c = bVar;
        bVar.E(this);
        this.f3093d = cVar;
        this.f3094e = easyConnectService;
        this.b = new f.a.i.l.a(context);
    }

    @Override // f.a.k.k0.a
    public void E() {
        ((net.easyconn.EcApplication) this.a.getApplicationContext()).executeTask(new java.lang.Runnable() { // from class: f.a.k.m0.d
            @Override // java.lang.Runnable
            public final void run() {
                this.a.d();
            }
        });
        if (this.h) {
            return;
        }
        this.b.a = true;
    }

    @Override // f.a.i.h.g
    public void M(int i, java.lang.String str) {
        f.a.k.k0.b bVar = this.f3092c;
        if (bVar != null) {
            bVar.v();
            this.f3092c.f(i);
        }
    }

    @Override // f.a.k.k0.a
    public void O() {
        java.lang.String licensePwd;
        long[] jArr = this.i;
        java.lang.System.arraycopy(jArr, 1, jArr, 0, jArr.length - 1);
        long[] jArr2 = this.i;
        jArr2[jArr2.length - 1] = android.os.SystemClock.uptimeMillis();
        if (this.i[0] >= android.os.SystemClock.uptimeMillis() - 1000) {
            this.i = new long[5];
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            int i = 0;
            for (java.util.Map.Entry entry : (!f.a.i.m.g.h0(this.a.getApplicationContext()) ? null : f.a.i.m.g.f2936c).entrySet()) {
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                i++;
                sb2.append(i);
                sb2.append(".");
                sb2.append(entry.getKey());
                sb2.append(": ");
                sb2.append(entry.getValue());
                sb2.append("\n");
                sb.append(sb2.toString());
            }
            f.a.k.k0.b bVar = this.f3092c;
            boolean z = net.easyconn.EcApplication.isDiskLogEnable;
            java.lang.String string = sb.toString();
            net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.f3094e;
            if (easyConnectService != null) {
                if (easyConnectService.f3177g == null) {
                    easyConnectService.b();
                }
                licensePwd = easyConnectService.f3177g.getLicensePwd();
            } else {
                licensePwd = null;
            }
            bVar.o(z, string, licensePwd);
            net.easyconn.ecsdk.ECSDK.getInstance().setLogInfo(net.easyconn.ecsdk.ECTypes.ECLogLevel.EC_LOG_LEVEL_ALL, net.easyconn.ecsdk.ECTypes.ECLogOutputType.EC_LOG_OUT_LOGCAT, null, 31);
            android.widget.Toast.makeText(this.a, "SDK_Logcat = true", 0).show();
        }
    }

    @Override // f.a.k.k0.a
    public java.lang.String R() {
        return net.easyconn.ecsdk.ECSDK.getInstance().getVersion();
    }

    @Override // f.a.i.h.g
    public void S(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i) throws java.lang.NumberFormatException {
        int i2;
        this.f3092c.v();
        if (str.equalsIgnoreCase(f.a.i.l.a.s(this.a))) {
            if (f.a.i.l.a.i(this.a, str3) != null) {
                f.a.i.l.a.y(this.a, r0.versionCode);
            }
            int iW = f.a.i.l.a.w(this.a, str3, "net.easyconn.fileProvider");
            if (iW != 65536) {
                e.a.c.a.a.v("installApkFilePreCheck fail:", iW);
                this.f3092c.a();
                return;
            }
            return;
        }
        long jI = f.a.i.i.q.I();
        java.lang.String str5 = "key_ec_airplay_versioncode";
        if (str.equalsIgnoreCase(f.a.i.l.a.h(this.a))) {
            int i3 = (int) f.a.i.g.a.b(this.a.getApplicationContext()).a.getLong("key_ec_airplay_versioncode", -1L);
            int i4 = f.a.i.m.g.i(this.a.getApplicationContext());
            jI = i3 > i4 ? i3 : i4;
        } else {
            str5 = "key_ec_sdk_versioncode";
        }
        long j = jI;
        net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr = this.f3096g;
        int length = eCOTAUpdateSoftwareArr.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                i2 = 0;
                break;
            }
            net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware eCOTAUpdateSoftware = eCOTAUpdateSoftwareArr[i5];
            if (eCOTAUpdateSoftware.softwareId.equalsIgnoreCase(str)) {
                i2 = eCOTAUpdateSoftware.versionCode;
                break;
            }
            i5++;
        }
        try {
            f.a.i.l.a.C(str3, f.a.i.l.a.n(), false, true);
            long j2 = i2;
            android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.a).a.edit();
            editorEdit.putLong(str5, j2);
            editorEdit.commit();
            f.a.i.l.a.e(this.a.getApplicationContext(), str, null, j, j2, true);
            if (i == 0) {
                this.f3092c.x();
            }
        } catch (java.io.IOException e2) {
            e2.printStackTrace();
            f.a.i.l.a.e(this.a.getApplicationContext(), str, "unzip " + str3 + " to " + f.a.i.l.a.n() + " failed\n" + e2.getMessage(), j, i2, false);
            java.lang.StringBuilder sbR = e.a.c.a.a.r("unzip ", str3, " to ");
            sbR.append(f.a.i.l.a.n());
            sbR.append(" failed");
            e.e.a.g.c(sbR.toString(), new java.lang.Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    @Override // f.a.k.k0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Y() {
        /*
            r6 = this;
            android.content.Context r0 = r6.a
            r1 = 0
            if (r0 == 0) goto L78
            java.lang.String r2 = "connectivity"
            java.lang.Object r2 = r0.getSystemService(r2)
            android.net.ConnectivityManager r2 = (android.net.ConnectivityManager) r2
            android.net.NetworkInfo r2 = r2.getActiveNetworkInfo()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "networkInfo: "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            e.e.a.g.a(r3)
            if (r2 == 0) goto L78
            int r3 = r2.getType()
            boolean r0 = f.a.i.m.g.h0(r0)
            java.lang.String r4 = ""
            if (r0 != 0) goto L34
            goto L3c
        L34:
            java.util.Properties r0 = f.a.i.m.g.f2936c
            java.lang.String r5 = "EXCLUDE_NETWORK_TYPES"
            java.lang.String r4 = r0.getProperty(r5, r4)
        L3c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "currNetworkType: "
            r0.append(r5)
            r0.append(r3)
            java.lang.String r5 = ";excludeNetworkTypes: "
            r0.append(r5)
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            e.e.a.g.a(r0)
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 != 0) goto L73
            java.lang.String r0 = ";"
            java.lang.String[] r0 = r4.split(r0)
            java.util.List r0 = java.util.Arrays.asList(r0)
            java.lang.String r3 = java.lang.String.valueOf(r3)
            boolean r0 = r0.contains(r3)
            if (r0 == 0) goto L73
            goto L78
        L73:
            boolean r0 = r2.isConnected()
            goto L79
        L78:
            r0 = 0
        L79:
            if (r0 != 0) goto L89
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r1 = "updateApp isNetworkConnected false"
            e.e.a.g.c(r1, r0)
            f.a.k.k0.b r0 = r6.f3092c
            r1 = -3
            r0.f(r1)
            return
        L89:
            net.easyconn.framework.sdkservice.EasyConnectService r0 = r6.f3094e
            f.a.i.i.q r0 = r0.a
            if (r0 != 0) goto L97
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r1 = "updateApp ecConnectService.getEcSdkManager() is null, return to avoid null pointer exception."
            e.e.a.g.c(r1, r0)
            return
        L97:
            net.easyconn.framework.sdkservice.EasyConnectService r0 = r6.f3094e
            f.a.i.i.q r0 = r0.a
            f.a.i.i.m r1 = r0.b
            if (r1 == 0) goto La1
            r1.q = r6
        La1:
            r0.C = r6
            net.easyconn.framework.sdkservice.EasyConnectService r0 = r6.f3094e
            f.a.i.i.q r0 = r0.a
            android.content.Context r1 = r6.a
            java.lang.String r1 = f.a.i.l.a.k(r1)
            android.content.Context r2 = r6.a
            java.lang.String r2 = f.a.i.l.a.q(r2)
            net.easyconn.ecsdk.ECTypes$ECOTAUpdateCheckMode r3 = net.easyconn.ecsdk.ECTypes.ECOTAUpdateCheckMode.EC_OTA_CHECK_VIA_NETWORK
            r0.z(r1, r2, r3)
            boolean r0 = r6.h
            if (r0 == 0) goto Lbd
            return
        Lbd:
            boolean r0 = r6.f3095f
            if (r0 == 0) goto Lc2
            return
        Lc2:
            r0 = 1
            r6.f3095f = r0
            java.lang.String r0 = "updateApp batchCheckUpdate"
            e.e.a.g.a(r0)
            android.content.Context r0 = r6.a
            android.app.Activity r0 = (android.app.Activity) r0
            android.app.Application r0 = r0.getApplication()
            net.easyconn.EcApplication r0 = (net.easyconn.EcApplication) r0
            f.a.k.m0.e r1 = new f.a.k.m0.e
            r1.<init>()
            r0.executeTask(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.m0.q0.Y():void");
    }

    @Override // f.a.k.k0.a
    public void a(int i, int i2, java.lang.String str) {
        f.a.i.j.c cVar = this.f3093d;
        if (cVar != null) {
            cVar.a(i, i2, str);
        }
    }

    @Override // f.a.k.k0.a
    public java.lang.String b() {
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.f3094e;
        if (easyConnectService != null) {
            return easyConnectService.a();
        }
        return null;
    }

    @Override // f.a.i.h.g
    public void c() {
        this.f3092c.v();
    }

    public /* synthetic */ void d() {
        this.f3094e.i();
    }

    public /* synthetic */ void e() throws java.lang.Throwable {
        this.b.a(new f.a.k.m0.p0(this));
    }

    @Override // f.a.i.h.g
    public void j(java.lang.String str, float f2, int i, int i2) {
        net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr;
        java.lang.StringBuilder sbR = e.a.c.a.a.r(" sid = ", str, " progress = ");
        sbR.append(java.lang.String.format(java.util.Locale.ENGLISH, "%d%%", java.lang.Integer.valueOf((int) (100.0f * f2))));
        e.e.a.g.b(str, sbR.toString());
        if (str == null || (eCOTAUpdateSoftwareArr = this.f3096g) == null) {
            return;
        }
        for (net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware eCOTAUpdateSoftware : eCOTAUpdateSoftwareArr) {
            if (str.equalsIgnoreCase(eCOTAUpdateSoftware.softwareId)) {
                this.f3092c.m(eCOTAUpdateSoftware.softwareName, f2);
                return;
            }
        }
    }

    @Override // f.a.c
    public void onDestroy() {
    }

    @Override // f.a.i.h.g
    public void onOTAUpdateRequestDownload(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i) {
    }

    @Override // f.a.c
    public void onStart() {
    }

    @Override // f.a.i.h.g
    public void u(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i, net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr2, int i2) {
        e.a.c.a.a.v("onCheckResult downloadableLength = ", i);
        if (eCOTAUpdateSoftwareArr2 != null) {
            net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware eCOTAUpdateSoftware = null;
            java.lang.String strS = f.a.i.l.a.s(this.a);
            int length = eCOTAUpdateSoftwareArr2.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware eCOTAUpdateSoftware2 = eCOTAUpdateSoftwareArr2[i3];
                if (strS != null && strS.equals(eCOTAUpdateSoftware2.softwareId)) {
                    eCOTAUpdateSoftware = eCOTAUpdateSoftware2;
                    break;
                }
                i3++;
            }
            if (eCOTAUpdateSoftware != null) {
                if (f.a.i.l.a.i(this.a, eCOTAUpdateSoftware.packagePath) != null) {
                    f.a.i.l.a.y(this.a, r7.versionCode);
                }
                int iW = f.a.i.l.a.w(this.a, eCOTAUpdateSoftware.packagePath, "net.easyconn.fileProvider");
                if (iW != 65536) {
                    e.a.c.a.a.v("installApkFilePreCheck fail:", iW);
                    this.f3092c.a();
                    return;
                }
                return;
            }
        }
        if (i <= 0) {
            this.f3092c.f(i);
            return;
        }
        this.f3096g = eCOTAUpdateSoftwareArr;
        if (eCOTAUpdateSoftwareArr != null) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.lang.String strS2 = f.a.i.l.a.s(this.a);
            for (net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware eCOTAUpdateSoftware3 : eCOTAUpdateSoftwareArr) {
                java.lang.String str = eCOTAUpdateSoftware3.softwareId;
                if (str.equals(strS2) || str.equals(f.a.i.l.a.r(this.a)) || str.equals(f.a.i.l.a.h(this.a))) {
                    arrayList.add(str);
                }
            }
            if (arrayList.size() <= 0) {
                this.f3092c.f(0);
                return;
            }
            if (!arrayList.contains(strS2)) {
                int size = arrayList.size();
                this.f3094e.a.n0((java.lang.String[]) arrayList.toArray(new java.lang.String[size]), size);
                e.a.c.a.a.v("updateApp onCheckResult startOTAUpdate length = ", size);
            } else {
                this.f3094e.a.n0(new java.lang.String[]{strS2}, 1);
                f.a.i.l.a.x(this.a);
                e.e.a.g.a("updateApp onCheckResult startOTAUpdate ec apk = " + strS2);
            }
        }
    }

    @Override // f.a.k.k0.a
    public void z(boolean z) {
        net.easyconn.EcApplication.isDiskLogEnable = z;
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(this.a.getApplicationContext()).a.edit();
        editorEdit.putBoolean("key_ec_disk_log_state", z);
        editorEdit.apply();
        net.easyconn.ecsdk.ECSDK.getInstance().setLogInfo(net.easyconn.ecsdk.ECTypes.ECLogLevel.EC_LOG_LEVEL_ALL, net.easyconn.ecsdk.ECTypes.ECLogOutputType.EC_LOG_OUT_FILE, "/sdcard/logger", 7);
    }
}
