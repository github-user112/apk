package f.a.i.j;

/* loaded from: classes.dex */
public class c {
    public static java.lang.String i = "0123456789";
    public static java.lang.String j;
    public static java.util.concurrent.locks.ReentrantLock k = new java.util.concurrent.locks.ReentrantLock();
    public android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f2920c;

    /* renamed from: d, reason: collision with root package name */
    public android.net.ConnectivityManager f2921d;

    /* renamed from: f, reason: collision with root package name */
    public f.a.i.j.b f2923f;

    /* renamed from: g, reason: collision with root package name */
    public final java.util.List<f.a.i.j.b.C0083b> f2924g = new java.util.ArrayList();
    public java.lang.String a = "http://apirecord.carbit.com.cn/api/record";

    /* renamed from: e, reason: collision with root package name */
    public java.util.concurrent.ExecutorService f2922e = new java.util.concurrent.ThreadPoolExecutor(1, 1, 0, java.util.concurrent.TimeUnit.MILLISECONDS, new java.util.concurrent.LinkedBlockingQueue(), new f.a.i.j.c.a(this));
    public f.a.i.j.c.b h = new f.a.i.j.c.b(null);

    public class a implements java.util.concurrent.ThreadFactory {
        public a(f.a.i.j.c cVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            return new java.lang.Thread(runnable, "post_stats_work_thread");
        }
    }

    public class b extends android.content.BroadcastReceiver {
        public b(f.a.i.j.c.a aVar) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            f.a.i.j.c cVar;
            int i;
            java.lang.String str;
            java.lang.String action = intent.getAction();
            if ("android.net.wifi.STATE_CHANGE".equals(action)) {
                android.os.Parcelable parcelableExtra = intent.getParcelableExtra("networkInfo");
                if (parcelableExtra != null) {
                    f.a.i.j.c.this.f2920c = ((android.net.NetworkInfo) parcelableExtra).getState() == android.net.NetworkInfo.State.CONNECTED;
                    return;
                }
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                android.net.ConnectivityManager connectivityManager = f.a.i.j.c.this.f2921d;
                if (connectivityManager == null) {
                    return;
                }
                android.net.NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    f.a.i.j.c.this.f2920c = false;
                    return;
                } else {
                    if (activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 0) {
                        f.a.i.j.c.this.f2920c = true;
                        return;
                    }
                    return;
                }
            }
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {
                java.lang.String stringExtra = intent.getStringExtra("reason");
                e.e.a.g.a("Intent.ACTION_CLOSE_SYSTEM_DIALOGS reason = " + stringExtra);
                if ("homekey".equals(stringExtra)) {
                    int iG = f.a.i.m.g.G(context);
                    if (iG == 2 || iG == 4) {
                        cVar = f.a.i.j.c.this;
                        i = 10134;
                        str = "EC_WW_HU_HOME";
                    } else {
                        cVar = f.a.i.j.c.this;
                        i = 54;
                        str = "EC_HU_HOME";
                    }
                    cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, i, str);
                }
            }
        }
    }

    public c(android.content.Context context) {
        this.b = context;
        this.f2921d = (android.net.ConnectivityManager) context.getSystemService("connectivity");
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        this.b.registerReceiver(this.h, intentFilter);
        e.e.a.g.a("EcStatsManager constructor done");
    }

    public void a(int i2, int i3, java.lang.String str) {
        b(new f.a.i.j.b.C0083b(new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date(java.lang.System.currentTimeMillis())), i2, i3, str));
    }

    public final void b(f.a.i.j.b.C0083b c0083b) {
        try {
            k.lock();
            if (this.f2923f == null) {
                return;
            }
            synchronized (this.f2924g) {
                java.util.List<f.a.i.j.b.c> list = this.f2923f.b;
                (list.isEmpty() ? this.f2924g : list.get(java.lang.Math.max(list.size() - 1, 0)).f2919c).add(c0083b);
            }
        } finally {
            k.unlock();
        }
    }

    public void c() {
        e.e.a.g.a("clearDataInStatsManager ecStatsData");
        try {
            k.lock();
            this.f2923f = new f.a.i.j.b();
            d();
            android.content.SharedPreferences.Editor editorEdit = this.b.getSharedPreferences("EcStatsManager", 0).edit();
            editorEdit.putString("EcStatsManager", "");
            editorEdit.commit();
        } finally {
            k.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0214 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0168 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d() throws java.lang.IllegalAccessException, java.io.IOException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.j.c.d():void");
    }

    public java.lang.String e() {
        f.a.i.j.b bVar = this.f2923f;
        if (bVar == null) {
            return null;
        }
        bVar.a.f2916g = i;
        return f.a.i.m.c.a(bVar.toString());
    }

    public void f() {
        android.content.Context context = this.b;
        try {
            k.lock();
            java.lang.String string = context.getSharedPreferences("EcStatsManager", 0).getString("EcStatsManager", "");
            f.a.i.j.b bVar = null;
            if (!android.text.TextUtils.isEmpty(string) && !android.text.TextUtils.isEmpty(d.s.y.L(string))) {
                bVar = (f.a.i.j.b) com.alibaba.fastjson.JSON.parseObject(d.s.y.L(string), f.a.i.j.b.class);
            }
            k.unlock();
            this.f2923f = bVar;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("initCarInfo ecStatsData is ");
            sbO.append(this.f2923f);
            e.e.a.g.a(sbO.toString());
            if (this.f2923f == null) {
                this.f2923f = new f.a.i.j.b();
            }
            d();
            e.e.a.g.f(this.f2923f.toString(), new java.lang.Object[0]);
        } catch (java.lang.Throwable th) {
            k.unlock();
            throw th;
        }
    }

    public void g() {
        f.a.i.j.c.b bVar = this.h;
        if (bVar != null) {
            this.b.unregisterReceiver(bVar);
            this.h = null;
        }
        this.f2922e.shutdownNow();
    }

    public void h() {
        try {
            try {
                k.lock();
                e.e.a.g.a("saveDataInSp ecStatsData is " + this.f2923f);
                android.content.SharedPreferences.Editor editorEdit = this.b.getSharedPreferences("EcStatsManager", 0).edit();
                editorEdit.putString("EcStatsManager", d.s.y.o(com.alibaba.fastjson.JSON.toJSONString(this.f2923f)));
                editorEdit.commit();
            } catch (java.lang.Exception e2) {
                e.e.a.g.c("saveDataInSp Exception =  " + android.util.Log.getStackTraceString(e2), new java.lang.Object[0]);
            }
        } finally {
            k.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i(java.lang.String r17, java.lang.String r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.j.c.i(java.lang.String, java.lang.String):boolean");
    }
}
