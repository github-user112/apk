package e.a.b.b.b;

/* loaded from: classes.dex */
public abstract class h {
    public int a;
    public final e.a.b.b.b.j b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.b.q f2353c;

    /* renamed from: d, reason: collision with root package name */
    public final e.a.b.d.b.l f2354d;

    public h(e.a.b.b.b.j jVar, e.a.b.d.b.q qVar, e.a.b.d.b.l lVar) {
        if (jVar == null) {
            throw new java.lang.NullPointerException("opcode == null");
        }
        if (qVar == null) {
            throw new java.lang.NullPointerException("position == null");
        }
        if (lVar == null) {
            throw new java.lang.NullPointerException("registers == null");
        }
        this.a = -1;
        this.b = jVar;
        this.f2353c = qVar;
        this.f2354d = lVar;
    }

    public static e.a.b.b.b.x f(e.a.b.d.b.q qVar, e.a.b.d.b.k kVar, e.a.b.d.b.k kVar2) {
        boolean z = kVar.h() == 1;
        boolean zJ = kVar.getType().j();
        int i = kVar.a;
        return new e.a.b.b.b.x((kVar2.a | i) < 16 ? zJ ? e.a.b.b.b.k.j : z ? e.a.b.b.b.k.f2360d : e.a.b.b.b.k.f2363g : i < 256 ? zJ ? e.a.b.b.b.k.k : z ? e.a.b.b.b.k.f2361e : e.a.b.b.b.k.h : zJ ? e.a.b.b.b.k.l : z ? e.a.b.b.b.k.f2362f : e.a.b.b.b.k.i, qVar, e.a.b.d.b.l.l(kVar, kVar2));
    }

    public abstract java.lang.String a();

    public abstract int b();

    public final int c() {
        int i = this.a;
        if (i >= 0) {
            return i;
        }
        throw new java.lang.RuntimeException("address not yet known");
    }

    public final java.lang.String d() {
        int i = this.a;
        return i != -1 ? java.lang.String.format("%04x", java.lang.Integer.valueOf(i)) : d.s.y.g0(java.lang.System.identityHashCode(this));
    }

    public abstract java.lang.String e(boolean z);

    public e.a.b.b.b.h g(e.a.b.e.a aVar) {
        e.a.b.d.b.l lVar = this.f2354d;
        int length = lVar.b.length;
        e.a.b.d.b.l lVar2 = new e.a.b.d.b.l(length);
        for (int i = 0; i < length; i++) {
            lVar2.g(i, aVar.b(lVar.i(i)));
        }
        lVar2.a = false;
        if (!lVar2.equals(lVar)) {
            lVar = lVar2;
        }
        return j(lVar);
    }

    public abstract e.a.b.b.b.h h(e.a.b.b.b.j jVar);

    public abstract e.a.b.b.b.h i(int i);

    public abstract e.a.b.b.b.h j(e.a.b.d.b.l lVar);

    public abstract void k(e.a.b.f.a aVar);

    public final java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(100);
        stringBuffer.append(d());
        stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        stringBuffer.append(this.f2353c);
        stringBuffer.append(": ");
        stringBuffer.append(this.b.a());
        e.a.b.d.b.l lVar = this.f2354d;
        boolean z = true;
        if (lVar.b.length != 0) {
            stringBuffer.append(lVar.h(" ", ", ", null, true));
        } else {
            z = false;
        }
        java.lang.String strA = a();
        if (strA != null) {
            if (z) {
                stringBuffer.append(',');
            }
            stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            stringBuffer.append(strA);
        }
        return stringBuffer.toString();
    }
}
