package d.b.q;

/* loaded from: classes.dex */
public class s extends d.b.q.o {

    /* renamed from: d, reason: collision with root package name */
    public final android.widget.SeekBar f1823d;

    /* renamed from: e, reason: collision with root package name */
    public android.graphics.drawable.Drawable f1824e;

    /* renamed from: f, reason: collision with root package name */
    public android.content.res.ColorStateList f1825f;

    /* renamed from: g, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f1826g;
    public boolean h;
    public boolean i;

    public s(android.widget.SeekBar seekBar) {
        super(seekBar);
        this.f1825f = null;
        this.f1826g = null;
        this.h = false;
        this.i = false;
        this.f1823d = seekBar;
    }

    @Override // d.b.q.o
    public void a(android.util.AttributeSet attributeSet, int i) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        super.a(attributeSet, i);
        d.b.q.v0 v0VarO = d.b.q.v0.o(this.f1823d.getContext(), attributeSet, d.b.j.AppCompatSeekBar, i, 0);
        android.graphics.drawable.Drawable drawableF = v0VarO.f(d.b.j.AppCompatSeekBar_android_thumb);
        if (drawableF != null) {
            this.f1823d.setThumb(drawableF);
        }
        android.graphics.drawable.Drawable drawableE = v0VarO.e(d.b.j.AppCompatSeekBar_tickMark);
        android.graphics.drawable.Drawable drawable = this.f1824e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f1824e = drawableE;
        if (drawableE != null) {
            drawableE.setCallback(this.f1823d);
            d.b.k.r.o0(drawableE, d.g.m.s.o(this.f1823d));
            if (drawableE.isStateful()) {
                drawableE.setState(this.f1823d.getDrawableState());
            }
            c();
        }
        this.f1823d.invalidate();
        if (v0VarO.m(d.b.j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f1826g = d.b.q.c0.d(v0VarO.h(d.b.j.AppCompatSeekBar_tickMarkTintMode, -1), this.f1826g);
            this.i = true;
        }
        if (v0VarO.m(d.b.j.AppCompatSeekBar_tickMarkTint)) {
            this.f1825f = v0VarO.b(d.b.j.AppCompatSeekBar_tickMarkTint);
            this.h = true;
        }
        v0VarO.b.recycle();
        c();
    }

    public final void c() {
        if (this.f1824e != null) {
            if (this.h || this.i) {
                android.graphics.drawable.Drawable drawableA0 = d.b.k.r.A0(this.f1824e.mutate());
                this.f1824e = drawableA0;
                if (this.h) {
                    d.b.k.r.t0(drawableA0, this.f1825f);
                }
                if (this.i) {
                    d.b.k.r.u0(this.f1824e, this.f1826g);
                }
                if (this.f1824e.isStateful()) {
                    this.f1824e.setState(this.f1823d.getDrawableState());
                }
            }
        }
    }

    public void d(android.graphics.Canvas canvas) {
        if (this.f1824e != null) {
            int max = this.f1823d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f1824e.getIntrinsicWidth();
                int intrinsicHeight = this.f1824e.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f1824e.setBounds(-i, -i2, i, i2);
                float width = ((this.f1823d.getWidth() - this.f1823d.getPaddingLeft()) - this.f1823d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f1823d.getPaddingLeft(), this.f1823d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f1824e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
