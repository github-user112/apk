package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.gd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0149gd {
    public static final com.huawei.hms.scankit.p.AbstractC0149gd[] a = {new com.huawei.hms.scankit.p._c(), new com.huawei.hms.scankit.p.C0134dd(), new com.huawei.hms.scankit.p.C0159id(), new com.huawei.hms.scankit.p.C0154hd(), new com.huawei.hms.scankit.p.C0179md(), new com.huawei.hms.scankit.p.Xc(), new com.huawei.hms.scankit.p.C0169kd(), new com.huawei.hms.scankit.p.C0174ld(), new com.huawei.hms.scankit.p.C0124bd(), new com.huawei.hms.scankit.p.C0164jd(), new com.huawei.hms.scankit.p.C0139ed(), new com.huawei.hms.scankit.p.Wc(), new com.huawei.hms.scankit.p.Vc(), new com.huawei.hms.scankit.p.C0129cd(), new com.huawei.hms.scankit.p.C0144fd(), new com.huawei.hms.scankit.p.Zc()};
    public static final android.util.SparseArray<java.lang.Integer> b;

    /* renamed from: c, reason: collision with root package name */
    public static final java.util.regex.Pattern f721c;

    /* renamed from: d, reason: collision with root package name */
    public static final java.util.regex.Pattern f722d;

    /* renamed from: e, reason: collision with root package name */
    public static final java.util.regex.Pattern f723e;

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String[] f724f;

    static {
        android.util.SparseArray<java.lang.Integer> sparseArray = new android.util.SparseArray<>();
        b = sparseArray;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.AZTEC;
        sparseArray.put(0, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.AZTEC_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray2 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat2 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODABAR;
        sparseArray2.put(1, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.CODABAR_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray3 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat3 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_39;
        sparseArray3.put(2, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.CODE39_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray4 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat4 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_93;
        sparseArray4.put(3, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.CODE93_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray5 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat5 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_128;
        sparseArray5.put(4, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.CODE128_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray6 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat6 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.DATA_MATRIX;
        sparseArray6.put(5, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.DATAMATRIX_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray7 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat7 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_8;
        sparseArray7.put(6, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.EAN8_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray8 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat8 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13;
        sparseArray8.put(7, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.EAN13_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray9 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat9 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.ITF;
        sparseArray9.put(8, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.ITF14_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray10 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat10 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.PDF_417;
        sparseArray10.put(9, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.PDF417_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray11 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat11 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE;
        sparseArray11.put(10, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.QRCODE_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray12 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat12 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A;
        sparseArray12.put(11, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.UPCCODE_A_SCAN_TYPE));
        android.util.SparseArray<java.lang.Integer> sparseArray13 = b;
        com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat13 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_E;
        sparseArray13.put(12, java.lang.Integer.valueOf(com.huawei.hms.ml.scan.HmsScanBase.UPCCODE_E_SCAN_TYPE));
        f721c = java.util.regex.Pattern.compile("\\d+");
        f722d = java.util.regex.Pattern.compile(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
        f723e = java.util.regex.Pattern.compile("=");
        f724f = new java.lang.String[0];
    }

    public static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    public static int a(com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat) {
        java.lang.Integer num;
        if (barcodeFormat != null && (num = b.get(barcodeFormat.ordinal())) != null) {
            return num.intValue();
        }
        return com.huawei.hms.ml.scan.HmsScanBase.FORMAT_UNKNOWN;
    }

    public static java.lang.String a(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strI = xVar.i();
        return strI == null ? "" : strI.startsWith("\ufeff") ? strI.substring(1) : strI;
    }

    public static java.lang.String a(java.lang.String str) {
        if (str == null) {
            return str;
        }
        int length = str.length();
        while (length > 0 && str.charAt(length - 1) <= ' ') {
            length--;
        }
        return length < str.length() ? str.substring(0, length) : str;
    }

    public static boolean a(java.lang.CharSequence charSequence, int i) {
        return charSequence != null && i > 0 && i == charSequence.length() && f721c.matcher(charSequence).matches();
    }

    public static android.graphics.Point[] a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        if (zVarArr == null || zVarArr.length <= 0) {
            return new android.graphics.Point[0];
        }
        android.graphics.Point[] pointArr = new android.graphics.Point[zVarArr.length];
        for (int i = 0; i < zVarArr.length; i++) {
            if (zVarArr[i] != null) {
                pointArr[i] = new android.graphics.Point((int) zVarArr[i].b(), (int) zVarArr[i].c());
            }
        }
        return pointArr;
    }

    public static com.huawei.hms.ml.scan.HmsScan[] a(com.huawei.hms.scankit.aiscan.common.x[] xVarArr) {
        if (xVarArr == null || xVarArr.length <= 0) {
            return new com.huawei.hms.ml.scan.HmsScan[0];
        }
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArr = new com.huawei.hms.ml.scan.HmsScan[xVarArr.length];
        for (int i = 0; i < xVarArr.length; i++) {
            if (xVarArr[i] == null) {
                hmsScanArr[i] = null;
            } else {
                hmsScanArr[i] = c(xVarArr[i]);
            }
        }
        return hmsScanArr;
    }

    public static java.lang.String[] a(java.lang.String str, java.lang.String str2, char c2, boolean z) {
        int length = str2.length();
        java.util.ArrayList arrayList = null;
        int i = 0;
        while (i < length) {
            int iIndexOf = str2.indexOf(str, i);
            if (iIndexOf < 0) {
                break;
            }
            int length2 = str.length() + iIndexOf;
            boolean z2 = true;
            java.util.ArrayList arrayList2 = arrayList;
            int length3 = length2;
            while (z2) {
                int iIndexOf2 = str2.indexOf(c2, length3);
                if (iIndexOf2 < 0) {
                    length3 = str2.length();
                } else if (b(str2, iIndexOf2) % 2 != 0) {
                    length3 = iIndexOf2 + 1;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new java.util.ArrayList(3);
                    }
                    java.lang.String strB = b(str2.substring(length2, iIndexOf2));
                    if (z) {
                        strB = strB.trim();
                    }
                    arrayList2.add(strB);
                    length3 = iIndexOf2 + 1;
                }
                z2 = false;
            }
            i = length3;
            arrayList = arrayList2;
        }
        if (arrayList == null) {
            return null;
        }
        return (java.lang.String[]) arrayList.toArray(f724f);
    }

    public static int b(java.lang.CharSequence charSequence, int i) {
        int i2 = 0;
        for (int i3 = i - 1; i3 >= 0 && charSequence.charAt(i3) == '\\'; i3--) {
            i2++;
        }
        return i2;
    }

    public static java.lang.String b(java.lang.String str) {
        int iIndexOf = str.indexOf(92);
        if (iIndexOf < 0) {
            return str;
        }
        int length = str.length();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length - 1);
        sb.append(str.toCharArray(), 0, iIndexOf);
        boolean z = false;
        while (iIndexOf < length) {
            char cCharAt = str.charAt(iIndexOf);
            if (z || cCharAt != '\\') {
                sb.append(cCharAt);
                z = false;
            } else {
                z = true;
            }
            iIndexOf++;
        }
        return sb.toString();
    }

    public static java.lang.String b(java.lang.String str, java.lang.String str2, char c2, boolean z) {
        java.lang.String[] strArrA = a(str, str2, c2, z);
        return (strArrA == null || strArrA.length == 0 || strArrA[0] == null) ? "" : strArrA[0];
    }

    public static com.huawei.hms.ml.scan.HmsScan c(com.huawei.hms.scankit.aiscan.common.x xVar) {
        if (xVar == null) {
            return null;
        }
        for (com.huawei.hms.scankit.p.AbstractC0149gd abstractC0149gd : a) {
            com.huawei.hms.ml.scan.HmsScan hmsScanB = abstractC0149gd.b(xVar);
            if (hmsScanB != null) {
                return hmsScanB;
            }
        }
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), a(xVar.b()), xVar.i(), com.huawei.hms.ml.scan.HmsScan.PURE_TEXT_FORM, xVar.g(), a(xVar.h()), null, null).setZoomValue(xVar.j());
    }

    public abstract com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar);
}
