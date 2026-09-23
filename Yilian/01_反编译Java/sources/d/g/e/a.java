package d.g.e;

/* loaded from: classes.dex */
public class a extends d.g.f.a {

    /* renamed from: d.g.e.a$a, reason: collision with other inner class name */
    public class RunnableC0043a implements java.lang.Runnable {
        public final /* synthetic */ java.lang.String[] a;
        public final /* synthetic */ android.app.Activity b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f1918c;

        public RunnableC0043a(java.lang.String[] strArr, android.app.Activity activity, int i) {
            this.a = strArr;
            this.b = activity;
            this.f1918c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.a.length];
            android.content.pm.PackageManager packageManager = this.b.getPackageManager();
            java.lang.String packageName = this.b.getPackageName();
            int length = this.a.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.a[i], packageName);
            }
            ((d.g.e.a.c) this.b).onRequestPermissionsResult(this.f1918c, this.a, iArr);
        }
    }

    public class b implements java.lang.Runnable {
        public final /* synthetic */ android.app.Activity a;

        public b(android.app.Activity activity) {
            this.a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.a.isFinishing() || d.g.e.c.b(this.a)) {
                return;
            }
            this.a.recreate();
        }
    }

    public interface c {
        void onRequestPermissionsResult(int i, java.lang.String[] strArr, int[] iArr);
    }

    public interface d {
        void validateRequestPermissionsRequestCode(int i);
    }

    public static void i(android.app.Activity activity) {
        activity.finishAffinity();
    }

    public static void j(android.app.Activity activity) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    public static void k(android.app.Activity activity) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void l(android.app.Activity activity) {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i < 28) {
            if (i <= 23) {
                new android.os.Handler(activity.getMainLooper()).post(new d.g.e.a.b(activity));
                return;
            } else if (d.g.e.c.b(activity)) {
                return;
            }
        }
        activity.recreate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void m(android.app.Activity activity, java.lang.String[] strArr, int i) {
        for (java.lang.String str : strArr) {
            if (android.text.TextUtils.isEmpty(str)) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.j(e.a.c.a.a.o("Permission request for permissions "), java.util.Arrays.toString(strArr), " must not contain null or empty values"));
            }
        }
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof d.g.e.a.d) {
                ((d.g.e.a.d) activity).validateRequestPermissionsRequestCode(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof d.g.e.a.c) {
            new android.os.Handler(android.os.Looper.getMainLooper()).post(new d.g.e.a.RunnableC0043a(strArr, activity, i));
        }
    }

    public static void n(android.app.Activity activity) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(null);
        }
    }

    public static void o(android.app.Activity activity) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(null);
        }
    }

    public static boolean p(android.app.Activity activity, java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    public static void q(android.app.Activity activity, android.content.Intent intent, int i, android.os.Bundle bundle) {
        activity.startActivityForResult(intent, i, bundle);
    }

    public static void r(android.app.Activity activity, android.content.IntentSender intentSender, int i, android.content.Intent intent, int i2, int i3, int i4, android.os.Bundle bundle) {
        activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    public static void s(android.app.Activity activity) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }
}
