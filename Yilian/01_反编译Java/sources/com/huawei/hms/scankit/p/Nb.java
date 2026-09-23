package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Nb {
    public final com.huawei.hms.scankit.p.Hb a;
    public final com.huawei.hms.scankit.p.Ob[] b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p.Jb f600c;

    /* renamed from: d, reason: collision with root package name */
    public final int f601d;

    public Nb(com.huawei.hms.scankit.p.Hb hb, com.huawei.hms.scankit.p.Jb jb) {
        this.a = hb;
        int iA = hb.a();
        this.f601d = iA;
        this.f600c = jb;
        this.b = new com.huawei.hms.scankit.p.Ob[iA + 2];
    }

    public static int a(int i, int i2, com.huawei.hms.scankit.p.Kb kb) {
        if (kb == null || kb.g()) {
            return i2;
        }
        if (!kb.a(i)) {
            return i2 + 1;
        }
        kb.b(i);
        return 0;
    }

    private void a(int i, int i2, com.huawei.hms.scankit.p.Kb[] kbArr) {
        com.huawei.hms.scankit.p.Kb kb = kbArr[i2];
        com.huawei.hms.scankit.p.Kb[] kbArrB = this.b[i - 1].b();
        com.huawei.hms.scankit.p.Ob[] obArr = this.b;
        int i3 = i + 1;
        com.huawei.hms.scankit.p.Kb[] kbArrB2 = obArr[i3] != null ? obArr[i3].b() : kbArrB;
        com.huawei.hms.scankit.p.Kb[] kbArr2 = new com.huawei.hms.scankit.p.Kb[14];
        kbArr2[2] = kbArrB[i2];
        kbArr2[3] = kbArrB2[i2];
        if (i2 > 0) {
            int i4 = i2 - 1;
            kbArr2[0] = kbArr[i4];
            kbArr2[4] = kbArrB[i4];
            kbArr2[5] = kbArrB2[i4];
        }
        if (i2 > 1) {
            int i5 = i2 - 2;
            kbArr2[8] = kbArr[i5];
            kbArr2[10] = kbArrB[i5];
            kbArr2[11] = kbArrB2[i5];
        }
        if (i2 < kbArr.length - 1) {
            int i6 = i2 + 1;
            kbArr2[1] = kbArr[i6];
            kbArr2[6] = kbArrB[i6];
            kbArr2[7] = kbArrB2[i6];
        }
        if (i2 < kbArr.length - 2) {
            int i7 = i2 + 2;
            kbArr2[9] = kbArr[i7];
            kbArr2[12] = kbArrB[i7];
            kbArr2[13] = kbArrB2[i7];
        }
        for (int i8 = 0; i8 < 14 && !a(kb, kbArr2[i8]); i8++) {
        }
    }

    private void a(com.huawei.hms.scankit.p.Ob ob) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (ob != null) {
            try {
                ((com.huawei.hms.scankit.p.Pb) ob).a(this.a);
            } catch (java.lang.ClassCastException unused) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
        }
    }

    public static boolean a(com.huawei.hms.scankit.p.Kb kb, com.huawei.hms.scankit.p.Kb kb2) {
        if (kb2 == null || !kb2.g() || kb2.a() != kb.a()) {
            return false;
        }
        kb.b(kb2.c());
        return true;
    }

    private int f() {
        int iG = g();
        if (iG == 0) {
            return 0;
        }
        for (int i = 1; i < this.f601d + 1; i++) {
            com.huawei.hms.scankit.p.Kb[] kbArrB = this.b[i].b();
            for (int i2 = 0; i2 < kbArrB.length; i2++) {
                if (kbArrB[i2] != null && !kbArrB[i2].g()) {
                    a(i, i2, kbArrB);
                }
            }
        }
        return iG;
    }

    private int g() {
        h();
        return i() + j();
    }

    private void h() {
        com.huawei.hms.scankit.p.Ob[] obArr = this.b;
        if (obArr[0] == null || obArr[this.f601d + 1] == null) {
            return;
        }
        com.huawei.hms.scankit.p.Kb[] kbArrB = obArr[0].b();
        com.huawei.hms.scankit.p.Kb[] kbArrB2 = this.b[this.f601d + 1].b();
        for (int i = 0; i < kbArrB.length; i++) {
            if (kbArrB[i] != null && kbArrB2[i] != null && kbArrB[i].c() == kbArrB2[i].c()) {
                for (int i2 = 1; i2 <= this.f601d; i2++) {
                    com.huawei.hms.scankit.p.Kb kb = this.b[i2].b()[i];
                    if (kb != null) {
                        kb.b(kbArrB[i].c());
                        if (!kb.g()) {
                            this.b[i2].b()[i] = null;
                        }
                    }
                }
            }
        }
    }

    private int i() {
        com.huawei.hms.scankit.p.Ob[] obArr = this.b;
        if (obArr[0] == null) {
            return 0;
        }
        com.huawei.hms.scankit.p.Kb[] kbArrB = obArr[0].b();
        int i = 0;
        for (int i2 = 0; i2 < kbArrB.length; i2++) {
            if (kbArrB[i2] != null) {
                int iC = kbArrB[i2].c();
                int iA = 0;
                for (int i3 = 1; i3 < this.f601d + 1 && iA < 2; i3++) {
                    com.huawei.hms.scankit.p.Kb kb = this.b[i3].b()[i2];
                    if (kb != null) {
                        iA = a(iC, iA, kb);
                        if (!kb.g()) {
                            i++;
                        }
                    }
                }
            }
        }
        return i;
    }

    private int j() {
        com.huawei.hms.scankit.p.Ob[] obArr = this.b;
        int i = this.f601d + 1;
        if (obArr[i] == null) {
            return 0;
        }
        com.huawei.hms.scankit.p.Kb[] kbArrB = obArr[i].b();
        int i2 = 0;
        for (int i3 = 0; i3 < kbArrB.length; i3++) {
            if (kbArrB[i3] != null) {
                int iC = kbArrB[i3].c();
                int iA = 0;
                for (int i4 = this.f601d + 1; i4 > 0 && iA < 2; i4--) {
                    com.huawei.hms.scankit.p.Kb kb = this.b[i4].b()[i3];
                    if (kb != null) {
                        iA = a(iC, iA, kb);
                        if (!kb.g()) {
                            i2++;
                        }
                    }
                }
            }
        }
        return i2;
    }

    public int a() {
        return this.f601d;
    }

    public com.huawei.hms.scankit.p.Ob a(int i) {
        return this.b[i];
    }

    public void a(int i, com.huawei.hms.scankit.p.Ob ob) {
        this.b[i] = ob;
    }

    public void a(com.huawei.hms.scankit.p.Jb jb) {
        this.f600c = jb;
    }

    public int b() {
        return this.a.b();
    }

    public int c() {
        return this.a.c();
    }

    public com.huawei.hms.scankit.p.Jb d() {
        return this.f600c;
    }

    public com.huawei.hms.scankit.p.Ob[] e() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        a(this.b[0]);
        a(this.b[this.f601d + 1]);
        int i = 928;
        while (true) {
            int iF = f();
            if (iF <= 0 || iF >= i) {
                break;
            }
            i = iF;
        }
        return this.b;
    }

    public java.lang.String toString() {
        com.huawei.hms.scankit.p.Ob[] obArr = this.b;
        com.huawei.hms.scankit.p.Ob ob = obArr[0];
        if (ob == null) {
            ob = obArr[this.f601d + 1];
        }
        java.util.Formatter formatter = new java.util.Formatter();
        for (int i = 0; i < ob.b().length; i++) {
            try {
                formatter.format("CW %3d:", java.lang.Integer.valueOf(i));
                for (int i2 = 0; i2 < this.f601d + 2; i2++) {
                    if (this.b[i2] == null) {
                        formatter.format("    |   ", new java.lang.Object[0]);
                    } else {
                        com.huawei.hms.scankit.p.Kb kb = this.b[i2].b()[i];
                        if (kb == null) {
                            formatter.format("    |   ", new java.lang.Object[0]);
                        } else {
                            formatter.format(" %3d|%3d", java.lang.Integer.valueOf(kb.c()), java.lang.Integer.valueOf(kb.e()));
                        }
                    }
                }
                formatter.format("%n", new java.lang.Object[0]);
            } catch (java.lang.Throwable th) {
                try {
                    throw th;
                } catch (java.lang.Throwable th2) {
                    try {
                        formatter.close();
                    } catch (java.lang.Throwable unused) {
                    }
                    throw th2;
                }
            }
        }
        java.lang.String string = formatter.toString();
        formatter.close();
        return string;
    }
}
