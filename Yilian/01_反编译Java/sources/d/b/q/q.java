package d.b.q;

/* loaded from: classes.dex */
public class q extends android.widget.RatingBar {
    public final d.b.q.o a;

    /* JADX WARN: Illegal instructions before constructor call */
    public q(android.content.Context context, android.util.AttributeSet attributeSet) {
        int i = d.b.a.ratingBarStyle;
        super(context, attributeSet, i);
        d.b.q.o oVar = new d.b.q.o(this);
        this.a = oVar;
        oVar.a(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        android.graphics.Bitmap bitmap = this.a.b;
        if (bitmap != null) {
            setMeasuredDimension(android.view.View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }
}
