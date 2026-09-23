package d.g.m;

/* loaded from: classes.dex */
public final class v {
    public java.lang.ref.WeakReference<android.view.View> a;
    public java.lang.Runnable b = null;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.Runnable f2006c = null;

    /* renamed from: d, reason: collision with root package name */
    public int f2007d = -1;

    public class a extends android.animation.AnimatorListenerAdapter {
        public final /* synthetic */ d.g.m.w a;
        public final /* synthetic */ android.view.View b;

        public a(d.g.m.v vVar, d.g.m.w wVar, android.view.View view) {
            this.a = wVar;
            this.b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            this.a.a(this.b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.a.b(this.b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            this.a.c(this.b);
        }
    }

    public class b implements android.animation.ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ d.g.m.y a;
        public final /* synthetic */ android.view.View b;

        public b(d.g.m.v vVar, d.g.m.y yVar, android.view.View view) {
            this.a = yVar;
            this.b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
            ((android.view.View) d.b.k.u.this.f1653d.getParent()).invalidate();
        }
    }

    public v(android.view.View view) {
        this.a = new java.lang.ref.WeakReference<>(view);
    }

    public d.g.m.v a(float f2) {
        android.view.View view = this.a.get();
        if (view != null) {
            view.animate().alpha(f2);
        }
        return this;
    }

    public void b() {
        android.view.View view = this.a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public d.g.m.v c(long j) {
        android.view.View view = this.a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public d.g.m.v d(d.g.m.w wVar) {
        android.view.View view = this.a.get();
        if (view != null) {
            e(view, wVar);
        }
        return this;
    }

    public final void e(android.view.View view, d.g.m.w wVar) {
        if (wVar != null) {
            view.animate().setListener(new d.g.m.v.a(this, wVar, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public d.g.m.v f(d.g.m.y yVar) {
        android.view.View view = this.a.get();
        if (view != null && android.os.Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(yVar != null ? new d.g.m.v.b(this, yVar, view) : null);
        }
        return this;
    }

    public d.g.m.v g(float f2) {
        android.view.View view = this.a.get();
        if (view != null) {
            view.animate().translationY(f2);
        }
        return this;
    }
}
