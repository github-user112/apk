package d.f.d;

/* loaded from: classes.dex */
public class b {
    public static final java.lang.ThreadLocal<android.graphics.Matrix> a = new java.lang.ThreadLocal<>();
    public static final java.lang.ThreadLocal<android.graphics.RectF> b = new java.lang.ThreadLocal<>();

    public static void a(android.view.ViewGroup viewGroup, android.view.View view, android.graphics.Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        android.graphics.Matrix matrix = a.get();
        if (matrix == null) {
            matrix = new android.graphics.Matrix();
            a.set(matrix);
        } else {
            matrix.reset();
        }
        b(viewGroup, view, matrix);
        android.graphics.RectF rectF = b.get();
        if (rectF == null) {
            rectF = new android.graphics.RectF();
            b.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public static void b(android.view.ViewParent viewParent, android.view.View view, android.graphics.Matrix matrix) {
        java.lang.Object parent = view.getParent();
        if ((parent instanceof android.view.View) && parent != viewParent) {
            b(viewParent, (android.view.View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }
}
