package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Mb {
    public static final char[] a = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();
    public static final char[] b = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    /* renamed from: c, reason: collision with root package name */
    public static final java.math.BigInteger[] f587c;

    public enum a {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        java.math.BigInteger[] bigIntegerArr = new java.math.BigInteger[16];
        f587c = bigIntegerArr;
        bigIntegerArr[0] = java.math.BigInteger.ONE;
        java.math.BigInteger bigIntegerValueOf = java.math.BigInteger.valueOf(900L);
        f587c[1] = bigIntegerValueOf;
        int i = 2;
        while (true) {
            java.math.BigInteger[] bigIntegerArr2 = f587c;
            if (i >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(bigIntegerValueOf);
            i++;
        }
    }

    public static int a(int i, int[] iArr, java.nio.charset.Charset charset, int i2, java.lang.StringBuilder sb) {
        int iA;
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        int i3 = 0;
        long j = 0;
        boolean z = false;
        if (i == 901) {
            int[] iArr2 = new int[6];
            int i4 = i2 + 1;
            int i5 = iArr[i2];
            while (i4 < iArr[0] && !z) {
                int i6 = i3 + 1;
                iArr2[i3] = i5;
                j = (j * 900) + i5;
                int i7 = i4 + 1;
                i5 = iArr[i4];
                if (i5 != 928) {
                    switch (i5) {
                        case 900:
                        case 901:
                        case 902:
                            break;
                        default:
                            switch (i5) {
                                case 922:
                                case 923:
                                case 924:
                                    break;
                                default:
                                    if (i6 % 5 != 0 || i6 <= 0) {
                                        i4 = i7;
                                        i3 = i6;
                                        break;
                                    } else {
                                        for (int i8 = 0; i8 < 6; i8++) {
                                            byteArrayOutputStream.write((byte) (j >> ((5 - i8) * 8)));
                                        }
                                        j = 0;
                                        i4 = i7;
                                        i3 = 0;
                                        break;
                                    }
                                    break;
                            }
                    }
                }
                i4 = i7 - 1;
                z = true;
                i3 = i6;
            }
            if (i4 == iArr[0] && i5 < 900) {
                iArr2[i3] = i5;
                i3++;
            }
            for (int i9 = 0; i9 < i3; i9++) {
                byteArrayOutputStream.write((byte) iArr2[i9]);
            }
            iA = i4;
        } else {
            iA = i == 924 ? a(i2, iArr, false, 0, 0L, byteArrayOutputStream) : i2;
        }
        sb.append(new java.lang.String(byteArrayOutputStream.toByteArray(), charset));
        return iA;
    }

    public static int a(int i, int[] iArr, boolean z, int i2, long j, java.io.ByteArrayOutputStream byteArrayOutputStream) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i4 < 900) {
                i2++;
                j = (j * 900) + i4;
                i = i3;
            } else {
                if (i4 != 928) {
                    switch (i4) {
                        default:
                            switch (i4) {
                                case 922:
                                case 923:
                                case 924:
                                    break;
                                default:
                                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                            }
                        case 900:
                        case 901:
                        case 902:
                            i = i3 - 1;
                            z = true;
                            break;
                    }
                }
                i = i3 - 1;
                z = true;
            }
            if (i2 % 5 == 0 && i2 > 0) {
                for (int i5 = 0; i5 < 6; i5++) {
                    byteArrayOutputStream.write((byte) (j >> ((5 - i5) * 8)));
                }
                j = 0;
                i2 = 0;
            }
        }
        return i;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:200)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public static int a(java.lang.StringBuilder r1, int r2, int[] r3, int r4, java.nio.charset.Charset r5, com.huawei.hms.scankit.p.Yb r6) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        /*
            r0 = 913(0x391, float:1.28E-42)
            if (r2 == r0) goto L30
            r0 = 928(0x3a0, float:1.3E-42)
            if (r2 == r0) goto L2b
            switch(r2) {
                case 900: goto L16;
                case 901: goto L21;
                case 902: goto L11;
                default: goto Lb;
            }
        Lb:
            switch(r2) {
                case 922: goto L26;
                case 923: goto L26;
                case 924: goto L21;
                case 925: goto L1e;
                case 926: goto L1b;
                default: goto Le;
            }
        Le:
            int r4 = r4 + (-1)
            goto L16
        L11:
            int r1 = a(r3, r4, r1)
            goto L39
        L16:
            int r1 = b(r3, r4, r1)
            goto L39
        L1b:
            int r1 = r4 + 2
            goto L39
        L1e:
            int r1 = r4 + 1
            goto L39
        L21:
            int r1 = a(r2, r3, r5, r4, r1)
            goto L39
        L26:
            com.huawei.hms.scankit.aiscan.common.a r1 = com.huawei.hms.scankit.aiscan.common.C0102a.a()
            throw r1
        L2b:
            int r1 = a(r3, r4, r6)
            goto L39
        L30:
            int r2 = r4 + 1
            r3 = r3[r4]
            char r3 = (char) r3
            r1.append(r3)
            r1 = r2
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Mb.a(java.lang.StringBuilder, int, int[], int, java.nio.charset.Charset, com.huawei.hms.scankit.p.Yb):int");
    }

    public static int a(int[] iArr, int i, com.huawei.hms.scankit.p.Yb yb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i2 = 0;
        if (i + 2 > iArr[0]) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int[] iArr2 = new int[2];
        while (i2 < 2) {
            iArr2[i2] = iArr[i];
            i2++;
            i++;
        }
        try {
            yb.c(java.lang.Integer.parseInt(a(iArr2, 2)));
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            int iB = b(iArr, i, sb);
            yb.b(sb.toString());
            int i3 = iArr[iB] == 923 ? iB + 1 : -1;
            a(iB, iArr, yb);
            if (i3 != -1) {
                int i4 = iB - i3;
                if (yb.a()) {
                    i4--;
                }
                yb.a(java.util.Arrays.copyOfRange(iArr, i3, i4 + i3));
            }
            return iB;
        } catch (java.lang.Exception unused) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    public static int a(int[] iArr, int i, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i3 == iArr[0]) {
                z = true;
            }
            if (i4 < 900) {
                iArr2[i2] = i4;
                i2++;
            } else {
                if (i4 != 900 && i4 != 901 && i4 != 928) {
                    switch (i4) {
                        case 922:
                        case 923:
                        case 924:
                            break;
                        default:
                            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                    }
                }
                i3--;
                z = true;
            }
            if ((i2 % 15 == 0 || i4 == 902 || z) && i2 > 0) {
                sb.append(a(iArr2, i2));
                i2 = 0;
            }
            i = i3;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        if (r6.length() == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005a, code lost:
    
        if (r8 != java.nio.charset.StandardCharsets.ISO_8859_1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        r9 = r6.length();
        r2 = new byte[r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
    
        if (r0 >= r9) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
    
        r2[r0] = (byte) r6.charAt(r0);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0077, code lost:
    
        r9 = new com.huawei.hms.scankit.aiscan.common.C0106e(null, new java.lang.String(r2, com.huawei.hms.scankit.aiscan.common.B.a(r2, r11)), null, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007c, code lost:
    
        r9.a(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0084, code lost:
    
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
    
        r9 = new com.huawei.hms.scankit.aiscan.common.C0106e(null, r6.toString(), null, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0094, code lost:
    
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.huawei.hms.scankit.aiscan.common.C0106e a(int[] r9, java.lang.String r10, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> r11) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        /*
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            int r0 = r9.length
            r1 = 2
            int r0 = r0 * 2
            r6.<init>(r0)
            java.nio.charset.Charset r0 = java.nio.charset.StandardCharsets.ISO_8859_1
            r2 = 1
            r2 = r9[r2]
            com.huawei.hms.scankit.p.Yb r7 = new com.huawei.hms.scankit.p.Yb
            r7.<init>()
            r8 = r0
            r1 = r2
            r3 = 2
        L16:
            r0 = 0
            r2 = r9[r0]
            if (r3 > r2) goto L51
            r2 = r9[r0]
            if (r3 != r2) goto L26
            int r2 = r6.length()
            if (r2 <= 0) goto L26
            goto L51
        L26:
            r0 = 927(0x39f, float:1.299E-42)
            if (r1 != r0) goto L3c
            int r0 = r3 + 1
            r1 = r9[r3]
            com.huawei.hms.scankit.aiscan.common.c r1 = com.huawei.hms.scankit.aiscan.common.EnumC0104c.a(r1)
            java.lang.String r1 = r1.name()
            java.nio.charset.Charset r1 = java.nio.charset.Charset.forName(r1)
            r8 = r1
            goto L44
        L3c:
            r0 = r6
            r2 = r9
            r4 = r8
            r5 = r7
            int r0 = a(r0, r1, r2, r3, r4, r5)
        L44:
            int r1 = r9.length
            if (r0 >= r1) goto L4c
            int r3 = r0 + 1
            r1 = r9[r0]
            goto L16
        L4c:
            com.huawei.hms.scankit.aiscan.common.a r9 = com.huawei.hms.scankit.aiscan.common.C0102a.a()
            throw r9
        L51:
            int r9 = r6.length()
            if (r9 == 0) goto L8f
            java.nio.charset.Charset r9 = java.nio.charset.StandardCharsets.ISO_8859_1
            r1 = 0
            if (r8 != r9) goto L85
            int r9 = r6.length()
            byte[] r2 = new byte[r9]
        L62:
            if (r0 >= r9) goto L6e
            char r3 = r6.charAt(r0)
            byte r3 = (byte) r3
            r2[r0] = r3
            int r0 = r0 + 1
            goto L62
        L6e:
            java.lang.String r9 = com.huawei.hms.scankit.aiscan.common.B.a(r2, r11)
            java.lang.String r11 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L80
            r11.<init>(r2, r9)     // Catch: java.io.UnsupportedEncodingException -> L80
            com.huawei.hms.scankit.aiscan.common.e r9 = new com.huawei.hms.scankit.aiscan.common.e
            r9.<init>(r1, r11, r1, r10)
        L7c:
            r9.a(r7)
            return r9
        L80:
            com.huawei.hms.scankit.aiscan.common.a r9 = com.huawei.hms.scankit.aiscan.common.C0102a.a()
            throw r9
        L85:
            com.huawei.hms.scankit.aiscan.common.e r9 = new com.huawei.hms.scankit.aiscan.common.e
            java.lang.String r11 = r6.toString()
            r9.<init>(r1, r11, r1, r10)
            goto L7c
        L8f:
            com.huawei.hms.scankit.aiscan.common.a r9 = com.huawei.hms.scankit.aiscan.common.C0102a.a()
            goto L95
        L94:
            throw r9
        L95:
            goto L94
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Mb.a(int[], java.lang.String, java.util.Map):com.huawei.hms.scankit.aiscan.common.e");
    }

    public static java.lang.String a(int[] iArr, int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        java.math.BigInteger bigIntegerAdd = java.math.BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigIntegerAdd = bigIntegerAdd.add(f587c[(i - i2) - 1].multiply(java.math.BigInteger.valueOf(iArr[i2])));
        }
        java.lang.String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static void a(int i, int[] iArr, com.huawei.hms.scankit.p.Yb yb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        while (i < iArr[0]) {
            if (iArr[i] == 923) {
                int i2 = i + 1;
                if (iArr[i2] == 0) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    i = b(iArr, i2 + 1, sb);
                    yb.c(sb.toString());
                } else if (iArr[i2] == 3) {
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                    i = b(iArr, i2 + 1, sb2);
                    yb.d(sb2.toString());
                } else if (iArr[i2] == 4) {
                    java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                    i = b(iArr, i2 + 1, sb3);
                    yb.a(sb3.toString());
                } else if (iArr[i2] == 1) {
                    java.lang.StringBuilder sb4 = new java.lang.StringBuilder();
                    i = a(iArr, i2 + 1, sb4);
                    yb.b(java.lang.Integer.parseInt(sb4.toString()));
                } else if (iArr[i2] == 2) {
                    java.lang.StringBuilder sb5 = new java.lang.StringBuilder();
                    i = a(iArr, i2 + 1, sb5);
                    yb.b(java.lang.Long.parseLong(sb5.toString()));
                } else if (iArr[i2] == 6) {
                    java.lang.StringBuilder sb6 = new java.lang.StringBuilder();
                    i = a(iArr, i2 + 1, sb6);
                    yb.a(java.lang.Integer.parseInt(sb6.toString()));
                } else {
                    if (iArr[i2] != 5) {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                    }
                    java.lang.StringBuilder sb7 = new java.lang.StringBuilder();
                    i = a(iArr, i2 + 1, sb7);
                    yb.a(java.lang.Long.parseLong(sb7.toString()));
                }
            } else {
                if (iArr[i] != 922) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                i++;
                yb.a(true);
            }
        }
    }

    public static void a(int[] iArr, int[] iArr2, int i, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Mb.a aVar = com.huawei.hms.scankit.p.Mb.a.ALPHA;
        com.huawei.hms.scankit.p.Mb.a aVar2 = aVar;
        int i2 = 0;
        while (i2 < i) {
            int[] iArr3 = {i2, iArr[i2], 0};
            com.huawei.hms.scankit.p.Mb.a[] aVarArrA = {aVar, aVar2};
            switch (com.huawei.hms.scankit.p.Lb.a[aVar.ordinal()]) {
                case 1:
                    aVarArrA = a(sb, iArr2, aVar, aVar2, iArr3);
                    break;
                case 2:
                    aVarArrA = c(sb, iArr2, aVar, aVar2, iArr3);
                    break;
                case 3:
                    aVarArrA = d(sb, iArr2, aVar, aVar2, iArr3);
                    break;
                case 4:
                    aVarArrA = e(sb, iArr2, aVar, aVar2, iArr3);
                    break;
                case 5:
                    aVarArrA = b(sb, iArr2, aVar, aVar2, iArr3);
                    break;
                case 6:
                    aVarArrA = f(sb, iArr2, aVar, aVar2, iArr3);
                    break;
            }
            aVar = aVarArrA[0];
            aVar2 = aVarArrA[1];
            int i3 = iArr3[0];
            int i4 = iArr3[1];
            char c2 = (char) iArr3[2];
            if (c2 != 0) {
                sb.append(c2);
            }
            i2 = 1 + i3;
        }
    }

    public static boolean a(int i) {
        return i == 901 || i == 924 || i == 902 || i == 928 || i == 923 || i == 922;
    }

    public static com.huawei.hms.scankit.p.Mb.a[] a(java.lang.StringBuilder sb, int[] iArr, com.huawei.hms.scankit.p.Mb.a aVar, com.huawei.hms.scankit.p.Mb.a aVar2, int[] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (iArr2[1] < 26) {
            iArr2[2] = (char) (iArr2[1] + 65);
        } else {
            int i = iArr2[1];
            if (i == 900) {
                aVar = com.huawei.hms.scankit.p.Mb.a.ALPHA;
            } else if (i != 913) {
                switch (i) {
                    case 26:
                        iArr2[2] = 32;
                        break;
                    case 27:
                        aVar = com.huawei.hms.scankit.p.Mb.a.LOWER;
                        break;
                    case 28:
                        aVar = com.huawei.hms.scankit.p.Mb.a.MIXED;
                        break;
                    case 29:
                        aVar2 = aVar;
                        aVar = com.huawei.hms.scankit.p.Mb.a.PUNCT_SHIFT;
                        break;
                    default:
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
            } else {
                sb.append((char) iArr[iArr2[0]]);
            }
        }
        return new com.huawei.hms.scankit.p.Mb.a[]{aVar, aVar2};
    }

    public static int b(int[] iArr, int i, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr2 = new int[(iArr[0] - i) * 2];
        int[] iArr3 = new int[(iArr[0] - i) * 2];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i4 < 900) {
                iArr2[i2] = i4 / 30;
                iArr2[i2 + 1] = i4 % 30;
                i2 += 2;
            } else if (i4 == 900) {
                iArr2[i2] = 900;
                i2++;
            } else if (i4 == 913) {
                iArr2[i2] = 913;
                i = i3 + 1;
                iArr3[i2] = iArr[i3];
                i2++;
            } else {
                if (!a(i4)) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                i = i3 - 1;
                z = true;
            }
            i = i3;
        }
        a(iArr2, iArr3, i2, sb);
        return i;
    }

    public static com.huawei.hms.scankit.p.Mb.a[] b(java.lang.StringBuilder sb, int[] iArr, com.huawei.hms.scankit.p.Mb.a aVar, com.huawei.hms.scankit.p.Mb.a aVar2, int[] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Mb.a aVar3;
        if (iArr2[1] < 26) {
            iArr2[2] = (char) (iArr2[1] + 65);
        } else {
            int i = iArr2[1];
            if (i != 26) {
                if (i != 900) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                aVar3 = com.huawei.hms.scankit.p.Mb.a.ALPHA;
                return new com.huawei.hms.scankit.p.Mb.a[]{aVar3, aVar2};
            }
            iArr2[2] = 32;
        }
        aVar3 = aVar2;
        return new com.huawei.hms.scankit.p.Mb.a[]{aVar3, aVar2};
    }

    public static com.huawei.hms.scankit.p.Mb.a[] c(java.lang.StringBuilder sb, int[] iArr, com.huawei.hms.scankit.p.Mb.a aVar, com.huawei.hms.scankit.p.Mb.a aVar2, int[] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Mb.a aVar3;
        if (iArr2[1] < 26) {
            iArr2[2] = (char) (iArr2[1] + 97);
        } else {
            int i = iArr2[1];
            if (i == 900) {
                aVar = com.huawei.hms.scankit.p.Mb.a.ALPHA;
            } else if (i != 913) {
                switch (i) {
                    case 26:
                        iArr2[2] = 32;
                        break;
                    case 27:
                        aVar3 = com.huawei.hms.scankit.p.Mb.a.ALPHA_SHIFT;
                        aVar2 = aVar;
                        aVar = aVar3;
                        break;
                    case 28:
                        aVar = com.huawei.hms.scankit.p.Mb.a.MIXED;
                        break;
                    case 29:
                        aVar3 = com.huawei.hms.scankit.p.Mb.a.PUNCT_SHIFT;
                        aVar2 = aVar;
                        aVar = aVar3;
                        break;
                    default:
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
            } else {
                sb.append((char) iArr[iArr2[0]]);
            }
        }
        return new com.huawei.hms.scankit.p.Mb.a[]{aVar, aVar2};
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.huawei.hms.scankit.p.Mb.a[] d(java.lang.StringBuilder r5, int[] r6, com.huawei.hms.scankit.p.Mb.a r7, com.huawei.hms.scankit.p.Mb.a r8, int[] r9) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        /*
            r0 = 1
            r1 = r9[r0]
            r2 = 0
            r3 = 2
            r4 = 25
            if (r1 >= r4) goto L12
            char[] r5 = com.huawei.hms.scankit.p.Mb.b
            r6 = r9[r0]
            char r5 = r5[r6]
            r9[r3] = r5
            goto L3f
        L12:
            r1 = r9[r0]
            r4 = 900(0x384, float:1.261E-42)
            if (r1 == r4) goto L3d
            r4 = 913(0x391, float:1.28E-42)
            if (r1 == r4) goto L34
            switch(r1) {
                case 25: goto L31;
                case 26: goto L2c;
                case 27: goto L29;
                case 28: goto L3d;
                case 29: goto L24;
                default: goto L1f;
            }
        L1f:
            com.huawei.hms.scankit.aiscan.common.a r5 = com.huawei.hms.scankit.aiscan.common.C0102a.a()
            throw r5
        L24:
            com.huawei.hms.scankit.p.Mb$a r5 = com.huawei.hms.scankit.p.Mb.a.PUNCT_SHIFT
            r8 = r7
            r7 = r5
            goto L3f
        L29:
            com.huawei.hms.scankit.p.Mb$a r7 = com.huawei.hms.scankit.p.Mb.a.LOWER
            goto L3f
        L2c:
            r5 = 32
            r9[r3] = r5
            goto L3f
        L31:
            com.huawei.hms.scankit.p.Mb$a r7 = com.huawei.hms.scankit.p.Mb.a.PUNCT
            goto L3f
        L34:
            r9 = r9[r2]
            r6 = r6[r9]
            char r6 = (char) r6
            r5.append(r6)
            goto L3f
        L3d:
            com.huawei.hms.scankit.p.Mb$a r7 = com.huawei.hms.scankit.p.Mb.a.ALPHA
        L3f:
            com.huawei.hms.scankit.p.Mb$a[] r5 = new com.huawei.hms.scankit.p.Mb.a[r3]
            r5[r2] = r7
            r5[r0] = r8
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Mb.d(java.lang.StringBuilder, int[], com.huawei.hms.scankit.p.Mb$a, com.huawei.hms.scankit.p.Mb$a, int[]):com.huawei.hms.scankit.p.Mb$a[]");
    }

    public static com.huawei.hms.scankit.p.Mb.a[] e(java.lang.StringBuilder sb, int[] iArr, com.huawei.hms.scankit.p.Mb.a aVar, com.huawei.hms.scankit.p.Mb.a aVar2, int[] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (iArr2[1] < 29) {
            iArr2[2] = a[iArr2[1]];
        } else {
            int i = iArr2[1];
            if (i == 29 || i == 900) {
                aVar = com.huawei.hms.scankit.p.Mb.a.ALPHA;
            } else {
                if (i != 913) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                sb.append((char) iArr[iArr2[0]]);
            }
        }
        return new com.huawei.hms.scankit.p.Mb.a[]{aVar, aVar2};
    }

    public static com.huawei.hms.scankit.p.Mb.a[] f(java.lang.StringBuilder sb, int[] iArr, com.huawei.hms.scankit.p.Mb.a aVar, com.huawei.hms.scankit.p.Mb.a aVar2, int[] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Mb.a aVar3;
        if (iArr2[1] < 29) {
            iArr2[2] = a[iArr2[1]];
        } else {
            int i = iArr2[1];
            if (i == 29 || i == 900) {
                aVar3 = com.huawei.hms.scankit.p.Mb.a.ALPHA;
                return new com.huawei.hms.scankit.p.Mb.a[]{aVar3, aVar2};
            }
            if (i != 913) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            sb.append((char) iArr[iArr2[0]]);
        }
        aVar3 = aVar2;
        return new com.huawei.hms.scankit.p.Mb.a[]{aVar3, aVar2};
    }
}
