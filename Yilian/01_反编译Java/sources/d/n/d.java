package d.n;

/* loaded from: classes.dex */
public class d implements d.n.b {
    public java.lang.String a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f2178c;

    public d(java.lang.String str, int i, int i2) {
        this.a = str;
        this.b = i;
        this.f2178c = i2;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d.n.d)) {
            return false;
        }
        d.n.d dVar = (d.n.d) obj;
        return android.text.TextUtils.equals(this.a, dVar.a) && this.b == dVar.b && this.f2178c == dVar.f2178c;
    }

    public int hashCode() {
        return d.b.k.r.Q(this.a, java.lang.Integer.valueOf(this.b), java.lang.Integer.valueOf(this.f2178c));
    }
}
