package f.a.k.l0;

/* loaded from: classes.dex */
public class n3 implements net.easyconn.ui.widget.EcFloatMenu.b {
    public final /* synthetic */ f.a.k.l0.p3 a;

    public n3(f.a.k.l0.p3 p3Var) {
        this.a = p3Var;
    }

    @Override // net.easyconn.ui.widget.EcFloatMenu.b
    public void a() {
        this.a.f3077g.f(true);
        ((net.easyconn.EcApplication) this.a.r.getApplication()).executeTaskDelay(new java.lang.Runnable() { // from class: f.a.k.l0.k0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.i();
            }
        }, 360L);
    }

    @Override // net.easyconn.ui.widget.EcFloatMenu.b
    public void b() {
        ((net.easyconn.EcApplication) this.a.r.getApplication()).executeTaskDelay(new java.lang.Runnable() { // from class: f.a.k.l0.i0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.j();
            }
        }, 360L);
    }

    @Override // net.easyconn.ui.widget.EcFloatMenu.b
    public void c() {
        ((net.easyconn.EcApplication) this.a.r.getApplication()).executeTaskDelay(new java.lang.Runnable() { // from class: f.a.k.l0.j0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.g();
            }
        }, 360L);
    }

    @Override // net.easyconn.ui.widget.EcFloatMenu.b
    public void e() {
        e.e.a.g.a("MirrorFragment MirrorFragment onCarHomeClick");
        this.a.f3077g.f(true);
        ((net.easyconn.EcApplication) this.a.r.getApplication()).executeTaskDelay(new java.lang.Runnable() { // from class: f.a.k.l0.h0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.h();
            }
        }, 360L);
    }

    @Override // net.easyconn.ui.widget.EcFloatMenu.b
    public void f() {
        ((net.easyconn.EcApplication) this.a.r.getApplication()).executeTaskDelay(new java.lang.Runnable() { // from class: f.a.k.l0.g0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.k();
            }
        }, 360L);
    }

    public /* synthetic */ void g() {
        this.a.C.X(net.easyconn.ecsdk.ECTypes.ECSystemKeyCode.EC_SYSTEM_KEYCODE_BACK);
    }

    public /* synthetic */ void h() {
        f.a.k.l0.p3 p3Var = this.a;
        p3Var.C.K(p3Var.getContext());
    }

    public /* synthetic */ void i() {
        this.a.C.W();
    }

    public /* synthetic */ void j() {
        this.a.C.H(net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_ENFORCE_OR_CANCEL_LANDSCAPE, net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK);
    }

    public /* synthetic */ void k() {
        this.a.C.X(net.easyconn.ecsdk.ECTypes.ECSystemKeyCode.EC_SYSTEM_KEYCODE_HOME);
    }
}
