package d.b.q;

/* loaded from: classes.dex */
public class e {
    public final android.view.View a;

    /* renamed from: d, reason: collision with root package name */
    public d.b.q.t0 f1769d;

    /* renamed from: e, reason: collision with root package name */
    public d.b.q.t0 f1770e;

    /* renamed from: f, reason: collision with root package name */
    public d.b.q.t0 f1771f;

    /* renamed from: c, reason: collision with root package name */
    public int f1768c = -1;
    public final d.b.q.i b = d.b.q.i.a();

    public e(android.view.View view) {
        this.a = view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a() {
        android.graphics.drawable.Drawable background = this.a.getBackground();
        if (background != null) {
            int i = android.os.Build.VERSION.SDK_INT;
            boolean z = true;
            if (i <= 21 ? i == 21 : this.f1769d != null) {
                if (this.f1771f == null) {
                    this.f1771f = new d.b.q.t0();
                }
                d.b.q.t0 t0Var = this.f1771f;
                android.graphics.PorterDuff.Mode supportBackgroundTintMode = null;
                t0Var.a = null;
                t0Var.f1830d = false;
                t0Var.b = null;
                t0Var.f1829c = false;
                android.content.res.ColorStateList colorStateListH = d.g.m.s.h(this.a);
                if (colorStateListH != null) {
                    t0Var.f1830d = true;
                    t0Var.a = colorStateListH;
                }
                android.view.View view = this.a;
                if (android.os.Build.VERSION.SDK_INT >= 21) {
                    supportBackgroundTintMode = view.getBackgroundTintMode();
                } else if (view instanceof d.g.m.n) {
                    supportBackgroundTintMode = ((d.g.m.n) view).getSupportBackgroundTintMode();
                }
                if (supportBackgroundTintMode != null) {
                    t0Var.f1829c = true;
                    t0Var.b = supportBackgroundTintMode;
                }
                if (t0Var.f1830d || t0Var.f1829c) {
                    d.b.q.i.f(background, t0Var, this.a.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            d.b.q.t0 t0Var2 = this.f1770e;
            if (t0Var2 != null) {
                d.b.q.i.f(background, t0Var2, this.a.getDrawableState());
                return;
            }
            d.b.q.t0 t0Var3 = this.f1769d;
            if (t0Var3 != null) {
                d.b.q.i.f(background, t0Var3, this.a.getDrawableState());
            }
        }
    }

    public android.content.res.ColorStateList b() {
        d.b.q.t0 t0Var = this.f1770e;
        if (t0Var != null) {
            return t0Var.a;
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode c() {
        d.b.q.t0 t0Var = this.f1770e;
        if (t0Var != null) {
            return t0Var.b;
        }
        return null;
    }

    public void d(android.util.AttributeSet attributeSet, int i) {
        d.b.q.v0 v0VarO = d.b.q.v0.o(this.a.getContext(), attributeSet, d.b.j.ViewBackgroundHelper, i, 0);
        try {
            if (v0VarO.m(d.b.j.ViewBackgroundHelper_android_background)) {
                this.f1768c = v0VarO.j(d.b.j.ViewBackgroundHelper_android_background, -1);
                android.content.res.ColorStateList colorStateListD = this.b.d(this.a.getContext(), this.f1768c);
                if (colorStateListD != null) {
                    g(colorStateListD);
                }
            }
            if (v0VarO.m(d.b.j.ViewBackgroundHelper_backgroundTint)) {
                d.g.m.s.N(this.a, v0VarO.b(d.b.j.ViewBackgroundHelper_backgroundTint));
            }
            if (v0VarO.m(d.b.j.ViewBackgroundHelper_backgroundTintMode)) {
                d.g.m.s.O(this.a, d.b.q.c0.d(v0VarO.h(d.b.j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            v0VarO.b.recycle();
        }
    }

    public void e() {
        this.f1768c = -1;
        g(null);
        a();
    }

    public void f(int i) {
        this.f1768c = i;
        d.b.q.i iVar = this.b;
        g(iVar != null ? iVar.d(this.a.getContext(), i) : null);
        a();
    }

    public void g(android.content.res.ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1769d == null) {
                this.f1769d = new d.b.q.t0();
            }
            d.b.q.t0 t0Var = this.f1769d;
            t0Var.a = colorStateList;
            t0Var.f1830d = true;
        } else {
            this.f1769d = null;
        }
        a();
    }

    public void h(android.content.res.ColorStateList colorStateList) {
        if (this.f1770e == null) {
            this.f1770e = new d.b.q.t0();
        }
        d.b.q.t0 t0Var = this.f1770e;
        t0Var.a = colorStateList;
        t0Var.f1830d = true;
        a();
    }

    public void i(android.graphics.PorterDuff.Mode mode) {
        if (this.f1770e == null) {
            this.f1770e = new d.b.q.t0();
        }
        d.b.q.t0 t0Var = this.f1770e;
        t0Var.b = mode;
        t0Var.f1829c = true;
        a();
    }
}
