package androidx.preference;

/* loaded from: classes.dex */
public class SwitchPreference extends androidx.preference.TwoStatePreference {
    public final androidx.preference.SwitchPreference.a t;
    public java.lang.CharSequence u;
    public java.lang.CharSequence v;

    public class a implements android.widget.CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
            if (androidx.preference.SwitchPreference.this == null) {
                throw null;
            }
            androidx.preference.SwitchPreference.this.f(z);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchPreference(android.content.Context context, android.util.AttributeSet attributeSet) {
        int iW = d.b.k.r.w(context, d.p.b.switchPreferenceStyle, android.R.attr.switchPreferenceStyle);
        super(context, attributeSet, iW, 0);
        this.t = new androidx.preference.SwitchPreference.a();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.p.e.SwitchPreference, iW, 0);
        this.p = d.b.k.r.L(typedArrayObtainStyledAttributes, d.p.e.SwitchPreference_summaryOn, d.p.e.SwitchPreference_android_summaryOn);
        int i = d.p.e.SwitchPreference_summaryOff;
        int i2 = d.p.e.SwitchPreference_android_summaryOff;
        java.lang.String string = typedArrayObtainStyledAttributes.getString(i);
        this.q = string == null ? typedArrayObtainStyledAttributes.getString(i2) : string;
        int i3 = d.p.e.SwitchPreference_switchTextOn;
        int i4 = d.p.e.SwitchPreference_android_switchTextOn;
        java.lang.String string2 = typedArrayObtainStyledAttributes.getString(i3);
        this.u = string2 == null ? typedArrayObtainStyledAttributes.getString(i4) : string2;
        int i5 = d.p.e.SwitchPreference_switchTextOff;
        int i6 = d.p.e.SwitchPreference_android_switchTextOff;
        java.lang.String string3 = typedArrayObtainStyledAttributes.getString(i5);
        this.v = string3 == null ? typedArrayObtainStyledAttributes.getString(i6) : string3;
        this.s = typedArrayObtainStyledAttributes.getBoolean(d.p.e.SwitchPreference_disableDependentsState, typedArrayObtainStyledAttributes.getBoolean(d.p.e.SwitchPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }
}
