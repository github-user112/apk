package androidx.preference;

/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends androidx.preference.TwoStatePreference {
    public final androidx.preference.SwitchPreferenceCompat.a t;
    public java.lang.CharSequence u;
    public java.lang.CharSequence v;

    public class a implements android.widget.CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
            if (androidx.preference.SwitchPreferenceCompat.this == null) {
                throw null;
            }
            androidx.preference.SwitchPreferenceCompat.this.f(z);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchPreferenceCompat(android.content.Context context, android.util.AttributeSet attributeSet) {
        int i = d.p.b.switchPreferenceCompatStyle;
        super(context, attributeSet, i, 0);
        this.t = new androidx.preference.SwitchPreferenceCompat.a();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.p.e.SwitchPreferenceCompat, i, 0);
        this.p = d.b.k.r.L(typedArrayObtainStyledAttributes, d.p.e.SwitchPreferenceCompat_summaryOn, d.p.e.SwitchPreferenceCompat_android_summaryOn);
        int i2 = d.p.e.SwitchPreferenceCompat_summaryOff;
        int i3 = d.p.e.SwitchPreferenceCompat_android_summaryOff;
        java.lang.String string = typedArrayObtainStyledAttributes.getString(i2);
        this.q = string == null ? typedArrayObtainStyledAttributes.getString(i3) : string;
        int i4 = d.p.e.SwitchPreferenceCompat_switchTextOn;
        int i5 = d.p.e.SwitchPreferenceCompat_android_switchTextOn;
        java.lang.String string2 = typedArrayObtainStyledAttributes.getString(i4);
        this.u = string2 == null ? typedArrayObtainStyledAttributes.getString(i5) : string2;
        int i6 = d.p.e.SwitchPreferenceCompat_switchTextOff;
        int i7 = d.p.e.SwitchPreferenceCompat_android_switchTextOff;
        java.lang.String string3 = typedArrayObtainStyledAttributes.getString(i6);
        this.v = string3 == null ? typedArrayObtainStyledAttributes.getString(i7) : string3;
        this.s = typedArrayObtainStyledAttributes.getBoolean(d.p.e.SwitchPreferenceCompat_disableDependentsState, typedArrayObtainStyledAttributes.getBoolean(d.p.e.SwitchPreferenceCompat_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }
}
