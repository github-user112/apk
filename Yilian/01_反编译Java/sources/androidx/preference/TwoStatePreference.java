package androidx.preference;

/* loaded from: classes.dex */
public abstract class TwoStatePreference extends androidx.preference.Preference {
    public boolean o;
    public java.lang.CharSequence p;
    public java.lang.CharSequence q;
    public boolean r;
    public boolean s;

    public TwoStatePreference(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
    }

    public TwoStatePreference(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.preference.Preference
    public java.lang.Object d(android.content.res.TypedArray typedArray, int i) {
        return java.lang.Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // androidx.preference.Preference
    public boolean e() {
        return (this.s ? this.o : !this.o) || super.e();
    }

    public void f(boolean z) {
        boolean z2 = this.o != z;
        if (z2 || !this.r) {
            this.o = z;
            this.r = true;
            if (z2) {
                e();
            }
        }
    }
}
