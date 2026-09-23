package e.c.a.b.r;

/* loaded from: classes.dex */
public class a {
    public static final boolean a;
    public static final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f2655c;

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f2656d;

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f2657e;

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f2658f;

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f2659g;
    public static final int[] h;
    public static final int[] i;
    public static final int[] j;

    static {
        a = android.os.Build.VERSION.SDK_INT >= 21;
        b = new int[]{android.R.attr.state_pressed};
        f2655c = new int[]{android.R.attr.state_hovered, android.R.attr.state_focused};
        f2656d = new int[]{android.R.attr.state_focused};
        f2657e = new int[]{android.R.attr.state_hovered};
        f2658f = new int[]{android.R.attr.state_selected, android.R.attr.state_pressed};
        f2659g = new int[]{android.R.attr.state_selected, android.R.attr.state_hovered, android.R.attr.state_focused};
        h = new int[]{android.R.attr.state_selected, android.R.attr.state_focused};
        i = new int[]{android.R.attr.state_selected, android.R.attr.state_hovered};
        j = new int[]{android.R.attr.state_selected};
    }

    public static android.content.res.ColorStateList a(android.content.res.ColorStateList colorStateList) {
        if (a) {
            return new android.content.res.ColorStateList(new int[][]{j, android.util.StateSet.NOTHING}, new int[]{b(colorStateList, f2658f), b(colorStateList, b)});
        }
        int[] iArr = f2658f;
        int[] iArr2 = f2659g;
        int[] iArr3 = h;
        int[] iArr4 = i;
        int[] iArr5 = b;
        int[] iArr6 = f2655c;
        int[] iArr7 = f2656d;
        int[] iArr8 = f2657e;
        return new android.content.res.ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, j, iArr5, iArr6, iArr7, iArr8, android.util.StateSet.NOTHING}, new int[]{b(colorStateList, iArr), b(colorStateList, iArr2), b(colorStateList, iArr3), b(colorStateList, iArr4), 0, b(colorStateList, iArr5), b(colorStateList, iArr6), b(colorStateList, iArr7), b(colorStateList, iArr8), 0});
    }

    public static int b(android.content.res.ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return a ? d.g.g.a.c(colorForState, java.lang.Math.min(android.graphics.Color.alpha(colorForState) * 2, 255)) : colorForState;
    }
}
