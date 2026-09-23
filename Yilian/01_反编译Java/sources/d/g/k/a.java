package d.g.k;

/* loaded from: classes.dex */
public class a implements android.text.Spannable {

    /* renamed from: d.g.k.a$a, reason: collision with other inner class name */
    public static final class C0047a {
        public final android.text.TextPaint a;
        public final android.text.TextDirectionHeuristic b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1981c;

        /* renamed from: d, reason: collision with root package name */
        public final int f1982d;

        public C0047a(android.text.PrecomputedText.Params params) {
            this.a = params.getTextPaint();
            this.b = params.getTextDirection();
            this.f1981c = params.getBreakStrategy();
            this.f1982d = params.getHyphenationFrequency();
            int i = android.os.Build.VERSION.SDK_INT;
        }

        @android.annotation.SuppressLint({"NewApi"})
        public C0047a(android.text.TextPaint textPaint, android.text.TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (android.os.Build.VERSION.SDK_INT >= 29) {
                new android.text.PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.a = textPaint;
            this.b = textDirectionHeuristic;
            this.f1981c = i;
            this.f1982d = i2;
        }

        public boolean a(d.g.k.a.C0047a c0047a) {
            if ((android.os.Build.VERSION.SDK_INT >= 23 && (this.f1981c != c0047a.f1981c || this.f1982d != c0047a.f1982d)) || this.a.getTextSize() != c0047a.a.getTextSize() || this.a.getTextScaleX() != c0047a.a.getTextScaleX() || this.a.getTextSkewX() != c0047a.a.getTextSkewX()) {
                return false;
            }
            if ((android.os.Build.VERSION.SDK_INT >= 21 && (this.a.getLetterSpacing() != c0047a.a.getLetterSpacing() || !android.text.TextUtils.equals(this.a.getFontFeatureSettings(), c0047a.a.getFontFeatureSettings()))) || this.a.getFlags() != c0047a.a.getFlags()) {
                return false;
            }
            int i = android.os.Build.VERSION.SDK_INT;
            if (i >= 24) {
                if (!this.a.getTextLocales().equals(c0047a.a.getTextLocales())) {
                    return false;
                }
            } else if (i >= 17 && !this.a.getTextLocale().equals(c0047a.a.getTextLocale())) {
                return false;
            }
            return this.a.getTypeface() == null ? c0047a.a.getTypeface() == null : this.a.getTypeface().equals(c0047a.a.getTypeface());
        }

        public boolean equals(java.lang.Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d.g.k.a.C0047a)) {
                return false;
            }
            d.g.k.a.C0047a c0047a = (d.g.k.a.C0047a) obj;
            if (a(c0047a)) {
                return android.os.Build.VERSION.SDK_INT < 18 || this.b == c0047a.b;
            }
            return false;
        }

        public int hashCode() {
            int i = android.os.Build.VERSION.SDK_INT;
            if (i >= 24) {
                return d.b.k.r.Q(java.lang.Float.valueOf(this.a.getTextSize()), java.lang.Float.valueOf(this.a.getTextScaleX()), java.lang.Float.valueOf(this.a.getTextSkewX()), java.lang.Float.valueOf(this.a.getLetterSpacing()), java.lang.Integer.valueOf(this.a.getFlags()), this.a.getTextLocales(), this.a.getTypeface(), java.lang.Boolean.valueOf(this.a.isElegantTextHeight()), this.b, java.lang.Integer.valueOf(this.f1981c), java.lang.Integer.valueOf(this.f1982d));
            }
            if (i >= 21) {
                return d.b.k.r.Q(java.lang.Float.valueOf(this.a.getTextSize()), java.lang.Float.valueOf(this.a.getTextScaleX()), java.lang.Float.valueOf(this.a.getTextSkewX()), java.lang.Float.valueOf(this.a.getLetterSpacing()), java.lang.Integer.valueOf(this.a.getFlags()), this.a.getTextLocale(), this.a.getTypeface(), java.lang.Boolean.valueOf(this.a.isElegantTextHeight()), this.b, java.lang.Integer.valueOf(this.f1981c), java.lang.Integer.valueOf(this.f1982d));
            }
            if (i < 18 && i < 17) {
                return d.b.k.r.Q(java.lang.Float.valueOf(this.a.getTextSize()), java.lang.Float.valueOf(this.a.getTextScaleX()), java.lang.Float.valueOf(this.a.getTextSkewX()), java.lang.Integer.valueOf(this.a.getFlags()), this.a.getTypeface(), this.b, java.lang.Integer.valueOf(this.f1981c), java.lang.Integer.valueOf(this.f1982d));
            }
            return d.b.k.r.Q(java.lang.Float.valueOf(this.a.getTextSize()), java.lang.Float.valueOf(this.a.getTextScaleX()), java.lang.Float.valueOf(this.a.getTextSkewX()), java.lang.Integer.valueOf(this.a.getFlags()), this.a.getTextLocale(), this.a.getTypeface(), this.b, java.lang.Integer.valueOf(this.f1981c), java.lang.Integer.valueOf(this.f1982d));
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x00ce  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 300
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: d.g.k.a.C0047a.toString():java.lang.String");
        }
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        throw null;
    }

    @Override // android.text.Spanned
    public int getSpanEnd(java.lang.Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public int getSpanFlags(java.lang.Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public int getSpanStart(java.lang.Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    @android.annotation.SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, java.lang.Class<T> cls) {
        int i3 = android.os.Build.VERSION.SDK_INT;
        throw null;
    }

    @Override // java.lang.CharSequence
    public int length() {
        throw null;
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, java.lang.Class cls) {
        throw null;
    }

    @Override // android.text.Spannable
    @android.annotation.SuppressLint({"NewApi"})
    public void removeSpan(java.lang.Object obj) {
        if (obj instanceof android.text.style.MetricAffectingSpan) {
            throw new java.lang.IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        int i = android.os.Build.VERSION.SDK_INT;
        throw null;
    }

    @Override // android.text.Spannable
    @android.annotation.SuppressLint({"NewApi"})
    public void setSpan(java.lang.Object obj, int i, int i2, int i3) {
        if (obj instanceof android.text.style.MetricAffectingSpan) {
            throw new java.lang.IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        int i4 = android.os.Build.VERSION.SDK_INT;
        throw null;
    }

    @Override // java.lang.CharSequence
    public java.lang.CharSequence subSequence(int i, int i2) {
        throw null;
    }

    @Override // java.lang.CharSequence
    public java.lang.String toString() {
        throw null;
    }
}
