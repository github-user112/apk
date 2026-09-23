package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.jb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0162jb {
    public static final char[] a = {com.huawei.hms.ml.common.utils.SmartLog.STAR, com.huawei.hms.ml.common.utils.SmartLog.STAR, com.huawei.hms.ml.common.utils.SmartLog.STAR, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE, '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    public static final char[] b;

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f735c;

    /* renamed from: d, reason: collision with root package name */
    public static final char[] f736d;

    /* renamed from: e, reason: collision with root package name */
    public static final char[] f737e;

    /* renamed from: com.huawei.hms.scankit.p.jb$a */
    public enum a {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE,
        UPPER_ENCODE
    }

    static {
        char[] cArr = {'!', '\"', '#', '$', '%', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_AMPERSAND, '\'', '(', ')', com.huawei.hms.ml.common.utils.SmartLog.STAR, '+', ',', '-', '.', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH, ':', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SEMI_COLON, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_LESS_THAN, '=', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_GREATER_THAN, '?', '@', '[', '\\', ']', '^', '_'};
        b = cArr;
        f735c = new char[]{com.huawei.hms.ml.common.utils.SmartLog.STAR, com.huawei.hms.ml.common.utils.SmartLog.STAR, com.huawei.hms.ml.common.utils.SmartLog.STAR, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE, '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        f736d = cArr;
        f737e = new char[]{'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};
    }

    public static int a(int i, int i2) {
        int i3 = i - (((i2 * 149) % 255) + 1);
        return i3 >= 0 ? i3 : i3 + 256;
    }

    public static com.huawei.hms.scankit.aiscan.common.C0106e a(byte[] bArr, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws java.lang.Exception {
        com.huawei.hms.scankit.p.C0127cb c0127cb = new com.huawei.hms.scankit.p.C0127cb(bArr);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(100);
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder(0);
        java.util.ArrayList arrayList = new java.util.ArrayList(1);
        com.huawei.hms.scankit.p.C0162jb.a aVarA = com.huawei.hms.scankit.p.C0162jb.a.ASCII_ENCODE;
        do {
            if (aVarA == com.huawei.hms.scankit.p.C0162jb.a.ASCII_ENCODE) {
                aVarA = a(c0127cb, sb, sb2);
            } else {
                int i = com.huawei.hms.scankit.p.C0157ib.a[aVarA.ordinal()];
                if (i == 1) {
                    b(c0127cb, sb);
                } else if (i == 2) {
                    d(c0127cb, sb);
                } else if (i == 3) {
                    a(c0127cb, sb);
                } else if (i == 4) {
                    c(c0127cb, sb);
                } else {
                    if (i != 5) {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
                    }
                    a(c0127cb, sb, arrayList);
                }
                aVarA = com.huawei.hms.scankit.p.C0162jb.a.ASCII_ENCODE;
            }
            if (aVarA == com.huawei.hms.scankit.p.C0162jb.a.PAD_ENCODE) {
                break;
            }
        } while (c0127cb.a() > 0);
        if (sb2.length() > 0) {
            sb.append((java.lang.CharSequence) sb2);
        }
        int length = sb.length();
        byte[] bArr2 = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[i2] = (byte) sb.charAt(i2);
        }
        try {
            java.lang.String str = new java.lang.String(bArr2, com.huawei.hms.scankit.aiscan.common.B.a(bArr2, map));
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            return new com.huawei.hms.scankit.aiscan.common.C0106e(bArr, str, arrayList, null);
        } catch (java.io.UnsupportedEncodingException unused) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    public static com.huawei.hms.scankit.p.C0162jb.a a(int i, java.lang.StringBuilder sb, java.lang.StringBuilder sb2, com.huawei.hms.scankit.p.C0127cb c0127cb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        java.lang.String str;
        switch (i) {
            case 230:
                return com.huawei.hms.scankit.p.C0162jb.a.C40_ENCODE;
            case com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_TIME_CODE /* 231 */:
                return com.huawei.hms.scankit.p.C0162jb.a.BASE256_ENCODE;
            case 232:
                sb.append((char) 29);
                return null;
            case 233:
            case 234:
            case com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_CUE_CLUSTER_POSITION /* 241 */:
                return null;
            case 235:
                return com.huawei.hms.scankit.p.C0162jb.a.UPPER_ENCODE;
            case 236:
                str = "[)>\u001e05\u001d";
                break;
            case 237:
                str = "[)>\u001e06\u001d";
                break;
            case com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_BLOCK_ADD_ID /* 238 */:
                return com.huawei.hms.scankit.p.C0162jb.a.ANSIX12_ENCODE;
            case 239:
                return com.huawei.hms.scankit.p.C0162jb.a.TEXT_ENCODE;
            case 240:
                return com.huawei.hms.scankit.p.C0162jb.a.EDIFACT_ENCODE;
            default:
                if (i == 254 && c0127cb.a() == 0) {
                    return null;
                }
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
        }
        sb.append(str);
        sb2.insert(0, "\u001e\u0004");
        return null;
    }

    public static com.huawei.hms.scankit.p.C0162jb.a a(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb, java.lang.StringBuilder sb2) throws java.lang.Exception {
        boolean z = false;
        do {
            int iA = c0127cb.a(8);
            if (iA == 0) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
            }
            if (iA <= 128) {
                if (z) {
                    iA += 128;
                }
                sb.append((char) (iA - 1));
                return com.huawei.hms.scankit.p.C0162jb.a.ASCII_ENCODE;
            }
            if (iA == 129) {
                return com.huawei.hms.scankit.p.C0162jb.a.PAD_ENCODE;
            }
            if (iA <= 229) {
                int i = iA - 130;
                if (i < 10) {
                    sb.append('0');
                }
                sb.append(i);
            } else {
                com.huawei.hms.scankit.p.C0162jb.a aVarA = a(iA, sb, sb2, c0127cb);
                if (aVarA != null) {
                    if (aVarA != com.huawei.hms.scankit.p.C0162jb.a.UPPER_ENCODE) {
                        return aVarA;
                    }
                    z = true;
                }
            }
        } while (c0127cb.a() > 0);
        return com.huawei.hms.scankit.p.C0162jb.a.ASCII_ENCODE;
    }

    public static void a(int i, int i2, int[] iArr) {
        int i3 = ((i << 8) + i2) - 1;
        int i4 = i3 / 1600;
        iArr[0] = i4;
        int i5 = i3 - (i4 * 1600);
        int i6 = i5 / 40;
        iArr[1] = i6;
        iArr[2] = i5 - (i6 * 40);
    }

    public static void a(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iA;
        char c2;
        int i;
        int[] iArr = new int[3];
        while (c0127cb.a() != 8 && (iA = c0127cb.a(8)) != 254) {
            a(iA, c0127cb.a(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                if (i3 == 0) {
                    c2 = '\r';
                } else if (i3 == 1) {
                    c2 = com.huawei.hms.ml.common.utils.SmartLog.STAR;
                } else if (i3 == 2) {
                    c2 = com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_GREATER_THAN;
                } else if (i3 != 3) {
                    if (i3 < 14) {
                        i = i3 + 44;
                    } else {
                        if (i3 >= 40) {
                            throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
                        }
                        i = i3 + 51;
                    }
                    c2 = (char) i;
                } else {
                    c2 = com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE;
                }
                sb.append(c2);
            }
            if (c0127cb.a() <= 0) {
                return;
            }
        }
    }

    public static void a(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb, java.util.Collection<byte[]> collection) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iC = c0127cb.c() + 1;
        int i = iC + 1;
        int iA = a(c0127cb.a(8), iC);
        if (iA == 0) {
            iA = c0127cb.a() / 8;
        } else if (iA >= 250) {
            iA = ((iA - 249) * 250) + a(c0127cb.a(8), i);
            i++;
        }
        if (iA < 0) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
        }
        byte[] bArr = new byte[iA];
        int i2 = 0;
        while (i2 < iA) {
            if (c0127cb.a() < 8) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
            }
            bArr[i2] = (byte) a(c0127cb.a(8), i);
            i2++;
            i++;
        }
        collection.add(bArr);
        try {
            sb.append(new java.lang.String(bArr, "ISO8859_1"));
        } catch (java.io.UnsupportedEncodingException e2) {
            throw new java.lang.IllegalStateException("Platform does not support required encoding: " + e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    public static int[] a(java.lang.StringBuilder sb, int i, int i2, boolean z) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        ?? r9;
        boolean z2;
        if (i != 0) {
            if (i == 1) {
                if (z) {
                    i2 = (char) (i2 + 128);
                }
                sb.append(i2);
            } else if (i == 2) {
                char[] cArr = f736d;
                if (i2 < cArr.length) {
                    char c2 = cArr[i2];
                    if (z) {
                        c2 = (char) (c2 + 128);
                    }
                    sb.append(c2);
                    z2 = false;
                } else if (i2 == 27) {
                    sb.append((char) 29);
                    z2 = z;
                } else {
                    if (i2 != 30) {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
                    }
                    z2 = true;
                }
                i = 0;
                r9 = z2;
            } else {
                if (i != 3) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
                }
                char[] cArr2 = f737e;
                if (i2 >= cArr2.length) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
                }
                char c3 = cArr2[i2];
                if (z) {
                    c3 = (char) (c3 + 128);
                }
                sb.append(c3);
            }
            i = 0;
            r9 = 0;
        } else if (i2 < 3) {
            i = i2 + 1;
            r9 = z;
        } else {
            char[] cArr3 = f735c;
            if (i2 >= cArr3.length) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
            }
            char c4 = cArr3[i2];
            if (z) {
                c4 = (char) (c4 + 128);
            }
            sb.append(c4);
            r9 = 0;
        }
        return new int[]{i, r9};
    }

    public static void b(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iA;
        int[] iArr = new int[3];
        boolean z = false;
        int i = 0;
        while (c0127cb.a() != 8 && (iA = c0127cb.a(8)) != 254) {
            a(iA, c0127cb.a(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int[] iArrB = b(sb, i, iArr[i2], z);
                i = iArrB[0];
                z = iArrB[1] == 1;
            }
            if (c0127cb.a() <= 0) {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    public static int[] b(java.lang.StringBuilder sb, int i, int i2, boolean z) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        ?? r9;
        boolean z2;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    char[] cArr = b;
                    if (i2 < cArr.length) {
                        char c2 = cArr[i2];
                        if (z) {
                            c2 = (char) (c2 + 128);
                        }
                        sb.append(c2);
                        z2 = false;
                    } else if (i2 == 27) {
                        sb.append((char) 29);
                        z2 = z;
                    } else {
                        if (i2 != 30) {
                            throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
                        }
                        z2 = true;
                    }
                    i = 0;
                    r9 = z2;
                } else {
                    if (i != 3) {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
                    }
                    i2 = z ? i2 + 224 : i2 + 96;
                }
            } else if (z) {
                i2 += 128;
            }
            sb.append((char) i2);
            i = 0;
            r9 = 0;
        } else if (i2 < 3) {
            i = i2 + 1;
            r9 = z;
        } else {
            char[] cArr2 = a;
            if (i2 >= cArr2.length) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a("AIScanException");
            }
            char c3 = cArr2[i2];
            if (z) {
                c3 = (char) (c3 + 128);
            }
            sb.append(c3);
            r9 = 0;
        }
        return new int[]{i, r9};
    }

    public static void c(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb) throws java.lang.Exception {
        while (c0127cb.a() > 16) {
            for (int i = 0; i < 4; i++) {
                int iA = c0127cb.a(6);
                if (iA == 31) {
                    int iB = 8 - c0127cb.b();
                    if (iB != 8) {
                        c0127cb.a(iB);
                        return;
                    }
                    return;
                }
                if ((iA & 32) == 0) {
                    iA |= 64;
                }
                sb.append((char) iA);
            }
            if (c0127cb.a() <= 0) {
                return;
            }
        }
    }

    public static void d(com.huawei.hms.scankit.p.C0127cb c0127cb, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iA;
        int[] iArr = new int[3];
        boolean z = false;
        int i = 0;
        while (c0127cb.a() != 8 && (iA = c0127cb.a(8)) != 254) {
            a(iA, c0127cb.a(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int[] iArrA = a(sb, i, iArr[i2], z);
                i = iArrA[0];
                z = iArrA[1] == 1;
            }
            if (c0127cb.a() <= 0) {
                return;
            }
        }
    }
}
