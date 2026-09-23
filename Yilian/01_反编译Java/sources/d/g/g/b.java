package d.g.g;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: e, reason: collision with root package name */
    public static final d.g.g.b f1948e = new d.g.g.b(0, 0, 0, 0);
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1949c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1950d;

    public b(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.f1949c = i3;
        this.f1950d = i4;
    }

    public static d.g.g.b a(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f1948e : new d.g.g.b(i, i2, i3, i4);
    }

    public android.graphics.Insets b() {
        return android.graphics.Insets.of(this.a, this.b, this.f1949c, this.f1950d);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.g.g.b.class != obj.getClass()) {
            return false;
        }
        d.g.g.b bVar = (d.g.g.b) obj;
        return this.f1950d == bVar.f1950d && this.a == bVar.a && this.f1949c == bVar.f1949c && this.b == bVar.b;
    }

    public int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.f1949c) * 31) + this.f1950d;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Insets{left=");
        sbO.append(this.a);
        sbO.append(", top=");
        sbO.append(this.b);
        sbO.append(", right=");
        sbO.append(this.f1949c);
        sbO.append(", bottom=");
        sbO.append(this.f1950d);
        sbO.append('}');
        return sbO.toString();
    }
}
