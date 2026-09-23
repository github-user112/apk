package d.t.a.a;

/* loaded from: classes.dex */
public class d implements android.animation.TypeEvaluator {
    public static final d.t.a.a.d a = new d.t.a.a.d();

    @Override // android.animation.TypeEvaluator
    public java.lang.Object evaluate(float f2, java.lang.Object obj, java.lang.Object obj2) {
        int iIntValue = ((java.lang.Integer) obj).intValue();
        float f3 = ((iIntValue >> 24) & 255) / 255.0f;
        int iIntValue2 = ((java.lang.Integer) obj2).intValue();
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
