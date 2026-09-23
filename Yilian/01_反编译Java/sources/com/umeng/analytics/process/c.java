package com.umeng.analytics.process;

/* loaded from: classes.dex */
public class c {
    public static com.umeng.analytics.process.c a;
    public java.util.concurrent.ConcurrentHashMap<java.lang.String, com.umeng.analytics.process.c.a> b = new java.util.concurrent.ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f1412c;

    public static class a {
        public java.util.concurrent.atomic.AtomicInteger a = new java.util.concurrent.atomic.AtomicInteger();
        public android.database.sqlite.SQLiteOpenHelper b;

        /* renamed from: c, reason: collision with root package name */
        public android.database.sqlite.SQLiteDatabase f1413c;

        public static com.umeng.analytics.process.c.a a(android.content.Context context, java.lang.String str) {
            android.content.Context appContext = com.umeng.commonsdk.service.UMGlobalContext.getAppContext(context);
            com.umeng.analytics.process.c.a aVar = new com.umeng.analytics.process.c.a();
            aVar.b = com.umeng.analytics.process.b.a(appContext, str);
            return aVar;
        }

        public synchronized android.database.sqlite.SQLiteDatabase a() {
            if (this.a.incrementAndGet() == 1) {
                this.f1413c = this.b.getWritableDatabase();
            }
            return this.f1413c;
        }

        public synchronized void b() {
            try {
                if (this.a.decrementAndGet() == 0) {
                    this.f1413c.close();
                }
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    public static com.umeng.analytics.process.c a(android.content.Context context) {
        if (a == null) {
            synchronized (com.umeng.analytics.process.c.class) {
                if (a == null) {
                    a = new com.umeng.analytics.process.c();
                }
            }
        }
        com.umeng.analytics.process.c cVar = a;
        cVar.f1412c = context;
        return cVar;
    }

    private com.umeng.analytics.process.c.a c(java.lang.String str) {
        if (this.b.get(str) != null) {
            return this.b.get(str);
        }
        com.umeng.analytics.process.c.a aVarA = com.umeng.analytics.process.c.a.a(this.f1412c, str);
        this.b.put(str, aVarA);
        return aVarA;
    }

    public synchronized android.database.sqlite.SQLiteDatabase a(java.lang.String str) {
        return c(str).a();
    }

    public synchronized void b(java.lang.String str) {
        c(str).b();
    }
}
