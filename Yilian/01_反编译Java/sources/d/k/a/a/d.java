package d.k.a.a;

/* loaded from: classes.dex */
public abstract class d implements android.view.animation.Interpolator {
    public final float[] a;
    public final float b;

    public d(float[] fArr) {
        this.a = fArr;
        this.b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        if (f2 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.a;
        int iMin = java.lang.Math.min((int) ((fArr.length - 1) * f2), fArr.length - 2);
        float f3 = this.b;
        float f4 = (f2 - (iMin * f3)) / f3;
        float[] fArr2 = this.a;
        return ((fArr2[iMin + 1] - fArr2[iMin]) * f4) + fArr2[iMin];
    }
}
