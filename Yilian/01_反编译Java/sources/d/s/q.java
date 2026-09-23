package d.s;

/* loaded from: classes.dex */
public class q extends d.s.k {
    public int L;
    public java.util.ArrayList<d.s.k> J = new java.util.ArrayList<>();
    public boolean K = true;
    public boolean M = false;
    public int N = 0;

    public class a extends d.s.n {
        public final /* synthetic */ d.s.k a;

        public a(d.s.q qVar, d.s.k kVar) {
            this.a = kVar;
        }

        @Override // d.s.k.d
        public void d(d.s.k kVar) {
            this.a.y();
            kVar.v(this);
        }
    }

    public static class b extends d.s.n {
        public d.s.q a;

        public b(d.s.q qVar) {
            this.a = qVar;
        }

        @Override // d.s.n, d.s.k.d
        public void a(d.s.k kVar) {
            d.s.q qVar = this.a;
            if (qVar.M) {
                return;
            }
            qVar.F();
            this.a.M = true;
        }

        @Override // d.s.k.d
        public void d(d.s.k kVar) {
            d.s.q qVar = this.a;
            int i = qVar.L - 1;
            qVar.L = i;
            if (i == 0) {
                qVar.M = false;
                qVar.m();
            }
            kVar.v(this);
        }
    }

    @Override // d.s.k
    public void A(d.s.k.c cVar) {
        this.D = cVar;
        this.N |= 8;
        int size = this.J.size();
        for (int i = 0; i < size; i++) {
            this.J.get(i).A(cVar);
        }
    }

    @Override // d.s.k
    public d.s.k B(android.animation.TimeInterpolator timeInterpolator) {
        this.N |= 1;
        java.util.ArrayList<d.s.k> arrayList = this.J;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.J.get(i).B(timeInterpolator);
            }
        }
        this.f2279d = timeInterpolator;
        return this;
    }

    @Override // d.s.k
    public void C(d.s.f fVar) {
        this.F = fVar == null ? d.s.k.H : fVar;
        this.N |= 4;
        for (int i = 0; i < this.J.size(); i++) {
            this.J.get(i).C(fVar);
        }
    }

    @Override // d.s.k
    public void D(d.s.p pVar) {
        this.C = pVar;
        this.N |= 2;
        int size = this.J.size();
        for (int i = 0; i < size; i++) {
            this.J.get(i).D(pVar);
        }
    }

    @Override // d.s.k
    public d.s.k E(long j) {
        this.b = j;
        return this;
    }

    @Override // d.s.k
    public java.lang.String G(java.lang.String str) {
        java.lang.String strG = super.G(str);
        for (int i = 0; i < this.J.size(); i++) {
            java.lang.StringBuilder sbQ = e.a.c.a.a.q(strG, "\n");
            sbQ.append(this.J.get(i).G(str + "  "));
            strG = sbQ.toString();
        }
        return strG;
    }

    public d.s.q H(d.s.k kVar) {
        this.J.add(kVar);
        kVar.r = this;
        long j = this.f2278c;
        if (j >= 0) {
            kVar.z(j);
        }
        if ((this.N & 1) != 0) {
            kVar.B(this.f2279d);
        }
        if ((this.N & 2) != 0) {
            kVar.D(null);
        }
        if ((this.N & 4) != 0) {
            kVar.C(this.F);
        }
        if ((this.N & 8) != 0) {
            kVar.A(this.D);
        }
        return this;
    }

    public d.s.k I(int i) {
        if (i < 0 || i >= this.J.size()) {
            return null;
        }
        return this.J.get(i);
    }

    public d.s.q J(int i) {
        if (i == 0) {
            this.K = true;
        } else {
            if (i != 1) {
                throw new android.util.AndroidRuntimeException(e.a.c.a.a.K("Invalid parameter for TransitionSet ordering: ", i));
            }
            this.K = false;
        }
        return this;
    }

    @Override // d.s.k
    public d.s.k a(d.s.k.d dVar) {
        super.a(dVar);
        return this;
    }

    @Override // d.s.k
    public d.s.k b(android.view.View view) {
        for (int i = 0; i < this.J.size(); i++) {
            this.J.get(i).b(view);
        }
        this.f2281f.add(view);
        return this;
    }

    @Override // d.s.k
    public void d(d.s.s sVar) {
        if (s(sVar.b)) {
            java.util.Iterator<d.s.k> it = this.J.iterator();
            while (it.hasNext()) {
                d.s.k next = it.next();
                if (next.s(sVar.b)) {
                    next.d(sVar);
                    sVar.f2288c.add(next);
                }
            }
        }
    }

    @Override // d.s.k
    public void f(d.s.s sVar) {
        int size = this.J.size();
        for (int i = 0; i < size; i++) {
            this.J.get(i).f(sVar);
        }
    }

    @Override // d.s.k
    public void g(d.s.s sVar) {
        if (s(sVar.b)) {
            java.util.Iterator<d.s.k> it = this.J.iterator();
            while (it.hasNext()) {
                d.s.k next = it.next();
                if (next.s(sVar.b)) {
                    next.g(sVar);
                    sVar.f2288c.add(next);
                }
            }
        }
    }

    @Override // d.s.k
    /* renamed from: j */
    public d.s.k clone() {
        d.s.q qVar = (d.s.q) super.clone();
        qVar.J = new java.util.ArrayList<>();
        int size = this.J.size();
        for (int i = 0; i < size; i++) {
            qVar.H(this.J.get(i).clone());
        }
        return qVar;
    }

    @Override // d.s.k
    public void l(android.view.ViewGroup viewGroup, d.s.t tVar, d.s.t tVar2, java.util.ArrayList<d.s.s> arrayList, java.util.ArrayList<d.s.s> arrayList2) {
        long j = this.b;
        int size = this.J.size();
        for (int i = 0; i < size; i++) {
            d.s.k kVar = this.J.get(i);
            if (j > 0 && (this.K || i == 0)) {
                long j2 = kVar.b;
                if (j2 > 0) {
                    kVar.E(j2 + j);
                } else {
                    kVar.E(j);
                }
            }
            kVar.l(viewGroup, tVar, tVar2, arrayList, arrayList2);
        }
    }

    @Override // d.s.k
    public void u(android.view.View view) {
        super.u(view);
        int size = this.J.size();
        for (int i = 0; i < size; i++) {
            this.J.get(i).u(view);
        }
    }

    @Override // d.s.k
    public d.s.k v(d.s.k.d dVar) {
        super.v(dVar);
        return this;
    }

    @Override // d.s.k
    public d.s.k w(android.view.View view) {
        for (int i = 0; i < this.J.size(); i++) {
            this.J.get(i).w(view);
        }
        this.f2281f.remove(view);
        return this;
    }

    @Override // d.s.k
    public void x(android.view.View view) {
        super.x(view);
        int size = this.J.size();
        for (int i = 0; i < size; i++) {
            this.J.get(i).x(view);
        }
    }

    @Override // d.s.k
    public void y() {
        if (this.J.isEmpty()) {
            F();
            m();
            return;
        }
        d.s.q.b bVar = new d.s.q.b(this);
        java.util.Iterator<d.s.k> it = this.J.iterator();
        while (it.hasNext()) {
            it.next().a(bVar);
        }
        this.L = this.J.size();
        if (this.K) {
            java.util.Iterator<d.s.k> it2 = this.J.iterator();
            while (it2.hasNext()) {
                it2.next().y();
            }
            return;
        }
        for (int i = 1; i < this.J.size(); i++) {
            this.J.get(i - 1).a(new d.s.q.a(this, this.J.get(i)));
        }
        d.s.k kVar = this.J.get(0);
        if (kVar != null) {
            kVar.y();
        }
    }

    @Override // d.s.k
    public d.s.k z(long j) {
        this.f2278c = j;
        if (j >= 0) {
            int size = this.J.size();
            for (int i = 0; i < size; i++) {
                this.J.get(i).z(j);
            }
        }
        return this;
    }
}
