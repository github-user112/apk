package d.b.m.a;

@android.annotation.SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
public class a extends d.b.m.a.d implements d.g.g.l.a {
    public d.b.m.a.a.c o;
    public d.b.m.a.a.g p;
    public int q;
    public int r;
    public boolean s;

    public static class b extends d.b.m.a.a.g {
        public final android.graphics.drawable.Animatable a;

        public b(android.graphics.drawable.Animatable animatable) {
            super(null);
            this.a = animatable;
        }

        @Override // d.b.m.a.a.g
        public void c() {
            this.a.start();
        }

        @Override // d.b.m.a.a.g
        public void d() {
            this.a.stop();
        }
    }

    public static class c extends d.b.m.a.d.a {
        public d.e.e<java.lang.Long> K;
        public d.e.i<java.lang.Integer> L;

        public c(d.b.m.a.a.c cVar, d.b.m.a.a aVar, android.content.res.Resources resources) {
            d.e.i<java.lang.Integer> iVar;
            super(cVar, aVar, resources);
            if (cVar != null) {
                this.K = cVar.K;
                iVar = cVar.L;
            } else {
                this.K = new d.e.e<>();
                iVar = new d.e.i<>();
            }
            this.L = iVar;
        }

        public static long i(int i, int i2) {
            return i2 | (i << 32);
        }

        @Override // d.b.m.a.d.a, d.b.m.a.b.c
        public void e() {
            this.K = this.K.clone();
            this.L = this.L.clone();
        }

        public int h(int i, int i2, android.graphics.drawable.Drawable drawable, boolean z) {
            int iA = super.a(drawable);
            long jI = i(i, i2);
            long j = z ? com.google.android.exoplayer2.util.TimestampAdjuster.MAX_PTS_PLUS_ONE : 0L;
            long j2 = iA;
            this.K.a(jI, java.lang.Long.valueOf(j2 | j));
            if (z) {
                this.K.a(i(i2, i), java.lang.Long.valueOf(4294967296L | j2 | j));
            }
            return iA;
        }

        public int j(int i) {
            if (i < 0) {
                return 0;
            }
            return this.L.d(i, 0).intValue();
        }

        public int k(int[] iArr) {
            int iG = super.g(iArr);
            return iG >= 0 ? iG : super.g(android.util.StateSet.WILD_CARD);
        }

        @Override // d.b.m.a.d.a, android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable() {
            return new d.b.m.a.a(this, null);
        }

        @Override // d.b.m.a.d.a, android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources resources) {
            return new d.b.m.a.a(this, resources);
        }
    }

    public static class d extends d.b.m.a.a.g {
        public final d.t.a.a.b a;

        public d(d.t.a.a.b bVar) {
            super(null);
            this.a = bVar;
        }

        @Override // d.b.m.a.a.g
        public void c() {
            this.a.start();
        }

        @Override // d.b.m.a.a.g
        public void d() {
            this.a.stop();
        }
    }

    public static class e extends d.b.m.a.a.g {
        public final android.animation.ObjectAnimator a;
        public final boolean b;

        public e(android.graphics.drawable.AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super(null);
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            d.b.m.a.a.f fVar = new d.b.m.a.a.f(animationDrawable, z);
            android.animation.ObjectAnimator objectAnimatorOfInt = android.animation.ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (android.os.Build.VERSION.SDK_INT >= 18) {
                objectAnimatorOfInt.setAutoCancel(true);
            }
            objectAnimatorOfInt.setDuration(fVar.f1663c);
            objectAnimatorOfInt.setInterpolator(fVar);
            this.b = z2;
            this.a = objectAnimatorOfInt;
        }

        @Override // d.b.m.a.a.g
        public boolean a() {
            return this.b;
        }

        @Override // d.b.m.a.a.g
        public void b() {
            this.a.reverse();
        }

        @Override // d.b.m.a.a.g
        public void c() {
            this.a.start();
        }

        @Override // d.b.m.a.a.g
        public void d() {
            this.a.cancel();
        }
    }

    public static class f implements android.animation.TimeInterpolator {
        public int[] a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1663c;

        public f(android.graphics.drawable.AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.b = numberOfFrames;
            int[] iArr = this.a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.a = new int[numberOfFrames];
            }
            int[] iArr2 = this.a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f1663c = i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            int i = (int) ((f2 * this.f1663c) + 0.5f);
            int i2 = this.b;
            int[] iArr = this.a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f1663c : 0.0f);
        }
    }

    public static abstract class g {
        public g(d.b.m.a.a.C0034a c0034a) {
        }

        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();
    }

    public a() {
        this(null, null);
    }

    public a(d.b.m.a.a.c cVar, android.content.res.Resources resources) {
        super(null);
        this.q = -1;
        this.r = -1;
        d.b.m.a.a.c cVar2 = new d.b.m.a.a.c(cVar, this, resources);
        super.f(cVar2);
        this.o = cVar2;
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0208, code lost:
    
        r5.onStateChange(r5.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x020f, code lost:
    
        return r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static d.b.m.a.a h(android.content.Context r18, android.content.res.Resources r19, org.xmlpull.v1.XmlPullParser r20, android.util.AttributeSet r21, android.content.res.Resources.Theme r22) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.m.a.a.h(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):d.b.m.a.a");
    }

    @Override // d.b.m.a.d, d.b.m.a.b
    public d.b.m.a.b.c b() {
        return new d.b.m.a.a.c(this.o, this, null);
    }

    @Override // d.b.m.a.d, d.b.m.a.b
    public void f(d.b.m.a.b.c cVar) {
        super.f(cVar);
        if (cVar instanceof d.b.m.a.a.c) {
            this.o = (d.b.m.a.a.c) cVar;
        }
    }

    @Override // d.b.m.a.d
    /* renamed from: g */
    public d.b.m.a.d.a b() {
        return new d.b.m.a.a.c(this.o, this, null);
    }

    @Override // d.b.m.a.d, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // d.b.m.a.b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        d.b.m.a.a.g gVar = this.p;
        if (gVar != null) {
            gVar.d();
            this.p = null;
            e(this.q);
            this.q = -1;
            this.r = -1;
        }
    }

    @Override // d.b.m.a.d, d.b.m.a.b, android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable mutate() {
        if (!this.s) {
            super.mutate();
            if (this == this) {
                this.o.e();
                this.s = true;
            }
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e8  */
    @Override // d.b.m.a.d, d.b.m.a.b, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onStateChange(int[] r19) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.m.a.a.onStateChange(int[]):boolean");
    }

    @Override // d.b.m.a.b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.p != null && (visible || z2)) {
            if (z) {
                this.p.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
