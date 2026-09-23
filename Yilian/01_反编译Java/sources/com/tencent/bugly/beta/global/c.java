package com.tencent.bugly.beta.global;

/* loaded from: classes.dex */
public class c implements android.view.View.OnTouchListener {
    public final int a;
    public final java.lang.Object[] b;

    public c(int i, java.lang.Object... objArr) {
        this.a = i;
        this.b = objArr;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
        try {
        } catch (java.lang.Exception e2) {
            if (!com.tencent.bugly.proguard.aa.a(e2)) {
                e2.printStackTrace();
            }
        }
        if (this.a != 1) {
            return false;
        }
        int action = motionEvent.getAction();
        view.setBackgroundDrawable((action == 0 || action == 2) ? (android.graphics.drawable.Drawable) this.b[0] : (android.graphics.drawable.Drawable) this.b[1]);
        return false;
    }
}
