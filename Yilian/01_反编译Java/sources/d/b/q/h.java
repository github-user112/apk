package d.b.q;

/* loaded from: classes.dex */
public class h {
    public final android.widget.CompoundButton a;
    public android.content.res.ColorStateList b = null;

    /* renamed from: c, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f1782c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1783d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1784e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1785f;

    public h(android.widget.CompoundButton compoundButton) {
        this.a = compoundButton;
    }

    public void a() throws java.lang.NoSuchFieldException {
        android.graphics.drawable.Drawable drawableZ = d.b.k.r.z(this.a);
        if (drawableZ != null) {
            if (this.f1783d || this.f1784e) {
                android.graphics.drawable.Drawable drawableMutate = d.b.k.r.A0(drawableZ).mutate();
                if (this.f1783d) {
                    d.b.k.r.t0(drawableMutate, this.b);
                }
                if (this.f1784e) {
                    d.b.k.r.u0(drawableMutate, this.f1782c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.a.getDrawableState());
                }
                this.a.setButtonDrawable(drawableMutate);
            }
        }
    }

    public int b(int i) {
        android.graphics.drawable.Drawable drawableZ;
        return (android.os.Build.VERSION.SDK_INT >= 17 || (drawableZ = d.b.k.r.z(this.a)) == null) ? i : i + drawableZ.getIntrinsicWidth();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(android.util.AttributeSet attributeSet, int i) {
        boolean z;
        int resourceId;
        int resourceId2;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = this.a.getContext().obtainStyledAttributes(attributeSet, d.b.j.CompoundButton, i, 0);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(d.b.j.CompoundButton_buttonCompat) || (resourceId2 = typedArrayObtainStyledAttributes.getResourceId(d.b.j.CompoundButton_buttonCompat, 0)) == 0) {
                z = false;
            } else {
                try {
                    this.a.setButtonDrawable(d.b.l.a.a.b(this.a.getContext(), resourceId2));
                    z = true;
                } catch (android.content.res.Resources.NotFoundException unused) {
                }
            }
            if (!z && typedArrayObtainStyledAttributes.hasValue(d.b.j.CompoundButton_android_button) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(d.b.j.CompoundButton_android_button, 0)) != 0) {
                this.a.setButtonDrawable(d.b.l.a.a.b(this.a.getContext(), resourceId));
            }
            if (typedArrayObtainStyledAttributes.hasValue(d.b.j.CompoundButton_buttonTint)) {
                android.widget.CompoundButton compoundButton = this.a;
                android.content.res.ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(d.b.j.CompoundButton_buttonTint);
                if (android.os.Build.VERSION.SDK_INT >= 21) {
                    compoundButton.setButtonTintList(colorStateList);
                } else if (compoundButton instanceof d.g.n.e) {
                    ((d.g.n.e) compoundButton).setSupportButtonTintList(colorStateList);
                }
            }
            if (typedArrayObtainStyledAttributes.hasValue(d.b.j.CompoundButton_buttonTintMode)) {
                android.widget.CompoundButton compoundButton2 = this.a;
                android.graphics.PorterDuff.Mode modeD = d.b.q.c0.d(typedArrayObtainStyledAttributes.getInt(d.b.j.CompoundButton_buttonTintMode, -1), null);
                if (android.os.Build.VERSION.SDK_INT >= 21) {
                    compoundButton2.setButtonTintMode(modeD);
                } else if (compoundButton2 instanceof d.g.n.e) {
                    ((d.g.n.e) compoundButton2).setSupportButtonTintMode(modeD);
                }
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
