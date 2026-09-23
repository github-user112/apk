package d.j.d;

/* loaded from: classes.dex */
public final class a extends d.j.d.g0 implements d.j.d.y.l {
    public final d.j.d.y q;
    public boolean r;
    public int s;

    /* JADX WARN: Illegal instructions before constructor call */
    public a(d.j.d.y yVar) {
        d.j.d.u uVarI = yVar.I();
        d.j.d.v<?> vVar = yVar.q;
        super(uVarI, vVar != null ? vVar.b.getClassLoader() : null);
        this.s = -1;
        this.q = yVar;
    }

    @Override // d.j.d.y.l
    public boolean a(java.util.ArrayList<d.j.d.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2) {
        if (d.j.d.y.M(2)) {
            android.util.Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(java.lang.Boolean.FALSE);
        if (!this.f2083g) {
            return true;
        }
        d.j.d.y yVar = this.q;
        if (yVar.f2148d == null) {
            yVar.f2148d = new java.util.ArrayList<>();
        }
        yVar.f2148d.add(this);
        return true;
    }

    @Override // d.j.d.g0
    public void c() {
        if (this.f2083g) {
            throw new java.lang.IllegalStateException("This transaction is already being added to the back stack");
        }
        d.j.d.y yVar = this.q;
        if (yVar.q == null || yVar.F) {
            return;
        }
        yVar.A(true);
        if (a(yVar.H, yVar.I)) {
            yVar.b = true;
            try {
                yVar.X(yVar.H, yVar.I);
            } finally {
                yVar.e();
            }
        }
        yVar.h0();
        yVar.x();
        yVar.f2147c.b();
    }

    @Override // d.j.d.g0
    public void d(int i, androidx.fragment.app.Fragment fragment, java.lang.String str, int i2) {
        super.d(i, fragment, str, i2);
        fragment.mFragmentManager = this.q;
    }

    @Override // d.j.d.g0
    public d.j.d.g0 e(androidx.fragment.app.Fragment fragment) {
        d.j.d.y yVar = fragment.mFragmentManager;
        if (yVar == null || yVar == this.q) {
            b(new d.j.d.g0.a(4, fragment));
            return this;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Cannot hide Fragment attached to a different FragmentManager. Fragment ");
        sbO.append(fragment.toString());
        sbO.append(" is already attached to a FragmentManager.");
        throw new java.lang.IllegalStateException(sbO.toString());
    }

    @Override // d.j.d.g0
    public d.j.d.g0 f(androidx.fragment.app.Fragment fragment) {
        d.j.d.y yVar = fragment.mFragmentManager;
        if (yVar == null || yVar == this.q) {
            b(new d.j.d.g0.a(5, fragment));
            return this;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Cannot show Fragment attached to a different FragmentManager. Fragment ");
        sbO.append(fragment.toString());
        sbO.append(" is already attached to a FragmentManager.");
        throw new java.lang.IllegalStateException(sbO.toString());
    }

    public void g(int i) {
        if (this.f2083g) {
            if (d.j.d.y.M(2)) {
                android.util.Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.a.size();
            for (int i2 = 0; i2 < size; i2++) {
                d.j.d.g0.a aVar = this.a.get(i2);
                androidx.fragment.app.Fragment fragment = aVar.b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    if (d.j.d.y.M(2)) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("Bump nesting of ");
                        sbO.append(aVar.b);
                        sbO.append(" to ");
                        sbO.append(aVar.b.mBackStackNesting);
                        android.util.Log.v("FragmentManager", sbO.toString());
                    }
                }
            }
        }
    }

    public void h(java.lang.String str, java.io.PrintWriter printWriter, boolean z) {
        java.lang.String string;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.h);
            printWriter.print(" mIndex=");
            printWriter.print(this.s);
            printWriter.print(" mCommitted=");
            printWriter.println(this.r);
            if (this.f2082f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(java.lang.Integer.toHexString(this.f2082f));
            }
            if (this.b != 0 || this.f2079c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(java.lang.Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(java.lang.Integer.toHexString(this.f2079c));
            }
            if (this.f2080d != 0 || this.f2081e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(java.lang.Integer.toHexString(this.f2080d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(java.lang.Integer.toHexString(this.f2081e));
            }
            if (this.i != 0 || this.j != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(java.lang.Integer.toHexString(this.i));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.j);
            }
            if (this.k != 0 || this.l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(java.lang.Integer.toHexString(this.k));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.l);
            }
        }
        if (this.a.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            d.j.d.g0.a aVar = this.a.get(i);
            switch (aVar.a) {
                case 0:
                    string = "NULL";
                    break;
                case 1:
                    string = "ADD";
                    break;
                case 2:
                    string = "REPLACE";
                    break;
                case 3:
                    string = "REMOVE";
                    break;
                case 4:
                    string = "HIDE";
                    break;
                case 5:
                    string = "SHOW";
                    break;
                case 6:
                    string = "DETACH";
                    break;
                case 7:
                    string = "ATTACH";
                    break;
                case 8:
                    string = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    string = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    string = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("cmd=");
                    sbO.append(aVar.a);
                    string = sbO.toString();
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(string);
            printWriter.print(" ");
            printWriter.println(aVar.b);
            if (z) {
                if (aVar.f2084c != 0 || aVar.f2085d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(java.lang.Integer.toHexString(aVar.f2084c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(java.lang.Integer.toHexString(aVar.f2085d));
                }
                if (aVar.f2086e != 0 || aVar.f2087f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(java.lang.Integer.toHexString(aVar.f2086e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(java.lang.Integer.toHexString(aVar.f2087f));
                }
            }
        }
    }

    public void i() {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            d.j.d.g0.a aVar = this.a.get(i);
            androidx.fragment.app.Fragment fragment = aVar.b;
            if (fragment != null) {
                fragment.setNextTransition(this.f2082f);
                fragment.setSharedElementNames(this.m, this.n);
            }
            switch (aVar.a) {
                case 1:
                    fragment.setNextAnim(aVar.f2084c);
                    this.q.b0(fragment, false);
                    this.q.a(fragment);
                    break;
                case 2:
                default:
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("Unknown cmd: ");
                    sbO.append(aVar.a);
                    throw new java.lang.IllegalArgumentException(sbO.toString());
                case 3:
                    fragment.setNextAnim(aVar.f2085d);
                    this.q.W(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.f2085d);
                    this.q.L(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f2084c);
                    this.q.b0(fragment, false);
                    this.q.f0(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.f2085d);
                    this.q.j(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f2084c);
                    this.q.b0(fragment, false);
                    this.q.c(fragment);
                    break;
                case 8:
                    this.q.d0(fragment);
                    break;
                case 9:
                    this.q.d0(null);
                    break;
                case 10:
                    this.q.c0(fragment, aVar.h);
                    break;
            }
            if (!this.o) {
                int i2 = aVar.a;
            }
        }
    }

    public void j(boolean z) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            d.j.d.g0.a aVar = this.a.get(size);
            androidx.fragment.app.Fragment fragment = aVar.b;
            if (fragment != null) {
                int i = this.f2082f;
                fragment.setNextTransition(i != 4097 ? i != 4099 ? i != 8194 ? 0 : 4097 : 4099 : 8194);
                fragment.setSharedElementNames(this.n, this.m);
            }
            switch (aVar.a) {
                case 1:
                    fragment.setNextAnim(aVar.f2087f);
                    this.q.b0(fragment, true);
                    this.q.W(fragment);
                    break;
                case 2:
                default:
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("Unknown cmd: ");
                    sbO.append(aVar.a);
                    throw new java.lang.IllegalArgumentException(sbO.toString());
                case 3:
                    fragment.setNextAnim(aVar.f2086e);
                    this.q.a(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.f2086e);
                    this.q.f0(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f2087f);
                    this.q.b0(fragment, true);
                    this.q.L(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.f2086e);
                    this.q.c(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f2087f);
                    this.q.b0(fragment, true);
                    this.q.j(fragment);
                    break;
                case 8:
                    this.q.d0(null);
                    break;
                case 9:
                    this.q.d0(fragment);
                    break;
                case 10:
                    this.q.c0(fragment, aVar.f2088g);
                    break;
            }
            if (!this.o) {
                int i2 = aVar.a;
            }
        }
    }

    public boolean k(int i) {
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            androidx.fragment.app.Fragment fragment = this.a.get(i2).b;
            int i3 = fragment != null ? fragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    public boolean l(java.util.ArrayList<d.j.d.a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.a.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            androidx.fragment.app.Fragment fragment = this.a.get(i4).b;
            int i5 = fragment != null ? fragment.mContainerId : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    d.j.d.a aVar = arrayList.get(i6);
                    int size2 = aVar.a.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        androidx.fragment.app.Fragment fragment2 = aVar.a.get(i7).b;
                        if ((fragment2 != null ? fragment2.mContainerId : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        if (this.s >= 0) {
            sb.append(" #");
            sb.append(this.s);
        }
        if (this.h != null) {
            sb.append(" ");
            sb.append(this.h);
        }
        sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        return sb.toString();
    }
}
