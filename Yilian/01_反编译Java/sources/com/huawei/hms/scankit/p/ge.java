package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class ge {
    public static final byte[] a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ROLL_UP_CAPTIONS_3_ROWS, com.umeng.analytics.pro.bw.k, 9, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ERASE_DISPLAYED_MEMORY, 58, 35, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_CARRIAGE_RETURN, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ERASE_NON_DISPLAYED_MEMORY, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_DELETE_TO_END_OF_ROW, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_END_OF_CAPTION, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_RESUME_TEXT_DISPLAY, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ROLL_UP_CAPTIONS_2_ROWS, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_TEXT_RESTART, 61, 94, 0, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_RESUME_CAPTION_LOADING, 0, 0, 0};
    public static final byte[] b = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_BACKSPACE, com.umeng.analytics.pro.bw.k, 9, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ERASE_DISPLAYED_MEMORY, 58, 10, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_CARRIAGE_RETURN, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ERASE_NON_DISPLAYED_MEMORY, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_DELETE_TO_END_OF_ROW, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_END_OF_CAPTION, 34, 124, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_TEXT_RESTART, 40, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_RESUME_DIRECT_CAPTIONING, 63, 123, 125, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ROLL_UP_CAPTIONS_4_ROWS, 0};

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f725c = new byte[128];

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f726d = new byte[128];

    /* renamed from: e, reason: collision with root package name */
    public static final java.nio.charset.Charset f727e = java.nio.charset.StandardCharsets.ISO_8859_1;

    static {
        java.util.Arrays.fill(f725c, (byte) -1);
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = a;
            if (i2 >= bArr.length) {
                break;
            }
            byte b2 = bArr[i2];
            if (b2 > 0) {
                f725c[b2] = (byte) i2;
            }
            i2++;
        }
        java.util.Arrays.fill(f726d, (byte) -1);
        while (true) {
            byte[] bArr2 = b;
            if (i >= bArr2.length) {
                return;
            }
            byte b3 = bArr2[i];
            if (b3 > 0) {
                f726d[b3] = (byte) i;
            }
            i++;
        }
    }

    public static int a(java.lang.CharSequence charSequence, int i) {
        return com.huawei.hms.scankit.p.Jd.a(charSequence, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009d, code lost:
    
        if (r10 == ' ') goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00cf A[EDGE_INSN: B:77:0x00cf->B:56:0x00cf BREAK  A[LOOP:0: B:3:0x0011->B:94:0x0011], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.lang.CharSequence r16, int r17, int r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.ge.a(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    public static int a(java.lang.String str, int i, java.nio.charset.Charset charset) throws com.huawei.hms.hmsscankit.WriterException {
        int i2;
        java.nio.charset.CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        int length = str.length();
        int i3 = i;
        while (i3 < length) {
            char cCharAt = str.charAt(i3);
            int i4 = 0;
            while (i4 < 13 && c(cCharAt) && (i2 = i3 + (i4 = i4 + 1)) < length) {
                cCharAt = str.charAt(i2);
            }
            if (i4 >= 13) {
                return i3 - i;
            }
            char cCharAt2 = str.charAt(i3);
            if (!charsetEncoderNewEncoder.canEncode(cCharAt2)) {
                throw new com.huawei.hms.hmsscankit.WriterException("Non-encodable character detected: " + cCharAt2 + " (Unicode: " + ((int) cCharAt2) + ')');
            }
            i3++;
        }
        return i3 - i;
    }

    public static java.lang.String a(java.lang.String str, com.huawei.hms.scankit.p.be beVar, java.nio.charset.Charset charset) throws com.huawei.hms.hmsscankit.WriterException {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(str.length());
        if (charset == null) {
            charset = f727e;
        } else if (f727e.equals(charset)) {
            com.huawei.hms.scankit.util.a.a("PDF417", "else");
        } else {
            com.huawei.hms.scankit.aiscan.common.EnumC0104c enumC0104cA = com.huawei.hms.scankit.aiscan.common.EnumC0104c.a(charset.name());
            if (enumC0104cA != null) {
                a(enumC0104cA.a(), sb);
            }
        }
        int length = str.length();
        int i = com.huawei.hms.scankit.p.fe.a[beVar.ordinal()];
        if (i == 1) {
            a(str, 0, length, sb, 0);
        } else if (i == 2) {
            byte[] bytes = str.getBytes(charset);
            a(bytes, 0, bytes.length, 1, sb);
        } else if (i != 3) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                int iA = 0;
                while (i2 < length) {
                    int iA2 = a(str, i2);
                    if (iA2 >= 13) {
                        sb.append((char) 902);
                        a(str, i2, iA2, sb);
                        i2 += iA2;
                        i3 = 2;
                    } else {
                        int iB = b(str, i2);
                        if (iB >= 5 || iA2 == length) {
                            if (i3 != 0) {
                                sb.append((char) 900);
                                i3 = 0;
                                iA = 0;
                            }
                            iA = a(str, i2, iB, sb, iA);
                            i2 += iB;
                        } else {
                            int iA3 = a(str, i2, charset);
                            if (iA3 == 0) {
                                iA3 = 1;
                            }
                            int i4 = iA3 + i2;
                            byte[] bytes2 = str.substring(i2, i4).getBytes(charset);
                            if (bytes2.length == 1 && i3 == 0) {
                                a(bytes2, 0, 1, 0, sb);
                                i2 = i4;
                            } else {
                                a(bytes2, 0, bytes2.length, i3, sb);
                                i2 = i4;
                                i3 = 1;
                            }
                        }
                    }
                }
                break loop0;
            }
        } else {
            sb.append((char) 902);
            a(str, 0, length, sb);
        }
        return sb.toString();
    }

    public static void a(int i, java.lang.StringBuilder sb) throws com.huawei.hms.hmsscankit.WriterException {
        char c2;
        if (i >= 0 && i < 900) {
            sb.append((char) 927);
        } else {
            if (i >= 810900) {
                if (i >= 811800) {
                    throw new com.huawei.hms.hmsscankit.WriterException(e.a.c.a.a.K("ECI number not in valid range from 0..811799, but was ", i));
                }
                sb.append((char) 925);
                c2 = (char) (810900 - i);
                sb.append(c2);
            }
            sb.append((char) 926);
            sb.append((char) ((i / 900) - 1));
            i %= 900;
        }
        c2 = (char) i;
        sb.append(c2);
    }

    public static void a(java.lang.String str, int i, int i2, java.lang.StringBuilder sb) {
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder((i2 / 3) + 1);
        java.math.BigInteger bigIntegerValueOf = java.math.BigInteger.valueOf(900L);
        java.math.BigInteger bigIntegerValueOf2 = java.math.BigInteger.valueOf(0L);
        int i3 = 0;
        while (i3 < i2) {
            sb2.setLength(0);
            int iMin = java.lang.Math.min(44, i2 - i3);
            if (str.length() > 0) {
                java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                sb3.append('1');
                int i4 = i + i3;
                sb3.append(str.substring(i4, i4 + iMin));
                java.math.BigInteger bigInteger = new java.math.BigInteger(sb3.toString());
                do {
                    sb2.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                    bigInteger = bigInteger.divide(bigIntegerValueOf);
                } while (!bigInteger.equals(bigIntegerValueOf2));
            }
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i3 += iMin;
        }
    }

    public static void a(byte[] bArr, int i, int i2, int i3, java.lang.StringBuilder sb) {
        int i4;
        sb.append((i2 == 1 && i3 == 0) ? (char) 913 : i2 % 6 == 0 ? (char) 924 : (char) 901);
        if (i2 >= 6) {
            char[] cArr = new char[5];
            i4 = i;
            while ((i + i2) - i4 >= 6) {
                long j = 0;
                for (int i5 = 0; i5 < 6; i5++) {
                    j = (j << 8) + (bArr[i4 + i5] & 255);
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    cArr[i6] = (char) (j % 900);
                    j /= 900;
                }
                for (int i7 = 4; i7 >= 0; i7--) {
                    sb.append(cArr[i7]);
                }
                i4 += 6;
            }
        } else {
            i4 = i;
        }
        while (i4 < i + i2) {
            sb.append((char) (bArr[i4] & 255));
            i4++;
        }
    }

    public static boolean a(char c2) {
        return c2 == ' ' || (c2 >= 'a' && c2 <= 'z');
    }

    public static int b(java.lang.CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = i;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            int i3 = 0;
            while (i3 < 13 && c(cCharAt) && i2 < length) {
                i3++;
                i2++;
                if (i2 < length) {
                    cCharAt = charSequence.charAt(i2);
                }
            }
            if (i3 >= 13) {
                return (i2 - i) - i3;
            }
            if (i3 <= 0) {
                if (!f(charSequence.charAt(i2))) {
                    break;
                }
                i2++;
            }
        }
        return i2 - i;
    }

    public static boolean b(char c2) {
        return c2 == ' ' || (c2 >= 'A' && c2 <= 'Z');
    }

    public static boolean c(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static boolean d(char c2) {
        try {
            if (com.huawei.hms.scankit.util.b.a(f725c, (int) c2)) {
                return f725c[c2] != -1;
            }
            throw new java.lang.ArrayIndexOutOfBoundsException();
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw e2;
        }
    }

    public static boolean e(char c2) {
        try {
            if (com.huawei.hms.scankit.util.b.a(f725c, (int) c2)) {
                return f726d[c2] != -1;
            }
            throw new java.lang.ArrayIndexOutOfBoundsException();
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw e2;
        }
    }

    public static boolean f(char c2) {
        return c2 == '\t' || c2 == '\n' || c2 == '\r' || (c2 >= ' ' && c2 <= '~');
    }
}
