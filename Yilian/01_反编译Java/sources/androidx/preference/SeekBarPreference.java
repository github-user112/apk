package androidx.preference;

/* loaded from: classes.dex */
public class SeekBarPreference extends androidx.preference.Preference {
    public int o;
    public int p;
    public int q;
    public boolean r;
    public boolean s;

    /* JADX WARN: Illegal instructions before constructor call */
    public SeekBarPreference(android.content.Context context, android.util.AttributeSet attributeSet) {
        int i = d.p.b.seekBarPreferenceStyle;
        super(context, attributeSet, i, 0);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.p.e.SeekBarPreference, i, 0);
        this.o = typedArrayObtainStyledAttributes.getInt(d.p.e.SeekBarPreference_min, 0);
        int i2 = typedArrayObtainStyledAttributes.getInt(d.p.e.SeekBarPreference_android_max, 100);
        int i3 = this.o;
        i2 = i2 < i3 ? i3 : i2;
        if (i2 != this.p) {
            this.p = i2;
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(d.p.e.SeekBarPreference_seekBarIncrement, 0);
        if (i4 != this.q) {
            this.q = java.lang.Math.min(this.p - this.o, java.lang.Math.abs(i4));
        }
        this.r = typedArrayObtainStyledAttributes.getBoolean(d.p.e.SeekBarPreference_adjustable, true);
        typedArrayObtainStyledAttributes.getBoolean(d.p.e.SeekBarPreference_showSeekBarValue, false);
        this.s = typedArrayObtainStyledAttributes.getBoolean(d.p.e.SeekBarPreference_updatesContinuously, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public java.lang.Object d(android.content.res.TypedArray typedArray, int i) {
        return java.lang.Integer.valueOf(typedArray.getInt(i, 0));
    }
}
