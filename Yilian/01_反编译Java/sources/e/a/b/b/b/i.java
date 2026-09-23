package e.a.b.b.b;

/* loaded from: classes.dex */
public final class i extends e.a.b.f.d {

    /* renamed from: c, reason: collision with root package name */
    public final int f2355c;

    public i(int i, int i2) {
        super(i);
        this.f2355c = i2;
    }

    public int i() {
        int length = this.b.length;
        if (length == 0) {
            return 0;
        }
        e.a.b.b.b.h hVarJ = j(length - 1);
        return hVarJ.b() + hVarJ.c();
    }

    public e.a.b.b.b.h j(int i) {
        return (e.a.b.b.b.h) f(i);
    }

    public void k(e.a.b.f.a aVar) throws java.io.IOException {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        int i = cVar.f2530c;
        int length = this.b.length;
        if (cVar.d()) {
            boolean z = cVar.f2531d;
            for (int i2 = 0; i2 < length; i2++) {
                e.a.b.b.b.h hVar = (e.a.b.b.b.h) f(i2);
                int iB = hVar.b() * 2;
                java.lang.String string = null;
                if (iB != 0 || z) {
                    int i3 = cVar.f2534g;
                    int i4 = cVar.f2533f - ((i3 / 2) + ((i3 * 2) + 8));
                    java.lang.String strE = hVar.e(true);
                    if (strE != null) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("  ");
                        sbO.append(hVar.d());
                        sbO.append(": ");
                        java.lang.String string2 = sbO.toString();
                        int length2 = string2.length();
                        int length3 = i4 == 0 ? strE.length() : i4 - length2;
                        java.io.StringWriter stringWriter = new java.io.StringWriter((string2.length() + strE.length()) * 3);
                        e.a.b.f.l lVar = new e.a.b.f.l(stringWriter, length2, length3, "");
                        try {
                            lVar.f2546e.write(string2);
                            lVar.f2547f.write(strE);
                            lVar.b();
                            string = stringWriter.toString();
                        } catch (java.io.IOException e2) {
                            throw new java.lang.RuntimeException("shouldn't happen", e2);
                        }
                    }
                }
                if (string != null) {
                    cVar.b(iB, string);
                } else if (iB != 0) {
                    cVar.b(iB, "");
                }
            }
        }
        for (int i5 = 0; i5 < length; i5++) {
            e.a.b.b.b.h hVar2 = (e.a.b.b.b.h) f(i5);
            try {
                hVar2.k(aVar);
            } catch (java.lang.RuntimeException e3) {
                throw e.a.a.c.b.b(e3, "...while writing " + hVar2);
            }
        }
        int i6 = (cVar.f2530c - i) / 2;
        if (i6 == i()) {
            return;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("write length mismatch; expected ");
        sbO2.append(i());
        sbO2.append(" but actually wrote ");
        sbO2.append(i6);
        throw new java.lang.RuntimeException(sbO2.toString());
    }
}
