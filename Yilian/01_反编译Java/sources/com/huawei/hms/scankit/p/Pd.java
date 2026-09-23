package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Pd extends com.huawei.hms.scankit.p.Vd {

    public enum a {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    public static int a(java.lang.CharSequence charSequence, int i, int i2) {
        com.huawei.hms.scankit.p.Pd.a aVarA;
        com.huawei.hms.scankit.p.Pd.a aVarA2;
        com.huawei.hms.scankit.p.Pd.a aVarA3 = a(charSequence, i);
        if (aVarA3 != com.huawei.hms.scankit.p.Pd.a.UNCODABLE && aVarA3 != com.huawei.hms.scankit.p.Pd.a.ONE_DIGIT) {
            if (i2 == 99) {
                return 99;
            }
            if (i2 == 100) {
                if (aVarA3 == com.huawei.hms.scankit.p.Pd.a.FNC_1 || (aVarA = a(charSequence, i + 2)) == com.huawei.hms.scankit.p.Pd.a.UNCODABLE || aVarA == com.huawei.hms.scankit.p.Pd.a.ONE_DIGIT) {
                    return 100;
                }
                if (aVarA == com.huawei.hms.scankit.p.Pd.a.FNC_1) {
                    return a(charSequence, i + 3) == com.huawei.hms.scankit.p.Pd.a.TWO_DIGITS ? 99 : 100;
                }
                int i3 = i + 4;
                while (true) {
                    aVarA2 = a(charSequence, i3);
                    if (aVarA2 != com.huawei.hms.scankit.p.Pd.a.TWO_DIGITS) {
                        break;
                    }
                    i3 += 2;
                }
                return aVarA2 == com.huawei.hms.scankit.p.Pd.a.ONE_DIGIT ? 100 : 99;
            }
            if (aVarA3 == com.huawei.hms.scankit.p.Pd.a.FNC_1) {
                aVarA3 = a(charSequence, i + 1);
            }
            if (aVarA3 == com.huawei.hms.scankit.p.Pd.a.TWO_DIGITS) {
                return 99;
            }
        }
        return 100;
    }

    public static com.huawei.hms.scankit.p.Pd.a a(java.lang.CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return com.huawei.hms.scankit.p.Pd.a.UNCODABLE;
        }
        char cCharAt = charSequence.charAt(i);
        if (cCharAt == 241) {
            return com.huawei.hms.scankit.p.Pd.a.FNC_1;
        }
        if (cCharAt < '0' || cCharAt > '9') {
            return com.huawei.hms.scankit.p.Pd.a.UNCODABLE;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return com.huawei.hms.scankit.p.Pd.a.ONE_DIGIT;
        }
        char cCharAt2 = charSequence.charAt(i2);
        return (cCharAt2 < '0' || cCharAt2 > '9') ? com.huawei.hms.scankit.p.Pd.a.ONE_DIGIT : com.huawei.hms.scankit.p.Pd.a.TWO_DIGITS;
    }

    @Override // com.huawei.hms.scankit.p.Vd, com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) {
        if (barcodeFormat == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_128) {
            return super.a(str, barcodeFormat, i, i2, map);
        }
        throw new java.lang.IllegalArgumentException("Can only encode CODE_128, but got " + barcodeFormat);
    }

    @Override // com.huawei.hms.scankit.p.Vd
    public boolean[] a(java.lang.String str) throws java.lang.NumberFormatException {
        int length = str.length();
        if (length < 1 || length > 80) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Contents length should be between 1 and 80 characters, but got ", length));
        }
        int iA = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < ' ' || cCharAt > '~') {
                switch (cCharAt) {
                    case com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_CUE_CLUSTER_POSITION /* 241 */:
                    case 242:
                    case 243:
                    case 244:
                        break;
                    default:
                        throw new java.lang.IllegalArgumentException("Bad character in input: " + cCharAt);
                }
            }
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i2 < length) {
            int iA2 = a(str, i2, i4);
            if (iA2 == i4) {
                switch (str.charAt(i2)) {
                    case com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_CUE_CLUSTER_POSITION /* 241 */:
                        iA2 = 102;
                        break;
                    case 242:
                        iA2 = 97;
                        break;
                    case 243:
                        iA2 = 96;
                        break;
                    case 244:
                        iA2 = 100;
                        break;
                    default:
                        if (i4 == 100) {
                            iA2 = str.charAt(i2) - com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE;
                            break;
                        } else {
                            try {
                                iA2 = java.lang.Integer.parseInt(str.substring(i2, i2 + 2));
                                i2++;
                                break;
                            } catch (java.lang.NumberFormatException unused) {
                                throw new java.lang.IllegalArgumentException("contents substring can not format integer");
                            }
                        }
                }
                i2++;
            } else if (i4 != 0) {
                i4 = iA2;
            } else if (iA2 == 100) {
                i4 = iA2;
                iA2 = 104;
            } else {
                i4 = iA2;
                iA2 = 105;
            }
            arrayList.add(com.huawei.hms.scankit.p.C0206sb.a[iA2]);
            i3 += iA2 * i5;
            if (i2 != 0) {
                i5++;
            }
        }
        arrayList.add(com.huawei.hms.scankit.p.C0206sb.a[i3 % 103]);
        arrayList.add(com.huawei.hms.scankit.p.C0206sb.a[106]);
        java.util.Iterator it = arrayList.iterator();
        int i6 = 0;
        while (it.hasNext()) {
            for (int i7 : (int[]) it.next()) {
                i6 += i7;
            }
        }
        boolean[] zArr = new boolean[i6];
        java.util.Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            iA += com.huawei.hms.scankit.p.Vd.a(zArr, iA, (int[]) it2.next(), true);
        }
        return zArr;
    }
}
