package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class me {
    public static final int[] a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    public static int a(int i) {
        int[] iArr = a;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    public static int a(com.huawei.hms.scankit.p.C0117ab c0117ab, com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc, com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p.je jeVar) throws java.lang.Exception {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < 8; i3++) {
            com.huawei.hms.scankit.p.oe.a(c0117ab, enumC0198qc, c0242zc, i3, jeVar);
            int iA = a(jeVar);
            if (iA < i) {
                i2 = i3;
                i = iA;
            }
        }
        return i2;
    }

    public static int a(com.huawei.hms.scankit.p.je jeVar) {
        return com.huawei.hms.scankit.p.ne.d(jeVar) + com.huawei.hms.scankit.p.ne.c(jeVar) + com.huawei.hms.scankit.p.ne.b(jeVar) + com.huawei.hms.scankit.p.ne.a(jeVar);
    }

    public static int a(com.huawei.hms.scankit.p.EnumC0227wc enumC0227wc, com.huawei.hms.scankit.p.C0117ab c0117ab, com.huawei.hms.scankit.p.C0117ab c0117ab2, com.huawei.hms.scankit.p.C0242zc c0242zc) {
        return c0117ab2.d() + enumC0227wc.a(c0242zc) + c0117ab.d();
    }

    public static com.huawei.hms.scankit.p.C0117ab a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, int i2, int i3) throws java.lang.Exception {
        if (c0117ab.e() != i2) {
            throw new com.huawei.hms.hmsscankit.WriterException("Number of bits and data bytes does not match");
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(i3);
        int i4 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            a(i, i2, i3, i5, iArr, iArr2);
            int i6 = iArr[0];
            byte[] bArr = new byte[i6];
            c0117ab.a(i4 * 8, bArr, 0, i6);
            byte[] bArrA = a(bArr, iArr2[0]);
            arrayList.add(new com.huawei.hms.scankit.p.ie(bArr, bArrA));
            iMax2 = java.lang.Math.max(iMax2, i6);
            iMax = java.lang.Math.max(iMax, bArrA.length);
            i4 += iArr[0];
        }
        if (i2 != i4) {
            throw new com.huawei.hms.hmsscankit.WriterException("Data bytes does not match offset");
        }
        com.huawei.hms.scankit.p.C0117ab c0117ab2 = new com.huawei.hms.scankit.p.C0117ab();
        for (int i7 = 0; i7 < iMax2; i7++) {
            java.util.Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArrA2 = ((com.huawei.hms.scankit.p.ie) it.next()).a();
                if (i7 < bArrA2.length) {
                    c0117ab2.a(bArrA2[i7], 8);
                }
            }
        }
        for (int i8 = 0; i8 < iMax; i8++) {
            java.util.Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArrB = ((com.huawei.hms.scankit.p.ie) it2.next()).b();
                if (i8 < bArrB.length) {
                    c0117ab2.a(bArrB[i8], 8);
                }
            }
        }
        if (i == c0117ab2.e()) {
            return c0117ab2;
        }
        java.lang.StringBuilder sbP = e.a.c.a.a.p("Interleaving error: ", i, " and ");
        sbP.append(c0117ab2.e());
        sbP.append(" differ.");
        throw new com.huawei.hms.hmsscankit.WriterException(sbP.toString());
    }

    public static com.huawei.hms.scankit.p.pe a(java.lang.String str, com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) throws java.lang.Exception {
        com.huawei.hms.scankit.p.C0242zc c0242zcA;
        com.huawei.hms.scankit.aiscan.common.EnumC0104c enumC0104cA;
        boolean z = map != null && map.containsKey(com.huawei.hms.scankit.p.ke.CHARACTER_SET);
        java.lang.String string = z ? map.get(com.huawei.hms.scankit.p.ke.CHARACTER_SET).toString() : com.google.android.exoplayer2.C.ISO88591_NAME;
        com.huawei.hms.scankit.p.EnumC0227wc enumC0227wcA = a(str, string);
        com.huawei.hms.scankit.p.C0117ab c0117ab = new com.huawei.hms.scankit.p.C0117ab();
        if (enumC0227wcA == com.huawei.hms.scankit.p.EnumC0227wc.BYTE && z && (enumC0104cA = com.huawei.hms.scankit.aiscan.common.EnumC0104c.a(string)) != null) {
            a(enumC0104cA, c0117ab);
        }
        if ((map != null && map.containsKey(com.huawei.hms.scankit.p.ke.GS1_FORMAT)) && java.lang.Boolean.valueOf(map.get(com.huawei.hms.scankit.p.ke.GS1_FORMAT).toString()).booleanValue()) {
            a(com.huawei.hms.scankit.p.EnumC0227wc.FNC1_FIRST_POSITION, c0117ab);
        }
        a(enumC0227wcA, c0117ab);
        com.huawei.hms.scankit.p.C0117ab c0117ab2 = new com.huawei.hms.scankit.p.C0117ab();
        a(str, enumC0227wcA, c0117ab2, string);
        if (map == null || !map.containsKey(com.huawei.hms.scankit.p.ke.QR_VERSION)) {
            c0242zcA = a(enumC0198qc, enumC0227wcA, c0117ab, c0117ab2);
        } else {
            try {
                c0242zcA = com.huawei.hms.scankit.p.C0242zc.c(java.lang.Integer.parseInt(map.get(com.huawei.hms.scankit.p.ke.QR_VERSION).toString()));
                if (!a(a(enumC0227wcA, c0117ab, c0117ab2, c0242zcA), c0242zcA, enumC0198qc)) {
                    throw new com.huawei.hms.hmsscankit.WriterException("Data too big for requested version");
                }
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        com.huawei.hms.scankit.p.C0117ab c0117ab3 = new com.huawei.hms.scankit.p.C0117ab();
        c0117ab3.a(c0117ab);
        a(enumC0227wcA == com.huawei.hms.scankit.p.EnumC0227wc.BYTE ? c0117ab2.e() : str.length(), c0242zcA, enumC0227wcA, c0117ab3);
        c0117ab3.a(c0117ab2);
        com.huawei.hms.scankit.p.C0242zc.b bVarA = c0242zcA.a(enumC0198qc);
        int iD = c0242zcA.d() - bVarA.d();
        a(iD, c0117ab3);
        com.huawei.hms.scankit.p.C0117ab c0117abA = a(c0117ab3, c0242zcA.d(), iD, bVarA.c());
        com.huawei.hms.scankit.p.pe peVar = new com.huawei.hms.scankit.p.pe();
        peVar.a(enumC0198qc);
        peVar.a(enumC0227wcA);
        peVar.a(c0242zcA);
        int iC = c0242zcA.c();
        com.huawei.hms.scankit.p.je jeVar = new com.huawei.hms.scankit.p.je(iC, iC);
        int iA = a(c0117abA, enumC0198qc, c0242zcA, jeVar);
        peVar.b(iA);
        com.huawei.hms.scankit.p.oe.a(c0117abA, enumC0198qc, c0242zcA, iA, jeVar);
        peVar.a(jeVar);
        return peVar;
    }

    public static com.huawei.hms.scankit.p.EnumC0227wc a(java.lang.String str, java.lang.String str2) {
        if ("Shift_JIS".equals(str2) && a(str)) {
            return com.huawei.hms.scankit.p.EnumC0227wc.KANJI;
        }
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z2 = true;
            } else {
                if (a(cCharAt) == -1) {
                    return com.huawei.hms.scankit.p.EnumC0227wc.BYTE;
                }
                z = true;
            }
        }
        return z ? com.huawei.hms.scankit.p.EnumC0227wc.ALPHANUMERIC : z2 ? com.huawei.hms.scankit.p.EnumC0227wc.NUMERIC : com.huawei.hms.scankit.p.EnumC0227wc.BYTE;
    }

    public static com.huawei.hms.scankit.p.C0242zc a(int i, com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc) throws java.lang.Exception {
        for (int i2 = 1; i2 <= 40; i2++) {
            com.huawei.hms.scankit.p.C0242zc c0242zcC = com.huawei.hms.scankit.p.C0242zc.c(i2);
            if (a(i, c0242zcC, enumC0198qc)) {
                return c0242zcC;
            }
        }
        throw new com.huawei.hms.hmsscankit.WriterException("Data too big");
    }

    public static com.huawei.hms.scankit.p.C0242zc a(com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc, com.huawei.hms.scankit.p.EnumC0227wc enumC0227wc, com.huawei.hms.scankit.p.C0117ab c0117ab, com.huawei.hms.scankit.p.C0117ab c0117ab2) {
        return a(a(enumC0227wc, c0117ab, c0117ab2, a(a(enumC0227wc, c0117ab, c0117ab2, com.huawei.hms.scankit.p.C0242zc.c(1)), enumC0198qc)), enumC0198qc);
    }

    public static void a(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) throws com.huawei.hms.hmsscankit.WriterException {
        if (i4 >= i3) {
            throw new com.huawei.hms.hmsscankit.WriterException("Block ID too large");
        }
        int i5 = i % i3;
        int i6 = i3 - i5;
        int i7 = i / i3;
        int i8 = i7 + 1;
        int i9 = i2 / i3;
        int i10 = i9 + 1;
        int i11 = i7 - i9;
        int i12 = i8 - i10;
        if (i11 != i12) {
            throw new com.huawei.hms.hmsscankit.WriterException("EC bytes mismatch");
        }
        if (i3 != i6 + i5) {
            throw new com.huawei.hms.hmsscankit.WriterException("RS blocks mismatch");
        }
        if (i != ((i10 + i12) * i5) + ((i9 + i11) * i6)) {
            throw new com.huawei.hms.hmsscankit.WriterException("Total bytes mismatch");
        }
        if (i4 < i6) {
            iArr[0] = i9;
            iArr2[0] = i11;
        } else {
            iArr[0] = i10;
            iArr2[0] = i12;
        }
    }

    public static void a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        int i2 = i * 8;
        if (c0117ab.d() > i2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("data bits cannot fit in the QR Code");
            sbO.append(c0117ab.d());
            sbO.append(" > ");
            sbO.append(i2);
            throw new com.huawei.hms.hmsscankit.WriterException(sbO.toString());
        }
        for (int i3 = 0; i3 < 4 && c0117ab.d() < i2; i3++) {
            c0117ab.a(false);
        }
        int iD = c0117ab.d() & 7;
        if (iD > 0) {
            while (iD < 8) {
                c0117ab.a(false);
                iD++;
            }
        }
        int iE = i - c0117ab.e();
        for (int i4 = 0; i4 < iE; i4++) {
            c0117ab.a((i4 & 1) == 0 ? 236 : 17, 8);
        }
        if (c0117ab.d() != i2) {
            throw new com.huawei.hms.hmsscankit.WriterException("Bits size does not equal capacity");
        }
    }

    public static void a(int i, com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p.EnumC0227wc enumC0227wc, com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        int iA = enumC0227wc.a(c0242zc);
        int i2 = 1 << iA;
        if (i < i2) {
            c0117ab.a(i, iA);
            return;
        }
        throw new com.huawei.hms.hmsscankit.WriterException(i + " is bigger than " + (i2 - 1));
    }

    public static void a(com.huawei.hms.scankit.aiscan.common.EnumC0104c enumC0104c, com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        c0117ab.a(com.huawei.hms.scankit.p.EnumC0227wc.ECI.a(), 4);
        c0117ab.a(enumC0104c.a(), 8);
    }

    public static void a(com.huawei.hms.scankit.p.EnumC0227wc enumC0227wc, com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        c0117ab.a(enumC0227wc.a(), 4);
    }

    public static void a(java.lang.CharSequence charSequence, com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iA = a(charSequence.charAt(i));
            if (iA == -1) {
                throw new com.huawei.hms.hmsscankit.WriterException();
            }
            int i2 = i + 1;
            if (i2 < length) {
                int iA2 = a(charSequence.charAt(i2));
                if (iA2 == -1) {
                    throw new com.huawei.hms.hmsscankit.WriterException();
                }
                c0117ab.a((iA * 45) + iA2, 11);
                i += 2;
            } else {
                c0117ab.a(iA, 6);
                i = i2;
            }
        }
    }

    public static void a(java.lang.String str, com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        int i;
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            for (int i2 = 0; i2 < length; i2 += 2) {
                int i3 = ((bytes[i2] & 255) << 8) | (bytes[i2 + 1] & 255);
                int i4 = 33088;
                if (i3 >= 33088 && i3 <= 40956) {
                    i = i3 - i4;
                } else if (i3 < 57408 || i3 > 60351) {
                    i = -1;
                } else {
                    i4 = 49472;
                    i = i3 - i4;
                }
                if (i == -1) {
                    throw new com.huawei.hms.hmsscankit.WriterException("Invalid byte sequence");
                }
                c0117ab.a(((i >> 8) * 192) + (i & 255), 13);
            }
        } catch (java.io.UnsupportedEncodingException e2) {
            throw new com.huawei.hms.hmsscankit.WriterException(e2);
        }
    }

    public static void a(java.lang.String str, com.huawei.hms.scankit.p.C0117ab c0117ab, java.lang.String str2) throws java.lang.Exception {
        try {
            for (byte b : str.getBytes(str2)) {
                c0117ab.a(b, 8);
            }
        } catch (java.io.UnsupportedEncodingException e2) {
            throw new com.huawei.hms.hmsscankit.WriterException(e2);
        }
    }

    public static void a(java.lang.String str, com.huawei.hms.scankit.p.EnumC0227wc enumC0227wc, com.huawei.hms.scankit.p.C0117ab c0117ab, java.lang.String str2) throws java.lang.Exception {
        int i = com.huawei.hms.scankit.p.le.a[enumC0227wc.ordinal()];
        if (i == 1) {
            b(str, c0117ab);
            return;
        }
        if (i == 2) {
            a((java.lang.CharSequence) str, c0117ab);
            return;
        }
        if (i == 3) {
            a(str, c0117ab, str2);
        } else {
            if (i == 4) {
                a(str, c0117ab);
                return;
            }
            throw new com.huawei.hms.hmsscankit.WriterException("Invalid mode: " + enumC0227wc);
        }
    }

    public static boolean a(int i, com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc) {
        return c0242zc.d() - c0242zc.a(enumC0198qc).d() >= (i + 7) / 8;
    }

    public static boolean a(java.lang.String str) throws java.io.UnsupportedEncodingException {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & 255;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (java.io.UnsupportedEncodingException unused) {
            return false;
        }
    }

    public static byte[] a(byte[] bArr, int i) throws java.lang.Exception {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new com.huawei.hms.scankit.aiscan.common.v(com.huawei.hms.scankit.aiscan.common.h.f405e).a(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    public static void b(java.lang.CharSequence charSequence, com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iCharAt = charSequence.charAt(i) - '0';
            int i2 = i + 2;
            if (i2 < length) {
                c0117ab.a(((charSequence.charAt(i + 1) - '0') * 10) + (iCharAt * 100) + (charSequence.charAt(i2) - '0'), 10);
                i += 3;
            } else {
                i++;
                if (i < length) {
                    c0117ab.a((iCharAt * 10) + (charSequence.charAt(i) - '0'), 7);
                    i = i2;
                } else {
                    c0117ab.a(iCharAt, 4);
                }
            }
        }
    }
}
