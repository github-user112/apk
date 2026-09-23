package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class e {
    public static final long a = 86400000;
    public static com.umeng.commonsdk.statistics.idtracking.e b = null;

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1532c = "umeng_it.cache";
    public static java.lang.Object j = new java.lang.Object();

    /* renamed from: d, reason: collision with root package name */
    public java.io.File f1533d;

    /* renamed from: f, reason: collision with root package name */
    public long f1535f;
    public com.umeng.commonsdk.statistics.idtracking.e.a i;

    /* renamed from: e, reason: collision with root package name */
    public com.umeng.commonsdk.statistics.proto.c f1534e = null;
    public java.util.Set<com.umeng.commonsdk.statistics.idtracking.a> h = new java.util.HashSet();

    /* renamed from: g, reason: collision with root package name */
    public long f1536g = 86400000;

    public static class a {
        public android.content.Context a;
        public java.util.Set<java.lang.String> b = new java.util.HashSet();

        public a(android.content.Context context) {
            this.a = context;
        }

        public synchronized void a() {
            if (!this.b.isEmpty()) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                java.util.Iterator<java.lang.String> it = this.b.iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(',');
                }
                sb.deleteCharAt(sb.length() - 1);
                com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(this.a).edit().putString("invld_id", sb.toString()).commit();
            }
        }

        public synchronized boolean a(java.lang.String str) {
            return !this.b.contains(str);
        }

        public synchronized void b() {
            java.lang.String[] strArrSplit;
            java.lang.String string = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(this.a).getString("invld_id", null);
            if (!android.text.TextUtils.isEmpty(string) && (strArrSplit = string.split(",")) != null) {
                for (java.lang.String str : strArrSplit) {
                    if (!android.text.TextUtils.isEmpty(str)) {
                        this.b.add(str);
                    }
                }
            }
        }

        public synchronized void b(java.lang.String str) {
            this.b.add(str);
        }

        public void c(java.lang.String str) {
            this.b.remove(str);
        }
    }

    public e(android.content.Context context) {
        this.i = null;
        this.f1533d = new java.io.File(context.getFilesDir(), f1532c);
        com.umeng.commonsdk.statistics.idtracking.e.a aVar = new com.umeng.commonsdk.statistics.idtracking.e.a(context);
        this.i = aVar;
        aVar.b();
    }

    public static synchronized com.umeng.commonsdk.statistics.idtracking.e a(android.content.Context context) {
        if (b == null) {
            com.umeng.commonsdk.statistics.idtracking.e eVar = new com.umeng.commonsdk.statistics.idtracking.e(context);
            b = eVar;
            eVar.a(new com.umeng.commonsdk.statistics.idtracking.f(context));
            b.a(new com.umeng.commonsdk.statistics.idtracking.b(context));
            b.a(new com.umeng.commonsdk.statistics.idtracking.l(context));
            b.a(new com.umeng.commonsdk.statistics.idtracking.d(context));
            b.a(new com.umeng.commonsdk.statistics.idtracking.c(context));
            b.a(new com.umeng.commonsdk.statistics.idtracking.g(context));
            b.a(new com.umeng.commonsdk.statistics.idtracking.k());
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
                b.a(new com.umeng.commonsdk.statistics.idtracking.i(context));
            }
            com.umeng.commonsdk.statistics.idtracking.j jVar = new com.umeng.commonsdk.statistics.idtracking.j(context);
            if (jVar.g()) {
                b.a(jVar);
                b.a(new com.umeng.commonsdk.statistics.idtracking.h(context));
                jVar.i();
            }
            b.f();
        }
        return b;
    }

    public static synchronized void a() {
        if (b != null) {
            b.e();
            b = null;
        }
    }

    private void a(com.umeng.commonsdk.statistics.proto.c cVar) {
        java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.b> map;
        if (cVar == null || (map = cVar.a) == null) {
            return;
        }
        if (map.containsKey(com.umeng.commonsdk.statistics.idtracking.g.a) && !com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.h)) {
            cVar.a.remove(com.umeng.commonsdk.statistics.idtracking.g.a);
        }
        if (cVar.a.containsKey(com.umeng.commonsdk.statistics.idtracking.f.a) && !com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.f1612g)) {
            cVar.a.remove(com.umeng.commonsdk.statistics.idtracking.f.a);
        }
        if (cVar.a.containsKey(com.umeng.commonsdk.statistics.idtracking.b.a) && !com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
            cVar.a.remove(com.umeng.commonsdk.statistics.idtracking.b.a);
        }
        if (cVar.a.containsKey(com.umeng.commonsdk.statistics.idtracking.k.a) && !com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.j)) {
            cVar.a.remove(com.umeng.commonsdk.statistics.idtracking.k.a);
        }
        if (cVar.a.containsKey(com.umeng.commonsdk.statistics.idtracking.c.a) && !com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.w)) {
            cVar.a.remove(com.umeng.commonsdk.statistics.idtracking.c.a);
        }
        if (!cVar.a.containsKey(com.umeng.commonsdk.statistics.idtracking.i.f1538d) || com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
            return;
        }
        cVar.a.remove(com.umeng.commonsdk.statistics.idtracking.i.f1538d);
    }

    private boolean a(com.umeng.commonsdk.statistics.idtracking.a aVar) {
        if (this.i.a(aVar.b())) {
            return this.h.add(aVar);
        }
        if (!com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
            return false;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("invalid domain: ");
        sbO.append(aVar.b());
        com.umeng.commonsdk.statistics.common.MLog.w(sbO.toString());
        return false;
    }

    private void b(com.umeng.commonsdk.statistics.proto.c cVar) {
        byte[] bArrA;
        synchronized (j) {
            if (cVar != null) {
                try {
                    synchronized (this) {
                        a(cVar);
                        bArrA = new com.umeng.analytics.pro.az().a(cVar);
                    }
                    if (bArrA != null) {
                        com.umeng.commonsdk.statistics.common.HelperUtils.writeFile(this.f1533d, bArrA);
                    }
                } catch (java.lang.Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private synchronized void h() {
        com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
        java.util.HashMap map = new java.util.HashMap();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.h) {
            if (aVar.c()) {
                if (aVar.d() != null) {
                    map.put(aVar.b(), aVar.d());
                }
                if (aVar.e() != null && !aVar.e().isEmpty()) {
                    arrayList.addAll(aVar.e());
                }
            }
        }
        cVar.a(arrayList);
        cVar.a(map);
        synchronized (this) {
            this.f1534e = cVar;
        }
    }

    private com.umeng.commonsdk.statistics.proto.c i() {
        java.lang.Throwable th;
        java.io.FileInputStream fileInputStream;
        synchronized (j) {
            if (!this.f1533d.exists()) {
                return null;
            }
            try {
                fileInputStream = new java.io.FileInputStream(this.f1533d);
                try {
                    try {
                        byte[] streamToByteArray = com.umeng.commonsdk.statistics.common.HelperUtils.readStreamToByteArray(fileInputStream);
                        com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
                        new com.umeng.analytics.pro.at().a(cVar, streamToByteArray);
                        com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(fileInputStream);
                        return cVar;
                    } catch (java.lang.Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(fileInputStream);
                        return null;
                    }
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(fileInputStream);
                    throw th;
                }
            } catch (java.lang.Exception e3) {
                e = e3;
                fileInputStream = null;
            } catch (java.lang.Throwable th3) {
                th = th3;
                fileInputStream = null;
                com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(fileInputStream);
                throw th;
            }
        }
    }

    public void a(long j2) {
        this.f1536g = j2;
    }

    public synchronized void b() {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f1535f >= this.f1536g) {
            boolean z = false;
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.h) {
                if (aVar.c() && aVar.a()) {
                    z = true;
                    if (!aVar.c()) {
                        this.i.b(aVar.b());
                    }
                }
            }
            if (z) {
                h();
                this.i.a();
                g();
            }
            this.f1535f = jCurrentTimeMillis;
        }
    }

    public synchronized com.umeng.commonsdk.statistics.proto.c c() {
        return this.f1534e;
    }

    public java.lang.String d() {
        return null;
    }

    public synchronized void e() {
        if (b == null) {
            return;
        }
        boolean z = false;
        for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.h) {
            if (aVar.c() && aVar.e() != null && !aVar.e().isEmpty()) {
                aVar.a((java.util.List<com.umeng.commonsdk.statistics.proto.a>) null);
                z = true;
            }
        }
        if (z) {
            this.f1534e.b(false);
            g();
        }
    }

    public synchronized void f() {
        com.umeng.commonsdk.statistics.proto.c cVarI = i();
        if (cVarI == null) {
            return;
        }
        a(cVarI);
        java.util.ArrayList arrayList = new java.util.ArrayList(this.h.size());
        synchronized (this) {
            this.f1534e = cVarI;
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.h) {
                aVar.a(this.f1534e);
                if (!aVar.c()) {
                    arrayList.add(aVar);
                }
            }
            java.util.Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.h.remove((com.umeng.commonsdk.statistics.idtracking.a) it.next());
            }
            h();
        }
    }

    public synchronized void g() {
        if (this.f1534e != null) {
            b(this.f1534e);
        }
    }
}
