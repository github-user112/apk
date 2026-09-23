package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends androidx.recyclerview.widget.RecyclerView.k {
    public boolean D;
    public boolean E;
    public androidx.recyclerview.widget.StaggeredGridLayoutManager.e F;
    public int q;
    public androidx.recyclerview.widget.StaggeredGridLayoutManager.f[] r;
    public d.q.c.r s;
    public d.q.c.r t;
    public int u;
    public final d.q.c.n v;
    public boolean w;
    public java.util.BitSet y;
    public boolean x = false;
    public int z = -1;
    public int A = Integer.MIN_VALUE;
    public androidx.recyclerview.widget.StaggeredGridLayoutManager.d B = new androidx.recyclerview.widget.StaggeredGridLayoutManager.d();
    public int C = 2;
    public final android.graphics.Rect G = new android.graphics.Rect();
    public final androidx.recyclerview.widget.StaggeredGridLayoutManager.b H = new androidx.recyclerview.widget.StaggeredGridLayoutManager.b();
    public boolean I = false;
    public boolean J = true;
    public final java.lang.Runnable K = new androidx.recyclerview.widget.StaggeredGridLayoutManager.a();

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.this.j0();
        }
    }

    public class b {
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f184c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f185d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f186e;

        /* renamed from: f, reason: collision with root package name */
        public int[] f187f;

        public b() {
            a();
        }

        public void a() {
            this.a = -1;
            this.b = Integer.MIN_VALUE;
            this.f184c = false;
            this.f185d = false;
            this.f186e = false;
            int[] iArr = this.f187f;
            if (iArr != null) {
                java.util.Arrays.fill(iArr, -1);
            }
        }
    }

    public static class c extends androidx.recyclerview.widget.RecyclerView.l {

        /* renamed from: e, reason: collision with root package name */
        public androidx.recyclerview.widget.StaggeredGridLayoutManager.f f189e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f190f;

        public c(int i, int i2) {
            super(i, i2);
        }

        public c(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public static class d {
        public int[] a;
        public java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a> b;

        public static class a implements android.os.Parcelable {
            public static final android.os.Parcelable.Creator<androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a> CREATOR = new androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a.C0001a();
            public int a;
            public int b;

            /* renamed from: c, reason: collision with root package name */
            public int[] f191c;

            /* renamed from: d, reason: collision with root package name */
            public boolean f192d;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a, reason: collision with other inner class name */
            public static class C0001a implements android.os.Parcelable.Creator<androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a> {
                @Override // android.os.Parcelable.Creator
                public androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a createFromParcel(android.os.Parcel parcel) {
                    return new androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a[] newArray(int i) {
                    return new androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a[i];
                }
            }

            public a() {
            }

            public a(android.os.Parcel parcel) {
                this.a = parcel.readInt();
                this.b = parcel.readInt();
                this.f192d = parcel.readInt() == 1;
                int i = parcel.readInt();
                if (i > 0) {
                    int[] iArr = new int[i];
                    this.f191c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public java.lang.String toString() {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("FullSpanItem{mPosition=");
                sbO.append(this.a);
                sbO.append(", mGapDir=");
                sbO.append(this.b);
                sbO.append(", mHasUnwantedGapAfter=");
                sbO.append(this.f192d);
                sbO.append(", mGapPerSpan=");
                sbO.append(java.util.Arrays.toString(this.f191c));
                sbO.append('}');
                return sbO.toString();
            }

            @Override // android.os.Parcelable
            public void writeToParcel(android.os.Parcel parcel, int i) {
                parcel.writeInt(this.a);
                parcel.writeInt(this.b);
                parcel.writeInt(this.f192d ? 1 : 0);
                int[] iArr = this.f191c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f191c);
                }
            }
        }

        public void a() {
            int[] iArr = this.a;
            if (iArr != null) {
                java.util.Arrays.fill(iArr, -1);
            }
            this.b = null;
        }

        public void b(int i) {
            int[] iArr = this.a;
            if (iArr == null) {
                int[] iArr2 = new int[java.lang.Math.max(i, 10) + 1];
                this.a = iArr2;
                java.util.Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int length = iArr.length;
                while (length <= i) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.a = iArr3;
                java.lang.System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.a;
                java.util.Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public int c(int i) {
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a> list = this.b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.b.get(size).a >= i) {
                        this.b.remove(size);
                    }
                }
            }
            return f(i);
        }

        public androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a d(int i, int i2, int i3, boolean z) {
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a> list = this.b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a aVar = this.b.get(i4);
                int i5 = aVar.a;
                if (i5 >= i2) {
                    return null;
                }
                if (i5 >= i && (i3 == 0 || aVar.b == i3 || (z && aVar.f192d))) {
                    return aVar;
                }
            }
            return null;
        }

        public androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a e(int i) {
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a> list = this.b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a aVar = this.b.get(size);
                if (aVar.a == i) {
                    return aVar;
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int f(int r5) {
            /*
                r4 = this;
                int[] r0 = r4.a
                r1 = -1
                if (r0 != 0) goto L6
                return r1
            L6:
                int r0 = r0.length
                if (r5 < r0) goto La
                return r1
            La:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r4.b
                if (r0 != 0) goto L10
            Le:
                r0 = -1
                goto L46
            L10:
                androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a r0 = r4.e(r5)
                if (r0 == 0) goto L1b
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r2 = r4.b
                r2.remove(r0)
            L1b:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r4.b
                int r0 = r0.size()
                r2 = 0
            L22:
                if (r2 >= r0) goto L34
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r3 = r4.b
                java.lang.Object r3 = r3.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a r3 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a) r3
                int r3 = r3.a
                if (r3 < r5) goto L31
                goto L35
            L31:
                int r2 = r2 + 1
                goto L22
            L34:
                r2 = -1
            L35:
                if (r2 == r1) goto Le
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r4.b
                java.lang.Object r0 = r0.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a) r0
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r3 = r4.b
                r3.remove(r2)
                int r0 = r0.a
            L46:
                if (r0 != r1) goto L52
                int[] r0 = r4.a
                int r2 = r0.length
                java.util.Arrays.fill(r0, r5, r2, r1)
                int[] r5 = r4.a
                int r5 = r5.length
                return r5
            L52:
                int[] r2 = r4.a
                int r0 = r0 + 1
                java.util.Arrays.fill(r2, r5, r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.d.f(int):int");
        }

        public void g(int i, int i2) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            b(i3);
            int[] iArr2 = this.a;
            java.lang.System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            java.util.Arrays.fill(this.a, i, i3, -1);
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a> list = this.b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a aVar = this.b.get(size);
                int i4 = aVar.a;
                if (i4 >= i) {
                    aVar.a = i4 + i2;
                }
            }
        }

        public void h(int i, int i2) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            b(i3);
            int[] iArr2 = this.a;
            java.lang.System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.a;
            java.util.Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a> list = this.b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a aVar = this.b.get(size);
                int i4 = aVar.a;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.b.remove(size);
                    } else {
                        aVar.a = i4 - i2;
                    }
                }
            }
        }
    }

    public static class e implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<androidx.recyclerview.widget.StaggeredGridLayoutManager.e> CREATOR = new androidx.recyclerview.widget.StaggeredGridLayoutManager.e.a();
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f193c;

        /* renamed from: d, reason: collision with root package name */
        public int[] f194d;

        /* renamed from: e, reason: collision with root package name */
        public int f195e;

        /* renamed from: f, reason: collision with root package name */
        public int[] f196f;

        /* renamed from: g, reason: collision with root package name */
        public java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a> f197g;
        public boolean h;
        public boolean i;
        public boolean j;

        public static class a implements android.os.Parcelable.Creator<androidx.recyclerview.widget.StaggeredGridLayoutManager.e> {
            @Override // android.os.Parcelable.Creator
            public androidx.recyclerview.widget.StaggeredGridLayoutManager.e createFromParcel(android.os.Parcel parcel) {
                return new androidx.recyclerview.widget.StaggeredGridLayoutManager.e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public androidx.recyclerview.widget.StaggeredGridLayoutManager.e[] newArray(int i) {
                return new androidx.recyclerview.widget.StaggeredGridLayoutManager.e[i];
            }
        }

        public e() {
        }

        public e(android.os.Parcel parcel) {
            this.a = parcel.readInt();
            this.b = parcel.readInt();
            int i = parcel.readInt();
            this.f193c = i;
            if (i > 0) {
                int[] iArr = new int[i];
                this.f194d = iArr;
                parcel.readIntArray(iArr);
            }
            int i2 = parcel.readInt();
            this.f195e = i2;
            if (i2 > 0) {
                int[] iArr2 = new int[i2];
                this.f196f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.h = parcel.readInt() == 1;
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() == 1;
            this.f197g = parcel.readArrayList(androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a.class.getClassLoader());
        }

        public e(androidx.recyclerview.widget.StaggeredGridLayoutManager.e eVar) {
            this.f193c = eVar.f193c;
            this.a = eVar.a;
            this.b = eVar.b;
            this.f194d = eVar.f194d;
            this.f195e = eVar.f195e;
            this.f196f = eVar.f196f;
            this.h = eVar.h;
            this.i = eVar.i;
            this.j = eVar.j;
            this.f197g = eVar.f197g;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeInt(this.a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.f193c);
            if (this.f193c > 0) {
                parcel.writeIntArray(this.f194d);
            }
            parcel.writeInt(this.f195e);
            if (this.f195e > 0) {
                parcel.writeIntArray(this.f196f);
            }
            parcel.writeInt(this.h ? 1 : 0);
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeList(this.f197g);
        }
    }

    public class f {
        public java.util.ArrayList<android.view.View> a = new java.util.ArrayList<>();
        public int b = Integer.MIN_VALUE;

        /* renamed from: c, reason: collision with root package name */
        public int f198c = Integer.MIN_VALUE;

        /* renamed from: d, reason: collision with root package name */
        public int f199d = 0;

        /* renamed from: e, reason: collision with root package name */
        public final int f200e;

        public f(int i) {
            this.f200e = i;
        }

        public void a() {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a aVarE;
            java.util.ArrayList<android.view.View> arrayList = this.a;
            android.view.View view = arrayList.get(arrayList.size() - 1);
            androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVarE = e(view);
            this.f198c = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.s.b(view);
            if (cVarE.f190f && (aVarE = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.B.e(cVarE.a())) != null && aVarE.b == 1) {
                int i = this.f198c;
                int i2 = this.f200e;
                int[] iArr = aVarE.f191c;
                this.f198c = i + (iArr == null ? 0 : iArr[i2]);
            }
        }

        public void b() {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a aVarE;
            android.view.View view = this.a.get(0);
            androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVarE = e(view);
            this.b = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.s.c(view);
            if (cVarE.f190f && (aVarE = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.B.e(cVarE.a())) != null && aVarE.b == -1) {
                int i = this.b;
                int i2 = this.f200e;
                int[] iArr = aVarE.f191c;
                this.b = i - (iArr != null ? iArr[i2] : 0);
            }
        }

        public void c() {
            this.a.clear();
            this.b = Integer.MIN_VALUE;
            this.f198c = Integer.MIN_VALUE;
            this.f199d = 0;
        }

        public int d(int i) {
            int i2 = this.f198c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            a();
            return this.f198c;
        }

        public androidx.recyclerview.widget.StaggeredGridLayoutManager.c e(android.view.View view) {
            return (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) view.getLayoutParams();
        }

        public int f(int i) {
            int i2 = this.b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            b();
            return this.b;
        }
    }

    public StaggeredGridLayoutManager(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
        this.q = -1;
        this.w = false;
        androidx.recyclerview.widget.RecyclerView.k.c cVarY = androidx.recyclerview.widget.RecyclerView.k.y(context, attributeSet, i, i2);
        int i3 = cVarY.a;
        if (i3 != 0 && i3 != 1) {
            throw new java.lang.IllegalArgumentException("invalid orientation.");
        }
        a(null);
        if (i3 != this.u) {
            this.u = i3;
            d.q.c.r rVar = this.s;
            this.s = this.t;
            this.t = rVar;
            g0();
        }
        int i4 = cVarY.b;
        a(null);
        if (i4 != this.q) {
            this.B.a();
            g0();
            this.q = i4;
            this.y = new java.util.BitSet(this.q);
            this.r = new androidx.recyclerview.widget.StaggeredGridLayoutManager.f[this.q];
            for (int i5 = 0; i5 < this.q; i5++) {
                this.r[i5] = new androidx.recyclerview.widget.StaggeredGridLayoutManager.f(i5);
            }
            g0();
        }
        boolean z = cVarY.f157c;
        a(null);
        androidx.recyclerview.widget.StaggeredGridLayoutManager.e eVar = this.F;
        if (eVar != null && eVar.h != z) {
            eVar.h = z;
        }
        this.w = z;
        g0();
        this.v = new d.q.c.n();
        this.s = d.q.c.r.a(this, this.u);
        this.t = d.q.c.r.a(this, 1 - this.u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean B() {
        return this.C != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void H(androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.q qVar) {
        G();
        java.lang.Runnable runnable = this.K;
        androidx.recyclerview.widget.RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(runnable);
        }
        for (int i = 0; i < this.q; i++) {
            this.r[i].c();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void I(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        androidx.recyclerview.widget.RecyclerView.q qVar = this.b.b;
        J(accessibilityEvent);
        if (p() > 0) {
            android.view.View viewO0 = o0(false);
            android.view.View viewN0 = n0(false);
            if (viewO0 == null || viewN0 == null) {
                return;
            }
            int iX = x(viewO0);
            int iX2 = x(viewN0);
            if (iX < iX2) {
                accessibilityEvent.setFromIndex(iX);
                accessibilityEvent.setToIndex(iX2);
            } else {
                accessibilityEvent.setFromIndex(iX2);
                accessibilityEvent.setToIndex(iX);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void L(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar, android.view.View view, d.g.m.a0.d dVar) {
        d.g.m.a0.d.c cVarA;
        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof androidx.recyclerview.widget.StaggeredGridLayoutManager.c)) {
            super.K(view, dVar);
            return;
        }
        androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) layoutParams;
        if (this.u == 0) {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.f fVar = cVar.f189e;
            cVarA = d.g.m.a0.d.c.a(fVar == null ? -1 : fVar.f200e, cVar.f190f ? this.q : 1, -1, -1, cVar.f190f, false);
        } else {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.f fVar2 = cVar.f189e;
            cVarA = d.g.m.a0.d.c.a(-1, -1, fVar2 == null ? -1 : fVar2.f200e, cVar.f190f ? this.q : 1, cVar.f190f, false);
        }
        dVar.g(cVarA);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void N(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2) {
        r0(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void O(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.B.a();
        g0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void P(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2, int i3) {
        r0(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void Q(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2) {
        r0(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void S(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2, java.lang.Object obj) {
        r0(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void W(android.os.Parcelable parcelable) {
        if (parcelable instanceof androidx.recyclerview.widget.StaggeredGridLayoutManager.e) {
            this.F = (androidx.recyclerview.widget.StaggeredGridLayoutManager.e) parcelable;
            g0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public android.os.Parcelable X() {
        int iF;
        int iE;
        int[] iArr;
        androidx.recyclerview.widget.StaggeredGridLayoutManager.e eVar = this.F;
        if (eVar != null) {
            return new androidx.recyclerview.widget.StaggeredGridLayoutManager.e(eVar);
        }
        androidx.recyclerview.widget.StaggeredGridLayoutManager.e eVar2 = new androidx.recyclerview.widget.StaggeredGridLayoutManager.e();
        eVar2.h = this.w;
        eVar2.i = this.D;
        eVar2.j = this.E;
        androidx.recyclerview.widget.StaggeredGridLayoutManager.d dVar = this.B;
        if (dVar == null || (iArr = dVar.a) == null) {
            eVar2.f195e = 0;
        } else {
            eVar2.f196f = iArr;
            eVar2.f195e = iArr.length;
            eVar2.f197g = dVar.b;
        }
        if (p() > 0) {
            eVar2.a = this.D ? q0() : p0();
            android.view.View viewN0 = this.x ? n0(true) : o0(true);
            eVar2.b = viewN0 != null ? x(viewN0) : -1;
            int i = this.q;
            eVar2.f193c = i;
            eVar2.f194d = new int[i];
            for (int i2 = 0; i2 < this.q; i2++) {
                if (this.D) {
                    iF = this.r[i2].d(Integer.MIN_VALUE);
                    if (iF != Integer.MIN_VALUE) {
                        iE = this.s.d();
                        iF -= iE;
                    }
                } else {
                    iF = this.r[i2].f(Integer.MIN_VALUE);
                    if (iF != Integer.MIN_VALUE) {
                        iE = this.s.e();
                        iF -= iE;
                    }
                }
                eVar2.f194d[i2] = iF;
            }
        } else {
            eVar2.a = -1;
            eVar2.b = -1;
            eVar2.f193c = 0;
        }
        return eVar2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void Y(int i) {
        if (i == 0) {
            j0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void a(java.lang.String str) {
        androidx.recyclerview.widget.RecyclerView recyclerView;
        if (this.F != null || (recyclerView = this.b) == null) {
            return;
        }
        recyclerView.e(str);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean b() {
        return this.u == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean c() {
        return this.u == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean d(androidx.recyclerview.widget.RecyclerView.l lVar) {
        return lVar instanceof androidx.recyclerview.widget.StaggeredGridLayoutManager.c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int f(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return k0(uVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int g(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return l0(uVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int h(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return m0(uVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int i(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return k0(uVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean i0() {
        return this.F == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int j(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return l0(uVar);
    }

    public boolean j0() {
        int iP0;
        int iQ0;
        if (p() == 0 || this.C == 0 || !this.h) {
            return false;
        }
        if (this.x) {
            iP0 = q0();
            iQ0 = p0();
        } else {
            iP0 = p0();
            iQ0 = q0();
        }
        if (iP0 == 0 && s0() != null) {
            this.B.a();
        } else {
            if (!this.I) {
                return false;
            }
            int i = this.x ? -1 : 1;
            int i2 = iQ0 + 1;
            androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a aVarD = this.B.d(iP0, i2, i, true);
            if (aVarD == null) {
                this.I = false;
                this.B.c(i2);
                return false;
            }
            androidx.recyclerview.widget.StaggeredGridLayoutManager.d.a aVarD2 = this.B.d(iP0, aVarD.a, i * (-1), true);
            if (aVarD2 == null) {
                this.B.c(aVarD.a);
            } else {
                this.B.c(aVarD2.a + 1);
            }
        }
        this.f156g = true;
        g0();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int k(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return m0(uVar);
    }

    public final int k0(androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (p() == 0) {
            return 0;
        }
        return d.b.k.r.j(uVar, this.s, o0(!this.J), n0(!this.J), this, this.J);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public androidx.recyclerview.widget.RecyclerView.l l() {
        return this.u == 0 ? new androidx.recyclerview.widget.StaggeredGridLayoutManager.c(-2, -1) : new androidx.recyclerview.widget.StaggeredGridLayoutManager.c(-1, -2);
    }

    public final int l0(androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (p() == 0) {
            return 0;
        }
        return d.b.k.r.k(uVar, this.s, o0(!this.J), n0(!this.J), this, this.J, this.x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public androidx.recyclerview.widget.RecyclerView.l m(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.recyclerview.widget.StaggeredGridLayoutManager.c(context, attributeSet);
    }

    public final int m0(androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (p() == 0) {
            return 0;
        }
        return d.b.k.r.l(uVar, this.s, o0(!this.J), n0(!this.J), this, this.J);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public androidx.recyclerview.widget.RecyclerView.l n(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.recyclerview.widget.StaggeredGridLayoutManager.c((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.recyclerview.widget.StaggeredGridLayoutManager.c(layoutParams);
    }

    public android.view.View n0(boolean z) {
        int iE = this.s.e();
        int iD = this.s.d();
        android.view.View view = null;
        for (int iP = p() - 1; iP >= 0; iP--) {
            android.view.View viewO = o(iP);
            int iC = this.s.c(viewO);
            int iB = this.s.b(viewO);
            if (iB > iE && iC < iD) {
                if (iB <= iD || !z) {
                    return viewO;
                }
                if (view == null) {
                    view = viewO;
                }
            }
        }
        return view;
    }

    public android.view.View o0(boolean z) {
        int iE = this.s.e();
        int iD = this.s.d();
        int iP = p();
        android.view.View view = null;
        for (int i = 0; i < iP; i++) {
            android.view.View viewO = o(i);
            int iC = this.s.c(viewO);
            if (this.s.b(viewO) > iE && iC < iD) {
                if (iC >= iE || !z) {
                    return viewO;
                }
                if (view == null) {
                    view = viewO;
                }
            }
        }
        return view;
    }

    public int p0() {
        if (p() == 0) {
            return 0;
        }
        return x(o(0));
    }

    public int q0() {
        int iP = p();
        if (iP == 0) {
            return 0;
        }
        return x(o(iP - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int r(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (this.u == 1) {
            return this.q;
        }
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void r0(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.x
            if (r0 == 0) goto L9
            int r0 = r6.q0()
            goto Ld
        L9:
            int r0 = r6.p0()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1a
            if (r7 >= r8) goto L16
            int r2 = r8 + 1
            goto L1c
        L16:
            int r2 = r7 + 1
            r3 = r8
            goto L1d
        L1a:
            int r2 = r7 + r8
        L1c:
            r3 = r7
        L1d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r4 = r6.B
            r4.f(r3)
            r4 = 1
            if (r9 == r4) goto L3c
            r5 = 2
            if (r9 == r5) goto L36
            if (r9 == r1) goto L2b
            goto L41
        L2b:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.B
            r9.h(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r7 = r6.B
            r7.g(r8, r4)
            goto L41
        L36:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.B
            r9.h(r7, r8)
            goto L41
        L3c:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.B
            r9.g(r7, r8)
        L41:
            if (r2 > r0) goto L44
            return
        L44:
            boolean r7 = r6.x
            if (r7 == 0) goto L4d
            int r7 = r6.p0()
            goto L51
        L4d:
            int r7 = r6.q0()
        L51:
            if (r3 > r7) goto L56
            r6.g0()
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.r0(int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View s0() {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.s0():android.view.View");
    }

    public boolean t0() {
        return s() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int z(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (this.u == 0) {
            return this.q;
        }
        return 1;
    }
}
