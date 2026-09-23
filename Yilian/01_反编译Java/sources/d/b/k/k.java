package d.b.k;

/* loaded from: classes.dex */
public class k extends d.b.k.j implements d.b.p.i.g.a, android.view.LayoutInflater.Factory2 {
    public static final java.util.Map<java.lang.Class<?>, java.lang.Integer> a0 = new d.e.a();
    public static final boolean b0;
    public static final int[] c0;
    public static boolean d0;
    public static final boolean e0;
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean F;
    public d.b.k.k.j[] G;
    public d.b.k.k.j H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public int N;
    public int O;
    public boolean P;
    public boolean Q;
    public d.b.k.k.g R;
    public d.b.k.k.g S;
    public boolean T;
    public int U;
    public boolean W;
    public android.graphics.Rect X;
    public android.graphics.Rect Y;
    public androidx.appcompat.app.AppCompatViewInflater Z;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.Object f1629c;

    /* renamed from: d, reason: collision with root package name */
    public final android.content.Context f1630d;

    /* renamed from: e, reason: collision with root package name */
    public android.view.Window f1631e;

    /* renamed from: f, reason: collision with root package name */
    public d.b.k.k.e f1632f;

    /* renamed from: g, reason: collision with root package name */
    public final d.b.k.i f1633g;
    public d.b.k.a h;
    public android.view.MenuInflater i;
    public java.lang.CharSequence j;
    public d.b.q.a0 k;
    public d.b.k.k.c l;
    public d.b.k.k.C0032k m;
    public d.b.p.a n;
    public androidx.appcompat.widget.ActionBarContextView o;
    public android.widget.PopupWindow p;
    public java.lang.Runnable q;
    public boolean t;
    public android.view.ViewGroup u;
    public android.widget.TextView v;
    public android.view.View w;
    public boolean x;
    public boolean y;
    public boolean z;
    public d.g.m.v r = null;
    public boolean s = true;
    public final java.lang.Runnable V = new d.b.k.k.b();

    public static class a implements java.lang.Thread.UncaughtExceptionHandler {
        public final /* synthetic */ java.lang.Thread.UncaughtExceptionHandler a;

        public a(java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.a = uncaughtExceptionHandler;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) {
            java.lang.String message;
            boolean z = false;
            if ((th instanceof android.content.res.Resources.NotFoundException) && (message = th.getMessage()) != null && (message.contains("drawable") || message.contains("Drawable"))) {
                z = true;
            }
            if (!z) {
                this.a.uncaughtException(thread, th);
                return;
            }
            android.content.res.Resources.NotFoundException notFoundException = new android.content.res.Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            notFoundException.initCause(th.getCause());
            notFoundException.setStackTrace(th.getStackTrace());
            this.a.uncaughtException(thread, notFoundException);
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.b.k.k kVar = d.b.k.k.this;
            if ((kVar.U & 1) != 0) {
                kVar.x(0);
            }
            d.b.k.k kVar2 = d.b.k.k.this;
            if ((kVar2.U & 4096) != 0) {
                kVar2.x(108);
            }
            d.b.k.k kVar3 = d.b.k.k.this;
            kVar3.T = false;
            kVar3.U = 0;
        }
    }

    public final class c implements d.b.p.i.m.a {
        public c() {
        }

        @Override // d.b.p.i.m.a
        public void a(d.b.p.i.g gVar, boolean z) {
            d.b.k.k.this.u(gVar);
        }

        @Override // d.b.p.i.m.a
        public boolean b(d.b.p.i.g gVar) {
            android.view.Window.Callback callbackE = d.b.k.k.this.E();
            if (callbackE == null) {
                return true;
            }
            callbackE.onMenuOpened(108, gVar);
            return true;
        }
    }

    public class d implements d.b.p.a.InterfaceC0036a {
        public d.b.p.a.InterfaceC0036a a;

        public class a extends d.g.m.x {
            public a() {
            }

            @Override // d.g.m.w
            public void b(android.view.View view) {
                d.b.k.k.this.o.setVisibility(8);
                d.b.k.k kVar = d.b.k.k.this;
                android.widget.PopupWindow popupWindow = kVar.p;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (kVar.o.getParent() instanceof android.view.View) {
                    d.g.m.s.K((android.view.View) d.b.k.k.this.o.getParent());
                }
                d.b.k.k.this.o.removeAllViews();
                d.b.k.k.this.r.d(null);
                d.b.k.k.this.r = null;
            }
        }

        public d(d.b.p.a.InterfaceC0036a interfaceC0036a) {
            this.a = interfaceC0036a;
        }

        @Override // d.b.p.a.InterfaceC0036a
        public boolean a(d.b.p.a aVar, android.view.Menu menu) {
            return this.a.a(aVar, menu);
        }

        @Override // d.b.p.a.InterfaceC0036a
        public void b(d.b.p.a aVar) {
            this.a.b(aVar);
            d.b.k.k kVar = d.b.k.k.this;
            if (kVar.p != null) {
                kVar.f1631e.getDecorView().removeCallbacks(d.b.k.k.this.q);
            }
            d.b.k.k kVar2 = d.b.k.k.this;
            if (kVar2.o != null) {
                kVar2.y();
                d.b.k.k kVar3 = d.b.k.k.this;
                d.g.m.v vVarA = d.g.m.s.a(kVar3.o);
                vVarA.a(0.0f);
                kVar3.r = vVarA;
                d.g.m.v vVar = d.b.k.k.this.r;
                d.b.k.k.d.a aVar2 = new d.b.k.k.d.a();
                android.view.View view = vVar.a.get();
                if (view != null) {
                    vVar.e(view, aVar2);
                }
            }
            d.b.k.k kVar4 = d.b.k.k.this;
            d.b.k.i iVar = kVar4.f1633g;
            if (iVar != null) {
                iVar.d(kVar4.n);
            }
            d.b.k.k.this.n = null;
        }

        @Override // d.b.p.a.InterfaceC0036a
        public boolean c(d.b.p.a aVar, android.view.MenuItem menuItem) {
            return this.a.c(aVar, menuItem);
        }

        @Override // d.b.p.a.InterfaceC0036a
        public boolean d(d.b.p.a aVar, android.view.Menu menu) {
            return this.a.d(aVar, menu);
        }
    }

    public class f extends d.b.k.k.g {

        /* renamed from: c, reason: collision with root package name */
        public final android.os.PowerManager f1634c;

        public f(android.content.Context context) {
            super();
            this.f1634c = (android.os.PowerManager) context.getSystemService("power");
        }

        @Override // d.b.k.k.g
        public android.content.IntentFilter b() {
            if (android.os.Build.VERSION.SDK_INT < 21) {
                return null;
            }
            android.content.IntentFilter intentFilter = new android.content.IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // d.b.k.k.g
        public int c() {
            return (android.os.Build.VERSION.SDK_INT < 21 || !this.f1634c.isPowerSaveMode()) ? 1 : 2;
        }

        @Override // d.b.k.k.g
        public void d() {
            d.b.k.k.this.q();
        }
    }

    public abstract class g {
        public android.content.BroadcastReceiver a;

        public class a extends android.content.BroadcastReceiver {
            public a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(android.content.Context context, android.content.Intent intent) {
                d.b.k.k.g.this.d();
            }
        }

        public g() {
        }

        public void a() {
            android.content.BroadcastReceiver broadcastReceiver = this.a;
            if (broadcastReceiver != null) {
                try {
                    d.b.k.k.this.f1630d.unregisterReceiver(broadcastReceiver);
                } catch (java.lang.IllegalArgumentException unused) {
                }
                this.a = null;
            }
        }

        public abstract android.content.IntentFilter b();

        public abstract int c();

        public abstract void d();

        public void e() {
            a();
            android.content.IntentFilter intentFilterB = b();
            if (intentFilterB == null || intentFilterB.countActions() == 0) {
                return;
            }
            if (this.a == null) {
                this.a = new d.b.k.k.g.a();
            }
            d.b.k.k.this.f1630d.registerReceiver(this.a, intentFilterB);
        }
    }

    public class h extends d.b.k.k.g {

        /* renamed from: c, reason: collision with root package name */
        public final d.b.k.t f1636c;

        public h(d.b.k.t tVar) {
            super();
            this.f1636c = tVar;
        }

        @Override // d.b.k.k.g
        public android.content.IntentFilter b() {
            android.content.IntentFilter intentFilter = new android.content.IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // d.b.k.k.g
        public int c() {
            boolean z;
            long j;
            d.b.k.t tVar = this.f1636c;
            d.b.k.t.a aVar = tVar.f1651c;
            if (aVar.b > java.lang.System.currentTimeMillis()) {
                z = aVar.a;
            } else {
                android.location.Location locationA = d.b.k.r.g(tVar.a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? tVar.a("network") : null;
                android.location.Location locationA2 = d.b.k.r.g(tVar.a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? tVar.a("gps") : null;
                if (locationA2 == null || locationA == null ? locationA2 != null : locationA2.getTime() > locationA.getTime()) {
                    locationA = locationA2;
                }
                if (locationA != null) {
                    d.b.k.t.a aVar2 = tVar.f1651c;
                    long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                    if (d.b.k.s.f1648d == null) {
                        d.b.k.s.f1648d = new d.b.k.s();
                    }
                    d.b.k.s sVar = d.b.k.s.f1648d;
                    sVar.a(jCurrentTimeMillis - 86400000, locationA.getLatitude(), locationA.getLongitude());
                    sVar.a(jCurrentTimeMillis, locationA.getLatitude(), locationA.getLongitude());
                    boolean z2 = sVar.f1649c == 1;
                    long j2 = sVar.b;
                    long j3 = sVar.a;
                    sVar.a(jCurrentTimeMillis + 86400000, locationA.getLatitude(), locationA.getLongitude());
                    long j4 = sVar.b;
                    if (j2 == -1 || j3 == -1) {
                        j = 43200000 + jCurrentTimeMillis;
                    } else {
                        j = (jCurrentTimeMillis > j3 ? j4 + 0 : jCurrentTimeMillis > j2 ? j3 + 0 : j2 + 0) + 60000;
                    }
                    aVar2.a = z2;
                    aVar2.b = j;
                    z = aVar.a;
                } else {
                    android.util.Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                    int i = java.util.Calendar.getInstance().get(11);
                    z = i < 6 || i >= 22;
                }
            }
            return z ? 2 : 1;
        }

        @Override // d.b.k.k.g
        public void d() {
            d.b.k.k.this.q();
        }
    }

    public class i extends androidx.appcompat.widget.ContentFrameLayout {
        public i(android.content.Context context) {
            super(context, null);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
            return d.b.k.k.this.w(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    d.b.k.k kVar = d.b.k.k.this;
                    kVar.v(kVar.D(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(d.b.l.a.a.b(getContext(), i));
        }
    }

    public static final class j {
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1638c;

        /* renamed from: d, reason: collision with root package name */
        public int f1639d;

        /* renamed from: e, reason: collision with root package name */
        public android.view.ViewGroup f1640e;

        /* renamed from: f, reason: collision with root package name */
        public android.view.View f1641f;

        /* renamed from: g, reason: collision with root package name */
        public android.view.View f1642g;
        public d.b.p.i.g h;
        public d.b.p.i.e i;
        public android.content.Context j;
        public boolean k;
        public boolean l;
        public boolean m;
        public boolean n;
        public boolean o = false;
        public boolean p;
        public android.os.Bundle q;

        public j(int i) {
            this.a = i;
        }

        public void a(d.b.p.i.g gVar) {
            d.b.p.i.e eVar;
            d.b.p.i.g gVar2 = this.h;
            if (gVar == gVar2) {
                return;
            }
            if (gVar2 != null) {
                gVar2.u(this.i);
            }
            this.h = gVar;
            if (gVar == null || (eVar = this.i) == null) {
                return;
            }
            gVar.b(eVar, gVar.a);
        }
    }

    /* renamed from: d.b.k.k$k, reason: collision with other inner class name */
    public final class C0032k implements d.b.p.i.m.a {
        public C0032k() {
        }

        @Override // d.b.p.i.m.a
        public void a(d.b.p.i.g gVar, boolean z) {
            d.b.p.i.g gVarK = gVar.k();
            boolean z2 = gVarK != gVar;
            d.b.k.k kVar = d.b.k.k.this;
            if (z2) {
                gVar = gVarK;
            }
            d.b.k.k.j jVarB = kVar.B(gVar);
            if (jVarB != null) {
                if (!z2) {
                    d.b.k.k.this.v(jVarB, z);
                } else {
                    d.b.k.k.this.t(jVarB.a, jVarB, gVarK);
                    d.b.k.k.this.v(jVarB, true);
                }
            }
        }

        @Override // d.b.p.i.m.a
        public boolean b(d.b.p.i.g gVar) {
            android.view.Window.Callback callbackE;
            if (gVar != null) {
                return true;
            }
            d.b.k.k kVar = d.b.k.k.this;
            if (!kVar.z || (callbackE = kVar.E()) == null || d.b.k.k.this.M) {
                return true;
            }
            callbackE.onMenuOpened(108, gVar);
            return true;
        }
    }

    static {
        boolean z = false;
        b0 = android.os.Build.VERSION.SDK_INT < 21;
        c0 = new int[]{android.R.attr.windowBackground};
        int i2 = android.os.Build.VERSION.SDK_INT;
        if (i2 >= 21 && i2 <= 25) {
            z = true;
        }
        e0 = z;
        if (!b0 || d0) {
            return;
        }
        java.lang.Thread.setDefaultUncaughtExceptionHandler(new d.b.k.k.a(java.lang.Thread.getDefaultUncaughtExceptionHandler()));
        d0 = true;
    }

    public k(android.content.Context context, android.view.Window window, d.b.k.i iVar, java.lang.Object obj) {
        d.b.k.h hVar = null;
        this.N = -100;
        this.f1630d = context;
        this.f1633g = iVar;
        this.f1629c = obj;
        if (this.N == -100 && (obj instanceof android.app.Dialog)) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof d.b.k.h)) {
                        if (!(context instanceof android.content.ContextWrapper)) {
                            break;
                        } else {
                            context = ((android.content.ContextWrapper) context).getBaseContext();
                        }
                    } else {
                        hVar = (d.b.k.h) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (hVar != null) {
                this.N = ((d.b.k.k) hVar.r()).N;
            }
        }
        if (this.N == -100) {
            java.lang.Integer num = (java.lang.Integer) ((d.e.h) a0).get(this.f1629c.getClass());
            if (num != null) {
                this.N = num.intValue();
                ((d.e.h) a0).remove(this.f1629c.getClass());
            }
        }
        if (window != null) {
            s(window);
        }
        d.b.q.i.e();
    }

    public final void A() {
        if (this.f1631e == null) {
            java.lang.Object obj = this.f1629c;
            if (obj instanceof android.app.Activity) {
                s(((android.app.Activity) obj).getWindow());
            }
        }
        if (this.f1631e == null) {
            throw new java.lang.IllegalStateException("We have not been given a Window");
        }
    }

    public d.b.k.k.j B(android.view.Menu menu) {
        d.b.k.k.j[] jVarArr = this.G;
        int length = jVarArr != null ? jVarArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            d.b.k.k.j jVar = jVarArr[i2];
            if (jVar != null && jVar.h == menu) {
                return jVar;
            }
        }
        return null;
    }

    public final d.b.k.k.g C() {
        if (this.R == null) {
            android.content.Context context = this.f1630d;
            if (d.b.k.t.f1650d == null) {
                android.content.Context applicationContext = context.getApplicationContext();
                d.b.k.t.f1650d = new d.b.k.t(applicationContext, (android.location.LocationManager) applicationContext.getSystemService("location"));
            }
            this.R = new d.b.k.k.h(d.b.k.t.f1650d);
        }
        return this.R;
    }

    public d.b.k.k.j D(int i2) {
        d.b.k.k.j[] jVarArr = this.G;
        if (jVarArr == null || jVarArr.length <= i2) {
            d.b.k.k.j[] jVarArr2 = new d.b.k.k.j[i2 + 1];
            if (jVarArr != null) {
                java.lang.System.arraycopy(jVarArr, 0, jVarArr2, 0, jVarArr.length);
            }
            this.G = jVarArr2;
            jVarArr = jVarArr2;
        }
        d.b.k.k.j jVar = jVarArr[i2];
        if (jVar != null) {
            return jVar;
        }
        d.b.k.k.j jVar2 = new d.b.k.k.j(i2);
        jVarArr[i2] = jVar2;
        return jVar2;
    }

    public final android.view.Window.Callback E() {
        return this.f1631e.getCallback();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void F() {
        /*
            r3 = this;
            r3.z()
            boolean r0 = r3.z
            if (r0 == 0) goto L37
            d.b.k.a r0 = r3.h
            if (r0 == 0) goto Lc
            goto L37
        Lc:
            java.lang.Object r0 = r3.f1629c
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L20
            d.b.k.u r0 = new d.b.k.u
            java.lang.Object r1 = r3.f1629c
            android.app.Activity r1 = (android.app.Activity) r1
            boolean r2 = r3.A
            r0.<init>(r1, r2)
        L1d:
            r3.h = r0
            goto L2e
        L20:
            boolean r0 = r0 instanceof android.app.Dialog
            if (r0 == 0) goto L2e
            d.b.k.u r0 = new d.b.k.u
            java.lang.Object r1 = r3.f1629c
            android.app.Dialog r1 = (android.app.Dialog) r1
            r0.<init>(r1)
            goto L1d
        L2e:
            d.b.k.a r0 = r3.h
            if (r0 == 0) goto L37
            boolean r1 = r3.W
            r0.g(r1)
        L37:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.k.k.F():void");
    }

    public final void G(int i2) {
        this.U = (1 << i2) | this.U;
        if (this.T) {
            return;
        }
        d.g.m.s.I(this.f1631e.getDecorView(), this.V);
        this.T = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void H(d.b.k.k.j r13, android.view.KeyEvent r14) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.k.k.H(d.b.k.k$j, android.view.KeyEvent):void");
    }

    public final boolean I(d.b.k.k.j jVar, int i2, android.view.KeyEvent keyEvent, int i3) {
        d.b.p.i.g gVar;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((jVar.k || J(jVar, keyEvent)) && (gVar = jVar.h) != null) {
            zPerformShortcut = gVar.performShortcut(i2, keyEvent, i3);
        }
        if (zPerformShortcut && (i3 & 1) == 0 && this.k == null) {
            v(jVar, true);
        }
        return zPerformShortcut;
    }

    public final boolean J(d.b.k.k.j jVar, android.view.KeyEvent keyEvent) {
        d.b.q.a0 a0Var;
        android.content.res.Resources.Theme themeNewTheme;
        d.b.q.a0 a0Var2;
        d.b.q.a0 a0Var3;
        if (this.M) {
            return false;
        }
        if (jVar.k) {
            return true;
        }
        d.b.k.k.j jVar2 = this.H;
        if (jVar2 != null && jVar2 != jVar) {
            v(jVar2, false);
        }
        android.view.Window.Callback callbackE = E();
        if (callbackE != null) {
            jVar.f1642g = callbackE.onCreatePanelView(jVar.a);
        }
        int i2 = jVar.a;
        boolean z = i2 == 0 || i2 == 108;
        if (z && (a0Var3 = this.k) != null) {
            a0Var3.c();
        }
        if (jVar.f1642g == null) {
            if (jVar.h == null || jVar.p) {
                if (jVar.h == null) {
                    android.content.Context context = this.f1630d;
                    int i3 = jVar.a;
                    if ((i3 == 0 || i3 == 108) && this.k != null) {
                        android.util.TypedValue typedValue = new android.util.TypedValue();
                        android.content.res.Resources.Theme theme = context.getTheme();
                        theme.resolveAttribute(d.b.a.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            themeNewTheme = context.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            themeNewTheme.resolveAttribute(d.b.a.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme.resolveAttribute(d.b.a.actionBarWidgetTheme, typedValue, true);
                            themeNewTheme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (themeNewTheme == null) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                            }
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                        }
                        if (themeNewTheme != null) {
                            d.b.p.c cVar = new d.b.p.c(context, 0);
                            cVar.getTheme().setTo(themeNewTheme);
                            context = cVar;
                        }
                    }
                    d.b.p.i.g gVar = new d.b.p.i.g(context);
                    gVar.f1728e = this;
                    jVar.a(gVar);
                    if (jVar.h == null) {
                        return false;
                    }
                }
                if (z && this.k != null) {
                    if (this.l == null) {
                        this.l = new d.b.k.k.c();
                    }
                    this.k.a(jVar.h, this.l);
                }
                jVar.h.z();
                if (!callbackE.onCreatePanelMenu(jVar.a, jVar.h)) {
                    jVar.a(null);
                    if (z && (a0Var = this.k) != null) {
                        a0Var.a(null, this.l);
                    }
                    return false;
                }
                jVar.p = false;
            }
            jVar.h.z();
            android.os.Bundle bundle = jVar.q;
            if (bundle != null) {
                jVar.h.v(bundle);
                jVar.q = null;
            }
            if (!callbackE.onPreparePanel(0, jVar.f1642g, jVar.h)) {
                if (z && (a0Var2 = this.k) != null) {
                    a0Var2.a(null, this.l);
                }
                jVar.h.y();
                return false;
            }
            boolean z2 = android.view.KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            jVar.n = z2;
            jVar.h.setQwertyMode(z2);
            jVar.h.y();
        }
        jVar.k = true;
        jVar.l = false;
        this.H = jVar;
        return true;
    }

    public final boolean K() {
        android.view.ViewGroup viewGroup;
        return this.t && (viewGroup = this.u) != null && d.g.m.s.A(viewGroup);
    }

    public final void L() {
        if (this.t) {
            throw new android.util.AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public int M(int i2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        boolean z;
        boolean z2;
        androidx.appcompat.widget.ActionBarContextView actionBarContextView = this.o;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof android.view.ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) this.o.getLayoutParams();
            if (this.o.isShown()) {
                if (this.X == null) {
                    this.X = new android.graphics.Rect();
                    this.Y = new android.graphics.Rect();
                }
                android.graphics.Rect rect = this.X;
                android.graphics.Rect rect2 = this.Y;
                rect.set(0, i2, 0, 0);
                d.b.q.b1.a(this.u, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i2 : 0)) {
                    marginLayoutParams.topMargin = i2;
                    android.view.View view = this.w;
                    if (view == null) {
                        android.view.View view2 = new android.view.View(this.f1630d);
                        this.w = view2;
                        view2.setBackgroundColor(this.f1630d.getResources().getColor(d.b.c.abc_input_method_navigation_guard));
                        this.u.addView(this.w, -1, new android.view.ViewGroup.LayoutParams(-1, i2));
                    } else {
                        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i2) {
                            layoutParams.height = i2;
                            this.w.setLayoutParams(layoutParams);
                        }
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = this.w != null;
                if (!this.B && z) {
                    i2 = 0;
                }
                boolean z3 = z;
                z = z2;
                z = z3;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                z = false;
            }
            if (z) {
                this.o.setLayoutParams(marginLayoutParams);
            }
        }
        android.view.View view3 = this.w;
        if (view3 != null) {
            view3.setVisibility(z ? 0 : 8);
        }
        return i2;
    }

    @Override // d.b.p.i.g.a
    public boolean a(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
        d.b.k.k.j jVarB;
        android.view.Window.Callback callbackE = E();
        if (callbackE == null || this.M || (jVarB = B(gVar.k())) == null) {
            return false;
        }
        return callbackE.onMenuItemSelected(jVarB.a, menuItem);
    }

    @Override // d.b.p.i.g.a
    public void b(d.b.p.i.g gVar) {
        d.b.q.a0 a0Var = this.k;
        if (a0Var == null || !a0Var.g() || (android.view.ViewConfiguration.get(this.f1630d).hasPermanentMenuKey() && !this.k.d())) {
            d.b.k.k.j jVarD = D(0);
            jVarD.o = true;
            v(jVarD, false);
            H(jVarD, null);
            return;
        }
        android.view.Window.Callback callbackE = E();
        if (this.k.b()) {
            this.k.e();
            if (this.M) {
                return;
            }
            callbackE.onPanelClosed(108, D(0).h);
            return;
        }
        if (callbackE == null || this.M) {
            return;
        }
        if (this.T && (1 & this.U) != 0) {
            this.f1631e.getDecorView().removeCallbacks(this.V);
            this.V.run();
        }
        d.b.k.k.j jVarD2 = D(0);
        d.b.p.i.g gVar2 = jVarD2.h;
        if (gVar2 == null || jVarD2.p || !callbackE.onPreparePanel(0, jVarD2.f1642g, gVar2)) {
            return;
        }
        callbackE.onMenuOpened(108, jVarD2.h);
        this.k.f();
    }

    @Override // d.b.k.j
    public void c(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        z();
        ((android.view.ViewGroup) this.u.findViewById(android.R.id.content)).addView(view, layoutParams);
        this.f1632f.a.onContentChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // d.b.k.j
    public android.view.View f(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        boolean z;
        androidx.appcompat.app.AppCompatViewInflater appCompatViewInflater;
        boolean z2 = false;
        if (this.Z == null) {
            java.lang.String string = this.f1630d.obtainStyledAttributes(d.b.j.AppCompatTheme).getString(d.b.j.AppCompatTheme_viewInflaterClass);
            if (string == null || androidx.appcompat.app.AppCompatViewInflater.class.getName().equals(string)) {
                appCompatViewInflater = new androidx.appcompat.app.AppCompatViewInflater();
            } else {
                try {
                    this.Z = (androidx.appcompat.app.AppCompatViewInflater) java.lang.Class.forName(string).getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
                } catch (java.lang.Throwable th) {
                    android.util.Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    appCompatViewInflater = new androidx.appcompat.app.AppCompatViewInflater();
                }
            }
            this.Z = appCompatViewInflater;
        }
        if (!b0) {
            z = false;
        } else if (attributeSet instanceof org.xmlpull.v1.XmlPullParser) {
            if (((org.xmlpull.v1.XmlPullParser) attributeSet).getDepth() > 1) {
                z2 = true;
            }
            z = z2;
        } else {
            android.view.ViewParent parent = (android.view.ViewParent) view;
            if (parent != null) {
                android.view.View decorView = this.f1631e.getDecorView();
                while (parent != null) {
                    if (parent == decorView || !(parent instanceof android.view.View) || d.g.m.s.z((android.view.View) parent)) {
                        break;
                    }
                    parent = parent.getParent();
                }
                z2 = true;
            }
            z = z2;
        }
        androidx.appcompat.app.AppCompatViewInflater appCompatViewInflater2 = this.Z;
        boolean z3 = b0;
        d.b.q.a1.a();
        return appCompatViewInflater2.createView(view, str, context, attributeSet, z, z3, true, false);
    }

    @Override // d.b.k.j
    public void g() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        android.view.LayoutInflater layoutInflaterFrom = android.view.LayoutInflater.from(this.f1630d);
        if (layoutInflaterFrom.getFactory() == null) {
            d.b.k.r.j0(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof d.b.k.k) {
                return;
            }
            android.util.Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // d.b.k.j
    public void h() {
        F();
        d.b.k.a aVar = this.h;
        G(0);
    }

    @Override // d.b.k.j
    public void i(android.os.Bundle bundle) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.pm.PackageManager.NameNotFoundException, java.lang.IllegalArgumentException {
        this.J = true;
        r(false);
        A();
        java.lang.Object obj = this.f1629c;
        if (obj instanceof android.app.Activity) {
            java.lang.String strJ = null;
            try {
                android.app.Activity activity = (android.app.Activity) obj;
                try {
                    strJ = d.b.k.r.J(activity, activity.getComponentName());
                } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
                    throw new java.lang.IllegalArgumentException(e2);
                }
            } catch (java.lang.IllegalArgumentException unused) {
            }
            if (strJ != null) {
                d.b.k.a aVar = this.h;
                if (aVar == null) {
                    this.W = true;
                } else {
                    aVar.g(true);
                }
            }
        }
        this.K = true;
    }

    @Override // d.b.k.j
    public void j() {
        this.L = false;
        synchronized (d.b.k.j.b) {
            d.b.k.j.k(this);
        }
        F();
        d.b.k.a aVar = this.h;
        if (aVar != null) {
            aVar.h(false);
        }
        if (this.f1629c instanceof android.app.Dialog) {
            d.b.k.k.g gVar = this.R;
            if (gVar != null) {
                gVar.a();
            }
            d.b.k.k.g gVar2 = this.S;
            if (gVar2 != null) {
                gVar2.a();
            }
        }
    }

    @Override // d.b.k.j
    public boolean l(int i2) {
        if (i2 == 8) {
            android.util.Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i2 = 108;
        } else if (i2 == 9) {
            android.util.Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = 109;
        }
        if (this.D && i2 == 108) {
            return false;
        }
        if (this.z && i2 == 1) {
            this.z = false;
        }
        if (i2 == 1) {
            L();
            this.D = true;
            return true;
        }
        if (i2 == 2) {
            L();
            this.x = true;
            return true;
        }
        if (i2 == 5) {
            L();
            this.y = true;
            return true;
        }
        if (i2 == 10) {
            L();
            this.B = true;
            return true;
        }
        if (i2 == 108) {
            L();
            this.z = true;
            return true;
        }
        if (i2 != 109) {
            return this.f1631e.requestFeature(i2);
        }
        L();
        this.A = true;
        return true;
    }

    @Override // d.b.k.j
    public void m(int i2) {
        z();
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.u.findViewById(android.R.id.content);
        viewGroup.removeAllViews();
        android.view.LayoutInflater.from(this.f1630d).inflate(i2, viewGroup);
        this.f1632f.a.onContentChanged();
    }

    @Override // d.b.k.j
    public void n(android.view.View view) {
        z();
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.u.findViewById(android.R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f1632f.a.onContentChanged();
    }

    @Override // d.b.k.j
    public void o(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        z();
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.u.findViewById(android.R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f1632f.a.onContentChanged();
    }

    @Override // android.view.LayoutInflater.Factory2
    public final android.view.View onCreateView(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        return f(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public android.view.View onCreateView(java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        return f(null, str, context, attributeSet);
    }

    @Override // d.b.k.j
    public final void p(java.lang.CharSequence charSequence) {
        this.j = charSequence;
        d.b.q.a0 a0Var = this.k;
        if (a0Var != null) {
            a0Var.setWindowTitle(charSequence);
            return;
        }
        d.b.k.a aVar = this.h;
        if (aVar != null) {
            aVar.i(charSequence);
            return;
        }
        android.widget.TextView textView = this.v;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public boolean q() {
        return r(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:176:0x024d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(boolean r15) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.pm.PackageManager.NameNotFoundException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.k.k.r(boolean):boolean");
    }

    public final void s(android.view.Window window) {
        if (this.f1631e != null) {
            throw new java.lang.IllegalStateException("AppCompat has already installed itself into the Window");
        }
        android.view.Window.Callback callback = window.getCallback();
        if (callback instanceof d.b.k.k.e) {
            throw new java.lang.IllegalStateException("AppCompat has already installed itself into the Window");
        }
        d.b.k.k.e eVar = new d.b.k.k.e(callback);
        this.f1632f = eVar;
        window.setCallback(eVar);
        d.b.q.v0 v0VarN = d.b.q.v0.n(this.f1630d, null, c0);
        android.graphics.drawable.Drawable drawableF = v0VarN.f(0);
        if (drawableF != null) {
            window.setBackgroundDrawable(drawableF);
        }
        v0VarN.b.recycle();
        this.f1631e = window;
    }

    public void t(int i2, d.b.k.k.j jVar, android.view.Menu menu) {
        if (menu == null && jVar != null) {
            menu = jVar.h;
        }
        if ((jVar == null || jVar.m) && !this.M) {
            this.f1632f.a.onPanelClosed(i2, menu);
        }
    }

    public void u(d.b.p.i.g gVar) {
        if (this.F) {
            return;
        }
        this.F = true;
        this.k.l();
        android.view.Window.Callback callbackE = E();
        if (callbackE != null && !this.M) {
            callbackE.onPanelClosed(108, gVar);
        }
        this.F = false;
    }

    public void v(d.b.k.k.j jVar, boolean z) {
        android.view.ViewGroup viewGroup;
        d.b.q.a0 a0Var;
        if (z && jVar.a == 0 && (a0Var = this.k) != null && a0Var.b()) {
            u(jVar.h);
            return;
        }
        android.view.WindowManager windowManager = (android.view.WindowManager) this.f1630d.getSystemService("window");
        if (windowManager != null && jVar.m && (viewGroup = jVar.f1640e) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                t(jVar.a, jVar, null);
            }
        }
        jVar.k = false;
        jVar.l = false;
        jVar.m = false;
        jVar.f1641f = null;
        jVar.o = true;
        if (this.H == jVar) {
            this.H = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean w(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.k.k.w(android.view.KeyEvent):boolean");
    }

    public void x(int i2) {
        d.b.k.k.j jVarD = D(i2);
        if (jVarD.h != null) {
            android.os.Bundle bundle = new android.os.Bundle();
            jVarD.h.w(bundle);
            if (bundle.size() > 0) {
                jVarD.q = bundle;
            }
            jVarD.h.z();
            jVarD.h.clear();
        }
        jVarD.p = true;
        jVarD.o = true;
        if ((i2 == 108 || i2 == 0) && this.k != null) {
            d.b.k.k.j jVarD2 = D(0);
            jVarD2.k = false;
            J(jVarD2, null);
        }
    }

    public void y() {
        d.g.m.v vVar = this.r;
        if (vVar != null) {
            vVar.b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void z() {
        android.view.ViewGroup viewGroup;
        if (this.t) {
            return;
        }
        android.content.res.TypedArray typedArrayObtainStyledAttributes = this.f1630d.obtainStyledAttributes(d.b.j.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(d.b.j.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new java.lang.IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(d.b.j.AppCompatTheme_windowNoTitle, false)) {
            l(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(d.b.j.AppCompatTheme_windowActionBar, false)) {
            l(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(d.b.j.AppCompatTheme_windowActionBarOverlay, false)) {
            l(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(d.b.j.AppCompatTheme_windowActionModeOverlay, false)) {
            l(10);
        }
        this.C = typedArrayObtainStyledAttributes.getBoolean(d.b.j.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        A();
        this.f1631e.getDecorView();
        android.view.LayoutInflater layoutInflaterFrom = android.view.LayoutInflater.from(this.f1630d);
        if (this.D) {
            android.view.ViewGroup viewGroup2 = (android.view.ViewGroup) layoutInflaterFrom.inflate(this.B ? d.b.g.abc_screen_simple_overlay_action_mode : d.b.g.abc_screen_simple, (android.view.ViewGroup) null);
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                d.g.m.s.T(viewGroup2, new d.b.k.l(this));
                viewGroup = viewGroup2;
            } else {
                ((d.b.q.e0) viewGroup2).setOnFitSystemWindowsListener(new d.b.k.m(this));
                viewGroup = viewGroup2;
            }
        } else if (this.C) {
            android.view.ViewGroup viewGroup3 = (android.view.ViewGroup) layoutInflaterFrom.inflate(d.b.g.abc_dialog_title_material, (android.view.ViewGroup) null);
            this.A = false;
            this.z = false;
            viewGroup = viewGroup3;
        } else if (this.z) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            this.f1630d.getTheme().resolveAttribute(d.b.a.actionBarTheme, typedValue, true);
            android.view.ViewGroup viewGroup4 = (android.view.ViewGroup) android.view.LayoutInflater.from(typedValue.resourceId != 0 ? new d.b.p.c(this.f1630d, typedValue.resourceId) : this.f1630d).inflate(d.b.g.abc_screen_toolbar, (android.view.ViewGroup) null);
            d.b.q.a0 a0Var = (d.b.q.a0) viewGroup4.findViewById(d.b.f.decor_content_parent);
            this.k = a0Var;
            a0Var.setWindowCallback(E());
            if (this.A) {
                this.k.k(109);
            }
            if (this.x) {
                this.k.k(2);
            }
            viewGroup = viewGroup4;
            if (this.y) {
                this.k.k(5);
                viewGroup = viewGroup4;
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("AppCompat does not support the current theme features: { windowActionBar: ");
            sbO.append(this.z);
            sbO.append(", windowActionBarOverlay: ");
            sbO.append(this.A);
            sbO.append(", android:windowIsFloating: ");
            sbO.append(this.C);
            sbO.append(", windowActionModeOverlay: ");
            sbO.append(this.B);
            sbO.append(", windowNoTitle: ");
            sbO.append(this.D);
            sbO.append(" }");
            throw new java.lang.IllegalArgumentException(sbO.toString());
        }
        if (this.k == null) {
            this.v = (android.widget.TextView) viewGroup.findViewById(d.b.f.title);
        }
        d.b.q.b1.c(viewGroup);
        androidx.appcompat.widget.ContentFrameLayout contentFrameLayout = (androidx.appcompat.widget.ContentFrameLayout) viewGroup.findViewById(d.b.f.action_bar_activity_content);
        android.view.ViewGroup viewGroup5 = (android.view.ViewGroup) this.f1631e.findViewById(android.R.id.content);
        if (viewGroup5 != null) {
            while (viewGroup5.getChildCount() > 0) {
                android.view.View childAt = viewGroup5.getChildAt(0);
                viewGroup5.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup5.setId(-1);
            contentFrameLayout.setId(android.R.id.content);
            if (viewGroup5 instanceof android.widget.FrameLayout) {
                ((android.widget.FrameLayout) viewGroup5).setForeground(null);
            }
        }
        this.f1631e.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new d.b.k.n(this));
        this.u = viewGroup;
        java.lang.Object obj = this.f1629c;
        java.lang.CharSequence title = obj instanceof android.app.Activity ? ((android.app.Activity) obj).getTitle() : this.j;
        if (!android.text.TextUtils.isEmpty(title)) {
            d.b.q.a0 a0Var2 = this.k;
            if (a0Var2 != null) {
                a0Var2.setWindowTitle(title);
            } else {
                d.b.k.a aVar = this.h;
                if (aVar != null) {
                    aVar.i(title);
                } else {
                    android.widget.TextView textView = this.v;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        androidx.appcompat.widget.ContentFrameLayout contentFrameLayout2 = (androidx.appcompat.widget.ContentFrameLayout) this.u.findViewById(android.R.id.content);
        android.view.View decorView = this.f1631e.getDecorView();
        contentFrameLayout2.f59g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (d.g.m.s.A(contentFrameLayout2)) {
            contentFrameLayout2.requestLayout();
        }
        android.content.res.TypedArray typedArrayObtainStyledAttributes2 = this.f1630d.obtainStyledAttributes(d.b.j.AppCompatTheme);
        typedArrayObtainStyledAttributes2.getValue(d.b.j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(d.b.j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(d.b.j.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes2.getValue(d.b.j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(d.b.j.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes2.getValue(d.b.j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(d.b.j.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes2.getValue(d.b.j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(d.b.j.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes2.getValue(d.b.j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.t = true;
        d.b.k.k.j jVarD = D(0);
        if (this.M || jVarD.h != null) {
            return;
        }
        G(108);
    }

    public class e extends d.b.p.h {
        public e(android.view.Window.Callback callback) {
            super(callback);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0052  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.view.ActionMode a(android.view.ActionMode.Callback r10) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            /*
                Method dump skipped, instructions count: 441
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: d.b.k.k.e.a(android.view.ActionMode$Callback):android.view.ActionMode");
        }

        @Override // android.view.Window.Callback
        public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
            return d.b.k.k.this.w(keyEvent) || this.a.dispatchKeyEvent(keyEvent);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
        @Override // d.b.p.h, android.view.Window.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatchKeyShortcutEvent(android.view.KeyEvent r6) {
            /*
                r5 = this;
                android.view.Window$Callback r0 = r5.a
                boolean r0 = r0.dispatchKeyShortcutEvent(r6)
                r1 = 0
                r2 = 1
                if (r0 != 0) goto L4f
                d.b.k.k r0 = d.b.k.k.this
                int r3 = r6.getKeyCode()
                r0.F()
                d.b.k.a r4 = r0.h
                if (r4 == 0) goto L1f
                boolean r3 = r4.f(r3, r6)
                if (r3 == 0) goto L1f
            L1d:
                r6 = 1
                goto L4d
            L1f:
                d.b.k.k$j r3 = r0.H
                if (r3 == 0) goto L34
                int r4 = r6.getKeyCode()
                boolean r3 = r0.I(r3, r4, r6, r2)
                if (r3 == 0) goto L34
                d.b.k.k$j r6 = r0.H
                if (r6 == 0) goto L1d
                r6.l = r2
                goto L1d
            L34:
                d.b.k.k$j r3 = r0.H
                if (r3 != 0) goto L4c
                d.b.k.k$j r3 = r0.D(r1)
                r0.J(r3, r6)
                int r4 = r6.getKeyCode()
                boolean r6 = r0.I(r3, r4, r6, r2)
                r3.k = r1
                if (r6 == 0) goto L4c
                goto L1d
            L4c:
                r6 = 0
            L4d:
                if (r6 == 0) goto L50
            L4f:
                r1 = 1
            L50:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: d.b.k.k.e.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
        }

        @Override // d.b.p.h, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // d.b.p.h, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, android.view.Menu menu) {
            if (i != 0 || (menu instanceof d.b.p.i.g)) {
                return this.a.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // d.b.p.h, android.view.Window.Callback
        public boolean onMenuOpened(int i, android.view.Menu menu) {
            this.a.onMenuOpened(i, menu);
            d.b.k.k kVar = d.b.k.k.this;
            if (kVar == null) {
                throw null;
            }
            if (i == 108) {
                kVar.F();
                d.b.k.a aVar = kVar.h;
                if (aVar != null) {
                    aVar.b(true);
                }
            }
            return true;
        }

        @Override // d.b.p.h, android.view.Window.Callback
        public void onPanelClosed(int i, android.view.Menu menu) {
            this.a.onPanelClosed(i, menu);
            d.b.k.k kVar = d.b.k.k.this;
            if (kVar == null) {
                throw null;
            }
            if (i == 108) {
                kVar.F();
                d.b.k.a aVar = kVar.h;
                if (aVar != null) {
                    aVar.b(false);
                    return;
                }
                return;
            }
            if (i == 0) {
                d.b.k.k.j jVarD = kVar.D(i);
                if (jVarD.m) {
                    kVar.v(jVarD, false);
                }
            }
        }

        @Override // d.b.p.h, android.view.Window.Callback
        public boolean onPreparePanel(int i, android.view.View view, android.view.Menu menu) {
            d.b.p.i.g gVar = menu instanceof d.b.p.i.g ? (d.b.p.i.g) menu : null;
            if (i == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.y = true;
            }
            boolean zOnPreparePanel = this.a.onPreparePanel(i, view, menu);
            if (gVar != null) {
                gVar.y = false;
            }
            return zOnPreparePanel;
        }

        @Override // d.b.p.h, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(java.util.List<android.view.KeyboardShortcutGroup> list, android.view.Menu menu, int i) {
            d.b.p.i.g gVar = d.b.k.k.this.D(0).h;
            if (gVar != null) {
                this.a.onProvideKeyboardShortcuts(list, gVar, i);
            } else {
                this.a.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // d.b.p.h, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback) {
            if (android.os.Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return d.b.k.k.this.s ? a(callback) : this.a.onWindowStartingActionMode(callback);
        }

        @Override // d.b.p.h, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback, int i) {
            if (d.b.k.k.this.s && i == 0) {
                return a(callback);
            }
            return this.a.onWindowStartingActionMode(callback, i);
        }
    }
}
