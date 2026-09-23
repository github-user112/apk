package e.c.b.a;

/* loaded from: classes.dex */
public final class j {
    public final e.c.b.a.b a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final e.c.b.a.j.b f2670c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2671d;

    public static abstract class a extends e.c.b.a.a<java.lang.String> {

        /* renamed from: c, reason: collision with root package name */
        public final java.lang.CharSequence f2672c;

        /* renamed from: d, reason: collision with root package name */
        public final e.c.b.a.b f2673d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f2674e;

        /* renamed from: f, reason: collision with root package name */
        public int f2675f = 0;

        /* renamed from: g, reason: collision with root package name */
        public int f2676g;

        public a(e.c.b.a.j jVar, java.lang.CharSequence charSequence) {
            this.f2673d = jVar.a;
            this.f2674e = jVar.b;
            this.f2676g = jVar.f2671d;
            this.f2672c = charSequence;
        }
    }

    public interface b {
    }

    public j(e.c.b.a.j.b bVar) {
        e.c.b.a.b.d dVar = e.c.b.a.b.d.b;
        this.f2670c = bVar;
        this.b = false;
        this.a = dVar;
        this.f2671d = Integer.MAX_VALUE;
    }

    public java.util.List<java.lang.String> a(java.lang.CharSequence charSequence) {
        e.c.b.a.i iVar;
        if (charSequence == null || (iVar = (e.c.b.a.i) this.f2670c) == null) {
            throw null;
        }
        e.c.b.a.h hVar = new e.c.b.a.h(iVar, this, charSequence);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (hVar.hasNext()) {
            arrayList.add(hVar.next());
        }
        return java.util.Collections.unmodifiableList(arrayList);
    }
}
