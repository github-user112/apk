package d.g.m;

/* loaded from: classes.dex */
public final class c {
    public final java.lang.Object a;

    public c(java.lang.Object obj) {
        this.a = obj;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.g.m.c.class != obj.getClass()) {
            return false;
        }
        return d.b.k.r.s(this.a, ((d.g.m.c) obj).a);
    }

    public int hashCode() {
        java.lang.Object obj = this.a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("DisplayCutoutCompat{");
        sbO.append(this.a);
        sbO.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        return sbO.toString();
    }
}
