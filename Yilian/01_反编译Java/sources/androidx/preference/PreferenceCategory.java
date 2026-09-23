package androidx.preference;

/* loaded from: classes.dex */
public class PreferenceCategory extends androidx.preference.PreferenceGroup {
    public PreferenceCategory(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, d.b.k.r.w(context, d.p.b.preferenceCategoryStyle, android.R.attr.preferenceCategoryStyle), 0);
    }

    @Override // androidx.preference.Preference
    public boolean b() {
        return false;
    }
}
