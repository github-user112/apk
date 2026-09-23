package e.c.a.b.n;

/* loaded from: classes.dex */
public interface d {

    public static class b implements android.animation.TypeEvaluator<e.c.a.b.n.d.e> {
        public static final android.animation.TypeEvaluator<e.c.a.b.n.d.e> b = new e.c.a.b.n.d.b();
        public final e.c.a.b.n.d.e a = new e.c.a.b.n.d.e(null);

        @Override // android.animation.TypeEvaluator
        public e.c.a.b.n.d.e evaluate(float f2, e.c.a.b.n.d.e eVar, e.c.a.b.n.d.e eVar2) {
            e.c.a.b.n.d.e eVar3 = eVar;
            e.c.a.b.n.d.e eVar4 = eVar2;
            e.c.a.b.n.d.e eVar5 = this.a;
            float fU = d.s.y.U(eVar3.a, eVar4.a, f2);
            float fU2 = d.s.y.U(eVar3.b, eVar4.b, f2);
            float fU3 = d.s.y.U(eVar3.f2640c, eVar4.f2640c, f2);
            eVar5.a = fU;
            eVar5.b = fU2;
            eVar5.f2640c = fU3;
            return this.a;
        }
    }

    public static class c extends android.util.Property<e.c.a.b.n.d, e.c.a.b.n.d.e> {
        public static final android.util.Property<e.c.a.b.n.d, e.c.a.b.n.d.e> a = new e.c.a.b.n.d.c("circularReveal");

        public c(java.lang.String str) {
            super(e.c.a.b.n.d.e.class, str);
        }

        @Override // android.util.Property
        public e.c.a.b.n.d.e get(e.c.a.b.n.d dVar) {
            return dVar.getRevealInfo();
        }

        @Override // android.util.Property
        public void set(e.c.a.b.n.d dVar, e.c.a.b.n.d.e eVar) {
            dVar.setRevealInfo(eVar);
        }
    }

    /* renamed from: e.c.a.b.n.d$d, reason: collision with other inner class name */
    public static class C0065d extends android.util.Property<e.c.a.b.n.d, java.lang.Integer> {
        public static final android.util.Property<e.c.a.b.n.d, java.lang.Integer> a = new e.c.a.b.n.d.C0065d("circularRevealScrimColor");

        public C0065d(java.lang.String str) {
            super(java.lang.Integer.class, str);
        }

        @Override // android.util.Property
        public java.lang.Integer get(e.c.a.b.n.d dVar) {
            return java.lang.Integer.valueOf(dVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        public void set(e.c.a.b.n.d dVar, java.lang.Integer num) {
            dVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class e {
        public float a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public float f2640c;

        public e() {
        }

        public e(float f2, float f3, float f4) {
            this.a = f2;
            this.b = f3;
            this.f2640c = f4;
        }

        public e(e.c.a.b.n.d.a aVar) {
        }
    }

    void a();

    void b();

    int getCircularRevealScrimColor();

    e.c.a.b.n.d.e getRevealInfo();

    void setCircularRevealOverlayDrawable(android.graphics.drawable.Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(e.c.a.b.n.d.e eVar);
}
