package d.s;

/* loaded from: classes.dex */
public class i implements android.animation.TypeEvaluator<android.graphics.Rect> {
    @Override // android.animation.TypeEvaluator
    public android.graphics.Rect evaluate(float f2, android.graphics.Rect rect, android.graphics.Rect rect2) {
        android.graphics.Rect rect3 = rect;
        android.graphics.Rect rect4 = rect2;
        return new android.graphics.Rect(rect3.left + ((int) ((rect4.left - r0) * f2)), rect3.top + ((int) ((rect4.top - r1) * f2)), rect3.right + ((int) ((rect4.right - r2) * f2)), rect3.bottom + ((int) ((rect4.bottom - r6) * f2)));
    }
}
