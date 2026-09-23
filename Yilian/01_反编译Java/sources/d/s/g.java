package d.s;

/* loaded from: classes.dex */
public class g<T> extends android.util.Property<T, java.lang.Float> {
    public final android.util.Property<T, android.graphics.PointF> a;
    public final android.graphics.PathMeasure b;

    /* renamed from: c, reason: collision with root package name */
    public final float f2266c;

    /* renamed from: d, reason: collision with root package name */
    public final float[] f2267d;

    /* renamed from: e, reason: collision with root package name */
    public final android.graphics.PointF f2268e;

    /* renamed from: f, reason: collision with root package name */
    public float f2269f;

    public g(android.util.Property<T, android.graphics.PointF> property, android.graphics.Path path) {
        super(java.lang.Float.class, property.getName());
        this.f2267d = new float[2];
        this.f2268e = new android.graphics.PointF();
        this.a = property;
        android.graphics.PathMeasure pathMeasure = new android.graphics.PathMeasure(path, false);
        this.b = pathMeasure;
        this.f2266c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    public java.lang.Float get(java.lang.Object obj) {
        return java.lang.Float.valueOf(this.f2269f);
    }

    @Override // android.util.Property
    public void set(java.lang.Object obj, java.lang.Float f2) {
        java.lang.Float f3 = f2;
        this.f2269f = f3.floatValue();
        this.b.getPosTan(f3.floatValue() * this.f2266c, this.f2267d, null);
        android.graphics.PointF pointF = this.f2268e;
        float[] fArr = this.f2267d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.a.set(obj, pointF);
    }
}
