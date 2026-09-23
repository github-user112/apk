package androidx.preference;

/* loaded from: classes.dex */
public class EditTextPreference extends androidx.preference.DialogPreference {

    public static final class a implements androidx.preference.Preference.a<androidx.preference.EditTextPreference> {
        public static androidx.preference.EditTextPreference.a a;

        @Override // androidx.preference.Preference.a
        public java.lang.CharSequence a(androidx.preference.Preference preference) {
            androidx.preference.EditTextPreference editTextPreference = (androidx.preference.EditTextPreference) preference;
            if (android.text.TextUtils.isEmpty(null)) {
                return editTextPreference.a.getString(d.p.d.not_set);
            }
            return null;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public EditTextPreference(android.content.Context context, android.util.AttributeSet attributeSet) {
        int iW = d.b.k.r.w(context, d.p.b.editTextPreferenceStyle, android.R.attr.editTextPreferenceStyle);
        super(context, attributeSet, iW, 0);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.p.e.EditTextPreference, iW, 0);
        int i = d.p.e.EditTextPreference_useSimpleSummaryProvider;
        if (d.b.k.r.y(typedArrayObtainStyledAttributes, i, i, false)) {
            if (androidx.preference.EditTextPreference.a.a == null) {
                androidx.preference.EditTextPreference.a.a = new androidx.preference.EditTextPreference.a();
            }
            this.n = androidx.preference.EditTextPreference.a.a;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public java.lang.Object d(android.content.res.TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }
}
