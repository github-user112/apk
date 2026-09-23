package d.b.q;

/* loaded from: classes.dex */
public class l {
    public final android.widget.ImageView a;
    public d.b.q.t0 b;

    /* renamed from: c, reason: collision with root package name */
    public d.b.q.t0 f1797c;

    public l(android.widget.ImageView imageView) {
        this.a = imageView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a() {
        android.graphics.drawable.Drawable drawable = this.a.getDrawable();
        if (drawable != null) {
            d.b.q.c0.b(drawable);
        }
        if (drawable != null) {
            int i = android.os.Build.VERSION.SDK_INT;
            boolean z = true;
            if (i <= 21 && i == 21) {
                if (this.f1797c == null) {
                    this.f1797c = new d.b.q.t0();
                }
                d.b.q.t0 t0Var = this.f1797c;
                android.graphics.PorterDuff.Mode supportImageTintMode = null;
                t0Var.a = null;
                t0Var.f1830d = false;
                t0Var.b = null;
                t0Var.f1829c = false;
                android.widget.ImageView imageView = this.a;
                android.content.res.ColorStateList imageTintList = android.os.Build.VERSION.SDK_INT >= 21 ? imageView.getImageTintList() : imageView instanceof d.g.n.g ? ((d.g.n.g) imageView).getSupportImageTintList() : null;
                if (imageTintList != null) {
                    t0Var.f1830d = true;
                    t0Var.a = imageTintList;
                }
                android.widget.ImageView imageView2 = this.a;
                if (android.os.Build.VERSION.SDK_INT >= 21) {
                    supportImageTintMode = imageView2.getImageTintMode();
                } else if (imageView2 instanceof d.g.n.g) {
                    supportImageTintMode = ((d.g.n.g) imageView2).getSupportImageTintMode();
                }
                if (supportImageTintMode != null) {
                    t0Var.f1829c = true;
                    t0Var.b = supportImageTintMode;
                }
                if (t0Var.f1830d || t0Var.f1829c) {
                    d.b.q.i.f(drawable, t0Var, this.a.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            d.b.q.t0 t0Var2 = this.b;
            if (t0Var2 != null) {
                d.b.q.i.f(drawable, t0Var2, this.a.getDrawableState());
            }
        }
    }

    public boolean b() {
        return android.os.Build.VERSION.SDK_INT < 21 || !(this.a.getBackground() instanceof android.graphics.drawable.RippleDrawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(android.util.AttributeSet attributeSet, int i) {
        android.graphics.drawable.Drawable drawable;
        android.graphics.drawable.Drawable drawable2;
        int iJ;
        d.b.q.v0 v0VarO = d.b.q.v0.o(this.a.getContext(), attributeSet, d.b.j.AppCompatImageView, i, 0);
        try {
            android.graphics.drawable.Drawable drawable3 = this.a.getDrawable();
            if (drawable3 == null && (iJ = v0VarO.j(d.b.j.AppCompatImageView_srcCompat, -1)) != -1 && (drawable3 = d.b.l.a.a.b(this.a.getContext(), iJ)) != null) {
                this.a.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                d.b.q.c0.b(drawable3);
            }
            if (v0VarO.m(d.b.j.AppCompatImageView_tint)) {
                android.widget.ImageView imageView = this.a;
                android.content.res.ColorStateList colorStateListB = v0VarO.b(d.b.j.AppCompatImageView_tint);
                if (android.os.Build.VERSION.SDK_INT >= 21) {
                    imageView.setImageTintList(colorStateListB);
                    if (android.os.Build.VERSION.SDK_INT == 21 && (drawable2 = imageView.getDrawable()) != null && imageView.getImageTintList() != null) {
                        if (drawable2.isStateful()) {
                            drawable2.setState(imageView.getDrawableState());
                        }
                        imageView.setImageDrawable(drawable2);
                    }
                } else if (imageView instanceof d.g.n.g) {
                    ((d.g.n.g) imageView).setSupportImageTintList(colorStateListB);
                }
            }
            if (v0VarO.m(d.b.j.AppCompatImageView_tintMode)) {
                android.widget.ImageView imageView2 = this.a;
                android.graphics.PorterDuff.Mode modeD = d.b.q.c0.d(v0VarO.h(d.b.j.AppCompatImageView_tintMode, -1), null);
                if (android.os.Build.VERSION.SDK_INT >= 21) {
                    imageView2.setImageTintMode(modeD);
                    if (android.os.Build.VERSION.SDK_INT == 21 && (drawable = imageView2.getDrawable()) != null && imageView2.getImageTintList() != null) {
                        if (drawable.isStateful()) {
                            drawable.setState(imageView2.getDrawableState());
                        }
                        imageView2.setImageDrawable(drawable);
                    }
                } else if (imageView2 instanceof d.g.n.g) {
                    ((d.g.n.g) imageView2).setSupportImageTintMode(modeD);
                }
            }
            v0VarO.b.recycle();
        } catch (java.lang.Throwable th) {
            v0VarO.b.recycle();
            throw th;
        }
    }

    public void d(int i) {
        if (i != 0) {
            android.graphics.drawable.Drawable drawableB = d.b.l.a.a.b(this.a.getContext(), i);
            if (drawableB != null) {
                d.b.q.c0.b(drawableB);
            }
            this.a.setImageDrawable(drawableB);
        } else {
            this.a.setImageDrawable(null);
        }
        a();
    }

    public void e(android.content.res.ColorStateList colorStateList) {
        if (this.b == null) {
            this.b = new d.b.q.t0();
        }
        d.b.q.t0 t0Var = this.b;
        t0Var.a = colorStateList;
        t0Var.f1830d = true;
        a();
    }

    public void f(android.graphics.PorterDuff.Mode mode) {
        if (this.b == null) {
            this.b = new d.b.q.t0();
        }
        d.b.q.t0 t0Var = this.b;
        t0Var.b = mode;
        t0Var.f1829c = true;
        a();
    }
}
