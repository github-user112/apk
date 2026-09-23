package com.google.android.exoplayer2.video.spherical;

/* loaded from: classes.dex */
public final class TouchTracker extends android.view.GestureDetector.SimpleOnGestureListener implements android.view.View.OnTouchListener, com.google.android.exoplayer2.video.spherical.OrientationListener.Listener {
    public static final float MAX_PITCH_DEGREES = 45.0f;
    public final android.view.GestureDetector gestureDetector;
    public final com.google.android.exoplayer2.video.spherical.TouchTracker.Listener listener;
    public final float pxPerDegrees;
    public final android.graphics.PointF previousTouchPointPx = new android.graphics.PointF();
    public final android.graphics.PointF accumulatedTouchOffsetDegrees = new android.graphics.PointF();
    public volatile float roll = 3.1415927f;

    public interface Listener {
        void onScrollChange(android.graphics.PointF pointF);

        boolean onSingleTapUp(android.view.MotionEvent motionEvent);
    }

    public TouchTracker(android.content.Context context, com.google.android.exoplayer2.video.spherical.TouchTracker.Listener listener, float f2) {
        this.listener = listener;
        this.pxPerDegrees = f2;
        this.gestureDetector = new android.view.GestureDetector(context, this);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(android.view.MotionEvent motionEvent) {
        this.previousTouchPointPx.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // com.google.android.exoplayer2.video.spherical.OrientationListener.Listener
    public void onOrientationChange(float[] fArr, float f2) {
        this.roll = -f2;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(android.view.MotionEvent motionEvent, android.view.MotionEvent motionEvent2, float f2, float f3) {
        float x = (motionEvent2.getX() - this.previousTouchPointPx.x) / this.pxPerDegrees;
        float y = motionEvent2.getY();
        android.graphics.PointF pointF = this.previousTouchPointPx;
        float f4 = (y - pointF.y) / this.pxPerDegrees;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d2 = this.roll;
        float fCos = (float) java.lang.Math.cos(d2);
        float fSin = (float) java.lang.Math.sin(d2);
        android.graphics.PointF pointF2 = this.accumulatedTouchOffsetDegrees;
        pointF2.x -= (fCos * x) - (fSin * f4);
        float f5 = (fCos * f4) + (fSin * x) + pointF2.y;
        pointF2.y = f5;
        pointF2.y = java.lang.Math.max(-45.0f, java.lang.Math.min(45.0f, f5));
        this.listener.onScrollChange(this.accumulatedTouchOffsetDegrees);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(android.view.MotionEvent motionEvent) {
        return this.listener.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
        return this.gestureDetector.onTouchEvent(motionEvent);
    }
}
