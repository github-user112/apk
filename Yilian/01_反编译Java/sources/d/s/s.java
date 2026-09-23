package d.s;

/* loaded from: classes.dex */
public class s {
    public android.view.View b;
    public final java.util.Map<java.lang.String, java.lang.Object> a = new java.util.HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final java.util.ArrayList<d.s.k> f2288c = new java.util.ArrayList<>();

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof d.s.s)) {
            return false;
        }
        d.s.s sVar = (d.s.s) obj;
        return this.b == sVar.b && this.a.equals(sVar.a);
    }

    public int hashCode() {
        return this.a.hashCode() + (this.b.hashCode() * 31);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("TransitionValues@");
        sbO.append(java.lang.Integer.toHexString(hashCode()));
        sbO.append(":\n");
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(sbO.toString(), "    view = ");
        sbQ.append(this.b);
        sbQ.append("\n");
        java.lang.String strE = e.a.c.a.a.e(sbQ.toString(), "    values:");
        for (java.lang.String str : this.a.keySet()) {
            strE = strE + "    " + str + ": " + this.a.get(str) + "\n";
        }
        return strE;
    }
}
