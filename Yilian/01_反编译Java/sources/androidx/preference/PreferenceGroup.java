package androidx.preference;

/* loaded from: classes.dex */
public abstract class PreferenceGroup extends androidx.preference.Preference {
    public final d.e.h<java.lang.String, java.lang.Long> o;
    public java.util.List<androidx.preference.Preference> p;

    public PreferenceGroup(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0);
    }

    public PreferenceGroup(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.o = new d.e.h<>();
        new android.os.Handler();
        this.p = new java.util.ArrayList();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.p.e.PreferenceGroup, i, i2);
        int i3 = d.p.e.PreferenceGroup_orderingFromXml;
        d.b.k.r.y(typedArrayObtainStyledAttributes, i3, i3, true);
        if (typedArrayObtainStyledAttributes.hasValue(d.p.e.PreferenceGroup_initialExpandedChildrenCount)) {
            int i4 = d.p.e.PreferenceGroup_initialExpandedChildrenCount;
            if (typedArrayObtainStyledAttributes.getInt(i4, typedArrayObtainStyledAttributes.getInt(i4, Integer.MAX_VALUE)) != Integer.MAX_VALUE && !(!android.text.TextUtils.isEmpty(this.f133e))) {
                android.util.Log.e("PreferenceGroup", getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
