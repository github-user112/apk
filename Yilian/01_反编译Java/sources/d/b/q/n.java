package d.b.q;

/* loaded from: classes.dex */
public class n extends android.widget.PopupWindow {
    public static final boolean b;
    public boolean a;

    static {
        b = android.os.Build.VERSION.SDK_INT < 21;
    }

    public n(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        int resourceId;
        super(context, attributeSet, i, i2);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.PopupWindow, i, i2);
        if (typedArrayObtainStyledAttributes.hasValue(d.b.j.PopupWindow_overlapAnchor)) {
            boolean z = typedArrayObtainStyledAttributes.getBoolean(d.b.j.PopupWindow_overlapAnchor, false);
            if (b) {
                this.a = z;
            } else {
                d.b.k.r.q0(this, z);
            }
        }
        int i3 = d.b.j.PopupWindow_android_popupBackground;
        setBackgroundDrawable((!typedArrayObtainStyledAttributes.hasValue(i3) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(i3, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(i3) : d.b.l.a.a.b(context, resourceId));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(android.view.View view, int i, int i2) {
        if (b && this.a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(android.view.View view, int i, int i2, int i3) {
        if (b && this.a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(android.view.View view, int i, int i2, int i3, int i4) {
        if (b && this.a) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }
}
