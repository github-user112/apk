package d.b.q;

/* loaded from: classes.dex */
public abstract class f0 implements android.view.View.OnTouchListener, android.view.View.OnAttachStateChangeListener {
    public final float a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1772c;

    /* renamed from: d, reason: collision with root package name */
    public final android.view.View f1773d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.Runnable f1774e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.Runnable f1775f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1776g;
    public int h;
    public final int[] i = new int[2];

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            android.view.ViewParent parent = d.b.q.f0.this.f1773d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.b.q.f0 f0Var = d.b.q.f0.this;
            f0Var.a();
            android.view.View view = f0Var.f1773d;
            if (view.isEnabled() && !view.isLongClickable() && f0Var.c()) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                long jUptimeMillis = android.os.SystemClock.uptimeMillis();
                android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
                f0Var.f1776g = true;
            }
        }
    }

    public f0(android.view.View view) {
        this.f1773d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.a = android.view.ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = android.view.ViewConfiguration.getTapTimeout();
        this.b = tapTimeout;
        this.f1772c = (android.view.ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        java.lang.Runnable runnable = this.f1775f;
        if (runnable != null) {
            this.f1773d.removeCallbacks(runnable);
        }
        java.lang.Runnable runnable2 = this.f1774e;
        if (runnable2 != null) {
            this.f1773d.removeCallbacks(runnable2);
        }
    }

    public abstract d.b.p.i.p b();

    public abstract boolean c();

    public boolean d() {
        d.b.p.i.p pVarB = b();
        if (pVarB == null || !pVarB.b()) {
            return true;
        }
        pVarB.dismiss();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0113  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r12, android.view.MotionEvent r13) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.f0.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(android.view.View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(android.view.View view) {
        this.f1776g = false;
        this.h = -1;
        java.lang.Runnable runnable = this.f1774e;
        if (runnable != null) {
            this.f1773d.removeCallbacks(runnable);
        }
    }
}
