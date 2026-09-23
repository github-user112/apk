package com.huawei.hms.feature.dynamic;

/* loaded from: classes.dex */
public abstract class DeferredLifecycleHelper<T extends com.huawei.hms.feature.dynamic.LifecycleDelegate> {
    public static final int STATUS_ONCREATED = 1;
    public static final int STATUS_ONCREATEVIEW = 2;
    public static final int STATUS_ONINFLATE = 0;
    public static final int STATUS_ONRESUME = 5;
    public static final int STATUS_ONSTART = 4;
    public static final java.lang.String a = "DeferredLifecycleHelper";
    public T b;

    /* renamed from: c, reason: collision with root package name */
    public android.os.Bundle f257c;

    /* renamed from: d, reason: collision with root package name */
    public java.util.LinkedList<com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a> f258d;

    /* renamed from: e, reason: collision with root package name */
    public com.huawei.hms.feature.dynamic.OnDelegateCreatedListener<T> f259e = (com.huawei.hms.feature.dynamic.OnDelegateCreatedListener<T>) new com.huawei.hms.feature.dynamic.OnDelegateCreatedListener<T>() { // from class: com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.1
        @Override // com.huawei.hms.feature.dynamic.OnDelegateCreatedListener
        public final void onDelegateCreated(T t) {
            com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.this.b = t;
            java.util.Iterator it = com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.this.f258d.iterator();
            while (it.hasNext()) {
                ((com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a) it.next()).a(com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.this.b);
            }
            com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.this.f258d.clear();
            com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.c(com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.this);
        }
    };

    public interface a {
        int a();

        void a(com.huawei.hms.feature.dynamic.LifecycleDelegate lifecycleDelegate);
    }

    private void a(int i) {
        while (!this.f258d.isEmpty() && this.f258d.getLast().a() >= i) {
            this.f258d.removeLast();
        }
    }

    private final void a(android.os.Bundle bundle, com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a aVar) {
        T t = this.b;
        if (t != null) {
            aVar.a(t);
            return;
        }
        if (this.f258d == null) {
            this.f258d = new java.util.LinkedList<>();
        }
        this.f258d.add(aVar);
        if (bundle != null) {
            android.os.Bundle bundle2 = this.f257c;
            if (bundle2 == null) {
                this.f257c = (android.os.Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        createDelegate(this.f259e);
    }

    public static /* synthetic */ android.os.Bundle c(com.huawei.hms.feature.dynamic.DeferredLifecycleHelper deferredLifecycleHelper) {
        deferredLifecycleHelper.f257c = null;
        return null;
    }

    public abstract void createDelegate(com.huawei.hms.feature.dynamic.OnDelegateCreatedListener<T> onDelegateCreatedListener);

    public T getDelegate() {
        return this.b;
    }

    public void onCreate(final android.os.Bundle bundle) {
        a(bundle, new com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a() { // from class: com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.3
            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final int a() {
                return 1;
            }

            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final void a(com.huawei.hms.feature.dynamic.LifecycleDelegate lifecycleDelegate) {
                android.util.Log.d(com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a, "IDelegateLifeCycleCall onCreate:");
                lifecycleDelegate.onCreate(bundle);
            }
        });
    }

    public android.view.View onCreateView(final android.view.LayoutInflater layoutInflater, final android.view.ViewGroup viewGroup, final android.os.Bundle bundle) {
        final android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(layoutInflater.getContext());
        a(bundle, new com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a() { // from class: com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.4
            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final int a() {
                return 2;
            }

            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final void a(com.huawei.hms.feature.dynamic.LifecycleDelegate lifecycleDelegate) {
                frameLayout.removeAllViews();
                frameLayout.addView(com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.this.b.onCreateView(layoutInflater, viewGroup, bundle));
            }
        });
        return frameLayout;
    }

    public void onDestroy() {
        T t = this.b;
        if (t != null) {
            t.onDestroy();
        } else {
            a(0);
        }
    }

    public void onDestroyView() {
        T t = this.b;
        if (t != null) {
            t.onDestroyView();
        } else {
            a(1);
        }
    }

    public void onInflate(final android.app.Activity activity, final android.os.Bundle bundle, final android.os.Bundle bundle2) {
        a(bundle2, new com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a() { // from class: com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.2
            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final int a() {
                return 0;
            }

            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final void a(com.huawei.hms.feature.dynamic.LifecycleDelegate lifecycleDelegate) {
                com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.this.b.onInflate(activity, bundle, bundle2);
            }
        });
    }

    public void onLowMemory() {
        T t = this.b;
        if (t != null) {
            t.onLowMemory();
        }
    }

    public void onPause() {
        T t = this.b;
        if (t != null) {
            t.onPause();
        } else {
            a(5);
        }
    }

    public void onResume() {
        a((android.os.Bundle) null, new com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a() { // from class: com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.6
            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final int a() {
                return 5;
            }

            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final void a(com.huawei.hms.feature.dynamic.LifecycleDelegate lifecycleDelegate) {
                android.util.Log.d(com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a, "IDelegateLifeCycleCall onResume:");
                lifecycleDelegate.onResume();
            }
        });
    }

    public void onSaveInstanceState(android.os.Bundle bundle) {
        T t = this.b;
        if (t != null) {
            t.onSaveInstanceState(bundle);
            return;
        }
        android.os.Bundle bundle2 = this.f257c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }

    public void onStart() {
        a((android.os.Bundle) null, new com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a() { // from class: com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.5
            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final int a() {
                return 4;
            }

            @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a
            public final void a(com.huawei.hms.feature.dynamic.LifecycleDelegate lifecycleDelegate) {
                android.util.Log.d(com.huawei.hms.feature.dynamic.DeferredLifecycleHelper.a, "IDelegateLifeCycleCall onStart:");
                lifecycleDelegate.onStart();
            }
        });
    }

    public void onStop() {
        T t = this.b;
        if (t != null) {
            t.onStop();
        } else {
            a(4);
        }
    }
}
