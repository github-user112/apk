package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Bd implements com.huawei.hms.scankit.p.Gd {
    public static char a(char c2, int i) {
        int i2 = ((i * 149) % 255) + 1 + c2;
        return i2 <= 255 ? (char) i2 : (char) (i2 - 256);
    }

    public int a() {
        return 5;
    }

    @Override // com.huawei.hms.scankit.p.Gd
    public void a(com.huawei.hms.scankit.p.Hd hd) throws java.lang.Exception {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!hd.h()) {
                break;
            }
            sb.append(hd.c());
            hd.f537f++;
            if (com.huawei.hms.scankit.p.Jd.a(hd.d(), hd.f537f, a()) != a()) {
                hd.b(0);
                break;
            }
        }
        int length = sb.length() - 1;
        int iA = hd.a() + length + 1;
        hd.c(iA);
        boolean z = hd.g().a() - iA > 0;
        if (hd.h() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    try {
                        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                        sb2.append("Message length not in valid ranges: ");
                        sb2.append(length);
                        throw new java.lang.IllegalStateException(sb2.toString());
                    } catch (java.lang.Exception e2) {
                        throw e2;
                    }
                }
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb.length();
        for (int i = 0; i < length2; i++) {
            hd.a(a(sb.charAt(i), hd.a() + 1));
        }
    }
}
