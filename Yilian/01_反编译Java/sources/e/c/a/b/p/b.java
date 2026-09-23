package e.c.a.b.p;

/* loaded from: classes.dex */
public class b extends android.animation.AnimatorListenerAdapter {
    public boolean a;
    public final /* synthetic */ boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e.c.a.b.p.e.d f2641c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e.c.a.b.p.e f2642d;

    public b(e.c.a.b.p.e eVar, boolean z, e.c.a.b.p.e.d dVar) {
        this.f2642d = eVar;
        this.b = z;
        this.f2641c = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(android.animation.Animator animator) {
        this.a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        e.c.a.b.p.e eVar = this.f2642d;
        eVar.a = 0;
        eVar.b = null;
        if (this.a) {
            return;
        }
        eVar.o.b(this.b ? 8 : 4, this.b);
        e.c.a.b.p.e.d dVar = this.f2641c;
        if (dVar == null) {
            return;
        }
        throw null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        this.f2642d.o.b(0, this.b);
        e.c.a.b.p.e eVar = this.f2642d;
        eVar.a = 1;
        eVar.b = animator;
        this.a = false;
    }
}
