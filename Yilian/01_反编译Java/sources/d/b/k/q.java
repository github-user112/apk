package d.b.k;

/* loaded from: classes.dex */
public class q extends android.app.Dialog implements d.b.k.i {
    public d.b.k.j a;
    public final d.g.m.d.a b;

    public class a implements d.g.m.d.a {
        public a() {
        }

        @Override // d.g.m.d.a
        public boolean superDispatchKeyEvent(android.view.KeyEvent keyEvent) {
            return d.b.k.q.this.c(keyEvent);
        }
    }

    public q(android.content.Context context, int i) {
        int i2;
        if (i == 0) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            context.getTheme().resolveAttribute(d.b.a.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        } else {
            i2 = i;
        }
        super(context, i2);
        this.b = new d.b.k.q.a();
        d.b.k.j jVarA = a();
        if (i == 0) {
            android.util.TypedValue typedValue2 = new android.util.TypedValue();
            context.getTheme().resolveAttribute(d.b.a.dialogTheme, typedValue2, true);
            i = typedValue2.resourceId;
        }
        ((d.b.k.k) jVarA).O = i;
        jVarA.i(null);
    }

    public d.b.k.j a() {
        if (this.a == null) {
            this.a = d.b.k.j.e(this, this);
        }
        return this.a;
    }

    @Override // android.app.Dialog
    public void addContentView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        a().c(view, layoutParams);
    }

    @Override // d.b.k.i
    public void b(d.b.p.a aVar) {
    }

    public boolean c(android.view.KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // d.b.k.i
    public void d(d.b.p.a aVar) {
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        return d.g.m.d.a(this.b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends android.view.View> T findViewById(int i) {
        d.b.k.k kVar = (d.b.k.k) a();
        kVar.z();
        return (T) kVar.f1631e.findViewById(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        a().h();
    }

    @Override // android.app.Dialog
    public void onCreate(android.os.Bundle bundle) {
        a().g();
        super.onCreate(bundle);
        a().i(bundle);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        a().j();
    }

    @Override // d.b.k.i
    public d.b.p.a p(d.b.p.a.InterfaceC0036a interfaceC0036a) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        a().m(i);
    }

    @Override // android.app.Dialog
    public void setContentView(android.view.View view) {
        a().n(view);
    }

    @Override // android.app.Dialog
    public void setContentView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        a().o(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        a().p(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(java.lang.CharSequence charSequence) {
        super.setTitle(charSequence);
        a().p(charSequence);
    }
}
