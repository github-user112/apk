package androidx.preference;

/* loaded from: classes.dex */
public class Preference implements java.lang.Comparable<androidx.preference.Preference> {
    public android.content.Context a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.CharSequence f131c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.CharSequence f132d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f133e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f134f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f135g;
    public boolean h;
    public boolean i;
    public java.lang.Object j;
    public boolean k;
    public boolean l;
    public boolean m;
    public androidx.preference.Preference.a n;

    public interface a<T extends androidx.preference.Preference> {
        java.lang.CharSequence a(T t);
    }

    public Preference(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, d.b.k.r.w(context, d.p.b.preferenceStyle, android.R.attr.preferenceStyle), 0);
    }

    public java.lang.CharSequence a() {
        androidx.preference.Preference.a aVar = this.n;
        return aVar != null ? aVar.a(this) : this.f132d;
    }

    public boolean b() {
        return this.f135g && this.k && this.l;
    }

    public void c() {
    }

    @Override // java.lang.Comparable
    public int compareTo(androidx.preference.Preference preference) {
        androidx.preference.Preference preference2 = preference;
        int i = this.b;
        int i2 = preference2.b;
        if (i != i2) {
            return i - i2;
        }
        java.lang.CharSequence charSequence = this.f131c;
        java.lang.CharSequence charSequence2 = preference2.f131c;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference2.f131c.toString());
    }

    public java.lang.Object d(android.content.res.TypedArray typedArray, int i) {
        return null;
    }

    public boolean e() {
        return !b();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.CharSequence charSequence = this.f131c;
        if (!android.text.TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        }
        java.lang.CharSequence charSequenceA = a();
        if (!android.text.TextUtils.isEmpty(charSequenceA)) {
            sb.append(charSequenceA);
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Preference(android.content.Context r4, android.util.AttributeSet r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }
}
