package net.easyconn.ui.widget;

/* loaded from: classes.dex */
public class CarbitSeekBar extends d.b.q.r {
    public android.graphics.drawable.Drawable b;

    /* renamed from: c, reason: collision with root package name */
    public android.graphics.drawable.Drawable f3210c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3211d;

    public CarbitSeekBar(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        if (attributeSet != null) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, net.easyconn.R.styleable.CarbitSeekBar, 0, 0);
            this.b = d.g.f.a.d(context, net.easyconn.R.drawable.yltp_dlna_seekbar_thumb_unclick);
            this.f3210c = d.g.f.a.d(context, net.easyconn.R.drawable.yltp_dlna_seekbar_thumb_unclick);
            typedArrayObtainStyledAttributes.recycle();
            if (this.b == null || this.f3210c == null) {
                throw new java.lang.IllegalStateException("mThumb or defaultThumb should not be null");
            }
        }
    }

    @Override // d.b.q.r, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            android.util.Log.d("CarbitSeekBar", "seekbar down");
            if (!this.f3211d) {
                setThumb(this.b);
                this.f3211d = true;
            }
        } else if (action == 1 && this.f3211d) {
            setThumb(this.f3210c);
            this.f3211d = false;
        }
        return super.onTouchEvent(motionEvent);
    }
}
