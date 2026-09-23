package androidx.preference;

/* loaded from: classes.dex */
public class MultiSelectListPreference extends androidx.preference.DialogPreference {
    /* JADX WARN: Illegal instructions before constructor call */
    public MultiSelectListPreference(android.content.Context context, android.util.AttributeSet attributeSet) {
        int iW = d.b.k.r.w(context, d.p.b.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle);
        super(context, attributeSet, iW, 0);
        new java.util.HashSet();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.p.e.MultiSelectListPreference, iW, 0);
        d.b.k.r.N(typedArrayObtainStyledAttributes, d.p.e.MultiSelectListPreference_entries, d.p.e.MultiSelectListPreference_android_entries);
        int i = d.p.e.MultiSelectListPreference_entryValues;
        int i2 = d.p.e.MultiSelectListPreference_android_entryValues;
        if (typedArrayObtainStyledAttributes.getTextArray(i) == null) {
            typedArrayObtainStyledAttributes.getTextArray(i2);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public java.lang.Object d(android.content.res.TypedArray typedArray, int i) {
        java.lang.CharSequence[] textArray = typedArray.getTextArray(i);
        java.util.HashSet hashSet = new java.util.HashSet();
        for (java.lang.CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }
}
