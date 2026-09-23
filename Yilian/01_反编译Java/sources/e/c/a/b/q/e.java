package e.c.a.b.q;

/* loaded from: classes.dex */
public final class e {
    public static final int[] a = {e.c.a.b.b.colorPrimary};
    public static final int[] b = {e.c.a.b.b.colorSecondary};

    public static void a(android.content.Context context, int[] iArr, java.lang.String str) {
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(0);
        typedArrayObtainStyledAttributes.recycle();
        if (!zHasValue) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.f("The style on this component requires your app theme to be ", str, " (or a descendant)."));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.TypedArray b(android.content.Context r7, android.util.AttributeSet r8, int[] r9, int r10, int r11, int... r12) {
        /*
            int[] r0 = e.c.a.b.i.ThemeEnforcement
            android.content.res.TypedArray r0 = r7.obtainStyledAttributes(r8, r0, r10, r11)
            int r1 = e.c.a.b.i.ThemeEnforcement_enforceMaterialTheme
            r2 = 0
            boolean r1 = r0.getBoolean(r1, r2)
            r0.recycle()
            if (r1 == 0) goto L19
            int[] r0 = e.c.a.b.q.e.b
            java.lang.String r1 = "Theme.MaterialComponents"
            a(r7, r0, r1)
        L19:
            int[] r0 = e.c.a.b.q.e.a
            java.lang.String r1 = "Theme.AppCompat"
            a(r7, r0, r1)
            int[] r0 = e.c.a.b.i.ThemeEnforcement
            android.content.res.TypedArray r0 = r7.obtainStyledAttributes(r8, r0, r10, r11)
            int r1 = e.c.a.b.i.ThemeEnforcement_enforceTextAppearance
            boolean r1 = r0.getBoolean(r1, r2)
            if (r1 != 0) goto L32
            r0.recycle()
            goto L5f
        L32:
            r1 = -1
            int r3 = r12.length
            if (r3 != 0) goto L3f
            int r12 = e.c.a.b.i.ThemeEnforcement_android_textAppearance
            int r12 = r0.getResourceId(r12, r1)
            if (r12 == r1) goto L5a
            goto L59
        L3f:
            android.content.res.TypedArray r3 = r7.obtainStyledAttributes(r8, r9, r10, r11)
            int r4 = r12.length
            r5 = 0
        L45:
            if (r5 >= r4) goto L56
            r6 = r12[r5]
            int r6 = r3.getResourceId(r6, r1)
            if (r6 != r1) goto L53
            r3.recycle()
            goto L5a
        L53:
            int r5 = r5 + 1
            goto L45
        L56:
            r3.recycle()
        L59:
            r2 = 1
        L5a:
            r0.recycle()
            if (r2 == 0) goto L64
        L5f:
            android.content.res.TypedArray r7 = r7.obtainStyledAttributes(r8, r9, r10, r11)
            return r7
        L64:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."
            r7.<init>(r8)
            goto L6d
        L6c:
            throw r7
        L6d:
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.b.q.e.b(android.content.Context, android.util.AttributeSet, int[], int, int, int[]):android.content.res.TypedArray");
    }
}
