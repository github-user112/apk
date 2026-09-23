package com.google.android.material.snackbar;

/* loaded from: classes.dex */
public class SnackbarContentLayout extends android.widget.LinearLayout {
    public android.widget.TextView a;
    public android.widget.Button b;

    /* renamed from: c, reason: collision with root package name */
    public int f236c;

    /* renamed from: d, reason: collision with root package name */
    public int f237d;

    public SnackbarContentLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.c.a.b.i.SnackbarLayout);
        this.f236c = typedArrayObtainStyledAttributes.getDimensionPixelSize(e.c.a.b.i.SnackbarLayout_android_maxWidth, -1);
        this.f237d = typedArrayObtainStyledAttributes.getDimensionPixelSize(e.c.a.b.i.SnackbarLayout_maxActionInlineWidth, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final boolean a(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.a.getPaddingTop() == i2 && this.a.getPaddingBottom() == i3) {
            return z;
        }
        android.widget.TextView textView = this.a;
        if (!d.g.m.s.C(textView)) {
            textView.setPadding(textView.getPaddingLeft(), i2, textView.getPaddingRight(), i3);
            return true;
        }
        int iS = d.g.m.s.s(textView);
        int iR = d.g.m.s.r(textView);
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            textView.setPaddingRelative(iS, i2, iR, i3);
            return true;
        }
        textView.setPadding(iS, i2, iR, i3);
        return true;
    }

    public android.widget.Button getActionView() {
        return this.b;
    }

    public android.widget.TextView getMessageView() {
        return this.a;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.a = (android.widget.TextView) findViewById(e.c.a.b.e.snackbar_text);
        this.b = (android.widget.Button) findViewById(e.c.a.b.e.snackbar_action);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) throws android.content.res.Resources.NotFoundException {
        /*
            r7 = this;
            super.onMeasure(r8, r9)
            int r0 = r7.f236c
            if (r0 <= 0) goto L18
            int r0 = r7.getMeasuredWidth()
            int r1 = r7.f236c
            if (r0 <= r1) goto L18
            r8 = 1073741824(0x40000000, float:2.0)
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r8)
            super.onMeasure(r8, r9)
        L18:
            android.content.res.Resources r0 = r7.getResources()
            int r1 = e.c.a.b.c.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            android.content.res.Resources r1 = r7.getResources()
            int r2 = e.c.a.b.c.design_snackbar_padding_vertical
            int r1 = r1.getDimensionPixelSize(r2)
            android.widget.TextView r2 = r7.a
            android.text.Layout r2 = r2.getLayout()
            int r2 = r2.getLineCount()
            r3 = 0
            r4 = 1
            if (r2 <= r4) goto L3c
            r2 = 1
            goto L3d
        L3c:
            r2 = 0
        L3d:
            if (r2 == 0) goto L56
            int r5 = r7.f237d
            if (r5 <= 0) goto L56
            android.widget.Button r5 = r7.b
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.f237d
            if (r5 <= r6) goto L56
            int r1 = r0 - r1
            boolean r0 = r7.a(r4, r0, r1)
            if (r0 == 0) goto L61
            goto L60
        L56:
            if (r2 == 0) goto L59
            goto L5a
        L59:
            r0 = r1
        L5a:
            boolean r0 = r7.a(r3, r0, r0)
            if (r0 == 0) goto L61
        L60:
            r3 = 1
        L61:
            if (r3 == 0) goto L66
            super.onMeasure(r8, r9)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }
}
