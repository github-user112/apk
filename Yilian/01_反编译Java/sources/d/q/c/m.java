package d.q.c;

/* loaded from: classes.dex */
public final class m implements java.lang.Runnable {

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.ThreadLocal<d.q.c.m> f2215e = new java.lang.ThreadLocal<>();

    /* renamed from: f, reason: collision with root package name */
    public static java.util.Comparator<d.q.c.m.c> f2216f = new d.q.c.m.a();
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f2217c;
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> a = new java.util.ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    public java.util.ArrayList<d.q.c.m.c> f2218d = new java.util.ArrayList<>();

    public static class a implements java.util.Comparator<d.q.c.m.c> {
        /* JADX WARN: Removed duplicated region for block: B:18:0x0024  */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compare(d.q.c.m.c r6, d.q.c.m.c r7) {
            /*
                r5 = this;
                d.q.c.m$c r6 = (d.q.c.m.c) r6
                d.q.c.m$c r7 = (d.q.c.m.c) r7
                androidx.recyclerview.widget.RecyclerView r0 = r6.f2222d
                r1 = 1
                r2 = 0
                if (r0 != 0) goto Lc
                r0 = 1
                goto Ld
            Lc:
                r0 = 0
            Ld:
                androidx.recyclerview.widget.RecyclerView r3 = r7.f2222d
                if (r3 != 0) goto L13
                r3 = 1
                goto L14
            L13:
                r3 = 0
            L14:
                r4 = -1
                if (r0 == r3) goto L1c
                androidx.recyclerview.widget.RecyclerView r6 = r6.f2222d
                if (r6 != 0) goto L24
                goto L25
            L1c:
                boolean r0 = r6.a
                boolean r3 = r7.a
                if (r0 == r3) goto L27
                if (r0 == 0) goto L25
            L24:
                r1 = -1
            L25:
                r2 = r1
                goto L38
            L27:
                int r0 = r7.b
                int r1 = r6.b
                int r0 = r0 - r1
                if (r0 == 0) goto L30
                r2 = r0
                goto L38
            L30:
                int r6 = r6.f2221c
                int r7 = r7.f2221c
                int r6 = r6 - r7
                if (r6 == 0) goto L38
                r2 = r6
            L38:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: d.q.c.m.a.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    public static class b {
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int[] f2219c;

        /* renamed from: d, reason: collision with root package name */
        public int f2220d;
    }

    public static class c {
        public boolean a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2221c;

        /* renamed from: d, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView f2222d;

        /* renamed from: e, reason: collision with root package name */
        public int f2223e;
    }

    public void a(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.b == 0) {
            this.b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        d.q.c.m.b bVar = recyclerView.f0;
        bVar.a = i;
        bVar.b = i2;
    }

    public void b(long j) {
        androidx.recyclerview.widget.RecyclerView recyclerView;
        d.q.c.m.c cVar;
        int size = this.a.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            androidx.recyclerview.widget.RecyclerView recyclerView2 = this.a.get(i2);
            if (recyclerView2.getWindowVisibility() == 0) {
                d.q.c.m.b bVar = recyclerView2.f0;
                bVar.f2220d = 0;
                int[] iArr = bVar.f2219c;
                if (iArr != null) {
                    java.util.Arrays.fill(iArr, -1);
                }
                i += recyclerView2.f0.f2220d;
            }
        }
        this.f2218d.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            androidx.recyclerview.widget.RecyclerView recyclerView3 = this.a.get(i4);
            if (recyclerView3.getWindowVisibility() == 0) {
                d.q.c.m.b bVar2 = recyclerView3.f0;
                int iAbs = java.lang.Math.abs(bVar2.b) + java.lang.Math.abs(bVar2.a);
                for (int i5 = 0; i5 < bVar2.f2220d * 2; i5 += 2) {
                    if (i3 >= this.f2218d.size()) {
                        cVar = new d.q.c.m.c();
                        this.f2218d.add(cVar);
                    } else {
                        cVar = this.f2218d.get(i3);
                    }
                    int i6 = bVar2.f2219c[i5 + 1];
                    cVar.a = i6 <= iAbs;
                    cVar.b = iAbs;
                    cVar.f2221c = i6;
                    cVar.f2222d = recyclerView3;
                    cVar.f2223e = bVar2.f2219c[i5];
                    i3++;
                }
            }
        }
        java.util.Collections.sort(this.f2218d, f2216f);
        for (int i7 = 0; i7 < this.f2218d.size(); i7++) {
            d.q.c.m.c cVar2 = this.f2218d.get(i7);
            if (cVar2.f2222d == null) {
                return;
            }
            androidx.recyclerview.widget.RecyclerView.x xVarC = c(cVar2.f2222d, cVar2.f2223e, cVar2.a ? Long.MAX_VALUE : j);
            if (xVarC != null && xVarC.b != null && xVarC.g() && !xVarC.h() && (recyclerView = xVarC.b.get()) != null) {
                if (recyclerView.B && recyclerView.f145e.f() != 0) {
                    recyclerView.J();
                }
                d.q.c.m.b bVar3 = recyclerView.f0;
                bVar3.f2220d = 0;
                int[] iArr2 = bVar3.f2219c;
                if (iArr2 != null) {
                    java.util.Arrays.fill(iArr2, -1);
                }
                if (bVar3.f2220d != 0) {
                    try {
                        d.g.i.b.a("RV Nested Prefetch");
                        recyclerView.g0.f170d = 1;
                        throw null;
                    } catch (java.lang.Throwable th) {
                        d.g.i.b.b();
                        throw th;
                    }
                }
            }
            cVar2.a = false;
            cVar2.b = 0;
            cVar2.f2221c = 0;
            cVar2.f2222d = null;
            cVar2.f2223e = 0;
        }
    }

    public final androidx.recyclerview.widget.RecyclerView.x c(androidx.recyclerview.widget.RecyclerView recyclerView, int i, long j) {
        boolean z;
        int iF = recyclerView.f145e.f();
        int i2 = 0;
        while (true) {
            if (i2 >= iF) {
                z = false;
                break;
            }
            androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(recyclerView.f145e.e(i2));
            if (xVarU.f179c == i && !xVarU.h()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return null;
        }
        androidx.recyclerview.widget.RecyclerView.q qVar = recyclerView.b;
        try {
            recyclerView.D();
            androidx.recyclerview.widget.RecyclerView.x xVarJ = qVar.j(i, false, j);
            if (!xVarJ.g() || xVarJ.h()) {
                qVar.a(xVarJ, false);
            } else {
                qVar.g(xVarJ.a);
            }
            return xVarJ;
        } finally {
            recyclerView.E(false);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            d.g.i.b.a("RV Prefetch");
            if (!this.a.isEmpty()) {
                int size = this.a.size();
                long jMax = 0;
                for (int i = 0; i < size; i++) {
                    androidx.recyclerview.widget.RecyclerView recyclerView = this.a.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = java.lang.Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    b(java.util.concurrent.TimeUnit.MILLISECONDS.toNanos(jMax) + this.f2217c);
                }
            }
        } finally {
            this.b = 0L;
            d.g.i.b.b();
        }
    }
}
