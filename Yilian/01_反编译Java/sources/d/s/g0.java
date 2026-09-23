package d.s;

/* loaded from: classes.dex */
public class g0 {
    public void a(android.view.View view) {
        if (view.getVisibility() == 0) {
            view.setTag(d.s.h.save_non_transition_alpha, null);
        }
    }

    public float b(android.view.View view) {
        java.lang.Float f2 = (java.lang.Float) view.getTag(d.s.h.save_non_transition_alpha);
        float alpha = view.getAlpha();
        return f2 != null ? alpha / f2.floatValue() : alpha;
    }

    public void c(android.view.View view) {
        if (view.getTag(d.s.h.save_non_transition_alpha) == null) {
            view.setTag(d.s.h.save_non_transition_alpha, java.lang.Float.valueOf(view.getAlpha()));
        }
    }

    public void d(android.view.View view, int i, int i2, int i3, int i4) {
        view.setLeft(i);
        view.setTop(i2);
        view.setRight(i3);
        view.setBottom(i4);
    }

    public void e(android.view.View view, float f2) {
        java.lang.Float f3 = (java.lang.Float) view.getTag(d.s.h.save_non_transition_alpha);
        if (f3 != null) {
            view.setAlpha(f3.floatValue() * f2);
        } else {
            view.setAlpha(f2);
        }
    }

    public void f(android.view.View view, android.graphics.Matrix matrix) {
        java.lang.Object parent = view.getParent();
        if (parent instanceof android.view.View) {
            f((android.view.View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        android.graphics.Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        matrix.preConcat(matrix2);
    }

    public void g(android.view.View view, android.graphics.Matrix matrix) {
        java.lang.Object parent = view.getParent();
        if (parent instanceof android.view.View) {
            g((android.view.View) parent, matrix);
            matrix.postTranslate(r0.getScrollX(), r0.getScrollY());
        }
        matrix.postTranslate(view.getLeft(), view.getTop());
        android.graphics.Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        android.graphics.Matrix matrix3 = new android.graphics.Matrix();
        if (matrix2.invert(matrix3)) {
            matrix.postConcat(matrix3);
        }
    }
}
