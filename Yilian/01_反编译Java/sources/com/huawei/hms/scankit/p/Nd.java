package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Nd extends com.huawei.hms.scankit.p.Cd {
    @Override // com.huawei.hms.scankit.p.Cd
    public int a() {
        return 3;
    }

    @Override // com.huawei.hms.scankit.p.Cd
    public int a(char c2, java.lang.StringBuilder sb) throws java.lang.Exception {
        char c3;
        int i;
        if (c2 == '\r') {
            c3 = 0;
        } else if (c2 == ' ') {
            c3 = 3;
        } else {
            if (c2 == '*') {
                sb.append((char) 1);
                return 1;
            }
            if (c2 != '>') {
                if (c2 >= '0' && c2 <= '9') {
                    i = (c2 - '0') + 4;
                } else {
                    if (c2 < 'A' || c2 > 'Z') {
                        com.huawei.hms.scankit.p.Jd.a(c2);
                        throw null;
                    }
                    i = (c2 - 'A') + 14;
                }
                c3 = (char) i;
            } else {
                c3 = 2;
            }
        }
        sb.append(c3);
        return 1;
    }

    @Override // com.huawei.hms.scankit.p.Cd, com.huawei.hms.scankit.p.Gd
    public void a(com.huawei.hms.scankit.p.Hd hd) throws java.lang.Exception {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (true) {
            if (!hd.h()) {
                break;
            }
            char c2 = hd.c();
            hd.f537f++;
            a(c2, sb);
            if (sb.length() % 3 == 0) {
                com.huawei.hms.scankit.p.Cd.b(hd, sb);
                if (com.huawei.hms.scankit.p.Jd.a(hd.d(), hd.f537f, a()) != a()) {
                    hd.b(0);
                    break;
                }
            }
        }
        a(hd, sb);
    }

    @Override // com.huawei.hms.scankit.p.Cd
    public void a(com.huawei.hms.scankit.p.Hd hd, java.lang.StringBuilder sb) {
        hd.k();
        int iA = hd.g().a() - hd.a();
        hd.f537f -= sb.length();
        if (hd.f() > 1 || iA > 1 || hd.f() != iA) {
            hd.a((char) 254);
        }
        if (hd.e() < 0) {
            hd.b(0);
        }
    }
}
