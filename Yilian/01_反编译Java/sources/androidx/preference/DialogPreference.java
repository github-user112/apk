package androidx.preference;

/* loaded from: classes.dex */
public abstract class DialogPreference extends androidx.preference.Preference {
    public java.lang.CharSequence o;

    public DialogPreference(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, d.b.k.r.w(context, d.p.b.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }

    public DialogPreference(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.p.e.DialogPreference, i, i2);
        java.lang.String strL = d.b.k.r.L(typedArrayObtainStyledAttributes, d.p.e.DialogPreference_dialogTitle, d.p.e.DialogPreference_android_dialogTitle);
        this.o = strL;
        if (strL == null) {
            this.o = this.f131c;
        }
        int i3 = d.p.e.DialogPreference_dialogMessage;
        int i4 = d.p.e.DialogPreference_android_dialogMessage;
        if (typedArrayObtainStyledAttributes.getString(i3) == null) {
            typedArrayObtainStyledAttributes.getString(i4);
        }
        int i5 = d.p.e.DialogPreference_dialogIcon;
        int i6 = d.p.e.DialogPreference_android_dialogIcon;
        if (typedArrayObtainStyledAttributes.getDrawable(i5) == null) {
            typedArrayObtainStyledAttributes.getDrawable(i6);
        }
        int i7 = d.p.e.DialogPreference_positiveButtonText;
        int i8 = d.p.e.DialogPreference_android_positiveButtonText;
        if (typedArrayObtainStyledAttributes.getString(i7) == null) {
            typedArrayObtainStyledAttributes.getString(i8);
        }
        int i9 = d.p.e.DialogPreference_negativeButtonText;
        int i10 = d.p.e.DialogPreference_android_negativeButtonText;
        if (typedArrayObtainStyledAttributes.getString(i9) == null) {
            typedArrayObtainStyledAttributes.getString(i10);
        }
        typedArrayObtainStyledAttributes.getResourceId(d.p.e.DialogPreference_dialogLayout, typedArrayObtainStyledAttributes.getResourceId(d.p.e.DialogPreference_android_dialogLayout, 0));
        typedArrayObtainStyledAttributes.recycle();
    }
}
