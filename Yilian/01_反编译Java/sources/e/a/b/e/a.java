package e.a.b.e;

/* loaded from: classes.dex */
public class a {
    public e.a.b.f.f a;
    public int b;

    public a(int i) {
        this.a = new e.a.b.f.f(i);
    }

    public void a(int i, int i2, int i3) {
        int i4 = this.a.f2541c;
        if (i >= i4) {
            for (int i5 = i - i4; i5 >= 0; i5--) {
                this.a.f(-1);
            }
        }
        this.a.h(i, i2);
        int i6 = i2 + i3;
        if (this.b < i6) {
            this.b = i6;
        }
    }

    public e.a.b.d.b.k b(e.a.b.d.b.k kVar) {
        int iG;
        if (kVar == null) {
            return null;
        }
        try {
            iG = this.a.g(kVar.a);
        } catch (java.lang.IndexOutOfBoundsException unused) {
            iG = -1;
        }
        if (iG >= 0) {
            return kVar.o(iG);
        }
        throw new java.lang.RuntimeException("no mapping specified for register");
    }
}
