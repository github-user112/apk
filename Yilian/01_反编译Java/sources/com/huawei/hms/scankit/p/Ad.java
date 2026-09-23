package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Ad implements com.huawei.hms.scankit.p.Gd {
    public static char a(char c2, char c3) throws java.lang.Exception {
        if (com.huawei.hms.scankit.p.Jd.b(c2) && com.huawei.hms.scankit.p.Jd.b(c3)) {
            return (char) ((c3 - '0') + ((c2 - '0') * 10) + 130);
        }
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("not digits: ");
            sb.append(c2);
            sb.append(c3);
            throw new java.lang.IllegalArgumentException(sb.toString());
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    public int a() {
        return 0;
    }

    @Override // com.huawei.hms.scankit.p.Gd
    public void a(com.huawei.hms.scankit.p.Hd hd) throws java.lang.Exception {
        int i;
        char c2;
        if (com.huawei.hms.scankit.p.Jd.a(hd.d(), hd.f537f) >= 2) {
            hd.a(a(hd.d().charAt(hd.f537f), hd.d().charAt(hd.f537f + 1)));
            i = hd.f537f + 2;
        } else {
            char c3 = hd.c();
            int iA = com.huawei.hms.scankit.p.Jd.a(hd.d(), hd.f537f, a());
            if (iA != a()) {
                if (iA == 1) {
                    hd.a((char) 230);
                    hd.b(1);
                    return;
                }
                if (iA == 2) {
                    hd.a((char) 239);
                    hd.b(2);
                    return;
                }
                int i2 = 3;
                if (iA != 3) {
                    i2 = 4;
                    if (iA != 4) {
                        if (iA == 5) {
                            hd.a((char) 231);
                            hd.b(5);
                            return;
                        }
                        try {
                            java.lang.StringBuilder sb = new java.lang.StringBuilder();
                            sb.append("Illegal mode: ");
                            sb.append(iA);
                            throw new java.lang.IllegalStateException(sb.toString());
                        } catch (java.lang.Exception e2) {
                            throw e2;
                        }
                    }
                    c2 = 240;
                } else {
                    c2 = 238;
                }
                hd.a(c2);
                hd.b(i2);
                return;
            }
            boolean zC = com.huawei.hms.scankit.p.Jd.c(c3);
            int i3 = c3;
            if (zC) {
                hd.a((char) 235);
                i3 = c3 - 128;
            }
            hd.a((char) (i3 + 1));
            i = hd.f537f + 1;
        }
        hd.f537f = i;
    }
}
