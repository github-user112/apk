package d.b.q;

/* loaded from: classes.dex */
public class k extends android.widget.ImageButton implements d.g.m.n, d.g.n.g {
    public final d.b.q.e a;
    public final d.b.q.l b;

    public k(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, d.b.a.imageButtonStyle);
    }

    public k(android.content.Context context, android.util.AttributeSet attributeSet, int i) {
        super(d.b.q.s0.a(context), attributeSet, i);
        d.b.q.e eVar = new d.b.q.e(this);
        this.a = eVar;
        eVar.d(attributeSet, i);
        d.b.q.l lVar = new d.b.q.l(this);
        this.b = lVar;
        lVar.c(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.a();
        }
        d.b.q.l lVar = this.b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // d.g.m.n
    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // d.g.m.n
    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // d.g.n.g
    public android.content.res.ColorStateList getSupportImageTintList() {
        d.b.q.t0 t0Var;
        d.b.q.l lVar = this.b;
        if (lVar == null || (t0Var = lVar.b) == null) {
            return null;
        }
        return t0Var.a;
    }

    @Override // d.g.n.g
    public android.graphics.PorterDuff.Mode getSupportImageTintMode() {
        d.b.q.t0 t0Var;
        d.b.q.l lVar = this.b;
        if (lVar == null || (t0Var = lVar.b) == null) {
            return null;
        }
        return t0Var.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.b.b() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.f(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(android.graphics.Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        d.b.q.l lVar = this.b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(android.graphics.drawable.Drawable drawable) {
        super.setImageDrawable(drawable);
        d.b.q.l lVar = this.b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.b.d(i);
    }

    @Override // android.widget.ImageView
    public void setImageURI(android.net.Uri uri) {
        super.setImageURI(uri);
        d.b.q.l lVar = this.b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    @Override // d.g.n.g
    public void setSupportImageTintList(android.content.res.ColorStateList colorStateList) {
        d.b.q.l lVar = this.b;
        if (lVar != null) {
            lVar.e(colorStateList);
        }
    }

    @Override // d.g.n.g
    public void setSupportImageTintMode(android.graphics.PorterDuff.Mode mode) {
        d.b.q.l lVar = this.b;
        if (lVar != null) {
            lVar.f(mode);
        }
    }
}
