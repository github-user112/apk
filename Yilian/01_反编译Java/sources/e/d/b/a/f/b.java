package e.d.b.a.f;

/* loaded from: classes.dex */
public final class b<TResult> extends e.d.b.a.b<TResult> {
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public TResult f2815c;
    public final java.lang.Object a = new java.lang.Object();

    /* renamed from: d, reason: collision with root package name */
    public java.util.List<e.d.b.a.a<TResult>> f2816d = new java.util.ArrayList();

    public final void a() {
        synchronized (this.a) {
            java.util.Iterator<e.d.b.a.a<TResult>> it = this.f2816d.iterator();
            while (it.hasNext()) {
                try {
                    it.next().a(this);
                } catch (java.lang.RuntimeException e2) {
                    throw e2;
                } catch (java.lang.Exception e3) {
                    throw new java.lang.RuntimeException(e3);
                }
            }
            this.f2816d = null;
        }
    }
}
