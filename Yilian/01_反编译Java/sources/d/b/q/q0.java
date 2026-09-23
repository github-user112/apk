package d.b.q;

/* loaded from: classes.dex */
public class q0 {
    public static final java.lang.ThreadLocal<android.util.TypedValue> a = new java.lang.ThreadLocal<>();
    public static final int[] b = {-16842910};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f1818c = {android.R.attr.state_focused};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f1819d = {android.R.attr.state_pressed};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f1820e = {android.R.attr.state_checked};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f1821f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f1822g = new int[1];

    public static int a(android.content.Context context, int i) {
        android.content.res.ColorStateList colorStateListC = c(context, i);
        if (colorStateListC != null && colorStateListC.isStateful()) {
            return colorStateListC.getColorForState(b, colorStateListC.getDefaultColor());
        }
        android.util.TypedValue typedValue = a.get();
        if (typedValue == null) {
            typedValue = new android.util.TypedValue();
            a.set(typedValue);
        }
        context.getTheme().resolveAttribute(android.R.attr.disabledAlpha, typedValue, true);
        float f2 = typedValue.getFloat();
        return d.g.g.a.c(b(context, i), java.lang.Math.round(android.graphics.Color.alpha(r4) * f2));
    }

    public static int b(android.content.Context context, int i) {
        int[] iArr = f1822g;
        iArr[0] = i;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((android.util.AttributeSet) null, iArr);
        try {
            return typedArrayObtainStyledAttributes.getColor(0, 0);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static android.content.res.ColorStateList c(android.content.Context context, int i) {
        android.content.res.ColorStateList colorStateList;
        int resourceId;
        int[] iArr = f1822g;
        iArr[0] = i;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((android.util.AttributeSet) null, iArr);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0 || (colorStateList = d.b.l.a.a.a(context, resourceId)) == null) {
                colorStateList = typedArrayObtainStyledAttributes.getColorStateList(0);
            }
            return colorStateList;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
