package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.hd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0154hd extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f730g = java.util.regex.Pattern.compile("(?:mmsto|smsto):([\\s\\S]+)", 2);

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strSubstring;
        java.lang.String strSubstring2;
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (android.text.TextUtils.isEmpty(strA) || !f730g.matcher(strA).matches()) {
            return null;
        }
        java.lang.String strSubstring3 = strA.substring(6);
        int iIndexOf = strSubstring3.indexOf(58);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring3.substring(0, iIndexOf);
            strSubstring2 = strSubstring3.substring(iIndexOf + 1);
        } else {
            strSubstring = strSubstring3;
            strSubstring2 = "";
        }
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), strSubstring2.isEmpty() ? strSubstring : e.a.c.a.a.f(strSubstring, "\n", strSubstring2), com.huawei.hms.ml.scan.HmsScan.SMS_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.SmsContent(strSubstring2, strSubstring)));
    }
}
