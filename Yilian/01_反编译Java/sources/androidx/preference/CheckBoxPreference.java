package androidx.preference;

/* loaded from: classes.dex */
public class CheckBoxPreference extends androidx.preference.TwoStatePreference {
    public final androidx.preference.CheckBoxPreference.a t;

    public class a implements android.widget.CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
            if (androidx.preference.CheckBoxPreference.this == null) {
                throw null;
            }
            androidx.preference.CheckBoxPreference.this.f(z);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CheckBoxPreference(android.content.Context context, android.util.AttributeSet attributeSet) {
        int iW = d.b.k.r.w(context, d.p.b.checkBoxPreferenceStyle, android.R.attr.checkBoxPreferenceStyle);
        super(context, attributeSet, iW, 0);
        this.t = new androidx.preference.CheckBoxPreference.a();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.p.e.CheckBoxPreference, iW, 0);
        this.p = d.b.k.r.L(typedArrayObtainStyledAttributes, d.p.e.CheckBoxPreference_summaryOn, d.p.e.CheckBoxPreference_android_summaryOn);
        int i = d.p.e.CheckBoxPreference_summaryOff;
        int i2 = d.p.e.CheckBoxPreference_android_summaryOff;
        java.lang.String string = typedArrayObtainStyledAttributes.getString(i);
        this.q = string == null ? typedArrayObtainStyledAttributes.getString(i2) : string;
        this.s = typedArrayObtainStyledAttributes.getBoolean(d.p.e.CheckBoxPreference_disableDependentsState, typedArrayObtainStyledAttributes.getBoolean(d.p.e.CheckBoxPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }
}
