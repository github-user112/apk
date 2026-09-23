package d.b.q;

/* loaded from: classes.dex */
public class r extends android.widget.SeekBar {
    public final d.b.q.s a;

    /* JADX WARN: Illegal instructions before constructor call */
    public r(android.content.Context context, android.util.AttributeSet attributeSet) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int i = d.b.a.seekBarStyle;
        super(context, attributeSet, i);
        d.b.q.s sVar = new d.b.q.s(this);
        this.a = sVar;
        sVar.a(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        d.b.q.s sVar = this.a;
        android.graphics.drawable.Drawable drawable = sVar.f1824e;
        if (drawable != null && drawable.isStateful() && drawable.setState(sVar.f1823d.getDrawableState())) {
            sVar.f1823d.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        android.graphics.drawable.Drawable drawable = this.a.f1824e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        this.a.d(canvas);
    }
}
