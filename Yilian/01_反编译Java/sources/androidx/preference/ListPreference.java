package androidx.preference;

/* loaded from: classes.dex */
public class ListPreference extends androidx.preference.DialogPreference {
    public java.lang.CharSequence[] p;
    public java.lang.CharSequence[] q;
    public java.lang.String r;
    public java.lang.String s;

    public static final class a implements androidx.preference.Preference.a<androidx.preference.ListPreference> {
        public static androidx.preference.ListPreference.a a;

        @Override // androidx.preference.Preference.a
        public java.lang.CharSequence a(androidx.preference.Preference preference) {
            androidx.preference.ListPreference listPreference = (androidx.preference.ListPreference) preference;
            return android.text.TextUtils.isEmpty(listPreference.f()) ? listPreference.a.getString(d.p.d.not_set) : listPreference.f();
        }
    }

    public ListPreference(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, d.b.k.r.w(context, d.p.b.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }

    @Override // androidx.preference.Preference
    public java.lang.CharSequence a() {
        androidx.preference.Preference.a aVar = this.n;
        if (aVar != null) {
            return aVar.a(this);
        }
        java.lang.CharSequence charSequenceF = f();
        java.lang.CharSequence charSequenceA = super.a();
        java.lang.String str = this.s;
        if (str == null) {
            return charSequenceA;
        }
        java.lang.Object[] objArr = new java.lang.Object[1];
        if (charSequenceF == null) {
            charSequenceF = "";
        }
        objArr[0] = charSequenceF;
        java.lang.String str2 = java.lang.String.format(str, objArr);
        if (android.text.TextUtils.equals(str2, charSequenceA)) {
            return charSequenceA;
        }
        android.util.Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return str2;
    }

    @Override // androidx.preference.Preference
    public java.lang.Object d(android.content.res.TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    public java.lang.CharSequence f() {
        java.lang.CharSequence[] charSequenceArr;
        java.lang.CharSequence[] charSequenceArr2;
        java.lang.String str = this.r;
        int i = -1;
        if (str != null && (charSequenceArr2 = this.q) != null) {
            int length = charSequenceArr2.length - 1;
            while (true) {
                if (length < 0) {
                    break;
                }
                if (this.q[length].equals(str)) {
                    i = length;
                    break;
                }
                length--;
            }
        }
        if (i < 0 || (charSequenceArr = this.p) == null) {
            return null;
        }
        return charSequenceArr[i];
    }

    public ListPreference(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.p.e.ListPreference, i, i2);
        this.p = d.b.k.r.N(typedArrayObtainStyledAttributes, d.p.e.ListPreference_entries, d.p.e.ListPreference_android_entries);
        int i3 = d.p.e.ListPreference_entryValues;
        int i4 = d.p.e.ListPreference_android_entryValues;
        java.lang.CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(i3);
        this.q = textArray == null ? typedArrayObtainStyledAttributes.getTextArray(i4) : textArray;
        int i5 = d.p.e.ListPreference_useSimpleSummaryProvider;
        if (typedArrayObtainStyledAttributes.getBoolean(i5, typedArrayObtainStyledAttributes.getBoolean(i5, false))) {
            if (androidx.preference.ListPreference.a.a == null) {
                androidx.preference.ListPreference.a.a = new androidx.preference.ListPreference.a();
            }
            this.n = androidx.preference.ListPreference.a.a;
            c();
        }
        typedArrayObtainStyledAttributes.recycle();
        android.content.res.TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, d.p.e.Preference, i, i2);
        this.s = d.b.k.r.L(typedArrayObtainStyledAttributes2, d.p.e.Preference_summary, d.p.e.Preference_android_summary);
        typedArrayObtainStyledAttributes2.recycle();
    }
}
