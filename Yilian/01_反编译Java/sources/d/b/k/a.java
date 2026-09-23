package d.b.k;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: d.b.k.a$a, reason: collision with other inner class name */
    public static class C0031a extends android.view.ViewGroup.MarginLayoutParams {
        public int a;

        public C0031a(int i, int i2) {
            super(i, i2);
            this.a = 0;
            this.a = 8388627;
        }

        public C0031a(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.ActionBarLayout);
            this.a = typedArrayObtainStyledAttributes.getInt(d.b.j.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0031a(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0;
        }

        public C0031a(d.b.k.a.C0031a c0031a) {
            super((android.view.ViewGroup.MarginLayoutParams) c0031a);
            this.a = 0;
            this.a = c0031a.a;
        }
    }

    public interface b {
        void a(boolean z);
    }

    @java.lang.Deprecated
    public static abstract class c {
        public abstract void a();
    }

    public abstract boolean a();

    public abstract void b(boolean z);

    public abstract int c();

    public abstract android.content.Context d();

    public abstract void e(android.content.res.Configuration configuration);

    public abstract boolean f(int i, android.view.KeyEvent keyEvent);

    public abstract void g(boolean z);

    public abstract void h(boolean z);

    public abstract void i(java.lang.CharSequence charSequence);

    public abstract d.b.p.a j(d.b.p.a.InterfaceC0036a interfaceC0036a);
}
