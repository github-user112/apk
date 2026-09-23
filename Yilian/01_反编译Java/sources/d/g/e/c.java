package d.g.e;

/* loaded from: classes.dex */
public final class c {
    public static final java.lang.Class<?> a;
    public static final java.lang.reflect.Field b;

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.reflect.Field f1919c;

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.reflect.Method f1920d;

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.reflect.Method f1921e;

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.reflect.Method f1922f;

    /* renamed from: g, reason: collision with root package name */
    public static final android.os.Handler f1923g = new android.os.Handler(android.os.Looper.getMainLooper());

    public class a implements java.lang.Runnable {
        public final /* synthetic */ d.g.e.c.C0044c a;
        public final /* synthetic */ java.lang.Object b;

        public a(d.g.e.c.C0044c c0044c, java.lang.Object obj) {
            this.a = c0044c;
            this.b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a = this.b;
        }
    }

    public class b implements java.lang.Runnable {
        public final /* synthetic */ android.app.Application a;
        public final /* synthetic */ d.g.e.c.C0044c b;

        public b(android.app.Application application, d.g.e.c.C0044c c0044c) {
            this.a = application;
            this.b = c0044c;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.unregisterActivityLifecycleCallbacks(this.b);
        }
    }

    /* renamed from: d.g.e.c$c, reason: collision with other inner class name */
    public static final class C0044c implements android.app.Application.ActivityLifecycleCallbacks {
        public java.lang.Object a;
        public android.app.Activity b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1924c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f1925d = false;

        /* renamed from: e, reason: collision with root package name */
        public boolean f1926e = false;

        /* renamed from: f, reason: collision with root package name */
        public boolean f1927f = false;

        public C0044c(android.app.Activity activity) {
            this.b = activity;
            this.f1924c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(android.app.Activity activity) {
            if (this.b == activity) {
                this.b = null;
                this.f1926e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(android.app.Activity activity) {
            if (!this.f1926e || this.f1927f || this.f1925d) {
                return;
            }
            java.lang.Object obj = this.a;
            int i = this.f1924c;
            boolean z = false;
            try {
                java.lang.Object obj2 = d.g.e.c.f1919c.get(activity);
                if (obj2 == obj && activity.hashCode() == i) {
                    d.g.e.c.f1923g.postAtFrontOfQueue(new d.g.e.d(d.g.e.c.b.get(activity), obj2));
                    z = true;
                }
            } catch (java.lang.Throwable th) {
                android.util.Log.e("ActivityRecreator", "Exception while fetching field values", th);
            }
            if (z) {
                this.f1927f = true;
                this.a = null;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(android.app.Activity activity) {
            if (this.b == activity) {
                this.f1925d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(android.app.Activity activity) {
        }
    }

    static {
        java.lang.Class<?> cls;
        java.lang.reflect.Field declaredField;
        java.lang.reflect.Field declaredField2;
        java.lang.reflect.Method declaredMethod;
        java.lang.reflect.Method declaredMethod2;
        java.lang.reflect.Method method = null;
        try {
            cls = java.lang.Class.forName("android.app.ActivityThread");
        } catch (java.lang.Throwable unused) {
            cls = null;
        }
        a = cls;
        try {
            declaredField = android.app.Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
        } catch (java.lang.Throwable unused2) {
            declaredField = null;
        }
        b = declaredField;
        try {
            declaredField2 = android.app.Activity.class.getDeclaredField("mToken");
            declaredField2.setAccessible(true);
        } catch (java.lang.Throwable unused3) {
            declaredField2 = null;
        }
        f1919c = declaredField2;
        java.lang.Class<?> cls2 = a;
        if (cls2 == null) {
            declaredMethod = null;
        } else {
            try {
                declaredMethod = cls2.getDeclaredMethod("performStopActivity", android.os.IBinder.class, java.lang.Boolean.TYPE, java.lang.String.class);
                declaredMethod.setAccessible(true);
            } catch (java.lang.Throwable unused4) {
            }
        }
        f1920d = declaredMethod;
        java.lang.Class<?> cls3 = a;
        if (cls3 == null) {
            declaredMethod2 = null;
        } else {
            try {
                declaredMethod2 = cls3.getDeclaredMethod("performStopActivity", android.os.IBinder.class, java.lang.Boolean.TYPE);
                declaredMethod2.setAccessible(true);
            } catch (java.lang.Throwable unused5) {
            }
        }
        f1921e = declaredMethod2;
        java.lang.Class<?> cls4 = a;
        if (a() && cls4 != null) {
            try {
                java.lang.reflect.Method declaredMethod3 = cls4.getDeclaredMethod("requestRelaunchActivity", android.os.IBinder.class, java.util.List.class, java.util.List.class, java.lang.Integer.TYPE, java.lang.Boolean.TYPE, android.content.res.Configuration.class, android.content.res.Configuration.class, java.lang.Boolean.TYPE, java.lang.Boolean.TYPE);
                declaredMethod3.setAccessible(true);
                method = declaredMethod3;
            } catch (java.lang.Throwable unused6) {
            }
        }
        f1922f = method;
    }

    public static boolean a() {
        int i = android.os.Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    public static boolean b(android.app.Activity activity) {
        java.lang.Object obj;
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (a() && f1922f == null) {
            return false;
        }
        if (f1921e == null && f1920d == null) {
            return false;
        }
        try {
            java.lang.Object obj2 = f1919c.get(activity);
            if (obj2 == null || (obj = b.get(activity)) == null) {
                return false;
            }
            android.app.Application application = activity.getApplication();
            d.g.e.c.C0044c c0044c = new d.g.e.c.C0044c(activity);
            application.registerActivityLifecycleCallbacks(c0044c);
            f1923g.post(new d.g.e.c.a(c0044c, obj2));
            try {
                if (a()) {
                    f1922f.invoke(obj, obj2, null, null, 0, java.lang.Boolean.FALSE, null, null, java.lang.Boolean.FALSE, java.lang.Boolean.FALSE);
                } else {
                    activity.recreate();
                }
                return true;
            } finally {
                f1923g.post(new d.g.e.c.b(application, c0044c));
            }
        } catch (java.lang.Throwable unused) {
            return false;
        }
    }
}
