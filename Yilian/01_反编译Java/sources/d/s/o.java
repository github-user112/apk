package d.s;

/* loaded from: classes.dex */
public class o {
    public static d.s.k a = new d.s.b();
    public static java.lang.ThreadLocal<java.lang.ref.WeakReference<d.e.a<android.view.ViewGroup, java.util.ArrayList<d.s.k>>>> b = new java.lang.ThreadLocal<>();

    /* renamed from: c, reason: collision with root package name */
    public static java.util.ArrayList<android.view.ViewGroup> f2286c = new java.util.ArrayList<>();

    public static class a implements android.view.ViewTreeObserver.OnPreDrawListener, android.view.View.OnAttachStateChangeListener {
        public d.s.k a;
        public android.view.ViewGroup b;

        /* renamed from: d.s.o$a$a, reason: collision with other inner class name */
        public class C0060a extends d.s.n {
            public final /* synthetic */ d.e.a a;

            public C0060a(d.e.a aVar) {
                this.a = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // d.s.k.d
            public void d(d.s.k kVar) {
                ((java.util.ArrayList) this.a.get(d.s.o.a.this.b)).remove(kVar);
            }
        }

        public a(d.s.k kVar, android.view.ViewGroup viewGroup) {
            this.a = kVar;
            this.b = viewGroup;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:139:0x02a8  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 684
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: d.s.o.a.onPreDraw():boolean");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.b.removeOnAttachStateChangeListener(this);
            d.s.o.f2286c.remove(this.b);
            java.util.ArrayList<d.s.k> arrayList = d.s.o.a().get(this.b);
            if (arrayList != null && arrayList.size() > 0) {
                java.util.Iterator<d.s.k> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().x(this.b);
                }
            }
            this.a.i(true);
        }
    }

    public static d.e.a<android.view.ViewGroup, java.util.ArrayList<d.s.k>> a() {
        d.e.a<android.view.ViewGroup, java.util.ArrayList<d.s.k>> aVar;
        java.lang.ref.WeakReference<d.e.a<android.view.ViewGroup, java.util.ArrayList<d.s.k>>> weakReference = b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        d.e.a<android.view.ViewGroup, java.util.ArrayList<d.s.k>> aVar2 = new d.e.a<>();
        b.set(new java.lang.ref.WeakReference<>(aVar2));
        return aVar2;
    }
}
