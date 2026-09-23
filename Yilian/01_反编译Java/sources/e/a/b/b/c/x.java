package e.a.b.b.c;

/* loaded from: classes.dex */
public abstract class x extends e.a.b.b.c.y {
    public int a = -1;

    public final int e() {
        int i = this.a;
        if (i >= 0) {
            return i;
        }
        throw new java.lang.RuntimeException("index not yet set");
    }

    public final java.lang.String f() {
        return '[' + java.lang.Integer.toHexString(this.a) + ']';
    }

    public final void g(int i) {
        if (this.a != -1) {
            throw new java.lang.RuntimeException("index already set");
        }
        this.a = i;
    }
}
