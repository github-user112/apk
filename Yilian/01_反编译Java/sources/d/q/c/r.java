package d.q.c;

/* loaded from: classes.dex */
public abstract class r {
    public final androidx.recyclerview.widget.RecyclerView.k a;
    public int b = Integer.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public final android.graphics.Rect f2229c = new android.graphics.Rect();

    public r(androidx.recyclerview.widget.RecyclerView.k kVar, d.q.c.p pVar) {
        this.a = kVar;
    }

    public static d.q.c.r a(androidx.recyclerview.widget.RecyclerView.k kVar, int i) {
        if (i == 0) {
            return new d.q.c.p(kVar);
        }
        if (i == 1) {
            return new d.q.c.q(kVar);
        }
        throw new java.lang.IllegalArgumentException("invalid orientation");
    }

    public abstract int b(android.view.View view);

    public abstract int c(android.view.View view);

    public abstract int d();

    public abstract int e();

    public abstract int f();
}
