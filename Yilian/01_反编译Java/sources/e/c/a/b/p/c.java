package e.c.a.b.p;

/* loaded from: classes.dex */
public class c extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ e.c.a.b.p.e.d b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e.c.a.b.p.e f2643c;

    public c(e.c.a.b.p.e eVar, boolean z, e.c.a.b.p.e.d dVar) {
        this.f2643c = eVar;
        this.a = z;
        this.b = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        e.c.a.b.p.e eVar = this.f2643c;
        eVar.a = 0;
        eVar.b = null;
        e.c.a.b.p.e.d dVar = this.b;
        if (dVar == null) {
            return;
        }
        throw null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        this.f2643c.o.b(0, this.a);
        e.c.a.b.p.e eVar = this.f2643c;
        eVar.a = 2;
        eVar.b = animator;
    }
}
