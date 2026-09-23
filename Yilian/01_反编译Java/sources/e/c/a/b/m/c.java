package e.c.a.b.m;

/* loaded from: classes.dex */
public class c {
    public static final boolean w;
    public final e.c.a.b.m.a a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f2635c;

    /* renamed from: d, reason: collision with root package name */
    public int f2636d;

    /* renamed from: e, reason: collision with root package name */
    public int f2637e;

    /* renamed from: f, reason: collision with root package name */
    public int f2638f;

    /* renamed from: g, reason: collision with root package name */
    public int f2639g;
    public android.graphics.PorterDuff.Mode h;
    public android.content.res.ColorStateList i;
    public android.content.res.ColorStateList j;
    public android.content.res.ColorStateList k;
    public android.graphics.drawable.GradientDrawable o;
    public android.graphics.drawable.Drawable p;
    public android.graphics.drawable.GradientDrawable q;
    public android.graphics.drawable.Drawable r;
    public android.graphics.drawable.GradientDrawable s;
    public android.graphics.drawable.GradientDrawable t;
    public android.graphics.drawable.GradientDrawable u;
    public final android.graphics.Paint l = new android.graphics.Paint(1);
    public final android.graphics.Rect m = new android.graphics.Rect();
    public final android.graphics.RectF n = new android.graphics.RectF();
    public boolean v = false;

    static {
        w = android.os.Build.VERSION.SDK_INT >= 21;
    }

    public c(e.c.a.b.m.a aVar) {
        this.a = aVar;
    }

    @android.annotation.TargetApi(21)
    public final android.graphics.drawable.Drawable a() {
        android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
        this.s = gradientDrawable;
        gradientDrawable.setCornerRadius(this.f2638f + 1.0E-5f);
        this.s.setColor(-1);
        c();
        android.graphics.drawable.GradientDrawable gradientDrawable2 = new android.graphics.drawable.GradientDrawable();
        this.t = gradientDrawable2;
        gradientDrawable2.setCornerRadius(this.f2638f + 1.0E-5f);
        this.t.setColor(0);
        this.t.setStroke(this.f2639g, this.j);
        android.graphics.drawable.InsetDrawable insetDrawable = new android.graphics.drawable.InsetDrawable((android.graphics.drawable.Drawable) new android.graphics.drawable.LayerDrawable(new android.graphics.drawable.Drawable[]{this.s, this.t}), this.b, this.f2636d, this.f2635c, this.f2637e);
        android.graphics.drawable.GradientDrawable gradientDrawable3 = new android.graphics.drawable.GradientDrawable();
        this.u = gradientDrawable3;
        gradientDrawable3.setCornerRadius(this.f2638f + 1.0E-5f);
        this.u.setColor(-1);
        return new e.c.a.b.m.b(e.c.a.b.r.a.a(this.k), insetDrawable, this.u);
    }

    public final void b() {
        if (w && this.t != null) {
            this.a.setInternalBackground(a());
        } else {
            if (w) {
                return;
            }
            this.a.invalidate();
        }
    }

    public final void c() {
        android.graphics.drawable.GradientDrawable gradientDrawable = this.s;
        if (gradientDrawable != null) {
            d.b.k.r.t0(gradientDrawable, this.i);
            android.graphics.PorterDuff.Mode mode = this.h;
            if (mode != null) {
                d.b.k.r.u0(this.s, mode);
            }
        }
    }
}
