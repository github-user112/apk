package e.c.a.b.q;

/* loaded from: classes.dex */
public final class d {
    public final java.util.ArrayList<e.c.a.b.q.d.b> a = new java.util.ArrayList<>();
    public e.c.a.b.q.d.b b = null;

    /* renamed from: c, reason: collision with root package name */
    public android.animation.ValueAnimator f2653c = null;

    /* renamed from: d, reason: collision with root package name */
    public final android.animation.Animator.AnimatorListener f2654d = new e.c.a.b.q.d.a();

    public class a extends android.animation.AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            e.c.a.b.q.d dVar = e.c.a.b.q.d.this;
            if (dVar.f2653c == animator) {
                dVar.f2653c = null;
            }
        }
    }

    public static class b {
        public final int[] a;
        public final android.animation.ValueAnimator b;

        public b(int[] iArr, android.animation.ValueAnimator valueAnimator) {
            this.a = iArr;
            this.b = valueAnimator;
        }
    }

    public void a(int[] iArr, android.animation.ValueAnimator valueAnimator) {
        e.c.a.b.q.d.b bVar = new e.c.a.b.q.d.b(iArr, valueAnimator);
        valueAnimator.addListener(this.f2654d);
        this.a.add(bVar);
    }
}
