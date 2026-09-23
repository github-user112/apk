package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public class LinearLayoutManager extends androidx.recyclerview.widget.RecyclerView.k {
    public androidx.recyclerview.widget.LinearLayoutManager.c r;
    public d.q.c.r s;
    public boolean t;
    public boolean u;
    public int q = 1;
    public boolean v = false;
    public boolean w = false;
    public boolean x = true;
    public int y = -1;
    public int z = Integer.MIN_VALUE;
    public androidx.recyclerview.widget.LinearLayoutManager.d A = null;
    public final androidx.recyclerview.widget.LinearLayoutManager.a B = new androidx.recyclerview.widget.LinearLayoutManager.a();
    public final androidx.recyclerview.widget.LinearLayoutManager.b C = new androidx.recyclerview.widget.LinearLayoutManager.b();
    public int D = 2;

    public static class a {
        public d.q.c.r a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f138c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f139d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f140e;

        public a() {
            a();
        }

        public void a() {
            this.b = -1;
            this.f138c = Integer.MIN_VALUE;
            this.f139d = false;
            this.f140e = false;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("AnchorInfo{mPosition=");
            sbO.append(this.b);
            sbO.append(", mCoordinate=");
            sbO.append(this.f138c);
            sbO.append(", mLayoutFromEnd=");
            sbO.append(this.f139d);
            sbO.append(", mValid=");
            sbO.append(this.f140e);
            sbO.append('}');
            return sbO.toString();
        }
    }

    public static class b {
    }

    public static class c {
        public boolean a = true;
        public int b = 0;

        /* renamed from: c, reason: collision with root package name */
        public java.util.List<androidx.recyclerview.widget.RecyclerView.x> f141c = null;
    }

    public static class d implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<androidx.recyclerview.widget.LinearLayoutManager.d> CREATOR = new androidx.recyclerview.widget.LinearLayoutManager.d.a();
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f142c;

        public static class a implements android.os.Parcelable.Creator<androidx.recyclerview.widget.LinearLayoutManager.d> {
            @Override // android.os.Parcelable.Creator
            public androidx.recyclerview.widget.LinearLayoutManager.d createFromParcel(android.os.Parcel parcel) {
                return new androidx.recyclerview.widget.LinearLayoutManager.d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public androidx.recyclerview.widget.LinearLayoutManager.d[] newArray(int i) {
                return new androidx.recyclerview.widget.LinearLayoutManager.d[i];
            }
        }

        public d() {
        }

        public d(android.os.Parcel parcel) {
            this.a = parcel.readInt();
            this.b = parcel.readInt();
            this.f142c = parcel.readInt() == 1;
        }

        public d(androidx.recyclerview.widget.LinearLayoutManager.d dVar) {
            this.a = dVar.a;
            this.b = dVar.b;
            this.f142c = dVar.f142c;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeInt(this.a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.f142c ? 1 : 0);
        }
    }

    public LinearLayoutManager(int i, boolean z) {
        this.u = false;
        s0(i);
        a(null);
        if (z == this.u) {
            return;
        }
        this.u = z;
        g0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean B() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void H(androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.q qVar) {
        G();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void I(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        androidx.recyclerview.widget.RecyclerView.q qVar = this.b.b;
        J(accessibilityEvent);
        if (p() > 0) {
            android.view.View viewP0 = p0(0, p(), false, true);
            accessibilityEvent.setFromIndex(viewP0 == null ? -1 : x(viewP0));
            android.view.View viewP02 = p0(p() - 1, -1, false, true);
            accessibilityEvent.setToIndex(viewP02 != null ? x(viewP02) : -1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void W(android.os.Parcelable parcelable) {
        if (parcelable instanceof androidx.recyclerview.widget.LinearLayoutManager.d) {
            this.A = (androidx.recyclerview.widget.LinearLayoutManager.d) parcelable;
            g0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public android.os.Parcelable X() {
        androidx.recyclerview.widget.LinearLayoutManager.d dVar = this.A;
        if (dVar != null) {
            return new androidx.recyclerview.widget.LinearLayoutManager.d(dVar);
        }
        androidx.recyclerview.widget.LinearLayoutManager.d dVar2 = new androidx.recyclerview.widget.LinearLayoutManager.d();
        if (p() > 0) {
            m0();
            boolean z = this.t ^ this.v;
            dVar2.f142c = z;
            if (z) {
                android.view.View viewQ0 = q0();
                dVar2.b = this.s.d() - this.s.b(viewQ0);
                dVar2.a = x(viewQ0);
            } else {
                android.view.View viewR0 = r0();
                dVar2.a = x(viewR0);
                dVar2.b = this.s.c(viewR0) - this.s.e();
            }
        } else {
            dVar2.a = -1;
        }
        return dVar2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void a(java.lang.String str) {
        androidx.recyclerview.widget.RecyclerView recyclerView;
        if (this.A != null || (recyclerView = this.b) == null) {
            return;
        }
        recyclerView.e(str);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean b() {
        return this.q == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean c() {
        return this.q == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int f(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return j0(uVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int g(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return k0(uVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int h(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return l0(uVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int i(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return j0(uVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean i0() {
        return this.A == null && this.t == this.w;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int j(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return k0(uVar);
    }

    public final int j0(androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (p() == 0) {
            return 0;
        }
        m0();
        return d.b.k.r.j(uVar, this.s, o0(!this.x, true), n0(!this.x, true), this, this.x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int k(androidx.recyclerview.widget.RecyclerView.u uVar) {
        return l0(uVar);
    }

    public final int k0(androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (p() == 0) {
            return 0;
        }
        m0();
        return d.b.k.r.k(uVar, this.s, o0(!this.x, true), n0(!this.x, true), this, this.x, this.v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public androidx.recyclerview.widget.RecyclerView.l l() {
        return new androidx.recyclerview.widget.RecyclerView.l(-2, -2);
    }

    public final int l0(androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (p() == 0) {
            return 0;
        }
        m0();
        return d.b.k.r.l(uVar, this.s, o0(!this.x, true), n0(!this.x, true), this, this.x);
    }

    public void m0() {
        if (this.r == null) {
            this.r = new androidx.recyclerview.widget.LinearLayoutManager.c();
        }
    }

    public final android.view.View n0(boolean z, boolean z2) {
        int iP;
        int iP2;
        if (this.v) {
            iP = 0;
            iP2 = p();
        } else {
            iP = p() - 1;
            iP2 = -1;
        }
        return p0(iP, iP2, z, z2);
    }

    public final android.view.View o0(boolean z, boolean z2) {
        int iP;
        int iP2;
        if (this.v) {
            iP = p() - 1;
            iP2 = -1;
        } else {
            iP = 0;
            iP2 = p();
        }
        return p0(iP, iP2, z, z2);
    }

    public android.view.View p0(int i, int i2, boolean z, boolean z2) {
        m0();
        int i3 = android.support.v4.media.session.MediaSessionCompat.MAX_BITMAP_SIZE_IN_DP;
        int i4 = z ? 24579 : android.support.v4.media.session.MediaSessionCompat.MAX_BITMAP_SIZE_IN_DP;
        if (!z2) {
            i3 = 0;
        }
        return (this.q == 0 ? this.f154e : this.f155f).a(i, i2, i4, i3);
    }

    public final android.view.View q0() {
        return o(this.v ? 0 : p() - 1);
    }

    public final android.view.View r0() {
        return o(this.v ? p() - 1 : 0);
    }

    public void s0(int i) {
        if (i != 0 && i != 1) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("invalid orientation:", i));
        }
        a(null);
        if (i != this.q || this.s == null) {
            d.q.c.r rVarA = d.q.c.r.a(this, i);
            this.s = rVarA;
            this.B.a = rVarA;
            this.q = i;
            g0();
        }
    }

    public void t0(boolean z) {
        a(null);
        if (this.w == z) {
            return;
        }
        this.w = z;
        g0();
    }

    public LinearLayoutManager(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
        this.u = false;
        androidx.recyclerview.widget.RecyclerView.k.c cVarY = androidx.recyclerview.widget.RecyclerView.k.y(context, attributeSet, i, i2);
        s0(cVarY.a);
        boolean z = cVarY.f157c;
        a(null);
        if (z != this.u) {
            this.u = z;
            g0();
        }
        t0(cVarY.f158d);
    }
}
