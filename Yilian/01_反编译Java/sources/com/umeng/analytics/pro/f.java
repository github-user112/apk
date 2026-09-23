package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class f {
    public static android.database.sqlite.SQLiteOpenHelper b;

    /* renamed from: d, reason: collision with root package name */
    public static android.content.Context f1333d;
    public java.util.concurrent.atomic.AtomicInteger a;

    /* renamed from: c, reason: collision with root package name */
    public android.database.sqlite.SQLiteDatabase f1334c;

    public static class a {
        public static final com.umeng.analytics.pro.f a = new com.umeng.analytics.pro.f();
    }

    public f() {
        this.a = new java.util.concurrent.atomic.AtomicInteger();
    }

    public static com.umeng.analytics.pro.f a(android.content.Context context) {
        if (f1333d == null && context != null) {
            android.content.Context applicationContext = context.getApplicationContext();
            f1333d = applicationContext;
            b = com.umeng.analytics.pro.e.a(applicationContext);
        }
        return com.umeng.analytics.pro.f.a.a;
    }

    public synchronized android.database.sqlite.SQLiteDatabase a() {
        if (this.a.incrementAndGet() == 1) {
            this.f1334c = b.getWritableDatabase();
        }
        return this.f1334c;
    }

    public synchronized void b() {
        try {
            if (this.a.decrementAndGet() == 0) {
                this.f1334c.close();
            }
        } catch (java.lang.Throwable unused) {
        }
    }
}
