package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Zc extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.List<java.lang.String> f663g = new com.huawei.hms.scankit.p.Yc();
    public java.lang.String h = "";

    public com.huawei.hms.ml.scan.HmsScan.DriverInfo a(java.lang.String[] strArr, java.lang.String str) {
        java.lang.String[] strArr2 = {"", "", "", "", "", "", "", "", "", "", "", "", "", ""};
        strArr2[0] = str;
        boolean z = false;
        for (java.lang.String str2 : strArr) {
            if (str2.length() <= 3) {
                return null;
            }
            int iIndexOf = f663g.indexOf(str2.substring(0, 3));
            if (iIndexOf != -1) {
                strArr2[iIndexOf] = str2.substring(3).trim();
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        this.h = strArr2[0] + " " + strArr2[3] + " " + strArr2[1];
        return new com.huawei.hms.ml.scan.HmsScan.DriverInfo(strArr2[0], strArr2[1], strArr2[2], strArr2[3], strArr2[4], strArr2[5], strArr2[6], strArr2[7], strArr2[8], strArr2[9], strArr2[10], strArr2[11], strArr2[12], strArr2[13], null, null, null, null);
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (!android.text.TextUtils.isEmpty(strA) && strA.startsWith("@") && strA.length() > 34 && strA.substring(4, 8).equals("ANSI")) {
            java.lang.String strValueOf = java.lang.String.valueOf(strA.charAt(1));
            java.lang.String strValueOf2 = java.lang.String.valueOf(strA.charAt(3));
            java.lang.String strSubstring = strA.substring(21, 23);
            com.huawei.hms.ml.scan.HmsScan.DriverInfo driverInfoA = a(strA.substring(strA.indexOf(strSubstring, 23) + 2).split(strValueOf2)[0].split(strValueOf), strSubstring);
            if (driverInfoA != null) {
                return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), this.h, com.huawei.hms.ml.scan.HmsScan.DRIVER_INFO_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(driverInfoA));
            }
        }
        return null;
    }
}
