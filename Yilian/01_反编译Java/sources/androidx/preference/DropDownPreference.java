package androidx.preference;

/* loaded from: classes.dex */
public class DropDownPreference extends androidx.preference.ListPreference {
    public final android.content.Context t;
    public final android.widget.ArrayAdapter u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropDownPreference(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, d.p.b.dropdownPreferenceStyle, 0);
        this.t = context;
        android.widget.ArrayAdapter arrayAdapter = new android.widget.ArrayAdapter(this.t, android.R.layout.simple_spinner_dropdown_item);
        this.u = arrayAdapter;
        arrayAdapter.clear();
        java.lang.CharSequence[] charSequenceArr = this.p;
        if (charSequenceArr != null) {
            for (java.lang.CharSequence charSequence : charSequenceArr) {
                this.u.add(charSequence.toString());
            }
        }
    }

    @Override // androidx.preference.Preference
    public void c() {
        android.widget.ArrayAdapter arrayAdapter = this.u;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }
}
