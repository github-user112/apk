package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.bd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0124bd extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f681g = java.util.regex.Pattern.compile("(?:http:|http//|https://)([\\s\\S]+)", 2);
    public static final java.util.regex.Pattern h = java.util.regex.Pattern.compile("(?:http:/?(?!/)|http//)([\\s\\S]+)", 2);

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (!f681g.matcher(strA).matches()) {
            return null;
        }
        java.util.regex.Matcher matcher = h.matcher(strA);
        if (matcher.matches()) {
            strA = strA.substring(0, 4) + "://" + matcher.group(1);
        }
        java.lang.String strA2 = com.huawei.hms.scankit.p.AbstractC0149gd.a(strA);
        if (strA2.length() == 7) {
            return null;
        }
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), strA2, com.huawei.hms.ml.scan.HmsScan.URL_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.LinkUrl("", strA2)));
    }
}
