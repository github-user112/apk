package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class FitWindowsFrameLayout extends android.widget.FrameLayout implements d.b.q.e0 {
    public d.b.q.e0.a a;

    public FitWindowsFrameLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(android.graphics.Rect rect) {
        d.b.q.e0.a aVar = this.a;
        if (aVar != null) {
            rect.top = ((d.b.k.m) aVar).a.M(rect.top);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // d.b.q.e0
    public void setOnFitSystemWindowsListener(d.b.q.e0.a aVar) {
        this.a = aVar;
    }
}
