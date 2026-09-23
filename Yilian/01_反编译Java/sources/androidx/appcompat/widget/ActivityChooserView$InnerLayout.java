package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class ActivityChooserView$InnerLayout extends android.widget.LinearLayout {
    public static final int[] a = {android.R.attr.background};

    public ActivityChooserView$InnerLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        int resourceId;
        super(context, attributeSet);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a);
        setBackgroundDrawable((!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : d.b.l.a.a.b(context, resourceId));
        typedArrayObtainStyledAttributes.recycle();
    }
}
