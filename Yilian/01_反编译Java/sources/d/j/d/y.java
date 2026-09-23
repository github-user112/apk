package d.j.d;

/* loaded from: classes.dex */
public abstract class y {
    public d.a.e.c<java.lang.String[]> A;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public java.util.ArrayList<d.j.d.a> H;
    public java.util.ArrayList<java.lang.Boolean> I;
    public java.util.ArrayList<androidx.fragment.app.Fragment> J;
    public java.util.ArrayList<d.j.d.y.m> K;
    public d.j.d.b0 L;
    public boolean b;

    /* renamed from: d, reason: collision with root package name */
    public java.util.ArrayList<d.j.d.a> f2148d;

    /* renamed from: e, reason: collision with root package name */
    public java.util.ArrayList<androidx.fragment.app.Fragment> f2149e;

    /* renamed from: g, reason: collision with root package name */
    public androidx.activity.OnBackPressedDispatcher f2151g;
    public d.j.d.v<?> q;
    public d.j.d.r r;
    public androidx.fragment.app.Fragment s;
    public androidx.fragment.app.Fragment t;
    public d.a.e.c<android.content.Intent> y;
    public d.a.e.c<d.a.e.e> z;
    public final java.util.ArrayList<d.j.d.y.l> a = new java.util.ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public final d.j.d.f0 f2147c = new d.j.d.f0();

    /* renamed from: f, reason: collision with root package name */
    public final d.j.d.w f2150f = new d.j.d.w(this);
    public final d.a.b h = new d.j.d.y.c(false);
    public final java.util.concurrent.atomic.AtomicInteger i = new java.util.concurrent.atomic.AtomicInteger();
    public final java.util.Map<java.lang.String, android.os.Bundle> j = java.util.Collections.synchronizedMap(new java.util.HashMap());
    public final java.util.Map<java.lang.String, java.lang.Object> k = java.util.Collections.synchronizedMap(new java.util.HashMap());
    public java.util.Map<androidx.fragment.app.Fragment, java.util.HashSet<d.g.i.a>> l = java.util.Collections.synchronizedMap(new java.util.HashMap());
    public final d.j.d.n0.a m = new d.j.d.y.d();
    public final d.j.d.x n = new d.j.d.x(this);
    public final java.util.concurrent.CopyOnWriteArrayList<d.j.d.c0> o = new java.util.concurrent.CopyOnWriteArrayList<>();
    public int p = -1;
    public d.j.d.u u = null;
    public d.j.d.u v = new d.j.d.y.e();
    public d.j.d.v0 w = null;
    public d.j.d.v0 x = new d.j.d.y.f(this);
    public java.util.ArrayDeque<d.j.d.y.k> B = new java.util.ArrayDeque<>();
    public java.lang.Runnable M = new d.j.d.y.g();

    public class a implements d.a.e.b<d.a.e.a> {
        public a() {
        }

        @Override // d.a.e.b
        public void a(d.a.e.a aVar) {
            java.lang.StringBuilder sbQ;
            d.a.e.a aVar2 = aVar;
            d.j.d.y.k kVarPollFirst = d.j.d.y.this.B.pollFirst();
            if (kVarPollFirst == null) {
                sbQ = new java.lang.StringBuilder();
                sbQ.append("No IntentSenders were started for ");
                sbQ.append(this);
            } else {
                java.lang.String str = kVarPollFirst.a;
                int i = kVarPollFirst.b;
                androidx.fragment.app.Fragment fragmentE = d.j.d.y.this.f2147c.e(str);
                if (fragmentE != null) {
                    fragmentE.onActivityResult(i, aVar2.a, aVar2.b);
                    return;
                }
                sbQ = e.a.c.a.a.q("Intent Sender result delivered for unknown Fragment ", str);
            }
            android.util.Log.w("FragmentManager", sbQ.toString());
        }
    }

    public class b implements d.a.e.b<java.util.Map<java.lang.String, java.lang.Boolean>> {
        public b() {
        }

        @Override // d.a.e.b
        @android.annotation.SuppressLint({"SyntheticAccessor"})
        public void a(java.util.Map<java.lang.String, java.lang.Boolean> map) {
            java.lang.StringBuilder sbQ;
            java.util.Map<java.lang.String, java.lang.Boolean> map2 = map;
            java.lang.String[] strArr = (java.lang.String[]) map2.keySet().toArray(new java.lang.String[0]);
            java.util.ArrayList arrayList = new java.util.ArrayList(map2.values());
            int[] iArr = new int[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                iArr[i] = ((java.lang.Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
            }
            d.j.d.y.k kVarPollFirst = d.j.d.y.this.B.pollFirst();
            if (kVarPollFirst == null) {
                sbQ = new java.lang.StringBuilder();
                sbQ.append("No permissions were requested for ");
                sbQ.append(this);
            } else {
                java.lang.String str = kVarPollFirst.a;
                int i2 = kVarPollFirst.b;
                androidx.fragment.app.Fragment fragmentE = d.j.d.y.this.f2147c.e(str);
                if (fragmentE != null) {
                    fragmentE.onRequestPermissionsResult(i2, strArr, iArr);
                    return;
                }
                sbQ = e.a.c.a.a.q("Permission request result delivered for unknown Fragment ", str);
            }
            android.util.Log.w("FragmentManager", sbQ.toString());
        }
    }

    public class c extends d.a.b {
        public c(boolean z) {
            super(z);
        }
    }

    public class d implements d.j.d.n0.a {
        public d() {
        }

        public void a(androidx.fragment.app.Fragment fragment, d.g.i.a aVar) throws android.content.res.Resources.NotFoundException {
            boolean z;
            synchronized (aVar) {
                z = aVar.a;
            }
            if (z) {
                return;
            }
            d.j.d.y yVar = d.j.d.y.this;
            java.util.HashSet<d.g.i.a> hashSet = yVar.l.get(fragment);
            if (hashSet != null && hashSet.remove(aVar) && hashSet.isEmpty()) {
                yVar.l.remove(fragment);
                if (fragment.mState < 5) {
                    yVar.i(fragment);
                    yVar.S(fragment, yVar.p);
                }
            }
        }

        public void b(androidx.fragment.app.Fragment fragment, d.g.i.a aVar) {
            d.j.d.y yVar = d.j.d.y.this;
            if (yVar.l.get(fragment) == null) {
                yVar.l.put(fragment, new java.util.HashSet<>());
            }
            yVar.l.get(fragment).add(aVar);
        }
    }

    public class e extends d.j.d.u {
        public e() {
        }

        @Override // d.j.d.u
        public androidx.fragment.app.Fragment a(java.lang.ClassLoader classLoader, java.lang.String str) {
            d.j.d.v<?> vVar = d.j.d.y.this.q;
            android.content.Context context = vVar.b;
            if (vVar != null) {
                return androidx.fragment.app.Fragment.instantiate(context, str, null);
            }
            throw null;
        }
    }

    public class f implements d.j.d.v0 {
        public f(d.j.d.y yVar) {
        }
    }

    public class g implements java.lang.Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.j.d.y.this.B(true);
        }
    }

    public class h implements d.j.d.c0 {
        public final /* synthetic */ androidx.fragment.app.Fragment a;

        public h(d.j.d.y yVar, androidx.fragment.app.Fragment fragment) {
            this.a = fragment;
        }

        @Override // d.j.d.c0
        public void a(d.j.d.y yVar, androidx.fragment.app.Fragment fragment) {
            this.a.onAttachFragment(fragment);
        }
    }

    public class i implements d.a.e.b<d.a.e.a> {
        public i() {
        }

        @Override // d.a.e.b
        public void a(d.a.e.a aVar) {
            java.lang.StringBuilder sbQ;
            d.a.e.a aVar2 = aVar;
            d.j.d.y.k kVarPollFirst = d.j.d.y.this.B.pollFirst();
            if (kVarPollFirst == null) {
                sbQ = new java.lang.StringBuilder();
                sbQ.append("No Activities were started for result for ");
                sbQ.append(this);
            } else {
                java.lang.String str = kVarPollFirst.a;
                int i = kVarPollFirst.b;
                androidx.fragment.app.Fragment fragmentE = d.j.d.y.this.f2147c.e(str);
                if (fragmentE != null) {
                    fragmentE.onActivityResult(i, aVar2.a, aVar2.b);
                    return;
                }
                sbQ = e.a.c.a.a.q("Activity result delivered for unknown Fragment ", str);
            }
            android.util.Log.w("FragmentManager", sbQ.toString());
        }
    }

    public static class j extends d.a.e.f.a<d.a.e.e, d.a.e.a> {
        @Override // d.a.e.f.a
        public android.content.Intent a(android.content.Context context, d.a.e.e eVar) {
            android.os.Bundle bundleExtra;
            d.a.e.e eVar2 = eVar;
            android.content.Intent intent = new android.content.Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            android.content.Intent intent2 = eVar2.b;
            if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    eVar2 = new d.a.e.e(eVar2.a, null, eVar2.f1624c, eVar2.f1625d);
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", eVar2);
            if (d.j.d.y.M(2)) {
                android.util.Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        @Override // d.a.e.f.a
        public d.a.e.a c(int i, android.content.Intent intent) {
            return new d.a.e.a(i, intent);
        }
    }

    @android.annotation.SuppressLint({"BanParcelableUsage"})
    public static class k implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<d.j.d.y.k> CREATOR = new d.j.d.y.k.a();
        public java.lang.String a;
        public int b;

        public class a implements android.os.Parcelable.Creator<d.j.d.y.k> {
            @Override // android.os.Parcelable.Creator
            public d.j.d.y.k createFromParcel(android.os.Parcel parcel) {
                return new d.j.d.y.k(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public d.j.d.y.k[] newArray(int i) {
                return new d.j.d.y.k[i];
            }
        }

        public k(android.os.Parcel parcel) {
            this.a = parcel.readString();
            this.b = parcel.readInt();
        }

        public k(java.lang.String str, int i) {
            this.a = str;
            this.b = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.a);
            parcel.writeInt(this.b);
        }
    }

    public interface l {
        boolean a(java.util.ArrayList<d.j.d.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2);
    }

    public static class m implements androidx.fragment.app.Fragment.l {
        public final boolean a;
        public final d.j.d.a b;

        /* renamed from: c, reason: collision with root package name */
        public int f2153c;

        public void a() {
            boolean z = this.f2153c > 0;
            for (androidx.fragment.app.Fragment fragment : this.b.q.J()) {
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            d.j.d.a aVar = this.b;
            aVar.q.g(aVar, this.a, !z, true);
        }
    }

    public static boolean M(int i2) {
        return android.util.Log.isLoggable("FragmentManager", i2);
    }

    public final void A(boolean z) {
        if (this.b) {
            throw new java.lang.IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.q == null) {
            if (!this.F) {
                throw new java.lang.IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new java.lang.IllegalStateException("FragmentManager has been destroyed");
        }
        if (android.os.Looper.myLooper() != this.q.f2145c.getLooper()) {
            throw new java.lang.IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z && Q()) {
            throw new java.lang.IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.H == null) {
            this.H = new java.util.ArrayList<>();
            this.I = new java.util.ArrayList<>();
        }
        this.b = true;
        try {
            D(null, null);
        } finally {
            this.b = false;
        }
    }

    public boolean B(boolean z) {
        boolean zA;
        A(z);
        boolean z2 = false;
        while (true) {
            java.util.ArrayList<d.j.d.a> arrayList = this.H;
            java.util.ArrayList<java.lang.Boolean> arrayList2 = this.I;
            synchronized (this.a) {
                if (this.a.isEmpty()) {
                    zA = false;
                } else {
                    int size = this.a.size();
                    zA = false;
                    for (int i2 = 0; i2 < size; i2++) {
                        zA |= this.a.get(i2).a(arrayList, arrayList2);
                    }
                    this.a.clear();
                    this.q.f2145c.removeCallbacks(this.M);
                }
            }
            if (!zA) {
                h0();
                x();
                this.f2147c.b();
                return z2;
            }
            this.b = true;
            try {
                X(this.H, this.I);
                e();
                z2 = true;
            } catch (java.lang.Throwable th) {
                e();
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(java.util.ArrayList<d.j.d.a> r20, java.util.ArrayList<java.lang.Boolean> r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 736
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.j.d.y.C(java.util.ArrayList, java.util.ArrayList, int, int):void");
    }

    public final void D(java.util.ArrayList<d.j.d.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        java.util.ArrayList<d.j.d.y.m> arrayList3 = this.K;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            d.j.d.y.m mVar = this.K.get(i2);
            if (arrayList == null || mVar.a || (iIndexOf2 = arrayList.indexOf(mVar.b)) == -1 || arrayList2 == null || !arrayList2.get(iIndexOf2).booleanValue()) {
                if ((mVar.f2153c == 0) || (arrayList != null && mVar.b.l(arrayList, 0, arrayList.size()))) {
                    this.K.remove(i2);
                    i2--;
                    size--;
                    if (arrayList == null || mVar.a || (iIndexOf = arrayList.indexOf(mVar.b)) == -1 || arrayList2 == null || !arrayList2.get(iIndexOf).booleanValue()) {
                        mVar.a();
                    }
                }
                i2++;
            } else {
                this.K.remove(i2);
                i2--;
                size--;
            }
            d.j.d.a aVar = mVar.b;
            aVar.q.g(aVar, mVar.a, false, false);
            i2++;
        }
    }

    public androidx.fragment.app.Fragment E(java.lang.String str) {
        return this.f2147c.d(str);
    }

    public androidx.fragment.app.Fragment F(int i2) {
        d.j.d.f0 f0Var = this.f2147c;
        int size = f0Var.a.size();
        while (true) {
            size--;
            if (size < 0) {
                for (d.j.d.e0 e0Var : f0Var.b.values()) {
                    if (e0Var != null) {
                        androidx.fragment.app.Fragment fragment = e0Var.f2073c;
                        if (fragment.mFragmentId == i2) {
                            return fragment;
                        }
                    }
                }
                return null;
            }
            androidx.fragment.app.Fragment fragment2 = f0Var.a.get(size);
            if (fragment2 != null && fragment2.mFragmentId == i2) {
                return fragment2;
            }
        }
    }

    public androidx.fragment.app.Fragment G(java.lang.String str) {
        d.j.d.f0 f0Var = this.f2147c;
        if (f0Var == null) {
            throw null;
        }
        int size = f0Var.a.size();
        while (true) {
            size--;
            if (size < 0) {
                for (d.j.d.e0 e0Var : f0Var.b.values()) {
                    if (e0Var != null) {
                        androidx.fragment.app.Fragment fragment = e0Var.f2073c;
                        if (str.equals(fragment.mTag)) {
                            return fragment;
                        }
                    }
                }
                return null;
            }
            androidx.fragment.app.Fragment fragment2 = f0Var.a.get(size);
            if (fragment2 != null && str.equals(fragment2.mTag)) {
                return fragment2;
            }
        }
    }

    public final android.view.ViewGroup H(androidx.fragment.app.Fragment fragment) {
        android.view.ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.r.c()) {
            android.view.View viewB = this.r.b(fragment.mContainerId);
            if (viewB instanceof android.view.ViewGroup) {
                return (android.view.ViewGroup) viewB;
            }
        }
        return null;
    }

    public d.j.d.u I() {
        d.j.d.u uVar = this.u;
        if (uVar != null) {
            return uVar;
        }
        androidx.fragment.app.Fragment fragment = this.s;
        return fragment != null ? fragment.mFragmentManager.I() : this.v;
    }

    public java.util.List<androidx.fragment.app.Fragment> J() {
        return this.f2147c.i();
    }

    public d.j.d.v0 K() {
        d.j.d.v0 v0Var = this.w;
        if (v0Var != null) {
            return v0Var;
        }
        androidx.fragment.app.Fragment fragment = this.s;
        return fragment != null ? fragment.mFragmentManager.K() : this.x;
    }

    public void L(androidx.fragment.app.Fragment fragment) {
        if (M(2)) {
            android.util.Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        e0(fragment);
    }

    public final boolean N(androidx.fragment.app.Fragment fragment) {
        boolean z;
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            return true;
        }
        d.j.d.y yVar = fragment.mChildFragmentManager;
        java.util.Iterator it = ((java.util.ArrayList) yVar.f2147c.g()).iterator();
        boolean zN = false;
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            androidx.fragment.app.Fragment fragment2 = (androidx.fragment.app.Fragment) it.next();
            if (fragment2 != null) {
                zN = yVar.N(fragment2);
            }
            if (zN) {
                z = true;
                break;
            }
        }
        return z;
    }

    public boolean O(androidx.fragment.app.Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    public boolean P(androidx.fragment.app.Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        d.j.d.y yVar = fragment.mFragmentManager;
        return fragment.equals(yVar.t) && P(yVar.s);
    }

    public boolean Q() {
        return this.D || this.E;
    }

    public void R(int i2, boolean z) {
        d.j.d.v<?> vVar;
        if (this.q == null && i2 != -1) {
            throw new java.lang.IllegalStateException("No activity");
        }
        if (z || i2 != this.p) {
            this.p = i2;
            d.j.d.f0 f0Var = this.f2147c;
            java.util.Iterator<androidx.fragment.app.Fragment> it = f0Var.a.iterator();
            while (it.hasNext()) {
                d.j.d.e0 e0Var = f0Var.b.get(it.next().mWho);
                if (e0Var != null) {
                    e0Var.k();
                }
            }
            java.util.Iterator<d.j.d.e0> it2 = f0Var.b.values().iterator();
            while (true) {
                boolean z2 = false;
                if (!it2.hasNext()) {
                    break;
                }
                d.j.d.e0 next = it2.next();
                if (next != null) {
                    next.k();
                    androidx.fragment.app.Fragment fragment = next.f2073c;
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        z2 = true;
                    }
                    if (z2) {
                        f0Var.k(next);
                    }
                }
            }
            g0();
            if (this.C && (vVar = this.q) != null && this.p == 7) {
                d.j.d.l.this.supportInvalidateOptionsMenu();
                this.C = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void S(androidx.fragment.app.Fragment r17, int r18) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.j.d.y.S(androidx.fragment.app.Fragment, int):void");
    }

    public void T() {
        if (this.q == null) {
            return;
        }
        this.D = false;
        this.E = false;
        this.L.i = false;
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public void U(d.j.d.e0 e0Var) {
        androidx.fragment.app.Fragment fragment = e0Var.f2073c;
        if (fragment.mDeferStart) {
            if (this.b) {
                this.G = true;
            } else {
                fragment.mDeferStart = false;
                e0Var.k();
            }
        }
    }

    public boolean V() {
        int size;
        boolean z = false;
        B(false);
        A(true);
        androidx.fragment.app.Fragment fragment = this.t;
        if (fragment != null && fragment.getChildFragmentManager().V()) {
            return true;
        }
        java.util.ArrayList<d.j.d.a> arrayList = this.H;
        java.util.ArrayList<java.lang.Boolean> arrayList2 = this.I;
        java.util.ArrayList<d.j.d.a> arrayList3 = this.f2148d;
        if (arrayList3 != null && (size = arrayList3.size() - 1) >= 0) {
            arrayList.add(this.f2148d.remove(size));
            arrayList2.add(java.lang.Boolean.TRUE);
            z = true;
        }
        if (z) {
            this.b = true;
            try {
                X(this.H, this.I);
            } finally {
                e();
            }
        }
        h0();
        x();
        this.f2147c.b();
        return z;
    }

    public void W(androidx.fragment.app.Fragment fragment) {
        if (M(2)) {
            android.util.Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            this.f2147c.l(fragment);
            if (N(fragment)) {
                this.C = true;
            }
            fragment.mRemoving = true;
            e0(fragment);
        }
    }

    public final void X(java.util.ArrayList<d.j.d.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new java.lang.IllegalStateException("Internal error with the back stack records");
        }
        D(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!arrayList.get(i2).o) {
                if (i3 != i2) {
                    C(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (arrayList2.get(i2).booleanValue()) {
                    while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).o) {
                        i3++;
                    }
                }
                C(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            C(arrayList, arrayList2, i3, size);
        }
    }

    public void Y(android.os.Parcelable parcelable) {
        d.j.d.e0 e0Var;
        if (parcelable == null) {
            return;
        }
        d.j.d.a0 a0Var = (d.j.d.a0) parcelable;
        if (a0Var.a == null) {
            return;
        }
        this.f2147c.b.clear();
        java.util.Iterator<d.j.d.d0> it = a0Var.a.iterator();
        while (it.hasNext()) {
            d.j.d.d0 next = it.next();
            if (next != null) {
                androidx.fragment.app.Fragment fragment = this.L.f2054c.get(next.b);
                if (fragment != null) {
                    if (M(2)) {
                        android.util.Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
                    }
                    e0Var = new d.j.d.e0(this.n, this.f2147c, fragment, next);
                } else {
                    e0Var = new d.j.d.e0(this.n, this.f2147c, this.q.b.getClassLoader(), I(), next);
                }
                androidx.fragment.app.Fragment fragment2 = e0Var.f2073c;
                fragment2.mFragmentManager = this;
                if (M(2)) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("restoreSaveState: active (");
                    sbO.append(fragment2.mWho);
                    sbO.append("): ");
                    sbO.append(fragment2);
                    android.util.Log.v("FragmentManager", sbO.toString());
                }
                e0Var.m(this.q.b.getClassLoader());
                this.f2147c.j(e0Var);
                e0Var.f2075e = this.p;
            }
        }
        d.j.d.b0 b0Var = this.L;
        if (b0Var == null) {
            throw null;
        }
        java.util.Iterator it2 = new java.util.ArrayList(b0Var.f2054c.values()).iterator();
        while (it2.hasNext()) {
            androidx.fragment.app.Fragment fragment3 = (androidx.fragment.app.Fragment) it2.next();
            if (!this.f2147c.c(fragment3.mWho)) {
                if (M(2)) {
                    android.util.Log.v("FragmentManager", "Discarding retained Fragment " + fragment3 + " that was not found in the set of active Fragments " + a0Var.a);
                }
                this.L.d(fragment3);
                fragment3.mFragmentManager = this;
                d.j.d.e0 e0Var2 = new d.j.d.e0(this.n, this.f2147c, fragment3);
                e0Var2.f2075e = 1;
                e0Var2.k();
                fragment3.mRemoving = true;
                e0Var2.k();
            }
        }
        d.j.d.f0 f0Var = this.f2147c;
        java.util.ArrayList<java.lang.String> arrayList = a0Var.b;
        f0Var.a.clear();
        if (arrayList != null) {
            for (java.lang.String str : arrayList) {
                androidx.fragment.app.Fragment fragmentD = f0Var.d(str);
                if (fragmentD == null) {
                    throw new java.lang.IllegalStateException(e.a.c.a.a.f("No instantiated fragment for (", str, ")"));
                }
                if (M(2)) {
                    android.util.Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + fragmentD);
                }
                f0Var.a(fragmentD);
            }
        }
        if (a0Var.f2044c != null) {
            this.f2148d = new java.util.ArrayList<>(a0Var.f2044c.length);
            int i2 = 0;
            while (true) {
                d.j.d.b[] bVarArr = a0Var.f2044c;
                if (i2 >= bVarArr.length) {
                    break;
                }
                d.j.d.b bVar = bVarArr[i2];
                if (bVar == null) {
                    throw null;
                }
                d.j.d.a aVar = new d.j.d.a(this);
                int i3 = 0;
                int i4 = 0;
                while (i3 < bVar.a.length) {
                    d.j.d.g0.a aVar2 = new d.j.d.g0.a();
                    int i5 = i3 + 1;
                    aVar2.a = bVar.a[i3];
                    if (M(2)) {
                        android.util.Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i4 + " base fragment #" + bVar.a[i5]);
                    }
                    java.lang.String str2 = bVar.b.get(i4);
                    aVar2.b = str2 != null ? this.f2147c.d(str2) : null;
                    aVar2.f2088g = d.l.e.b.values()[bVar.f2049c[i4]];
                    aVar2.h = d.l.e.b.values()[bVar.f2050d[i4]];
                    int[] iArr = bVar.a;
                    int i6 = i5 + 1;
                    int i7 = iArr[i5];
                    aVar2.f2084c = i7;
                    int i8 = i6 + 1;
                    int i9 = iArr[i6];
                    aVar2.f2085d = i9;
                    int i10 = i8 + 1;
                    int i11 = iArr[i8];
                    aVar2.f2086e = i11;
                    int i12 = iArr[i10];
                    aVar2.f2087f = i12;
                    aVar.b = i7;
                    aVar.f2079c = i9;
                    aVar.f2080d = i11;
                    aVar.f2081e = i12;
                    aVar.b(aVar2);
                    i4++;
                    i3 = i10 + 1;
                }
                aVar.f2082f = bVar.f2051e;
                aVar.h = bVar.f2052f;
                aVar.s = bVar.f2053g;
                aVar.f2083g = true;
                aVar.i = bVar.h;
                aVar.j = bVar.i;
                aVar.k = bVar.j;
                aVar.l = bVar.k;
                aVar.m = bVar.l;
                aVar.n = bVar.m;
                aVar.o = bVar.n;
                aVar.g(1);
                if (M(2)) {
                    java.lang.StringBuilder sbP = e.a.c.a.a.p("restoreAllState: back stack #", i2, " (index ");
                    sbP.append(aVar.s);
                    sbP.append("): ");
                    sbP.append(aVar);
                    android.util.Log.v("FragmentManager", sbP.toString());
                    java.io.PrintWriter printWriter = new java.io.PrintWriter(new d.j.d.t0("FragmentManager"));
                    aVar.h("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2148d.add(aVar);
                i2++;
            }
        } else {
            this.f2148d = null;
        }
        this.i.set(a0Var.f2045d);
        java.lang.String str3 = a0Var.f2046e;
        if (str3 != null) {
            androidx.fragment.app.Fragment fragmentE = E(str3);
            this.t = fragmentE;
            t(fragmentE);
        }
        java.util.ArrayList<java.lang.String> arrayList2 = a0Var.f2047f;
        if (arrayList2 != null) {
            for (int i13 = 0; i13 < arrayList2.size(); i13++) {
                this.j.put(arrayList2.get(i13), a0Var.f2048g.get(i13));
            }
        }
        this.B = new java.util.ArrayDeque<>(a0Var.h);
    }

    public android.os.Parcelable Z() {
        int i2;
        java.util.ArrayList<java.lang.String> arrayList;
        int size;
        java.util.Iterator it = ((java.util.HashSet) f()).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            d.j.d.u0 u0Var = (d.j.d.u0) it.next();
            if (u0Var.f2134e) {
                u0Var.f2134e = false;
                u0Var.c();
            }
        }
        z();
        B(true);
        this.D = true;
        this.L.i = true;
        d.j.d.f0 f0Var = this.f2147c;
        d.j.d.b[] bVarArr = null;
        if (f0Var == null) {
            throw null;
        }
        java.util.ArrayList<d.j.d.d0> arrayList2 = new java.util.ArrayList<>(f0Var.b.size());
        for (d.j.d.e0 e0Var : f0Var.b.values()) {
            if (e0Var != null) {
                androidx.fragment.app.Fragment fragment = e0Var.f2073c;
                d.j.d.d0 d0Var = new d.j.d.d0(fragment);
                if (e0Var.f2073c.mState <= -1 || d0Var.m != null) {
                    d0Var.m = e0Var.f2073c.mSavedFragmentState;
                } else {
                    android.os.Bundle bundle = new android.os.Bundle();
                    e0Var.f2073c.performSaveInstanceState(bundle);
                    e0Var.a.j(e0Var.f2073c, bundle, false);
                    if (bundle.isEmpty()) {
                        bundle = null;
                    }
                    if (e0Var.f2073c.mView != null) {
                        e0Var.o();
                    }
                    if (e0Var.f2073c.mSavedViewState != null) {
                        if (bundle == null) {
                            bundle = new android.os.Bundle();
                        }
                        bundle.putSparseParcelableArray("android:view_state", e0Var.f2073c.mSavedViewState);
                    }
                    if (e0Var.f2073c.mSavedViewRegistryState != null) {
                        if (bundle == null) {
                            bundle = new android.os.Bundle();
                        }
                        bundle.putBundle("android:view_registry_state", e0Var.f2073c.mSavedViewRegistryState);
                    }
                    if (!e0Var.f2073c.mUserVisibleHint) {
                        if (bundle == null) {
                            bundle = new android.os.Bundle();
                        }
                        bundle.putBoolean("android:user_visible_hint", e0Var.f2073c.mUserVisibleHint);
                    }
                    d0Var.m = bundle;
                    if (e0Var.f2073c.mTargetWho != null) {
                        if (bundle == null) {
                            d0Var.m = new android.os.Bundle();
                        }
                        d0Var.m.putString("android:target_state", e0Var.f2073c.mTargetWho);
                        int i3 = e0Var.f2073c.mTargetRequestCode;
                        if (i3 != 0) {
                            d0Var.m.putInt("android:target_req_state", i3);
                        }
                    }
                }
                arrayList2.add(d0Var);
                if (M(2)) {
                    android.util.Log.v("FragmentManager", "Saved state of " + fragment + ": " + d0Var.m);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            if (M(2)) {
                android.util.Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        d.j.d.f0 f0Var2 = this.f2147c;
        synchronized (f0Var2.a) {
            if (f0Var2.a.isEmpty()) {
                arrayList = null;
            } else {
                arrayList = new java.util.ArrayList<>(f0Var2.a.size());
                java.util.Iterator<androidx.fragment.app.Fragment> it2 = f0Var2.a.iterator();
                while (it2.hasNext()) {
                    androidx.fragment.app.Fragment next = it2.next();
                    arrayList.add(next.mWho);
                    if (M(2)) {
                        android.util.Log.v("FragmentManager", "saveAllState: adding fragment (" + next.mWho + "): " + next);
                    }
                }
            }
        }
        java.util.ArrayList<d.j.d.a> arrayList3 = this.f2148d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            bVarArr = new d.j.d.b[size];
            for (i2 = 0; i2 < size; i2++) {
                bVarArr[i2] = new d.j.d.b(this.f2148d.get(i2));
                if (M(2)) {
                    java.lang.StringBuilder sbP = e.a.c.a.a.p("saveAllState: adding back stack #", i2, ": ");
                    sbP.append(this.f2148d.get(i2));
                    android.util.Log.v("FragmentManager", sbP.toString());
                }
            }
        }
        d.j.d.a0 a0Var = new d.j.d.a0();
        a0Var.a = arrayList2;
        a0Var.b = arrayList;
        a0Var.f2044c = bVarArr;
        a0Var.f2045d = this.i.get();
        androidx.fragment.app.Fragment fragment2 = this.t;
        if (fragment2 != null) {
            a0Var.f2046e = fragment2.mWho;
        }
        a0Var.f2047f.addAll(this.j.keySet());
        a0Var.f2048g.addAll(this.j.values());
        a0Var.h = new java.util.ArrayList<>(this.B);
        return a0Var;
    }

    public d.j.d.e0 a(androidx.fragment.app.Fragment fragment) {
        if (M(2)) {
            android.util.Log.v("FragmentManager", "add: " + fragment);
        }
        d.j.d.e0 e0VarH = h(fragment);
        fragment.mFragmentManager = this;
        this.f2147c.j(e0VarH);
        if (!fragment.mDetached) {
            this.f2147c.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (N(fragment)) {
                this.C = true;
            }
        }
        return e0VarH;
    }

    public void a0() {
        synchronized (this.a) {
            boolean z = (this.K == null || this.K.isEmpty()) ? false : true;
            boolean z2 = this.a.size() == 1;
            if (z || z2) {
                this.q.f2145c.removeCallbacks(this.M);
                this.q.f2145c.post(this.M);
                h0();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    @android.annotation.SuppressLint({"SyntheticAccessor"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(d.j.d.v<?> r5, d.j.d.r r6, androidx.fragment.app.Fragment r7) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.j.d.y.b(d.j.d.v, d.j.d.r, androidx.fragment.app.Fragment):void");
    }

    public void b0(androidx.fragment.app.Fragment fragment, boolean z) {
        android.view.ViewGroup viewGroupH = H(fragment);
        if (viewGroupH == null || !(viewGroupH instanceof d.j.d.s)) {
            return;
        }
        ((d.j.d.s) viewGroupH).setDrawDisappearingViewsLast(!z);
    }

    public void c(androidx.fragment.app.Fragment fragment) {
        if (M(2)) {
            android.util.Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f2147c.a(fragment);
            if (M(2)) {
                android.util.Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (N(fragment)) {
                this.C = true;
            }
        }
    }

    public void c0(androidx.fragment.app.Fragment fragment, d.l.e.b bVar) {
        if (fragment.equals(E(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = bVar;
            return;
        }
        throw new java.lang.IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void d(androidx.fragment.app.Fragment fragment) {
        java.util.HashSet<d.g.i.a> hashSet = this.l.get(fragment);
        if (hashSet != null) {
            java.util.Iterator<d.g.i.a> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            hashSet.clear();
            i(fragment);
            this.l.remove(fragment);
        }
    }

    public void d0(androidx.fragment.app.Fragment fragment) {
        if (fragment == null || (fragment.equals(E(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            androidx.fragment.app.Fragment fragment2 = this.t;
            this.t = fragment;
            t(fragment2);
            t(this.t);
            return;
        }
        throw new java.lang.IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void e() {
        this.b = false;
        this.I.clear();
        this.H.clear();
    }

    public final void e0(androidx.fragment.app.Fragment fragment) {
        android.view.ViewGroup viewGroupH = H(fragment);
        if (viewGroupH == null || fragment.getNextAnim() <= 0) {
            return;
        }
        if (viewGroupH.getTag(d.j.b.visible_removing_fragment_view_tag) == null) {
            viewGroupH.setTag(d.j.b.visible_removing_fragment_view_tag, fragment);
        }
        ((androidx.fragment.app.Fragment) viewGroupH.getTag(d.j.b.visible_removing_fragment_view_tag)).setNextAnim(fragment.getNextAnim());
    }

    public final java.util.Set<d.j.d.u0> f() {
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Iterator it = ((java.util.ArrayList) this.f2147c.f()).iterator();
        while (it.hasNext()) {
            android.view.ViewGroup viewGroup = ((d.j.d.e0) it.next()).f2073c.mContainer;
            if (viewGroup != null) {
                hashSet.add(d.j.d.u0.g(viewGroup, K()));
            }
        }
        return hashSet;
    }

    public void f0(androidx.fragment.app.Fragment fragment) {
        if (M(2)) {
            android.util.Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public void g(d.j.d.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.j(z3);
        } else {
            aVar.i();
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(1);
        java.util.ArrayList arrayList2 = new java.util.ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(java.lang.Boolean.valueOf(z));
        if (z2 && this.p >= 1) {
            d.j.d.n0.q(this.q.b, this.r, arrayList, arrayList2, 0, 1, true, this.m);
        }
        if (z3) {
            R(this.p, true);
        }
        java.util.Iterator it = ((java.util.ArrayList) this.f2147c.g()).iterator();
        while (it.hasNext()) {
            androidx.fragment.app.Fragment fragment = (androidx.fragment.app.Fragment) it.next();
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && aVar.k(fragment.mContainerId)) {
                float f2 = fragment.mPostponedAlpha;
                if (f2 > 0.0f) {
                    fragment.mView.setAlpha(f2);
                }
                if (z3) {
                    fragment.mPostponedAlpha = 0.0f;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    public final void g0() {
        java.util.Iterator it = ((java.util.ArrayList) this.f2147c.f()).iterator();
        while (it.hasNext()) {
            U((d.j.d.e0) it.next());
        }
    }

    public d.j.d.e0 h(androidx.fragment.app.Fragment fragment) {
        d.j.d.e0 e0VarH = this.f2147c.h(fragment.mWho);
        if (e0VarH != null) {
            return e0VarH;
        }
        d.j.d.e0 e0Var = new d.j.d.e0(this.n, this.f2147c, fragment);
        e0Var.m(this.q.b.getClassLoader());
        e0Var.f2075e = this.p;
        return e0Var;
    }

    public final void h0() {
        synchronized (this.a) {
            if (!this.a.isEmpty()) {
                this.h.a = true;
                return;
            }
            d.a.b bVar = this.h;
            java.util.ArrayList<d.j.d.a> arrayList = this.f2148d;
            bVar.a = (arrayList != null ? arrayList.size() : 0) > 0 && P(this.s);
        }
    }

    public final void i(androidx.fragment.app.Fragment fragment) {
        fragment.performDestroyView();
        this.n.n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.g(null);
        fragment.mInLayout = false;
    }

    public void j(androidx.fragment.app.Fragment fragment) {
        if (M(2)) {
            android.util.Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (M(2)) {
                android.util.Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            this.f2147c.l(fragment);
            if (N(fragment)) {
                this.C = true;
            }
            e0(fragment);
        }
    }

    public void k(android.content.res.Configuration configuration) {
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public boolean l(android.view.MenuItem menuItem) {
        if (this.p < 1) {
            return false;
        }
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void m() {
        this.D = false;
        this.E = false;
        this.L.i = false;
        w(1);
    }

    public boolean n(android.view.Menu menu, android.view.MenuInflater menuInflater) {
        if (this.p < 1) {
            return false;
        }
        java.util.ArrayList<androidx.fragment.app.Fragment> arrayList = null;
        boolean z = false;
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null && O(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new java.util.ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.f2149e != null) {
            for (int i2 = 0; i2 < this.f2149e.size(); i2++) {
                androidx.fragment.app.Fragment fragment2 = this.f2149e.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f2149e = arrayList;
        return z;
    }

    public void o() {
        this.F = true;
        B(true);
        z();
        w(-1);
        this.q = null;
        this.r = null;
        this.s = null;
        if (this.f2151g != null) {
            java.util.Iterator<d.a.a> it = this.h.b.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.f2151g = null;
        }
        d.a.e.c<android.content.Intent> cVar = this.y;
        if (cVar != null) {
            cVar.b();
            this.z.b();
            this.A.b();
        }
    }

    public void p() {
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    public void q(boolean z) {
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    public boolean r(android.view.MenuItem menuItem) {
        if (this.p < 1) {
            return false;
        }
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void s(android.view.Menu menu) {
        if (this.p < 1) {
            return;
        }
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void t(androidx.fragment.app.Fragment fragment) {
        if (fragment == null || !fragment.equals(E(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    public java.lang.String toString() {
        java.lang.Object obj;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        sb.append(" in ");
        androidx.fragment.app.Fragment fragment = this.s;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
            obj = this.s;
        } else {
            d.j.d.v<?> vVar = this.q;
            if (vVar == null) {
                sb.append("null");
                sb.append("}}");
                return sb.toString();
            }
            sb.append(vVar.getClass().getSimpleName());
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
            obj = this.q;
        }
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(obj)));
        sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        sb.append("}}");
        return sb.toString();
    }

    public void u(boolean z) {
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    public boolean v(android.view.Menu menu) {
        boolean z = false;
        if (this.p < 1) {
            return false;
        }
        for (androidx.fragment.app.Fragment fragment : this.f2147c.i()) {
            if (fragment != null && O(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final void w(int i2) {
        try {
            this.b = true;
            for (d.j.d.e0 e0Var : this.f2147c.b.values()) {
                if (e0Var != null) {
                    e0Var.f2075e = i2;
                }
            }
            R(i2, false);
            java.util.Iterator it = ((java.util.HashSet) f()).iterator();
            while (it.hasNext()) {
                ((d.j.d.u0) it.next()).e();
            }
            this.b = false;
            B(true);
        } catch (java.lang.Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public final void x() {
        if (this.G) {
            this.G = false;
            g0();
        }
    }

    public void y(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
        int size;
        int size2;
        java.lang.String strE = e.a.c.a.a.e(str, "    ");
        d.j.d.f0 f0Var = this.f2147c;
        if (f0Var == null) {
            throw null;
        }
        java.lang.String strE2 = e.a.c.a.a.e(str, "    ");
        if (!f0Var.b.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments:");
            for (d.j.d.e0 e0Var : f0Var.b.values()) {
                printWriter.print(str);
                if (e0Var != null) {
                    androidx.fragment.app.Fragment fragment = e0Var.f2073c;
                    printWriter.println(fragment);
                    fragment.dump(strE2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = f0Var.a.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size3; i2++) {
                androidx.fragment.app.Fragment fragment2 = f0Var.a.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        java.util.ArrayList<androidx.fragment.app.Fragment> arrayList = this.f2149e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size2; i3++) {
                androidx.fragment.app.Fragment fragment3 = this.f2149e.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        java.util.ArrayList<d.j.d.a> arrayList2 = this.f2148d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size; i4++) {
                d.j.d.a aVar = this.f2148d.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.h(strE, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.a) {
            int size4 = this.a.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i5 = 0; i5 < size4; i5++) {
                    java.lang.Object obj = (d.j.d.y.l) this.a.get(i5);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.q);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.r);
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.s);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.p);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.D);
        printWriter.print(" mStopped=");
        printWriter.print(this.E);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.F);
        if (this.C) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.C);
        }
    }

    public final void z() {
        java.util.Iterator it = ((java.util.HashSet) f()).iterator();
        while (it.hasNext()) {
            ((d.j.d.u0) it.next()).e();
        }
    }
}
