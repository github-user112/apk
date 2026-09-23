package com.tencent.bugly.crashreport.crash;

/* loaded from: classes.dex */
public class BuglyBroadcastReceiver extends android.content.BroadcastReceiver {
    public static com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver a;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f979c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f980d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f981e = true;
    public android.content.IntentFilter b = new android.content.IntentFilter();

    public class a implements java.lang.Runnable {
        public final /* synthetic */ com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver a;

        public a(com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver buglyBroadcastReceiver) {
            this.a = buglyBroadcastReceiver;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.tencent.bugly.proguard.aa.c(com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.a.getClass(), "Register broadcast receiver of Bugly.", new java.lang.Object[0]);
                synchronized (this.a) {
                    com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.this.f979c.registerReceiver(com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.a, com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.this.b, "com.tencent.bugly.BuglyBroadcastReceiver.permission", null);
                }
            } catch (java.lang.Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static synchronized com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver getInstance() {
        if (a == null) {
            a = new com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver();
        }
        return a;
    }

    public final synchronized boolean a(android.content.Context context, android.content.Intent intent) {
        if (context != null && intent != null) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (this.f981e) {
                    this.f981e = false;
                    return true;
                }
                java.lang.String strB = com.tencent.bugly.crashreport.common.info.d.b(this.f979c);
                com.tencent.bugly.proguard.aa.a("is Connect BC " + strB, new java.lang.Object[0]);
                com.tencent.bugly.proguard.aa.c("network %s changed to %s", "" + this.f980d, "" + strB);
                if (strB == null) {
                    this.f980d = null;
                    return true;
                }
                java.lang.String str = this.f980d;
                this.f980d = strB;
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                com.tencent.bugly.crashreport.common.strategy.c cVarB = com.tencent.bugly.crashreport.common.strategy.c.b();
                com.tencent.bugly.proguard.W wA = com.tencent.bugly.proguard.W.a();
                com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(context);
                if (cVarB != null && wA != null && aVarA != null) {
                    if (!strB.equals(str) && jCurrentTimeMillis - wA.b(com.tencent.bugly.crashreport.crash.m.a) > 30000) {
                        com.tencent.bugly.proguard.aa.c("try to upload crash on network changed.", new java.lang.Object[0]);
                        com.tencent.bugly.crashreport.crash.m mVarG = com.tencent.bugly.crashreport.crash.m.g();
                        if (mVarG != null) {
                            mVarG.a(0L);
                        }
                        com.tencent.bugly.proguard.aa.c("try to upload userinfo on network changed.", new java.lang.Object[0]);
                        com.tencent.bugly.crashreport.biz.e.i.b();
                    }
                    return true;
                }
                com.tencent.bugly.proguard.aa.e("not inited BC not work", new java.lang.Object[0]);
                return true;
            }
        }
        return false;
    }

    public synchronized void addFilter(java.lang.String str) {
        if (!this.b.hasAction(str)) {
            this.b.addAction(str);
        }
        com.tencent.bugly.proguard.aa.a("add action %s", str);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(android.content.Context context, android.content.Intent intent) {
        try {
            a(context, intent);
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public synchronized void register(android.content.Context context) {
        this.f979c = context;
        com.tencent.bugly.proguard.ha.a(new com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.a(this));
    }

    public synchronized void unregister(android.content.Context context) {
        try {
            com.tencent.bugly.proguard.aa.c(getClass(), "Unregister broadcast receiver of Bugly.", new java.lang.Object[0]);
            context.unregisterReceiver(this);
            this.f979c = context;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
        }
    }
}
