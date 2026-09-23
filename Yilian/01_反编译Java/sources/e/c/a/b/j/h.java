package e.c.a.b.j;

/* loaded from: classes.dex */
public class h {
    public long a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public android.animation.TimeInterpolator f2609c;

    /* renamed from: d, reason: collision with root package name */
    public int f2610d;

    /* renamed from: e, reason: collision with root package name */
    public int f2611e;

    public h(long j, long j2) {
        this.a = 0L;
        this.b = 300L;
        this.f2609c = null;
        this.f2610d = 0;
        this.f2611e = 1;
        this.a = j;
        this.b = j2;
    }

    public h(long j, long j2, android.animation.TimeInterpolator timeInterpolator) {
        this.a = 0L;
        this.b = 300L;
        this.f2609c = null;
        this.f2610d = 0;
        this.f2611e = 1;
        this.a = j;
        this.b = j2;
        this.f2609c = timeInterpolator;
    }

    public void a(android.animation.Animator animator) {
        animator.setStartDelay(this.a);
        animator.setDuration(this.b);
        animator.setInterpolator(b());
        if (animator instanceof android.animation.ValueAnimator) {
            android.animation.ValueAnimator valueAnimator = (android.animation.ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f2610d);
            valueAnimator.setRepeatMode(this.f2611e);
        }
    }

    public android.animation.TimeInterpolator b() {
        android.animation.TimeInterpolator timeInterpolator = this.f2609c;
        return timeInterpolator != null ? timeInterpolator : e.c.a.b.j.a.a;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.c.a.b.j.h.class != obj.getClass()) {
            return false;
        }
        e.c.a.b.j.h hVar = (e.c.a.b.j.h) obj;
        if (this.a == hVar.a && this.b == hVar.b && this.f2610d == hVar.f2610d && this.f2611e == hVar.f2611e) {
            return b().getClass().equals(hVar.b().getClass());
        }
        return false;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        return ((((b().getClass().hashCode() + (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31) + this.f2610d) * 31) + this.f2611e;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append('\n');
        sb.append(e.c.a.b.j.h.class.getName());
        sb.append('{');
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.a);
        sb.append(" duration: ");
        sb.append(this.b);
        sb.append(" interpolator: ");
        sb.append(b().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.f2610d);
        sb.append(" repeatMode: ");
        return e.a.c.a.a.i(sb, this.f2611e, "}\n");
    }
}
