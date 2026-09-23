package e.c.c.d;

/* loaded from: classes.dex */
public final class b implements java.lang.Cloneable {
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2778c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f2779d;

    public b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new java.lang.IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.a = i;
        this.b = i2;
        int i3 = (i + 31) / 32;
        this.f2778c = i3;
        this.f2779d = new int[i3 * i2];
    }

    public b(int i, int i2, int i3, int[] iArr) {
        this.a = i;
        this.b = i2;
        this.f2778c = i3;
        this.f2779d = iArr;
    }

    public boolean a(int i, int i2) {
        return ((this.f2779d[(i / 32) + (i2 * this.f2778c)] >>> (i & 31)) & 1) != 0;
    }

    public java.lang.Object clone() {
        return new e.c.c.d.b(this.a, this.b, this.f2778c, (int[]) this.f2779d.clone());
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof e.c.c.d.b)) {
            return false;
        }
        e.c.c.d.b bVar = (e.c.c.d.b) obj;
        return this.a == bVar.a && this.b == bVar.b && this.f2778c == bVar.f2778c && java.util.Arrays.equals(this.f2779d, bVar.f2779d);
    }

    public int hashCode() {
        int i = this.a;
        return java.util.Arrays.hashCode(this.f2779d) + (((((((i * 31) + i) * 31) + this.b) * 31) + this.f2778c) * 31);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder((this.a + 1) * this.b);
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.a; i2++) {
                sb.append(a(i2, i) ? "X " : "  ");
            }
            sb.append("\n");
        }
        return sb.toString();
    }
}
