package d.b.q;

/* loaded from: classes.dex */
public class b extends android.graphics.drawable.Drawable {
    public final androidx.appcompat.widget.ActionBarContainer a;

    public b(androidx.appcompat.widget.ActionBarContainer actionBarContainer) {
        this.a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        androidx.appcompat.widget.ActionBarContainer actionBarContainer = this.a;
        if (actionBarContainer.h) {
            android.graphics.drawable.Drawable drawable = actionBarContainer.f42g;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        android.graphics.drawable.Drawable drawable2 = actionBarContainer.f40e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        androidx.appcompat.widget.ActionBarContainer actionBarContainer2 = this.a;
        android.graphics.drawable.Drawable drawable3 = actionBarContainer2.f41f;
        if (drawable3 == null || !actionBarContainer2.i) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(android.graphics.Outline outline) {
        android.graphics.drawable.Drawable drawable;
        androidx.appcompat.widget.ActionBarContainer actionBarContainer = this.a;
        if (actionBarContainer.h) {
            drawable = actionBarContainer.f42g;
            if (drawable == null) {
                return;
            }
        } else {
            drawable = actionBarContainer.f40e;
            if (drawable == null) {
                return;
            }
        }
        drawable.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
    }
}
