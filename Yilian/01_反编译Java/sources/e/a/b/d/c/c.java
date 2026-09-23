package e.a.b.d.c;

/* loaded from: classes.dex */
public final class c extends e.a.b.d.c.a {
    public final e.a.b.d.c.c.a a;

    public static final class a extends e.a.b.f.d implements java.lang.Comparable<e.a.b.d.c.c.a> {
        public a(int i) {
            super(i);
        }

        @Override // java.lang.Comparable
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public int compareTo(e.a.b.d.c.c.a aVar) {
            int length = this.b.length;
            int length2 = aVar.b.length;
            int i = length < length2 ? length : length2;
            for (int i2 = 0; i2 < i; i2++) {
                int iCompareTo = ((e.a.b.d.c.a) f(i2)).compareTo((e.a.b.d.c.a) aVar.f(i2));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
            }
            if (length < length2) {
                return -1;
            }
            return length > length2 ? 1 : 0;
        }
    }

    public c(e.a.b.d.c.c.a aVar) {
        aVar.e();
        this.a = aVar;
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return this.a.h(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START, ", ", com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END, true);
    }

    @Override // e.a.b.d.c.a
    public int d(e.a.b.d.c.a aVar) {
        return this.a.compareTo(((e.a.b.d.c.c) aVar).a);
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "array";
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof e.a.b.d.c.c) {
            return this.a.equals(((e.a.b.d.c.c) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public java.lang.String toString() {
        return this.a.h("array{", ", ", com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END, false);
    }
}
