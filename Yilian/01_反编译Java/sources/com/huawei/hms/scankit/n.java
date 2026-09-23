package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class n implements android.view.View.OnTouchListener {
    public final /* synthetic */ com.huawei.hms.scankit.q a;

    public n(com.huawei.hms.scankit.q qVar) {
        this.a = qVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
        this.a.h.a(motionEvent);
        return true;
    }
}
