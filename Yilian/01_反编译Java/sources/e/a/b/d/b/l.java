package e.a.b.d.b;

/* loaded from: classes.dex */
public final class l extends e.a.b.f.d implements e.a.b.d.d.e {

    /* renamed from: c, reason: collision with root package name */
    public static final e.a.b.d.b.l f2491c = new e.a.b.d.b.l(0);

    public l(int i) {
        super(i);
    }

    public static e.a.b.d.b.l k(e.a.b.d.b.k kVar) {
        e.a.b.d.b.l lVar = new e.a.b.d.b.l(1);
        lVar.g(0, kVar);
        return lVar;
    }

    public static e.a.b.d.b.l l(e.a.b.d.b.k kVar, e.a.b.d.b.k kVar2) {
        e.a.b.d.b.l lVar = new e.a.b.d.b.l(2);
        lVar.g(0, kVar);
        lVar.g(1, kVar2);
        return lVar;
    }

    @Override // e.a.b.d.d.e
    public e.a.b.d.d.c b(int i) {
        e.a.b.d.d.c type = ((e.a.b.d.b.k) f(i)).getType();
        if (type != null) {
            return type;
        }
        throw null;
    }

    public e.a.b.d.b.k i(int i) {
        return (e.a.b.d.b.k) f(i);
    }

    public int j() {
        int length = this.b.length;
        int iF = 0;
        for (int i = 0; i < length; i++) {
            iF += b(i).f();
        }
        return iF;
    }

    public e.a.b.d.b.l m(int i, boolean z, java.util.BitSet bitSet) {
        int length = this.b.length;
        if (length == 0) {
            return this;
        }
        e.a.b.d.b.l lVar = new e.a.b.d.b.l(this.b.length);
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= length) {
                break;
            }
            e.a.b.d.b.k kVarO = (e.a.b.d.b.k) f(i2);
            if (bitSet != null && bitSet.get(i2)) {
                z2 = false;
            }
            if (z2) {
                kVarO = kVarO.o(i);
                if (!z) {
                    i += kVarO.h();
                }
                z = false;
            }
            lVar.g(i2, kVarO);
            i2++;
        }
        if (!this.a) {
            lVar.a = false;
        }
        return lVar;
    }

    public e.a.b.d.b.l n(int i) {
        int length = this.b.length;
        if (length == 0) {
            return this;
        }
        e.a.b.d.b.l lVar = new e.a.b.d.b.l(length);
        for (int i2 = 0; i2 < length; i2++) {
            lVar.g(i2, ((e.a.b.d.b.k) f(i2)).n(i));
        }
        if (!this.a) {
            lVar.a = false;
        }
        return lVar;
    }
}
