package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class l implements android.app.Application.ActivityLifecycleCallbacks {
    public static com.umeng.analytics.pro.l a = new com.umeng.analytics.pro.l();
    public final int b = 3000;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1355c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1356d = true;

    /* renamed from: e, reason: collision with root package name */
    public android.os.Handler f1357e = new android.os.Handler(android.os.Looper.getMainLooper());

    /* renamed from: f, reason: collision with root package name */
    public java.util.ArrayList<com.umeng.analytics.pro.m> f1358f = new java.util.ArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    public com.umeng.analytics.pro.l.a f1359g = new com.umeng.analytics.pro.l.a();

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!com.umeng.analytics.pro.l.this.f1355c || !com.umeng.analytics.pro.l.this.f1356d) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> still foreground.");
                return;
            }
            com.umeng.analytics.pro.l.this.f1355c = false;
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> went background.");
            for (int i = 0; i < com.umeng.analytics.pro.l.this.f1358f.size(); i++) {
                ((com.umeng.analytics.pro.m) com.umeng.analytics.pro.l.this.f1358f.get(i)).n();
            }
        }
    }

    public static com.umeng.analytics.pro.l a() {
        return a;
    }

    public static void a(android.content.Context context) {
        if (context instanceof android.app.Application) {
            ((android.app.Application) context).registerActivityLifecycleCallbacks(a);
        }
    }

    public synchronized void a(com.umeng.analytics.pro.m mVar) {
        if (mVar != null) {
            this.f1358f.add(mVar);
        }
    }

    public synchronized void b(com.umeng.analytics.pro.m mVar) {
        if (mVar != null) {
            for (int i = 0; i < this.f1358f.size(); i++) {
                if (this.f1358f.get(i) == mVar) {
                    this.f1358f.remove(i);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(android.app.Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(android.app.Activity activity) {
        this.f1356d = true;
        com.umeng.analytics.pro.l.a aVar = this.f1359g;
        if (aVar != null) {
            this.f1357e.removeCallbacks(aVar);
            this.f1357e.postDelayed(this.f1359g, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(android.app.Activity activity) {
        this.f1356d = false;
        this.f1355c = true;
        com.umeng.analytics.pro.l.a aVar = this.f1359g;
        if (aVar != null) {
            this.f1357e.removeCallbacks(aVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(android.app.Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(android.app.Activity activity) {
    }
}
