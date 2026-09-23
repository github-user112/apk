package d.l;

/* loaded from: classes.dex */
public final class r extends d.l.v {

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.Class<?>[] f2170f = {android.app.Application.class, d.l.q.class};

    /* renamed from: g, reason: collision with root package name */
    public static final java.lang.Class<?>[] f2171g = {d.l.q.class};
    public final android.app.Application a;
    public final d.l.u b;

    /* renamed from: c, reason: collision with root package name */
    public final android.os.Bundle f2172c;

    /* renamed from: d, reason: collision with root package name */
    public final d.l.e f2173d;

    /* renamed from: e, reason: collision with root package name */
    public final d.r.b f2174e;

    @android.annotation.SuppressLint({"LambdaLast"})
    public r(android.app.Application application, d.r.d dVar, android.os.Bundle bundle) {
        d.l.u uVar;
        this.f2174e = dVar.getSavedStateRegistry();
        this.f2173d = dVar.getLifecycle();
        this.f2172c = bundle;
        this.a = application;
        if (application != null) {
            if (d.l.t.f2175c == null) {
                d.l.t.f2175c = new d.l.t(application);
            }
            uVar = d.l.t.f2175c;
        } else {
            if (d.l.w.a == null) {
                d.l.w.a = new d.l.w();
            }
            uVar = d.l.w.a;
        }
        this.b = uVar;
    }

    public static <T> java.lang.reflect.Constructor<T> d(java.lang.Class<T> cls, java.lang.Class<?>[] clsArr) throws java.lang.SecurityException {
        for (java.lang.Object obj : cls.getConstructors()) {
            java.lang.reflect.Constructor<T> constructor = (java.lang.reflect.Constructor<T>) obj;
            if (java.util.Arrays.equals(clsArr, constructor.getParameterTypes())) {
                return constructor;
            }
        }
        return null;
    }

    @Override // d.l.v, d.l.u
    public <T extends d.l.s> T a(java.lang.Class<T> cls) {
        java.lang.String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) c(canonicalName, cls);
        }
        throw new java.lang.IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // d.l.x
    public void b(d.l.s sVar) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        androidx.lifecycle.SavedStateHandleController.h(sVar, this.f2174e, this.f2173d);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053 A[Catch: InvocationTargetException -> 0x0065, InstantiationException -> 0x0081, IllegalAccessException -> 0x009e, TryCatch #2 {IllegalAccessException -> 0x009e, InstantiationException -> 0x0081, InvocationTargetException -> 0x0065, blocks: (B:13:0x003f, B:15:0x0043, B:17:0x005d, B:16:0x0053), top: B:28:0x003f }] */
    @Override // d.l.v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T extends d.l.s> T c(java.lang.String r7, java.lang.Class<T> r8) throws java.lang.NoSuchMethodException, java.lang.SecurityException, java.io.IOException {
        /*
            r6 = this;
            java.lang.Class<d.l.a> r0 = d.l.a.class
            boolean r0 = r0.isAssignableFrom(r8)
            if (r0 == 0) goto L13
            android.app.Application r1 = r6.a
            if (r1 == 0) goto L13
            java.lang.Class<?>[] r1 = d.l.r.f2170f
            java.lang.reflect.Constructor r1 = d(r8, r1)
            goto L19
        L13:
            java.lang.Class<?>[] r1 = d.l.r.f2171g
            java.lang.reflect.Constructor r1 = d(r8, r1)
        L19:
            if (r1 != 0) goto L22
            d.l.u r7 = r6.b
            d.l.s r7 = r7.a(r8)
            return r7
        L22:
            d.r.b r2 = r6.f2174e
            d.l.e r3 = r6.f2173d
            android.os.Bundle r4 = r6.f2172c
            android.os.Bundle r5 = r2.a(r7)
            d.l.q r4 = d.l.q.a(r5, r4)
            androidx.lifecycle.SavedStateHandleController r5 = new androidx.lifecycle.SavedStateHandleController
            r5.<init>(r7, r4)
            r5.i(r2, r3)
            androidx.lifecycle.SavedStateHandleController.j(r2, r3)
            r7 = 0
            r2 = 1
            if (r0 == 0) goto L53
            android.app.Application r0 = r6.a     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            if (r0 == 0) goto L53
            r0 = 2
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            android.app.Application r3 = r6.a     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            r0[r7] = r3     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            d.l.q r7 = r5.f128c     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            r0[r2] = r7     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            java.lang.Object r7 = r1.newInstance(r0)     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            goto L5d
        L53:
            java.lang.Object[] r0 = new java.lang.Object[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            d.l.q r2 = r5.f128c     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            r0[r7] = r2     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            java.lang.Object r7 = r1.newInstance(r0)     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
        L5d:
            d.l.s r7 = (d.l.s) r7     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            java.lang.String r0 = "androidx.lifecycle.savedstate.vm.tag"
            r7.b(r0, r5)     // Catch: java.lang.reflect.InvocationTargetException -> L65 java.lang.InstantiationException -> L81 java.lang.IllegalAccessException -> L9e
            return r7
        L65:
            r7 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "An exception happened in constructor of "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            java.lang.Throwable r7 = r7.getCause()
            r0.<init>(r8, r7)
            throw r0
        L81:
            r7 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "A "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r8 = " cannot be instantiated."
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            r0.<init>(r8, r7)
            throw r0
        L9e:
            r7 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to access "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            r0.<init>(r8, r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.l.r.c(java.lang.String, java.lang.Class):d.l.s");
    }
}
