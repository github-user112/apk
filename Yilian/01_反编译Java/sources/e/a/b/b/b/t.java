package e.a.b.b.b;

/* loaded from: classes.dex */
public final class t extends e.a.b.f.d {

    /* renamed from: c, reason: collision with root package name */
    public static final e.a.b.b.b.t f2382c = new e.a.b.b.b.t(0);

    public static class a {
        public final int a;
        public final e.a.b.d.b.q b;

        public a(int i, e.a.b.d.b.q qVar) {
            if (i < 0) {
                throw new java.lang.IllegalArgumentException("address < 0");
            }
            this.a = i;
            this.b = qVar;
        }
    }

    public t(int i) {
        super(i);
    }

    public static e.a.b.b.b.t i(e.a.b.b.b.i iVar, int i) {
        if (i == 1) {
            return f2382c;
        }
        if (i != 2 && i != 3) {
            throw new java.lang.IllegalArgumentException("bogus howMuch");
        }
        java.lang.Object obj = e.a.b.d.b.q.f2505d;
        int length = iVar.b.length;
        e.a.b.b.b.t.a[] aVarArr = new e.a.b.b.b.t.a[length];
        e.a.b.d.b.q qVar = obj;
        int i2 = 0;
        boolean z = false;
        for (int i3 = 0; i3 < length; i3++) {
            e.a.b.b.b.h hVarJ = iVar.j(i3);
            if (hVarJ instanceof e.a.b.b.b.e) {
                z = true;
            } else {
                e.a.b.d.b.q qVar2 = hVarJ.f2353c;
                if (!qVar2.equals(obj)) {
                    if (!(qVar2.f2506c == qVar.f2506c) && (i != 3 || z)) {
                        aVarArr[i2] = new e.a.b.b.b.t.a(hVarJ.c(), qVar2);
                        i2++;
                        qVar = qVar2;
                        z = false;
                    }
                }
            }
        }
        e.a.b.b.b.t tVar = new e.a.b.b.b.t(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            tVar.g(i4, aVarArr[i4]);
        }
        tVar.a = false;
        return tVar;
    }
}
