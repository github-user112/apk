package com.google.android.material.internal;

/* loaded from: classes.dex */
public class CheckableImageButton extends d.b.q.k implements android.widget.Checkable {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f233d = {android.R.attr.state_checked};

    /* renamed from: c, reason: collision with root package name */
    public boolean f234c;

    public CheckableImageButton(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, d.b.a.imageButtonStyle);
        d.g.m.s.L(this, new e.c.a.b.q.a(this));
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f234c;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        return this.f234c ? android.widget.ImageButton.mergeDrawableStates(super.onCreateDrawableState(i + f233d.length), f233d) : super.onCreateDrawableState(i);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f234c != z) {
            this.f234c = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f234c);
    }
}
