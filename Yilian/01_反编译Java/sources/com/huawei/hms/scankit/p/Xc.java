package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Xc extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f652g = java.util.regex.Pattern.compile("(?:MEBKM:)([\\s\\S]+)", 2);
    public static final java.util.regex.Pattern h = java.util.regex.Pattern.compile("(?:http:/?(?!/)|http//)([\\s\\S]+)", 2);

    public static java.lang.String a(java.lang.String[] strArr, java.lang.String str) {
        for (java.lang.String str2 : strArr) {
            if (str2.startsWith(str)) {
                return com.huawei.hms.scankit.p.AbstractC0149gd.b(str2.substring(str.length()));
            }
        }
        return "";
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (android.text.TextUtils.isEmpty(strA)) {
            return null;
        }
        java.util.regex.Matcher matcher = f652g.matcher(strA);
        if (!matcher.matches()) {
            return null;
        }
        java.lang.String[] strArrSplit = matcher.group(1).split("(?<=(?<!\\\\)(?:\\\\\\\\){0,100});");
        java.lang.String strA2 = a(strArrSplit, "TITLE:");
        java.lang.String strA3 = com.huawei.hms.scankit.p.AbstractC0149gd.a(a(strArrSplit, "URL:"));
        if (strA3.length() == 0) {
            return null;
        }
        java.util.regex.Matcher matcher2 = h.matcher(strA3);
        if (matcher2.matches()) {
            strA3 = strA3.substring(0, 4) + "://" + matcher2.group(1);
        }
        java.lang.String str = strA3;
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), str, com.huawei.hms.ml.scan.HmsScan.URL_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.LinkUrl(strA2, str)));
    }
}
