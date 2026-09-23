package com.umeng.commonsdk.utils;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: e, reason: collision with root package name */
    public static final int f1603e = 1;
    public final long a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public long f1604c;

    /* renamed from: f, reason: collision with root package name */
    public android.os.HandlerThread f1606f;

    /* renamed from: g, reason: collision with root package name */
    public android.os.Handler f1607g;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1605d = false;
    public android.os.Handler.Callback h = new android.os.Handler.Callback() { // from class: com.umeng.commonsdk.utils.a.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(android.os.Message message) {
            synchronized (com.umeng.commonsdk.utils.a.this) {
                if (com.umeng.commonsdk.utils.a.this.f1605d) {
                    return true;
                }
                long jElapsedRealtime = com.umeng.commonsdk.utils.a.this.f1604c - android.os.SystemClock.elapsedRealtime();
                if (jElapsedRealtime <= 0) {
                    com.umeng.commonsdk.utils.a.this.c();
                    if (com.umeng.commonsdk.utils.a.this.f1606f != null) {
                        com.umeng.commonsdk.utils.a.this.f1606f.quit();
                    }
                } else if (jElapsedRealtime < com.umeng.commonsdk.utils.a.this.b) {
                    com.umeng.commonsdk.utils.a.this.f1607g.sendMessageDelayed(com.umeng.commonsdk.utils.a.this.f1607g.obtainMessage(1), jElapsedRealtime);
                } else {
                    long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime();
                    com.umeng.commonsdk.utils.a.this.a(jElapsedRealtime);
                    long jElapsedRealtime3 = (jElapsedRealtime2 + com.umeng.commonsdk.utils.a.this.b) - android.os.SystemClock.elapsedRealtime();
                    while (jElapsedRealtime3 < 0) {
                        jElapsedRealtime3 += com.umeng.commonsdk.utils.a.this.b;
                    }
                    com.umeng.commonsdk.utils.a.this.f1607g.sendMessageDelayed(com.umeng.commonsdk.utils.a.this.f1607g.obtainMessage(1), jElapsedRealtime3);
                }
                return false;
            }
        }
    };

    public a(long j, long j2) {
        android.os.Handler handler;
        this.a = j;
        this.b = j2;
        if (d()) {
            handler = new android.os.Handler(this.h);
        } else {
            android.os.HandlerThread handlerThread = new android.os.HandlerThread("CountDownTimerThread");
            this.f1606f = handlerThread;
            handlerThread.start();
            handler = new android.os.Handler(this.f1606f.getLooper(), this.h);
        }
        this.f1607g = handler;
    }

    private boolean d() {
        return android.os.Looper.getMainLooper().getThread().equals(java.lang.Thread.currentThread());
    }

    public final synchronized void a() {
        this.f1605d = true;
        this.f1607g.removeMessages(1);
    }

    public abstract void a(long j);

    public final synchronized com.umeng.commonsdk.utils.a b() {
        this.f1605d = false;
        if (this.a <= 0) {
            c();
            return this;
        }
        this.f1604c = android.os.SystemClock.elapsedRealtime() + this.a;
        this.f1607g.sendMessage(this.f1607g.obtainMessage(1));
        return this;
    }

    public abstract void c();
}
