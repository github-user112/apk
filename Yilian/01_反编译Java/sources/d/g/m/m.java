package d.g.m;

/* loaded from: classes.dex */
public final class m implements android.view.ViewTreeObserver.OnPreDrawListener, android.view.View.OnAttachStateChangeListener {
    public final android.view.View a;
    public android.view.ViewTreeObserver b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.Runnable f1998c;

    public m(android.view.View view, java.lang.Runnable runnable) {
        this.a = view;
        this.b = view.getViewTreeObserver();
        this.f1998c = runnable;
    }

    public static d.g.m.m a(android.view.View view, java.lang.Runnable runnable) {
        if (view == null) {
            throw new java.lang.NullPointerException("view == null");
        }
        d.g.m.m mVar = new d.g.m.m(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(mVar);
        view.addOnAttachStateChangeListener(mVar);
        return mVar;
    }

    public void b() {
        (this.b.isAlive() ? this.b : this.a.getViewTreeObserver()).removeOnPreDrawListener(this);
        this.a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.f1998c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(android.view.View view) {
        this.b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(android.view.View view) {
        b();
    }
}
