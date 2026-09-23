package e.a.b.f;

/* loaded from: classes.dex */
public class d extends e.a.b.f.i implements e.a.b.f.k {
    public java.lang.Object[] b;

    public d(int i) {
        super(i != 0);
        try {
            this.b = new java.lang.Object[i];
        } catch (java.lang.NegativeArraySizeException unused) {
            throw new java.lang.IllegalArgumentException("size < 0");
        }
    }

    public java.lang.String a() {
        java.lang.String name = getClass().getName();
        return h(name.substring(name.lastIndexOf(46) + 1) + '{', ", ", com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END, true);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return java.util.Arrays.equals(this.b, ((e.a.b.f.d) obj).b);
    }

    public final java.lang.Object f(int i) {
        try {
            java.lang.Object obj = this.b[i];
            if (obj != null) {
                return obj;
            }
            throw new java.lang.NullPointerException("unset: " + i);
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            if (i < 0) {
                throw new java.lang.IndexOutOfBoundsException("n < 0");
            }
            throw new java.lang.IndexOutOfBoundsException("n >= size()");
        }
    }

    public final void g(int i, java.lang.Object obj) {
        d();
        try {
            this.b[i] = obj;
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            if (i >= 0) {
                throw new java.lang.IndexOutOfBoundsException("n >= size()");
            }
            throw new java.lang.IndexOutOfBoundsException("n < 0");
        }
    }

    public final java.lang.String h(java.lang.String str, java.lang.String str2, java.lang.String str3, boolean z) {
        int length = this.b.length;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer((length * 10) + 10);
        if (str != null) {
            stringBuffer.append(str);
        }
        for (int i = 0; i < length; i++) {
            if (i != 0 && str2 != null) {
                stringBuffer.append(str2);
            }
            java.lang.Object[] objArr = this.b;
            if (z) {
                stringBuffer.append(((e.a.b.f.k) objArr[i]).a());
            } else {
                stringBuffer.append(objArr[i]);
            }
        }
        if (str3 != null) {
            stringBuffer.append(str3);
        }
        return stringBuffer.toString();
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(this.b);
    }

    public java.lang.String toString() {
        java.lang.String name = getClass().getName();
        return h(name.substring(name.lastIndexOf(46) + 1) + '{', ", ", com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END, false);
    }
}
