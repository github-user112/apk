package f.a.j;

/* loaded from: classes.dex */
public final class k<T> {

    /* renamed from: d, reason: collision with root package name */
    public static final f.a.j.k<java.lang.Boolean> f3023d;

    /* renamed from: e, reason: collision with root package name */
    public static final f.a.j.k<java.lang.Byte> f3024e;

    /* renamed from: f, reason: collision with root package name */
    public static final f.a.j.k<java.lang.Character> f3025f;

    /* renamed from: g, reason: collision with root package name */
    public static final f.a.j.k<java.lang.Double> f3026g;
    public static final f.a.j.k<java.lang.Float> h;
    public static final f.a.j.k<java.lang.Integer> i;
    public static final f.a.j.k<java.lang.Long> j;
    public static final f.a.j.k<java.lang.Short> k;
    public static final f.a.j.k<java.lang.Void> l;
    public static final f.a.j.k<java.lang.Object> m;
    public static final java.util.Map<java.lang.Class<?>, f.a.j.k<?>> n;
    public final java.lang.String a;
    public final e.a.b.d.d.c b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.c.w f3027c;

    static {
        e.a.b.d.d.c cVar = e.a.b.d.d.c.f2525g;
        f3023d = new f.a.j.k<>(cVar.a, cVar);
        e.a.b.d.d.c cVar2 = e.a.b.d.d.c.h;
        f3024e = new f.a.j.k<>(cVar2.a, cVar2);
        e.a.b.d.d.c cVar3 = e.a.b.d.d.c.i;
        f3025f = new f.a.j.k<>(cVar3.a, cVar3);
        e.a.b.d.d.c cVar4 = e.a.b.d.d.c.j;
        f3026g = new f.a.j.k<>(cVar4.a, cVar4);
        e.a.b.d.d.c cVar5 = e.a.b.d.d.c.k;
        h = new f.a.j.k<>(cVar5.a, cVar5);
        e.a.b.d.d.c cVar6 = e.a.b.d.d.c.l;
        i = new f.a.j.k<>(cVar6.a, cVar6);
        e.a.b.d.d.c cVar7 = e.a.b.d.d.c.m;
        j = new f.a.j.k<>(cVar7.a, cVar7);
        e.a.b.d.d.c cVar8 = e.a.b.d.d.c.n;
        k = new f.a.j.k<>(cVar8.a, cVar8);
        e.a.b.d.d.c cVar9 = e.a.b.d.d.c.o;
        l = new f.a.j.k<>(cVar9.a, cVar9);
        e.a.b.d.d.c cVar10 = e.a.b.d.d.c.s;
        m = new f.a.j.k<>(cVar10.a, cVar10);
        e.a.b.d.d.c cVar11 = e.a.b.d.d.c.t;
        if (cVar11.a == null) {
            throw null;
        }
        e.a.b.d.c.w.g(cVar11);
        java.util.HashMap map = new java.util.HashMap();
        n = map;
        map.put(java.lang.Boolean.TYPE, f3023d);
        n.put(java.lang.Byte.TYPE, f3024e);
        n.put(java.lang.Character.TYPE, f3025f);
        n.put(java.lang.Double.TYPE, f3026g);
        n.put(java.lang.Float.TYPE, h);
        n.put(java.lang.Integer.TYPE, i);
        n.put(java.lang.Long.TYPE, j);
        n.put(java.lang.Short.TYPE, k);
        n.put(java.lang.Void.TYPE, l);
    }

    public k(java.lang.String str, e.a.b.d.d.c cVar) {
        if (str == null || cVar == null) {
            throw null;
        }
        this.a = str;
        this.b = cVar;
        this.f3027c = e.a.b.d.c.w.g(cVar);
    }

    public static <T> f.a.j.k<T> a(java.lang.Class<T> cls) {
        if (cls.isPrimitive()) {
            return (f.a.j.k) n.get(cls);
        }
        java.lang.String strReplace = cls.getName().replace('.', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH);
        if (!cls.isArray()) {
            strReplace = 'L' + strReplace + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SEMI_COLON;
        }
        return new f.a.j.k<>(strReplace, e.a.b.d.d.c.i(strReplace));
    }

    public <R> f.a.j.h<T, R> b(f.a.j.k<R> kVar, java.lang.String str, f.a.j.k<?>... kVarArr) {
        return new f.a.j.h<>(this, kVar, str, new f.a.j.l(kVarArr));
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof f.a.j.k) && ((f.a.j.k) obj).a.equals(this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public java.lang.String toString() {
        return this.a;
    }
}
