package e.c.a.b.j;

/* loaded from: classes.dex */
public class f implements android.animation.TypeEvaluator<android.graphics.Matrix> {
    public final float[] a = new float[9];
    public final float[] b = new float[9];

    /* renamed from: c, reason: collision with root package name */
    public final android.graphics.Matrix f2608c = new android.graphics.Matrix();

    @Override // android.animation.TypeEvaluator
    public android.graphics.Matrix evaluate(float f2, android.graphics.Matrix matrix, android.graphics.Matrix matrix2) {
        matrix.getValues(this.a);
        matrix2.getValues(this.b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.b;
            float f3 = fArr[i];
            float[] fArr2 = this.a;
            fArr[i] = ((f3 - fArr2[i]) * f2) + fArr2[i];
        }
        this.f2608c.setValues(this.b);
        return this.f2608c;
    }
}
