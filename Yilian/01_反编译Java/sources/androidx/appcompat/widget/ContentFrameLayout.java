package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class ContentFrameLayout extends android.widget.FrameLayout {
    public android.util.TypedValue a;
    public android.util.TypedValue b;

    /* renamed from: c, reason: collision with root package name */
    public android.util.TypedValue f55c;

    /* renamed from: d, reason: collision with root package name */
    public android.util.TypedValue f56d;

    /* renamed from: e, reason: collision with root package name */
    public android.util.TypedValue f57e;

    /* renamed from: f, reason: collision with root package name */
    public android.util.TypedValue f58f;

    /* renamed from: g, reason: collision with root package name */
    public final android.graphics.Rect f59g;
    public androidx.appcompat.widget.ContentFrameLayout.a h;

    public interface a {
    }

    public ContentFrameLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f59g = new android.graphics.Rect();
    }

    public void a(android.graphics.Rect rect) {
        fitSystemWindows(rect);
    }

    public android.util.TypedValue getFixedHeightMajor() {
        if (this.f57e == null) {
            this.f57e = new android.util.TypedValue();
        }
        return this.f57e;
    }

    public android.util.TypedValue getFixedHeightMinor() {
        if (this.f58f == null) {
            this.f58f = new android.util.TypedValue();
        }
        return this.f58f;
    }

    public android.util.TypedValue getFixedWidthMajor() {
        if (this.f55c == null) {
            this.f55c = new android.util.TypedValue();
        }
        return this.f55c;
    }

    public android.util.TypedValue getFixedWidthMinor() {
        if (this.f56d == null) {
            this.f56d = new android.util.TypedValue();
        }
        return this.f56d;
    }

    public android.util.TypedValue getMinWidthMajor() {
        if (this.a == null) {
            this.a = new android.util.TypedValue();
        }
        return this.a;
    }

    public android.util.TypedValue getMinWidthMinor() {
        if (this.b == null) {
            this.b = new android.util.TypedValue();
        }
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        androidx.appcompat.widget.ContentFrameLayout.a aVar = this.h;
        if (aVar != null && ((d.b.k.n) aVar) == null) {
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        androidx.appcompat.widget.ContentFrameLayout.a aVar = this.h;
        if (aVar != null) {
            d.b.k.k kVar = ((d.b.k.n) aVar).a;
            d.b.q.a0 a0Var = kVar.k;
            if (a0Var != null) {
                a0Var.l();
            }
            if (kVar.p != null) {
                kVar.f1631e.getDecorView().removeCallbacks(kVar.q);
                if (kVar.p.isShowing()) {
                    try {
                        kVar.p.dismiss();
                    } catch (java.lang.IllegalArgumentException unused) {
                    }
                }
                kVar.p = null;
            }
            kVar.y();
            d.b.p.i.g gVar = kVar.D(0).h;
            if (gVar != null) {
                gVar.c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00db  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(androidx.appcompat.widget.ContentFrameLayout.a aVar) {
        this.h = aVar;
    }
}
