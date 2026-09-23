package e.c.c.e.c;

/* loaded from: classes.dex */
public final class b {
    public final byte[][] a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2801c;

    public b(int i, int i2) {
        this.a = (byte[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) byte.class, i2, i);
        this.b = i;
        this.f2801c = i2;
    }

    public byte a(int i, int i2) {
        return this.a[i2][i];
    }

    public void b(int i, int i2, int i3) {
        this.a[i2][i] = (byte) i3;
    }

    public void c(int i, int i2, boolean z) {
        this.a[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder((this.b * 2 * this.f2801c) + 2);
        for (int i = 0; i < this.f2801c; i++) {
            for (int i2 = 0; i2 < this.b; i2++) {
                byte b = this.a[i][i2];
                sb.append(b != 0 ? b != 1 ? "  " : " 1" : " 0");
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
