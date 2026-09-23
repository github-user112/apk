package d.b.k;

/* loaded from: classes.dex */
public class h extends d.j.d.l implements d.b.k.i, d.g.e.o {
    public d.b.k.j a;
    public android.content.res.Resources b;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        r().c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.pm.PackageManager.NameNotFoundException, java.lang.IllegalArgumentException {
        super.attachBaseContext(context);
        d.b.k.k kVar = (d.b.k.k) r();
        kVar.r(false);
        kVar.J = true;
    }

    @Override // d.b.k.i
    public void b(d.b.p.a aVar) {
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        s();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // d.b.k.i
    public void d(d.b.p.a aVar) {
    }

    @Override // d.g.e.e, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        s();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends android.view.View> T findViewById(int i) {
        d.b.k.k kVar = (d.b.k.k) r();
        kVar.z();
        return (T) kVar.f1631e.findViewById(i);
    }

    @Override // android.app.Activity
    public android.view.MenuInflater getMenuInflater() {
        d.b.k.k kVar = (d.b.k.k) r();
        if (kVar.i == null) {
            kVar.F();
            d.b.k.a aVar = kVar.h;
            kVar.i = new d.b.p.f(aVar != null ? aVar.d() : kVar.f1630d);
        }
        return kVar.i;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources getResources() {
        if (this.b == null) {
            d.b.q.a1.a();
        }
        android.content.res.Resources resources = this.b;
        return resources == null ? super.getResources() : resources;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        r().h();
    }

    @Override // d.g.e.o
    public android.content.Intent k() {
        return d.b.k.r.H(this);
    }

    @Override // d.j.d.l, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.pm.PackageManager.NameNotFoundException, java.lang.IllegalArgumentException {
        super.onConfigurationChanged(configuration);
        if (this.b != null) {
            this.b.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        d.b.k.k kVar = (d.b.k.k) r();
        if (kVar.z && kVar.t) {
            kVar.F();
            d.b.k.a aVar = kVar.h;
            if (aVar != null) {
                aVar.e(configuration);
            }
        }
        d.b.q.i iVarA = d.b.q.i.a();
        android.content.Context context = kVar.f1630d;
        synchronized (iVarA) {
            d.b.q.l0 l0Var = iVarA.a;
            synchronized (l0Var) {
                d.e.e<java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState>> eVar = l0Var.f1799d.get(context);
                if (eVar != null) {
                    eVar.b();
                }
            }
        }
        kVar.r(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
    }

    @Override // d.j.d.l, androidx.activity.ComponentActivity, d.g.e.e, android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        d.b.k.j jVarR = r();
        jVarR.g();
        jVarR.i(bundle);
        super.onCreate(bundle);
    }

    @Override // d.j.d.l, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d.b.k.k kVar = (d.b.k.k) r();
        if (kVar == null) {
            throw null;
        }
        synchronized (d.b.k.j.b) {
            d.b.k.j.k(kVar);
        }
        if (kVar.T) {
            kVar.f1631e.getDecorView().removeCallbacks(kVar.V);
        }
        kVar.L = false;
        kVar.M = true;
        d.b.k.a aVar = kVar.h;
        d.b.k.k.g gVar = kVar.R;
        if (gVar != null) {
            gVar.a();
        }
        d.b.k.k.g gVar2 = kVar.S;
        if (gVar2 != null) {
            gVar2.a();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, android.view.KeyEvent keyEvent) {
        if (v(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // d.j.d.l, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, android.view.MenuItem menuItem) {
        android.content.Intent intentH;
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        d.b.k.a aVarS = s();
        if (menuItem.getItemId() != 16908332 || aVarS == null || (aVarS.c() & 4) == 0 || (intentH = d.b.k.r.H(this)) == null) {
            return false;
        }
        if (!shouldUpRecreateTask(intentH)) {
            navigateUpTo(intentH);
            return true;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        android.content.Intent intentK = k();
        if (intentK == null) {
            intentK = d.b.k.r.H(this);
        }
        if (intentK != null) {
            android.content.ComponentName component = intentK.getComponent();
            if (component == null) {
                component = intentK.resolveActivity(getPackageManager());
            }
            int size = arrayList.size();
            while (true) {
                try {
                    android.content.Intent intentI = d.b.k.r.I(this, component);
                    if (intentI == null) {
                        break;
                    }
                    arrayList.add(size, intentI);
                    component = intentI.getComponent();
                } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
                    android.util.Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new java.lang.IllegalArgumentException(e2);
                }
            }
            arrayList.add(intentK);
        }
        u();
        if (arrayList.isEmpty()) {
            throw new java.lang.IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        android.content.Intent[] intentArr = (android.content.Intent[]) arrayList.toArray(new android.content.Intent[arrayList.size()]);
        intentArr[0] = new android.content.Intent(intentArr[0]).addFlags(268484608);
        d.g.f.a.g(this, intentArr, null);
        try {
            d.g.e.a.i(this);
            return true;
        } catch (java.lang.IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, android.view.Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // d.j.d.l, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, android.view.Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(android.os.Bundle bundle) {
        super.onPostCreate(bundle);
        ((d.b.k.k) r()).z();
    }

    @Override // d.j.d.l, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        d.b.k.k kVar = (d.b.k.k) r();
        kVar.F();
        d.b.k.a aVar = kVar.h;
        if (aVar != null) {
            aVar.h(true);
        }
    }

    @Override // androidx.activity.ComponentActivity, d.g.e.e, android.app.Activity
    public void onSaveInstanceState(android.os.Bundle bundle) {
        super.onSaveInstanceState(bundle);
        d.b.k.k kVar = (d.b.k.k) r();
        if (kVar.N != -100) {
            ((d.e.h) d.b.k.k.a0).put(kVar.f1629c.getClass(), java.lang.Integer.valueOf(kVar.N));
        }
    }

    @Override // d.j.d.l, android.app.Activity
    public void onStart() {
        super.onStart();
        d.b.k.k kVar = (d.b.k.k) r();
        kVar.L = true;
        kVar.q();
        synchronized (d.b.k.j.b) {
            d.b.k.j.k(kVar);
            d.b.k.j.a.add(new java.lang.ref.WeakReference<>(kVar));
        }
    }

    @Override // d.j.d.l, android.app.Activity
    public void onStop() {
        super.onStop();
        r().j();
    }

    @Override // android.app.Activity
    public void onTitleChanged(java.lang.CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        r().p(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        s();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    @Override // d.b.k.i
    public d.b.p.a p(d.b.p.a.InterfaceC0036a interfaceC0036a) {
        return null;
    }

    public d.b.k.j r() {
        if (this.a == null) {
            this.a = d.b.k.j.d(this, this);
        }
        return this.a;
    }

    public d.b.k.a s() {
        d.b.k.k kVar = (d.b.k.k) r();
        kVar.F();
        return kVar.h;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        r().m(i);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(android.view.View view) {
        r().n(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        r().o(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        ((d.b.k.k) r()).O = i;
    }

    @Override // d.j.d.l
    public void supportInvalidateOptionsMenu() {
        r().h();
    }

    public void t() {
    }

    public void u() {
    }

    public final boolean v(android.view.KeyEvent keyEvent) {
        android.view.Window window;
        return (android.os.Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || android.view.KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || android.view.KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }
}
