package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Jd {
    public static char a(char c2, int i) {
        int i2 = ((i * 149) % 253) + 1 + c2;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }

    public static int a(java.lang.CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        if (i < length) {
            loop0: while (true) {
                char cCharAt = charSequence.charAt(i);
                while (b(cCharAt) && i < length) {
                    i2++;
                    i++;
                    if (i < length) {
                        break;
                    }
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:137:0x01eb, code lost:
    
        r1 = (r18 + r5) + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01f1, code lost:
    
        if (r1 >= r17.length()) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01f3, code lost:
    
        r2 = r17.charAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01fb, code lost:
    
        if (i(r2) == false) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01fd, code lost:
    
        return 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0202, code lost:
    
        if (g(r2) != false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0205, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0208, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.lang.CharSequence r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Jd.a(java.lang.CharSequence, int, int):int");
    }

    public static int a(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    public static int a(float[] fArr, int[] iArr, int i, byte[] bArr) {
        java.util.Arrays.fill(bArr, (byte) 0);
        for (int i2 = 0; i2 < 6; i2++) {
            iArr[i2] = (int) java.lang.Math.ceil(fArr[i2]);
            int i3 = iArr[i2];
            if (i > i3) {
                java.util.Arrays.fill(bArr, (byte) 0);
                i = i3;
            }
            if (i == i3) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bc A[LOOP:1: B:30:0x00b6->B:32:0x00bc, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r8, com.huawei.hms.scankit.p.Ld r9, com.huawei.hms.scankit.p.C0184nd r10, com.huawei.hms.scankit.p.C0184nd r11) {
        /*
            r0 = 6
            com.huawei.hms.scankit.p.Gd[] r1 = new com.huawei.hms.scankit.p.Gd[r0]
            com.huawei.hms.scankit.p.Ad r2 = new com.huawei.hms.scankit.p.Ad
            r2.<init>()
            r3 = 0
            r1[r3] = r2
            com.huawei.hms.scankit.p.Cd r2 = new com.huawei.hms.scankit.p.Cd
            r2.<init>()
            r4 = 1
            r1[r4] = r2
            com.huawei.hms.scankit.p.Md r2 = new com.huawei.hms.scankit.p.Md
            r2.<init>()
            r5 = 2
            r1[r5] = r2
            com.huawei.hms.scankit.p.Nd r2 = new com.huawei.hms.scankit.p.Nd
            r2.<init>()
            r6 = 3
            r1[r6] = r2
            com.huawei.hms.scankit.p.Fd r2 = new com.huawei.hms.scankit.p.Fd
            r2.<init>()
            r6 = 4
            r1[r6] = r2
            com.huawei.hms.scankit.p.Bd r2 = new com.huawei.hms.scankit.p.Bd
            r2.<init>()
            r7 = 5
            r1[r7] = r2
            com.huawei.hms.scankit.p.Hd r2 = new com.huawei.hms.scankit.p.Hd
            r2.<init>(r8)
            r2.a(r9)
            r2.a(r10, r11)
            java.lang.String r9 = "[)>\u001e05\u001d"
            boolean r9 = r8.startsWith(r9)
            java.lang.String r10 = "\u001e\u0004"
            if (r9 == 0) goto L5d
            boolean r9 = r8.endsWith(r10)
            if (r9 == 0) goto L5d
            r8 = 236(0xec, float:3.31E-43)
        L50:
            r2.a(r8)
            r2.a(r5)
            int r8 = r2.f537f
            int r8 = r8 + 7
            r2.f537f = r8
            goto L6e
        L5d:
            java.lang.String r9 = "[)>\u001e06\u001d"
            boolean r9 = r8.startsWith(r9)
            if (r9 == 0) goto L6e
            boolean r8 = r8.endsWith(r10)
            if (r8 == 0) goto L6e
            r8 = 237(0xed, float:3.32E-43)
            goto L50
        L6e:
            boolean r8 = r2.h()
            if (r8 == 0) goto L8b
            if (r3 < 0) goto L7d
            if (r3 >= r0) goto L7d
            r8 = r1[r3]
            r8.a(r2)
        L7d:
            int r8 = r2.e()
            if (r8 < 0) goto L6e
            int r3 = r2.e()
            r2.i()
            goto L6e
        L8b:
            int r8 = r2.a()
            r2.k()
            com.huawei.hms.scankit.p.Kd r9 = r2.g()
            int r9 = r9.a()
            if (r8 >= r9) goto La7
            if (r3 == 0) goto La7
            if (r3 == r7) goto La7
            if (r3 == r6) goto La7
            r8 = 254(0xfe, float:3.56E-43)
            r2.a(r8)
        La7:
            java.lang.StringBuilder r8 = r2.b()
            int r10 = r8.length()
            r11 = 129(0x81, float:1.81E-43)
            if (r10 >= r9) goto Lb6
            r8.append(r11)
        Lb6:
            int r10 = r8.length()
            if (r10 >= r9) goto Lc9
            int r10 = r8.length()
            int r10 = r10 + r4
            char r10 = a(r11, r10)
            r8.append(r10)
            goto Lb6
        Lc9:
            java.lang.StringBuilder r8 = r2.b()
            java.lang.String r8 = r8.toString()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Jd.a(java.lang.String, com.huawei.hms.scankit.p.Ld, com.huawei.hms.scankit.p.nd, com.huawei.hms.scankit.p.nd):java.lang.String");
    }

    public static void a(char c2) throws java.lang.Exception {
        java.lang.String hexString = java.lang.Integer.toHexString(c2);
        java.lang.String str = net.easyconn.ecsdk.ebt.BleUuidUtils.UUID_LONG_STYLE_PREFIX.substring(0, 4 - hexString.length()) + hexString;
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("Illegal character: ");
            sb.append(c2);
            sb.append(" (0x");
            sb.append(str);
            sb.append(')');
            throw new java.lang.IllegalArgumentException(sb.toString());
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    public static boolean b(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static boolean c(char c2) {
        return c2 >= 128 && c2 <= 255;
    }

    public static boolean d(char c2) {
        return c2 == ' ' || (c2 >= '0' && c2 <= '9') || (c2 >= 'A' && c2 <= 'Z');
    }

    public static boolean e(char c2) {
        return c2 >= ' ' && c2 <= '^';
    }

    public static boolean f(char c2) {
        return c2 == ' ' || (c2 >= '0' && c2 <= '9') || (c2 >= 'a' && c2 <= 'z');
    }

    public static boolean g(char c2) {
        return i(c2) || c2 == ' ' || (c2 >= '0' && c2 <= '9') || (c2 >= 'A' && c2 <= 'Z');
    }

    public static boolean h(char c2) {
        return false;
    }

    public static boolean i(char c2) {
        return c2 == '\r' || c2 == '*' || c2 == '>';
    }
}
