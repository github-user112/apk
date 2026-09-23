package d.b.m.a;

@android.annotation.SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
public class d extends d.b.m.a.b {
    public d.b.m.a.d.a m;
    public boolean n;

    public static class a extends d.b.m.a.b.c {
        public int[][] J;

        public a(d.b.m.a.d.a aVar, d.b.m.a.d dVar, android.content.res.Resources resources) {
            super(aVar, dVar, resources);
            if (aVar != null) {
                this.J = aVar.J;
            } else {
                this.J = new int[this.f1673g.length][];
            }
        }

        @Override // d.b.m.a.b.c
        public void e() {
            int[][] iArr = this.J;
            int[][] iArr2 = new int[iArr.length][];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr3 = this.J;
                iArr2[length] = iArr3[length] != null ? (int[]) iArr3[length].clone() : null;
            }
            this.J = iArr2;
        }

        public int g(int[] iArr) {
            int[][] iArr2 = this.J;
            int i = this.h;
            for (int i2 = 0; i2 < i; i2++) {
                if (android.util.StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable() {
            return new d.b.m.a.d(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources resources) {
            return new d.b.m.a.d(this, resources);
        }
    }

    public d(d.b.m.a.d.a aVar) {
    }

    public d(d.b.m.a.d.a aVar, android.content.res.Resources resources) {
        f(new d.b.m.a.d.a(aVar, this, resources));
        onStateChange(getState());
    }

    @Override // d.b.m.a.b, android.graphics.drawable.Drawable
    public void applyTheme(android.content.res.Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // d.b.m.a.b
    public void f(d.b.m.a.b.c cVar) {
        super.f(cVar);
        if (cVar instanceof d.b.m.a.d.a) {
            this.m = (d.b.m.a.d.a) cVar;
        }
    }

    @Override // d.b.m.a.b
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public d.b.m.a.d.a b() {
        return new d.b.m.a.d.a(this.m, this, null);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // d.b.m.a.b, android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable mutate() {
        if (!this.n) {
            super.mutate();
            if (this == this) {
                this.m.e();
                this.n = true;
            }
        }
        return this;
    }

    @Override // d.b.m.a.b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        int iG = this.m.g(iArr);
        if (iG < 0) {
            iG = this.m.g(android.util.StateSet.WILD_CARD);
        }
        return e(iG) || zOnStateChange;
    }
}
