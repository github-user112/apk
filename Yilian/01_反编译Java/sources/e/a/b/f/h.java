package e.a.b.f;

/* loaded from: classes.dex */
public class h extends e.a.b.f.d {

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.f.f f2543c;

    public h(int i) {
        super(i);
        this.f2543c = new e.a.b.f.f(i);
    }

    public final int i() {
        int i = this.f2543c.f2541c - 1;
        while (i >= 0 && this.f2543c.g(i) < 0) {
            i--;
        }
        int i2 = i + 1;
        e.a.b.f.f fVar = this.f2543c;
        if (fVar == null) {
            throw null;
        }
        if (i2 < 0) {
            throw new java.lang.IllegalArgumentException("newSize < 0");
        }
        if (i2 > fVar.f2541c) {
            throw new java.lang.IllegalArgumentException("newSize > size");
        }
        fVar.d();
        fVar.f2541c = i2;
        return i2;
    }
}
