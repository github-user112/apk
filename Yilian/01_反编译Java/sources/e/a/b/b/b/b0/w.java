package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class w extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.w();

    @Override // e.a.b.b.b.n
    public int d() {
        return 3;
    }

    @Override // e.a.b.b.b.n
    public java.lang.String i(e.a.b.b.b.h hVar) {
        java.lang.String strL;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        e.a.b.d.b.l lVar = hVar.f2354d;
        int length = lVar.b.length;
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder(30);
        sb2.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
        if (length != 0) {
            if (length != 1) {
                e.a.b.d.b.k kVarI = lVar.i(length - 1);
                if (kVarI.h() == 2) {
                    kVarI = kVarI.n(1);
                }
                sb2.append(lVar.i(0).l());
                sb2.append("..");
                strL = kVarI.l();
            } else {
                strL = lVar.i(0).l();
            }
            sb2.append(strL);
        }
        sb2.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        sb.append(sb2.toString());
        sb.append(", ");
        sb.append(e.a.b.b.b.n.h(hVar));
        return sb.toString();
    }

    @Override // e.a.b.b.b.n
    public java.lang.String j(e.a.b.b.b.h hVar, boolean z) {
        return z ? e.a.b.b.b.n.g(hVar) : "";
    }

    @Override // e.a.b.b.b.n
    public boolean k(e.a.b.b.b.h hVar) {
        boolean z;
        if (!(hVar instanceof e.a.b.b.b.f)) {
            return false;
        }
        e.a.b.b.b.f fVar = (e.a.b.b.b.f) hVar;
        int iL = fVar.l();
        e.a.b.d.c.a aVar = fVar.f2345e;
        if (!e.a.b.b.b.n.s(iL)) {
            return false;
        }
        if (!(aVar instanceof e.a.b.d.c.s) && !(aVar instanceof e.a.b.d.c.w)) {
            return false;
        }
        e.a.b.d.b.l lVar = fVar.f2354d;
        java.lang.Object[] objArr = lVar.b;
        int length = objArr.length;
        if (objArr.length != 0) {
            int length2 = objArr.length;
            if (length2 >= 2) {
                int iH = lVar.i(0).a;
                for (int i = 0; i < length2; i++) {
                    e.a.b.d.b.k kVarI = lVar.i(i);
                    if (kVarI.a != iH) {
                        z = false;
                        break;
                    }
                    iH += kVarI.h();
                }
                z = true;
                return z ? false : false;
            }
            z = true;
            if (z || !e.a.b.b.b.n.s(lVar.i(0).a) || !e.a.b.b.b.n.q(lVar.j())) {
                return false;
            }
        }
        return true;
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        e.a.b.b.b.n.v(aVar, e.a.b.b.b.n.o(hVar, lVar.j()), (short) ((e.a.b.b.b.f) hVar).l(), (short) (lVar.b.length != 0 ? lVar.i(0).a : 0));
    }
}
