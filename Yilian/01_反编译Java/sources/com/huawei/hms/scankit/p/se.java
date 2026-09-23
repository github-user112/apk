package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class se {
    public static final java.lang.Object a = new java.lang.Object();

    /* renamed from: d, reason: collision with root package name */
    public int f816d;

    /* renamed from: e, reason: collision with root package name */
    public long f817e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f818f;

    /* renamed from: g, reason: collision with root package name */
    public float f819g;
    public int[] h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public android.graphics.Path o;
    public android.graphics.PathMeasure p;
    public final java.util.ArrayList<com.huawei.hms.scankit.p.qe> b = new java.util.ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public final java.util.ArrayList<com.huawei.hms.scankit.p.qe> f815c = new java.util.ArrayList<>();
    public boolean n = false;
    public com.huawei.hms.scankit.p.ve q = new com.huawei.hms.scankit.p.ve();
    public com.huawei.hms.scankit.p.xe r = new com.huawei.hms.scankit.p.xe();

    public se(int i, long j) {
        a(i, j);
        a((android.graphics.Bitmap) null);
    }

    private int a(int i, int i2) {
        return i == i2 ? i : i < i2 ? com.huawei.hms.scankit.p.ze.a(i2 - i) + i : com.huawei.hms.scankit.p.ze.a(i - i2) + i2;
    }

    private void a(int i) {
        synchronized (a) {
            this.i = 0;
        }
        this.f819g = i / 1000.0f;
        this.f818f = true;
    }

    private void a(int i, long j) {
        this.h = new int[2];
        this.f816d = i;
        this.f817e = j;
    }

    private void a(android.graphics.Bitmap bitmap) {
        for (int i = 0; i < this.f816d; i++) {
            this.b.add(new com.huawei.hms.scankit.p.qe(bitmap));
        }
    }

    private void a(android.graphics.Rect rect) {
        int i = rect.left - this.h[0];
        this.k = i;
        this.j = rect.width() + i;
        int i2 = rect.top - this.h[1];
        this.m = i2;
        this.l = rect.height() + i2;
    }

    private void a(com.huawei.hms.scankit.p.te teVar) {
        if (this.q == null) {
            this.q = new com.huawei.hms.scankit.p.ve();
        }
        this.q.a(teVar);
    }

    private void a(com.huawei.hms.scankit.p.we weVar) {
        if (this.r == null) {
            this.r = new com.huawei.hms.scankit.p.xe();
        }
        this.r.a(weVar);
    }

    private void b(long j) {
        int iA;
        int iA2;
        android.graphics.PathMeasure pathMeasure;
        com.huawei.hms.scankit.p.qe qeVarRemove = this.b.remove(0);
        this.r.a(qeVarRemove);
        if (!this.n || (pathMeasure = this.p) == null) {
            iA = a(this.k, this.j);
            iA2 = a(this.m, this.l);
        } else {
            float[] fArrB = b(0.0f, pathMeasure.getLength());
            iA = (int) fArrB[0];
            iA2 = (int) fArrB[1];
        }
        qeVarRemove.a(this.f817e, iA, iA2, j, this.q);
        synchronized (a) {
            this.f815c.add(qeVarRemove);
            this.i++;
        }
    }

    private float[] b(float f2, float f3) {
        float fA = java.lang.Float.compare(f2, f3) <= 0 ? com.huawei.hms.scankit.p.ze.a(f3 - f2) + f2 : f3 + com.huawei.hms.scankit.p.ze.a(f2 - f3);
        if (this.p == null) {
            this.p = new android.graphics.PathMeasure(this.o, true);
        }
        float[] fArr = new float[2];
        this.p.getPosTan(fA, fArr, null);
        float f4 = fArr[0];
        int[] iArr = this.h;
        fArr[0] = f4 - iArr[0];
        fArr[1] = fArr[1] - iArr[1];
        return fArr;
    }

    private void c() {
        java.util.ArrayList arrayList;
        synchronized (a) {
            arrayList = new java.util.ArrayList(this.f815c);
        }
        this.b.addAll(arrayList);
    }

    public com.huawei.hms.scankit.p.se a(float f2, float f3) {
        a(new com.huawei.hms.scankit.p.ye(f2, f3));
        return this;
    }

    public com.huawei.hms.scankit.p.se a(int i, int i2, long j, long j2, android.view.animation.Interpolator interpolator) {
        a(new com.huawei.hms.scankit.p.ue(i, i2, j, j2, interpolator));
        return this;
    }

    public void a() {
        c();
    }

    public void a(long j) {
        boolean z = this.f818f;
        float f2 = this.f819g * j;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        synchronized (a) {
            while (z) {
                if (this.b.isEmpty() || this.i >= f2) {
                    break;
                } else {
                    b(j);
                }
            }
            java.util.Iterator<com.huawei.hms.scankit.p.qe> it = this.f815c.iterator();
            while (it.hasNext()) {
                com.huawei.hms.scankit.p.qe next = it.next();
                if (!next.a(j)) {
                    it.remove();
                    arrayList.add(next);
                }
            }
        }
        this.b.addAll(arrayList);
    }

    public void a(android.graphics.Rect rect, int i) {
        a(rect);
        a(i);
    }

    public java.util.List<com.huawei.hms.scankit.p.qe> b() {
        java.util.List<com.huawei.hms.scankit.p.qe> listUnmodifiableList;
        synchronized (a) {
            listUnmodifiableList = java.util.Collections.unmodifiableList(this.f815c);
        }
        return listUnmodifiableList;
    }
}
