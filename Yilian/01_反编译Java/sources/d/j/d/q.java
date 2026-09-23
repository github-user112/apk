package d.j.d;

/* loaded from: classes.dex */
public class q extends android.view.animation.AnimationSet implements java.lang.Runnable {
    public final android.view.ViewGroup a;
    public final android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2128c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2129d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2130e;

    public q(android.view.animation.Animation animation, android.view.ViewGroup viewGroup, android.view.View view) {
        super(false);
        this.f2130e = true;
        this.a = viewGroup;
        this.b = view;
        addAnimation(animation);
        this.a.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public boolean getTransformation(long j, android.view.animation.Transformation transformation) {
        this.f2130e = true;
        if (this.f2128c) {
            return !this.f2129d;
        }
        if (!super.getTransformation(j, transformation)) {
            this.f2128c = true;
            d.g.m.m.a(this.a, this);
        }
        return true;
    }

    @Override // android.view.animation.Animation
    public boolean getTransformation(long j, android.view.animation.Transformation transformation, float f2) {
        this.f2130e = true;
        if (this.f2128c) {
            return !this.f2129d;
        }
        if (!super.getTransformation(j, transformation, f2)) {
            this.f2128c = true;
            d.g.m.m.a(this.a, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2128c || !this.f2130e) {
            this.a.endViewTransition(this.b);
            this.f2129d = true;
        } else {
            this.f2130e = false;
            this.a.post(this);
        }
    }
}
