package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Fd implements com.huawei.hms.scankit.p.Gd {
    public static java.lang.String a(java.lang.CharSequence charSequence, int i) throws java.lang.Exception {
        int length = charSequence.length() - i;
        if (length == 0) {
            try {
                throw new java.lang.IllegalStateException("StringBuilder must not be empty");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        int iCharAt = (charSequence.charAt(i) << 18) + ((length >= 2 ? charSequence.charAt(i + 1) : (char) 0) << '\f') + ((length >= 3 ? charSequence.charAt(i + 2) : (char) 0) << 6) + (length >= 4 ? charSequence.charAt(i + 3) : (char) 0);
        char c2 = (char) ((iCharAt >> 16) & 255);
        char c3 = (char) ((iCharAt >> 8) & 255);
        char c4 = (char) (iCharAt & 255);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(3);
        sb.append(c2);
        if (length >= 2) {
            sb.append(c3);
        }
        if (length >= 3) {
            sb.append(c4);
        }
        return sb.toString();
    }

    public static void a(char c2, java.lang.StringBuilder sb) throws java.lang.Exception {
        if (c2 < ' ' || c2 > '?') {
            if (c2 < '@' || c2 > '^') {
                com.huawei.hms.scankit.p.Jd.a(c2);
                throw null;
            }
            c2 = (char) (c2 - '@');
        }
        sb.append(c2);
    }

    public static void a(com.huawei.hms.scankit.p.Hd hd, java.lang.CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                return;
            }
            boolean z = true;
            if (length == 1) {
                hd.k();
                int iA = hd.g().a() - hd.a();
                int iF = hd.f();
                if (iF > iA) {
                    hd.c(hd.a() + 1);
                    iA = hd.g().a() - hd.a();
                }
                if (iF <= iA && iA <= 2) {
                    return;
                }
            }
            if (length > 4) {
                throw new java.lang.IllegalStateException("Count must not exceed 4");
            }
            int i = length - 1;
            java.lang.String strA = a(charSequence, 0);
            if (!(!hd.h()) || i > 2) {
                z = false;
            }
            if (i <= 2) {
                hd.c(hd.a() + i);
                if (hd.g().a() - hd.a() >= 3) {
                    hd.c(hd.a() + strA.length());
                    z = false;
                }
            }
            if (z) {
                hd.j();
                hd.f537f -= i;
            } else {
                hd.a(strA);
            }
        } finally {
            hd.b(0);
        }
    }

    public int a() {
        return 4;
    }

    @Override // com.huawei.hms.scankit.p.Gd
    public void a(com.huawei.hms.scankit.p.Hd hd) throws java.lang.Exception {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (true) {
            if (!hd.h()) {
                break;
            }
            a(hd.c(), sb);
            hd.f537f++;
            if (sb.length() >= 4) {
                hd.a(a(sb, 0));
                sb.delete(0, 4);
                if (com.huawei.hms.scankit.p.Jd.a(hd.d(), hd.f537f, a()) != a()) {
                    hd.b(0);
                    break;
                }
            }
        }
        sb.append((char) 31);
        a(hd, sb);
    }
}
