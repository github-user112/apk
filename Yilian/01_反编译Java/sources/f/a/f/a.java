package f.a.f;

/* loaded from: classes.dex */
public class a {
    public android.content.SharedPreferences a;
    public android.content.SharedPreferences.Editor b;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f2846c;

    /* renamed from: d, reason: collision with root package name */
    public f.a.f.a.d f2847d;

    /* renamed from: e, reason: collision with root package name */
    public f.a.f.a.c f2848e;

    /* renamed from: f, reason: collision with root package name */
    public android.net.wifi.WifiManager f2849f;

    /* renamed from: g, reason: collision with root package name */
    public android.net.ConnectivityManager f2850g;
    public volatile boolean i;
    public volatile java.lang.String j;
    public volatile java.lang.String k;
    public volatile java.lang.String l;
    public f.a.f.a.e m;
    public volatile boolean h = false;
    public volatile boolean o = false;
    public volatile boolean p = false;
    public volatile boolean q = false;
    public android.content.BroadcastReceiver r = new f.a.f.a.C0079a();
    public java.util.List<android.net.wifi.ScanResult> n = java.util.Collections.synchronizedList(new java.util.ArrayList());

    /* renamed from: f.a.f.a$a, reason: collision with other inner class name */
    public class C0079a extends android.content.BroadcastReceiver {
        public C0079a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            java.lang.String action = intent.getAction();
            e.e.a.g.a("BleNetworkManager action is " + action);
            if (!"android.net.wifi.WIFI_STATE_CHANGED".equals(action)) {
                if (!"android.net.wifi.WIFI_AP_STATE_CHANGED".equals(action)) {
                    if ("android.net.wifi.SCAN_RESULTS".equals(action)) {
                        java.util.List<android.net.wifi.ScanResult> scanResults = f.a.f.a.this.f2849f.getScanResults();
                        f.a.f.a.this.n.clear();
                        f.a.f.a.this.n.addAll(scanResults);
                        return;
                    }
                    return;
                }
                int intExtra = intent.getIntExtra("wifi_state", 0);
                e.a.c.a.a.v("BleNetworkManager apState is ", intExtra);
                if (intExtra == 11) {
                    f.a.f.a.this.g();
                    return;
                } else {
                    if (intExtra == 14) {
                        f.a.f.a aVar = f.a.f.a.this;
                        aVar.h = false;
                        aVar.i = false;
                        return;
                    }
                    return;
                }
            }
            int intExtra2 = intent.getIntExtra("wifi_state", 0);
            e.a.c.a.a.v("BleNetworkManager wifiState is ", intExtra2);
            if (intExtra2 != 0) {
                if (intExtra2 == 1) {
                    f.a.f.a aVar2 = f.a.f.a.this;
                    if (aVar2 == null) {
                        throw null;
                    }
                    e.e.a.g.a("BleNetworkManager onWifiClosed");
                    aVar2.l();
                    if (aVar2.i) {
                        aVar2.a(true);
                    }
                } else if (intExtra2 == 3) {
                    f.a.f.a.this.i();
                    return;
                } else if (intExtra2 != 4) {
                    return;
                }
            }
            if (intExtra2 == 4) {
                f.a.f.a aVar3 = f.a.f.a.this;
                aVar3.h = false;
                aVar3.i = false;
            }
        }
    }

    public class b extends android.net.ConnectivityManager.NetworkCallback {
        public b(f.a.f.a aVar) {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(android.net.Network network) {
            e.e.a.g.a("BleNetworkManager connectWifi requestNetwork onAvailable network = " + network);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            e.e.a.g.a("BleNetworkManager connectWifi requestNetwork onUnavailable");
        }
    }

    public interface c {
    }

    public class d extends android.os.Handler {
        public d(android.os.Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("BleNetworkManager handleMessage  msg.what = ");
            sbO.append(message.what);
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            int i = message.what;
            if (i == 0) {
                f.a.f.a.this.f2849f.setWifiEnabled(true);
                e.e.a.g.a("BleNetworkManager openWifi");
            } else if (i == 1) {
                boolean zB = f.a.f.a.this.b();
                f.a.f.a.this.f2847d.removeMessages(1);
                if (zB) {
                    e.e.a.g.c("BleNetworkManager connectWifi success", new java.lang.Object[0]);
                } else {
                    int i2 = message.arg1;
                    e.e.a.g.c(e.a.c.a.a.K("BleNetworkManager connectWifi rertyCount = ", i2), new java.lang.Object[0]);
                    if (f.a.f.a.this.o || i2 >= 200) {
                        f.a.f.a.this.f2847d.removeMessages(1);
                        f.a.f.a.this.h = false;
                        e.e.a.g.c("BleNetworkManager connectWifi retry fail", new java.lang.Object[0]);
                    } else {
                        f.a.f.a.d dVar = f.a.f.a.this.f2847d;
                        dVar.sendMessageDelayed(dVar.obtainMessage(1, i2 + 1, 0), 1000L);
                    }
                }
            } else if (i == 2) {
                f.a.f.a.this.f2849f.setWifiEnabled(false);
                e.e.a.g.a("BleNetworkManager closeWifi");
            } else if (i == 3) {
                f.a.f.a aVar = f.a.f.a.this;
                if (aVar == null) {
                    throw null;
                }
                e.a.c.a.a.A(e.a.c.a.a.o("BleNetworkManager openAp, Build.VERSION.SDK_INT = "), android.os.Build.VERSION.SDK_INT);
                try {
                    if (android.os.Build.VERSION.SDK_INT < 26) {
                        aVar.f2849f.getClass().getMethod("setWifiApEnabled", android.net.wifi.WifiConfiguration.class, java.lang.Boolean.TYPE).invoke(aVar.f2849f, null, java.lang.Boolean.TRUE);
                    } else {
                        java.lang.Class<?> cls = java.lang.Class.forName("android.net.ConnectivityManager$OnStartTetheringCallback");
                        java.lang.reflect.Method declaredMethod = aVar.f2850g.getClass().getDeclaredMethod("startTethering", java.lang.Integer.TYPE, java.lang.Boolean.TYPE, cls);
                        f.a.j.j jVar = new f.a.j.j(cls);
                        jVar.f3017c = new f.a.f.c(aVar);
                        declaredMethod.invoke(aVar.f2850g, 0, java.lang.Boolean.FALSE, jVar.a());
                    }
                } catch (java.lang.Exception e2) {
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("startTethering fail msg =  ");
                    sbO2.append(e2.getMessage());
                    e.e.a.g.a(sbO2.toString());
                    e2.printStackTrace();
                }
            } else if (i == 4) {
                f.a.f.a aVar2 = f.a.f.a.this;
                if (aVar2 == null) {
                    throw null;
                }
                e.a.c.a.a.A(e.a.c.a.a.o("BleNetworkManager closeAp, Build.VERSION.SDK_INT = "), android.os.Build.VERSION.SDK_INT);
                try {
                    if (android.os.Build.VERSION.SDK_INT < 26) {
                        aVar2.f2849f.getClass().getMethod("setWifiApEnabled", android.net.wifi.WifiConfiguration.class, java.lang.Boolean.TYPE).invoke(aVar2.f2849f, null, java.lang.Boolean.FALSE);
                    } else {
                        aVar2.f2850g.getClass().getDeclaredMethod("stopTethering", java.lang.Integer.TYPE).invoke(aVar2.f2850g, 0);
                    }
                } catch (java.lang.Exception e3) {
                    java.lang.StringBuilder sbO3 = e.a.c.a.a.o("stopTethering fail msg =  ");
                    sbO3.append(e3.getMessage());
                    e.e.a.g.a(sbO3.toString());
                }
            }
            super.handleMessage(message);
        }
    }

    public class e extends java.lang.Thread {
        public e() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws java.lang.InterruptedException {
            e.e.a.g.a("BleNetworkManager WiFiScanThread: begin");
            while (!f.a.f.a.this.o && f.a.f.a.this.f2849f != null && !java.lang.Thread.currentThread().isInterrupted()) {
                try {
                    e.e.a.g.a("BleNetworkManager WiFiScanThread: begin startScan");
                    f.a.f.a.this.f2849f.startScan();
                    java.lang.Thread.sleep(3500L);
                } catch (java.lang.InterruptedException unused) {
                }
            }
        }
    }

    public a(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        this.i = false;
        this.f2846c = context;
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("ble_network_manager_msg_thread");
        handlerThread.start();
        this.f2847d = new f.a.f.a.d(handlerThread.getLooper());
        this.f2849f = (android.net.wifi.WifiManager) this.f2846c.getApplicationContext().getSystemService("wifi");
        this.f2850g = (android.net.ConnectivityManager) this.f2846c.getApplicationContext().getSystemService("connectivity");
        android.content.SharedPreferences sharedPreferences = this.f2846c.getSharedPreferences("ble_android_ap_info", 0);
        this.a = sharedPreferences;
        this.b = sharedPreferences.edit();
        e.e.a.g.a("BleNetworkManager registerReceiver()");
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
        this.f2846c.getApplicationContext().registerReceiver(this.r, intentFilter);
        e.e.a.g.a("BleNetworkManager startAutoConnect");
        if (this.a.getBoolean("ble_is_android_device", false)) {
            e.e.a.g.a("BleNetworkManager startAutoConnect isLastBLEAndroidDevice");
            j(d(), c());
        } else {
            e.e.a.g.a("BleNetworkManager startAutoConnect isLastBLEIosDevice");
            this.i = true;
            m(false);
        }
    }

    public void a(boolean z) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int i;
        e.a.c.a.a.z("BleNetworkManager apEnabled enabled = ", z);
        if (z) {
            i = 3;
            if (f()) {
                this.f2847d.removeMessages(3);
                h();
                return;
            }
        } else {
            i = 4;
            if (!f()) {
                this.f2847d.removeMessages(4);
                g();
                return;
            }
        }
        this.f2847d.sendEmptyMessage(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0102 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b() {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.f.a.b():boolean");
    }

    public final java.lang.String c() {
        return this.a.getString("pwd", "");
    }

    public final java.lang.String d() {
        return this.a.getString(com.umeng.commonsdk.internal.utils.f.f1486d, "");
    }

    public android.net.wifi.WifiConfiguration e() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        try {
            java.lang.Object objInvoke = this.f2849f.getClass().getMethod("getWifiApConfiguration", new java.lang.Class[0]).invoke(this.f2849f, new java.lang.Object[0]);
            if (objInvoke != null) {
                return (android.net.wifi.WifiConfiguration) objInvoke;
            }
            return null;
        } catch (java.lang.Exception e2) {
            e.e.a.g.a("BleNetworkManager getApPassword Exception e = " + e2);
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean f() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            r5 = this;
            android.content.Context r0 = r5.f2846c
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r0 = 0
            android.net.wifi.WifiManager r2 = r5.f2849f     // Catch: java.lang.NoSuchMethodException -> L16
            java.lang.Class r2 = r2.getClass()     // Catch: java.lang.NoSuchMethodException -> L16
            java.lang.String r3 = "getWifiApState"
            java.lang.Class[] r4 = new java.lang.Class[r1]     // Catch: java.lang.NoSuchMethodException -> L16
            java.lang.reflect.Method r0 = r2.getMethod(r3, r4)     // Catch: java.lang.NoSuchMethodException -> L16
            goto L1a
        L16:
            r2 = move-exception
            r2.printStackTrace()
        L1a:
            android.net.wifi.WifiManager r2 = r5.f2849f     // Catch: java.lang.reflect.InvocationTargetException -> L29 java.lang.IllegalAccessException -> L2e
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.reflect.InvocationTargetException -> L29 java.lang.IllegalAccessException -> L2e
            java.lang.Object r0 = r0.invoke(r2, r3)     // Catch: java.lang.reflect.InvocationTargetException -> L29 java.lang.IllegalAccessException -> L2e
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.reflect.InvocationTargetException -> L29 java.lang.IllegalAccessException -> L2e
            int r0 = r0.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L29 java.lang.IllegalAccessException -> L2e
            goto L33
        L29:
            r0 = move-exception
            r0.printStackTrace()
            goto L32
        L2e:
            r0 = move-exception
            r0.printStackTrace()
        L32:
            r0 = 0
        L33:
            java.lang.String r2 = "BleNetworkManager wifi sharing state -> "
            e.a.c.a.a.v(r2, r0)
            r2 = 12
            if (r0 == r2) goto L40
            r2 = 13
            if (r0 != r2) goto L41
        L40:
            r1 = 1
        L41:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.f.a.f():boolean");
    }

    public void g() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        e.a.c.a.a.C(e.a.c.a.a.o("BleNetworkManager onApClosed inProgressOpenWifiAndConnectForBleAp = "), this.h);
        if (this.h) {
            m(true);
        }
    }

    public void h() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("BleNetworkManager onApOpen mInProgressOpenApAndConnectForBleAp = ");
        sbO.append(this.i);
        sbO.append(", mIsIosBleConnect = ");
        e.a.c.a.a.C(sbO, this.q);
        if (this.f2848e != null && this.i && this.q) {
            f.a.f.a.c cVar = this.f2848e;
            android.net.wifi.WifiConfiguration wifiConfigurationE = e();
            java.lang.String str = wifiConfigurationE == null ? "" : wifiConfigurationE.SSID;
            e.e.a.g.a("BleNetworkManager getApName apName = " + str);
            android.net.wifi.WifiConfiguration wifiConfigurationE2 = e();
            java.lang.String str2 = wifiConfigurationE2 != null ? wifiConfigurationE2.preSharedKey : "";
            e.a.c.a.a.w("BleNetworkManager getApPassword apPassword = ", str2);
            java.lang.String str3 = this.l;
            if (((f.a.i.i.j) cVar) == null) {
                throw null;
            }
            e.e.a.g.a("EasyConnectService onApOpen");
            net.easyconn.ecsdk.ECTypes.EBTNetInfo eBTNetInfo = new net.easyconn.ecsdk.ECTypes.EBTNetInfo();
            eBTNetInfo.ssid = str;
            eBTNetInfo.pwd = str2;
            net.easyconn.ecsdk.ECSDK.getInstance().setBTRequestBuildNetRly(str3, new net.easyconn.ecsdk.ECTypes.EBTRequestBuildNetRly(1, eBTNetInfo));
            this.i = false;
            this.q = false;
        }
    }

    public void i() {
        e.e.a.g.a("BleNetworkManager onWifiOpen");
        e.e.a.g.a("BleNetworkManager startScanWifi");
        this.o = false;
        if (this.m == null) {
            f.a.f.a.e eVar = new f.a.f.a.e();
            this.m = eVar;
            eVar.setName("WiFiScanThread");
            this.m.start();
        }
        if (this.h) {
            this.f2847d.sendEmptyMessage(1);
        }
    }

    public final void j(java.lang.String str, java.lang.String str2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        e.e.a.g.a("BleNetworkManager openWifiAndConnect ssid = " + str + ", password = " + str2);
        if (!d().equals(str) || !c().equals(str2)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("BleNetworkManager saveNewAndroidApInfo, oldApInfo ssid:");
            sbO.append(d());
            sbO.append(" ,password:");
            sbO.append(c());
            sbO.append(" ;newApInfo ssid:");
            sbO.append(str);
            sbO.append(" ,password:");
            sbO.append(str2);
            e.e.a.g.a(sbO.toString());
            this.b.putString(com.umeng.commonsdk.internal.utils.f.f1486d, str);
            this.b.putString("pwd", str2);
            this.b.apply();
        }
        this.j = str;
        this.k = str2;
        this.h = true;
        a(false);
    }

    public final void k(boolean z) {
        this.b.putBoolean("ble_is_android_device", z);
        if (!z) {
            this.b.putString(com.umeng.commonsdk.internal.utils.f.f1486d, "");
            this.b.putString("pwd", "");
            this.b.apply();
        }
        this.b.apply();
    }

    public void l() {
        e.e.a.g.a("BleNetworkManager stopScanWifi");
        this.o = true;
        f.a.f.a.e eVar = this.m;
        if (eVar != null) {
            try {
                if (!eVar.isInterrupted()) {
                    this.m.interrupt();
                    this.m.join(50L);
                }
            } catch (java.lang.InterruptedException | java.lang.Exception unused) {
            } catch (java.lang.Throwable th) {
                this.m = null;
                throw th;
            }
            this.m = null;
        }
    }

    public void m(boolean z) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        e.a.c.a.a.z("BleNetworkManager wifiEnabled enabled = ", z);
        if (z) {
            android.net.wifi.WifiManager wifiManager = this.f2849f;
            if (!(wifiManager == null ? false : wifiManager.isWifiEnabled())) {
                this.f2847d.sendEmptyMessage(0);
                return;
            } else {
                this.f2847d.removeMessages(0);
                i();
                return;
            }
        }
        android.net.wifi.WifiManager wifiManager2 = this.f2849f;
        if (wifiManager2 != null ? wifiManager2.isWifiEnabled() : false) {
            this.f2847d.sendEmptyMessage(2);
            return;
        }
        this.f2847d.removeMessages(2);
        e.e.a.g.a("BleNetworkManager onWifiClosed");
        l();
        if (this.i) {
            a(true);
        }
    }
}
