package d.l;

/* loaded from: classes.dex */
public class p extends android.app.Fragment {
    public d.l.p.a a;

    public interface a {
        void onCreate();

        void onResume();

        void onStart();
    }

    public static class b implements android.app.Application.ActivityLifecycleCallbacks {
        public static void registerIn(android.app.Activity activity) {
            activity.registerActivityLifecycleCallbacks(new d.l.p.b());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(android.app.Activity activity, android.os.Bundle bundle) {
            d.l.p.a(activity, d.l.e.a.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(android.app.Activity activity) {
            d.l.p.a(activity, d.l.e.a.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(android.app.Activity activity) {
            d.l.p.a(activity, d.l.e.a.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(android.app.Activity activity) {
            d.l.p.a(activity, d.l.e.a.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(android.app.Activity activity) {
            d.l.p.a(activity, d.l.e.a.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(android.app.Activity activity) {
            d.l.p.a(activity, d.l.e.a.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(android.app.Activity activity) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(android.app.Activity activity, d.l.e.a aVar) {
        if (activity instanceof d.l.j) {
            d.l.i lifecycle = ((d.l.j) activity).getLifecycle();
            lifecycle.d("handleLifecycleEvent");
            lifecycle.g(aVar.a());
        } else if (activity instanceof d.l.h) {
            d.l.e lifecycle2 = ((d.l.h) activity).getLifecycle();
            if (lifecycle2 instanceof d.l.i) {
                d.l.i iVar = (d.l.i) lifecycle2;
                iVar.d("handleLifecycleEvent");
                iVar.g(aVar.a());
            }
        }
    }

    public static void c(android.app.Activity activity) {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            d.l.p.b.registerIn(activity);
        }
        android.app.FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new d.l.p(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    public final void b(d.l.e.a aVar) {
        if (android.os.Build.VERSION.SDK_INT < 29) {
            a(getActivity(), aVar);
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(android.os.Bundle bundle) {
        super.onActivityCreated(bundle);
        d.l.p.a aVar = this.a;
        if (aVar != null) {
            aVar.onCreate();
        }
        b(d.l.e.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        b(d.l.e.a.ON_DESTROY);
        this.a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        b(d.l.e.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        d.l.p.a aVar = this.a;
        if (aVar != null) {
            aVar.onResume();
        }
        b(d.l.e.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        d.l.p.a aVar = this.a;
        if (aVar != null) {
            aVar.onStart();
        }
        b(d.l.e.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        b(d.l.e.a.ON_STOP);
    }
}
