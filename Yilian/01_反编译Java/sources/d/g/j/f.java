package d.g.j;

/* loaded from: classes.dex */
public class f {
    public static final d.e.f<java.lang.String, android.graphics.Typeface> a = new d.e.f<>(16);
    public static final java.util.concurrent.ExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f1971c;

    /* renamed from: d, reason: collision with root package name */
    public static final d.e.h<java.lang.String, java.util.ArrayList<d.g.l.a<d.g.j.f.e>>> f1972d;

    public class a implements java.util.concurrent.Callable<d.g.j.f.e> {
        public final /* synthetic */ java.lang.String a;
        public final /* synthetic */ android.content.Context b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ d.g.j.e f1973c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f1974d;

        public a(java.lang.String str, android.content.Context context, d.g.j.e eVar, int i) {
            this.a = str;
            this.b = context;
            this.f1973c = eVar;
            this.f1974d = i;
        }

        @Override // java.util.concurrent.Callable
        public d.g.j.f.e call() {
            return d.g.j.f.a(this.a, this.b, this.f1973c, this.f1974d);
        }
    }

    public class b implements d.g.l.a<d.g.j.f.e> {
        public final /* synthetic */ d.g.j.c a;

        public b(d.g.j.c cVar) {
            this.a = cVar;
        }

        @Override // d.g.l.a
        public void accept(d.g.j.f.e eVar) {
            this.a.a(eVar);
        }
    }

    public class c implements java.util.concurrent.Callable<d.g.j.f.e> {
        public final /* synthetic */ java.lang.String a;
        public final /* synthetic */ android.content.Context b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ d.g.j.e f1975c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f1976d;

        public c(java.lang.String str, android.content.Context context, d.g.j.e eVar, int i) {
            this.a = str;
            this.b = context;
            this.f1975c = eVar;
            this.f1976d = i;
        }

        @Override // java.util.concurrent.Callable
        public d.g.j.f.e call() {
            return d.g.j.f.a(this.a, this.b, this.f1975c, this.f1976d);
        }
    }

    public class d implements d.g.l.a<d.g.j.f.e> {
        public final /* synthetic */ java.lang.String a;

        public d(java.lang.String str) {
            this.a = str;
        }

        @Override // d.g.l.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(d.g.j.f.e eVar) {
            synchronized (d.g.j.f.f1971c) {
                java.util.ArrayList<d.g.l.a<d.g.j.f.e>> arrayList = d.g.j.f.f1972d.get(this.a);
                if (arrayList == null) {
                    return;
                }
                d.g.j.f.f1972d.remove(this.a);
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).accept(eVar);
                }
            }
        }
    }

    public static final class e {
        public final android.graphics.Typeface a;
        public final int b;

        public e(int i) {
            this.a = null;
            this.b = i;
        }

        @android.annotation.SuppressLint({"WrongConstant"})
        public e(android.graphics.Typeface typeface) {
            this.a = typeface;
            this.b = 0;
        }
    }

    static {
        java.util.concurrent.ThreadPoolExecutor threadPoolExecutor = new java.util.concurrent.ThreadPoolExecutor(0, 1, 10000, java.util.concurrent.TimeUnit.MILLISECONDS, new java.util.concurrent.LinkedBlockingDeque(), new d.g.j.j("fonts-androidx", 10));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        f1971c = new java.lang.Object();
        f1972d = new d.e.h<>();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static d.g.j.f.e a(java.lang.String r7, android.content.Context r8, d.g.j.e r9, int r10) {
        /*
            d.e.f<java.lang.String, android.graphics.Typeface> r0 = d.g.j.f.a
            java.lang.Object r0 = r0.a(r7)
            android.graphics.Typeface r0 = (android.graphics.Typeface) r0
            if (r0 == 0) goto L10
            d.g.j.f$e r7 = new d.g.j.f$e
            r7.<init>(r0)
            return r7
        L10:
            r0 = 0
            d.g.j.g r9 = d.g.j.d.a(r8, r9, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L61
            int r1 = r9.a
            r2 = -3
            r3 = 1
            if (r1 == 0) goto L20
            if (r1 == r3) goto L1e
            goto L35
        L1e:
            r1 = -2
            goto L3e
        L20:
            d.g.j.h[] r1 = r9.b
            r4 = 0
            if (r1 == 0) goto L3d
            int r5 = r1.length
            if (r5 != 0) goto L29
            goto L3d
        L29:
            int r3 = r1.length
            r5 = 0
        L2b:
            if (r5 >= r3) goto L3c
            r6 = r1[r5]
            int r6 = r6.f1979e
            if (r6 == 0) goto L39
            if (r6 >= 0) goto L37
        L35:
            r1 = -3
            goto L3e
        L37:
            r1 = r6
            goto L3e
        L39:
            int r5 = r5 + 1
            goto L2b
        L3c:
            r3 = 0
        L3d:
            r1 = r3
        L3e:
            if (r1 == 0) goto L46
            d.g.j.f$e r7 = new d.g.j.f$e
            r7.<init>(r1)
            return r7
        L46:
            d.g.j.h[] r9 = r9.b
            d.g.g.j r1 = d.g.g.d.a
            android.graphics.Typeface r8 = r1.b(r8, r0, r9, r10)
            if (r8 == 0) goto L5b
            d.e.f<java.lang.String, android.graphics.Typeface> r9 = d.g.j.f.a
            r9.b(r7, r8)
            d.g.j.f$e r7 = new d.g.j.f$e
            r7.<init>(r8)
            return r7
        L5b:
            d.g.j.f$e r7 = new d.g.j.f$e
            r7.<init>(r2)
            return r7
        L61:
            d.g.j.f$e r7 = new d.g.j.f$e
            r8 = -1
            r7.<init>(r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.j.f.a(java.lang.String, android.content.Context, d.g.j.e, int):d.g.j.f$e");
    }

    public static android.graphics.Typeface b(android.content.Context context, d.g.j.e eVar, int i, java.util.concurrent.Executor executor, d.g.j.c cVar) {
        java.lang.String str = eVar.f1970f + "-" + i;
        android.graphics.Typeface typefaceA = a.a(str);
        if (typefaceA != null) {
            cVar.b.post(new d.g.j.a(cVar, cVar.a, typefaceA));
            return typefaceA;
        }
        d.g.j.f.b bVar = new d.g.j.f.b(cVar);
        synchronized (f1971c) {
            java.util.ArrayList<d.g.l.a<d.g.j.f.e>> orDefault = f1972d.getOrDefault(str, null);
            if (orDefault != null) {
                orDefault.add(bVar);
                return null;
            }
            java.util.ArrayList<d.g.l.a<d.g.j.f.e>> arrayList = new java.util.ArrayList<>();
            arrayList.add(bVar);
            f1972d.put(str, arrayList);
            b.execute(new d.g.j.k(android.os.Looper.myLooper() == null ? new android.os.Handler(android.os.Looper.getMainLooper()) : new android.os.Handler(), new d.g.j.f.c(str, context, eVar, i), new d.g.j.f.d(str)));
            return null;
        }
    }

    public static android.graphics.Typeface c(android.content.Context context, d.g.j.e eVar, d.g.j.c cVar, int i, int i2) throws java.lang.InterruptedException {
        java.lang.String str = eVar.f1970f + "-" + i;
        android.graphics.Typeface typefaceA = a.a(str);
        if (typefaceA != null) {
            cVar.b.post(new d.g.j.a(cVar, cVar.a, typefaceA));
            return typefaceA;
        }
        if (i2 == -1) {
            d.g.j.f.e eVarA = a(str, context, eVar, i);
            cVar.a(eVarA);
            return eVarA.a;
        }
        try {
            try {
                try {
                    try {
                        d.g.j.f.e eVar2 = (d.g.j.f.e) b.submit(new d.g.j.f.a(str, context, eVar, i)).get(i2, java.util.concurrent.TimeUnit.MILLISECONDS);
                        cVar.a(eVar2);
                        return eVar2.a;
                    } catch (java.util.concurrent.TimeoutException unused) {
                        throw new java.lang.InterruptedException("timeout");
                    }
                } catch (java.lang.InterruptedException e2) {
                    throw e2;
                }
            } catch (java.util.concurrent.ExecutionException e3) {
                throw new java.lang.RuntimeException(e3);
            }
        } catch (java.lang.InterruptedException unused2) {
            cVar.b.post(new d.g.j.b(cVar, cVar.a, -3));
            return null;
        }
    }
}
