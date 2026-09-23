package f.a.j;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class c {
    public static final f.a.j.c a = new f.a.j.c.a("LT", 0);
    public static final f.a.j.c b = new f.a.j.c("LE", 1) { // from class: f.a.j.c.b
        @Override // f.a.j.c
        public e.a.b.d.b.n a(e.a.b.d.d.e eVar) {
            return e.a.b.d.b.p.n(eVar, e.a.b.d.b.p.w, null, e.a.b.d.b.p.E, null);
        }
    };

    /* renamed from: c, reason: collision with root package name */
    public static final f.a.j.c f2990c = new f.a.j.c("EQ", 2) { // from class: f.a.j.c.c
        @Override // f.a.j.c
        public e.a.b.d.b.n a(e.a.b.d.d.e eVar) {
            return e.a.b.d.b.p.n(eVar, e.a.b.d.b.p.s, e.a.b.d.b.p.y, e.a.b.d.b.p.A, e.a.b.d.b.p.G);
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public static final f.a.j.c f2991d = new f.a.j.c("GE", 3) { // from class: f.a.j.c.d
        @Override // f.a.j.c
        public e.a.b.d.b.n a(e.a.b.d.d.e eVar) {
            return e.a.b.d.b.p.n(eVar, e.a.b.d.b.p.v, null, e.a.b.d.b.p.D, null);
        }
    };

    /* renamed from: e, reason: collision with root package name */
    public static final f.a.j.c f2992e = new f.a.j.c("GT", 4) { // from class: f.a.j.c.e
        @Override // f.a.j.c
        public e.a.b.d.b.n a(e.a.b.d.d.e eVar) {
            return e.a.b.d.b.p.n(eVar, e.a.b.d.b.p.x, null, e.a.b.d.b.p.F, null);
        }
    };

    /* renamed from: f, reason: collision with root package name */
    public static final f.a.j.c f2993f;

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ f.a.j.c[] f2994g;

    public enum a extends f.a.j.c {
        public a(java.lang.String str, int i) {
            super(str, i, null);
        }

        @Override // f.a.j.c
        public e.a.b.d.b.n a(e.a.b.d.d.e eVar) {
            return e.a.b.d.b.p.n(eVar, e.a.b.d.b.p.u, null, e.a.b.d.b.p.C, null);
        }
    }

    static {
        f.a.j.c cVar = new f.a.j.c("NE", 5) { // from class: f.a.j.c.f
            @Override // f.a.j.c
            public e.a.b.d.b.n a(e.a.b.d.d.e eVar) {
                return e.a.b.d.b.p.n(eVar, e.a.b.d.b.p.t, e.a.b.d.b.p.z, e.a.b.d.b.p.B, e.a.b.d.b.p.H);
            }
        };
        f2993f = cVar;
        f2994g = new f.a.j.c[]{a, b, f2990c, f2991d, f2992e, cVar};
    }

    public c(java.lang.String str, int i, f.a.j.c.a aVar) {
    }

    public static f.a.j.c valueOf(java.lang.String str) {
        return (f.a.j.c) java.lang.Enum.valueOf(f.a.j.c.class, str);
    }

    public static f.a.j.c[] values() {
        return (f.a.j.c[]) f2994g.clone();
    }

    public abstract e.a.b.d.b.n a(e.a.b.d.d.e eVar);
}
