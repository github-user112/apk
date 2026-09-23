package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.nc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0183nc {
    public static final char[] a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    public static char a(int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        char[] cArr = a;
        if (i < cArr.length) {
            return cArr[i];
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static int a(com.huawei.hms.scankit.p.C0127cb c0127cb) throws java.lang.Exception {
        int iA = c0127cb.a(8);
        if ((iA & 128) == 0) {
            return iA & 127;
        }
        if ((iA & 192) == 128) {
            return c0127cb.a(8) | ((iA & 63) << 8);
        }
        if ((iA & 224) == 192) {
            return c0127cb.a(16) | ((iA & 31) << 16);
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static com.huawei.hms.scankit.aiscan.common.C0106e a(byte[] bArr, com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws java.lang.Exception {
        int i;
        int i2;
        com.huawei.hms.scankit.p.C0127cb c0127cb = new com.huawei.hms.scankit.p.C0127cb(bArr);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(50);
        java.util.ArrayList arrayList = new java.util.ArrayList(1);
        int i3 = -1;
        int i4 = -1;
        int i5 = 0;
        while (true) {
            try {
                com.huawei.hms.scankit.p.EnumC0227wc enumC0227wcA = c0127cb.a() < 4 ? com.huawei.hms.scankit.p.EnumC0227wc.TERMINATOR : com.huawei.hms.scankit.p.EnumC0227wc.a(c0127cb.a(4));
                int[] iArr = {i5, i3, i4};
                a(enumC0227wcA, c0127cb, sb, c0242zc, iArr, null, arrayList, map);
                i5 = iArr[0] == 1 ? 1 : 0;
                i = iArr[1];
                i2 = iArr[2];
                if (enumC0227wcA == com.huawei.hms.scankit.p.EnumC0227wc.TERMINATOR) {
                    break;
                }
                i3 = i;
                i4 = i2;
            } catch (java.lang.IllegalArgumentException unused) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
        }
        return new com.huawei.hms.scankit.aiscan.common.C0106e(bArr, sb.toString(), arrayList.isEmpty() ? null : arrayList, enumC0198qc == null ? null : enumC0198qc.toString(), i, i2);
    }

    public static void a(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb, int i) throws java.lang.Exception {
        if (i * 13 > c0127cb.a()) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int iA = c0127cb.a(13);
            int i3 = (iA % 96) | ((iA / 96) << 8);
            int i4 = i3 + (i3 < 959 ? 41377 : 42657);
            try {
                if (com.huawei.hms.scankit.util.b.a(bArr, i2)) {
                    int i5 = i2 + 1;
                    if (com.huawei.hms.scankit.util.b.a(bArr, i5)) {
                        bArr[i2] = (byte) ((i4 >> 8) & 255);
                        bArr[i5] = (byte) (i4 & 255);
                        i2 += 2;
                        i--;
                    }
                }
                throw new java.lang.ArrayIndexOutOfBoundsException();
            } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
                throw e2;
            }
        }
        try {
            sb.append(new java.lang.String(bArr, "GB2312"));
        } catch (java.io.UnsupportedEncodingException unused) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    public static void a(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb, int i, com.huawei.hms.scankit.aiscan.common.EnumC0104c enumC0104c, java.util.Collection<byte[]> collection, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (i * 8 > c0127cb.a()) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) c0127cb.a(8);
        }
        try {
            sb.append(new java.lang.String(bArr, enumC0104c == null ? com.huawei.hms.scankit.aiscan.common.B.a(bArr, map) : enumC0104c.name()));
            collection.add(bArr);
        } catch (java.io.UnsupportedEncodingException unused) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.huawei.hms.scankit.p.C0127cb r3, java.lang.StringBuilder r4, int r5, boolean r6) throws java.lang.Exception {
        /*
            int r0 = r4.length()
        L4:
            r1 = 1
            if (r5 <= r1) goto L2d
            int r1 = r3.a()
            r2 = 11
            if (r1 < r2) goto L28
            int r1 = r3.a(r2)
            int r2 = r1 / 45
            char r2 = a(r2)
            r4.append(r2)
            int r1 = r1 % 45
            char r1 = a(r1)
            r4.append(r1)
            int r5 = r5 + (-2)
            goto L4
        L28:
            com.huawei.hms.scankit.aiscan.common.a r3 = com.huawei.hms.scankit.aiscan.common.C0102a.a()
            throw r3
        L2d:
            if (r5 != r1) goto L47
            int r5 = r3.a()
            r2 = 6
            if (r5 < r2) goto L42
            int r3 = r3.a(r2)
            char r3 = a(r3)
            r4.append(r3)
            goto L47
        L42:
            com.huawei.hms.scankit.aiscan.common.a r3 = com.huawei.hms.scankit.aiscan.common.C0102a.a()
            throw r3
        L47:
            if (r6 == 0) goto L72
        L49:
            int r3 = r4.length()
            if (r0 >= r3) goto L72
            char r3 = r4.charAt(r0)
            r5 = 37
            if (r3 != r5) goto L6f
            int r3 = r4.length()
            int r3 = r3 - r1
            if (r0 >= r3) goto L6a
            int r3 = r0 + 1
            char r6 = r4.charAt(r3)
            if (r6 != r5) goto L6a
            r4.deleteCharAt(r3)
            goto L6f
        L6a:
            r3 = 29
            r4.setCharAt(r0, r3)
        L6f:
            int r0 = r0 + 1
            goto L49
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0183nc.a(com.huawei.hms.scankit.p.cb, java.lang.StringBuilder, int, boolean):void");
    }

    public static void a(com.huawei.hms.scankit.p.EnumC0227wc enumC0227wc, com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb, com.huawei.hms.scankit.p.C0242zc c0242zc, int[] iArr, com.huawei.hms.scankit.aiscan.common.EnumC0104c enumC0104c, java.util.List<byte[]> list, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws java.lang.Exception {
        switch (com.huawei.hms.scankit.p.C0178mc.a[enumC0227wc.ordinal()]) {
            case 5:
                return;
            case 6:
            case 7:
                iArr[0] = 1;
                return;
            case 8:
                if (c0127cb.a() < 16) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                iArr[1] = c0127cb.a(8);
                iArr[2] = c0127cb.a(8);
                return;
            case 9:
                if (com.huawei.hms.scankit.aiscan.common.EnumC0104c.a(a(c0127cb)) == null) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                return;
            case 10:
                int iA = c0127cb.a(4);
                int iA2 = c0127cb.a(enumC0227wc.a(c0242zc));
                if (iA == 1) {
                    a(c0127cb, sb, iA2);
                    return;
                }
                return;
            default:
                int iA3 = c0127cb.a(enumC0227wc.a(c0242zc));
                int i = com.huawei.hms.scankit.p.C0178mc.a[enumC0227wc.ordinal()];
                if (i == 1) {
                    c(c0127cb, sb, iA3);
                    return;
                }
                if (i == 2) {
                    a(c0127cb, sb, iA3, iArr[0] == 1);
                    return;
                } else if (i == 3) {
                    a(c0127cb, sb, iA3, enumC0104c, list, map);
                    return;
                } else {
                    if (i != 4) {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                    }
                    b(c0127cb, sb, iA3);
                    return;
                }
        }
    }

    public static void b(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb, int i) throws java.lang.Exception {
        if (i * 13 > c0127cb.a()) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int iA = c0127cb.a(13);
            int i3 = (iA % 192) | ((iA / 192) << 8);
            int i4 = i3 + (i3 < 7936 ? 33088 : 49472);
            try {
                if (com.huawei.hms.scankit.util.b.a(bArr, i2)) {
                    int i5 = i2 + 1;
                    if (com.huawei.hms.scankit.util.b.a(bArr, i5)) {
                        bArr[i2] = (byte) (i4 >> 8);
                        bArr[i5] = (byte) i4;
                        i2 += 2;
                        i--;
                    }
                }
                throw new java.lang.ArrayIndexOutOfBoundsException();
            } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
                throw e2;
            }
        }
        try {
            sb.append(new java.lang.String(bArr, "SJIS"));
        } catch (java.io.UnsupportedEncodingException unused) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    public static void c(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb, int i) throws java.lang.Exception {
        int iA;
        while (i >= 3) {
            if (c0127cb.a() < 10) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            int iA2 = c0127cb.a(10);
            if (iA2 >= 1000) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            sb.append(a(iA2 / 100));
            sb.append(a((iA2 / 10) % 10));
            sb.append(a(iA2 % 10));
            i -= 3;
        }
        if (i == 2) {
            if (c0127cb.a() < 7) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            int iA3 = c0127cb.a(7);
            if (iA3 >= 100) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            sb.append(a(iA3 / 10));
            iA = iA3 % 10;
        } else {
            if (i != 1) {
                return;
            }
            if (c0127cb.a() < 4) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            iA = c0127cb.a(4);
            if (iA >= 10) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
        }
        sb.append(a(iA));
    }
}
