package e.c.a.b.m;

@android.annotation.TargetApi(21)
/* loaded from: classes.dex */
public class b extends android.graphics.drawable.RippleDrawable {
    public b(android.content.res.ColorStateList colorStateList, android.graphics.drawable.InsetDrawable insetDrawable, android.graphics.drawable.Drawable drawable) {
        super(colorStateList, insetDrawable, drawable);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        if (getDrawable(0) != null) {
            ((android.graphics.drawable.GradientDrawable) ((android.graphics.drawable.LayerDrawable) ((android.graphics.drawable.InsetDrawable) getDrawable(0)).getDrawable()).getDrawable(0)).setColorFilter(colorFilter);
        }
    }
}
