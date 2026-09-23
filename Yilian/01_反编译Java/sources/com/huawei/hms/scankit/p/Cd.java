package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Cd implements com.huawei.hms.scankit.p.Gd {
    private int a(com.huawei.hms.scankit.p.Hd hd, java.lang.StringBuilder sb, java.lang.StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        hd.f537f--;
        int iA = a(hd.c(), sb2);
        hd.j();
        return iA;
    }

    public static java.lang.String a(java.lang.CharSequence charSequence, int i) {
        int iCharAt = (charSequence.charAt(i + 1) * '(') + (charSequence.charAt(i) * 1600) + charSequence.charAt(i + 2) + 1;
        return new java.lang.String(new char[]{(char) (iCharAt / 256), (char) (iCharAt % 256)});
    }

    public static void b(com.huawei.hms.scankit.p.Hd hd, java.lang.StringBuilder sb) {
        hd.a(a(sb, 0));
        sb.delete(0, 3);
    }

    public int a() {
        return 1;
    }

    public int a(char c2, java.lang.StringBuilder sb) {
        int i;
        int i2;
        char c3;
        if (c2 == ' ') {
            c3 = 3;
        } else {
            if (c2 >= '0' && c2 <= '9') {
                i2 = (c2 - '0') + 4;
            } else {
                if (c2 < 'A' || c2 > 'Z') {
                    if (c2 < ' ') {
                        sb.append((char) 0);
                    } else {
                        char c4 = '!';
                        if (c2 < '!' || c2 > '/') {
                            if (c2 >= ':' && c2 <= '@') {
                                sb.append((char) 1);
                                i = (c2 - ':') + 15;
                            } else if (c2 < '[' || c2 > '_') {
                                c4 = '`';
                                if (c2 < '`' || c2 > 127) {
                                    sb.append("\u0001\u001e");
                                    return a((char) (c2 - 128), sb) + 2;
                                }
                                sb.append((char) 2);
                            } else {
                                sb.append((char) 1);
                                i = (c2 - '[') + 22;
                            }
                            c2 = (char) i;
                        } else {
                            sb.append((char) 1);
                        }
                        i = c2 - c4;
                        c2 = (char) i;
                    }
                    sb.append(c2);
                    return 2;
                }
                i2 = (c2 - 'A') + 14;
            }
            c3 = (char) i2;
        }
        sb.append(c3);
        return 1;
    }

    @Override // com.huawei.hms.scankit.p.Gd
    public void a(com.huawei.hms.scankit.p.Hd hd) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (true) {
            if (!hd.h()) {
                break;
            }
            char c2 = hd.c();
            hd.f537f++;
            int iA = a(c2, sb);
            int iA2 = hd.a() + ((sb.length() / 3) * 2);
            hd.c(iA2);
            int iA3 = hd.g().a() - iA2;
            if (!hd.h()) {
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                if (sb.length() % 3 == 2 && (iA3 < 2 || iA3 > 2)) {
                    iA = a(hd, sb, sb2, iA);
                }
                while (sb.length() % 3 == 1) {
                    if (iA <= 3 && iA3 != 1) {
                        iA = a(hd, sb, sb2, iA);
                    } else if (iA <= 3) {
                        break;
                    } else {
                        iA = a(hd, sb, sb2, iA);
                    }
                }
            } else if (sb.length() % 3 == 0 && com.huawei.hms.scankit.p.Jd.a(hd.d(), hd.f537f, a()) != a()) {
                hd.b(0);
                break;
            }
        }
        a(hd, sb);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.huawei.hms.scankit.p.Hd r7, java.lang.StringBuilder r8) {
        /*
            r6 = this;
            int r0 = r8.length()
            r1 = 3
            int r0 = r0 / r1
            r2 = 2
            int r0 = r0 * 2
            int r3 = r8.length()
            int r3 = r3 % r1
            int r4 = r7.a()
            int r4 = r4 + r0
            r7.c(r4)
            com.huawei.hms.scankit.p.Kd r0 = r7.g()
            int r0 = r0.a()
            int r0 = r0 - r4
            r4 = 0
            r5 = 254(0xfe, float:3.56E-43)
            if (r3 != r2) goto L3b
            r8.append(r4)
        L27:
            int r0 = r8.length()
            if (r0 < r1) goto L31
            b(r7, r8)
            goto L27
        L31:
            boolean r8 = r7.h()
            if (r8 == 0) goto L7d
        L37:
            r7.a(r5)
            goto L7d
        L3b:
            r2 = 1
            if (r0 != r2) goto L59
            if (r3 != r2) goto L59
        L40:
            int r0 = r8.length()
            if (r0 < r1) goto L4a
            b(r7, r8)
            goto L40
        L4a:
            boolean r8 = r7.h()
            if (r8 == 0) goto L53
            r7.a(r5)
        L53:
            int r8 = r7.f537f
            int r8 = r8 - r2
            r7.f537f = r8
            goto L7d
        L59:
            if (r3 != 0) goto L6e
        L5b:
            int r2 = r8.length()
            if (r2 < r1) goto L65
            b(r7, r8)
            goto L5b
        L65:
            if (r0 > 0) goto L37
            boolean r8 = r7.h()
            if (r8 == 0) goto L7d
            goto L37
        L6e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Exception -> L76
            java.lang.String r0 = "Unexpected case. Please report!"
            r8.<init>(r0)     // Catch: java.lang.Exception -> L76
            throw r8     // Catch: java.lang.Exception -> L76
        L76:
            java.lang.String r8 = "exception"
            java.lang.String r0 = "Exception"
            com.huawei.hms.scankit.util.a.b(r8, r0)
        L7d:
            r7.b(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Cd.a(com.huawei.hms.scankit.p.Hd, java.lang.StringBuilder):void");
    }
}
