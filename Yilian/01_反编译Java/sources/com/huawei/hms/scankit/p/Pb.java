package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Pb extends com.huawei.hms.scankit.p.Ob {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f611c;

    public Pb(com.huawei.hms.scankit.p.Jb jb, boolean z) {
        super(jb);
        this.f611c = z;
    }

    private void a(com.huawei.hms.scankit.p.Kb[] kbArr, com.huawei.hms.scankit.p.Hb hb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        for (int i = 0; i < kbArr.length; i++) {
            com.huawei.hms.scankit.p.Kb kb = kbArr[i];
            if (kbArr[i] != null) {
                int iE = kb.e() % 30;
                int iC = kb.c();
                if (iC > hb.c()) {
                    kbArr[i] = null;
                } else {
                    if (!this.f611c) {
                        iC += 2;
                    }
                    int i2 = iC % 3;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 != 2) {
                                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                            }
                            if (iE + 1 != hb.a()) {
                                kbArr[i] = null;
                            }
                        } else if (iE / 3 != hb.b() || iE % 3 != hb.d()) {
                            kbArr[i] = null;
                        }
                    } else if ((iE * 3) + 1 != hb.e()) {
                        kbArr[i] = null;
                    }
                }
            }
        }
    }

    private void b(com.huawei.hms.scankit.p.Hb hb) {
        com.huawei.hms.scankit.p.Jb jbA = a();
        com.huawei.hms.scankit.aiscan.common.z zVarG = this.f611c ? jbA.g() : jbA.h();
        com.huawei.hms.scankit.aiscan.common.z zVarA = this.f611c ? jbA.a() : jbA.b();
        int iC = c((int) zVarA.c());
        com.huawei.hms.scankit.p.Kb[] kbArrB = b();
        int iC2 = -1;
        int i = 0;
        int iMax = 1;
        for (int iC3 = c((int) zVarG.c()); iC3 < iC; iC3++) {
            if (kbArrB[iC3] != null) {
                com.huawei.hms.scankit.p.Kb kb = kbArrB[iC3];
                kb.h();
                int iC4 = kb.c() - iC2;
                if (iC4 == 0) {
                    i++;
                } else {
                    if (iC4 == 1) {
                        iMax = java.lang.Math.max(iMax, i);
                    } else if (kb.c() >= hb.c()) {
                        kbArrB[iC3] = null;
                    }
                    iC2 = kb.c();
                    i = 1;
                }
            }
        }
    }

    private void f() {
        for (com.huawei.hms.scankit.p.Kb kb : b()) {
            if (kb != null) {
                kb.h();
            }
        }
    }

    public void a(com.huawei.hms.scankit.p.Hb hb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Kb[] kbArrB = b();
        f();
        a(kbArrB, hb);
        com.huawei.hms.scankit.p.Jb jbA = a();
        com.huawei.hms.scankit.aiscan.common.z zVarG = this.f611c ? jbA.g() : jbA.h();
        com.huawei.hms.scankit.aiscan.common.z zVarA = this.f611c ? jbA.a() : jbA.b();
        int iC = c((int) zVarG.c());
        int iC2 = c((int) zVarA.c());
        int iC3 = -1;
        int i = 0;
        int iMax = 1;
        while (iC < iC2) {
            if (kbArrB[iC] != null) {
                com.huawei.hms.scankit.p.Kb kb = kbArrB[iC];
                int iC4 = kb.c() - iC3;
                if (iC4 == 0) {
                    i++;
                } else {
                    if (iC4 == 1) {
                        iMax = java.lang.Math.max(iMax, i);
                    } else if (iC4 < 0 || kb.c() >= hb.c() || iC4 > iC) {
                        kbArrB[iC] = null;
                    } else {
                        if (iMax > 2) {
                            iC4 *= iMax - 2;
                        }
                        boolean z = iC4 >= iC;
                        for (int i2 = 1; i2 <= iC4 && !z; i2++) {
                            z = kbArrB[iC - i2] != null;
                        }
                        if (z) {
                            kbArrB[iC] = null;
                        }
                    }
                    iC3 = kb.c();
                    i = 1;
                }
            }
            iC++;
        }
    }

    public com.huawei.hms.scankit.p.Hb c() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Kb[] kbArrB = b();
        com.huawei.hms.scankit.p.Ib ib = new com.huawei.hms.scankit.p.Ib();
        com.huawei.hms.scankit.p.Ib ib2 = new com.huawei.hms.scankit.p.Ib();
        com.huawei.hms.scankit.p.Ib ib3 = new com.huawei.hms.scankit.p.Ib();
        com.huawei.hms.scankit.p.Ib ib4 = new com.huawei.hms.scankit.p.Ib();
        for (com.huawei.hms.scankit.p.Kb kb : kbArrB) {
            if (kb != null) {
                kb.h();
                int iE = kb.e() % 30;
                int iC = kb.c();
                if (!this.f611c) {
                    iC += 2;
                }
                int i = iC % 3;
                if (i == 0) {
                    ib2.a((iE * 3) + 1);
                } else if (i == 1) {
                    ib4.a(iE / 3);
                    ib3.a(iE % 3);
                } else {
                    if (i != 2) {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                    }
                    ib.a(iE + 1);
                }
            }
        }
        if (ib.a().length == 0 || ib2.a().length == 0 || ib3.a().length == 0 || ib4.a().length == 0 || ib.a()[0] < 1 || ib2.a()[0] + ib3.a()[0] < 3 || ib2.a()[0] + ib3.a()[0] > 90) {
            return null;
        }
        com.huawei.hms.scankit.p.Hb hb = new com.huawei.hms.scankit.p.Hb(ib.a()[0], ib2.a()[0], ib3.a()[0], ib4.a()[0]);
        a(kbArrB, hb);
        return hb;
    }

    public int[] d() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iC;
        com.huawei.hms.scankit.p.Hb hbC = c();
        if (hbC == null) {
            return null;
        }
        b(hbC);
        int iC2 = hbC.c();
        int[] iArr = new int[iC2];
        for (com.huawei.hms.scankit.p.Kb kb : b()) {
            if (kb != null && (iC = kb.c()) < iC2) {
                iArr[iC] = iArr[iC] + 1;
            }
        }
        return iArr;
    }

    public boolean e() {
        return this.f611c;
    }

    @Override // com.huawei.hms.scankit.p.Ob
    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("IsLeft: ");
        sbO.append(this.f611c);
        sbO.append('\n');
        sbO.append(super.toString());
        return sbO.toString();
    }
}
