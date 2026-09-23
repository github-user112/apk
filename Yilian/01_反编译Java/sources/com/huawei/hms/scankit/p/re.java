package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class re {
    public long a = 0;
    public long b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f802c;

    /* renamed from: d, reason: collision with root package name */
    public int f803d;

    /* renamed from: e, reason: collision with root package name */
    public int f804e;

    /* renamed from: f, reason: collision with root package name */
    public float f805f;

    /* renamed from: g, reason: collision with root package name */
    public android.graphics.Rect f806g;
    public com.huawei.hms.scankit.p.se h;

    public re(com.huawei.hms.scankit.p.se seVar, android.graphics.Rect rect, int i, float f2, int[] iArr) {
        this.f802c = 0;
        this.f803d = 0;
        this.h = seVar;
        this.f806g = rect;
        this.f804e = i;
        if (iArr != null && iArr.length >= 2) {
            this.f802c = iArr[0];
            this.f803d = iArr[1];
        }
        this.f805f = f2;
        c();
    }

    private void a() {
        com.huawei.hms.scankit.p.se seVar = this.h;
        if (seVar != null) {
            seVar.a();
        }
    }

    private void a(android.graphics.Canvas canvas, android.graphics.Rect rect, java.util.List<com.huawei.hms.scankit.p.qe> list) {
        for (com.huawei.hms.scankit.p.qe qeVar : list) {
            android.graphics.Paint paint = new android.graphics.Paint();
            if (qeVar.b() == 0) {
                qeVar.b(b());
            }
            paint.setColor(qeVar.b());
            boolean z = qeVar.d() > ((float) java.lang.Math.max(rect.top, rect.bottom)) || qeVar.d() < ((float) java.lang.Math.min(rect.top, rect.bottom));
            float fD = 0.0f;
            if (rect.height() != 0 && rect.width() != 0 && !z) {
                fD = (rect.bottom - qeVar.d()) / rect.height();
            }
            int iAbs = (int) (java.lang.Math.abs(fD) * qeVar.a());
            if (iAbs > 0) {
                paint.setAlpha(iAbs);
                canvas.drawCircle(qeVar.c(), qeVar.d(), qeVar.f() * this.f805f, paint);
            }
        }
    }

    private int b() {
        float fA = com.huawei.hms.scankit.p.ze.a(1.0f);
        int iRed = android.graphics.Color.red(this.f802c);
        int iBlue = android.graphics.Color.blue(this.f802c);
        int iGreen = android.graphics.Color.green(this.f802c);
        int iRed2 = android.graphics.Color.red(this.f803d);
        int iBlue2 = android.graphics.Color.blue(this.f803d);
        return android.graphics.Color.rgb((int) (((iRed2 - iRed) * fA) + 0.5f + iRed), (int) (((android.graphics.Color.green(this.f803d) - iGreen) * fA) + 0.5f + iGreen), (int) (((iBlue2 - iBlue) * fA) + 0.5f + iBlue));
    }

    private void c() {
        android.graphics.Rect rect;
        a();
        this.b = 0L;
        this.a = java.lang.System.currentTimeMillis();
        com.huawei.hms.scankit.p.se seVar = this.h;
        if (seVar == null || (rect = this.f806g) == null) {
            return;
        }
        seVar.a(rect, this.f804e);
    }

    public void a(android.graphics.Canvas canvas, android.graphics.Rect rect) {
        if (this.h == null || canvas == null || rect == null) {
            return;
        }
        long jCurrentTimeMillis = this.b + (java.lang.System.currentTimeMillis() - this.a);
        this.b = jCurrentTimeMillis;
        this.h.a(jCurrentTimeMillis);
        java.util.List<com.huawei.hms.scankit.p.qe> listB = this.h.b();
        if (listB == null || listB.isEmpty()) {
            return;
        }
        a(canvas, rect, listB);
        this.a = java.lang.System.currentTimeMillis();
    }
}
