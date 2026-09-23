package e.a.b.b.c;

/* loaded from: classes.dex */
public final class t0<T extends e.a.b.b.c.h0> extends e.a.b.b.c.h0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.b.c.z f2453e;

    /* renamed from: f, reason: collision with root package name */
    public final java.util.List<T> f2454f;

    /* JADX WARN: Illegal instructions before constructor call */
    public t0(e.a.b.b.c.z zVar, java.util.List<T> list) {
        int iN = n(list);
        T t = list.get(0);
        super(iN, n(list) + (t.c() * list.size()));
        if (zVar == null) {
            throw new java.lang.NullPointerException("itemType == null");
        }
        this.f2454f = list;
        this.f2453e = zVar;
    }

    public static int n(java.util.List<? extends e.a.b.b.c.h0> list) {
        try {
            return java.lang.Math.max(4, list.get(0).a);
        } catch (java.lang.IndexOutOfBoundsException unused) {
            throw new java.lang.IllegalArgumentException("items.size() == 0");
        } catch (java.lang.NullPointerException unused2) {
            throw new java.lang.NullPointerException("items == null");
        }
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        java.util.Iterator<T> it = this.f2454f.iterator();
        while (it.hasNext()) {
            it.next().a(mVar);
        }
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return this.f2453e;
    }

    @Override // e.a.b.b.c.h0
    public void k(e.a.b.b.c.l0 l0Var, int i) {
        int iJ = i + this.a;
        int i2 = -1;
        int i3 = -1;
        boolean z = true;
        for (T t : this.f2454f) {
            int iC = t.c();
            if (z) {
                i3 = t.a;
                i2 = iC;
                z = false;
            } else {
                if (iC != i2) {
                    throw new java.lang.UnsupportedOperationException("item size mismatch");
                }
                if (t.a != i3) {
                    throw new java.lang.UnsupportedOperationException("item alignment mismatch");
                }
            }
            iJ = t.j(l0Var, iJ) + iC;
        }
    }

    @Override // e.a.b.b.c.h0
    public void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        int size = this.f2454f.size();
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.b(0, i() + " " + this.f2453e.f2460c);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("  size: ");
            e.a.c.a.a.u(size, sb, cVar, 4);
        }
        cVar.k(size);
        java.util.Iterator<T> it = this.f2454f.iterator();
        while (it.hasNext()) {
            it.next().d(mVar, cVar);
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(100);
        stringBuffer.append(e.a.b.b.c.t0.class.getName());
        stringBuffer.append(this.f2454f);
        return stringBuffer.toString();
    }
}
