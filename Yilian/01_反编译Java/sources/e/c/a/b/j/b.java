package e.c.a.b.j;

/* loaded from: classes.dex */
public class b implements android.animation.TypeEvaluator<java.lang.Integer> {
    public static final e.c.a.b.j.b a = new e.c.a.b.j.b();

    @Override // android.animation.TypeEvaluator
    public java.lang.Integer evaluate(float f2, java.lang.Integer num, java.lang.Integer num2) {
        int iIntValue = num.intValue();
        float f3 = ((iIntValue >> 24) & 255) / 255.0f;
        int iIntValue2 = num2.intValue();
        float f4 = ((iIntValue2 >> 24) & 255) / 255.0f;
        float fPow = (float) java.lang.Math.pow(((iIntValue >> 16) & 255) / 255.0f, 2.2d);
        float fPow2 = (float) java.lang.Math.pow(((iIntValue >> 8) & 255) / 255.0f, 2.2d);
        float fPow3 = (float) java.lang.Math.pow((iIntValue & 255) / 255.0f, 2.2d);
        float fPow4 = (float) java.lang.Math.pow(((iIntValue2 >> 16) & 255) / 255.0f, 2.2d);
        float fPow5 = ((((float) java.lang.Math.pow(((iIntValue2 >> 8) & 255) / 255.0f, 2.2d)) - fPow2) * f2) + fPow2;
        float fPow6 = ((((float) java.lang.Math.pow((iIntValue2 & 255) / 255.0f, 2.2d)) - fPow3) * f2) + fPow3;
        float f5 = (((f4 - f3) * f2) + f3) * 255.0f;
        return java.lang.Integer.valueOf((java.lang.Math.round(((float) java.lang.Math.pow(((fPow4 - fPow) * f2) + fPow, 0.45454545454545453d)) * 255.0f) << 16) | (java.lang.Math.round(f5) << 24) | (java.lang.Math.round(((float) java.lang.Math.pow(fPow5, 0.45454545454545453d)) * 255.0f) << 8) | java.lang.Math.round(((float) java.lang.Math.pow(fPow6, 0.45454545454545453d)) * 255.0f));
    }
}
